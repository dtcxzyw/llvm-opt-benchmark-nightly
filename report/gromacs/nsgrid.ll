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
  %xtraiter = and i64 %wide.trip.count.i, 1
  %10 = icmp eq i32 %6, 1
  br i1 %10, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.1, %.preheader.i ] ; 3 uses
  %i.c = phi <4 x double> [ zeroinitializer, %.preheader.preheader.i.new ], [ %i.o, %.preheader.i ]
  %i.d = phi <2 x double> [ zeroinitializer, %.preheader.preheader.i.new ], [ %i.q, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.1, %.preheader.i ]
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !11   ; 3 uses
  %13 = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 4 uses
  %i.f = fmul <2 x float> %13, %13
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %15 = insertelement <4 x float> %14, float %12, i64 1
  %16 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.g = fpext <4 x float> %17 to <4 x double>
  %i.h = fadd <4 x double> %i.c, %i.g
  %18 = fmul float %12, %12
  %19 = insertelement <2 x float> %13, float %18, i64 1
  %i.i = fpext <2 x float> %19 to <2 x double>
  %i.j = fadd <2 x double> %i.d, %i.i
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %20 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %21 = load float, ptr %20, align 4, !tbaa !11   ; 3 uses
  %22 = load <2 x float>, ptr %i.l, align 4, !tbaa !11 ; 4 uses
  %i.m = fmul <2 x float> %22, %22
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %24 = insertelement <4 x float> %23, float %21, i64 1
  %25 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = shufflevector <4 x float> %24, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.n = fpext <4 x float> %26 to <4 x double>
  %i.o = fadd <4 x double> %i.h, %i.n             ; 3 uses
  %27 = fmul float %21, %21
  %28 = insertelement <2 x float> %22, float %27, i64 1
  %i.p = fpext <2 x float> %28 to <2 x double>
  %i.q = fadd <2 x double> %i.j, %i.p             ; 4 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a, label %.preheader.i, !llvm.loop !9

_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a: ; preds = %.preheader.i
  %29 = extractelement <2 x double> %i.q, i64 1
  %30 = extractelement <2 x double> %i.q, i64 0
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a, %.preheader.preheader.i
  %indvars.iv.i.epil.init.a = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.1, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ]
  %.epil.init.a = phi <4 x double> [ zeroinitializer, %.preheader.preheader.i ], [ %i.o, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ]
  %.epil.init153 = phi <2 x double> [ zeroinitializer, %.preheader.preheader.i ], [ %i.q, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ]
  %lcmp.mod157 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i.epil.init.a ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %32 = load float, ptr %31, align 4, !tbaa !11   ; 3 uses
  %33 = load <2 x float>, ptr %i.r, align 4, !tbaa !11 ; 4 uses
  %34 = fmul <2 x float> %33, %33
  %35 = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %36 = insertelement <4 x float> %35, float %32, i64 1
  %37 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = fpext <4 x float> %38 to <4 x double>
  %i.t = fadd <4 x double> %.epil.init.a, %i.s
  %39 = fmul float %32, %32
  %40 = insertelement <2 x float> %33, float %39, i64 1
  %i.u = fpext <2 x float> %40 to <2 x double>
  %i.v = fadd <2 x double> %.epil.init153, %i.u   ; 2 uses
  %41 = extractelement <2 x double> %i.v, i64 0
  %42 = extractelement <2 x double> %i.v, i64 1
  br label %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit

_ZL16calc_x_av_stddeviPA3_fPfS1_.exit:            ; preds = %.preheader.i.epil.preheader, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a, %bb.b
  %.sroa.044.1.i = phi double [ 0.000000e+00, %bb.b ], [ %30, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ], [ %41, %.preheader.i.epil.preheader ]
  %.sroa.13.1.i = phi double [ 0.000000e+00, %bb.b ], [ %29, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ], [ %42, %.preheader.i.epil.preheader ]
  %43 = phi <4 x double> [ zeroinitializer, %bb.b ], [ %i.o, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit.loopexit.unr-lcssa.a ], [ %i.t, %.preheader.i.epil.preheader ] ; 4 uses
  %i.w = sitofp i32 %6 to double
  %i.x = fdiv double 1.000000e+00, %i.w           ; 6 uses
  %i.y = fmul double %i.x, %.sroa.044.1.i         ; 3 uses
  %i.z = extractelement <4 x double> %43, i64 0
  %i.aa = fmul double %i.x, %i.z                  ; 3 uses
  %44 = extractelement <4 x double> %43, i64 1
  %45 = fmul double %i.x, %44                     ; 3 uses
  %46 = extractelement <4 x double> %43, i64 2
  %47 = fmul double %i.x, %46
  %48 = extractelement <4 x double> %43, i64 3
  %49 = fmul double %i.x, %48
  %50 = fmul double %i.x, %.sroa.13.1.i
  %51 = fptrunc double %i.y to float
  %52 = fneg double %i.y
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %i.y, double %47)
  %54 = tail call double @sqrt(double noundef %53) #5
  %i.ab = fptrunc double %54 to float
  %55 = fptrunc double %i.aa to float
  %56 = fneg double %i.aa
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %i.aa, double %49)
  %i.ac = tail call double @sqrt(double noundef %57) #5
  %i.ad = fptrunc double %i.ac to float
  %58 = fptrunc double %45 to float
  %59 = fneg double %45
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %45, double %50)
  %i.ae = tail call double @sqrt(double noundef %60) #5
  %i.af = fptrunc double %i.ae to float
  br label %bb.c

bb.c:                                             ; preds = %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit, %bb.a
  %.sroa.8102.0 = phi float [ %58, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.5100.0 = phi float [ %55, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.098.0 = phi float [ %51, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.8.0 = phi float [ %i.af, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.5.0 = phi float [ %i.ad, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi float [ %i.ab, %_ZL16calc_x_av_stddeviPA3_fPfS1_.exit ], [ undef, %bb.a ] ; 4 uses
  %i.ag = icmp eq ptr %3, null
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aj = icmp ne ptr %2, null                    ; 2 uses
  %i.ak = icmp ne ptr %4, null
  %or.cond = and i1 %i.aj, %i.ak                  ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.am = icmp ne ptr %5, null
  %or.cond3 = and i1 %i.aj, %i.am                 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %.not = icmp eq ptr %4, null                    ; 9 uses
  %.not75 = icmp eq ptr %5, null                  ; 6 uses
  %i.ao = icmp sgt i32 %0, 0                      ; 3 uses
  br i1 %i.ag, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  br i1 %i.ao, label %bb.aw, label %bb.az

.split.us:                                        ; preds = %bb.c
  br i1 %or.cond3, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  br i1 %i.ao, label %bb.ac, label %bb.aa

.split.us.split.us.preheader:                     ; preds = %.split.us
  br i1 %i.ao, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.split.us.split.us.preheader
  %i.ap = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float -2.000000e+00, float %.sroa.098.0)
  store float %i.ap, ptr %8, align 4, !tbaa !11
  %i.aq = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float 2.000000e+00, float %.sroa.098.0)
  store float %i.aq, ptr %9, align 4, !tbaa !11
  %.pre = load i32, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.ar = icmp sgt i32 %.pre, 0
  %or.cond131 = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %or.cond131, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load float, ptr %4, align 4, !tbaa !11
  store float %i.as, ptr %8, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = load i32, ptr %i.an, align 4, !tbaa !13
  %i.au = add nsw i32 %i.at, -1
  %i.av = icmp slt i32 %.pre, %i.au
  br i1 %i.av, label %.sink.split, label %bb.j

bb.g:                                             ; preds = %.split.us.split.us.preheader
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load float, ptr %4, align 4, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi float [ %i.aw, %bb.h ], [ 0.000000e+00, %bb.g ]
  store float %i.ax, ptr %8, align 4, !tbaa !11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.i
  %i.ay = load float, ptr %5, align 4, !tbaa !11
  store float %i.ay, ptr %9, align 4, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  %i.az = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us.us = icmp eq ptr %i.az, null
  br i1 %.not76.us.us, label %.split.us.split.us.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load float, ptr %8, align 4, !tbaa !11
  %i.bb = fpext float %i.ba to double
  %i.bc = load float, ptr %9, align 4, !tbaa !11
  %i.bd = fpext float %i.bc to double
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.az, ptr noundef nonnull @.str, i32 noundef 0, double noundef %i.bb, double noundef %i.bd) #5 ; 0 uses
  br label %.split.us.split.us.1

.split.us.split.us.1:                             ; preds = %bb.k, %bb.j
  %i.bf = icmp sgt i32 %0, 1
  br i1 %i.bf, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.split.us.split.us.1
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float -2.000000e+00, float %.sroa.5100.0)
  store float %i.bi, ptr %i.bg, align 4, !tbaa !11
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float 2.000000e+00, float %.sroa.5100.0)
  store float %i.bj, ptr %i.bh, align 4, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  %or.cond132 = select i1 %or.cond, i1 %i.bm, i1 false
  br i1 %or.cond132, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11
  store float %i.bo, ptr %i.bg, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = icmp slt i32 %i.bl, %i.br
  br i1 %i.bs, label %bb.n, label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  store float %i.bu, ptr %i.bh, align 4, !tbaa !11
  br label %bb.r

