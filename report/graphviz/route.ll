Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/route?download=true
inline.NumInlined: 60
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@opl = internal unnamed_addr global i64 0, align 8
@ops = internal unnamed_addr global ptr null, align 8
@opn = internal unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Proutespline(ptr noundef %0, i64 noundef %1, ptr %2, i64 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load <2 x double>, ptr %4, align 8       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load <2 x double>, ptr %i.c, align 8     ; 4 uses
  %i.f = shufflevector <2 x double> %i.e, <2 x double> %i.b, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.g = fmul <2 x double> %i.f, %i.f
  %i.h = shufflevector <2 x double> %i.e, <2 x double> %i.b, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.h, <2 x double> %i.g) ; 2 uses
  %i.j = fcmp ogt <2 x double> %i.i, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.k = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.i) ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fdiv <2 x double> %i.b, %i.m
  %i.o = select <2 x i1> %i.k, <2 x double> %i.n, <2 x double> %i.b
  store <2 x double> %i.o, ptr %4, align 8, !tbaa !9
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.e, %i.p
  %i.r = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %i.q, <2 x double> %i.e
  store <2 x double> %i.s, ptr %i.c, align 8, !tbaa !9
  store i64 0, ptr @opl, align 8, !tbaa !11
  %i.t = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i = icmp ult i64 %i.t, 4
  %.pre = load ptr, ptr @ops, align 8, !tbaa !14  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %.pre, i64 noundef 64) #9 ; 3 uses
  store ptr %i.u, ptr @ops, align 8, !tbaa !14
  %.not5.i = icmp eq ptr %i.u, null
  br i1 %.not5.i, label %growops.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr @opn, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.v = phi ptr [ %.pre, %bb.a ], [ %i.u, %bb.c ]
  %i.w = trunc i64 %3 to i32
  store i64 1, ptr @opl, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %i.x = load double, ptr %4, align 8
  %i.y = load double, ptr %i.a, align 8
  %i.z = load double, ptr %i.c, align 8
  %i.aa = load double, ptr %i.d, align 8
  %i.ab = tail call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %i.w, double %i.x, double %i.y, double %i.z, double %i.aa)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %growops.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr @opl, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = load ptr, ptr @ops, align 8, !tbaa !14
  store ptr %i.af, ptr %5, align 8, !tbaa !18
  br label %growops.exit

growops.exit:                                     ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 12 uses
  %i.b = alloca [3 x double], align 16            ; 11 uses
  %i.c = alloca [3 x double], align 16            ; 10 uses
  %i.d = alloca [4 x double], align 16            ; 15 uses
  %i.e = sext i32 %3 to i64                       ; 4 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 40) #10 ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.i = load <2 x double>, ptr %2, align 8
  br label %.lr.ph

.lr.ph208:                                        ; preds = %.lr.ph
  %i.j = getelementptr [40 x i8], ptr %i.f, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -40      ; 3 uses
  %i.l = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %3, 2
  br i1 %i.m, label %.epil.preheader, label %.lr.ph208.new

.lr.ph208.new:                                    ; preds = %.lr.ph208
  %unroll_iter = and i64 %i.l, -2
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.n = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.v, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.o = phi <2 x double> [ %i.i, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.q = load <2 x double>, ptr %i.p, align 8     ; 2 uses
  %i.r = fsub <2 x double> %i.o, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.r, i64 1
  %i.u = tail call double @hypot(double noundef %i.s, double noundef %i.t) #11
  %i.v = fadd double %i.n, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.v, ptr %i.w, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph208, label %.lr.ph, !llvm.loop !19

.preheader:                                       ; preds = %bb.b
  %i.x = icmp eq i32 %3, 1
  br i1 %i.x, label %.lr.ph210.preheader, label %._crit_edge.i

.lr.ph210.preheader.loopexit.unr-lcssa:           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph210.preheader.loopexit.unr-lcssa, %.lr.ph208
  %indvars.iv244.epil.init = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next245.1, %.lr.ph210.preheader.loopexit.unr-lcssa ]
  %lcmp.mod379 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.y = load double, ptr %i.k, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244.epil.init ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  %i.ab = fdiv double %i.aa, %i.y
  store double %i.ab, ptr %i.z, align 8, !tbaa !34
  br label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.epil.preheader, %.lr.ph210.preheader.loopexit.unr-lcssa, %.preheader
  %wide.trip.count252 = zext nneg i32 %3 to i64
  %i.ac = insertelement <2 x double> poison, double %4, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %5, i64 1
  %i.ae = insertelement <2 x double> poison, double %6, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %7, i64 1
  br label %.lr.ph210

