Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_oncopy?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@sgemm_oncopy:bb.a
.loopexit202:                                     ; preds = %bb.c, %bb.b, %.preheader201
  %.lcssa304 = phi ptr [ %i.ds, %.preheader201 ], [ %i.ee, %bb.b ], [ %i.eq, %bb.c ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.0152, i64 %.idx ; 2 uses
  %i.es = add nsw i64 %.0151, -1
  %i.et = icmp sgt i64 %.0151, 1
  br i1 %i.et, label %.preheader201, label %.loopexit206, !llvm.loop !9

.loopexit206:                                     ; preds = %.loopexit202, %.loopexit202.us, %.preheader205.split.split.us.preheader, %bb.a
  %.5178 = phi ptr [ %4, %bb.a ], [ %4, %.preheader205.split.split.us.preheader ], [ %.4177.us, %.loopexit202.us ], [ %.lcssa304, %.loopexit202 ] ; 4 uses
  %.1153 = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader205.split.split.us.preheader ], [ %i.cw, %.loopexit202.us ], [ %i.er, %.loopexit202 ] ; 6 uses
  %i.eu = and i64 %1, 2
  %.not190 = icmp eq i64 %i.eu, 0
  br i1 %.not190, label %.loopexit198, label %bb.d

bb.d:                                             ; preds = %.loopexit206
  %i.ev = getelementptr inbounds [4 x i8], ptr %.1153, i64 %3 ; 3 uses
  %.idx191 = shl nsw i64 %3, 3
  %i.ew = getelementptr inbounds i8, ptr %.1153, i64 %.idx191 ; 4 uses
  %i.ex = ashr i64 %0, 2                          ; 5 uses
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.preheader199.preheader, label %.loopexit200

.preheader199.preheader:                          ; preds = %bb.d
  %xtraiter306 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.preheader199.prol.loopexit, label %.preheader199.prol

.preheader199.prol:                               ; preds = %.preheader199.preheader, %.preheader199.prol
  %.6179.prol = phi ptr [ %i.fe, %.preheader199.prol ], [ %.5178, %.preheader199.preheader ] ; 2 uses
  %.3164.prol = phi ptr [ %i.fd, %.preheader199.prol ], [ %i.ev, %.preheader199.preheader ] ; 2 uses
  %.3158.prol = phi ptr [ %i.fc, %.preheader199.prol ], [ %.1153, %.preheader199.preheader ] ; 2 uses
  %.2.prol = phi i64 [ %i.ff, %.preheader199.prol ], [ %i.ex, %.preheader199.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader199.prol ], [ 0, %.preheader199.preheader ]
  %i.ez = load <4 x float>, ptr %.3158.prol, align 4, !tbaa !20
  %i.fa = load <4 x float>, ptr %.3164.prol, align 4, !tbaa !20
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> %i.fa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.fb, ptr %.6179.prol, align 4, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %.3158.prol, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.3164.prol, i64 16 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.6179.prol, i64 32 ; 3 uses
  %i.ff = add nsw i64 %.2.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter306
  br i1 %prol.iter.cmp.not, label %.preheader199.prol.loopexit, label %.preheader199.prol, !llvm.loop !10

.preheader199.prol.loopexit:                      ; preds = %.preheader199.prol, %.preheader199.preheader
  %.6179.unr = phi ptr [ %.5178, %.preheader199.preheader ], [ %i.fe, %.preheader199.prol ]
  %.3164.unr = phi ptr [ %i.ev, %.preheader199.preheader ], [ %i.fd, %.preheader199.prol ]
  %.3158.unr = phi ptr [ %.1153, %.preheader199.preheader ], [ %i.fc, %.preheader199.prol ]
  %.2.unr = phi i64 [ %i.ex, %.preheader199.preheader ], [ %i.ff, %.preheader199.prol ]
  %.lcssa295.unr = phi ptr [ poison, %.preheader199.preheader ], [ %i.fc, %.preheader199.prol ]
  %.lcssa294.unr = phi ptr [ poison, %.preheader199.preheader ], [ %i.fd, %.preheader199.prol ]
  %.lcssa293.unr = phi ptr [ poison, %.preheader199.preheader ], [ %i.fe, %.preheader199.prol ]
  %i.fg = icmp ult i64 %i.ex, 8
  br i1 %i.fg, label %.loopexit200, label %.preheader199