bb.o:                                             ; preds = %.split.us.split.us.1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = phi float [ %i.bw, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.bx, ptr %i.by, align 4, !tbaa !11
  %.in.us.us.1 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bz = load float, ptr %.in.us.us.1, align 4, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %._crit_edge
  %i.cb = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us.us.1 = icmp eq ptr %i.cb, null
  br i1 %.not76.us.us.1, label %.split.us.split.us.2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = fpext float %i.cd to double
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ch = fpext float %i.cg to double
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str, i32 noundef 1, double noundef %i.ce, double noundef %i.ch) #5 ; 0 uses
  br label %.split.us.split.us.2

.split.us.split.us.2:                             ; preds = %bb.s, %bb.r
  %i.cj = icmp sgt i32 %0, 2
  br i1 %i.cj, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.split.us.split.us.2
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float -2.000000e+00, float %.sroa.8102.0)
  store float %i.cm, ptr %i.ck, align 4, !tbaa !11
  %i.cn = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float 2.000000e+00, float %.sroa.8102.0)
  store float %i.cn, ptr %i.cl, align 4, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %or.cond133 = select i1 %or.cond, i1 %i.cq, i1 false
  br i1 %or.cond133, label %bb.u, label %._crit_edge105

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  store float %i.cs, ptr %i.ck, align 4, !tbaa !11
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.t, %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = add nsw i32 %i.cu, -1
  %i.cw = icmp slt i32 %i.cp, %i.cv
  br i1 %i.cw, label %bb.v, label %bb.z

bb.v:                                             ; preds = %._crit_edge105
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !11
  store float %i.cy, ptr %i.cl, align 4, !tbaa !11
  br label %bb.z

bb.w:                                             ; preds = %.split.us.split.us.2
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.db = phi float [ %i.da, %bb.x ], [ 0.000000e+00, %bb.w ]
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.db, ptr %i.dc, align 4, !tbaa !11
  %.in.us.us.2 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = load float, ptr %.in.us.us.2, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.dd, ptr %i.de, align 4, !tbaa !11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %._crit_edge105
  %i.df = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us.us.2 = icmp eq ptr %i.df, null
  br i1 %.not76.us.us.2, label %.split84.us, label %.split84.us.sink.split

bb.aa:                                            ; preds = %.split.us.split.preheader
  %i.dg = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float -2.000000e+00, float %.sroa.098.0)
  store float %i.dg, ptr %8, align 4, !tbaa !11
  %i.dh = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float 2.000000e+00, float %.sroa.098.0)
  store float %i.dh, ptr %9, align 4, !tbaa !11
  br i1 %or.cond, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.di = load i32, ptr %i.al, align 4, !tbaa !13
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.sink.split134, label %bb.af