bb.c:                                             ; preds = %bb.c, %.lr.ph208.new
  %indvars.iv244 = phi i64 [ 1, %.lr.ph208.new ], [ %indvars.iv.next245.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph208.new ], [ %niter.next.1, %bb.c ]
  %i.ag = load double, ptr %i.k, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = fdiv double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !34
  %i.ak = load double, ptr %i.k, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !34
  %i.ao = fdiv double %i.an, %i.ak
  store double %i.ao, ptr %i.am, align 8, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph210.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.ap = load double, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = zext nneg i32 %3 to i64                 ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %i.av = load double, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.at, i64 -8
  %i.ax = load double, ptr %i.aw, align 8
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ap, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.sroa.17.0107.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %20, %bb.d ]
  %i.bc = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %15, %bb.d ]
  %i.bd = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cb, %bb.d ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bi = load double, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.bj = fsub double 1.000000e+00, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 4 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bl)
  %i.bp = fmul <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fmul <2 x double> %i.az, %i.bp
  %i.br = fmul <2 x double> %i.bb, %i.bp
  %i.bs = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bq)
  %i.bt = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.br)
  %i.bu = load double, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = fsub double %i.bu, %i.bs                ; 2 uses
  %i.by = fsub double %i.bw, %i.bt
  %8 = load <2 x double>, ptr %i.bf, align 8      ; 3 uses
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %10 = insertelement <2 x double> %9, double %i.by, i64 1 ; 2 uses
  %11 = fmul <2 x double> %9, %10
  %12 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = insertelement <2 x double> %12, double %i.bx, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %13, <2 x double> %11)
  %15 = fadd <2 x double> %i.bc, %14              ; 2 uses
  %16 = load <2 x double>, ptr %i.bg, align 8     ; 5 uses
  %foldExtExtBinop.a = fmul <2 x double> %16, %16
  %17 = extractelement <2 x double> %foldExtExtBinop.a, i64 1
  %18 = extractelement <2 x double> %16, i64 0    ; 2 uses
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %17)
  %20 = fadd double %.sroa.17.0107.i, %19         ; 2 uses
  %21 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %10, %21
  %i.ca = insertelement <2 x double> %8, double %i.bx, i64 1
  %22 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %22, <2 x double> %i.bz)
  %i.cb = fadd <2 x double> %i.bd, %23            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.d, %.preheader
  %.sroa.17.0.lcssa.i = phi double [ 0.000000e+00, %.preheader ], [ %20, %bb.d ] ; 2 uses
  %i.cc = phi <2 x double> [ zeroinitializer, %.preheader ], [ %15, %bb.d ] ; 3 uses
  %i.cd = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cb, %bb.d ] ; 3 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.cf = fneg double %i.ce                       ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = extractelement <2 x double> %i.cc, i64 0
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %.sroa.17.0.lcssa.i, double %i.cg) ; 2 uses
  %i.cj = tail call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ult double %i.cj, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ck, label %._crit_edge.i..thread.i_crit_edge, label %bb.e

._crit_edge.i..thread.i_crit_edge:                ; preds = %._crit_edge.i
  %.pre267 = load double, ptr %2, align 8
  br label %.thread.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.cl = fneg <2 x double> %i.cc
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = insertelement <2 x double> %i.cm, double %i.cf, i64 1
  %i.co = fmul <2 x double> %i.cd, %i.cn
  %i.cp = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %.sroa.17.0.lcssa.i, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cq, <2 x double> %i.co)
  %i.cs = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fdiv <2 x double> %i.cr, %i.ct          ; 3 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cx = fcmp ole double %i.cv, 0.000000e+00
  %i.cy = fcmp ole double %i.cw, 0.000000e+00
  %or.cond3.i = select i1 %i.cx, i1 true, i1 %i.cy
  %.pre268 = load double, ptr %2, align 8         ; 2 uses
  br i1 %or.cond3.i, label %.thread.i, label %.mkspline.exit_crit_edge

.mkspline.exit_crit_edge:                         ; preds = %bb.e
  %.sroa.6173.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6173.0.copyload.pre = load double, ptr %.sroa.6173.0..sroa_idx.phi.trans.insert, align 8, !tbaa !9
  %.phi.trans.insert262 = getelementptr [16 x i8], ptr %2, i64 %i.e
  %.phi.trans.insert263 = getelementptr i8, ptr %.phi.trans.insert262, i64 -16
  %i.cz = load <2 x double>, ptr %.phi.trans.insert263, align 8, !tbaa !9
  br label %mkspline.exit

