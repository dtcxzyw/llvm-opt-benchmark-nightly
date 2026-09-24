Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/fft?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z20gmx_fft_transpose_2dP9t_complexS0_ii:bb.a
  %i.ap = mul nuw nsw i64 %indvars.iv288.prol, %i.ah
  %gep317.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.ap ; 2 uses
  %i.aq = load <2 x float>, ptr %gep315.prol, align 4, !tbaa !20
  %i.ar = load <2 x float>, ptr %gep317.prol, align 4, !tbaa !20
  store <2 x float> %i.ar, ptr %gep315.prol, align 4, !tbaa !20
  store <2 x float> %i.aq, ptr %gep317.prol, align 4, !tbaa !20
  %indvars.iv.next289.prol = add nuw nsw i64 %indvars.iv288.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter344
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph265
  %indvars.iv288.unr = phi i64 [ %indvars.iv286, %.lr.ph265 ], [ %indvars.iv.next289.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %i.ak, 3
  br i1 %i.as, label %.loopexit, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.prol.loopexit, %.lr.ph265.new
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.3, %.lr.ph265.new ], [ %indvars.iv288.unr, %.prol.loopexit ] ; 6 uses
  %gep315 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv288 ; 2 uses
  %i.at = mul nuw nsw i64 %indvars.iv288, %i.ah
  %gep317 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.at ; 2 uses
  %i.au = load <2 x float>, ptr %gep315, align 4, !tbaa !20
  %i.av = load <2 x float>, ptr %gep317, align 4, !tbaa !20
  store <2 x float> %i.av, ptr %gep315, align 4, !tbaa !20
  store <2 x float> %i.au, ptr %gep317, align 4, !tbaa !20
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %gep315.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289 ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.next289, %i.ah
  %gep317.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.aw ; 2 uses
  %i.ax = load <2 x float>, ptr %gep315.1, align 4, !tbaa !20
  %i.ay = load <2 x float>, ptr %gep317.1, align 4, !tbaa !20
  store <2 x float> %i.ay, ptr %gep315.1, align 4, !tbaa !20
  store <2 x float> %i.ax, ptr %gep317.1, align 4, !tbaa !20
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %gep315.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289.1 ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv.next289.1, %i.ah
  %gep317.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.az ; 2 uses
  %i.ba = load <2 x float>, ptr %gep315.2, align 4, !tbaa !20
  %i.bb = load <2 x float>, ptr %gep317.2, align 4, !tbaa !20
  store <2 x float> %i.bb, ptr %gep315.2, align 4, !tbaa !20
  store <2 x float> %i.ba, ptr %gep317.2, align 4, !tbaa !20
  %indvars.iv.next289.2 = add nuw nsw i64 %indvars.iv288, 3 ; 2 uses
  %gep315.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289.2 ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv.next289.2, %i.ah
  %gep317.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.bc ; 2 uses
  %i.bd = load <2 x float>, ptr %gep315.3, align 4, !tbaa !20
  %i.be = load <2 x float>, ptr %gep317.3, align 4, !tbaa !20
  store <2 x float> %i.be, ptr %gep315.3, align 4, !tbaa !20
  store <2 x float> %i.bd, ptr %gep317.3, align 4, !tbaa !20
  %indvars.iv.next289.3 = add nuw nsw i64 %indvars.iv288, 4 ; 2 uses
  %exitcond292.not.3 = icmp eq i64 %indvars.iv.next289.3, %i.ah
  br i1 %exitcond292.not.3, label %.loopexit, label %.lr.ph265.new, !llvm.loop !14

