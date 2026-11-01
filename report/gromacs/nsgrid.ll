Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nsgrid?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"Set grid boundaries dim %d: %f %f\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z21get_nsgrid_boundariesiPA3_fP12gmx_domdec_tP11gmx_ddbox_tPN3gmx11BasicVectorIfEES8_iS0_PfS9_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 0
  br i1 %i.b, label %.preheader.preheader.i, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.c = icmp ult i32 %6, 4
  br i1 %i.c, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.3, %.preheader.i ] ; 5 uses
  %i.d = phi <4 x double> [ zeroinitializer, %.preheader.preheader.i.new ], [ %i.av, %.preheader.i ]
  %i.e = phi <2 x double> [ zeroinitializer, %.preheader.preheader.i.new ], [ %i.az, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.3, %.preheader.i ]
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i
  %i.g = load <3 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.i = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.j = fmul <4 x float> %i.h, %i.i
  %i.k = fpext <4 x float> %i.j to <4 x double>
  %i.l = fadd <4 x double> %i.d, %i.k
  %i.m = shufflevector <3 x float> %i.g, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.n = fmul <2 x float> %i.m, %i.m
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = fadd <2 x double> %i.e, %i.o
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load <3 x float>, ptr %i.r, align 4, !tbaa !12 ; 2 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.u = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.v = fmul <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fadd <4 x double> %i.l, %i.w
  %i.y = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.y
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  %i.ab = fadd <2 x double> %i.p, %i.aa
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load <3 x float>, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ag = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ah = fmul <4 x float> %i.af, %i.ag
  %i.ai = fpext <4 x float> %i.ah to <4 x double>
  %i.aj = fadd <4 x double> %i.x, %i.ai
  %i.ak = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.al = fmul <2 x float> %i.ak, %i.ak
  %i.am = fpext <2 x float> %i.al to <2 x double>
  %i.an = fadd <2 x double> %i.ab, %i.am
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.aq = load <3 x float>, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.ar = shufflevector <3 x float> %i.aq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.as = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.at = fmul <4 x float> %i.ar, %i.as
  %i.au = fpext <4 x float> %i.at to <4 x double>
  %i.av = fadd <4 x double> %i.aj, %i.au          ; 3 uses
  %i.aw = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, %i.aw
  %i.ay = fpext <2 x float> %i.ax to <2 x double>
  %i.az = fadd <2 x double> %i.an, %i.ay          ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !9

_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.3, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.preheader.preheader.i ], [ %i.av, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa ]
  %.epil.init153 = phi <2 x double> [ zeroinitializer, %.preheader.preheader.i ], [ %i.az, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %i.ba = phi <4 x double> [ %.epil.init, %.preheader.i.epil.preheader ], [ %i.bi, %.preheader.i.epil ]
  %i.bb = phi <2 x double> [ %.epil.init153, %.preheader.i.epil.preheader ], [ %i.bm, %.preheader.i.epil ]
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i.epil
  %i.bd = load <3 x float>, ptr %i.bc, align 4, !tbaa !12 ; 2 uses
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bf = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bg = fmul <4 x float> %i.be, %i.bf
  %i.bh = fpext <4 x float> %i.bg to <4 x double>
  %i.bi = fadd <4 x double> %i.ba, %i.bh          ; 2 uses
  %i.bj = shufflevector <3 x float> %i.bd, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bk = fmul <2 x float> %i.bj, %i.bj
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = fadd <2 x double> %i.bb, %i.bl          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit, label %.preheader.i.epil, !llvm.loop !10

_ZL16calc_x_av_stddeviPA3_fPfS1_.exit:            ; preds = %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.b
  %i.bn = phi <4 x double> [ zeroinitializer, %bb.b ], [ %i.av, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa ], [ %i.bi, %.preheader.i.epil ] ; 4 uses
  %i.bo = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.az, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa ], [ %i.bm, %.preheader.i.epil ] ; 2 uses
  %i.bp = sitofp i32 %6 to double
  %i.bq = fdiv double 1.000000e+00, %i.bp         ; 6 uses
  %i.br = extractelement <4 x double> %i.bn, i64 0
  %i.bs = fmul double %i.bq, %i.br                ; 3 uses
  %i.bt = extractelement <4 x double> %i.bn, i64 1
  %i.bu = fmul double %i.bq, %i.bt                ; 3 uses
  %10 = extractelement <4 x double> %i.bn, i64 2
  %11 = fmul double %i.bq, %10                    ; 3 uses
  %12 = extractelement <4 x double> %i.bn, i64 3
  %13 = fmul double %i.bq, %12
  %14 = extractelement <2 x double> %i.bo, i64 0
  %15 = fmul double %i.bq, %14
  %16 = extractelement <2 x double> %i.bo, i64 1
  %17 = fmul double %i.bq, %16
  %18 = fptrunc double %i.bs to float
  %19 = fneg double %i.bs
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %i.bs, double %13)
  %21 = tail call double @sqrt(double noundef %20) #5
  %i.bv = fptrunc double %21 to float
  %22 = fptrunc double %i.bu to float
  %23 = fneg double %i.bu
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %i.bu, double %15)
  %i.bw = tail call double @sqrt(double noundef %24) #5
  %i.bx = fptrunc double %i.bw to float
  %25 = fptrunc double %11 to float
  %26 = fneg double %11
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %11, double %17)
  %i.by = tail call double @sqrt(double noundef %27) #5
  %i.bz = fptrunc double %i.by to float
  br label %bb.c

