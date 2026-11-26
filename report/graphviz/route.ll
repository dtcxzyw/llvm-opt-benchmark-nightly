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
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 40) #10 ; 13 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %.lr.ph

.lr.ph208:                                        ; preds = %.lr.ph
  %i.i = getelementptr [40 x i8], ptr %i.f, i64 %i.e
  %i.j = getelementptr i8, ptr %i.i, i64 -40      ; 3 uses
  %i.k = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i32 %3, 2
  br i1 %i.l, label %.epil.preheader, label %.lr.ph208.new

.lr.ph208.new:                                    ; preds = %.lr.ph208
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %8 = add nsw i64 %indvars.iv, -1                ; 2 uses
  %9 = getelementptr inbounds [40 x i8], ptr %i.f, i64 %8
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.m = getelementptr inbounds [16 x i8], ptr %2, i64 %8
  %12 = load <2 x double>, ptr %11, align 8
  %i.n = load <2 x double>, ptr %i.m, align 8
  %i.o = fsub <2 x double> %i.n, %12              ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  %i.r = tail call double @hypot(double noundef %i.p, double noundef %i.q) #11
  %i.s = fadd double %10, %i.r
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.s, ptr %i.t, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph208, label %.lr.ph, !llvm.loop !19

.preheader:                                       ; preds = %bb.b
  %i.u = icmp eq i32 %3, 1
  br i1 %i.u, label %.lr.ph210.preheader, label %._crit_edge.i

.lr.ph210.preheader.loopexit.unr-lcssa:           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph210.preheader.loopexit.unr-lcssa, %.lr.ph208
  %indvars.iv244.epil.init = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next245.1, %.lr.ph210.preheader.loopexit.unr-lcssa ]
  %lcmp.mod379 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.v = load double, ptr %i.j, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244.epil.init ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !34
  %i.y = fdiv double %i.x, %i.v
  store double %i.y, ptr %i.w, align 8, !tbaa !34
  br label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.epil.preheader, %.lr.ph210.preheader.loopexit.unr-lcssa, %.preheader
  %wide.trip.count252 = zext nneg i32 %3 to i64
  %i.z = insertelement <2 x double> poison, double %4, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %5, i64 1
  %i.ab = insertelement <2 x double> poison, double %6, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %7, i64 1
  br label %.lr.ph210

bb.c:                                             ; preds = %bb.c, %.lr.ph208.new
  %indvars.iv244 = phi i64 [ 1, %.lr.ph208.new ], [ %indvars.iv.next245.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph208.new ], [ %niter.next.1, %bb.c ]
  %i.ad = load double, ptr %i.j, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = fdiv double %i.af, %i.ad
  store double %i.ag, ptr %i.ae, align 8, !tbaa !34
  %i.ah = load double, ptr %i.j, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !34
  %i.al = fdiv double %i.ak, %i.ah
  store double %i.al, ptr %i.aj, align 8, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph210.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.am = load double, ptr %2, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aq = getelementptr [16 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %i.as = load double, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.aq, i64 -8
  %i.au = load double, ptr %i.at, align 8
  %i.av = insertelement <2 x double> poison, double %i.as, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.am, i64 1
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ao, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.sroa.17.0107.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cb, %bb.d ]
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cq, %bb.d ]
  %i.ba = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cr, %bb.d ]
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bf = load double, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bg = fsub double 1.000000e+00, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1 ; 4 uses
  %i.bj = fmul <2 x double> %i.bi, %i.bi
  %i.bk = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bi)
  %i.bm = fmul <2 x double> %i.bj, %i.bl          ; 2 uses
  %i.bn = fmul <2 x double> %i.aw, %i.bm
  %i.bo = fmul <2 x double> %i.ay, %i.bm
  %i.bp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bn)
  %i.bq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bo)
  %i.br = load double, ptr %i.be, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bt = load double, ptr %i.bs, align 8
  %i.bu = fsub double %i.br, %i.bp                ; 2 uses
  %i.bv = fsub double %i.bt, %i.bq                ; 2 uses
  %i.bw = load <4 x double>, ptr %i.bc, align 8   ; 7 uses
  %i.bx = load double, ptr %i.bd, align 8         ; 2 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = extractelement <4 x double> %i.bw, i64 2 ; 2 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.by)
  %i.cb = fadd double %.sroa.17.0107.i, %i.ca     ; 2 uses
  %i.cc = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.cd = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = insertelement <2 x double> %i.cd, double %i.bv, i64 1
  %i.cf = fmul <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = insertelement <2 x double> %i.ch, double %i.bu, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cf)
  %i.ck = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.bv, i64 1
  %i.cm = fmul <2 x double> %i.cc, %i.cl
  %i.cn = shufflevector <4 x double> %i.bw, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %i.bu, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.co, <2 x double> %i.cm)
  %i.cq = fadd <2 x double> %i.az, %i.cj          ; 2 uses
  %i.cr = fadd <2 x double> %i.ba, %i.cp          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ap
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.d, %.preheader
  %.sroa.17.0.lcssa.i = phi double [ 0.000000e+00, %.preheader ], [ %i.cb, %bb.d ] ; 2 uses
  %i.cs = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cq, %bb.d ] ; 3 uses
  %i.ct = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cr, %bb.d ] ; 3 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0 ; 2 uses
  %i.cv = fneg double %i.cu                       ; 2 uses
  %i.cw = fmul double %i.cu, %i.cv
  %i.cx = extractelement <2 x double> %i.cs, i64 0
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %.sroa.17.0.lcssa.i, double %i.cw) ; 2 uses
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ult double %i.cz, f0x3EB0C6F7A0B5ED8D
  br i1 %i.da, label %._crit_edge.i..thread.i_crit_edge, label %bb.e