bb.ac:                                            ; preds = %.split.us.split.preheader
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load float, ptr %4, align 4, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dl = phi float [ %i.dk, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  store float %i.dl, ptr %8, align 4, !tbaa !11
  %.in.v.us = select i1 %.not75, ptr %1, ptr %5
  br label %.sink.split134

.sink.split134:                                   ; preds = %bb.ab, %bb.ae
  %.sink136 = phi ptr [ %.in.v.us, %bb.ae ], [ %4, %bb.ab ]
  %.sink135 = phi ptr [ %9, %bb.ae ], [ %8, %bb.ab ]
  %i.dm = load float, ptr %.sink136, align 4, !tbaa !11
  store float %i.dm, ptr %.sink135, align 4, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %.sink.split134, %bb.aa, %bb.ab
  %i.dn = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us = icmp eq ptr %i.dn, null
  br i1 %.not76.us, label %.split.us.split.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = load float, ptr %8, align 4, !tbaa !11
  %i.dp = fpext float %i.do to double
  %i.dq = load float, ptr %9, align 4, !tbaa !11
  %i.dr = fpext float %i.dq to double
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dn, ptr noundef nonnull @.str, i32 noundef 0, double noundef %i.dp, double noundef %i.dr) #5 ; 0 uses
  br label %.split.us.split.1

.split.us.split.1:                                ; preds = %bb.ag, %bb.af
  %i.dt = icmp sgt i32 %0, 1
  br i1 %i.dt, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.split.us.split.1
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dw = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float -2.000000e+00, float %.sroa.5100.0)
  store float %i.dw, ptr %i.du, align 4, !tbaa !11
  %i.dx = tail call float @llvm.fmuladd.f32(float %.sroa.5.0, float 2.000000e+00, float %.sroa.5100.0)
  store float %i.dx, ptr %i.dv, align 4, !tbaa !11
  br i1 %or.cond, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !13
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11
  store float %i.ec, ptr %i.du, align 4, !tbaa !11
  br label %bb.an

bb.ak:                                            ; preds = %.split.us.split.1
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ef = phi float [ %i.ee, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ef, ptr %i.eg, align 4, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.in.v.us.1 = select i1 %.not75, ptr %i.eh, ptr %5
  %.in.us.1 = getelementptr inbounds nuw i8, ptr %.in.v.us.1, i64 4
  %i.ei = load float, ptr %.in.us.1, align 4, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ei, ptr %i.ej, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %bb.ai, %bb.ah
  %i.ek = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us.1 = icmp eq ptr %i.ek, null
  br i1 %.not76.us.1, label %.split.us.split.2, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !11
  %i.en = fpext float %i.em to double
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !11
  %i.eq = fpext float %i.ep to double
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ek, ptr noundef nonnull @.str, i32 noundef 1, double noundef %i.en, double noundef %i.eq) #5 ; 0 uses
  br label %.split.us.split.2

.split.us.split.2:                                ; preds = %bb.ao, %bb.an
  %i.es = icmp sgt i32 %0, 2
  br i1 %i.es, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.split.us.split.2
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ev = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float -2.000000e+00, float %.sroa.8102.0)
  store float %i.ev, ptr %i.et, align 4, !tbaa !11
  %i.ew = tail call float @llvm.fmuladd.f32(float %.sroa.8.0, float 2.000000e+00, float %.sroa.8102.0)
  store float %i.ew, ptr %i.eu, align 4, !tbaa !11
  br i1 %or.cond, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !13
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !11
  store float %i.fb, ptr %i.et, align 4, !tbaa !11
  br label %bb.av

bb.as:                                            ; preds = %.split.us.split.2
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !11
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fe = phi float [ %i.fd, %bb.at ], [ 0.000000e+00, %bb.as ]
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.fe, ptr %i.ff, align 4, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.in.v.us.2 = select i1 %.not75, ptr %i.fg, ptr %5
  %.in.us.2 = getelementptr inbounds nuw i8, ptr %.in.v.us.2, i64 8
  %i.fh = load float, ptr %.in.us.2, align 4, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.fh, ptr %i.fi, align 4, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar, %bb.aq, %bb.ap
  %i.fj = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.us.2 = icmp eq ptr %i.fj, null
  br i1 %.not76.us.2, label %.split84.us, label %.split84.us.sink.split