bb.c:                                             ; preds = %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit, %bb.a
  %.sroa.8102.0 = phi float [ %25, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.5100.0 = phi float [ %22, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.098.0 = phi float [ %18, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.8.0 = phi float [ %i.bz, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.5.0 = phi float [ %i.bx, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi float [ %i.bv, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %i.ca = icmp eq ptr %3, null
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cd = icmp ne ptr %2, null                    ; 2 uses
  %i.ce = icmp ne ptr %4, null                    ; 10 uses
  %or.cond = and i1 %i.cd, %i.ce                  ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.cg = icmp ne ptr %5, null                    ; 7 uses
  %or.cond3 = and i1 %i.cd, %i.cg                 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.ci = icmp sgt i32 %0, 0                      ; 3 uses
  br i1 %i.ca, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  br i1 %i.ci, label %bb.aw, label %bb.az

.split.us:                                        ; preds = %bb.c
  br i1 %or.cond3, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  br i1 %i.ci, label %bb.ac, label %bb.aa

.split.us.split.us.preheader:                     ; preds = %.split.us
  br i1 %i.ci, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.split.us.split.us.preheader
  %i.cj = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float -2.000000e+00, float %.sroa.098.0)
  store float %i.cj, ptr %8, align 4, !tbaa !12
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float 2.000000e+00, float %.sroa.098.0)
  store float %i.ck, ptr %9, align 4, !tbaa !12
  %.pre = load i32, ptr %i.cf, align 4, !tbaa !15 ; 2 uses
  %i.cl = icmp sgt i32 %.pre, 0
  %or.cond132 = select i1 %or.cond, i1 %i.cl, i1 false
  br i1 %or.cond132, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cm = load float, ptr %4, align 4, !tbaa !12
  store float %i.cm, ptr %8, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !15
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = icmp slt i32 %.pre, %i.co
  br i1 %i.cp, label %.sink.split, label %bb.j

bb.g:                                             ; preds = %.split.us.split.us.preheader
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = load float, ptr %4, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cr = phi float [ %i.cq, %bb.h ], [ 0.000000e+00, %bb.g ]
  store float %i.cr, ptr %8, align 4, !tbaa !12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.i
  %i.cs = load float, ptr %5, align 4, !tbaa !12
  store float %i.cs, ptr %9, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  %i.ct = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not76.us.us = icmp eq ptr %i.ct, null
  br i1 %.not76.us.us, label %.split.us.split.us.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = load float, ptr %8, align 4, !tbaa !12
  %i.cv = fpext float %i.cu to double
  %i.cw = load float, ptr %9, align 4, !tbaa !12
  %i.cx = fpext float %i.cw to double
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str, i32 noundef 0, double noundef %i.cv, double noundef %i.cx) #5 ; 0 uses
  br label %.split.us.split.us.1

.split.us.split.us.1:                             ; preds = %bb.k, %bb.j
  %i.cz = icmp sgt i32 %0, 1
  br i1 %i.cz, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.split.us.split.us.1
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float -2.000000e+00, float %.sroa.5100.0)
  store float %i.dc, ptr %i.da, align 4, !tbaa !12
  %i.dd = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float 2.000000e+00, float %.sroa.5100.0)
  store float %i.dd, ptr %i.db, align 4, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = load i32, ptr %i.de, align 4, !tbaa !15 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  %or.cond133 = select i1 %or.cond, i1 %i.dg, i1 false
  br i1 %or.cond133, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !12
  store float %i.di, ptr %i.da, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = icmp slt i32 %i.df, %i.dl
  br i1 %i.dm, label %bb.n, label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  store float %i.do, ptr %i.db, align 4, !tbaa !12
  br label %bb.r

bb.o:                                             ; preds = %.split.us.split.us.1
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dr = phi float [ %i.dq, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.dr, ptr %i.ds, align 4, !tbaa !12
  %.in.us.us.1 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dt = load float, ptr %.in.us.us.1, align 4, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.dt, ptr %i.du, align 4, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %._crit_edge
  %i.dv = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not76.us.us.1 = icmp eq ptr %i.dv, null
  br i1 %.not76.us.us.1, label %.split.us.split.us.2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fpext float %i.dx to double
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fpext float %i.ea to double
  %i.ec = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dv, ptr noundef nonnull @.str, i32 noundef 1, double noundef %i.dy, double noundef %i.eb) #5 ; 0 uses
  br label %.split.us.split.us.2

.split.us.split.us.2:                             ; preds = %bb.s, %bb.r
  %i.ed = icmp sgt i32 %0, 2
  br i1 %i.ed, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.split.us.split.us.2
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eg = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float -2.000000e+00, float %.sroa.8102.0)
  store float %i.eg, ptr %i.ee, align 4, !tbaa !12
  %i.eh = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float 2.000000e+00, float %.sroa.8102.0)
  store float %i.eh, ptr %i.ef, align 4, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  %or.cond134 = select i1 %or.cond, i1 %i.ek, i1 false
  br i1 %or.cond134, label %bb.u, label %._crit_edge106

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  store float %i.em, ptr %i.ee, align 4, !tbaa !12
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %bb.t, %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !15
  %i.ep = add nsw i32 %i.eo, -1
  %i.eq = icmp slt i32 %i.ej, %i.ep
  br i1 %i.eq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %._crit_edge106
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !12
  store float %i.es, ptr %i.ef, align 4, !tbaa !12
  br label %bb.z