.preheader199:                                    ; preds = %.preheader199.prol.loopexit, %.preheader199
  %.6179 = phi ptr [ %i.hc, %.preheader199 ], [ %.6179.unr, %.preheader199.prol.loopexit ] ; 9 uses
  %.3164 = phi ptr [ %i.hb, %.preheader199 ], [ %.3164.unr, %.preheader199.prol.loopexit ] ; 9 uses
  %.3158 = phi ptr [ %i.ha, %.preheader199 ], [ %.3158.unr, %.preheader199.prol.loopexit ] ; 9 uses
  %.2 = phi i64 [ %i.hd, %.preheader199 ], [ %.2.unr, %.preheader199.prol.loopexit ] ; 2 uses
  %i.fh = load <4 x float>, ptr %.3158, align 4, !tbaa !20
  %i.fi = load <4 x float>, ptr %.3164, align 4, !tbaa !20
  %i.fj = shufflevector <4 x float> %i.fh, <4 x float> %i.fi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.fj, ptr %.6179, align 4, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.3158, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %.3164, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.6179, i64 32
  %i.fn = load <4 x float>, ptr %i.fk, align 4, !tbaa !20
  %i.fo = load <4 x float>, ptr %i.fl, align 4, !tbaa !20
  %i.fp = shufflevector <4 x float> %i.fn, <4 x float> %i.fo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.fp, ptr %i.fm, align 4, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %.3158, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %.3164, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.6179, i64 64
  %i.ft = load <4 x float>, ptr %i.fq, align 4, !tbaa !20
  %i.fu = load <4 x float>, ptr %i.fr, align 4, !tbaa !20
  %i.fv = shufflevector <4 x float> %i.ft, <4 x float> %i.fu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.fv, ptr %i.fs, align 4, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %.3158, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %.3164, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %.6179, i64 96
  %i.fz = load <4 x float>, ptr %i.fw, align 4, !tbaa !20
  %i.ga = load <4 x float>, ptr %i.fx, align 4, !tbaa !20
  %i.gb = shufflevector <4 x float> %i.fz, <4 x float> %i.ga, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.gb, ptr %i.fy, align 4, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %.3158, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %.3164, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %.6179, i64 128
  %i.gf = load <4 x float>, ptr %i.gc, align 4, !tbaa !20
  %i.gg = load <4 x float>, ptr %i.gd, align 4, !tbaa !20
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.gh, ptr %i.ge, align 4, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %.3158, i64 80
  %i.gj = getelementptr inbounds nuw i8, ptr %.3164, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %.6179, i64 160
  %i.gl = load <4 x float>, ptr %i.gi, align 4, !tbaa !20
  %i.gm = load <4 x float>, ptr %i.gj, align 4, !tbaa !20
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.gm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.gn, ptr %i.gk, align 4, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %.3158, i64 96
  %i.gp = getelementptr inbounds nuw i8, ptr %.3164, i64 96
  %i.gq = getelementptr inbounds nuw i8, ptr %.6179, i64 192
  %i.gr = load <4 x float>, ptr %i.go, align 4, !tbaa !20
  %i.gs = load <4 x float>, ptr %i.gp, align 4, !tbaa !20
  %i.gt = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.gt, ptr %i.gq, align 4, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %.3158, i64 112
  %i.gv = getelementptr inbounds nuw i8, ptr %.3164, i64 112
  %i.gw = getelementptr inbounds nuw i8, ptr %.6179, i64 224
  %i.gx = load <4 x float>, ptr %i.gu, align 4, !tbaa !20
  %i.gy = load <4 x float>, ptr %i.gv, align 4, !tbaa !20
  %i.gz = shufflevector <4 x float> %i.gx, <4 x float> %i.gy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.gz, ptr %i.gw, align 4, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %.3158, i64 128 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3164, i64 128 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.6179, i64 256 ; 2 uses
  %i.hd = add nsw i64 %.2, -8
  %i.he = icmp sgt i64 %.2, 8
  br i1 %i.he, label %.preheader199, label %.loopexit200, !llvm.loop !11

