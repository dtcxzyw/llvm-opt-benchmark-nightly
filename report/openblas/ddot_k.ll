Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/ddot_k?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define double @ddot_k(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = icmp eq i64 %2, 0
  %i.d = icmp eq i64 %4, 0
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp slt i64 %0, 10001
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %num_cpu_avail.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.b
  %i.h = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8 ; 6 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %num_cpu_avail.exit.thread, label %bb.c

num_cpu_avail.exit.thread:                        ; preds = %bb.b, %bb.a, %num_cpu_avail.exit
  %i.j = tail call fastcc double @dot_compute(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %num_cpu_avail.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = call i32 @blas_level1_thread_with_return_value(i32 noundef 3, i64 noundef %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull @dot_thread_function, i32 noundef %i.h) #8 ; 0 uses
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i32 %i.h, 7                     ; 3 uses
  %i.m = icmp ult i32 %i.h, 8
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 9 uses
  %.02629 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.n = load double, ptr %.031, align 16, !tbaa !10
  %i.o = fadd double %.02629, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.q = load double, ptr %i.p, align 16, !tbaa !10
  %i.r = fadd double %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.t = load double, ptr %i.s, align 16, !tbaa !10
  %i.u = fadd double %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.w = load double, ptr %i.v, align 16, !tbaa !10
  %i.x = fadd double %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.031, i64 64
  %i.z = load double, ptr %i.y, align 16, !tbaa !10
  %i.aa = fadd double %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.031, i64 80
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !10
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.031, i64 96
  %i.af = load double, ptr %i.ae, align 16, !tbaa !10
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.031, i64 112
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !10
  %i.aj = fadd double %i.ag, %i.ai                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.031, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.031.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.02629.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.031.epil = phi ptr [ %i.an, %.lr.ph.epil ], [ %.031.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02629.epil = phi double [ %i.am, %.lr.ph.epil ], [ %.02629.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.al = load double, ptr %.031.epil, align 16, !tbaa !10
  %i.am = fadd double %.02629.epil, %i.al         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.031.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c
  %.026.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %num_cpu_avail.exit.thread
  %.1 = phi double [ %i.j, %num_cpu_avail.exit.thread ], [ %.026.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc double @dot_compute(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 1
  %i.c = icmp eq i64 %4, 1
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %0, 9223372036854775792          ; 6 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 31
  br i1 %i.f, label %.lr.ph.preheader.i, label %.lr.ph88.i.preheader

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.g = and i64 %0, 2147483616
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 6 uses
  %.06476.i = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.ad, %.lr.ph.i ]
  %.06575.i = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.x, %.lr.ph.i ]
  %.06674.i = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i ]
  %.06773.i = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.i = load <8 x double>, ptr %i.h, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load <8 x double>, ptr %i.j, align 1, !tbaa !8
  %i.l = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.i, <8 x double> %i.k, <8 x double> %.06773.i) ; 3 uses
  %i.m = or disjoint i64 %indvars.iv.i, 8         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = load <8 x double>, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.q = load <8 x double>, ptr %i.p, align 1, !tbaa !8
  %i.r = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.o, <8 x double> %i.q, <8 x double> %.06674.i) ; 3 uses
  %i.s = or disjoint i64 %indvars.iv.i, 16        ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.u = load <8 x double>, ptr %i.t, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.s
  %i.w = load <8 x double>, ptr %i.v, align 1, !tbaa !8
  %i.x = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.u, <8 x double> %i.w, <8 x double> %.06575.i) ; 3 uses
  %i.y = or disjoint i64 %indvars.iv.i, 24        ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.aa = load <8 x double>, ptr %i.z, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.y
  %i.ac = load <8 x double>, ptr %i.ab, align 1, !tbaa !8
  %i.ad = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.aa, <8 x double> %i.ac, <8 x double> %.06476.i) ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 32 ; 4 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.g
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.af = shufflevector <8 x double> %i.l, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shufflevector <8 x double> %i.l, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = fadd <4 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = shufflevector <8 x double> %i.r, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = shufflevector <8 x double> %i.r, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ak = fadd <4 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = shufflevector <8 x double> %i.x, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = shufflevector <8 x double> %i.x, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.an = fadd <4 x double> %i.al, %i.am          ; 2 uses
  %i.ao = shufflevector <8 x double> %i.ad, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = shufflevector <8 x double> %i.ad, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aq = fadd <4 x double> %i.ao, %i.ap          ; 2 uses
  %i.ar = icmp samesign ugt i64 %i.d, %indvars.iv.next.i
  br i1 %i.ar, label %.lr.ph88.i.preheader, label %ddot_kernel_8.exit