bb.aw:                                            ; preds = %.split.preheader
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = load float, ptr %4, align 4, !tbaa !11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.fl = phi float [ %i.fk, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  store float %i.fl, ptr %8, align 4, !tbaa !11
  %.in.v = select i1 %.not75, ptr %1, ptr %5
  br label %.sink.split137

bb.az:                                            ; preds = %.split.preheader
  %i.fm = load float, ptr %i.ah, align 4, !tbaa !11
  %i.fn = load float, ptr %i.ai, align 4, !tbaa !11
  %i.fo = fpext float %i.fm to double
  %i.fp = fpext float %i.fn to double             ; 2 uses
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 5.000000e-01, double %i.fo)
  %i.fr = fptrunc double %i.fq to float           ; 2 uses
  %i.fs = fmul double %i.fp, 5.000000e-01
  %i.ft = fdiv double %i.fs, f0x3FFBB67AE0000000
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float -2.000000e+00, float %i.fr)
  store float %i.fv, ptr %8, align 4, !tbaa !11
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fu, float 2.000000e+00, float %i.fr)
  store float %i.fw, ptr %9, align 4, !tbaa !11
  br i1 %or.cond, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fx = load i32, ptr %i.al, align 4, !tbaa !13
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fz = load float, ptr %4, align 4, !tbaa !11
  store float %i.fz, ptr %8, align 4, !tbaa !11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  br i1 %or.cond3, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ga = load i32, ptr %i.al, align 4, !tbaa !13
  %i.gb = load i32, ptr %i.an, align 4, !tbaa !13
  %i.gc = add nsw i32 %i.gb, -1
  %i.gd = icmp slt i32 %i.ga, %i.gc
  br i1 %i.gd, label %.sink.split137, label %bb.be

.sink.split137:                                   ; preds = %bb.bd, %bb.ay
  %.sink138 = phi ptr [ %.in.v, %bb.ay ], [ %5, %bb.bd ]
  %i.ge = load float, ptr %.sink138, align 4, !tbaa !11
  store float %i.ge, ptr %9, align 4, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %.sink.split137, %bb.bc, %bb.bd
  %i.gf = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76 = icmp eq ptr %i.gf, null
  br i1 %.not76, label %.split.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gg = load float, ptr %8, align 4, !tbaa !11
  %i.gh = fpext float %i.gg to double
  %i.gi = load float, ptr %9, align 4, !tbaa !11
  %i.gj = fpext float %i.gi to double
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str, i32 noundef 0, double noundef %i.gh, double noundef %i.gj) #5 ; 0 uses
  br label %.split.1

.split.1:                                         ; preds = %bb.be, %bb.bf
  %i.gl = icmp sgt i32 %0, 1
  br i1 %i.gl, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %.split.1
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gp = load float, ptr %i.go, align 4, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.gs = fpext float %i.gn to double
  %i.gt = fpext float %i.gp to double             ; 2 uses
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gt, double 5.000000e-01, double %i.gs)
  %i.gv = fptrunc double %i.gu to float           ; 2 uses
  %i.gw = fmul double %i.gt, 5.000000e-01
  %i.gx = fdiv double %i.gw, f0x3FFBB67AE0000000
  %i.gy = fptrunc double %i.gx to float           ; 2 uses
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gy, float -2.000000e+00, float %i.gv)
  store float %i.gz, ptr %i.gq, align 4, !tbaa !11
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gy, float 2.000000e+00, float %i.gv)
  store float %i.ha, ptr %i.gr, align 4, !tbaa !11
  br i1 %or.cond, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !11
  store float %i.hf, ptr %i.gq, align 4, !tbaa !11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  br i1 %or.cond3, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !13
  %i.hk = add nsw i32 %i.hj, -1
  %i.hl = icmp slt i32 %i.hh, %i.hk
  br i1 %i.hl, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !11
  store float %i.hn, ptr %i.gr, align 4, !tbaa !11
  br label %bb.bp

