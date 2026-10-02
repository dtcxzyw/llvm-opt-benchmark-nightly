Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_incopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgemm_incopy:bb.a
  %i.kz = icmp sgt i64 %.2488, 4
  br i1 %i.kz, label %.preheader511, label %.loopexit512, !llvm.loop !12

.loopexit512:                                     ; preds = %.preheader511.prol.loopexit, %.preheader511, %bb.h
  %.5475 = phi ptr [ %.2482, %bb.h ], [ %.lcssa689.unr, %.preheader511.prol.loopexit ], [ %i.kt, %.preheader511 ]
  %.5467 = phi ptr [ %i.hy, %bb.h ], [ %.lcssa688.unr, %.preheader511.prol.loopexit ], [ %i.ku, %.preheader511 ]
  %.5461 = phi ptr [ %i.hz, %bb.h ], [ %.lcssa687.unr, %.preheader511.prol.loopexit ], [ %i.kv, %.preheader511 ]
  %.5455 = phi ptr [ %i.ia, %bb.h ], [ %.lcssa686.unr, %.preheader511.prol.loopexit ], [ %i.kw, %.preheader511 ]
  %.9 = phi ptr [ %.7, %bb.h ], [ %.lcssa685.unr, %.preheader511.prol.loopexit ], [ %i.kx, %.preheader511 ] ; 6 uses
  %i.la = and i64 %0, 1
  %.not503 = icmp eq i64 %i.la, 0
  br i1 %.not503, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit512
  %i.lb = load double, ptr %.5475, align 8, !tbaa !21
  %i.lc = load double, ptr %.5467, align 8, !tbaa !21
  %i.ld = load double, ptr %.5461, align 8, !tbaa !21
  %i.le = load double, ptr %.5455, align 8, !tbaa !21
  store double %i.lb, ptr %.9, align 8, !tbaa !21
  %i.lf = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store double %i.lc, ptr %i.lf, align 8, !tbaa !21
  %i.lg = getelementptr inbounds nuw i8, ptr %.9, i64 16
  store double %i.ld, ptr %i.lg, align 8, !tbaa !21
  %i.lh = getelementptr inbounds nuw i8, ptr %.9, i64 24
  store double %i.le, ptr %i.lh, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %.9, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.loopexit512, %bb.i, %bb.g
  %.3483 = phi ptr [ %i.ib, %bb.i ], [ %i.ib, %.loopexit512 ], [ %.2482, %bb.g ] ; 6 uses
  %.10 = phi ptr [ %i.li, %bb.i ], [ %.9, %.loopexit512 ], [ %.7, %bb.g ] ; 4 uses
  %i.lj = and i64 %1, 2
  %.not504 = icmp eq i64 %i.lj, 0
  br i1 %.not504, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lk = getelementptr inbounds [8 x i8], ptr %.3483, i64 %3 ; 3 uses
  %.idx505 = shl nsw i64 %3, 4
  %i.ll = getelementptr inbounds i8, ptr %.3483, i64 %.idx505 ; 2 uses
  %i.lm = ashr i64 %0, 1                          ; 5 uses
  %i.ln = icmp sgt i64 %i.lm, 0
  br i1 %i.ln, label %.preheader509.preheader, label %.loopexit510

.preheader509.preheader:                          ; preds = %bb.k
  %xtraiter717 = and i64 %i.lm, 7                 ; 2 uses
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %.preheader509.prol.loopexit, label %.preheader509.prol