.lr.ph88.i.preheader:                             ; preds = %bb.d, %._crit_edge.i
  %indvars.iv103.i.ph = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %._crit_edge.i ]
  %.06885.i.ph = phi <4 x double> [ zeroinitializer, %bb.d ], [ %i.aq, %._crit_edge.i ]
  %.06984.i.ph = phi <4 x double> [ zeroinitializer, %bb.d ], [ %i.an, %._crit_edge.i ]
  %.07083.i.ph = phi <4 x double> [ zeroinitializer, %bb.d ], [ %i.ak, %._crit_edge.i ]
  %.07182.i.ph = phi <4 x double> [ zeroinitializer, %bb.d ], [ %i.ah, %._crit_edge.i ]
  br label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %.lr.ph88.i ], [ %indvars.iv103.i.ph, %.lr.ph88.i.preheader ] ; 6 uses
  %.06885.i = phi <4 x double> [ %i.bo, %.lr.ph88.i ], [ %.06885.i.ph, %.lr.ph88.i.preheader ]
  %.06984.i = phi <4 x double> [ %i.bi, %.lr.ph88.i ], [ %.06984.i.ph, %.lr.ph88.i.preheader ]
  %.07083.i = phi <4 x double> [ %i.bc, %.lr.ph88.i ], [ %.07083.i.ph, %.lr.ph88.i.preheader ]
  %.07182.i = phi <4 x double> [ %i.aw, %.lr.ph88.i ], [ %.07182.i.ph, %.lr.ph88.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103.i
  %i.at = load <4 x double>, ptr %i.as, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i
  %i.av = load <4 x double>, ptr %i.au, align 1, !tbaa !8
  %i.aw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.at, <4 x double> %i.av, <4 x double> %.07182.i) ; 2 uses
  %i.ax = or disjoint i64 %indvars.iv103.i, 4     ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = load <4 x double>, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ax
  %i.bb = load <4 x double>, ptr %i.ba, align 1, !tbaa !8
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.az, <4 x double> %i.bb, <4 x double> %.07083.i) ; 2 uses
  %i.bd = or disjoint i64 %indvars.iv103.i, 8     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load <4 x double>, ptr %i.be, align 1, !tbaa !8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bd
  %i.bh = load <4 x double>, ptr %i.bg, align 1, !tbaa !8
  %i.bi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bf, <4 x double> %i.bh, <4 x double> %.06984.i) ; 2 uses
  %i.bj = or disjoint i64 %indvars.iv103.i, 12    ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bj
  %i.bl = load <4 x double>, ptr %i.bk, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj
  %i.bn = load <4 x double>, ptr %i.bm, align 1, !tbaa !8
  %i.bo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> %i.bn, <4 x double> %.06885.i) ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 16 ; 2 uses
  %i.bp = icmp samesign ugt i64 %i.d, %indvars.iv.next104.i
  br i1 %i.bp, label %.lr.ph88.i, label %ddot_kernel_8.exit, !llvm.loop !16

ddot_kernel_8.exit:                               ; preds = %.lr.ph88.i, %._crit_edge.i
  %.071.lcssa.i = phi <4 x double> [ %i.ah, %._crit_edge.i ], [ %i.aw, %.lr.ph88.i ]
  %.070.lcssa.i = phi <4 x double> [ %i.ak, %._crit_edge.i ], [ %i.bc, %.lr.ph88.i ]
  %.069.lcssa.i = phi <4 x double> [ %i.an, %._crit_edge.i ], [ %i.bi, %.lr.ph88.i ]
  %.068.lcssa.i = phi <4 x double> [ %i.aq, %._crit_edge.i ], [ %i.bo, %.lr.ph88.i ]
  %i.bq = fadd <4 x double> %.071.lcssa.i, %.070.lcssa.i
  %i.br = fadd <4 x double> %i.bq, %.069.lcssa.i
  %i.bs = fadd <4 x double> %i.br, %.068.lcssa.i  ; 2 uses
  %i.bt = shufflevector <4 x double> %i.bs, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.bu = shufflevector <4 x double> %i.bs, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.bv = fadd <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.bw = tail call <2 x double> @llvm.x86.sse3.hadd.pd(<2 x double> %i.bv, <2 x double> %i.bv)
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  br label %bb.e

bb.e:                                             ; preds = %ddot_kernel_8.exit, %bb.c
  %.081 = phi double [ 0.000000e+00, %bb.c ], [ %i.bx, %ddot_kernel_8.exit ] ; 2 uses
  %.not147 = icmp eq i64 %i.d, %0
  br i1 %.not147, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.e, %.lr.ph108
  %.067106 = phi i64 [ %i.cd, %.lr.ph108 ], [ %i.d, %bb.e ] ; 3 uses
  %.182105 = phi double [ %i.cc, %.lr.ph108 ], [ %.081, %bb.e ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.067106
  %i.bz = load double, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.067106
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !10
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double %.182105) ; 2 uses
  %i.cd = add nuw nsw i64 %.067106, 1             ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %0
  br i1 %i.ce, label %.lr.ph108, label %.loopexit, !llvm.loop !17

bb.f:                                             ; preds = %bb.b
  %i.cf = and i64 %0, 9223372036854775804         ; 2 uses
  %.not110 = icmp eq i64 %i.cf, 0
  br i1 %.not110, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.idx = shl i64 %4, 4                           ; 3 uses
  %.idx77 = shl i64 %2, 4                         ; 3 uses
  %.idx78 = mul i64 %4, 24                        ; 3 uses
  %.idx79 = mul i64 %2, 24                        ; 3 uses
  %i.cg = shl nsw i64 %2, 2                       ; 3 uses
  %i.ch = shl nsw i64 %4, 2                       ; 3 uses
  %i.ci = add nsw i64 %0, -4                      ; 2 uses
  %i.cj = lshr i64 %i.ci, 2                       ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ck, 9223372036854775806
  br label %bb.g

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %i.cm = and i64 %i.ci, 4
  %lcmp.mod.not.not = icmp eq i64 %i.cm, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.preheader.loopexit

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %.06893.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fu, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.07092.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fv, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.07291.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fz, %.preheader.loopexit.unr-lcssa ]
  %.07390.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fx, %.preheader.loopexit.unr-lcssa ]
end_hunk_0
