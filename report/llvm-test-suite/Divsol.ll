Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Divsol?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@DivideAndSolve:bb.a
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv39.i.prol
  store double %i.gg, ptr %i.gh, align 8, !tbaa !16
  %indvars.iv.next40.i.prol = add nsw i64 %indvars.iv39.i.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !55

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv39.i.unr = phi i64 [ %indvars.iv39.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next40.i.prol, %scalar.ph.prol ]
  %i.gi = sub nsw i64 %indvars.iv39.i.ph, %i.fg
  %i.gj = icmp ugt i64 %i.gi, -4
  br i1 %i.gj, label %WeirdHouse.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.3, %scalar.ph ], [ %indvars.iv39.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %indvars.iv39.i
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !16
  %i.gm = fmul double %i.fn, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv39.i
  store double %i.gm, ptr %i.gn, align 8, !tbaa !16
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %indvars.iv.next40.i
  %i.gp = load double, ptr %i.go, align 8, !tbaa !16
  %i.gq = fmul double %i.fn, %i.gp
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next40.i
  store double %i.gq, ptr %i.gr, align 8, !tbaa !16
  %indvars.iv.next40.i.1 = add nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %indvars.iv.next40.i.1
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !16
  %i.gu = fmul double %i.fn, %i.gt
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next40.i.1
  store double %i.gu, ptr %i.gv, align 8, !tbaa !16
  %indvars.iv.next40.i.2 = add nsw i64 %indvars.iv39.i, 3 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %indvars.iv.next40.i.2
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !16
  %i.gy = fmul double %i.fn, %i.gx
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next40.i.2
  store double %i.gy, ptr %i.gz, align 8, !tbaa !16
  %indvars.iv.next40.i.3 = add nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %exitcond42.not.i.3 = icmp eq i64 %indvars.iv.next40.i.3, %i.fg
  br i1 %exitcond42.not.i.3, label %WeirdHouse.exit, label %scalar.ph, !llvm.loop !56

WeirdHouse.exit:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fg
  store double 1.000000e+00, ptr %i.ha, align 8, !tbaa !16
  call void @ApplyHouse(ptr noundef nonnull %0, ptr noundef %i.e, i32 poison, i32 poison)
  %i.hb = add nsw i32 %.0112, -1                  ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hc ; 4 uses
  %i.he = add nsw i32 %i.ap, 1
  %i.hf = sext i32 %i.he to i64                   ; 3 uses
  %i.hg = load ptr, ptr %.phi.trans.insert43.i126, align 8, !tbaa !14 ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.fg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !16
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.fg
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !16
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hf
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !16
  %i.ho = fsub double %i.hl, %i.hn
  %i.hp = fmul double %i.ho, 1.000000e-10
  %i.hq = fcmp ogt double %i.hi, %i.hp
  br i1 %i.hq, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %WeirdHouse.exit
  %i.hr = sext i32 %i.al to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hr
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph110, %bb.e
  call void @printMatrix(ptr noundef nonnull %0) #7
  %i.ht = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.fg
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !16
  %i.hw = load ptr, ptr %.phi.trans.insert43.i126, align 8, !tbaa !14 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hf
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !16 ; 2 uses
  %i.hz = fsub double %i.hv, %i.hy
  %i.ia = fmul double %i.hz, 5.000000e-01         ; 4 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.fg
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !16 ; 2 uses
  %i.id = fadd double %i.hy, %i.ia
  %i.ie = call i32 @sign(double noundef %i.ia) #7
  %i.if = sitofp i32 %i.ie to double
  %i.ig = fmul double %i.ic, %i.ic
  %i.ih = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.ig)
  %sqrt = call double @llvm.sqrt.f64(double %i.ih)
  %i.ii = fneg double %i.if
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double %sqrt, double %i.id)
  %i.ik = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.fg
  %i.im = load double, ptr %i.il, align 8, !tbaa !16
  %i.in = fsub double %i.im, %i.ij
  %i.io = load ptr, ptr %.phi.trans.insert43.i126, align 8, !tbaa !14
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.fg
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !16
  call void @Givens(double noundef %i.in, double noundef %i.iq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.ir = load double, ptr %i.a, align 8, !tbaa !16
  %i.is = load double, ptr %i.b, align 8, !tbaa !16
  call void @ApplyGivens(ptr noundef nonnull %0, double noundef %i.ir, double noundef %i.is, i32 noundef %i.hb, i32 noundef %.0112, i32 noundef 0, i32 noundef 50) #7
  %i.it = load ptr, ptr %i.hs, align 8, !tbaa !14
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.fg
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !16
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.iv) ; 0 uses
  %i.ix = load ptr, ptr %.phi.trans.insert43.i126, align 8, !tbaa !14 ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.fg
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !16
  %i.ja = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.fg
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !16
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.hf
  %i.je = load double, ptr %i.jd, align 8, !tbaa !16
  %i.jf = fsub double %i.jc, %i.je
  %i.jg = fmul double %i.jf, 1.000000e-10
  %i.jh = fcmp ogt double %i.iz, %i.jg
  br i1 %i.jh, label %bb.e, label %._crit_edge111, !llvm.loop !57

._crit_edge111:                                   ; preds = %bb.e, %WeirdHouse.exit
  %i.ji = fptosi double %i.ah to i32              ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 51
  br i1 %i.jj, label %.lr.ph114, label %._crit_edge115, !llvm.loop !58

._crit_edge115:                                   ; preds = %._crit_edge111, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr undef
}

declare ptr @newIdMatrix() local_unnamed_addr #2

declare ptr @newVector() local_unnamed_addr #2

declare double @norm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @House(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @printVector(ptr noundef) local_unnamed_addr #2

declare void @printMatrix(ptr noundef) local_unnamed_addr #2

declare void @Givens(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ApplyGivens(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 -6718670647815925863}
!11 = !{i64 8423742173433156459}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 double", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !17, !18, !19}
!26 = distinct !{!26, !17, !18}
!27 = !{i64 8551859530296218468}
!28 = !{!22}
!29 = !{!23}
!30 = !{!24}
!31 = !{!23, !22}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !17, !18}
!37 = !{i64 -6057826742101431184}
!38 = !{!33}
!39 = !{!34}
!40 = !{!35}
!41 = !{!34, !33}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !17, !18, !19}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !17, !18}
!46 = !{i64 -1991659510676780733}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !17, !18}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !17, !18, !19}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !17, !18}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = !{i64 -2382236707173632810}
!60 = !{!48}
!61 = !{!49}
!62 = !{!50}
!63 = !{!49, !48}
end_hunk_0