.thread.i:                                        ; preds = %._crit_edge.i..thread.i_crit_edge, %bb.e
  %i.da = phi double [ %.pre267, %._crit_edge.i..thread.i_crit_edge ], [ %.pre268, %bb.e ] ; 2 uses
  %i.db = getelementptr [16 x i8], ptr %2, i64 %i.e
  %i.dc = getelementptr i8, ptr %i.db, i64 -16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = load double, ptr %i.dd, align 8         ; 2 uses
  %i.df = load <2 x double>, ptr %i.dc, align 8   ; 3 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = fsub double %i.dg, %i.da
  %i.di = extractelement <2 x double> %i.df, i64 1
  %i.dj = fsub double %i.di, %i.de
  %i.dk = tail call double @hypot(double noundef %i.dh, double noundef %i.dj) #11
  %i.dl = fdiv double %i.dk, 3.000000e+00         ; 3 uses
  %i.dm = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %mkspline.exit

mkspline.exit:                                    ; preds = %.mkspline.exit_crit_edge, %.thread.i
  %.sroa.6173.0.copyload = phi double [ %i.de, %.thread.i ], [ %.sroa.6173.0.copyload.pre, %.mkspline.exit_crit_edge ] ; 9 uses
  %.sroa.0170.0.copyload = phi double [ %i.da, %.thread.i ], [ %.pre268, %.mkspline.exit_crit_edge ] ; 10 uses
  %.185.i = phi double [ %i.dl, %.thread.i ], [ %i.cv, %.mkspline.exit_crit_edge ]
  %.1.i = phi double [ %i.dl, %.thread.i ], [ %i.cw, %.mkspline.exit_crit_edge ]
  %i.do = phi <2 x double> [ %i.df, %.thread.i ], [ %i.cz, %.mkspline.exit_crit_edge ] ; 11 uses
  %i.dp = phi <2 x double> [ %i.dn, %.thread.i ], [ %i.cu, %.mkspline.exit_crit_edge ]
  %i.dq = fmul double %4, %.185.i                 ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %6, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %5, i64 1
  %i.dt = fmul <2 x double> %i.ds, %i.dp          ; 2 uses
  %i.du = fmul double %7, %.1.i                   ; 2 uses
  %i.dv = icmp eq i32 %3, 2
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %.not68.i.i = icmp eq i64 %1, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.dz = extractelement <2 x double> %i.do, i64 1 ; 3 uses
  %i.ea = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.eb = insertelement <2 x double> %i.ea, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.ec = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ed = insertelement <2 x double> %i.ec, double %i.dq, i64 0
  %i.ee = insertelement <2 x double> %i.do, double %.sroa.0170.0.copyload, i64 1
  %i.ef = insertelement <2 x double> poison, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.eg = insertelement <2 x double> %i.do, double %.sroa.6173.0.copyload, i64 0 ; 3 uses
  %i.eh = insertelement <2 x double> %i.ec, double %i.du, i64 1
  %i.ei = insertelement <2 x double> poison, double %.sroa.6173.0.copyload, i64 0
  %i.ej = insertelement <2 x double> %i.ea, double %.sroa.6173.0.copyload, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %mkspline.exit
  %.032.i = phi double [ 4.000000e+00, %mkspline.exit ], [ %.133.i, %bb.am ] ; 4 uses
  %.not.i = phi i1 [ false, %mkspline.exit ], [ true, %bb.am ]
  %i.ek = insertelement <2 x double> poison, double %.032.i, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = fmul <2 x double> %i.ed, %i.el
  %i.en = fdiv <2 x double> %i.em, splat (double 3.000000e+00) ; 2 uses
  %i.eo = fadd <2 x double> %i.eb, %i.en          ; 3 uses
  %i.ep = fsub <2 x double> %i.eb, %i.en          ; 6 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.er = extractelement <2 x double> %i.eo, i64 0 ; 6 uses
  %i.es = fmul <2 x double> %i.eh, %i.el
  %i.et = fdiv <2 x double> %i.es, splat (double 3.000000e+00) ; 2 uses
  %i.eu = fadd <2 x double> %i.eg, %i.et          ; 6 uses
  %i.ev = fsub <2 x double> %i.eg, %i.et          ; 4 uses
  br i1 %.not.i, label %bb.g, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.ew = shufflevector <2 x double> %i.eu, <2 x double> %i.ev, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ex = fsub double %i.er, %.sroa.0170.0.copyload
  %i.ey = shufflevector <2 x double> %i.eg, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.ez = fsub <2 x double> %i.ew, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = call double @hypot(double noundef %i.ex, double noundef %i.fa) #11
  %i.fc = fadd double %i.fb, 0.000000e+00
  %i.fd = shufflevector <2 x double> %i.ep, <2 x double> %i.do, <2 x i32> <i32 1, i32 2>
  %i.fe = fsub <2 x double> %i.fd, %i.eq          ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = extractelement <2 x double> %i.ez, i64 1
  %i.fh = call double @hypot(double noundef %i.ff, double noundef %i.fg) #11
  %i.fi = fadd double %i.fc, %i.fh
  %foldExtExtBinop348.a = fsub <2 x double> %i.do, %i.ew
  %i.fj = extractelement <2 x double> %foldExtExtBinop348.a, i64 1
  %i.fk = extractelement <2 x double> %i.fe, i64 1
  %i.fl = call double @hypot(double noundef %i.fk, double noundef %i.fj) #11
  %i.fm = fadd double %i.fi, %i.fl
  br i1 %i.h, label %.lr.ph.i36.i, label %dist_n.exit41.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i36.i
  %indvars.iv.i37.i = phi i64 [ %indvars.iv.next.i39.i, %.lr.ph.i36.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.014.i38.i = phi double [ %i.fv, %.lr.ph.i36.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i37.i ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -16
  %i.fp = load <2 x double>, ptr %i.fn, align 8, !tbaa !9
  %i.fq = load <2 x double>, ptr %i.fo, align 8, !tbaa !9
  %i.fr = fsub <2 x double> %i.fp, %i.fq          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  %i.ft = extractelement <2 x double> %i.fr, i64 1
  %i.fu = call double @hypot(double noundef %i.fs, double noundef %i.ft) #11
  %i.fv = fadd double %.014.i38.i, %i.fu          ; 2 uses
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i40.i, label %dist_n.exit41.loopexit.i, label %.lr.ph.i36.i, !llvm.loop !22

dist_n.exit41.loopexit.i:                         ; preds = %.lr.ph.i36.i
  %i.fw = fadd double %i.fv, -1.000000e-03
  br label %dist_n.exit41.i

dist_n.exit41.i:                                  ; preds = %dist_n.exit41.loopexit.i, %.lr.ph.i.preheader.i
  %.0.lcssa.i.i = phi double [ -1.000000e-03, %.lr.ph.i.preheader.i ], [ %i.fw, %dist_n.exit41.loopexit.i ]
  %i.fx = fcmp olt double %i.fm, %.0.lcssa.i.i
  br i1 %i.fx, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %dist_n.exit41.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.g
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ee) ; 2 uses
  %shift = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop350 = fsub <2 x double> %i.fy, %shift
  %i.fz = extractelement <2 x double> %foldExtExtBinop350, i64 0 ; 2 uses
  %i.ga = fsub double %i.er, %.sroa.0170.0.copyload
  %i.gb = fmul double %i.ga, 3.000000e+00         ; 2 uses
  %i.gc = shufflevector <2 x double> %i.ep, <2 x double> %i.do, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x double> %i.gc, <double 3.000000e+00, double 1.000000e+00>
  %i.ge = shufflevector <2 x double> %i.ef, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> splat (double 3.000000e+00), <2 x double> %i.gd) ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = call double @llvm.fmuladd.f64(double %i.er, double -6.000000e+00, double %i.gg) ; 2 uses
  %i.gi = extractelement <2 x double> %i.ev, i64 1 ; 3 uses
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double 3.000000e+00, double %.sroa.6173.0.copyload)
  %i.gk = extractelement <2 x double> %i.gf, i64 1
  %i.gl = fsub double %i.gk, %i.gj                ; 2 uses
  %i.gm = fmul double %i.gi, 3.000000e+00
  %i.gn = call double @llvm.fmuladd.f64(double %.sroa.6173.0.copyload, double 3.000000e+00, double %i.gm)
  %i.go = extractelement <2 x double> %i.eu, i64 0 ; 3 uses
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double -6.000000e+00, double %i.gn) ; 2 uses
  %i.gq = fsub double %i.go, %.sroa.6173.0.copyload
  %i.gr = fmul double %i.gq, 3.000000e+00         ; 2 uses
  %i.gs = shufflevector <2 x double> %i.ef, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.gt = shufflevector <2 x double> %i.ep, <2 x double> %i.do, <2 x i32> <i32 1, i32 2>
  %i.gu = shufflevector <2 x double> %i.ei, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.gv = shufflevector <2 x double> %i.ev, <2 x double> %i.do, <2 x i32> <i32 1, i32 3>
  %i.gw = extractelement <2 x double> %i.ep, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph71.i.i
  %.04969.i.i = phi i64 [ 0, %.lr.ph71.i.i ], [ %i.nt, %.loopexit.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.04969.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.gx, align 8, !tbaa !9 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !9 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %.sroa.7.16.copyload.i.i = load double, ptr %i.gy, align 8, !tbaa !9 ; 2 uses
  %.sroa.10.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %.sroa.10.16.copyload.i.i = load double, ptr %.sroa.10.16..sroa_idx.i.i, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.gz = fsub double %.sroa.7.16.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
end_hunk_0
