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
  %i.c = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %smax = add nsw i32 %i.c, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.03436 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %bb.d ] ; 3 uses
  %i.d = sext i32 %.03436 to i64
  %i.e = icmp slt i64 %indvars.iv, %i.d
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph
  %i.f = shl i32 %.03436, 1
  %.idx = shl i64 %indvars.iv, 4
  %i.g = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = load <2 x double>, ptr %i.g, align 8, !tbaa !10
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !10
  store <2 x double> %i.k, ptr %i.g, align 8, !tbaa !10
  store <2 x double> %i.j, ptr %i.i, align 8, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.035.in = phi i32 [ %.035, %bb.c ], [ %i.a, %.preheader ]
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.03436, %.preheader ] ; 3 uses
  %.035 = lshr i32 %.035.in, 1                    ; 4 uses
  %.not = icmp sgt i32 %.035, %.1
  %i.l = sub nsw i32 %.1, %.035
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.1, %.035
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
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.a, i32 2)
  %smax.i = add nsw i32 %i.k, -1
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.03436.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.u, %bb.g ] ; 3 uses
  %i.l = sext i32 %.03436.i to i64
  %i.m = icmp slt i64 %indvars.iv.i, %i.l
  br i1 %i.m, label %bb.e, label %.preheader140

bb.e:                                             ; preds = %.lr.ph.i102
  %i.n = shl i32 %.03436.i, 1
  %.idx.i = shl i64 %indvars.iv.i, 4
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = load <2 x double>, ptr %i.o, align 8, !tbaa !10
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !10
  store <2 x double> %i.s, ptr %i.o, align 8, !tbaa !10
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !10
  br label %.preheader140

.preheader140:                                    ; preds = %bb.e, %.lr.ph.i102
  br label %bb.f

bb.f:                                             ; preds = %.preheader140, %bb.f
  %.035.in.i = phi i32 [ %.035.i, %bb.f ], [ %i.a, %.preheader140 ]
  %.1.i = phi i32 [ %i.t, %bb.f ], [ %.03436.i, %.preheader140 ] ; 3 uses
  %.035.i = lshr i32 %.035.in.i, 1                ; 4 uses
  %.not.i103 = icmp sgt i32 %.035.i, %.1.i
  %i.t = sub nsw i32 %.1.i, %.035.i
  br i1 %.not.i103, label %bb.g, label %bb.f, !llvm.loop !12

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %.1.i, %.035.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FFT_bitreverse.exit, label %.lr.ph.i102, !llvm.loop !13

FFT_bitreverse.exit:                              ; preds = %bb.g, %bb.d
  %i.v = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.v, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %FFT_bitreverse.exit
  %i.w = sitofp i32 %2 to double
  %i.x = fmul nnan double %i.w, 2.000000e+00
  %i.y = fmul nnan double %i.x, f0x400921FB54442D18 ; 4 uses
  %i.z = icmp sgt i32 %0, 1
  br i1 %i.z, label %.lr.ph114.split.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph114
  %xtraiter = and i32 %.0.lcssa.i, 1
  %i.aa = icmp eq i32 %.0.lcssa.i, 1
  br i1 %i.aa, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %.0.lcssa.i, 2147483646
  br label %.preheader

.lr.ph114.split.us.preheader:                     ; preds = %.lr.ph114
  %i.ab = zext nneg i32 %i.a to i64               ; 2 uses
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge111.us, %.lr.ph114.split.us.preheader
  %.0113.us = phi i32 [ %i.al, %._crit_edge111.us ], [ 0, %.lr.ph114.split.us.preheader ]
  %.094112.us = phi i32 [ %i.ac, %._crit_edge111.us ], [ 1, %.lr.ph114.split.us.preheader ] ; 5 uses
  %i.ac = shl nuw i32 %.094112.us, 1              ; 4 uses
  %i.ad = uitofp i32 %i.ac to double
  %i.ae = fdiv double %i.y, %i.ad                 ; 2 uses
  %i.af = tail call double @sin(double noundef %i.ae) #8, !tbaa !4 ; 2 uses
  %i.ag = fmul double %i.ae, 5.000000e-01
  %i.ah = tail call double @sin(double noundef %i.ag) #8, !tbaa !4 ; 2 uses
  %i.ai = fmul double %i.ah, 2.000000e+00
  %i.aj = sext i32 %i.ac to i64
  %i.ak = sext i32 %.094112.us to i64
  br label %.lr.ph.us

._crit_edge111.us:                                ; preds = %._crit_edge.us, %.preheader.us
  %i.al = add nuw nsw i32 %.0113.us, 1            ; 2 uses
  %exitcond131.not = icmp eq i32 %i.al, %.0.lcssa.i
  br i1 %exitcond131.not, label %.loopexit, label %.lr.ph.us.preheader, !llvm.loop !14

