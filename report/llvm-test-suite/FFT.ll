inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local double @FFT_num_flops(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i32 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %.0810.i = phi i32 [ %i.b, %.lr.ph.i ], [ 1, %bb.a ]
  %i.b = shl nsw i32 %.0810.i, 1                  ; 2 uses
  %i.c = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %i.d = icmp slt i32 %i.b, %0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %i.e = shl nuw i32 1, %.0.lcssa.i
  %.not.i = icmp eq i32 %0, %i.e
  br i1 %.not.i, label %int_log2.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) ; 0 uses
  tail call void @exit(i32 noundef 1) #7
  unreachable

int_log2.exit:                                    ; preds = %._crit_edge.i
  %i.g = sitofp i32 %0 to double                  ; 2 uses
  %i.h = sitofp i32 %.0.lcssa.i to double
  %i.i = tail call double @llvm.fmuladd.f64(double %i.g, double 5.000000e+00, double -2.000000e+00)
  %i.j = fadd nnan double %i.g, 1.000000e+00
  %i.k = fmul nnan double %i.j, 2.000000e+00
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double %i.k)
  ret double %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @FFT_bitreverse(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 2 uses
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = add nsw i32 %i.a, -1
  %wide.trip.count = zext i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.03437 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %bb.d ] ; 3 uses
  %i.c = sext i32 %.03437 to i64
  %i.d = icmp slt i64 %indvars.iv, %i.c
  br i1 %i.d, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph
  %i.e = shl i32 %.03437, 1
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = load <2 x double>, ptr %i.f, align 8, !tbaa !10
  %i.j = load <2 x double>, ptr %i.h, align 8, !tbaa !10
  store <2 x double> %i.j, ptr %i.f, align 8, !tbaa !10
  store <2 x double> %i.i, ptr %i.h, align 8, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ %.03437, %.preheader ] ; 3 uses
  %.0.in = phi i32 [ %.0, %bb.c ], [ %i.a, %.preheader ]
  %.0 = lshr i32 %.0.in, 1                        ; 4 uses
  %.not = icmp sgt i32 %.0, %.1
  %i.k = sub nsw i32 %.1, %.0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.0, %.1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @FFT_transform(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @FFT_transform_internal(i32 noundef %0, ptr noundef %1, i32 noundef -1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @FFT_transform_internal(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 6 uses
  %i.b = and i32 %0, -2
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 3                       ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.011.i = phi i32 [ %i.f, %.lr.ph.i ], [ 0, %bb.b ]
  %.0810.i = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %bb.b ]
  %i.e = shl nsw i32 %.0810.i, 1                  ; 2 uses
  %i.f = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.a
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.f, %.lr.ph.i ] ; 7 uses
  %i.h = shl nuw i32 1, %.0.lcssa.i
  %.not.i = icmp eq i32 %i.a, %i.h
  br i1 %.not.i, label %int_log2.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.a) ; 0 uses
  tail call void @exit(i32 noundef 1) #7
  unreachable

int_log2.exit:                                    ; preds = %._crit_edge.i
  %i.j = icmp eq i32 %0, 0
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %int_log2.exit
  br i1 %i.d, label %.lr.ph.preheader.i, label %FFT_bitreverse.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %smax.i = add nsw i32 %i.a, -1
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.03437.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.t, %bb.g ] ; 3 uses
  %i.k = sext i32 %.03437.i to i64
  %i.l = icmp slt i64 %indvars.iv.i, %i.k
  br i1 %i.l, label %bb.e, label %.preheader140

bb.e:                                             ; preds = %.lr.ph.i102
  %i.m = shl i32 %.03437.i, 1
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = load <2 x double>, ptr %i.n, align 8, !tbaa !10
  %i.r = load <2 x double>, ptr %i.p, align 8, !tbaa !10
  store <2 x double> %i.r, ptr %i.n, align 8, !tbaa !10
  store <2 x double> %i.q, ptr %i.p, align 8, !tbaa !10
  br label %.preheader140

.preheader140:                                    ; preds = %bb.e, %.lr.ph.i102
  br label %bb.f