.preheader509.prol:                               ; preds = %.preheader509.preheader, %.preheader509.prol
  %.3489.prol = phi i64 [ %i.lu, %.preheader509.prol ], [ %i.lm, %.preheader509.preheader ]
  %.6476.prol = phi ptr [ %i.lr, %.preheader509.prol ], [ %.3483, %.preheader509.preheader ] ; 2 uses
  %.6468.prol = phi ptr [ %i.ls, %.preheader509.prol ], [ %i.lk, %.preheader509.preheader ] ; 2 uses
  %.11.prol = phi ptr [ %i.lt, %.preheader509.prol ], [ %.10, %.preheader509.preheader ] ; 2 uses
  %prol.iter719 = phi i64 [ %prol.iter719.next, %.preheader509.prol ], [ 0, %.preheader509.preheader ]
  %i.lo = load <2 x double>, ptr %.6476.prol, align 8, !tbaa !21
  %i.lp = load <2 x double>, ptr %.6468.prol, align 8, !tbaa !21
  %i.lq = shufflevector <2 x double> %i.lo, <2 x double> %i.lp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.lq, ptr %.11.prol, align 8, !tbaa !21
  %i.lr = getelementptr inbounds nuw i8, ptr %.6476.prol, i64 16 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.6468.prol, i64 16 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.11.prol, i64 32 ; 3 uses
  %i.lu = add nsw i64 %.3489.prol, -1             ; 2 uses
  %prol.iter719.next = add i64 %prol.iter719, 1   ; 2 uses
  %prol.iter719.cmp.not = icmp eq i64 %prol.iter719.next, %xtraiter717
  br i1 %prol.iter719.cmp.not, label %.preheader509.prol.loopexit, label %.preheader509.prol, !llvm.loop !13

.preheader509.prol.loopexit:                      ; preds = %.preheader509.prol, %.preheader509.preheader
  %.3489.unr = phi i64 [ %i.lm, %.preheader509.preheader ], [ %i.lu, %.preheader509.prol ]
  %.6476.unr = phi ptr [ %.3483, %.preheader509.preheader ], [ %i.lr, %.preheader509.prol ]
  %.6468.unr = phi ptr [ %i.lk, %.preheader509.preheader ], [ %i.ls, %.preheader509.prol ]
  %.11.unr = phi ptr [ %.10, %.preheader509.preheader ], [ %i.lt, %.preheader509.prol ]
  %.lcssa684.unr = phi ptr [ poison, %.preheader509.preheader ], [ %i.lr, %.preheader509.prol ]
  %.lcssa683.unr = phi ptr [ poison, %.preheader509.preheader ], [ %i.ls, %.preheader509.prol ]
  %.lcssa682.unr = phi ptr [ poison, %.preheader509.preheader ], [ %i.lt, %.preheader509.prol ]
  %i.lv = icmp ult i64 %i.lm, 8
  br i1 %i.lv, label %.loopexit510, label %.preheader509

