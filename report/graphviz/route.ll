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
  store <2 x double> %i.o, ptr %4, align 8, !tbaa !8
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.e, %i.p
  %i.r = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %i.q, <2 x double> %i.e
  store <2 x double> %i.s, ptr %i.c, align 8, !tbaa !8
  store i64 0, ptr @opl, align 8, !tbaa !10
  %i.t = load i64, ptr @opn, align 8, !tbaa !10
  %.not.i = icmp ult i64 %i.t, 4
  %.pre = load ptr, ptr @ops, align 8, !tbaa !12  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %.pre, i64 noundef 64) #9 ; 3 uses
  store ptr %i.u, ptr @ops, align 8, !tbaa !12
  %.not5.i = icmp eq ptr %i.u, null
  br i1 %.not5.i, label %growops.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr @opn, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.v = phi ptr [ %.pre, %bb.a ], [ %i.u, %bb.c ]
  %i.w = trunc i64 %3 to i32
  store i64 1, ptr @opl, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %i.x = load double, ptr %4, align 8
  %i.y = load double, ptr %i.a, align 8
  %i.z = load double, ptr %i.c, align 8
  %i.aa = load double, ptr %i.d, align 8
  %i.ab = tail call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %i.w, double %i.x, double %i.y, double %i.z, double %i.aa)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %growops.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr @opl, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = load ptr, ptr @ops, align 8, !tbaa !12
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
  store double %i.v, ptr %i.w, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph208, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %bb.b
  %i.x = icmp eq i32 %3, 1
  br i1 %i.x, label %.lr.ph210.preheader, label %._crit_edge.i

.lr.ph210.preheader.loopexit.unr-lcssa:           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph210.preheader.loopexit.unr-lcssa, %.lr.ph208
  %indvars.iv244.epil.init = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next245.1, %.lr.ph210.preheader.loopexit.unr-lcssa ]
  %lcmp.mod377 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod377)
  %i.y = load double, ptr %i.k, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244.epil.init ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19
  %i.ab = fdiv double %i.aa, %i.y
  store double %i.ab, ptr %i.z, align 8, !tbaa !19
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
  %i.ag = load double, ptr %i.k, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = fdiv double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !19
  %i.ak = load double, ptr %i.k, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = fdiv double %i.an, %i.ak
  store double %i.ao, ptr %i.am, align 8, !tbaa !19
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph210.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !23

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
  %.sroa.17.0107.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %12, %bb.d ]
  %i.bc = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cj, %bb.d ]
  %i.bd = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cn, %bb.d ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bi = load double, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bj = fsub double 1.000000e+00, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 4 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bl)
  %i.bp = fmul <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fmul <2 x double> %i.az, %i.bp          ; 2 uses
  %i.br = fmul <2 x double> %i.bb, %i.bp          ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 1, i32 3>
  %i.bt = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bu = fadd <2 x double> %i.bs, %i.bt          ; 2 uses
  %i.bv = load double, ptr %i.bh, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bx = load double, ptr %i.bw, align 8
  %i.by = extractelement <2 x double> %i.bu, i64 0
  %i.bz = fsub double %i.bv, %i.by                ; 2 uses
  %i.ca = extractelement <2 x double> %i.bu, i64 1
  %i.cb = fsub double %i.bx, %i.ca
  %i.cc = load <2 x double>, ptr %i.bf, align 8   ; 3 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = insertelement <2 x double> %i.cd, double %i.cb, i64 1 ; 2 uses
  %i.cf = fmul <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = insertelement <2 x double> %i.cg, double %i.bz, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ch, <2 x double> %i.cf)
  %i.cj = fadd <2 x double> %i.bc, %i.ci          ; 2 uses
  %8 = load <2 x double>, ptr %i.bg, align 8      ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %8, %8
  %9 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %10 = extractelement <2 x double> %8, i64 0     ; 2 uses
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %9)
  %12 = fadd double %.sroa.17.0107.i, %11         ; 2 uses
  %13 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %14 = fmul <2 x double> %i.ce, %13
  %i.ck = insertelement <2 x double> %i.cc, double %i.bz, i64 1
  %i.cl = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %14)
  %i.cn = fadd <2 x double> %i.bd, %i.cm          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.d, %.preheader
  %.sroa.17.0.lcssa.i = phi double [ 0.000000e+00, %.preheader ], [ %12, %bb.d ] ; 2 uses
  %i.co = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cj, %bb.d ] ; 3 uses
  %i.cp = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cn, %bb.d ] ; 3 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0 ; 2 uses
  %i.cr = fneg double %i.cq                       ; 2 uses
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = extractelement <2 x double> %i.co, i64 0
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %.sroa.17.0.lcssa.i, double %i.cs) ; 2 uses
  %i.cv = tail call double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ult double %i.cv, f0x3EB0C6F7A0B5ED8D
  br i1 %i.cw, label %._crit_edge.i..thread.i_crit_edge, label %bb.e