.lr.ph106.us:                                     ; preds = %.lr.ph110.us, %._crit_edge.us
  %indvars.iv127 = phi i64 [ 1, %.lr.ph110.us ], [ %indvars.iv.next128, %._crit_edge.us ] ; 2 uses
  %i.am = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph110.us ], [ %i.ap, %._crit_edge.us ] ; 3 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.an, <2 x double> %i.am)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.am, <2 x double> %i.ao) ; 3 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph106.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %bb.h ], [ 0, %.lr.ph106.us ] ; 2 uses
  %i.as = add nsw i64 %indvars.iv124, %indvars.iv127 ; 2 uses
  %i.at = add nsw i64 %i.as, %i.bv
  %.idx135 = shl nsw i64 %i.at, 4
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.idx135 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.idx136 = shl nsw i64 %i.as, 4
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %.idx136 ; 2 uses
  %i.ax = load double, ptr %i.av, align 8, !tbaa !10
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !10 ; 2 uses
  %i.az = fneg double %i.ax
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 0
  %i.bc = fmul <2 x double> %i.aq, %i.bb
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ay, <2 x double> %i.bc) ; 2 uses
  %i.be = load <2 x double>, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %i.bf = fsub <2 x double> %i.be, %i.bd
  store <2 x double> %i.bf, ptr %i.au, align 8, !tbaa !10
  %i.bg = fadd <2 x double> %i.be, %i.bd
  store <2 x double> %i.bg, ptr %i.aw, align 8, !tbaa !10
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, %i.bu ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next125, %i.ab
  br i1 %i.bh, label %bb.h, label %._crit_edge.us, !llvm.loop !15

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %i.bi = add nsw i64 %indvars.iv, %i.ak
  %.idx = shl nsw i64 %i.bi, 4
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.idx134 = shl nsw i64 %indvars.iv, 4
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %.idx134 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !10 ; 2 uses
  %i.bn = fsub <2 x double> %i.bm, %i.bl
  store <2 x double> %i.bn, ptr %i.bj, align 8, !tbaa !10
  %i.bo = fadd <2 x double> %i.bl, %i.bm
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aj ; 2 uses
  %i.bp = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.bp, label %.lr.ph.us, label %.preheader.us, !llvm.loop !16

.preheader.us:                                    ; preds = %.lr.ph.us
  %i.bq = icmp samesign ugt i32 %.094112.us, 1
  br i1 %i.bq, label %.lr.ph110.us, label %._crit_edge111.us

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %._crit_edge111.us, label %.lr.ph106.us, !llvm.loop !17

.lr.ph110.us:                                     ; preds = %.preheader.us
  %i.br = fneg double %i.af
  %i.bs = fneg double %i.ah
  %i.bt = fmul double %i.ai, %i.bs
  %i.bu = sext i32 %i.ac to i64
  %i.bv = sext i32 %.094112.us to i64
  %wide.trip.count = zext i32 %.094112.us to i64
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.br, i64 1
  br label %.lr.ph106.us

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.094112 = phi i32 [ 1, %.preheader.preheader.new ], [ %i.cg, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.ca = shl nuw i32 %.094112, 1
  %i.cb = uitofp i32 %i.ca to double
  %i.cc = fdiv double %i.y, %i.cb                 ; 2 uses
  %i.cd = tail call double @sin(double noundef %i.cc) #8, !tbaa !4 ; 0 uses
  %i.ce = fmul double %i.cc, 5.000000e-01
  %i.cf = tail call double @sin(double noundef %i.ce) #8, !tbaa !4 ; 0 uses
  %i.cg = shl nuw i32 %.094112, 2                 ; 3 uses
  %i.ch = uitofp i32 %i.cg to double
  %i.ci = fdiv double %i.y, %i.ch                 ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #8, !tbaa !4 ; 0 uses
  %i.ck = fmul double %i.ci, 5.000000e-01
  %i.cl = tail call double @sin(double noundef %i.ck) #8, !tbaa !4 ; 0 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit139.unr-lcssa, label %.preheader, !llvm.loop !14

.loopexit.loopexit139.unr-lcssa:                  ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit139.unr-lcssa, %.preheader.preheader
  %.094112.epil.init = phi i32 [ 1, %.preheader.preheader ], [ %i.cg, %.loopexit.loopexit139.unr-lcssa ]
  %lcmp.mod141 = trunc i32 %.0.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.cm = shl nuw i32 %.094112.epil.init, 1
  %i.cn = uitofp i32 %i.cm to double
  %i.co = fdiv double %i.y, %i.cn                 ; 2 uses
  %i.cp = tail call double @sin(double noundef %i.co) #8, !tbaa !4 ; 0 uses
  %i.cq = fmul double %i.co, 5.000000e-01
  %i.cr = tail call double @sin(double noundef %i.cq) #8, !tbaa !4 ; 0 uses
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
end_hunk_0