.preheader509:                                    ; preds = %.preheader509.prol.loopexit, %.preheader509
  %.3489 = phi i64 [ %i.ns, %.preheader509 ], [ %.3489.unr, %.preheader509.prol.loopexit ] ; 2 uses
  %.6476 = phi ptr [ %i.np, %.preheader509 ], [ %.6476.unr, %.preheader509.prol.loopexit ] ; 9 uses
  %.6468 = phi ptr [ %i.nq, %.preheader509 ], [ %.6468.unr, %.preheader509.prol.loopexit ] ; 9 uses
  %.11 = phi ptr [ %i.nr, %.preheader509 ], [ %.11.unr, %.preheader509.prol.loopexit ] ; 9 uses
  %i.lw = load <2 x double>, ptr %.6476, align 8, !tbaa !21
  %i.lx = load <2 x double>, ptr %.6468, align 8, !tbaa !21
  %i.ly = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ly, ptr %.11, align 8, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.6476, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %.6468, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %.11, i64 32
  %i.mc = load <2 x double>, ptr %i.lz, align 8, !tbaa !21
  %i.md = load <2 x double>, ptr %i.ma, align 8, !tbaa !21
  %i.me = shufflevector <2 x double> %i.mc, <2 x double> %i.md, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.me, ptr %i.mb, align 8, !tbaa !21
  %i.mf = getelementptr inbounds nuw i8, ptr %.6476, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %.6468, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %.11, i64 64
  %i.mi = load <2 x double>, ptr %i.mf, align 8, !tbaa !21
  %i.mj = load <2 x double>, ptr %i.mg, align 8, !tbaa !21
  %i.mk = shufflevector <2 x double> %i.mi, <2 x double> %i.mj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.mk, ptr %i.mh, align 8, !tbaa !21
  %i.ml = getelementptr inbounds nuw i8, ptr %.6476, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %.6468, i64 48
  %i.mn = getelementptr inbounds nuw i8, ptr %.11, i64 96
  %i.mo = load <2 x double>, ptr %i.ml, align 8, !tbaa !21
  %i.mp = load <2 x double>, ptr %i.mm, align 8, !tbaa !21
  %i.mq = shufflevector <2 x double> %i.mo, <2 x double> %i.mp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.mq, ptr %i.mn, align 8, !tbaa !21
  %i.mr = getelementptr inbounds nuw i8, ptr %.6476, i64 64
  %i.ms = getelementptr inbounds nuw i8, ptr %.6468, i64 64
  %i.mt = getelementptr inbounds nuw i8, ptr %.11, i64 128
  %i.mu = load <2 x double>, ptr %i.mr, align 8, !tbaa !21
  %i.mv = load <2 x double>, ptr %i.ms, align 8, !tbaa !21
  %i.mw = shufflevector <2 x double> %i.mu, <2 x double> %i.mv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.mw, ptr %i.mt, align 8, !tbaa !21
  %i.mx = getelementptr inbounds nuw i8, ptr %.6476, i64 80
  %i.my = getelementptr inbounds nuw i8, ptr %.6468, i64 80
  %i.mz = getelementptr inbounds nuw i8, ptr %.11, i64 160
  %i.na = load <2 x double>, ptr %i.mx, align 8, !tbaa !21
  %i.nb = load <2 x double>, ptr %i.my, align 8, !tbaa !21
  %i.nc = shufflevector <2 x double> %i.na, <2 x double> %i.nb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.nc, ptr %i.mz, align 8, !tbaa !21
  %i.nd = getelementptr inbounds nuw i8, ptr %.6476, i64 96
  %i.ne = getelementptr inbounds nuw i8, ptr %.6468, i64 96
  %i.nf = getelementptr inbounds nuw i8, ptr %.11, i64 192
  %i.ng = load <2 x double>, ptr %i.nd, align 8, !tbaa !21
  %i.nh = load <2 x double>, ptr %i.ne, align 8, !tbaa !21
  %i.ni = shufflevector <2 x double> %i.ng, <2 x double> %i.nh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ni, ptr %i.nf, align 8, !tbaa !21
  %i.nj = getelementptr inbounds nuw i8, ptr %.6476, i64 112
  %i.nk = getelementptr inbounds nuw i8, ptr %.6468, i64 112
  %i.nl = getelementptr inbounds nuw i8, ptr %.11, i64 224
  %i.nm = load <2 x double>, ptr %i.nj, align 8, !tbaa !21
  %i.nn = load <2 x double>, ptr %i.nk, align 8, !tbaa !21
  %i.no = shufflevector <2 x double> %i.nm, <2 x double> %i.nn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.no, ptr %i.nl, align 8, !tbaa !21
  %i.np = getelementptr inbounds nuw i8, ptr %.6476, i64 128 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.6468, i64 128 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.11, i64 256 ; 2 uses
  %i.ns = add nsw i64 %.3489, -8
  %i.nt = icmp sgt i64 %.3489, 8
  br i1 %i.nt, label %.preheader509, label %.loopexit510, !llvm.loop !14