._crit_edge.i..thread.i_crit_edge:                ; preds = %._crit_edge.i
  %.pre267 = load double, ptr %2, align 8
  br label %.thread.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.cx = fneg <2 x double> %i.co
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.cr, i64 1
  %i.da = fmul <2 x double> %i.cp, %i.cz
  %i.db = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x double> %i.db, double %.sroa.17.0.lcssa.i, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.dc, <2 x double> %i.da)
  %i.de = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x double> %i.dd, %i.df          ; 3 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 1 ; 2 uses
  %i.di = extractelement <2 x double> %i.dg, i64 0 ; 2 uses
  %i.dj = fcmp ole double %i.dh, 0.000000e+00
  %i.dk = fcmp ole double %i.di, 0.000000e+00
  %or.cond3.i = select i1 %i.dj, i1 true, i1 %i.dk
  %.pre268 = load double, ptr %2, align 8         ; 2 uses
  br i1 %or.cond3.i, label %.thread.i, label %.mkspline.exit_crit_edge

.mkspline.exit_crit_edge:                         ; preds = %bb.e
  %.sroa.6173.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6173.0.copyload.pre = load double, ptr %.sroa.6173.0..sroa_idx.phi.trans.insert, align 8, !tbaa !8
  %.phi.trans.insert262 = getelementptr [16 x i8], ptr %2, i64 %i.e
  %.phi.trans.insert263 = getelementptr i8, ptr %.phi.trans.insert262, i64 -16
  %i.dl = load <2 x double>, ptr %.phi.trans.insert263, align 8, !tbaa !8
  br label %mkspline.exit

.thread.i:                                        ; preds = %._crit_edge.i..thread.i_crit_edge, %bb.e
  %i.dm = phi double [ %.pre267, %._crit_edge.i..thread.i_crit_edge ], [ %.pre268, %bb.e ] ; 2 uses
  %i.dn = getelementptr [16 x i8], ptr %2, i64 %i.e
  %i.do = getelementptr i8, ptr %i.dn, i64 -16
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load double, ptr %i.dp, align 8         ; 2 uses
  %i.dr = load <2 x double>, ptr %i.do, align 8   ; 3 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fsub double %i.ds, %i.dm
  %i.du = extractelement <2 x double> %i.dr, i64 1
  %i.dv = fsub double %i.du, %i.dq
  %i.dw = tail call double @hypot(double noundef %i.dt, double noundef %i.dv) #11
  %i.dx = fdiv double %i.dw, 3.000000e+00         ; 3 uses
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  br label %mkspline.exit

