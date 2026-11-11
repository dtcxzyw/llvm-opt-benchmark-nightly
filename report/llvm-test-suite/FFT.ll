Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FFT?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FFT_transform_internal:bb.a
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.a, i32 2)
  %smax.i = add nsw i32 %i.k, -1
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.03437.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.u, %bb.g ] ; 3 uses
  %i.l = sext i32 %.03437.i to i64
  %i.m = icmp slt i64 %indvars.iv.i, %i.l
  br i1 %i.m, label %bb.e, label %.preheader140

bb.e:                                             ; preds = %.lr.ph.i102
  %i.n = shl i32 %.03437.i, 1
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = load <2 x double>, ptr %i.o, align 8, !tbaa !14
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !14
  store <2 x double> %i.s, ptr %i.o, align 8, !tbaa !14
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !14
  br label %.preheader140

.preheader140:                                    ; preds = %bb.e, %.lr.ph.i102
  br label %bb.f

bb.f:                                             ; preds = %.preheader140, %bb.f
  %.1.i = phi i32 [ %i.t, %bb.f ], [ %.03437.i, %.preheader140 ] ; 3 uses
  %.0.in.i = phi i32 [ %.0.i, %bb.f ], [ %i.a, %.preheader140 ]
  %.0.i = lshr i32 %.0.in.i, 1                    ; 4 uses
  %.not.i103 = icmp sgt i32 %.0.i, %.1.i
  %i.t = sub nsw i32 %.1.i, %.0.i
  br i1 %.not.i103, label %bb.g, label %bb.f, !llvm.loop !1

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %.0.i, %.1.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FFT_bitreverse.exit, label %.lr.ph.i102, !llvm.loop !2

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
  %.0113.us = phi i32 [ %i.bp, %._crit_edge111.us ], [ 0, %.lr.ph114.split.us.preheader ]
  %.094112.us = phi i32 [ %i.ac, %._crit_edge111.us ], [ 1, %.lr.ph114.split.us.preheader ] ; 5 uses
  %i.ac = shl nuw i32 %.094112.us, 1              ; 4 uses
  %i.ad = uitofp i32 %i.ac to double
  %i.ae = fdiv double %i.y, %i.ad                 ; 2 uses
  %i.af = tail call double @sin(double noundef %i.ae) #8, !tbaa !10 ; 2 uses
  %i.ag = fmul double %i.ae, 5.000000e-01
  %i.ah = tail call double @sin(double noundef %i.ag) #8, !tbaa !10 ; 2 uses
  %i.ai = fmul double %i.ah, 2.000000e+00
  %i.aj = sext i32 %i.ac to i64
  %i.ak = sext i32 %.094112.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %i.al = add nsw i64 %indvars.iv, %i.ak
  %.idx = shl nsw i64 %i.al, 4
  %i.am = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.idx134 = shl nsw i64 %indvars.iv, 4
  %i.an = getelementptr inbounds i8, ptr %1, i64 %.idx134 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.aq = fsub <2 x double> %i.ap, %i.ao
  store <2 x double> %i.aq, ptr %i.am, align 8, !tbaa !14
  %i.ar = fadd <2 x double> %i.ao, %i.ap
  store <2 x double> %i.ar, ptr %i.an, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aj ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.as, label %.lr.ph.us, label %.preheader.us, !llvm.loop !18

.lr.ph106.us:                                     ; preds = %.lr.ph110.us, %._crit_edge.us
  %indvars.iv127 = phi i64 [ 1, %.lr.ph110.us ], [ %indvars.iv.next128, %._crit_edge.us ] ; 2 uses
  %i.at = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph110.us ], [ %i.aw, %._crit_edge.us ] ; 3 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.au, <2 x double> %i.at)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.at, <2 x double> %i.av) ; 3 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph106.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %bb.h ], [ 0, %.lr.ph106.us ] ; 2 uses
  %i.az = add nsw i64 %indvars.iv124, %indvars.iv127 ; 2 uses
  %i.ba = add nsw i64 %i.az, %i.bv
  %.idx135 = shl nsw i64 %i.ba, 4
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %.idx135 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.idx136 = shl nsw i64 %i.az, 4
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %.idx136 ; 2 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !14
  %i.bf = load <2 x double>, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bg = fneg double %i.be
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 0
  %i.bj = fmul <2 x double> %i.ay, %i.bi
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bf, <2 x double> %i.bj) ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bd, align 8, !tbaa !14 ; 2 uses
  %i.bm = fsub <2 x double> %i.bl, %i.bk
  store <2 x double> %i.bm, ptr %i.bb, align 8, !tbaa !14
  %i.bn = fadd <2 x double> %i.bl, %i.bk
  store <2 x double> %i.bn, ptr %i.bd, align 8, !tbaa !14
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, %i.bu ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next125, %i.ab
  br i1 %i.bo, label %bb.h, label %._crit_edge.us, !llvm.loop !19