bb.w:                                             ; preds = %.split.us.split.us.2
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ev = phi float [ %i.eu, %bb.x ], [ 0.000000e+00, %bb.w ]
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.ev, ptr %i.ew, align 4, !tbaa !12
  %.in.us.us.2 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = load float, ptr %.in.us.us.2, align 4, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.ex, ptr %i.ey, align 4, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %._crit_edge106
end_hunk_0
begin_hunk_1_@_Z21get_nsgrid_boundariesiPA3_fP12gmx_domdec_tP11gmx_ddbox_tPN3gmx11BasicVectorIfEES8_iS0_PfS9_:bb.a
  %i.ic = load float, ptr %9, align 4, !tbaa !12
  %i.id = fpext float %i.ic to double
  %i.ie = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hz, ptr noundef nonnull @.str, i32 noundef 0, double noundef %i.ib, double noundef %i.id) #5 ; 0 uses
  br label %.split.1

.split.1:                                         ; preds = %bb.be, %bb.bf
  %i.if = icmp sgt i32 %0, 1
  br i1 %i.if, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %.split.1
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.im = fpext float %i.ih to double
  %i.in = fpext float %i.ij to double             ; 2 uses
  %i.io = tail call double @llvm.fmuladd.f64(double %i.in, double 5.000000e-01, double %i.im)
  %i.ip = fptrunc double %i.io to float           ; 2 uses
  %i.iq = fmul double %i.in, 5.000000e-01
  %i.ir = fdiv double %i.iq, f0x3FFBB67AE0000000
  %i.is = fptrunc double %i.ir to float           ; 2 uses
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float -2.000000e+00, float %i.ip)
  store float %i.it, ptr %i.ik, align 4, !tbaa !12
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.is, float 2.000000e+00, float %i.ip)
  store float %i.iu, ptr %i.il, align 4, !tbaa !12
  br i1 %or.cond, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !15
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !12
  store float %i.iz, ptr %i.ik, align 4, !tbaa !12
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  br i1 %or.cond3, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !15
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !15
  %i.je = add nsw i32 %i.jd, -1
  %i.jf = icmp slt i32 %i.jb, %i.je
  br i1 %i.jf, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !12
  store float %i.jh, ptr %i.il, align 4, !tbaa !12
  br label %bb.bp

