Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/stream_encoder_intrin_avx2?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FLAC__precompute_partition_info_sums_intrin_avx2:bb.a
  %i.bm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bl, i1 false)
  %i.bn = zext <4 x i32> %i.bm to <4 x i64>
  %i.bo = add <4 x i64> %.0102119, %i.bn          ; 2 uses
  %i.bp = add nsw i32 %.5118, 4                   ; 3 uses
  %i.bq = icmp slt i32 %i.bp, %i.bh
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %.preheader116
  %.5.lcssa = phi i32 [ %.4134, %.preheader116 ], [ %i.bp, %.lr.ph ] ; 3 uses
  %.0102.lcssa = phi <4 x i64> [ zeroinitializer, %.preheader116 ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.br = shufflevector <4 x i64> %.0102.lcssa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.bs = shufflevector <4 x i64> %.0102.lcssa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bt = add <2 x i64> %i.br, %i.bs              ; 2 uses
  %i.bu = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bv = icmp slt i32 %.5.lcssa, %i.bu
  br i1 %i.bv, label %.lr.ph124, label %.preheader115

.preheader115:                                    ; preds = %.lr.ph124, %._crit_edge
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge ], [ %i.cm, %.lr.ph124 ] ; 3 uses
  %.0100.lcssa = phi <2 x i64> [ %i.bt, %._crit_edge ], [ %i.cl, %.lr.ph124 ] ; 3 uses
  %i.bw = icmp ult i32 %.6.lcssa, %i.bg
  br i1 %i.bw, label %.lr.ph129.preheader, label %._crit_edge130

.lr.ph129.preheader:                              ; preds = %.preheader115
  %i.bx = zext i32 %.6.lcssa to i64               ; 5 uses
  %i.by = sub nsw i64 %i.bf, %i.bx
  %xtraiter = and i64 %i.by, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol

.lr.ph129.prol:                                   ; preds = %.lr.ph129.preheader
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !20
  %.scalar207.prol = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 false)
  %i.cb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207.prol, i64 0
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = add <2 x i64> %.0100.lcssa, %i.cc       ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %i.bx, 1
  br label %.lr.ph129.prol.loopexit

.lr.ph129.prol.loopexit:                          ; preds = %.lr.ph129.prol, %.lr.ph129.preheader
  %.lcssa256.unr = phi <2 x i64> [ poison, %.lr.ph129.preheader ], [ %i.cd, %.lr.ph129.prol ]
  %indvars.iv.unr = phi i64 [ %i.bx, %.lr.ph129.preheader ], [ %indvars.iv.next.prol, %.lr.ph129.prol ]
  %.1101128.unr = phi <2 x i64> [ %.0100.lcssa, %.lr.ph129.preheader ], [ %i.cd, %.lr.ph129.prol ]
  %i.ce = add nsw i64 %i.bf, -1
  %i.cf = icmp eq i64 %i.ce, %i.bx
  br i1 %i.cf, label %._crit_edge130, label %.lr.ph129

.lr.ph124:                                        ; preds = %._crit_edge, %.lr.ph124
  %.0100122 = phi <2 x i64> [ %i.cl, %.lr.ph124 ], [ %i.bt, %._crit_edge ]
  %.6121 = phi i32 [ %i.cm, %.lr.ph124 ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cg = zext i32 %.6121 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load <2 x i32>, ptr %i.ch, align 1, !tbaa !18
  %i.cj = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ci, i1 false)
  %i.ck = zext <2 x i32> %i.cj to <2 x i64>
  %i.cl = add <2 x i64> %.0100122, %i.ck          ; 2 uses
  %i.cm = add nsw i32 %.6121, 2                   ; 3 uses
  %i.cn = icmp slt i32 %i.cm, %i.bu
  br i1 %i.cn, label %.lr.ph124, label %.preheader115, !llvm.loop !13

.lr.ph129:                                        ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph129 ], [ %indvars.iv.unr, %.lr.ph129.prol.loopexit ] ; 3 uses
  %.1101128 = phi <2 x i64> [ %i.cy, %.lr.ph129 ], [ %.1101128.unr, %.lr.ph129.prol.loopexit ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !20
  %.scalar207 = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 false)
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207, i64 0
  %i.cr = bitcast <4 x i32> %i.cq to <2 x i64>
  %i.cs = add <2 x i64> %.1101128, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !20
  %.scalar207.1 = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 false)
  %i.cw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207.1, i64 0
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = add <2 x i64> %i.cs, %i.cx              ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bf
  br i1 %exitcond.not.1, label %._crit_edge130, label %.lr.ph129, !llvm.loop !14