bb.bm:                                            ; preds = %.split.1
  br i1 %.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !11
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hq = phi float [ %i.hp, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.hq, ptr %i.hr, align 4, !tbaa !11
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.in.v.1 = select i1 %.not75, ptr %i.hs, ptr %5
  %.in.1 = getelementptr inbounds nuw i8, ptr %.in.v.1, i64 4
  %i.ht = load float, ptr %.in.1, align 4, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ht, ptr %i.hu, align 4, !tbaa !11
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl, %bb.bk, %bb.bj
  %i.hv = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.1 = icmp eq ptr %i.hv, null
  br i1 %.not76.1, label %.split.2, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !11
  %i.hy = fpext float %i.hx to double
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !11
  %i.ib = fpext float %i.ia to double
  %i.ic = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str, i32 noundef 1, double noundef %i.hy, double noundef %i.ib) #5 ; 0 uses
  br label %.split.2

.split.2:                                         ; preds = %bb.bq, %bb.bp
  %i.id = icmp sgt i32 %0, 2
  br i1 %i.id, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %.split.2
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.if = load float, ptr %i.ie, align 4, !tbaa !11
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ik = fpext float %i.if to double
  %i.il = fpext float %i.ih to double             ; 2 uses
  %i.im = tail call double @llvm.fmuladd.f64(double %i.il, double 5.000000e-01, double %i.ik)
  %i.in = fptrunc double %i.im to float           ; 2 uses
  %i.io = fmul double %i.il, 5.000000e-01
  %i.ip = fdiv double %i.io, f0x3FFBB67AE0000000
  %i.iq = fptrunc double %i.ip to float           ; 2 uses
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.iq, float -2.000000e+00, float %i.in)
  store float %i.ir, ptr %i.ii, align 4, !tbaa !11
  %i.is = tail call float @llvm.fmuladd.f32(float %i.iq, float 2.000000e+00, float %i.in)
  store float %i.is, ptr %i.ij, align 4, !tbaa !11
  br i1 %or.cond, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !13
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !11
  store float %i.ix, ptr %i.ii, align 4, !tbaa !11
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  br i1 %or.cond3, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !13
  %i.jc = add nsw i32 %i.jb, -1
  %i.jd = icmp slt i32 %i.iz, %i.jc
  br i1 %i.jd, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jf = load float, ptr %i.je, align 4, !tbaa !11
  store float %i.jf, ptr %i.ij, align 4, !tbaa !11
  br label %bb.ca

bb.bx:                                            ; preds = %.split.2
  br i1 %.not, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ji = phi float [ %i.jh, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.ji, ptr %i.jj, align 4, !tbaa !11
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.in.v.2 = select i1 %.not75, ptr %i.jk, ptr %5
  %.in.2 = getelementptr inbounds nuw i8, ptr %.in.v.2, i64 8
  %i.jl = load float, ptr %.in.2, align 4, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jl, ptr %i.jm, align 4, !tbaa !11
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bv, %bb.bu
  %i.jn = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not76.2 = icmp eq ptr %i.jn, null
  br i1 %.not76.2, label %.split84.us, label %.split84.us.sink.split

.split84.us.sink.split:                           ; preds = %bb.ca, %bb.av, %bb.z
  %.sink = phi ptr [ %i.fj, %bb.av ], [ %i.df, %bb.z ], [ %i.jn, %bb.ca ]
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !11
  %i.jq = fpext float %i.jp to double
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !11
  %i.jt = fpext float %i.js to double
  %i.ju = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.sink, ptr noundef nonnull @.str, i32 noundef 2, double noundef %i.jq, double noundef %i.jt) #5 ; 0 uses
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
!9 = distinct !{!9, !12}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!16 = !{!15, !15, i64 0}
end_hunk_0