bb.f:                                             ; preds = %.preheader140, %bb.f
  %.1.i = phi i32 [ %i.s, %bb.f ], [ %.03437.i, %.preheader140 ] ; 3 uses
  %.0.in.i = phi i32 [ %.0.i, %bb.f ], [ %i.a, %.preheader140 ]
  %.0.i = lshr i32 %.0.in.i, 1                    ; 4 uses
  %.not.i103 = icmp sgt i32 %.0.i, %.1.i
  %i.s = sub nsw i32 %.1.i, %.0.i
  br i1 %.not.i103, label %bb.g, label %bb.f, !llvm.loop !12

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %.0.i, %.1.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FFT_bitreverse.exit, label %.lr.ph.i102, !llvm.loop !13

FFT_bitreverse.exit:                              ; preds = %bb.g, %bb.d
  %i.u = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.u, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %FFT_bitreverse.exit
  %i.v = sitofp i32 %2 to double
  %i.w = fmul nnan double %i.v, 2.000000e+00
  %i.x = fmul nnan double %i.w, f0x400921FB54442D18 ; 4 uses
  %i.y = icmp sgt i32 %0, 1
  br i1 %i.y, label %.lr.ph114.split.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph114
  %xtraiter = and i32 %.0.lcssa.i, 1
  %i.z = icmp eq i32 %.0.lcssa.i, 1
  br i1 %i.z, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %.0.lcssa.i, 2147483646
  br label %.preheader

.lr.ph114.split.us.preheader:                     ; preds = %.lr.ph114
  %i.aa = zext nneg i32 %i.a to i64               ; 2 uses
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge111.us, %.lr.ph114.split.us.preheader
  %.0113.us = phi i32 [ %i.bo, %._crit_edge111.us ], [ 0, %.lr.ph114.split.us.preheader ]
  %.094112.us = phi i32 [ %i.ab, %._crit_edge111.us ], [ 1, %.lr.ph114.split.us.preheader ] ; 5 uses
  %i.ab = shl nuw i32 %.094112.us, 1              ; 4 uses
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = fdiv double %i.x, %i.ac                 ; 2 uses
  %i.ae = tail call double @sin(double noundef %i.ad) #8, !tbaa !4 ; 2 uses
  %i.af = fmul double %i.ad, 5.000000e-01
  %i.ag = tail call double @sin(double noundef %i.af) #8, !tbaa !4 ; 2 uses
  %i.ah = fmul double %i.ag, 2.000000e+00
  %i.ai = sext i32 %i.ab to i64
  %i.aj = sext i32 %.094112.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %i.ak = add nsw i64 %indvars.iv, %i.aj
  %.idx = shl nsw i64 %i.ak, 4
  %i.al = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.idx134 = shl nsw i64 %indvars.iv, 4
  %i.am = getelementptr inbounds i8, ptr %1, i64 %.idx134 ; 2 uses
  %i.an = load <2 x double>, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ap = fsub <2 x double> %i.ao, %i.an
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !10
  %i.aq = fadd <2 x double> %i.an, %i.ao
  store <2 x double> %i.aq, ptr %i.am, align 8, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ar, label %.lr.ph.us, label %.preheader.us, !llvm.loop !14

.lr.ph106.us:                                     ; preds = %.lr.ph110.us, %._crit_edge.us
  %indvars.iv127 = phi i64 [ 1, %.lr.ph110.us ], [ %indvars.iv.next128, %._crit_edge.us ] ; 2 uses
  %i.as = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph110.us ], [ %i.av, %._crit_edge.us ] ; 3 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.at, <2 x double> %i.as)
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.as, <2 x double> %i.au) ; 3 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph106.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %bb.h ], [ 0, %.lr.ph106.us ] ; 2 uses
  %i.ay = add nsw i64 %indvars.iv124, %indvars.iv127 ; 2 uses
  %i.az = add nsw i64 %i.ay, %i.bu
  %.idx135 = shl nsw i64 %i.az, 4
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %.idx135 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.idx136 = shl nsw i64 %i.ay, 4
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx136 ; 2 uses
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !10
  %i.be = load <2 x double>, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bf = fneg double %i.bd
  %i.bg = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 0
  %i.bi = fmul <2 x double> %i.aw, %i.bh
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.be, <2 x double> %i.bi) ; 2 uses
  %i.bk = load <2 x double>, ptr %i.bc, align 8, !tbaa !10 ; 2 uses
  %i.bl = fsub <2 x double> %i.bk, %i.bj
  store <2 x double> %i.bl, ptr %i.ba, align 8, !tbaa !10
  %i.bm = fadd <2 x double> %i.bk, %i.bj
  store <2 x double> %i.bm, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, %i.bt ; 2 uses
  %i.bn = icmp slt i64 %indvars.iv.next125, %i.aa
  br i1 %i.bn, label %bb.h, label %._crit_edge.us, !llvm.loop !15