._crit_edge130:                                   ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129, %.preheader115
  %.7.lcssa = phi i32 [ %.6.lcssa, %.preheader115 ], [ %indvars.iv188, %.lr.ph129 ], [ %indvars.iv188, %.lr.ph129.prol.loopexit ]
  %.1101.lcssa = phi <2 x i64> [ %.0100.lcssa, %.preheader115 ], [ %.lcssa256.unr, %.lr.ph129.prol.loopexit ], [ %i.cy, %.lr.ph129 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv191
  %i.da = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.1101.lcssa)
  store i64 %i.da, ptr %i.cz, align 1, !tbaa !18
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %indvars.iv.next189 = add i32 %indvars.iv188, %i.b
  %exitcond194.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count204
  br i1 %exitcond194.not, label %.loopexit114, label %.preheader116, !llvm.loop !15

.loopexit114:                                     ; preds = %._crit_edge130, %._crit_edge151
  %.not.not165 = icmp sgt i32 %5, %4
  br i1 %.not.not165, label %.lr.ph171, label %._crit_edge172

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph161
  %i.db = and i32 %.097166, 2
  %lcmp.mod260.not = icmp eq i32 %i.db, 0
  br i1 %lcmp.mod260.not, label %.loopexit, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %.lr.ph171, %.loopexit.loopexit.unr-lcssa
  %.1158.epil.init = phi i32 [ %.094168, %.lr.ph171 ], [ %i.ej, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.196157.epil.init = phi i32 [ %.095167, %.lr.ph171 ], [ %i.em, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod263 = trunc i32 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.dc = zext i32 %.196157.epil.init to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !22
  %i.df = add i32 %.196157.epil.init, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dj = add i64 %i.di, %i.de
  %i.dk = add i32 %.1158.epil.init, 1
  %i.dl = zext i32 %.1158.epil.init to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dl
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !22
  %i.dn = add i32 %.196157.epil.init, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph171, %.lr.ph161.epil.preheader, %.loopexit.loopexit.unr-lcssa
  %.196.lcssa = phi i32 [ %.095167, %.lr.ph171 ], [ %i.em, %.loopexit.loopexit.unr-lcssa ], [ %i.dn, %.lr.ph161.epil.preheader ]
  %.1.lcssa = phi i32 [ %.094168, %.lr.ph171 ], [ %i.ej, %.loopexit.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph161.epil.preheader ]
  %.not.not = icmp sgt i32 %.093169, %4
  br i1 %.not.not, label %.lr.ph171, label %._crit_edge172, !llvm.loop !16

.lr.ph171:                                        ; preds = %.loopexit114, %.loopexit
  %.093169.in = phi i32 [ %.093169, %.loopexit ], [ %5, %.loopexit114 ]
  %.094168 = phi i32 [ %.1.lcssa, %.loopexit ], [ %i.c, %.loopexit114 ] ; 3 uses
  %.095167 = phi i32 [ %.196.lcssa, %.loopexit ], [ 0, %.loopexit114 ] ; 3 uses
  %.097166 = phi i32 [ %i.do, %.loopexit ], [ %i.c, %.loopexit114 ] ; 2 uses
  %.093169 = add nsw i32 %.093169.in, -1          ; 2 uses
  %i.do = lshr i32 %.097166, 1                    ; 4 uses
  switch i32 %i.do, label %.lr.ph161.preheader.new [
    i32 0, label %.loopexit
    i32 1, label %.lr.ph161.epil.preheader
  ]

.lr.ph161.preheader.new:                          ; preds = %.lr.ph171
  %unroll_iter = and i32 %i.do, 2147483646
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %.1158 = phi i32 [ %.094168, %.lr.ph161.preheader.new ], [ %i.ej, %.lr.ph161 ] ; 3 uses
  %.196157 = phi i32 [ %.095167, %.lr.ph161.preheader.new ], [ %i.em, %.lr.ph161 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph161.preheader.new ], [ %niter.next.1, %.lr.ph161 ]
  %i.dp = zext i32 %.196157 to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.ds = add i32 %.196157, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !22
  %i.dw = add i64 %i.dv, %i.dr
  %i.dx = add i32 %.1158, 1
  %i.dy = zext i32 %.1158 to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dy
  store i64 %i.dw, ptr %i.dz, align 8, !tbaa !22
  %i.ea = add i32 %.196157, 2
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !22
  %i.ee = add i32 %.196157, 3
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !22
  %i.ei = add i64 %i.eh, %i.ed
  %i.ej = add i32 %.1158, 2                       ; 3 uses
  %i.ek = zext i32 %i.dx to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ek
  store i64 %i.ei, ptr %i.el, align 8, !tbaa !22
  %i.em = add i32 %.196157, 4                     ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !17

._crit_edge172:                                   ; preds = %.loopexit, %.loopexit114
  tail call void @llvm.x86.avx.vzeroupper()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.x86.avx.vzeroupper() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !19}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !19}
!17 = distinct !{!17, !19}
!18 = !{!4, !4, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!5, !5, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