.loopexit200:                                     ; preds = %.preheader199.prol.loopexit, %.preheader199, %bb.d
  %.7180 = phi ptr [ %.5178, %bb.d ], [ %.lcssa293.unr, %.preheader199.prol.loopexit ], [ %i.hc, %.preheader199 ] ; 8 uses
  %.4165 = phi ptr [ %i.ev, %bb.d ], [ %.lcssa294.unr, %.preheader199.prol.loopexit ], [ %i.hb, %.preheader199 ] ; 3 uses
  %.4159 = phi ptr [ %.1153, %bb.d ], [ %.lcssa295.unr, %.preheader199.prol.loopexit ], [ %i.ha, %.preheader199 ] ; 3 uses
  %i.hf = and i64 %0, 3                           ; 3 uses
  %.not192 = icmp eq i64 %i.hf, 0
  br i1 %.not192, label %.loopexit198, label %.preheader197

.preheader197:                                    ; preds = %.loopexit200
  %i.hg = load float, ptr %.4159, align 4, !tbaa !20
  %i.hh = load float, ptr %.4165, align 4, !tbaa !20
  store float %i.hg, ptr %.7180, align 4, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.7180, i64 4
  store float %i.hh, ptr %i.hi, align 4, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %.7180, i64 8 ; 2 uses
  %.not310 = icmp eq i64 %i.hf, 1
  br i1 %.not310, label %.loopexit198, label %.preheader197.1

.preheader197.1:                                  ; preds = %.preheader197
  %i.hk = getelementptr inbounds nuw i8, ptr %.4165, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.4159, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !20
  %i.hn = load float, ptr %i.hk, align 4, !tbaa !20
  store float %i.hm, ptr %i.hj, align 4, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %.7180, i64 12
  store float %i.hn, ptr %i.ho, align 4, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.7180, i64 16 ; 2 uses
  %i.hq = icmp eq i64 %i.hf, 3
  br i1 %i.hq, label %.preheader197.2, label %.loopexit198

.preheader197.2:                                  ; preds = %.preheader197.1
  %i.hr = getelementptr inbounds nuw i8, ptr %.4165, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.4159, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !20
  %i.hu = load float, ptr %i.hr, align 4, !tbaa !20
  store float %i.ht, ptr %i.hp, align 4, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %.7180, i64 20
  store float %i.hu, ptr %i.hv, align 4, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %.7180, i64 24
  br label %.loopexit198

.loopexit198:                                     ; preds = %.preheader197, %.preheader197.1, %.preheader197.2, %.loopexit200, %.loopexit206
  %.9 = phi ptr [ %.5178, %.loopexit206 ], [ %.7180, %.loopexit200 ], [ %i.hj, %.preheader197 ], [ %i.hp, %.preheader197.1 ], [ %i.hw, %.preheader197.2 ] ; 7 uses
  %.2154 = phi ptr [ %.1153, %.loopexit206 ], [ %i.ew, %.loopexit200 ], [ %i.ew, %.preheader197.2 ], [ %i.ew, %.preheader197.1 ], [ %i.ew, %.preheader197 ] ; 7 uses
  %i.hx = and i64 %1, 1
  %.not193 = icmp eq i64 %i.hx, 0
  br i1 %.not193, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit198
  %i.hy = ashr i64 %0, 2                          ; 8 uses
  %i.hz = icmp sgt i64 %i.hy, 0
  br i1 %i.hz, label %.preheader195.preheader, label %.loopexit196