._crit_edge.i..thread.i_crit_edge:                ; preds = %._crit_edge.i
  %.pre267 = load double, ptr %2, align 8
  br label %.thread.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.db = fneg <2 x double> %i.cs
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x double> %i.dc, double %i.cv, i64 1
  %i.de = fmul <2 x double> %i.ct, %i.dd
  %i.df = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x double> %i.df, double %.sroa.17.0.lcssa.i, i64 1
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.dg, <2 x double> %i.de)
  %i.di = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv <2 x double> %i.dh, %i.dj          ; 3 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 1 ; 2 uses
  %i.dm = extractelement <2 x double> %i.dk, i64 0 ; 2 uses
  %i.dn = fcmp ole double %i.dl, 0.000000e+00
  %i.do = fcmp ole double %i.dm, 0.000000e+00
  %or.cond3.i = select i1 %i.dn, i1 true, i1 %i.do
  %.pre268 = load double, ptr %2, align 8         ; 2 uses
  br i1 %or.cond3.i, label %.thread.i, label %.mkspline.exit_crit_edge

.mkspline.exit_crit_edge:                         ; preds = %bb.e
  %.sroa.6173.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6173.0.copyload.pre = load double, ptr %.sroa.6173.0..sroa_idx.phi.trans.insert, align 8, !tbaa !9
  %.phi.trans.insert262 = getelementptr [16 x i8], ptr %2, i64 %i.e
  %.phi.trans.insert263 = getelementptr i8, ptr %.phi.trans.insert262, i64 -16
  %i.dp = load <2 x double>, ptr %.phi.trans.insert263, align 8, !tbaa !9
  br label %mkspline.exit

.thread.i:                                        ; preds = %._crit_edge.i..thread.i_crit_edge, %bb.e
  %i.dq = phi double [ %.pre267, %._crit_edge.i..thread.i_crit_edge ], [ %.pre268, %bb.e ] ; 2 uses
  %i.dr = getelementptr [16 x i8], ptr %2, i64 %i.e
  %i.ds = getelementptr i8, ptr %i.dr, i64 -16
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load double, ptr %i.dt, align 8         ; 2 uses
  %i.dv = load <2 x double>, ptr %i.ds, align 8   ; 3 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fsub double %i.dw, %i.dq
  %i.dy = extractelement <2 x double> %i.dv, i64 1
  %i.dz = fsub double %i.dy, %i.du
  %i.ea = tail call double @hypot(double noundef %i.dx, double noundef %i.dz) #11
  %i.eb = fdiv double %i.ea, 3.000000e+00         ; 3 uses
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  br label %mkspline.exit

mkspline.exit:                                    ; preds = %.mkspline.exit_crit_edge, %.thread.i
  %.sroa.6173.0.copyload = phi double [ %i.du, %.thread.i ], [ %.sroa.6173.0.copyload.pre, %.mkspline.exit_crit_edge ] ; 9 uses
  %.sroa.0170.0.copyload = phi double [ %i.dq, %.thread.i ], [ %.pre268, %.mkspline.exit_crit_edge ] ; 10 uses
  %.185.i = phi double [ %i.eb, %.thread.i ], [ %i.dl, %.mkspline.exit_crit_edge ]
  %.1.i = phi double [ %i.eb, %.thread.i ], [ %i.dm, %.mkspline.exit_crit_edge ]
  %i.ee = phi <2 x double> [ %i.dv, %.thread.i ], [ %i.dp, %.mkspline.exit_crit_edge ] ; 11 uses
  %i.ef = phi <2 x double> [ %i.ed, %.thread.i ], [ %i.dk, %.mkspline.exit_crit_edge ]
  %i.eg = fmul double %4, %.185.i                 ; 2 uses
  %i.eh = insertelement <2 x double> poison, double %6, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %5, i64 1
  %i.ej = fmul <2 x double> %i.ei, %i.ef          ; 2 uses
  %i.ek = fmul double %7, %.1.i                   ; 2 uses
  %i.el = icmp eq i32 %3, 2
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %.not68.i.i = icmp eq i64 %1, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ep = extractelement <2 x double> %i.ee, i64 1 ; 3 uses
end_hunk_0