bb.g:                                             ; preds = %.preheader253.preheader
  %i.bf = add nsw i32 %2, -1
  %i.bg = add nsw i32 %3, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.3212 = phi i32 [ %i.bf, %bb.g ], [ %.2208, %bb.h ]
  %.2208 = phi i32 [ %i.bg, %bb.g ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bh = urem i32 %.3212, %.2208                 ; 2 uses
  %.not226 = icmp eq i32 %i.bh, 0
  br i1 %.not226, label %bb.i, label %bb.h, !llvm.loop !15

bb.i:                                             ; preds = %bb.h
  %i.bi = add nuw nsw i32 %.2208, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader253.preheader
  %.0199 = phi i32 [ %i.bi, %bb.i ], [ 2, %.preheader253.preheader ]
  %i.bj = mul nuw nsw i32 %3, %2                  ; 3 uses
  %i.bk = add nsw i32 %i.bj, -1                   ; 5 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = insertelement <2 x i32> <i32 1, i32 poison>, i32 %2, i64 1 ; 2 uses
  %i.bn = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bk, i64 1 ; 2 uses
  br label %.loopexit269

.loopexit269.loopexit:                            ; preds = %.split, %.loopexit307
  br label %.loopexit269

.loopexit269:                                     ; preds = %.loopexit269.loopexit, %bb.j
  %.4 = phi i32 [ 1, %bb.j ], [ %i.dk, %.loopexit269.loopexit ] ; 4 uses
  %.0202 = phi i32 [ %3, %bb.j ], [ %spec.select, %.loopexit269.loopexit ]
  %.1200 = phi i32 [ %.0199, %bb.j ], [ %i.co, %.loopexit269.loopexit ]
  %i.bp = sub nsw i32 %i.bk, %.4                  ; 3 uses
  %i.bq = sext i32 %.4 to i64                     ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = sext i32 %i.bp to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bx = load <2 x float>, ptr %i.br, align 4, !tbaa !20 ; 2 uses
  %i.by = load float, ptr %i.bv, align 4, !tbaa !26
  %i.bz = load <2 x float>, ptr %i.bu, align 4, !tbaa !20 ; 2 uses
  %i.ca = extractelement <2 x float> %i.bx, i64 0
  %i.cb = extractelement <2 x float> %i.bz, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.loopexit269
  %.2201 = phi i32 [ %.1200, %.loopexit269 ], [ %i.co, %bb.q ]
  %.0193 = phi i32 [ %.4, %.loopexit269 ], [ %i.cg, %bb.q ] ; 5 uses
  %.0192 = phi i32 [ %i.bp, %.loopexit269 ], [ %i.ch, %bb.q ] ; 4 uses
  %i.cc = insertelement <2 x i32> poison, i32 %.0193, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ce = sdiv <2 x i32> %i.cd, %i.bm
  %i.cf = mul nsw <2 x i32> %i.ce, %i.bo          ; 2 uses
  %shift = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.cf, %shift
  %i.cg = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 5 uses
  %i.ch = sub nsw i32 %i.bk, %i.cg                ; 2 uses
  %i.ci = icmp slt i32 %.0193, 500
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = sext i32 %.0193 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cj
  store i8 1, ptr %i.ck, align 1, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cl = icmp slt i32 %.0192, 500
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = sext i32 %.0192 to i64
  %i.cn = getelementptr inbounds i8, ptr %i.a, i64 %i.cm
  store i8 1, ptr %i.cn, align 1, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = add nuw nsw i32 %.2201, 2               ; 3 uses
  %i.cp = icmp eq i32 %i.cg, %.4
  br i1 %i.cp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp eq i32 %i.cg, %i.bp
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = sext i32 %i.cg to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = sext i32 %.0193 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load <2 x float>, ptr %i.cs, align 4, !tbaa !20
  store <2 x float> %i.cv, ptr %i.cu, align 4, !tbaa !20
  %i.cw = sext i32 %i.ch to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw
  %i.cy = sext i32 %.0192 to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cy
  %i.da = load <2 x float>, ptr %i.cx, align 4, !tbaa !20
  store <2 x float> %i.da, ptr %i.cz, align 4, !tbaa !20
  br label %bb.k

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.8.1.ph = phi float [ %i.by, %bb.p ], [ %i.bw, %bb.o ]
  %.sroa.033.1.ph = phi float [ %i.cb, %bb.p ], [ %i.ca, %bb.o ]
  %i.db = phi <2 x float> [ %i.bx, %bb.p ], [ %i.bz, %bb.o ]
  %i.dc = sext i32 %.0193 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc ; 2 uses
  store float %.sroa.033.1.ph, ptr %i.dd, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %.sroa.8.1.ph, ptr %i.de, align 4, !tbaa !26
  %i.df = sext i32 %.0192 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.df
  store <2 x float> %i.db, ptr %i.dg, align 4, !tbaa !20
  %.not227 = icmp slt i32 %i.co, %i.bj
  br i1 %.not227, label %.critedge, label %.thread247

.critedge:                                        ; preds = %bb.r, %.critedge.backedge
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.critedge.backedge ], [ %i.bq, %bb.r ] ; 3 uses
  %.1203 = phi i32 [ %spec.select, %.critedge.backedge ], [ %.0202, %bb.r ]
  %i.dh = sub nsw i64 %i.bl, %indvars.iv283       ; 2 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1 ; 6 uses
  %i.di = add nsw i32 %.1203, %3                  ; 2 uses
  %.not228 = icmp slt i32 %i.di, %i.bj
  %i.dj = select i1 %.not228, i32 0, i32 %i.bk
  %spec.select = sub nsw i32 %i.di, %i.dj         ; 6 uses
  %i.dk = trunc nsw i64 %indvars.iv.next284 to i32 ; 2 uses
  %.not229 = icmp eq i32 %spec.select, %i.dk
  br i1 %.not229, label %.critedge.backedge, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.dl = icmp sgt i64 %indvars.iv283, 498
  br i1 %i.dl, label %.preheader251, label %.split