.preheader195.preheader:                          ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.hy, 4
  br i1 %min.iters.check, label %.preheader195.preheader290, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader195.preheader
  %i.ia = shl i64 %i.hy, 4                        ; 2 uses
  %i.ib = getelementptr i8, ptr %.9, i64 %i.ia
  %i.ic = getelementptr i8, ptr %.2154, i64 %i.ia
  %bound0 = icmp ult ptr %.9, %i.ic
  %bound1 = icmp ult ptr %.2154, %i.ib
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader195.preheader290, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 9223372036854775804     ; 3 uses
  %i.id = shl i64 %n.vec, 4                       ; 2 uses
  %i.ie = getelementptr i8, ptr %.9, i64 %i.id    ; 2 uses
  %i.if = getelementptr i8, ptr %.2154, i64 %i.id ; 2 uses
  %i.ig = and i64 %i.hy, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ih = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.9, i64 %i.ih
  %next.gep284 = getelementptr i8, ptr %.2154, i64 %i.ih
  %wide.vec = load <16 x float>, ptr %next.gep284, align 4, !tbaa !20, !alias.scope !22
  store <16 x float> %wide.vec, ptr %next.gep, align 4, !tbaa !20, !alias.scope !23, !noalias !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %.loopexit196, label %.preheader195.preheader290

.preheader195.preheader290:                       ; preds = %vector.memcheck, %.preheader195.preheader, %middle.block
  %.10.ph = phi ptr [ %.9, %vector.memcheck ], [ %.9, %.preheader195.preheader ], [ %i.ie, %middle.block ]
  %.6.ph = phi ptr [ %.2154, %vector.memcheck ], [ %.2154, %.preheader195.preheader ], [ %i.if, %middle.block ]
  %.4.ph = phi i64 [ %i.hy, %vector.memcheck ], [ %i.hy, %.preheader195.preheader ], [ %i.ig, %middle.block ]
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.preheader290, %.preheader195
  %.10 = phi ptr [ %i.il, %.preheader195 ], [ %.10.ph, %.preheader195.preheader290 ] ; 2 uses
  %.6 = phi ptr [ %i.ik, %.preheader195 ], [ %.6.ph, %.preheader195.preheader290 ] ; 2 uses
  %.4 = phi i64 [ %i.im, %.preheader195 ], [ %.4.ph, %.preheader195.preheader290 ] ; 2 uses
  %i.ij = load <4 x float>, ptr %.6, align 4, !tbaa !20
  store <4 x float> %i.ij, ptr %.10, align 4, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %.6, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.10, i64 16 ; 2 uses
  %i.im = add nsw i64 %.4, -1
  %i.in = icmp samesign ugt i64 %.4, 1
  br i1 %i.in, label %.preheader195, label %.loopexit196, !llvm.loop !16

.loopexit196:                                     ; preds = %.preheader195, %middle.block, %bb.e
  %.11 = phi ptr [ %.9, %bb.e ], [ %i.ie, %middle.block ], [ %i.il, %.preheader195 ] ; 3 uses
  %.7 = phi ptr [ %.2154, %bb.e ], [ %i.if, %middle.block ], [ %i.ik, %.preheader195 ] ; 3 uses
  %i.io = and i64 %0, 3                           ; 3 uses
  %.not194 = icmp eq i64 %i.io, 0
  br i1 %.not194, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit196
  %i.ip = load float, ptr %.7, align 4, !tbaa !20
  store float %i.ip, ptr %.11, align 4, !tbaa !20
  %.not311 = icmp eq i64 %i.io, 1
  br i1 %.not311, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.iq = getelementptr inbounds nuw i8, ptr %.11, i64 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.7, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !20
  store float %i.is, ptr %i.iq, align 4, !tbaa !20
  %i.it = icmp eq i64 %i.io, 3
  br i1 %i.it, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.iu = getelementptr inbounds nuw i8, ptr %.11, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.7, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !20
  store float %i.iw, ptr %i.iu, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.loopexit196, %.loopexit198
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

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
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !18, !24, !25}
!16 = distinct !{!16, !18, !24}
!17 = !{!4, !4, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"float", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!13}
!23 = !{!14}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