bb.bm:                                            ; preds = %.split.1
  br i1 %i.ce, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jk = phi float [ %i.jj, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.jk, ptr %i.jl, align 4, !tbaa !12
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.in.v.1 = select i1 %i.cg, ptr %5, ptr %i.jm
  %.in.1 = getelementptr inbounds nuw i8, ptr %.in.v.1, i64 4
  %i.jn = load float, ptr %.in.1, align 4, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.jn, ptr %i.jo, align 4, !tbaa !12
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl, %bb.bk, %bb.bj
  %i.jp = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not76.1 = icmp eq ptr %i.jp, null
  br i1 %.not76.1, label %.split.2, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !12
  %i.js = fpext float %i.jr to double
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !12
  %i.jv = fpext float %i.ju to double
  %i.jw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jp, ptr noundef nonnull @.str, i32 noundef 1, double noundef %i.js, double noundef %i.jv) #5 ; 0 uses
  br label %.split.2

.split.2:                                         ; preds = %bb.bq, %bb.bp
  %i.jx = icmp sgt i32 %0, 2
  br i1 %i.jx, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %.split.2
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !12
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ke = fpext float %i.jz to double
  %i.kf = fpext float %i.kb to double             ; 2 uses
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.kf, double 5.000000e-01, double %i.ke)
  %i.kh = fptrunc double %i.kg to float           ; 2 uses
  %i.ki = fmul double %i.kf, 5.000000e-01
  %i.kj = fdiv double %i.ki, f0x3FFBB67AE0000000
  %i.kk = fptrunc double %i.kj to float           ; 2 uses
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kk, float -2.000000e+00, float %i.kh)
  store float %i.kl, ptr %i.kc, align 4, !tbaa !12
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kk, float 2.000000e+00, float %i.kh)
  store float %i.km, ptr %i.kd, align 4, !tbaa !12
  br i1 %or.cond, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !15
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !12
  store float %i.kr, ptr %i.kc, align 4, !tbaa !12
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  br i1 %or.cond3, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !15
  %i.kw = add nsw i32 %i.kv, -1
  %i.kx = icmp slt i32 %i.kt, %i.kw
  br i1 %i.kx, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !12
  store float %i.kz, ptr %i.kd, align 4, !tbaa !12
  br label %bb.ca

bb.bx:                                            ; preds = %.split.2
  br i1 %i.ce, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lb = load float, ptr %i.la, align 4, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lc = phi float [ %i.lb, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.lc, ptr %i.ld, align 4, !tbaa !12
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.in.v.2 = select i1 %i.cg, ptr %5, ptr %i.le
  %.in.2 = getelementptr inbounds nuw i8, ptr %.in.v.2, i64 8
  %i.lf = load float, ptr %.in.2, align 4, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.lf, ptr %i.lg, align 4, !tbaa !12
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bv, %bb.bu
  %i.lh = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not76.2 = icmp eq ptr %i.lh, null
  br i1 %.not76.2, label %.split84.us, label %.split84.us.sink.split

.split84.us.sink.split:                           ; preds = %bb.ca, %bb.av, %bb.z
  %.sink = phi ptr [ %i.hd, %bb.av ], [ %i.ez, %bb.z ], [ %i.lh, %bb.ca ]
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lj = load float, ptr %i.li, align 4, !tbaa !12
  %i.lk = fpext float %i.lj to double
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12
  %i.ln = fpext float %i.lm to double
  %i.lo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.sink, ptr noundef nonnull @.str, i32 noundef 2, double noundef %i.lk, double noundef %i.ln) #5 ; 0 uses
  br label %.split84.us

.split84.us:                                      ; preds = %.split84.us.sink.split, %bb.ca, %bb.av, %bb.z
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !13}
!10 = distinct !{!10, !14}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!6, !6, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!18 = !{!17, !17, i64 0}
end_hunk_1