.loopexit510:                                     ; preds = %.preheader509.prol.loopexit, %.preheader509, %bb.k
  %.7477 = phi ptr [ %.3483, %bb.k ], [ %.lcssa684.unr, %.preheader509.prol.loopexit ], [ %i.np, %.preheader509 ]
  %.7469 = phi ptr [ %i.lk, %bb.k ], [ %.lcssa683.unr, %.preheader509.prol.loopexit ], [ %i.nq, %.preheader509 ]
  %.12 = phi ptr [ %.10, %bb.k ], [ %.lcssa682.unr, %.preheader509.prol.loopexit ], [ %i.nr, %.preheader509 ] ; 4 uses
  %i.nu = and i64 %0, 1
  %.not506 = icmp eq i64 %i.nu, 0
  br i1 %.not506, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit510
  %i.nv = load double, ptr %.7477, align 8, !tbaa !21
  %i.nw = load double, ptr %.7469, align 8, !tbaa !21
  store double %i.nv, ptr %.12, align 8, !tbaa !21
  %i.nx = getelementptr inbounds nuw i8, ptr %.12, i64 8
  store double %i.nw, ptr %i.nx, align 8, !tbaa !21
  %i.ny = getelementptr inbounds nuw i8, ptr %.12, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.loopexit510, %bb.l, %bb.j
  %.4484 = phi ptr [ %i.ll, %bb.l ], [ %i.ll, %.loopexit510 ], [ %.3483, %bb.j ] ; 8 uses
  %.13 = phi ptr [ %i.ny, %bb.l ], [ %.12, %.loopexit510 ], [ %.10, %bb.j ] ; 8 uses
  %i.nz = and i64 %1, 1
  %.not507 = icmp eq i64 %i.nz, 0
  br i1 %.not507, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.oa = ashr i64 %0, 1                          ; 8 uses
  %i.ob = icmp sgt i64 %i.oa, 0
  br i1 %i.ob, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.n
  %min.iters.check = icmp ult i64 %i.oa, 8
  br i1 %min.iters.check, label %.preheader.preheader680, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.oc = shl i64 %i.oa, 4                        ; 2 uses
  %i.od = getelementptr i8, ptr %.13, i64 %i.oc
  %i.oe = getelementptr i8, ptr %.4484, i64 %i.oc
  %bound0 = icmp ult ptr %.13, %i.oe
  %bound1 = icmp ult ptr %.4484, %i.od
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader680, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oa, 9223372036854775800     ; 3 uses
  %i.of = and i64 %i.oa, 7
  %i.og = shl i64 %n.vec, 4                       ; 2 uses
  %i.oh = getelementptr i8, ptr %.4484, i64 %i.og ; 2 uses
  %i.oi = getelementptr i8, ptr %.13, i64 %i.og   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oj = shl i64 %index, 4                       ; 3 uses
  %i.ok = or disjoint i64 %i.oj, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %.4484, i64 %i.oj
  %next.gep670 = getelementptr i8, ptr %.4484, i64 %i.ok
  %next.gep671 = getelementptr i8, ptr %.13, i64 %i.oj
  %next.gep672 = getelementptr i8, ptr %.13, i64 %i.ok
  %wide.vec = load <8 x double>, ptr %next.gep, align 8, !tbaa !21, !alias.scope !24
  %wide.vec674 = load <8 x double>, ptr %next.gep670, align 8, !tbaa !21, !alias.scope !24
  store <8 x double> %wide.vec, ptr %next.gep671, align 8, !tbaa !21, !alias.scope !25, !noalias !24
  store <8 x double> %wide.vec674, ptr %next.gep672, align 8, !tbaa !21, !alias.scope !25, !noalias !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader680

.preheader.preheader680:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.4490.ph = phi i64 [ %i.oa, %vector.memcheck ], [ %i.oa, %.preheader.preheader ], [ %i.of, %middle.block ]
  %.8478.ph = phi ptr [ %.4484, %vector.memcheck ], [ %.4484, %.preheader.preheader ], [ %i.oh, %middle.block ]
  %.14.ph = phi ptr [ %.13, %vector.memcheck ], [ %.13, %.preheader.preheader ], [ %i.oi, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader680, %.preheader
  %.4490 = phi i64 [ %i.op, %.preheader ], [ %.4490.ph, %.preheader.preheader680 ] ; 2 uses
  %.8478 = phi ptr [ %i.on, %.preheader ], [ %.8478.ph, %.preheader.preheader680 ] ; 2 uses
  %.14 = phi ptr [ %i.oo, %.preheader ], [ %.14.ph, %.preheader.preheader680 ] ; 2 uses
  %i.om = load <2 x double>, ptr %.8478, align 8, !tbaa !21
  store <2 x double> %i.om, ptr %.14, align 8, !tbaa !21
  %i.on = getelementptr inbounds nuw i8, ptr %.8478, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.14, i64 16 ; 2 uses
  %i.op = add nsw i64 %.4490, -1
  %i.oq = icmp samesign ugt i64 %.4490, 1
  br i1 %i.oq, label %.preheader, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.n
  %.9479 = phi ptr [ %.4484, %bb.n ], [ %i.oh, %middle.block ], [ %i.on, %.preheader ]
  %.15 = phi ptr [ %.13, %bb.n ], [ %i.oi, %middle.block ], [ %i.oo, %.preheader ]
  %i.or = and i64 %0, 1
  %.not508 = icmp eq i64 %i.or, 0
  br i1 %.not508, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.os = load double, ptr %.9479, align 8, !tbaa !21
  store double %i.os, ptr %.15, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o, %bb.m
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !22}
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !22}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !22}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !22}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !22, !26, !27}
!19 = distinct !{!19, !22, !26}
!20 = !{!"double", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!16}
!25 = !{!17}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