mkspline.exit:                                    ; preds = %.mkspline.exit_crit_edge, %.thread.i
  %.sroa.6173.0.copyload = phi double [ %i.dq, %.thread.i ], [ %.sroa.6173.0.copyload.pre, %.mkspline.exit_crit_edge ] ; 9 uses
  %.sroa.0170.0.copyload = phi double [ %i.dm, %.thread.i ], [ %.pre268, %.mkspline.exit_crit_edge ] ; 10 uses
  %.185.i = phi double [ %i.dx, %.thread.i ], [ %i.dh, %.mkspline.exit_crit_edge ]
  %.1.i = phi double [ %i.dx, %.thread.i ], [ %i.di, %.mkspline.exit_crit_edge ]
  %i.ea = phi <2 x double> [ %i.dr, %.thread.i ], [ %i.dl, %.mkspline.exit_crit_edge ] ; 11 uses
  %i.eb = phi <2 x double> [ %i.dz, %.thread.i ], [ %i.dg, %.mkspline.exit_crit_edge ]
  %i.ec = fmul double %4, %.185.i                 ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %6, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %5, i64 1
  %i.ef = fmul <2 x double> %i.ee, %i.eb          ; 2 uses
  %i.eg = fmul double %7, %.1.i                   ; 2 uses
  %i.eh = icmp eq i32 %3, 2
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %.not68.i.i = icmp eq i64 %1, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.el = extractelement <2 x double> %i.ea, i64 1 ; 3 uses
  %i.em = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.en = insertelement <2 x double> %i.em, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.eo = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ep = insertelement <2 x double> %i.eo, double %i.ec, i64 0
  %i.eq = insertelement <2 x double> %i.ea, double %.sroa.0170.0.copyload, i64 1
  %i.er = insertelement <2 x double> poison, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.es = insertelement <2 x double> %i.ea, double %.sroa.6173.0.copyload, i64 0 ; 3 uses
  %i.et = insertelement <2 x double> %i.eo, double %i.eg, i64 1
  %i.eu = insertelement <2 x double> poison, double %.sroa.6173.0.copyload, i64 0
  %i.ev = insertelement <2 x double> %i.em, double %.sroa.6173.0.copyload, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %mkspline.exit
  %.032.i = phi double [ 4.000000e+00, %mkspline.exit ], [ %.133.i, %bb.am ] ; 4 uses
  %.not.i = phi i1 [ false, %mkspline.exit ], [ true, %bb.am ]
  %i.ew = insertelement <2 x double> poison, double %.032.i, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul <2 x double> %i.ep, %i.ex
  %i.ez = fdiv <2 x double> %i.ey, splat (double 3.000000e+00) ; 2 uses
  %i.fa = fadd <2 x double> %i.en, %i.ez          ; 3 uses
  %i.fb = fsub <2 x double> %i.en, %i.ez          ; 6 uses
  %i.fc = shufflevector <2 x double> %i.fa, <2 x double> %i.fb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fd = extractelement <2 x double> %i.fa, i64 0 ; 6 uses
  %i.fe = fmul <2 x double> %i.et, %i.ex
  %i.ff = fdiv <2 x double> %i.fe, splat (double 3.000000e+00) ; 2 uses
  %i.fg = fadd <2 x double> %i.es, %i.ff          ; 6 uses
  %i.fh = fsub <2 x double> %i.es, %i.ff          ; 4 uses
  br i1 %.not.i, label %bb.g, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.fi = shufflevector <2 x double> %i.fg, <2 x double> %i.fh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fj = fsub double %i.fd, %.sroa.0170.0.copyload
  %i.fk = shufflevector <2 x double> %i.es, <2 x double> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.fl = fsub <2 x double> %i.fi, %i.fk          ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0
  %i.fn = call double @hypot(double noundef %i.fj, double noundef %i.fm) #11
  %i.fo = fadd double %i.fn, 0.000000e+00
  %i.fp = shufflevector <2 x double> %i.fb, <2 x double> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.fq = fsub <2 x double> %i.fp, %i.fc          ; 2 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0
  %i.fs = extractelement <2 x double> %i.fl, i64 1
  %i.ft = call double @hypot(double noundef %i.fr, double noundef %i.fs) #11
  %i.fu = fadd double %i.fo, %i.ft
  %foldExtExtBinop.a = fsub <2 x double> %i.ea, %i.fi
  %i.fv = extractelement <2 x double> %foldExtExtBinop.a, i64 1
  %i.fw = extractelement <2 x double> %i.fq, i64 1
  %i.fx = call double @hypot(double noundef %i.fw, double noundef %i.fv) #11
  %i.fy = fadd double %i.fu, %i.fx
  br i1 %i.h, label %.lr.ph.i36.i, label %dist_n.exit41.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i36.i
  %indvars.iv.i37.i = phi i64 [ %indvars.iv.next.i39.i, %.lr.ph.i36.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.014.i38.i = phi double [ %i.gh, %.lr.ph.i36.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i37.i ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -16
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !8
  %i.gc = load <2 x double>, ptr %i.ga, align 8, !tbaa !8
  %i.gd = fsub <2 x double> %i.gb, %i.gc          ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0
  %i.gf = extractelement <2 x double> %i.gd, i64 1
  %i.gg = call double @hypot(double noundef %i.ge, double noundef %i.gf) #11
  %i.gh = fadd double %.014.i38.i, %i.gg          ; 2 uses
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i40.i, label %dist_n.exit41.loopexit.i, label %.lr.ph.i36.i, !llvm.loop !25

dist_n.exit41.loopexit.i:                         ; preds = %.lr.ph.i36.i
  %i.gi = fadd double %i.gh, -1.000000e-03
  br label %dist_n.exit41.i

dist_n.exit41.i:                                  ; preds = %dist_n.exit41.loopexit.i, %.lr.ph.i.preheader.i
  %.0.lcssa.i.i = phi double [ -1.000000e-03, %.lr.ph.i.preheader.i ], [ %i.gi, %dist_n.exit41.loopexit.i ]
  %i.gj = fcmp olt double %i.fy, %.0.lcssa.i.i
  br i1 %i.gj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %dist_n.exit41.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.g
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> splat (double 3.000000e+00), <2 x double> %i.eq) ; 2 uses
  %shift = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fsub <2 x double> %i.gk, %shift
  %i.gl = extractelement <2 x double> %foldExtExtBinop348, i64 0 ; 2 uses
  %i.gm = fsub double %i.fd, %.sroa.0170.0.copyload
  %i.gn = fmul double %i.gm, 3.000000e+00         ; 2 uses
  %i.go = shufflevector <2 x double> %i.fb, <2 x double> %i.ea, <2 x i32> <i32 1, i32 3>
  %i.gp = fmul <2 x double> %i.go, <double 3.000000e+00, double 1.000000e+00>
  %i.gq = shufflevector <2 x double> %i.er, <2 x double> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> splat (double 3.000000e+00), <2 x double> %i.gp) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = call double @llvm.fmuladd.f64(double %i.fd, double -6.000000e+00, double %i.gs) ; 2 uses
  %i.gu = extractelement <2 x double> %i.fh, i64 1 ; 3 uses
  %i.gv = call double @llvm.fmuladd.f64(double %i.gu, double 3.000000e+00, double %.sroa.6173.0.copyload)
  %i.gw = extractelement <2 x double> %i.gr, i64 1
  %i.gx = fsub double %i.gw, %i.gv                ; 2 uses
  %i.gy = fmul double %i.gu, 3.000000e+00
  %i.gz = call double @llvm.fmuladd.f64(double %.sroa.6173.0.copyload, double 3.000000e+00, double %i.gy)
  %i.ha = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  %i.hb = call double @llvm.fmuladd.f64(double %i.ha, double -6.000000e+00, double %i.gz) ; 2 uses
  %i.hc = fsub double %i.ha, %.sroa.6173.0.copyload
  %i.hd = fmul double %i.hc, 3.000000e+00         ; 2 uses
  %i.he = shufflevector <2 x double> %i.er, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.hf = shufflevector <2 x double> %i.fb, <2 x double> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.hg = shufflevector <2 x double> %i.eu, <2 x double> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %i.fh, <2 x double> %i.ea, <2 x i32> <i32 1, i32 3>
  %i.hi = extractelement <2 x double> %i.fb, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph71.i.i
  %.04969.i.i = phi i64 [ 0, %.lr.ph71.i.i ], [ %i.of, %.loopexit.i.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.04969.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.hj, align 8, !tbaa !8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !8 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %.sroa.7.16.copyload.i.i = load double, ptr %i.hk, align 8, !tbaa !8 ; 2 uses
  %.sroa.10.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %.sroa.10.16.copyload.i.i = load double, ptr %.sroa.10.16..sroa_idx.i.i, align 8, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
end_hunk_0
begin_hunk_1_@reallyroutespline:bb.a
  br i1 %i.oe, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i44.i
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count.i43.i
  br i1 %exitcond.not.i47.i, label %.loopexit.i.i, label %.lr.ph.i44.i, !llvm.loop !32

.loopexit.sink.split.i.i:                         ; preds = %bb.x, %bb.t, %.preheader141.i.i.i, %.preheader144.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ae, %.loopexit.sink.split.i.i, %splineintersectsline.exit.i.i
  %i.of = add nuw i64 %.04969.i.i, 1              ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %i.of, %1
  br i1 %exitcond79.not.i.i, label %.loopexit.i, label %bb.h, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.og = load i64, ptr @opl, align 8, !tbaa !10  ; 3 uses
  %i.oh = add i64 %i.og, 4                        ; 3 uses
  %i.oi = load i64, ptr @opn, align 8, !tbaa !10
  %.not.i.i = icmp ugt i64 %i.oh, %i.oi
  %.pre96.i = load ptr, ptr @ops, align 8, !tbaa !12 ; 2 uses
  br i1 %.not.i.i, label %bb.af, label %growops.exit.i

bb.af:                                            ; preds = %.loopexit.i
  %i.oj = shl i64 %i.oh, 4
  %i.ok = call ptr @realloc(ptr noundef %.pre96.i, i64 noundef %i.oj) #9 ; 3 uses
  store ptr %i.ok, ptr @ops, align 8, !tbaa !12
  %.not5.i.i = icmp eq ptr %i.ok, null
  br i1 %.not5.i.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.oh, ptr @opn, align 8, !tbaa !10
  br label %growops.exit.i

growops.exit.i:                                   ; preds = %bb.ag, %.loopexit.i
  %i.ol = phi ptr [ %.pre96.i, %.loopexit.i ], [ %i.ok, %bb.ag ]
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.ol, i64 %i.og ; 2 uses
  store double %i.fd, ptr %i.om, align 8, !tbaa !34
  br label %bb.an

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.on = fcmp olt double %.032.i, 5.000000e-03
  br i1 %i.on, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.eh, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.oo = load i64, ptr @opl, align 8, !tbaa !10  ; 3 uses
  %i.op = add i64 %i.oo, 4                        ; 3 uses
  %i.oq = load i64, ptr @opn, align 8, !tbaa !10
  %.not.i48.i = icmp ugt i64 %i.op, %i.oq
  %.pre.i130 = load ptr, ptr @ops, align 8, !tbaa !12 ; 2 uses
  br i1 %.not.i48.i, label %bb.ak, label %growops.exit51.i

bb.ak:                                            ; preds = %bb.aj
  %i.or = shl i64 %i.op, 4
  %i.os = call ptr @realloc(ptr noundef %.pre.i130, i64 noundef %i.or) #9 ; 3 uses
  store ptr %i.os, ptr @ops, align 8, !tbaa !12
  %.not5.i50.i = icmp eq ptr %i.os, null
  br i1 %.not5.i50.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.op, ptr @opn, align 8, !tbaa !10
  br label %growops.exit51.i

growops.exit51.i:                                 ; preds = %bb.al, %bb.aj
  %i.ot = phi ptr [ %.pre.i130, %bb.aj ], [ %i.os, %bb.al ]
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.oo ; 2 uses
  store double %i.fd, ptr %i.ou, align 8, !tbaa !34
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.ov = fcmp ogt double %.032.i, 1.000000e-02
  %i.ow = fmul nnan double %.032.i, 5.000000e-01
  %.133.i = select i1 %i.ov, double %i.ow, double 0.000000e+00
  br label %bb.f

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv249 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next250, %.lr.ph210 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv249 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !19 ; 3 uses
  %i.pa = fsub double 1.000000e+00, %i.oz         ; 3 uses
  %i.pb = fmul double %i.oz, 3.000000e+00         ; 2 uses
  %i.pc = fmul double %i.pb, %i.pa
  %i.pd = fmul double %i.pa, %i.pc
  %i.pe = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x double> %i.ad, %i.pf
  store <2 x double> %i.pg, ptr %i.oy, align 8, !tbaa !8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.pi = fmul double %i.oz, %i.pb
  %i.pj = fmul double %i.pa, %i.pi
  %i.pk = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pl = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x double> %i.af, %i.pl
  store <2 x double> %i.pm, ptr %i.ph, align 8, !tbaa !8
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.lr.ph.i, label %.lr.ph210, !llvm.loop !36

bb.an:                                            ; preds = %growops.exit51.i, %growops.exit.i
  %.sink320 = phi ptr [ %i.ou, %growops.exit51.i ], [ %i.om, %growops.exit.i ] ; 4 uses
  %.sink136.i = phi i64 [ %i.oo, %growops.exit51.i ], [ %i.og, %growops.exit.i ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.sink320, i64 8
  %i.po = extractelement <2 x double> %i.fg, i64 0
  store double %i.po, ptr %i.pn, align 8, !tbaa !37
  %i.pp = getelementptr i8, ptr %.sink320, i64 16
  %i.pq = extractelement <2 x double> %i.fb, i64 1
  store double %i.pq, ptr %i.pp, align 8, !tbaa !34
  %i.pr = getelementptr i8, ptr %.sink320, i64 24
  %i.ps = extractelement <2 x double> %i.fh, i64 1
  store double %i.ps, ptr %i.pr, align 8, !tbaa !37
  %i.pt = getelementptr i8, ptr %.sink320, i64 32
  %i.pu = add i64 %.sink136.i, 3
  store <2 x double> %i.ea, ptr %i.pt, align 8, !tbaa !8
  store i64 %i.pu, ptr @opl, align 8, !tbaa !10
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak, %bb.af
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

.loopexit:                                        ; preds = %dist_n.exit41.i, %bb.ai
  %i.pv = fmul double %i.ec, f0x3FD5555555555555
  %i.pw = fmul <2 x double> %i.ef, splat (double f0x3FD5555555555555) ; 2 uses
  %i.px = fadd double %.sroa.0170.0.copyload, %i.pv
  %i.py = fmul double %i.eg, f0x3FD5555555555555
  %i.pz = insertelement <2 x double> %i.ea, double %.sroa.6173.0.copyload, i64 1 ; 3 uses
  %i.qa = fsub <2 x double> %i.pz, %i.pw
  %i.qb = fadd <2 x double> %i.pz, %i.pw
  %i.qc = shufflevector <2 x double> %i.qa, <2 x double> %i.qb, <2 x i32> <i32 0, i32 3>
  %i.qd = fsub double %i.el, %i.py
  %i.qe = icmp sgt i32 %3, 2
  br i1 %i.qe, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %.loopexit
  %i.qf = add nsw i32 %3, -1
  %wide.trip.count257 = zext nneg i32 %i.qf to i64
  br label %.lr.ph215

._crit_edge216:                                   ; preds = %.lr.ph215, %.loopexit
  %.0123.lcssa = phi i32 [ -1, %.loopexit ], [ %.1124, %.lr.ph215 ] ; 3 uses
  call void @free(ptr noundef %i.f) #11
  %i.qg = sext i32 %.0123.lcssa to i64
  %i.qh = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qg ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 -16
  %i.qj = add nsw i32 %.0123.lcssa, 1             ; 2 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qk
  %i.qm = load <4 x double>, ptr %i.qi, align 8   ; 4 uses
  %i.qn = load <2 x double>, ptr %i.ql, align 8
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qp = shufflevector <4 x double> %i.qm, <4 x double> %i.qo, <2 x i32> <i32 2, i32 4>
  %i.qq = shufflevector <4 x double> %i.qm, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.qr = fsub <2 x double> %i.qp, %i.qq          ; 4 uses
  %i.qs = shufflevector <4 x double> %i.qm, <4 x double> %i.qo, <2 x i32> <i32 3, i32 5>
  %i.qt = shufflevector <4 x double> %i.qm, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qu = fsub <2 x double> %i.qs, %i.qt          ; 4 uses
  %i.qv = fmul <2 x double> %i.qu, %i.qu
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.qr, <2 x double> %i.qv) ; 2 uses
  %i.qx = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qw) ; 2 uses
  %i.qy = fcmp ogt <2 x double> %i.qw, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.qz = fdiv <2 x double> %i.qr, %i.qx
  %i.ra = fdiv <2 x double> %i.qu, %i.qx
  %i.rb = select <2 x i1> %i.qy, <2 x double> %i.ra, <2 x double> %i.qu ; 2 uses
  %i.rc = select <2 x i1> %i.qy, <2 x double> %i.qz, <2 x double> %i.qr ; 2 uses
  %i.rd = shufflevector <2 x double> %i.rc, <2 x double> %i.rb, <2 x i32> <i32 0, i32 2>
  %i.re = shufflevector <2 x double> %i.rc, <2 x double> %i.rb, <2 x i32> <i32 1, i32 3>
  %i.rf = fadd <2 x double> %i.rd, %i.re          ; 3 uses
  %i.rg = extractelement <2 x double> %i.rf, i64 1 ; 3 uses
  %i.rh = fmul double %i.rg, %i.rg
  %i.ri = extractelement <2 x double> %i.rf, i64 0 ; 3 uses
  %i.rj = call double @llvm.fmuladd.f64(double %i.ri, double %i.ri, double %i.rh) ; 2 uses
  %i.rk = fcmp ogt double %i.rj, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %sqrt.i154 = call double @llvm.sqrt.f64(double %i.rj)
  %i.rl = insertelement <2 x double> poison, double %sqrt.i154, i64 0
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rn = fdiv <2 x double> %i.rf, %i.rm          ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 1
  %.sroa.6.0.i155 = select i1 %i.rk, double %i.ro, double %i.rg ; 2 uses
  %i.rp = extractelement <2 x double> %i.rn, i64 0
  %.sroa.0.0.i156 = select i1 %i.rk, double %i.rp, double %i.ri ; 2 uses
  %i.rq = call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %i.qj, double %4, double %5, double %.sroa.0.0.i156, double %.sroa.6.0.i155)
  %i.rr = icmp slt i32 %i.rq, 0
  br i1 %i.rr, label %bb.aq, label %bb.ap

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %indvars.iv254 = phi i64 [ 1, %.lr.ph215.preheader ], [ %indvars.iv.next255, %.lr.ph215 ] ; 4 uses
  %.0121212 = phi double [ -1.000000e+00, %.lr.ph215.preheader ], [ %.1122, %.lr.ph215 ] ; 2 uses
  %.0123211 = phi i32 [ -1, %.lr.ph215.preheader ], [ %.1124, %.lr.ph215 ]
  %i.rs = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv254
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !19 ; 3 uses
  %15 = fmul double %i.rt, 3.000000e+00
  %16 = fsub double 1.000000e+00, %i.rt
  %i.ru = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %16, i64 1 ; 5 uses
  %i.rw = insertelement <2 x double> poison, double %15, i64 0
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = fmul <2 x double> %i.rv, %i.rx
  %i.rz = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sa = fmul <2 x double> %i.rz, %i.ry          ; 3 uses
  %i.sb = extractelement <2 x double> %i.sa, i64 1
  %i.sc = fmul double %i.px, %i.sb
  %i.sd = fmul <2 x double> %i.rv, %i.rv
  %i.se = fmul <2 x double> %i.rv, %i.sd          ; 3 uses
  %i.sf = extractelement <2 x double> %i.se, i64 1
  %i.sg = call double @llvm.fmuladd.f64(double %i.sf, double %.sroa.0170.0.copyload, double %i.sc)
  %i.sh = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.sg, i64 0
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.qc, <2 x double> %i.sh)
  %i.sj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.pz, <2 x double> %i.si) ; 2 uses
  %i.sk = extractelement <2 x double> %i.sj, i64 1
  %i.sl = extractelement <2 x double> %i.sa, i64 0
  %17 = extractelement <2 x double> %i.se, i64 0
  %18 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv254
  %i.sm = call double @llvm.fmuladd.f64(double %i.sl, double %i.qd, double %i.sk)
  %19 = call double @llvm.fmuladd.f64(double %17, double %i.el, double %i.sm)
  %20 = load <2 x double>, ptr %18, align 8
  %21 = insertelement <2 x double> %i.sj, double %19, i64 1
  %22 = fsub <2 x double> %20, %21                ; 2 uses
  %i.sn = extractelement <2 x double> %22, i64 0
  %23 = extractelement <2 x double> %22, i64 1
  %i.so = call double @hypot(double noundef %i.sn, double noundef %23) #11 ; 2 uses
  %i.sp = fcmp ogt double %i.so, %.0121212        ; 2 uses
  %i.sq = trunc nuw nsw i64 %indvars.iv254 to i32
  %.1124 = select i1 %i.sp, i32 %i.sq, i32 %.0123211 ; 2 uses
  %.1122 = select i1 %i.sp, double %i.so, double %.0121212
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !38

bb.ap:                                            ; preds = %._crit_edge216
  %i.sr = sub nsw i32 %3, %.0123.lcssa
  %i.ss = call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.qh, i32 noundef %i.sr, double %.sroa.0.0.i156, double %.sroa.6.0.i155, double %6, double %7)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %._crit_edge216, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.an ], [ -1, %bb.ao ], [ -1, %._crit_edge216 ], [ %i.ss, %bb.ap ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @solve3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(1) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS5Pxy_t", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!16 = !{!17, !11, i64 8}
!17 = !{!"Ppoly_t", !13, i64 0, !11, i64 8}
!18 = !{!17, !13, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"tna_t", !9, i64 0, !6, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = !{!35, !9, i64 0}
!35 = !{!"Pxy_t", !9, i64 0, !9, i64 8}
!36 = distinct !{!36, !22}
!37 = !{!35, !9, i64 8}
!38 = distinct !{!38, !22}
end_hunk_1