.preheader251:                                    ; preds = %bb.s
  %i.dm = sext i32 %spec.select to i64            ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next284, %i.dm
  %i.do = icmp sgt i64 %i.dh, %i.dm
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %.lr.ph, label %.loopexit307

.lr.ph:                                           ; preds = %.preheader251, %.lr.ph
  %.0261 = phi i32 [ %i.du, %.lr.ph ], [ %spec.select, %.preheader251 ]
  %i.dq = insertelement <2 x i32> poison, i32 %.0261, i64 0
  %i.dr = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ds = sdiv <2 x i32> %i.dr, %i.bm
  %i.dt = mul nuw nsw <2 x i32> %i.ds, %i.bo      ; 2 uses
  %shift336 = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop337 = sub nsw <2 x i32> %i.dt, %shift336
  %i.du = extractelement <2 x i32> %foldExtExtBinop337, i64 0 ; 3 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = icmp slt i64 %indvars.iv.next284, %i.dv
  %i.dx = icmp sgt i64 %i.dh, %i.dv
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph, label %.loopexit307, !llvm.loop !16

.split:                                           ; preds = %bb.s
  %i.dz = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next284
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !24
  %.not230 = icmp eq i8 %i.ea, 0
  br i1 %.not230, label %.loopexit269.loopexit, label %.critedge.backedge, !llvm.loop !17

.loopexit307:                                     ; preds = %.lr.ph, %.preheader251
  %.0.lcssa = phi i32 [ %spec.select, %.preheader251 ], [ %i.du, %.lr.ph ]
  %i.eb = zext i32 %.0.lcssa to i64
  %i.ec = icmp eq i64 %indvars.iv.next284, %i.eb
  br i1 %i.ec, label %.loopexit269.loopexit, label %.critedge.backedge, !llvm.loop !17

.critedge.backedge:                               ; preds = %.split, %.loopexit307, %.critedge
  br label %.critedge, !llvm.loop !18

.thread247:                                       ; preds = %._crit_edge, %bb.r, %.loopexit, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !21, !22}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !21}
!17 = distinct !{!17, !21}
!18 = distinct !{!18, !21}
!19 = !{!"float", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!5, !5, i64 0}
!25 = !{!"_ZTS9t_complex", !19, i64 0, !19, i64 4}
!26 = !{!25, !19, i64 4}
!27 = !{!25, !19, i64 0}
end_hunk_0