._crit_edge111.us:                                ; preds = %._crit_edge.us, %.preheader.us
  %i.bp = add nuw nsw i32 %.0113.us, 1            ; 2 uses
  %exitcond131.not = icmp eq i32 %i.bp, %.0.lcssa.i
  br i1 %exitcond131.not, label %.loopexit, label %.lr.ph.us.preheader, !llvm.loop !20

.preheader.us:                                    ; preds = %.lr.ph.us
  %i.bq = icmp samesign ugt i32 %.094112.us, 1
  br i1 %i.bq, label %.lr.ph110.us, label %._crit_edge111.us

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %._crit_edge111.us, label %.lr.ph106.us, !llvm.loop !21

.lr.ph110.us:                                     ; preds = %.preheader.us
  %i.br = fneg double %i.af
  %i.bs = fneg double %i.ah
  %i.bt = fmul double %i.ai, %i.bs
  %i.bu = sext i32 %i.ac to i64
  %i.bv = sext i32 %.094112.us to i64
  %wide.trip.count = zext i32 %.094112.us to i64
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.af, i64 1
  br label %.lr.ph106.us

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.094112 = phi i32 [ 1, %.preheader.preheader.new ], [ %i.cg, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.ca = shl nuw i32 %.094112, 1
  %i.cb = uitofp i32 %i.ca to double
  %i.cc = fdiv double %i.y, %i.cb                 ; 2 uses
  %i.cd = tail call double @sin(double noundef %i.cc) #8, !tbaa !10 ; 0 uses
  %i.ce = fmul double %i.cc, 5.000000e-01
  %i.cf = tail call double @sin(double noundef %i.ce) #8, !tbaa !10 ; 0 uses
  %i.cg = shl nuw i32 %.094112, 2                 ; 3 uses
  %i.ch = uitofp i32 %i.cg to double
  %i.ci = fdiv double %i.y, %i.ch                 ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #8, !tbaa !10 ; 0 uses
  %i.ck = fmul double %i.ci, 5.000000e-01
  %i.cl = tail call double @sin(double noundef %i.ck) #8, !tbaa !10 ; 0 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit139.unr-lcssa, label %.preheader, !llvm.loop !20

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
  %i.cp = tail call double @sin(double noundef %i.co) #8, !tbaa !10 ; 0 uses
  %i.cq = fmul double %i.co, 5.000000e-01
  %i.cr = tail call double @sin(double noundef %i.cq) #8, !tbaa !10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit139.unr-lcssa, %._crit_edge111.us, %FFT_bitreverse.exit, %int_log2.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @FFT_inverse(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !25 {
bb.a:
  %2 = lshr i32 %0, 1
  tail call fastcc void @FFT_transform_internal(i32 noundef %0, ptr noundef %1, i32 noundef 1)
  %3 = uitofp nneg i32 %2 to double
  %i.a = fdiv nnan double 1.000000e+00, %3        ; 2 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %wide.load11 = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.e = fmul <2 x double> %broadcast.splat, %wide.load
  %i.f = fmul <2 x double> %broadcast.splat, %wide.load11
  store <2 x double> %i.e, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.f, ptr %i.d, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = fmul double %i.a, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

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
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

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

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 -1849713370975338060}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"double", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 8903626123071227078}
!16 = !{i64 -1473550251680662088}
!17 = !{i64 -4471380210583340041}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{i64 -7493699400156577635}
!23 = distinct !{!23, !12, !26, !27}
!24 = distinct !{!24, !12, !27, !26}
!25 = !{i64 5519326133284565978}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