._crit_edge111.us:                                ; preds = %._crit_edge.us, %.preheader.us
  %i.bo = add nuw nsw i32 %.0113.us, 1            ; 2 uses
  %exitcond131.not = icmp eq i32 %i.bo, %.0.lcssa.i
  br i1 %exitcond131.not, label %.loopexit, label %.lr.ph.us.preheader, !llvm.loop !16

.preheader.us:                                    ; preds = %.lr.ph.us
  %i.bp = icmp samesign ugt i32 %.094112.us, 1
  br i1 %i.bp, label %.lr.ph110.us, label %._crit_edge111.us

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %._crit_edge111.us, label %.lr.ph106.us, !llvm.loop !17

.lr.ph110.us:                                     ; preds = %.preheader.us
  %i.bq = fneg double %i.ae
  %i.br = fneg double %i.ag
  %i.bs = fmul double %i.ah, %i.br
  %i.bt = sext i32 %i.ab to i64
  %i.bu = sext i32 %.094112.us to i64
  %wide.trip.count = zext i32 %.094112.us to i64
  %i.bv = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bq, i64 1
  br label %.lr.ph106.us

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.094112 = phi i32 [ 1, %.preheader.preheader.new ], [ %i.cf, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bz = shl nuw i32 %.094112, 1
  %i.ca = uitofp i32 %i.bz to double
  %i.cb = fdiv double %i.x, %i.ca                 ; 2 uses
  %i.cc = tail call double @sin(double noundef %i.cb) #8, !tbaa !4 ; 0 uses
  %i.cd = fmul double %i.cb, 5.000000e-01
  %i.ce = tail call double @sin(double noundef %i.cd) #8, !tbaa !4 ; 0 uses
  %i.cf = shl nuw i32 %.094112, 2                 ; 3 uses
  %i.cg = uitofp i32 %i.cf to double
  %i.ch = fdiv double %i.x, %i.cg                 ; 2 uses
  %i.ci = tail call double @sin(double noundef %i.ch) #8, !tbaa !4 ; 0 uses
  %i.cj = fmul double %i.ch, 5.000000e-01
  %i.ck = tail call double @sin(double noundef %i.cj) #8, !tbaa !4 ; 0 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit139.unr-lcssa, label %.preheader, !llvm.loop !16

.loopexit.loopexit139.unr-lcssa:                  ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit139.unr-lcssa, %.preheader.preheader
  %.094112.epil.init = phi i32 [ 1, %.preheader.preheader ], [ %i.cf, %.loopexit.loopexit139.unr-lcssa ]
  %lcmp.mod141 = trunc i32 %.0.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.cl = shl nuw i32 %.094112.epil.init, 1
  %i.cm = uitofp i32 %i.cl to double
  %i.cn = fdiv double %i.x, %i.cm                 ; 2 uses
  %i.co = tail call double @sin(double noundef %i.cn) #8, !tbaa !4 ; 0 uses
  %i.cp = fmul double %i.cn, 5.000000e-01
  %i.cq = tail call double @sin(double noundef %i.cp) #8, !tbaa !4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit139.unr-lcssa, %._crit_edge111.us, %FFT_bitreverse.exit, %int_log2.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @FFT_inverse(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %0, 2
  tail call fastcc void @FFT_transform_internal(i32 noundef %0, ptr noundef %1, i32 noundef 1)
  %i.b = sitofp i32 %i.a to double
  %i.c = fdiv nnan double 1.000000e+00, %i.b      ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %wide.load11 = load <2 x double>, ptr %i.f, align 8, !tbaa !10
  %i.g = fmul <2 x double> %broadcast.splat, %wide.load
  %i.h = fmul <2 x double> %broadcast.splat, %wide.load11
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !10
  store <2 x double> %i.h, ptr %i.f, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = fmul double %i.c, %i.k
  store double %i.l, ptr %i.j, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !9, !20, !19}
end_hunk_0
