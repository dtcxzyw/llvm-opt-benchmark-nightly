Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
bb.ax:                                            ; preds = %bb.ax, %.preheader1589.us.i
  %indvars.iv2173.i = phi i64 [ 0, %.preheader1589.us.i ], [ %indvars.iv.next2174.i, %bb.ax ] ; 17 uses
  %.111661594.us.i = phi ptr [ %.011651596.us.i, %.preheader1589.us.i ], [ %i.sr, %bb.ax ] ; 17 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.010941612.us.i, i64 %indvars.iv2173.i
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.010991611.us.i, i64 %indvars.iv2173.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.011151610.us.i, i64 %indvars.iv2173.i
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.011161609.us.i, i64 %indvars.iv2173.i
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.011221608.us.i, i64 %indvars.iv2173.i
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.011231607.us.i, i64 %indvars.iv2173.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.011251606.us.i, i64 %indvars.iv2173.i
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.011261605.us.i, i64 %indvars.iv2173.i
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.011281604.us.i, i64 %indvars.iv2173.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.011291603.us.i, i64 %indvars.iv2173.i
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.011551602.us.i, i64 %indvars.iv2173.i
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.011601601.us.i, i64 %indvars.iv2173.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.011611600.us.i, i64 %indvars.iv2173.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.011621599.us.i, i64 %indvars.iv2173.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.011631598.us.i, i64 %indvars.iv2173.i
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.011641597.us.i, i64 %indvars.iv2173.i
  %i.ok = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nu, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ol = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nv, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.om = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nw, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.on = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nx, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ny, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.op = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nz, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oa, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.or = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ob, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.os = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oc, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ot = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.od, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ou = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oe, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ov = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.of, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ow = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.og, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ox = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oh, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oi, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oj, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pa = shufflevector <16 x float> %i.ok, <16 x float> %i.ol, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pb = shufflevector <16 x float> %i.ok, <16 x float> %i.ol, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pc = shufflevector <16 x float> %i.om, <16 x float> %i.on, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pd = shufflevector <16 x float> %i.om, <16 x float> %i.on, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pe = shufflevector <16 x float> %i.oo, <16 x float> %i.op, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pf = shufflevector <16 x float> %i.oo, <16 x float> %i.op, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pg = shufflevector <16 x float> %i.oq, <16 x float> %i.or, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ph = shufflevector <16 x float> %i.oq, <16 x float> %i.or, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pi = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pj = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pk = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pl = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pm = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pn = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.po = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pb, <16 x float> %i.pd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pb, <16 x float> %i.pd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pf, <16 x float> %i.ph, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.px = shufflevector <16 x float> %i.pf, <16 x float> %i.ph, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.py = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.pq, <16 x float> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.pr, <16 x float> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.ps, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.pt, <16 x float> %i.px, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.qb, <16 x float> %i.qf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.pq, <16 x float> %i.pu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.pr, <16 x float> %i.pv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.ps, <16 x float> %i.pw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qu = shufflevector <16 x float> %i.pt, <16 x float> %i.px, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qv = shufflevector <16 x float> %i.qb, <16 x float> %i.qf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qw = shufflevector <16 x float> %i.qg, <16 x float> %i.qh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qx = shufflevector <16 x float> %i.qi, <16 x float> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qy = shufflevector <16 x float> %i.qk, <16 x float> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qz = shufflevector <16 x float> %i.qm, <16 x float> %i.qn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ra = shufflevector <16 x float> %i.qo, <16 x float> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rb = shufflevector <16 x float> %i.qq, <16 x float> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rc = shufflevector <16 x float> %i.qs, <16 x float> %i.qt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rd = shufflevector <16 x float> %i.qu, <16 x float> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.re = shufflevector <16 x float> %i.qg, <16 x float> %i.qh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rf = shufflevector <16 x float> %i.qi, <16 x float> %i.qj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rg = shufflevector <16 x float> %i.qk, <16 x float> %i.ql, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rh = shufflevector <16 x float> %i.qm, <16 x float> %i.qn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ri = shufflevector <16 x float> %i.qo, <16 x float> %i.qp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rj = shufflevector <16 x float> %i.qq, <16 x float> %i.qr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rk = shufflevector <16 x float> %i.qs, <16 x float> %i.qt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rl = shufflevector <16 x float> %i.qu, <16 x float> %i.qv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qw)
  store <16 x bfloat> %i.rm, ptr %.111661594.us.i, align 1, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 32
  %i.ro = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qx)
  store <16 x bfloat> %i.ro, ptr %i.rn, align 1, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 64
  %i.rq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qy)
  store <16 x bfloat> %i.rq, ptr %i.rp, align 1, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 96
  %i.rs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qz)
  store <16 x bfloat> %i.rs, ptr %i.rr, align 1, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 128
  %i.ru = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ra)
  store <16 x bfloat> %i.ru, ptr %i.rt, align 1, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 160
  %i.rw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rb)
  store <16 x bfloat> %i.rw, ptr %i.rv, align 1, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 192
  %i.ry = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rc)
  store <16 x bfloat> %i.ry, ptr %i.rx, align 1, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 224
  %i.sa = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rd)
  store <16 x bfloat> %i.sa, ptr %i.rz, align 1, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 256
  %i.sc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.re)
  store <16 x bfloat> %i.sc, ptr %i.sb, align 1, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 288
  %i.se = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rf)
  store <16 x bfloat> %i.se, ptr %i.sd, align 1, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 320
  %i.sg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rg)
  store <16 x bfloat> %i.sg, ptr %i.sf, align 1, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 352
  %i.si = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rh)
  store <16 x bfloat> %i.si, ptr %i.sh, align 1, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 384
  %i.sk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ri)
  store <16 x bfloat> %i.sk, ptr %i.sj, align 1, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 416
  %i.sm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rj)
  store <16 x bfloat> %i.sm, ptr %i.sl, align 1, !tbaa !18
  %i.sn = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 448
  %i.so = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rk)
  store <16 x bfloat> %i.so, ptr %i.sn, align 1, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 480
  %i.sq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rl)
  store <16 x bfloat> %i.sq, ptr %i.sp, align 1, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.111661594.us.i, i64 512 ; 3 uses
  %indvars.iv.next2174.i = add nuw nsw i64 %indvars.iv2173.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next2174.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.ax, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.ax
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.010941612.us.i, i64 %i.ic ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.010991611.us.i, i64 %i.ic
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.011151610.us.i, i64 %i.ic
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.011161609.us.i, i64 %i.ic
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.011221608.us.i, i64 %i.ic
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.011231607.us.i, i64 %i.ic
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.011251606.us.i, i64 %i.ic
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.011261605.us.i, i64 %i.ic
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.011281604.us.i, i64 %i.ic
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.011291603.us.i, i64 %i.ic
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.011551602.us.i, i64 %i.ic
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.011601601.us.i, i64 %i.ic
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.011611600.us.i, i64 %i.ic
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.011621599.us.i, i64 %i.ic
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.011631598.us.i, i64 %i.ic
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.011641597.us.i, i64 %i.ic
  %i.ti = add nuw nsw i32 %.011761595.us.i, 16    ; 2 uses
  %i.tj = or disjoint i32 %i.ti, 15
  %i.tk = icmp slt i32 %i.tj, %2
  br i1 %i.tk, label %.preheader1589.us.i, label %._crit_edge1613.i, !llvm.loop !55

._crit_edge1613.i:                                ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1304.i
  %.01176.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.iv, %._crit_edge.us.i ] ; 4 uses
  %.01165.lcssa.i = phi ptr [ %i.ll, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.sr, %._crit_edge.us.i ] ; 3 uses
  %.01094.lcssa.i = phi ptr [ %i.le, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.ss, %._crit_edge.us.i ] ; 3 uses
  %i.tl = or disjoint i32 %.01176.lcssa.i, 7
  %i.tm = icmp slt i32 %i.tl, %2
  br i1 %i.tm, label %.preheader1588.lr.ph.i, label %.preheader1592.i

._crit_edge1613.thread.i:                         ; preds = %.preheader1589.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.la, i64 %i.is
  %scevgep2172.i = getelementptr i8, ptr %scevgep.i, i64 %i.kz ; 2 uses
  br i1 %i.iz, label %.preheader1588.preheader.i, label %.preheader1592.i

.preheader1588.lr.ph.i:                           ; preds = %._crit_edge1613.i
  br i1 %i.ia, label %.preheader1588.us.i, label %.preheader1588.preheader.i

.preheader1588.preheader.i:                       ; preds = %.preheader1588.lr.ph.i, %._crit_edge1613.thread.i
  %.01176.lcssa24422450.i = phi i32 [ %.01176.lcssa.i, %.preheader1588.lr.ph.i ], [ %i.iv, %._crit_edge1613.thread.i ] ; 2 uses
  %.01165.lcssa24432449.i = phi ptr [ %.01165.lcssa.i, %.preheader1588.lr.ph.i ], [ %i.ll, %._crit_edge1613.thread.i ]
  %.01094.lcssa24442448.i = phi ptr [ %.01094.lcssa.i, %.preheader1588.lr.ph.i ], [ %scevgep2172.i, %._crit_edge1613.thread.i ]
  %i.tn = sub i32 %i.iw, %.01176.lcssa24422450.i  ; 2 uses
  %i.to = lshr i32 %i.tn, 1
  %i.tp = and i32 %i.to, 2147483644
  %narrow2430.i = add nuw i32 %i.tp, 4
  %i.tq = zext i32 %narrow2430.i to i64
  %i.tr = mul nsw i64 %i.tq, %i.ii
  %scevgep2176.i = getelementptr i8, ptr %.01094.lcssa24442448.i, i64 %i.tr
  %i.ts = add nsw i32 %.01176.lcssa24422450.i, 8
  %i.tt = and i32 %i.tn, -8
  %i.tu = add i32 %i.ts, %i.tt
  br label %.preheader1592.i

.preheader1588.us.i:                              ; preds = %.preheader1588.lr.ph.i, %._crit_edge.us1630.i
  %.110951626.us.i = phi ptr [ %i.vb, %._crit_edge.us1630.i ], [ %.01094.lcssa.i, %.preheader1588.lr.ph.i ] ; 2 uses
  %.211671625.us.i = phi ptr [ %i.va, %._crit_edge.us1630.i ], [ %.01165.lcssa.i, %.preheader1588.lr.ph.i ]
  %.111771624.us.i = phi i32 [ %i.vc, %._crit_edge.us1630.i ], [ %.01176.lcssa.i, %.preheader1588.lr.ph.i ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.preheader1588.us.i
  %indvars.iv2178.i = phi i64 [ 0, %.preheader1588.us.i ], [ %indvars.iv.next2179.i, %bb.ay ] ; 2 uses
  %.311681623.us.i = phi ptr [ %.211671625.us.i, %.preheader1588.us.i ], [ %i.va, %bb.ay ] ; 9 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.110951626.us.i, i64 %indvars.iv2178.i ; 2 uses
  %i.tw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.tv, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.tx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tw)
  store <16 x bfloat> %i.tx, ptr %.311681623.us.i, align 1, !tbaa !18
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.ig ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 32
  %i.ua = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ty, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.ub = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ua)
  store <16 x bfloat> %i.ub, ptr %i.tz, align 1, !tbaa !18
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.ig ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 64
  %i.ue = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uc, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.uf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ue)
  store <16 x bfloat> %i.uf, ptr %i.ud, align 1, !tbaa !18
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ig ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 96
  %i.ui = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ug, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.uj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ui)
  store <16 x bfloat> %i.uj, ptr %i.uh, align 1, !tbaa !18
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.ig ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 128
  %i.um = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uk, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.un = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.um)
  store <16 x bfloat> %i.un, ptr %i.ul, align 1, !tbaa !18
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.ig ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 160
  %i.uq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.ur = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.uq)
  store <16 x bfloat> %i.ur, ptr %i.up, align 1, !tbaa !18
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ig ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 192
  %i.uu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.us, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.uv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.uu)
  store <16 x bfloat> %i.uv, ptr %i.ut, align 1, !tbaa !18
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ig
  %i.ux = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 224
  %i.uy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uw, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.uz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.uy)
  store <16 x bfloat> %i.uz, ptr %i.ux, align 1, !tbaa !18
  %i.va = getelementptr inbounds nuw i8, ptr %.311681623.us.i, i64 256 ; 3 uses
  %indvars.iv.next2179.i = add nuw nsw i64 %indvars.iv2178.i, 1 ; 2 uses
  %exitcond2182.not.i = icmp eq i64 %indvars.iv.next2179.i, %wide.trip.count.i
  br i1 %exitcond2182.not.i, label %._crit_edge.us1630.i, label %bb.ay, !llvm.loop !56

._crit_edge.us1630.i:                             ; preds = %bb.ay
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.110951626.us.i, i64 %i.ii ; 2 uses
  %i.vc = add nuw nsw i32 %.111771624.us.i, 8     ; 3 uses
  %i.vd = or disjoint i32 %i.vc, 7
  %i.ve = icmp slt i32 %i.vd, %2
  br i1 %i.ve, label %.preheader1588.us.i, label %.preheader1592.i, !llvm.loop !57

.preheader1592.i:                                 ; preds = %._crit_edge.us1630.i, %.preheader1588.preheader.i, %._crit_edge1613.thread.i, %._crit_edge1613.i
  %.11177.lcssa.i = phi i32 [ %.01176.lcssa.i, %._crit_edge1613.i ], [ %i.iv, %._crit_edge1613.thread.i ], [ %i.tu, %.preheader1588.preheader.i ], [ %i.vc, %._crit_edge.us1630.i ] ; 3 uses
  %.21167.lcssa.i = phi ptr [ %.01165.lcssa.i, %._crit_edge1613.i ], [ %i.ll, %._crit_edge1613.thread.i ], [ %.01165.lcssa24432449.i, %.preheader1588.preheader.i ], [ %i.va, %._crit_edge.us1630.i ] ; 2 uses
  %.11095.lcssa.i = phi ptr [ %.01094.lcssa.i, %._crit_edge1613.i ], [ %scevgep2172.i, %._crit_edge1613.thread.i ], [ %scevgep2176.i, %.preheader1588.preheader.i ], [ %i.vb, %._crit_edge.us1630.i ] ; 2 uses
  %i.vf = or disjoint i32 %.11177.lcssa.i, 3
  %i.vg = icmp slt i32 %i.vf, %2
  br i1 %i.vg, label %.preheader1587.lr.ph.i, label %.preheader1591.i

.preheader1587.lr.ph.i:                           ; preds = %.preheader1592.i
  br i1 %i.ia, label %.preheader1587.us.i, label %._crit_edge1671.split.i

.preheader1587.us.i:                              ; preds = %.preheader1587.lr.ph.i, %._crit_edge.us1646.i
  %.210961642.us.i = phi ptr [ %i.xe, %._crit_edge.us1646.i ], [ %.11095.lcssa.i, %.preheader1587.lr.ph.i ] ; 4 uses
  %.511701641.us.i = phi ptr [ %.lcssa516, %._crit_edge.us1646.i ], [ %.21167.lcssa.i, %.preheader1587.lr.ph.i ] ; 2 uses
  %.211781640.us.i = phi i32 [ %i.xf, %._crit_edge.us1646.i ], [ %.11177.lcssa.i, %.preheader1587.lr.ph.i ]
  br i1 %i.jb, label %.epil.preheader, label %.preheader1587.us.i.new

.preheader1587.us.i.new:                          ; preds = %.preheader1587.us.i, %.preheader1587.us.i.new
  %indvars.iv2185.i = phi i64 [ %indvars.iv.next2186.i.1, %.preheader1587.us.i.new ], [ 0, %.preheader1587.us.i ] ; 3 uses
  %.611711639.us.i = phi ptr [ %i.wn, %.preheader1587.us.i.new ], [ %.511701641.us.i, %.preheader1587.us.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.preheader1587.us.i.new ], [ 0, %.preheader1587.us.i ]
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %indvars.iv2185.i ; 2 uses
  %i.vi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.vh, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.vj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vi)
  store <16 x bfloat> %i.vj, ptr %.611711639.us.i, align 1, !tbaa !18
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.ig ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 32
  %i.vm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vk, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.vn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vm)
  store <16 x bfloat> %i.vn, ptr %i.vl, align 1, !tbaa !18
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.ig ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 64
  %i.vq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.vr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vq)
  store <16 x bfloat> %i.vr, ptr %i.vp, align 1, !tbaa !18
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.ig
  %i.vt = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 96
  %i.vu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vs, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.vv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vu)
  store <16 x bfloat> %i.vv, ptr %i.vt, align 1, !tbaa !18
  %i.vw = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 128
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %indvars.iv2185.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4 ; 2 uses
  %i.vz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vy, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wa = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vz)
  store <16 x bfloat> %i.wa, ptr %i.vw, align 1, !tbaa !18
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.ig ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 160
  %i.wd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wb, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.we = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wd)
  store <16 x bfloat> %i.we, ptr %i.wc, align 1, !tbaa !18
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.ig ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 192
  %i.wh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wf, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wh)
  store <16 x bfloat> %i.wi, ptr %i.wg, align 1, !tbaa !18
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.ig
  %i.wk = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 224
  %i.wl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wj, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wl)
  store <16 x bfloat> %i.wm, ptr %i.wk, align 1, !tbaa !18
  %i.wn = getelementptr inbounds nuw i8, ptr %.611711639.us.i, i64 256 ; 3 uses
  %indvars.iv.next2186.i.1 = add nuw nsw i64 %indvars.iv2185.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1646.i.unr-lcssa, label %.preheader1587.us.i.new, !llvm.loop !58

._crit_edge.us1646.i.unr-lcssa:                   ; preds = %.preheader1587.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1646.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1646.i.unr-lcssa, %.preheader1587.us.i
  %indvars.iv2185.i.epil.init = phi i64 [ 0, %.preheader1587.us.i ], [ %indvars.iv.next2186.i.1, %._crit_edge.us1646.i.unr-lcssa ]
  %.611711639.us.i.epil.init = phi ptr [ %.511701641.us.i, %.preheader1587.us.i ], [ %i.wn, %._crit_edge.us1646.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod524)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %indvars.iv2185.i.epil.init ; 2 uses
  %i.wp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.wo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wp)
  store <16 x bfloat> %i.wq, ptr %.611711639.us.i.epil.init, align 1, !tbaa !18
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.ig ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 32
  %i.wt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wr, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wt)
  store <16 x bfloat> %i.wu, ptr %i.ws, align 1, !tbaa !18
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ig ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 64
  %i.wx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wv, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wx)
  store <16 x bfloat> %i.wy, ptr %i.ww, align 1, !tbaa !18
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.ig
  %i.xa = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 96
  %i.xb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wz, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xb)
  store <16 x bfloat> %i.xc, ptr %i.xa, align 1, !tbaa !18
  %i.xd = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 128
  br label %._crit_edge.us1646.i

._crit_edge.us1646.i:                             ; preds = %._crit_edge.us1646.i.unr-lcssa, %.epil.preheader
  %.lcssa516 = phi ptr [ %i.wn, %._crit_edge.us1646.i.unr-lcssa ], [ %i.xd, %.epil.preheader ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %i.ik ; 2 uses
  %i.xf = add nuw nsw i32 %.211781640.us.i, 4     ; 3 uses
  %i.xg = or disjoint i32 %i.xf, 3
  %i.xh = icmp slt i32 %i.xg, %2
  br i1 %i.xh, label %.preheader1587.us.i, label %.preheader1591.i, !llvm.loop !59

.preheader1591.i:                                 ; preds = %._crit_edge.us1646.i, %.preheader1592.i
  %.21178.lcssa.i = phi i32 [ %.11177.lcssa.i, %.preheader1592.i ], [ %i.xf, %._crit_edge.us1646.i ] ; 3 uses
  %.51170.lcssa.i = phi ptr [ %.21167.lcssa.i, %.preheader1592.i ], [ %.lcssa516, %._crit_edge.us1646.i ] ; 2 uses
  %.21096.lcssa.i = phi ptr [ %.11095.lcssa.i, %.preheader1592.i ], [ %i.xe, %._crit_edge.us1646.i ] ; 2 uses
  %i.xi = or disjoint i32 %.21178.lcssa.i, 1
  %i.xj = icmp slt i32 %i.xi, %2
  br i1 %i.xj, label %.preheader1586.lr.ph.i, label %.preheader1590.i

.preheader1586.lr.ph.i:                           ; preds = %.preheader1591.i
  br i1 %i.ia, label %.preheader1586.us.i, label %._crit_edge1671.split.i

.preheader1586.us.i:                              ; preds = %.preheader1586.lr.ph.i, %._crit_edge.us1662.i
  %.310971658.us.i = phi ptr [ %i.yj, %._crit_edge.us1662.i ], [ %.21096.lcssa.i, %.preheader1586.lr.ph.i ] ; 4 uses
  %.811731657.us.i = phi ptr [ %.lcssa519, %._crit_edge.us1662.i ], [ %.51170.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.311791656.us.i = phi i32 [ %i.yk, %._crit_edge.us1662.i ], [ %.21178.lcssa.i, %.preheader1586.lr.ph.i ]
  br i1 %i.jc, label %.epil.preheader525, label %.preheader1586.us.i.new

.preheader1586.us.i.new:                          ; preds = %.preheader1586.us.i, %.preheader1586.us.i.new
  %indvars.iv2191.i = phi i64 [ %indvars.iv.next2192.i.1, %.preheader1586.us.i.new ], [ 0, %.preheader1586.us.i ] ; 3 uses
  %.911741655.us.i = phi ptr [ %i.ya, %.preheader1586.us.i.new ], [ %.811731657.us.i, %.preheader1586.us.i ] ; 5 uses
  %niter531 = phi i64 [ %niter531.next.1, %.preheader1586.us.i.new ], [ 0, %.preheader1586.us.i ]
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i ; 2 uses
  %i.xl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xk, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xl)
  store <16 x bfloat> %i.xm, ptr %.911741655.us.i, align 1, !tbaa !18
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.ig
  %i.xo = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 32
  %i.xp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xn, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xp)
  store <16 x bfloat> %i.xq, ptr %i.xo, align 1, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.abp = icmp ult i64 %i.abn, 3
  %unroll_iter577 = and i64 %wide.trip.count2284.i, 2147483644
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter572, 0
  br label %_ZN4ncnn3MatD2Ev.exit1302.i

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1767.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2263.i = phi i64 [ %i.kp, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2264.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2261.i = phi i32 [ %i.kq, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2262.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2206.i = phi i32 [ %i.kk, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2207.i, %._crit_edge1767.split.i ] ; 2 uses
  %i.abq = sext i32 %indvars.iv2206.i to i64
  %i.abr = shl nsw i64 %i.abq, 2
  %i.abs = load ptr, ptr %0, align 8, !tbaa !15   ; 9 uses
  %i.abt = trunc nuw i64 %indvars.iv2263.i to i32 ; 9 uses
  %i.abu = mul i32 %i.jh, %i.abt
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abv ; 2 uses
  %i.abx = add i32 %i.abt, 1
  %i.aby = mul i32 %i.abx, %i.jh
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abz ; 2 uses
  %i.acb = add i32 %i.abt, 2
  %i.acc = mul i32 %i.acb, %i.jh
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acd ; 2 uses
  %i.acf = add i32 %i.abt, 3
  %i.acg = mul i32 %i.acf, %i.jh
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.ach ; 2 uses
  %i.acj = add i32 %i.abt, 4
  %i.ack = mul i32 %i.acj, %i.jh
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acl ; 2 uses
  %i.acn = add i32 %i.abt, 5
  %i.aco = mul i32 %i.acn, %i.jh
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acp ; 2 uses
  %i.acr = add i32 %i.abt, 6
  %i.acs = mul i32 %i.acr, %i.jh
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.act ; 2 uses
  %i.acv = mul i32 %indvars.iv2261.i, %i.jh
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acw ; 2 uses
  %i.acy = lshr i32 %i.abt, 4
  %i.acz = lshr i32 %i.abt, 3
  %i.ada = and i32 %i.acz, 1
  %i.adb = add nuw nsw i32 %i.ada, %i.acy
  %i.adc = load ptr, ptr %1, align 8, !tbaa !15, !noalias !132
  %i.add = load i64, ptr %i.ji, align 8, !tbaa !16, !noalias !132
  %i.ade = zext nneg i32 %i.adb to i64
  %i.adf = mul i64 %i.add, %i.ade
  %i.adg = load i64, ptr %i.jj, align 8, !tbaa !17, !noalias !132
  %i.adh = mul i64 %i.adf, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adh ; 4 uses
  br i1 %i.jq, label %.preheader1580.lr.ph.i, label %.preheader1583.i

.preheader1580.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.jr, label %.preheader1580.us.i, label %.preheader1583.thread.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1676.us.i
  %.012311687.us.i = phi ptr [ %i.afv, %._crit_edge1676.us.i ], [ %i.abw, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012351686.us.i = phi ptr [ %i.afw, %._crit_edge1676.us.i ], [ %i.aca, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012371685.us.i = phi ptr [ %i.afx, %._crit_edge1676.us.i ], [ %i.ace, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012391684.us.i = phi ptr [ %i.afy, %._crit_edge1676.us.i ], [ %i.aci, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012411683.us.i = phi ptr [ %i.afz, %._crit_edge1676.us.i ], [ %i.acm, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012441682.us.i = phi ptr [ %i.aga, %._crit_edge1676.us.i ], [ %i.acq, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012461681.us.i = phi ptr [ %i.agb, %._crit_edge1676.us.i ], [ %i.acu, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012481680.us.i = phi ptr [ %i.agc, %._crit_edge1676.us.i ], [ %i.acx, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012501679.us.i = phi ptr [ %i.afu, %._crit_edge1676.us.i ], [ %i.adi, %.preheader1580.lr.ph.i ]
  %.012621678.us.i = phi i32 [ %i.agd, %._crit_edge1676.us.i ], [ 0, %.preheader1580.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1580.us.i
  %indvars.iv2231.i = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2232.i, %bb.ba ] ; 9 uses
  %.112511675.us.i = phi ptr [ %.012501679.us.i, %.preheader1580.us.i ], [ %i.afu, %bb.ba ] ; 9 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %indvars.iv2231.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %indvars.iv2231.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %indvars.iv2231.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %indvars.iv2231.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %indvars.iv2231.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %indvars.iv2231.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %indvars.iv2231.i
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %indvars.iv2231.i
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adq, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aex = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afb = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afe = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aff = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aex)
  store <16 x bfloat> %i.aff, ptr %.112511675.us.i, align 1, !tbaa !18
  %i.afg = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 32
  %i.afh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aey)
  store <16 x bfloat> %i.afh, ptr %i.afg, align 1, !tbaa !18
  %i.afi = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 64
  %i.afj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aez)
  store <16 x bfloat> %i.afj, ptr %i.afi, align 1, !tbaa !18
  %i.afk = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 96
  %i.afl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afa)
  store <16 x bfloat> %i.afl, ptr %i.afk, align 1, !tbaa !18
  %i.afm = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 128
  %i.afn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afb)
  store <16 x bfloat> %i.afn, ptr %i.afm, align 1, !tbaa !18
  %i.afo = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 160
  %i.afp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afc)
  store <16 x bfloat> %i.afp, ptr %i.afo, align 1, !tbaa !18
  %i.afq = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 192
  %i.afr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afd)
  store <16 x bfloat> %i.afr, ptr %i.afq, align 1, !tbaa !18
  %i.afs = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 224
  %i.aft = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afe)
  store <16 x bfloat> %i.aft, ptr %i.afs, align 1, !tbaa !18
  %i.afu = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 256 ; 3 uses
  %indvars.iv.next2232.i = add nuw nsw i64 %indvars.iv2231.i, 1 ; 2 uses
  %exitcond2235.not.i = icmp eq i64 %indvars.iv.next2232.i, %wide.trip.count2234.i
  br i1 %exitcond2235.not.i, label %._crit_edge1676.us.i, label %bb.ba, !llvm.loop !68

._crit_edge1676.us.i:                             ; preds = %bb.ba
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %i.jt ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %i.jt ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %i.jt ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %i.jt ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %i.jt ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %i.jt ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %i.jt ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %i.jt ; 2 uses
  %i.agd = add nuw nsw i32 %.012621678.us.i, 16   ; 2 uses
  %i.age = or disjoint i32 %i.agd, 15
  %i.agf = icmp slt i32 %i.age, %2
  br i1 %i.agf, label %.preheader1580.us.i, label %.preheader1583.i, !llvm.loop !69

.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01262.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.kn, %._crit_edge1676.us.i ] ; 4 uses
  %.01250.lcssa.i = phi ptr [ %i.adi, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afu, %._crit_edge1676.us.i ] ; 3 uses
  %.01248.lcssa.i = phi ptr [ %i.acx, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agc, %._crit_edge1676.us.i ]
  %.01246.lcssa.i = phi ptr [ %i.acu, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agb, %._crit_edge1676.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.acq, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.aga, %._crit_edge1676.us.i ]
  %.01241.lcssa.i = phi ptr [ %i.acm, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afz, %._crit_edge1676.us.i ]
  %.01239.lcssa.i = phi ptr [ %i.aci, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afy, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.ace, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afx, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.aca, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afw, %._crit_edge1676.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.abw, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afv, %._crit_edge1676.us.i ] ; 3 uses
  %i.agg = or disjoint i32 %.01262.lcssa.i, 7
  %i.agh = icmp slt i32 %i.agg, %2
  br i1 %i.agh, label %.preheader1579.lr.ph.i, label %._crit_edge1722.i

.preheader1583.thread.i:                          ; preds = %.preheader1580.lr.ph.i
  %scevgep2205.i = getelementptr i8, ptr %i.abs, i64 %i.kj
  %scevgep2208.i = getelementptr i8, ptr %scevgep2205.i, i64 %i.abr ; 2 uses
  br i1 %i.kt, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.jr, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01262.lcssa24772499.i = phi i32 [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.kn, %.preheader1583.thread.i ] ; 2 uses
  %.01250.lcssa24782498.i = phi ptr [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.adi, %.preheader1583.thread.i ]
  %.01231.lcssa24862497.i = phi ptr [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2208.i, %.preheader1583.thread.i ]
  %i.agi = sub i32 %i.ko, %.01262.lcssa24772499.i ; 2 uses
  %i.agj = lshr i32 %i.agi, 1
  %i.agk = and i32 %i.agj, 2147483644
  %narrow2432.i = add nuw i32 %i.agk, 4
  %i.agl = zext i32 %narrow2432.i to i64
  %i.agm = mul nsw i64 %i.agl, %i.jv
  %scevgep2236.i = getelementptr i8, ptr %.01231.lcssa24862497.i, i64 %i.agm
  %i.agn = add nsw i32 %.01262.lcssa24772499.i, 8
  %i.ago = and i32 %i.agi, -8
  %i.agp = add i32 %i.agn, %i.ago
  br label %._crit_edge1722.i

.preheader1579.us.i:                              ; preds = %.preheader1579.lr.ph.i, %._crit_edge1710.us.i
  %.112321721.us.i = phi ptr [ %i.aiu, %._crit_edge1710.us.i ], [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112361720.us.i = phi ptr [ %i.aiv, %._crit_edge1710.us.i ], [ %.01235.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112381719.us.i = phi ptr [ %i.aiw, %._crit_edge1710.us.i ], [ %.01237.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112401718.us.i = phi ptr [ %i.aix, %._crit_edge1710.us.i ], [ %.01239.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112421717.us.i = phi ptr [ %i.aiy, %._crit_edge1710.us.i ], [ %.01241.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112451716.us.i = phi ptr [ %i.aiz, %._crit_edge1710.us.i ], [ %.01244.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112471715.us.i = phi ptr [ %i.aja, %._crit_edge1710.us.i ], [ %.01246.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112491714.us.i = phi ptr [ %i.ajb, %._crit_edge1710.us.i ], [ %.01248.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.212521713.us.i = phi ptr [ %i.ait, %._crit_edge1710.us.i ], [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ]
  %.112631712.us.i = phi i32 [ %i.ajc, %._crit_edge1710.us.i ], [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1579.us.i
  %indvars.iv2237.i = phi i64 [ 0, %.preheader1579.us.i ], [ %indvars.iv.next2238.i, %bb.bb ] ; 9 uses
  %.312531708.us.i = phi ptr [ %.212521713.us.i, %.preheader1579.us.i ], [ %i.ait, %bb.bb ] ; 9 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %indvars.iv2237.i
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %indvars.iv2237.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %indvars.iv2237.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %indvars.iv2237.i
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %indvars.iv2237.i
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %indvars.iv2237.i
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %indvars.iv2237.i
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %indvars.iv2237.i
  %i.agy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agq, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agr, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aha = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ags, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agt, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agu, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agv, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agw, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agx, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahg = shufflevector <8 x float> %i.agy, <8 x float> %i.agz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahh = shufflevector <8 x float> %i.agy, <8 x float> %i.agz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahi = shufflevector <8 x float> %i.aha, <8 x float> %i.ahb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahj = shufflevector <8 x float> %i.aha, <8 x float> %i.ahb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahc, <8 x float> %i.ahd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahc, <8 x float> %i.ahd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahe, <8 x float> %i.ahf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahn = shufflevector <8 x float> %i.ahe, <8 x float> %i.ahf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aho = shufflevector <8 x float> %i.ahg, <8 x float> %i.ahi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahp = shufflevector <8 x float> %i.ahg, <8 x float> %i.ahi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahq = shufflevector <8 x float> %i.ahh, <8 x float> %i.ahj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahr = shufflevector <8 x float> %i.ahh, <8 x float> %i.ahj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahs = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aht = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahu = shufflevector <8 x float> %i.ahl, <8 x float> %i.ahn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahv = shufflevector <8 x float> %i.ahl, <8 x float> %i.ahn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahw = shufflevector <8 x float> %i.aho, <8 x float> %i.ahs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahx = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahy = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahz = shufflevector <8 x float> %i.ahr, <8 x float> %i.ahv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aia = shufflevector <8 x float> %i.aho, <8 x float> %i.ahs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aib = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aic = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aid = shufflevector <8 x float> %i.ahr, <8 x float> %i.ahv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aie = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahw)
  store <8 x bfloat> %i.aie, ptr %.312531708.us.i, align 1, !tbaa !18
  %i.aif = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 16
  %i.aig = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahx)
  store <8 x bfloat> %i.aig, ptr %i.aif, align 1, !tbaa !18
  %i.aih = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 32
  %i.aii = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahy)
  store <8 x bfloat> %i.aii, ptr %i.aih, align 1, !tbaa !18
  %i.aij = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 48
  %i.aik = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahz)
  store <8 x bfloat> %i.aik, ptr %i.aij, align 1, !tbaa !18
  %i.ail = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 64
  %i.aim = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aia)
  store <8 x bfloat> %i.aim, ptr %i.ail, align 1, !tbaa !18
  %i.ain = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 80
  %i.aio = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aib)
  store <8 x bfloat> %i.aio, ptr %i.ain, align 1, !tbaa !18
  %i.aip = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 96
  %i.aiq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aic)
  store <8 x bfloat> %i.aiq, ptr %i.aip, align 1, !tbaa !18
  %i.air = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 112
  %i.ais = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aid)
  store <8 x bfloat> %i.ais, ptr %i.air, align 1, !tbaa !18
  %i.ait = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 128 ; 3 uses
  %indvars.iv.next2238.i = add nuw nsw i64 %indvars.iv2237.i, 1 ; 2 uses
  %exitcond2241.not.i = icmp eq i64 %indvars.iv.next2238.i, %wide.trip.count2234.i
  br i1 %exitcond2241.not.i, label %._crit_edge1710.us.i, label %bb.bb, !llvm.loop !70

._crit_edge1710.us.i:                             ; preds = %bb.bb
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %i.jv ; 2 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %i.jv
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %i.jv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %i.jv
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %i.jv
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %i.jv
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %i.jv
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %i.jv
  %i.ajc = add nuw nsw i32 %.112631712.us.i, 8    ; 3 uses
  %i.ajd = or disjoint i32 %i.ajc, 7
  %i.aje = icmp slt i32 %i.ajd, %2
  br i1 %i.aje, label %.preheader1579.us.i, label %._crit_edge1722.i, !llvm.loop !71

._crit_edge1722.i:                                ; preds = %._crit_edge1710.us.i, %.preheader1579.preheader.i, %.preheader1583.thread.i, %.preheader1583.i
  %.11263.lcssa.i = phi i32 [ %.01262.lcssa.i, %.preheader1583.i ], [ %i.kn, %.preheader1583.thread.i ], [ %i.agp, %.preheader1579.preheader.i ], [ %i.ajc, %._crit_edge1710.us.i ] ; 3 uses
  %.21252.lcssa.i = phi ptr [ %.01250.lcssa.i, %.preheader1583.i ], [ %i.adi, %.preheader1583.thread.i ], [ %.01250.lcssa24782498.i, %.preheader1579.preheader.i ], [ %i.ait, %._crit_edge1710.us.i ] ; 2 uses
  %.11232.lcssa.i = phi ptr [ %.01231.lcssa.i, %.preheader1583.i ], [ %scevgep2208.i, %.preheader1583.thread.i ], [ %scevgep2236.i, %.preheader1579.preheader.i ], [ %i.aiu, %._crit_edge1710.us.i ] ; 2 uses
  %i.ajf = or disjoint i32 %.11263.lcssa.i, 3
  %i.ajg = icmp slt i32 %i.ajf, %2
  br i1 %i.ajg, label %.preheader1578.lr.ph.i, label %.preheader1582.i

.preheader1578.lr.ph.i:                           ; preds = %._crit_edge1722.i
  br i1 %i.jr, label %.preheader1578.us.i, label %._crit_edge1767.split.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1734.us.i
  %.212331738.us.i = phi ptr [ %i.ale, %._crit_edge1734.us.i ], [ %.11232.lcssa.i, %.preheader1578.lr.ph.i ] ; 4 uses
  %.412541737.us.i = phi ptr [ %.lcssa504, %._crit_edge1734.us.i ], [ %.21252.lcssa.i, %.preheader1578.lr.ph.i ] ; 2 uses
  %.212641736.us.i = phi i32 [ %i.alf, %._crit_edge1734.us.i ], [ %.11263.lcssa.i, %.preheader1578.lr.ph.i ]
  br i1 %i.kv, label %.epil.preheader539, label %.preheader1578.us.i.new

.preheader1578.us.i.new:                          ; preds = %.preheader1578.us.i, %.preheader1578.us.i.new
  %indvars.iv2244.i = phi i64 [ %indvars.iv.next2245.i.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ] ; 3 uses
  %.512551732.us.i = phi ptr [ %i.akn, %.preheader1578.us.i.new ], [ %.412541737.us.i, %.preheader1578.us.i ] ; 9 uses
  %niter546 = phi i64 [ %niter546.next.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ]
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i ; 2 uses
  %i.aji = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajh, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aji)
  store <8 x bfloat> %i.ajj, ptr %.512551732.us.i, align 1, !tbaa !18
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.jz ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 16
  %i.ajm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajk, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajm)
  store <8 x bfloat> %i.ajn, ptr %i.ajl, align 1, !tbaa !18
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %i.jz ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 32
  %i.ajq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajo, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajq)
  store <8 x bfloat> %i.ajr, ptr %i.ajp, align 1, !tbaa !18
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.jz
  %i.ajt = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 48
  %i.aju = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajs, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aju)
  store <8 x bfloat> %i.ajv, ptr %i.ajt, align 1, !tbaa !18
  %i.ajw = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 64
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4 ; 2 uses
  %i.ajz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ajy, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aka = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajz)
  store <8 x bfloat> %i.aka, ptr %i.ajw, align 1, !tbaa !18
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %i.jz ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 80
  %i.akd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akb, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ake = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akd)
  store <8 x bfloat> %i.ake, ptr %i.akc, align 1, !tbaa !18
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.jz ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 96
  %i.akh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akf, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aki = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akh)
  store <8 x bfloat> %i.aki, ptr %i.akg, align 1, !tbaa !18
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.jz
  %i.akk = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 112
  %i.akl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akj, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akl)
  store <8 x bfloat> %i.akm, ptr %i.akk, align 1, !tbaa !18
  %i.akn = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 128 ; 3 uses
  %indvars.iv.next2245.i.1 = add nuw nsw i64 %indvars.iv2244.i, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge1734.us.i.unr-lcssa, label %.preheader1578.us.i.new, !llvm.loop !72

._crit_edge1734.us.i.unr-lcssa:                   ; preds = %.preheader1578.us.i.new
  br i1 %lcmp.mod542.not, label %._crit_edge1734.us.i, label %.epil.preheader539

.epil.preheader539:                               ; preds = %._crit_edge1734.us.i.unr-lcssa, %.preheader1578.us.i
  %indvars.iv2244.i.epil.init = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2245.i.1, %._crit_edge1734.us.i.unr-lcssa ]
  %.512551732.us.i.epil.init = phi ptr [ %.412541737.us.i, %.preheader1578.us.i ], [ %i.akn, %._crit_edge1734.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod544)
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i.epil.init ; 2 uses
  %i.akp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ako, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akp)
  store <8 x bfloat> %i.akq, ptr %.512551732.us.i.epil.init, align 1, !tbaa !18
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.jz ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 16
  %i.akt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akr, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aku = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akt)
  store <8 x bfloat> %i.aku, ptr %i.aks, align 1, !tbaa !18
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.jz ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 32
  %i.akx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akv, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aky = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akx)
  store <8 x bfloat> %i.aky, ptr %i.akw, align 1, !tbaa !18
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.jz
  %i.ala = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 48
  %i.alb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akz, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alb)
  store <8 x bfloat> %i.alc, ptr %i.ala, align 1, !tbaa !18
  %i.ald = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 64
  br label %._crit_edge1734.us.i

._crit_edge1734.us.i:                             ; preds = %._crit_edge1734.us.i.unr-lcssa, %.epil.preheader539
  %.lcssa504 = phi ptr [ %i.akn, %._crit_edge1734.us.i.unr-lcssa ], [ %i.ald, %.epil.preheader539 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.aol = shl i32 %i.a, 1
  %i.aom = sext i32 %i.aol to i64                 ; 2 uses
  %i.aon = icmp slt i32 %i.a, 1
  %i.aoo = add i32 %2, -16                        ; 2 uses
  %i.aop = lshr i32 %i.aoo, 2
  %i.aoq = and i32 %i.aop, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.aoq, 4
  %i.aor = zext nneg i32 %narrow2435.i to i64
  %i.aos = mul nsw i64 %i.aof, %i.aor
  %i.aot = mul i32 %i.anq, %.2.lcssa.i
  %i.aou = shl i32 %i.anq, 1                      ; 2 uses
  %i.aov = mul i32 %i.ano, %i.anq
  %i.aow = and i32 %i.aoo, -16
  %i.aox = add nuw i32 %i.aow, 16                 ; 4 uses
  %i.aoy = add i32 %2, -8
  %i.aoz = sext i32 %.2.lcssa.i to i64
  %i.apa = sext i32 %3 to i64
  %i.apb = or disjoint i32 %i.aox, 7
  %i.apc = icmp slt i32 %i.apb, %2
  %wide.trip.count2326.i = zext i32 %i.a to i64   ; 19 uses
  %i.apd = add nsw i64 %wide.trip.count2326.i, -1 ; 3 uses
  %xtraiter580 = and i64 %wide.trip.count2326.i, 1
  %i.ape = icmp eq i64 %i.apd, 0
  %unroll_iter585 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod582.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod584 = trunc i32 %i.a to i1
  %xtraiter588 = and i64 %wide.trip.count2326.i, 1
  %i.apf = icmp eq i64 %i.apd, 0
  %unroll_iter593 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = trunc i32 %i.a to i1
  %xtraiter596 = and i64 %wide.trip.count2326.i, 1
  %i.apg = icmp eq i64 %i.apd, 0
  %unroll_iter601 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod598.not = icmp eq i64 %xtraiter596, 0
  %lcmp.mod600 = trunc i32 %i.a to i1
  %min.iters.check334 = icmp ult i32 %i.a, 4
  %min.iters.check336 = icmp ult i32 %i.a, 16
  %i.aph = and i64 %wide.trip.count2326.i, 12
  %n.vec338 = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.api = shl nuw nsw i64 %n.vec338, 3
  %cmp.n349 = icmp eq i64 %n.vec338, %wide.trip.count2326.i
  %min.epilog.iters.check354 = icmp eq i64 %i.aph, 0
  %n.vec356 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.apj = shl nuw nsw i64 %n.vec356, 3
  %cmp.n367 = icmp eq i64 %n.vec356, %wide.trip.count2326.i
  %min.iters.check = icmp ult i32 %i.a, 4
  %min.iters.check322 = icmp ult i32 %i.a, 16
  %i.apk = and i64 %wide.trip.count2326.i, 12
  %n.vec = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.apl = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2326.i
  %min.epilog.iters.check = icmp eq i64 %i.apk, 0
  %n.vec324 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.apm = shl nuw nsw i64 %n.vec324, 2
  %cmp.n331 = icmp eq i64 %n.vec324, %wide.trip.count2326.i
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2313.i = phi i64 [ %i.abh, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2314.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.apn = phi i32 [ %i.zp, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayl, %._crit_edge1853.split.i ]
  %i.apo = phi <4 x i32> [ %i.abd, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayk, %._crit_edge1853.split.i ] ; 2 uses
  %i.app = sext <4 x i32> %i.apo to <4 x i64>
  %i.apq = shl nsw <4 x i64> %i.app, splat (i64 2) ; 4 uses
  %i.apr = load ptr, ptr %0, align 8, !tbaa !15   ; 5 uses
  %i.aps = trunc i64 %indvars.iv2313.i to i32     ; 6 uses
  %i.apt = mul i32 %i.aaz, %i.aps
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.apu ; 2 uses
  %i.apw = add i32 %i.aps, 1
  %i.apx = mul i32 %i.apw, %i.aaz
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.apy ; 2 uses
  %i.aqa = add i32 %i.aps, 2
  %i.aqb = mul i32 %i.aqa, %i.aaz
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.aqc ; 2 uses
  %i.aqe = mul i32 %i.apn, %i.aaz
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.aqf ; 2 uses
  %i.aqh = lshr i32 %i.aps, 4
  %i.aqi = lshr i32 %i.aps, 3
  %i.aqj = and i32 %i.aqi, 1
  %i.aqk = add nuw nsw i32 %i.aqj, %i.aqh
  %i.aql = lshr i32 %i.aps, 2
  %i.aqm = and i32 %i.aql, 1
  %i.aqn = add nuw nsw i32 %i.aqk, %i.aqm
  %i.aqo = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.aqp = load i64, ptr %i.zu, align 8, !tbaa !16, !noalias !133
  %i.aqq = zext nneg i32 %i.aqn to i64
  %i.aqr = mul i64 %i.aqp, %i.aqq
  %i.aqs = load i64, ptr %i.zv, align 8, !tbaa !17, !noalias !133
  %i.aqt = mul i64 %i.aqr, %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %i.aqt ; 4 uses
  br i1 %i.aaf, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.aag, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.011911779.us.i = phi i32 [ %i.asb, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.011961778.us.i = phi ptr [ %i.arw, %._crit_edge1772.us.i ], [ %i.aqu, %.preheader1571.lr.ph.i ]
  %.012071777.us.i = phi ptr [ %i.asa, %._crit_edge1772.us.i ], [ %i.aqg, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012101776.us.i = phi ptr [ %i.arz, %._crit_edge1772.us.i ], [ %i.aqd, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012131775.us.i = phi ptr [ %i.ary, %._crit_edge1772.us.i ], [ %i.apz, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012161774.us.i = phi ptr [ %i.arx, %._crit_edge1772.us.i ], [ %i.apv, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader1571.us.i
  %indvars.iv2281.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2282.i, %bb.bd ] ; 5 uses
  %.111971770.us.i = phi ptr [ %.011961778.us.i, %.preheader1571.us.i ], [ %i.arw, %bb.bd ] ; 5 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %indvars.iv2281.i
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %indvars.iv2281.i
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %indvars.iv2281.i
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %indvars.iv2281.i
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqw, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqx, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqy, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.are = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arb, <16 x float> %i.arc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.arb, <16 x float> %i.arc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.are, <16 x float> %i.arg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arj = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ark = shufflevector <16 x float> %i.are, <16 x float> %i.arg, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arl = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arm = shufflevector <16 x float> %i.arj, <16 x float> %i.ark, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arn = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aro = shufflevector <16 x float> %i.arj, <16 x float> %i.ark, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arl)
  store <16 x bfloat> %i.arp, ptr %.111971770.us.i, align 1, !tbaa !18
  %i.arq = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 32
  %i.arr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arm)
  store <16 x bfloat> %i.arr, ptr %i.arq, align 1, !tbaa !18
  %i.ars = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 64
  %i.art = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arn)
  store <16 x bfloat> %i.art, ptr %i.ars, align 1, !tbaa !18
  %i.aru = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 96
  %i.arv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aro)
  store <16 x bfloat> %i.arv, ptr %i.aru, align 1, !tbaa !18
  %i.arw = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 128 ; 3 uses
  %indvars.iv.next2282.i = add nuw nsw i64 %indvars.iv2281.i, 1 ; 2 uses
  %exitcond2285.not.i = icmp eq i64 %indvars.iv.next2282.i, %wide.trip.count2284.i
  br i1 %exitcond2285.not.i, label %._crit_edge1772.us.i, label %bb.bd, !llvm.loop !82

._crit_edge1772.us.i:                             ; preds = %bb.bd
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %i.aai ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %i.aai ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %i.aai ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %i.aai ; 2 uses
  %i.asb = add nuw nsw i32 %.011911779.us.i, 16   ; 2 uses
  %i.asc = or disjoint i32 %i.asb, 15
  %i.asd = icmp slt i32 %i.asc, %2
  br i1 %i.asd, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !83

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1302.i
  %.01216.lcssa.i = phi ptr [ %i.apv, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arx, %._crit_edge1772.us.i ] ; 3 uses
  %.01213.lcssa.i = phi ptr [ %i.apz, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.ary, %._crit_edge1772.us.i ] ; 3 uses
  %.01210.lcssa.i = phi ptr [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arz, %._crit_edge1772.us.i ] ; 3 uses
  %.01207.lcssa.i = phi ptr [ %i.aqg, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.asa, %._crit_edge1772.us.i ] ; 3 uses
  %.01196.lcssa.i = phi ptr [ %i.aqu, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arw, %._crit_edge1772.us.i ] ; 3 uses
  %.01191.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.abf, %._crit_edge1772.us.i ] ; 4 uses
  %i.ase = or disjoint i32 %.01191.lcssa.i, 7
  %i.asf = icmp slt i32 %i.ase, %2
  br i1 %i.asf, label %.preheader1570.lr.ph.i, label %.preheader1573.i

.preheader1574.thread.i:                          ; preds = %.preheader1571.lr.ph.i
  %scevgep2268.i = getelementptr i8, ptr %i.apr, i64 %i.aay ; 4 uses
  %i.asg = extractelement <4 x i64> %i.apq, i64 0
  %scevgep2271.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.asg ; 2 uses
  %i.ash = extractelement <4 x i64> %i.apq, i64 1
  %scevgep2274.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.ash ; 2 uses
  %i.asi = extractelement <4 x i64> %i.apq, i64 2
  %scevgep2277.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.asi ; 2 uses
  %i.asj = extractelement <4 x i64> %i.apq, i64 3
  %scevgep2280.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.asj ; 2 uses
  br i1 %i.abk, label %.preheader1570.preheader.i, label %.preheader1573.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1574.i
  br i1 %i.aag, label %.preheader1570.us.i, label %.preheader1570.preheader.i

.preheader1570.preheader.i:                       ; preds = %.preheader1570.lr.ph.i, %.preheader1574.thread.i
  %.01216.lcssa25222539.i = phi ptr [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2271.i, %.preheader1574.thread.i ]
  %.01213.lcssa25232538.i = phi ptr [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2274.i, %.preheader1574.thread.i ]
  %.01210.lcssa25242537.i = phi ptr [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2277.i, %.preheader1574.thread.i ]
  %.01207.lcssa25252536.i = phi ptr [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2280.i, %.preheader1574.thread.i ]
  %.01196.lcssa25262535.i = phi ptr [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.aqu, %.preheader1574.thread.i ]
  %.01191.lcssa25272534.i = phi i32 [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.abf, %.preheader1574.thread.i ] ; 2 uses
  %i.ask = sub i32 %i.abg, %.01191.lcssa25272534.i ; 2 uses
  %i.asl = lshr i32 %i.ask, 1
  %i.asm = and i32 %i.asl, 2147483644
  %narrow2434.i = add nuw i32 %i.asm, 4
  %i.asn = zext i32 %narrow2434.i to i64
  %i.aso = mul nsw i64 %i.asn, %i.aak             ; 4 uses
  %scevgep2286.i = getelementptr i8, ptr %.01216.lcssa25222539.i, i64 %i.aso
  %scevgep2287.i = getelementptr i8, ptr %.01213.lcssa25232538.i, i64 %i.aso
  %scevgep2288.i = getelementptr i8, ptr %.01210.lcssa25242537.i, i64 %i.aso
  %scevgep2289.i = getelementptr i8, ptr %.01207.lcssa25252536.i, i64 %i.aso
  %i.asp = add nsw i32 %.01191.lcssa25272534.i, 8
  %i.asq = and i32 %i.ask, -8
  %i.asr = add i32 %i.asp, %i.asq
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
  %.111921801.us.i = phi i32 [ %i.atu, %._crit_edge1794.us.i ], [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ]
  %.211981800.us.i = phi ptr [ %i.atp, %._crit_edge1794.us.i ], [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ]
  %.112081799.us.i = phi ptr [ %i.att, %._crit_edge1794.us.i ], [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112111798.us.i = phi ptr [ %i.ats, %._crit_edge1794.us.i ], [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112141797.us.i = phi ptr [ %i.atr, %._crit_edge1794.us.i ], [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112171796.us.i = phi ptr [ %i.atq, %._crit_edge1794.us.i ], [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1570.us.i
  %indvars.iv2290.i = phi i64 [ 0, %.preheader1570.us.i ], [ %indvars.iv.next2291.i, %bb.be ] ; 5 uses
  %.311991792.us.i = phi ptr [ %.211981800.us.i, %.preheader1570.us.i ], [ %i.atp, %bb.be ] ; 5 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %indvars.iv2290.i
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %indvars.iv2290.i
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %indvars.iv2290.i
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %indvars.iv2290.i
  %i.asw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ass, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ast, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asu, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asv, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ata = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atb = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atc = shufflevector <8 x float> %i.asy, <8 x float> %i.asz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atd = shufflevector <8 x float> %i.asy, <8 x float> %i.asz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ate = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atf = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atg = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ath = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ati = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ate)
  store <8 x bfloat> %i.ati, ptr %.311991792.us.i, align 1, !tbaa !18
  %i.atj = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 16
  %i.atk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atf)
  store <8 x bfloat> %i.atk, ptr %i.atj, align 1, !tbaa !18
  %i.atl = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 32
  %i.atm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atg)
  store <8 x bfloat> %i.atm, ptr %i.atl, align 1, !tbaa !18
  %i.atn = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 48
  %i.ato = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ath)
  store <8 x bfloat> %i.ato, ptr %i.atn, align 1, !tbaa !18
  %i.atp = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 64 ; 3 uses
  %indvars.iv.next2291.i = add nuw nsw i64 %indvars.iv2290.i, 1 ; 2 uses
  %exitcond2294.not.i = icmp eq i64 %indvars.iv.next2291.i, %wide.trip.count2284.i
  br i1 %exitcond2294.not.i, label %._crit_edge1794.us.i, label %bb.be, !llvm.loop !84

._crit_edge1794.us.i:                             ; preds = %bb.be
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %i.aak ; 2 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %i.aak ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %i.aak ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %i.aak ; 2 uses
  %i.atu = add nuw nsw i32 %.111921801.us.i, 8    ; 3 uses
  %i.atv = or disjoint i32 %i.atu, 7
  %i.atw = icmp slt i32 %i.atv, %2
  br i1 %i.atw, label %.preheader1570.us.i, label %.preheader1573.i, !llvm.loop !85

.preheader1573.i:                                 ; preds = %._crit_edge1794.us.i, %.preheader1570.preheader.i, %.preheader1574.thread.i, %.preheader1574.i
  %.11217.lcssa.i = phi ptr [ %.01216.lcssa.i, %.preheader1574.i ], [ %scevgep2271.i, %.preheader1574.thread.i ], [ %scevgep2286.i, %.preheader1570.preheader.i ], [ %i.atq, %._crit_edge1794.us.i ] ; 2 uses
  %.11214.lcssa.i = phi ptr [ %.01213.lcssa.i, %.preheader1574.i ], [ %scevgep2274.i, %.preheader1574.thread.i ], [ %scevgep2287.i, %.preheader1570.preheader.i ], [ %i.atr, %._crit_edge1794.us.i ]
  %.11211.lcssa.i = phi ptr [ %.01210.lcssa.i, %.preheader1574.i ], [ %scevgep2277.i, %.preheader1574.thread.i ], [ %scevgep2288.i, %.preheader1570.preheader.i ], [ %i.ats, %._crit_edge1794.us.i ]
  %.11208.lcssa.i = phi ptr [ %.01207.lcssa.i, %.preheader1574.i ], [ %scevgep2280.i, %.preheader1574.thread.i ], [ %scevgep2289.i, %.preheader1570.preheader.i ], [ %i.att, %._crit_edge1794.us.i ]
  %.21198.lcssa.i = phi ptr [ %.01196.lcssa.i, %.preheader1574.i ], [ %i.aqu, %.preheader1574.thread.i ], [ %.01196.lcssa25262535.i, %.preheader1570.preheader.i ], [ %i.atp, %._crit_edge1794.us.i ] ; 2 uses
  %.11192.lcssa.i = phi i32 [ %.01191.lcssa.i, %.preheader1574.i ], [ %i.abf, %.preheader1574.thread.i ], [ %i.asr, %.preheader1570.preheader.i ], [ %i.atu, %._crit_edge1794.us.i ] ; 3 uses
  %i.atx = or disjoint i32 %.11192.lcssa.i, 3
  %i.aty = icmp slt i32 %i.atx, %2
  br i1 %i.aty, label %.preheader1569.lr.ph.i, label %._crit_edge1824.i

.preheader1569.lr.ph.i:                           ; preds = %.preheader1573.i
  br i1 %i.aag, label %.preheader1569.us.i, label %._crit_edge1853.split.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1816.us.i
  %.211931823.us.i = phi i32 [ %i.avf, %._crit_edge1816.us.i ], [ %.11192.lcssa.i, %.preheader1569.lr.ph.i ]
  %.412001822.us.i = phi ptr [ %i.ava, %._crit_edge1816.us.i ], [ %.21198.lcssa.i, %.preheader1569.lr.ph.i ]
  %.212091821.us.i = phi ptr [ %i.ave, %._crit_edge1816.us.i ], [ %.11208.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212121820.us.i = phi ptr [ %i.avd, %._crit_edge1816.us.i ], [ %.11211.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212151819.us.i = phi ptr [ %i.avc, %._crit_edge1816.us.i ], [ %.11214.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212181818.us.i = phi ptr [ %i.avb, %._crit_edge1816.us.i ], [ %.11217.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1569.us.i
  %indvars.iv2296.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2297.i, %bb.bf ] ; 5 uses
  %.512011814.us.i = phi ptr [ %.412001822.us.i, %.preheader1569.us.i ], [ %i.ava, %bb.bf ] ; 3 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.212181818.us.i, i64 %indvars.iv2296.i
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.212151819.us.i, i64 %indvars.iv2296.i
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.212121820.us.i, i64 %indvars.iv2296.i
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %.212091821.us.i, i64 %indvars.iv2296.i
  %i.aud = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.atz, <4 x i32> %i.zy, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aue = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aua, <4 x i32> %i.zy, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.auf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aub, <4 x i32> %i.zy, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aug = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.auc, <4 x i32> %i.zy, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.auh = shufflevector <4 x float> %i.aud, <4 x float> %i.aue, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aui = shufflevector <4 x float> %i.auf, <4 x float> %i.aug, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auj = shufflevector <4 x float> %i.aud, <4 x float> %i.aue, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.auk = shufflevector <4 x float> %i.auf, <4 x float> %i.aug, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aul = shufflevector <4 x float> %i.auh, <4 x float> %i.aui, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aum = shufflevector <4 x float> %i.aui, <4 x float> %i.auh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aun = shufflevector <4 x float> %i.auj, <4 x float> %i.auk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auo = shufflevector <4 x float> %i.auk, <4 x float> %i.auj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aup = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aul)
  %i.auq = bitcast <8 x bfloat> %i.aup to <2 x i64>
  %i.aur = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aum)
  %i.aus = bitcast <8 x bfloat> %i.aur to <2 x i64>
  %i.aut = shufflevector <2 x i64> %i.auq, <2 x i64> %i.aus, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.aut, ptr %.512011814.us.i, align 1, !tbaa !18
  %i.auu = getelementptr inbounds nuw i8, ptr %.512011814.us.i, i64 16
  %i.auv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aun)
  %i.auw = bitcast <8 x bfloat> %i.auv to <2 x i64>
  %i.aux = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.auo)
  %i.auy = bitcast <8 x bfloat> %i.aux to <2 x i64>
  %i.auz = shufflevector <2 x i64> %i.auw, <2 x i64> %i.auy, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.auz, ptr %i.auu, align 1, !tbaa !18
  %i.ava = getelementptr inbounds nuw i8, ptr %.512011814.us.i, i64 32 ; 3 uses
  %indvars.iv.next2297.i = add nuw nsw i64 %indvars.iv2296.i, 1 ; 2 uses
  %exitcond2300.not.i = icmp eq i64 %indvars.iv.next2297.i, %wide.trip.count2284.i
  br i1 %exitcond2300.not.i, label %._crit_edge1816.us.i, label %bb.bf, !llvm.loop !86

._crit_edge1816.us.i:                             ; preds = %bb.bf
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.212181818.us.i, i64 %i.aam ; 2 uses
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.212151819.us.i, i64 %i.aam
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.212121820.us.i, i64 %i.aam
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.212091821.us.i, i64 %i.aam
  %i.avf = add nuw nsw i32 %.211931823.us.i, 4    ; 3 uses
  %i.avg = or disjoint i32 %i.avf, 3
  %i.avh = icmp slt i32 %i.avg, %2
  br i1 %i.avh, label %.preheader1569.us.i, label %._crit_edge1824.i, !llvm.loop !87

._crit_edge1824.i:                                ; preds = %._crit_edge1816.us.i, %.preheader1573.i
  %.21218.lcssa.i = phi ptr [ %.11217.lcssa.i, %.preheader1573.i ], [ %i.avb, %._crit_edge1816.us.i ] ; 2 uses
  %.41200.lcssa.i = phi ptr [ %.21198.lcssa.i, %.preheader1573.i ], [ %i.ava, %._crit_edge1816.us.i ] ; 2 uses
  %.21193.lcssa.i = phi i32 [ %.11192.lcssa.i, %.preheader1573.i ], [ %i.avf, %._crit_edge1816.us.i ] ; 3 uses
  %i.avi = or disjoint i32 %.21193.lcssa.i, 1
  %i.avj = icmp slt i32 %i.avi, %2
  br i1 %i.avj, label %.preheader1568.lr.ph.i, label %.preheader1572.i

.preheader1568.lr.ph.i:                           ; preds = %._crit_edge1824.i
  br i1 %i.aag, label %.preheader1568.us.i, label %._crit_edge1853.split.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1836.us.i
  %.311941840.us.i = phi i32 [ %i.aww, %._crit_edge1836.us.i ], [ %.21193.lcssa.i, %.preheader1568.lr.ph.i ]
  %.612021839.us.i = phi ptr [ %.lcssa488, %._crit_edge1836.us.i ], [ %.41200.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.312191838.us.i = phi ptr [ %i.awv, %._crit_edge1836.us.i ], [ %.21218.lcssa.i, %.preheader1568.lr.ph.i ] ; 4 uses
  br i1 %i.abo, label %.epil.preheader563, label %.preheader1568.us.i.new

.preheader1568.us.i.new:                          ; preds = %.preheader1568.us.i, %.preheader1568.us.i.new
  %indvars.iv2302.i = phi i64 [ %indvars.iv.next2303.i.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ] ; 3 uses
  %.712031834.us.i = phi ptr [ %i.awi, %.preheader1568.us.i.new ], [ %.612021839.us.i, %.preheader1568.us.i ] ; 5 uses
  %niter570 = phi i64 [ %niter570.next.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ]
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i ; 2 uses
  %i.avl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avk, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avl)
  %i.avn = bitcast <8 x bfloat> %i.avm to <2 x i64>
  %i.avo = extractelement <2 x i64> %i.avn, i64 0
  store i64 %i.avo, ptr %.712031834.us.i, align 1, !tbaa !18
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %i.aaq
  %i.avq = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 8
  %i.avr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avp, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avr)
  %i.avt = bitcast <8 x bfloat> %i.avs to <2 x i64>
  %i.avu = extractelement <2 x i64> %i.avt, i64 0
  store i64 %i.avu, ptr %i.avq, align 1, !tbaa !18
  %i.avv = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 16
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 4 ; 2 uses
  %i.avy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avx, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avy)
  %i.awa = bitcast <8 x bfloat> %i.avz to <2 x i64>
  %i.awb = extractelement <2 x i64> %i.awa, i64 0
  store i64 %i.awb, ptr %i.avv, align 1, !tbaa !18
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %i.aaq
  %i.awd = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 24
  %i.awe = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awc, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awe)
  %i.awg = bitcast <8 x bfloat> %i.awf to <2 x i64>
  %i.awh = extractelement <2 x i64> %i.awg, i64 0
  store i64 %i.awh, ptr %i.awd, align 1, !tbaa !18
  %i.awi = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 32 ; 3 uses
  %indvars.iv.next2303.i.1 = add nuw nsw i64 %indvars.iv2302.i, 2 ; 2 uses
  %niter570.next.1 = add i64 %niter570, 2         ; 2 uses
  %niter570.ncmp.1 = icmp eq i64 %niter570.next.1, %unroll_iter569
  br i1 %niter570.ncmp.1, label %._crit_edge1836.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !88

._crit_edge1836.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod566.not, label %._crit_edge1836.us.i, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge1836.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2302.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2303.i.1, %._crit_edge1836.us.i.unr-lcssa ]
  %.712031834.us.i.epil.init = phi ptr [ %.612021839.us.i, %.preheader1568.us.i ], [ %i.awi, %._crit_edge1836.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod568)
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i.epil.init ; 2 uses
  %i.awk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awj, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awk)
  %i.awm = bitcast <8 x bfloat> %i.awl to <2 x i64>
  %i.awn = extractelement <2 x i64> %i.awm, i64 0
  store i64 %i.awn, ptr %.712031834.us.i.epil.init, align 1, !tbaa !18
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.awj, i64 %i.aaq
  %i.awp = getelementptr inbounds nuw i8, ptr %.712031834.us.i.epil.init, i64 8
  %i.awq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awo, <4 x i32> %i.aap, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awq)
end_hunk_2
begin_hunk_3_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.ayv = shufflevector <8 x i32> %i.ayu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ayw = mul <8 x i32> %i.ayv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.ayx = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.ayy = shufflevector <16 x i32> %i.ayx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ayz = mul <16 x i32> %i.ayy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.aza = icmp sgt i32 %2, 15
  %i.azb = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.azc = shl i32 %i.a, 4
  %i.azd = sext i32 %i.azc to i64                 ; 2 uses
  %i.aze = shl i32 %i.a, 3
  %i.azf = sext i32 %i.aze to i64                 ; 2 uses
  %i.azg = shl i32 %i.a, 2
  %i.azh = sext i32 %i.azg to i64
  %i.azi = sext i32 %i.a to i64                   ; 3 uses
  %i.azj = shl i32 %i.a, 1
  %i.azk = sext i32 %i.azj to i64
  %i.azl = icmp slt i32 %i.a, 1
  %i.azm = add i32 %2, -16                        ; 2 uses
  %i.azn = lshr i32 %i.azm, 2
  %i.azo = and i32 %i.azn, 1073741820
  %narrow2437.i = add nuw nsw i32 %i.azo, 4
  %i.azp = zext nneg i32 %narrow2437.i to i64
  %i.azq = mul nsw i64 %i.azd, %i.azp
  %i.azr = mul i32 %i.ayo, %.3.lcssa.i
  %i.azs = and i32 %i.azm, -16
  %i.azt = add nuw i32 %i.azs, 16                 ; 4 uses
  %i.azu = add i32 %2, -8
  %i.azv = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2394.i = sext i32 %3 to i64
  %i.azw = or disjoint i32 %i.azt, 7
  %i.azx = icmp slt i32 %i.azw, %2
  %wide.trip.count2365.i = zext i32 %i.a to i64   ; 19 uses
  %i.azy = add nsw i64 %wide.trip.count2365.i, -1 ; 3 uses
  %xtraiter604 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.azz = icmp ult i64 %i.azy, 3
  %unroll_iter609 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod606.not = icmp eq i64 %xtraiter604, 0
  %lcmp.mod608 = icmp ne i64 %xtraiter604, 0
  %xtraiter612 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.baa = icmp ult i64 %i.azy, 3
  %unroll_iter617 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod614.not = icmp eq i64 %xtraiter612, 0
  %lcmp.mod616 = icmp ne i64 %xtraiter612, 0
  %xtraiter620 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.bab = icmp ult i64 %i.azy, 3
  %unroll_iter625 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod622.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod624 = icmp ne i64 %xtraiter620, 0
  %min.iters.check401 = icmp ult i32 %i.a, 8
  %min.iters.check403 = icmp ult i32 %i.a, 32
  %i.bac = and i64 %wide.trip.count2365.i, 24
  %n.vec405 = and i64 %wide.trip.count2365.i, 2147483616 ; 5 uses
  %i.bad = shl nuw nsw i64 %n.vec405, 2
  %cmp.n418 = icmp eq i64 %n.vec405, %wide.trip.count2365.i
  %min.epilog.iters.check423 = icmp eq i64 %i.bac, 0
  %n.vec425 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.bae = shl nuw nsw i64 %n.vec425, 2
  %cmp.n434 = icmp eq i64 %n.vec425, %wide.trip.count2365.i
  %min.iters.check370 = icmp ult i32 %i.a, 8
  %min.iters.check372 = icmp ult i32 %i.a, 64
  %i.baf = and i64 %wide.trip.count2365.i, 56
  %n.vec374 = and i64 %wide.trip.count2365.i, 2147483584 ; 5 uses
  %i.bag = shl nuw nsw i64 %n.vec374, 1
  %cmp.n384 = icmp eq i64 %n.vec374, %wide.trip.count2365.i
  %min.epilog.iters.check389 = icmp eq i64 %i.baf, 0
  %n.vec391 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.bah = shl nuw nsw i64 %n.vec391, 1
  %cmp.n398 = icmp eq i64 %n.vec391, %wide.trip.count2365.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1301.i:                      ; preds = %._crit_edge1930.split.i, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i
  %indvars.iv2355.i = phi i64 [ %i.aoz, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2356.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.aov, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2317.i = phi i32 [ %i.aot, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2318.i, %._crit_edge1930.split.i ] ; 2 uses
  %i.bai = phi i32 [ %i.ano, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bie, %._crit_edge1930.split.i ]
  %i.baj = sext i32 %indvars.iv2317.i to i64
  %i.bak = shl nsw i64 %i.baj, 2
  %i.bal = sext i32 %indvars.iv2320.i to i64
  %i.bam = shl nsw i64 %i.bal, 2
  %i.ban = load ptr, ptr %0, align 8, !tbaa !15   ; 3 uses
  %i.bao = trunc nsw i64 %indvars.iv2355.i to i32 ; 2 uses
  %i.bap = mul i32 %i.anq, %i.bao
  %i.baq = sext i32 %i.bap to i64
  %i.bar = getelementptr inbounds [4 x i8], ptr %i.ban, i64 %i.baq ; 2 uses
  %i.bas = mul i32 %i.bai, %i.anq
  %i.bat = sext i32 %i.bas to i64
  %i.bau = getelementptr inbounds [4 x i8], ptr %i.ban, i64 %i.bat ; 2 uses
  %i.bav = insertelement <4 x i32> poison, i32 %i.bao, i64 0
  %i.baw = shufflevector <4 x i32> %i.bav, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bax = lshr <4 x i32> %i.baw, <i32 3, i32 2, i32 1, i32 4>
  %i.bay = and <4 x i32> %i.bax, <i32 1, i32 1, i32 1, i32 -1>
  %i.baz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bay)
  %i.bba = load ptr, ptr %1, align 8, !tbaa !15, !noalias !134
  %i.bbb = load i64, ptr %i.anr, align 8, !tbaa !16, !noalias !134
  %i.bbc = zext nneg i32 %i.baz to i64
  %i.bbd = mul i64 %i.bbb, %i.bbc
  %i.bbe = load i64, ptr %i.ans, align 8, !tbaa !17, !noalias !134
  %i.bbf = mul i64 %i.bbd, %i.bbe
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bba, i64 %i.bbf ; 4 uses
  br i1 %i.aoc, label %.preheader1561.lr.ph.i, label %.preheader1565.i

.preheader1561.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1301.i
  br i1 %i.aod, label %.preheader1561.us.i, label %.preheader1565.thread.i

.preheader1561.us.i:                              ; preds = %.preheader1561.lr.ph.i, %._crit_edge1858.us.i
  %.011311863.us.i = phi i32 [ %i.bch, %._crit_edge1858.us.i ], [ 0, %.preheader1561.lr.ph.i ]
  %.011361862.us.i = phi ptr [ %.lcssa458, %._crit_edge1858.us.i ], [ %i.bbg, %.preheader1561.lr.ph.i ] ; 2 uses
  %.011471861.us.i = phi ptr [ %i.bcg, %._crit_edge1858.us.i ], [ %i.bau, %.preheader1561.lr.ph.i ] ; 4 uses
  %.011511860.us.i = phi ptr [ %i.bcf, %._crit_edge1858.us.i ], [ %i.bar, %.preheader1561.lr.ph.i ] ; 4 uses
  br i1 %i.ape, label %.epil.preheader579, label %.preheader1561.us.i.new

.preheader1561.us.i.new:                          ; preds = %.preheader1561.us.i, %.preheader1561.us.i.new
  %indvars.iv2323.i = phi i64 [ %indvars.iv.next2324.i.1, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ] ; 4 uses
  %.111371856.us.i = phi ptr [ %i.bbw, %.preheader1561.us.i.new ], [ %.011361862.us.i, %.preheader1561.us.i ] ; 5 uses
  %niter586 = phi i64 [ %niter586.next.1, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ]
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.011511860.us.i, i64 %indvars.iv2323.i
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %.011471861.us.i, i64 %indvars.iv2323.i
  %i.bbj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbh, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bbk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbi, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bbl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbj)
  store <16 x bfloat> %i.bbl, ptr %.111371856.us.i, align 1, !tbaa !18
  %i.bbm = getelementptr inbounds nuw i8, ptr %.111371856.us.i, i64 32
  %i.bbn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbk)
  store <16 x bfloat> %i.bbn, ptr %i.bbm, align 1, !tbaa !18
  %i.bbo = getelementptr inbounds nuw i8, ptr %.111371856.us.i, i64 64
  %indvars.iv.next2324.i = or disjoint i64 %indvars.iv2323.i, 1 ; 2 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %.011511860.us.i, i64 %indvars.iv.next2324.i
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %.011471861.us.i, i64 %indvars.iv.next2324.i
  %i.bbr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbp, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bbs = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbq, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bbt = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbr)
  store <16 x bfloat> %i.bbt, ptr %i.bbo, align 1, !tbaa !18
  %i.bbu = getelementptr inbounds nuw i8, ptr %.111371856.us.i, i64 96
  %i.bbv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbs)
  store <16 x bfloat> %i.bbv, ptr %i.bbu, align 1, !tbaa !18
  %i.bbw = getelementptr inbounds nuw i8, ptr %.111371856.us.i, i64 128 ; 3 uses
  %indvars.iv.next2324.i.1 = add nuw nsw i64 %indvars.iv2323.i, 2 ; 2 uses
  %niter586.next.1 = add i64 %niter586, 2         ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %._crit_edge1858.us.i.unr-lcssa, label %.preheader1561.us.i.new, !llvm.loop !96

._crit_edge1858.us.i.unr-lcssa:                   ; preds = %.preheader1561.us.i.new
  br i1 %lcmp.mod582.not, label %._crit_edge1858.us.i, label %.epil.preheader579

.epil.preheader579:                               ; preds = %._crit_edge1858.us.i.unr-lcssa, %.preheader1561.us.i
  %indvars.iv2323.i.epil.init = phi i64 [ 0, %.preheader1561.us.i ], [ %indvars.iv.next2324.i.1, %._crit_edge1858.us.i.unr-lcssa ] ; 2 uses
  %.111371856.us.i.epil.init = phi ptr [ %.011361862.us.i, %.preheader1561.us.i ], [ %i.bbw, %._crit_edge1858.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %.011511860.us.i, i64 %indvars.iv2323.i.epil.init
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.011471861.us.i, i64 %indvars.iv2323.i.epil.init
  %i.bbz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbx, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bca = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bby, <16 x i32> %i.aob, <16 x i1> splat (i1 true), i32 4)
  %i.bcb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbz)
  store <16 x bfloat> %i.bcb, ptr %.111371856.us.i.epil.init, align 1, !tbaa !18
  %i.bcc = getelementptr inbounds nuw i8, ptr %.111371856.us.i.epil.init, i64 32
  %i.bcd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bca)
  store <16 x bfloat> %i.bcd, ptr %i.bcc, align 1, !tbaa !18
  %i.bce = getelementptr inbounds nuw i8, ptr %.111371856.us.i.epil.init, i64 64
  br label %._crit_edge1858.us.i

._crit_edge1858.us.i:                             ; preds = %._crit_edge1858.us.i.unr-lcssa, %.epil.preheader579
  %.lcssa458 = phi ptr [ %i.bbw, %._crit_edge1858.us.i.unr-lcssa ], [ %i.bce, %.epil.preheader579 ] ; 2 uses
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %.011511860.us.i, i64 %i.aof ; 2 uses
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %.011471861.us.i, i64 %i.aof ; 2 uses
  %i.bch = add nuw nsw i32 %.011311863.us.i, 16   ; 2 uses
  %i.bci = or disjoint i32 %i.bch, 15
  %i.bcj = icmp slt i32 %i.bci, %2
  br i1 %i.bcj, label %.preheader1561.us.i, label %.preheader1565.i, !llvm.loop !97

.preheader1565.i:                                 ; preds = %._crit_edge1858.us.i, %_ZN4ncnn3MatD2Ev.exit1301.i
  %.01151.lcssa.i = phi ptr [ %i.bar, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bcf, %._crit_edge1858.us.i ] ; 3 uses
  %.01147.lcssa.i = phi ptr [ %i.bau, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bcg, %._crit_edge1858.us.i ] ; 3 uses
  %.01136.lcssa.i = phi ptr [ %i.bbg, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %.lcssa458, %._crit_edge1858.us.i ] ; 3 uses
  %.01131.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.aox, %._crit_edge1858.us.i ] ; 4 uses
  %i.bck = or disjoint i32 %.01131.lcssa.i, 7
  %i.bcl = icmp slt i32 %i.bck, %2
  br i1 %i.bcl, label %.preheader1560.lr.ph.i, label %.preheader1564.i

.preheader1565.thread.i:                          ; preds = %.preheader1561.lr.ph.i
  %scevgep2316.i = getelementptr i8, ptr %i.ban, i64 %i.aos ; 2 uses
  %scevgep2319.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.bak ; 2 uses
  %scevgep2322.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.bam ; 2 uses
  br i1 %i.apc, label %.preheader1560.preheader.i, label %.preheader1564.i

.preheader1560.lr.ph.i:                           ; preds = %.preheader1565.i
  br i1 %i.aod, label %.preheader1560.us.i, label %.preheader1560.preheader.i

.preheader1560.preheader.i:                       ; preds = %.preheader1560.lr.ph.i, %.preheader1565.thread.i
  %.01151.lcssa25602571.i = phi ptr [ %.01151.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2319.i, %.preheader1565.thread.i ]
  %.01147.lcssa25612570.i = phi ptr [ %.01147.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2322.i, %.preheader1565.thread.i ]
  %.01136.lcssa25622569.i = phi ptr [ %.01136.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.bbg, %.preheader1565.thread.i ]
  %.01131.lcssa25632568.i = phi i32 [ %.01131.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.aox, %.preheader1565.thread.i ] ; 2 uses
  %i.bcm = sub i32 %i.aoy, %.01131.lcssa25632568.i ; 2 uses
  %i.bcn = lshr i32 %i.bcm, 1
  %i.bco = and i32 %i.bcn, 2147483644
  %narrow2436.i = add nuw i32 %i.bco, 4
  %i.bcp = zext i32 %narrow2436.i to i64
  %i.bcq = mul nsw i64 %i.bcp, %i.aoh             ; 2 uses
  %scevgep2328.i = getelementptr i8, ptr %.01151.lcssa25602571.i, i64 %i.bcq
  %scevgep2329.i = getelementptr i8, ptr %.01147.lcssa25612570.i, i64 %i.bcq
  %i.bcr = add nsw i32 %.01131.lcssa25632568.i, 8
  %i.bcs = and i32 %i.bcm, -8
  %i.bct = add i32 %i.bcr, %i.bcs
  br label %.preheader1564.i

.preheader1560.us.i:                              ; preds = %.preheader1560.lr.ph.i, %._crit_edge1874.us.i
  %.111321879.us.i = phi i32 [ %i.bdu, %._crit_edge1874.us.i ], [ %.01131.lcssa.i, %.preheader1560.lr.ph.i ]
  %.211381878.us.i = phi ptr [ %.lcssa461, %._crit_edge1874.us.i ], [ %.01136.lcssa.i, %.preheader1560.lr.ph.i ] ; 2 uses
  %.111481877.us.i = phi ptr [ %i.bdt, %._crit_edge1874.us.i ], [ %.01147.lcssa.i, %.preheader1560.lr.ph.i ] ; 4 uses
  %.111521876.us.i = phi ptr [ %i.bds, %._crit_edge1874.us.i ], [ %.01151.lcssa.i, %.preheader1560.lr.ph.i ] ; 4 uses
  br i1 %i.apf, label %.epil.preheader587, label %.preheader1560.us.i.new

.preheader1560.us.i.new:                          ; preds = %.preheader1560.us.i, %.preheader1560.us.i.new
  %indvars.iv2330.i = phi i64 [ %indvars.iv.next2331.i.1, %.preheader1560.us.i.new ], [ 0, %.preheader1560.us.i ] ; 4 uses
  %.311391872.us.i = phi ptr [ %i.bdj, %.preheader1560.us.i.new ], [ %.211381878.us.i, %.preheader1560.us.i ] ; 5 uses
  %niter594 = phi i64 [ %niter594.next.1, %.preheader1560.us.i.new ], [ 0, %.preheader1560.us.i ]
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv2330.i
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv2330.i
  %i.bcw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcu, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcv, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bcw)
  store <8 x bfloat> %i.bcy, ptr %.311391872.us.i, align 1, !tbaa !18
  %i.bcz = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 16
  %i.bda = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bcx)
  store <8 x bfloat> %i.bda, ptr %i.bcz, align 1, !tbaa !18
  %i.bdb = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 32
  %indvars.iv.next2331.i = or disjoint i64 %indvars.iv2330.i, 1 ; 2 uses
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv.next2331.i
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv.next2331.i
  %i.bde = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdc, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdd, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bde)
  store <8 x bfloat> %i.bdg, ptr %i.bdb, align 1, !tbaa !18
  %i.bdh = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 48
  %i.bdi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdf)
  store <8 x bfloat> %i.bdi, ptr %i.bdh, align 1, !tbaa !18
  %i.bdj = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 64 ; 3 uses
  %indvars.iv.next2331.i.1 = add nuw nsw i64 %indvars.iv2330.i, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge1874.us.i.unr-lcssa, label %.preheader1560.us.i.new, !llvm.loop !98

._crit_edge1874.us.i.unr-lcssa:                   ; preds = %.preheader1560.us.i.new
  br i1 %lcmp.mod590.not, label %._crit_edge1874.us.i, label %.epil.preheader587

.epil.preheader587:                               ; preds = %._crit_edge1874.us.i.unr-lcssa, %.preheader1560.us.i
  %indvars.iv2330.i.epil.init = phi i64 [ 0, %.preheader1560.us.i ], [ %indvars.iv.next2331.i.1, %._crit_edge1874.us.i.unr-lcssa ] ; 2 uses
  %.311391872.us.i.epil.init = phi ptr [ %.211381878.us.i, %.preheader1560.us.i ], [ %i.bdj, %._crit_edge1874.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bdm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdk, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdl, <8 x i32> %i.any, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdm)
  store <8 x bfloat> %i.bdo, ptr %.311391872.us.i.epil.init, align 1, !tbaa !18
  %i.bdp = getelementptr inbounds nuw i8, ptr %.311391872.us.i.epil.init, i64 16
  %i.bdq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdn)
  store <8 x bfloat> %i.bdq, ptr %i.bdp, align 1, !tbaa !18
  %i.bdr = getelementptr inbounds nuw i8, ptr %.311391872.us.i.epil.init, i64 32
  br label %._crit_edge1874.us.i

._crit_edge1874.us.i:                             ; preds = %._crit_edge1874.us.i.unr-lcssa, %.epil.preheader587
  %.lcssa461 = phi ptr [ %i.bdj, %._crit_edge1874.us.i.unr-lcssa ], [ %i.bdr, %.epil.preheader587 ] ; 2 uses
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %i.aoh ; 2 uses
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %i.aoh ; 2 uses
  %i.bdu = add nuw nsw i32 %.111321879.us.i, 8    ; 3 uses
  %i.bdv = or disjoint i32 %i.bdu, 7
  %i.bdw = icmp slt i32 %i.bdv, %2
  br i1 %i.bdw, label %.preheader1560.us.i, label %.preheader1564.i, !llvm.loop !99

.preheader1564.i:                                 ; preds = %._crit_edge1874.us.i, %.preheader1560.preheader.i, %.preheader1565.thread.i, %.preheader1565.i
  %.11152.lcssa.i = phi ptr [ %.01151.lcssa.i, %.preheader1565.i ], [ %scevgep2319.i, %.preheader1565.thread.i ], [ %scevgep2328.i, %.preheader1560.preheader.i ], [ %i.bds, %._crit_edge1874.us.i ] ; 2 uses
  %.11148.lcssa.i = phi ptr [ %.01147.lcssa.i, %.preheader1565.i ], [ %scevgep2322.i, %.preheader1565.thread.i ], [ %scevgep2329.i, %.preheader1560.preheader.i ], [ %i.bdt, %._crit_edge1874.us.i ] ; 2 uses
  %.21138.lcssa.i = phi ptr [ %.01136.lcssa.i, %.preheader1565.i ], [ %i.bbg, %.preheader1565.thread.i ], [ %.01136.lcssa25622569.i, %.preheader1560.preheader.i ], [ %.lcssa461, %._crit_edge1874.us.i ] ; 2 uses
  %.11132.lcssa.i = phi i32 [ %.01131.lcssa.i, %.preheader1565.i ], [ %i.aox, %.preheader1565.thread.i ], [ %i.bct, %.preheader1560.preheader.i ], [ %i.bdu, %._crit_edge1874.us.i ] ; 3 uses
  %i.bdx = or disjoint i32 %.11132.lcssa.i, 3
  %i.bdy = icmp slt i32 %i.bdx, %2
  br i1 %i.bdy, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %.preheader1564.i
  br i1 %i.aod, label %.preheader1559.us.i, label %._crit_edge1930.split.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1890.us.i
  %.211331895.us.i = phi i32 [ %i.bff, %._crit_edge1890.us.i ], [ %.11132.lcssa.i, %.preheader1559.lr.ph.i ]
  %.411401894.us.i = phi ptr [ %.lcssa465, %._crit_edge1890.us.i ], [ %.21138.lcssa.i, %.preheader1559.lr.ph.i ] ; 2 uses
  %.211491893.us.i = phi ptr [ %i.bfe, %._crit_edge1890.us.i ], [ %.11148.lcssa.i, %.preheader1559.lr.ph.i ] ; 4 uses
  %.211531892.us.i = phi ptr [ %i.bfd, %._crit_edge1890.us.i ], [ %.11152.lcssa.i, %.preheader1559.lr.ph.i ] ; 4 uses
  br i1 %i.apg, label %.epil.preheader595, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2337.i = phi i64 [ %indvars.iv.next2338.i.1, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 4 uses
  %.511411888.us.i = phi ptr [ %i.bes, %.preheader1559.us.i.new ], [ %.411401894.us.i, %.preheader1559.us.i ] ; 3 uses
  %niter602 = phi i64 [ %niter602.next.1, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv2337.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv2337.i
  %i.beb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bdz, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bec = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bea, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bed = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.beb)
  %i.bee = bitcast <8 x bfloat> %i.bed to <2 x i64>
  %i.bef = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bec)
  %i.beg = bitcast <8 x bfloat> %i.bef to <2 x i64>
  %i.beh = shufflevector <2 x i64> %i.bee, <2 x i64> %i.beg, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.beh, ptr %.511411888.us.i, align 1, !tbaa !18
  %i.bei = getelementptr inbounds nuw i8, ptr %.511411888.us.i, i64 16
  %indvars.iv.next2338.i = or disjoint i64 %indvars.iv2337.i, 1 ; 2 uses
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv.next2338.i
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv.next2338.i
  %i.bel = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bej, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bem = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bek, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ben = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bel)
  %i.beo = bitcast <8 x bfloat> %i.ben to <2 x i64>
  %i.bep = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bem)
  %i.beq = bitcast <8 x bfloat> %i.bep to <2 x i64>
  %i.ber = shufflevector <2 x i64> %i.beo, <2 x i64> %i.beq, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ber, ptr %i.bei, align 1, !tbaa !18
  %i.bes = getelementptr inbounds nuw i8, ptr %.511411888.us.i, i64 32 ; 3 uses
  %indvars.iv.next2338.i.1 = add nuw nsw i64 %indvars.iv2337.i, 2 ; 2 uses
  %niter602.next.1 = add i64 %niter602, 2         ; 2 uses
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge1890.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !100

._crit_edge1890.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod598.not, label %._crit_edge1890.us.i, label %.epil.preheader595

.epil.preheader595:                               ; preds = %._crit_edge1890.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2337.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2338.i.1, %._crit_edge1890.us.i.unr-lcssa ] ; 2 uses
  %.511411888.us.i.epil.init = phi ptr [ %.411401894.us.i, %.preheader1559.us.i ], [ %i.bes, %._crit_edge1890.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod600)
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv2337.i.epil.init
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv2337.i.epil.init
  %i.bev = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bet, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bew = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.beu, <4 x i32> %i.anv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bex = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bev)
  %i.bey = bitcast <8 x bfloat> %i.bex to <2 x i64>
  %i.bez = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bew)
  %i.bfa = bitcast <8 x bfloat> %i.bez to <2 x i64>
  %i.bfb = shufflevector <2 x i64> %i.bey, <2 x i64> %i.bfa, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bfb, ptr %.511411888.us.i.epil.init, align 1, !tbaa !18
  %i.bfc = getelementptr inbounds nuw i8, ptr %.511411888.us.i.epil.init, i64 16
  br label %._crit_edge1890.us.i

._crit_edge1890.us.i:                             ; preds = %._crit_edge1890.us.i.unr-lcssa, %.epil.preheader595
  %.lcssa465 = phi ptr [ %i.bes, %._crit_edge1890.us.i.unr-lcssa ], [ %i.bfc, %.epil.preheader595 ] ; 2 uses
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %i.aoj ; 2 uses
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %i.aoj ; 2 uses
  %i.bff = add nuw nsw i32 %.211331895.us.i, 4    ; 3 uses
  %i.bfg = or disjoint i32 %i.bff, 3
  %i.bfh = icmp slt i32 %i.bfg, %2
  br i1 %i.bfh, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !101

.preheader1563.i:                                 ; preds = %._crit_edge1890.us.i, %.preheader1564.i
  %.21153.lcssa.i = phi ptr [ %.11152.lcssa.i, %.preheader1564.i ], [ %i.bfd, %._crit_edge1890.us.i ] ; 2 uses
  %.21149.lcssa.i = phi ptr [ %.11148.lcssa.i, %.preheader1564.i ], [ %i.bfe, %._crit_edge1890.us.i ] ; 2 uses
  %.41140.lcssa.i = phi ptr [ %.21138.lcssa.i, %.preheader1564.i ], [ %.lcssa465, %._crit_edge1890.us.i ] ; 2 uses
  %.21133.lcssa.i = phi i32 [ %.11132.lcssa.i, %.preheader1564.i ], [ %i.bff, %._crit_edge1890.us.i ] ; 3 uses
  %i.bfi = or disjoint i32 %.21133.lcssa.i, 1
  %i.bfj = icmp slt i32 %i.bfi, %2
  br i1 %i.bfj, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.aod, label %iter.check351, label %._crit_edge1930.split.i

iter.check351:                                    ; preds = %.preheader1558.lr.ph.i, %._crit_edge1910.us.i
  %.311341915.us.i = phi i32 [ %i.bgz, %._crit_edge1910.us.i ], [ %.21133.lcssa.i, %.preheader1558.lr.ph.i ]
  %.611421914.us.i = phi ptr [ %.lcssa268, %._crit_edge1910.us.i ], [ %.41140.lcssa.i, %.preheader1558.lr.ph.i ] ; 5 uses
  %.311501913.us.i = phi ptr [ %i.bgy, %._crit_edge1910.us.i ], [ %.21149.lcssa.i, %.preheader1558.lr.ph.i ] ; 4 uses
  %.311541912.us.i = phi ptr [ %i.bgx, %._crit_edge1910.us.i ], [ %.21153.lcssa.i, %.preheader1558.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check334, label %vec.epilog.scalar.ph352.preheader, label %vector.main.loop.iter.check335

vector.main.loop.iter.check335:                   ; preds = %iter.check351
  br i1 %min.iters.check336, label %vec.epilog.ph355, label %vector.ph337

vector.ph337:                                     ; preds = %vector.main.loop.iter.check335
  %i.bfk = getelementptr i8, ptr %.611421914.us.i, i64 %i.api ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next347, %vector.body339 ] ; 4 uses
  %i.bfl = shl i64 %index340, 3
  %next.gep341 = getelementptr i8, ptr %.611421914.us.i, i64 %i.bfl
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.311541912.us.i, i64 %index340 ; 2 uses
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %.311501913.us.i, i64 %index340 ; 2 uses
  %wide.load342 = load <16 x i32>, ptr %i.bfm, align 4, !tbaa !22
  %wide.load343 = load <16 x i32>, ptr %i.bfn, align 4, !tbaa !22
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.aok
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.bfn, i64 %i.aok
  %wide.load344 = load <16 x i32>, ptr %i.bfo, align 4, !tbaa !22
  %wide.load345 = load <16 x i32>, ptr %i.bfp, align 4, !tbaa !22
  %i.bfq = shufflevector <16 x i32> %wide.load342, <16 x i32> %wide.load343, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfr = lshr <32 x i32> %i.bfq, splat (i32 16)
  %i.bfs = trunc nuw <32 x i32> %i.bfr to <32 x i16>
  %i.bft = shufflevector <16 x i32> %wide.load344, <16 x i32> %wide.load345, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfu = lshr <32 x i32> %i.bft, splat (i32 16)
  %i.bfv = trunc nuw <32 x i32> %i.bfu to <32 x i16>
  %interleaved.vec346 = shufflevector <32 x i16> %i.bfs, <32 x i16> %i.bfv, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec346, ptr %next.gep341, align 2, !tbaa !24
  %index.next347 = add nuw i64 %index340, 16      ; 2 uses
  %i.bfw = icmp eq i64 %index.next347, %n.vec338
  br i1 %i.bfw, label %middle.block348, label %vector.body339, !llvm.loop !102

middle.block348:                                  ; preds = %vector.body339
end_hunk_3
begin_hunk_4_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %interleaved.vec = trunc nuw <32 x i32> %i.bhi to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bhj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bhj, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1926.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bhk = getelementptr i8, ptr %.911451928.i, i64 %i.apm ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index325 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next330, %vec.epilog.vector.body ] ; 4 uses
  %i.bhl = shl i64 %index325, 2
  %next.gep326 = getelementptr i8, ptr %.911451928.i, i64 %i.bhl
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %index325
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.31150.lcssa.i, i64 %index325
  %wide.load327 = load <4 x i32>, ptr %i.bhm, align 4, !tbaa !22
  %wide.load328 = load <4 x i32>, ptr %i.bhn, align 4, !tbaa !22
  %i.bho = shufflevector <4 x i32> %wide.load327, <4 x i32> %wide.load328, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bhp = lshr <8 x i32> %i.bho, splat (i32 16)
  %interleaved.vec329 = trunc nuw <8 x i32> %i.bhp to <8 x i16>
  store <8 x i16> %interleaved.vec329, ptr %next.gep326, align 2, !tbaa !24
  %index.next330 = add nuw i64 %index325, 4       ; 2 uses
  %i.bhq = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.bhq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n331, label %._crit_edge1926.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2349.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec324, %vec.epilog.middle.block ]
  %.1011461924.i.ph = phi ptr [ %.911451928.i, %iter.check ], [ %i.bhd, %vec.epilog.iter.check ], [ %i.bhk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1926.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa272 = phi ptr [ %i.bhk, %vec.epilog.middle.block ], [ %i.bhd, %middle.block ], [ %i.bib, %vec.epilog.scalar.ph ]
  %i.bhr = add nuw nsw i32 %.411351929.i, 1       ; 2 uses
  %exitcond2354.not.i = icmp eq i32 %i.bhr, %2
  br i1 %exitcond2354.not.i, label %._crit_edge1930.split.i, label %iter.check, !llvm.loop !108

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2349.i = phi i64 [ %indvars.iv.next2350.i, %vec.epilog.scalar.ph ], [ %indvars.iv2349.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.1011461924.i = phi ptr [ %i.bib, %vec.epilog.scalar.ph ], [ %.1011461924.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %indvars.iv2349.i
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.31150.lcssa.i, i64 %indvars.iv2349.i
  %i.bhu = load i32, ptr %i.bhs, align 4, !tbaa !22
  %i.bhv = lshr i32 %i.bhu, 16
  %i.bhw = trunc nuw i32 %i.bhv to i16
  store i16 %i.bhw, ptr %.1011461924.i, align 2, !tbaa !24
  %i.bhx = load i32, ptr %i.bht, align 4, !tbaa !22
  %i.bhy = lshr i32 %i.bhx, 16
  %i.bhz = trunc nuw i32 %i.bhy to i16
  %i.bia = getelementptr inbounds nuw i8, ptr %.1011461924.i, i64 2
  store i16 %i.bhz, ptr %i.bia, align 2, !tbaa !24
  %i.bib = getelementptr inbounds nuw i8, ptr %.1011461924.i, i64 4 ; 2 uses
  %indvars.iv.next2350.i = add nuw nsw i64 %indvars.iv2349.i, 1 ; 2 uses
  %exitcond2353.not.i = icmp eq i64 %indvars.iv.next2350.i, %wide.trip.count2326.i
  br i1 %exitcond2353.not.i, label %._crit_edge1926.i, label %vec.epilog.scalar.ph, !llvm.loop !109

._crit_edge1930.split.i:                          ; preds = %._crit_edge1926.i, %.preheader1562.i, %.preheader1558.lr.ph.i, %.preheader1559.lr.ph.i
  %indvars.iv.next2356.i = add nuw nsw i64 %indvars.iv2355.i, 2 ; 3 uses
  %i.bic = or disjoint i64 %indvars.iv.next2356.i, 1 ; 2 uses
  %i.bid = icmp slt i64 %i.bic, %i.apa
  %indvars.iv.next2318.i = add i32 %indvars.iv2317.i, %i.aou
  %indvars.iv.next2321.i = add i32 %indvars.iv2320.i, %i.aou
  %i.bie = trunc nsw i64 %i.bic to i32
  br i1 %i.bid, label %_ZN4ncnn3MatD2Ev.exit1301.i, label %.preheader1556.loopexit.i, !llvm.loop !110

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1994.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv2391.i = phi i64 [ %i.azv, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2392.i, %._crit_edge1994.split.i ] ; 2 uses
  %indvars.iv2359.i = phi i32 [ %i.azr, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2360.i, %._crit_edge1994.split.i ] ; 2 uses
  %i.bif = sext i32 %indvars.iv2359.i to i64
  %i.big = shl nsw i64 %i.bif, 2
  %i.bih = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.bii = trunc nsw i64 %indvars.iv2391.i to i32 ; 3 uses
  %i.bij = mul i32 %i.ayo, %i.bii
  %i.bik = sext i32 %i.bij to i64
  %i.bil = getelementptr inbounds [4 x i8], ptr %i.bih, i64 %i.bik ; 2 uses
  %i.bim = lshr i32 %i.bii, 4
  %i.bin = insertelement <4 x i32> poison, i32 %i.bii, i64 0
  %i.bio = shufflevector <4 x i32> %i.bin, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bip = lshr <4 x i32> %i.bio, <i32 0, i32 3, i32 2, i32 1>
  %i.biq = and <4 x i32> %i.bip, splat (i32 1)
  %i.bir = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.biq)
  %op.rdx = add nuw nsw i32 %i.bir, %i.bim
  %i.bis = load ptr, ptr %1, align 8, !tbaa !15, !noalias !135
  %i.bit = load i64, ptr %i.ayp, align 8, !tbaa !16, !noalias !135
  %i.biu = zext nneg i32 %op.rdx to i64
  %i.biv = load i64, ptr %i.ayq, align 8, !tbaa !17, !noalias !135
  %i.biw = mul i64 %i.biv, %i.bit
  %i.bix = mul i64 %i.biw, %i.biu
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bis, i64 %i.bix ; 4 uses
  br i1 %i.aza, label %.preheader1551.lr.ph.i, label %.preheader1555.i

.preheader1551.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.azb, label %.preheader1551.us.i, label %.preheader1555.thread.i

.preheader1551.us.i:                              ; preds = %.preheader1551.lr.ph.i, %._crit_edge1935.us.i
  %.011011939.us.i = phi i32 [ %i.bjx, %._crit_edge1935.us.i ], [ 0, %.preheader1551.lr.ph.i ]
  %.011061938.us.i = phi ptr [ %.lcssa, %._crit_edge1935.us.i ], [ %i.biy, %.preheader1551.lr.ph.i ] ; 2 uses
  %.011111937.us.i = phi ptr [ %i.bjw, %._crit_edge1935.us.i ], [ %i.bil, %.preheader1551.lr.ph.i ] ; 6 uses
  br i1 %i.azz, label %.epil.preheader603, label %.preheader1551.us.i.new

.preheader1551.us.i.new:                          ; preds = %.preheader1551.us.i, %.preheader1551.us.i.new
  %indvars.iv2362.i = phi i64 [ %indvars.iv.next2363.i.3, %.preheader1551.us.i.new ], [ 0, %.preheader1551.us.i ] ; 5 uses
  %.111071933.us.i = phi ptr [ %i.bjr, %.preheader1551.us.i.new ], [ %.011061938.us.i, %.preheader1551.us.i ] ; 5 uses
  %niter610 = phi i64 [ %niter610.next.3, %.preheader1551.us.i.new ], [ 0, %.preheader1551.us.i ]
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bja = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biz, <16 x i32> %i.ayz, <16 x i1> splat (i1 true), i32 4)
  %i.bjb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bja)
  store <16 x bfloat> %i.bjb, ptr %.111071933.us.i, align 1, !tbaa !18
  %i.bjc = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 32
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 4
  %i.bjf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bje, <16 x i32> %i.ayz, <16 x i1> splat (i1 true), i32 4)
  %i.bjg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjf)
  store <16 x bfloat> %i.bjg, ptr %i.bjc, align 1, !tbaa !18
  %i.bjh = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 64
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 8
  %i.bjk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjj, <16 x i32> %i.ayz, <16 x i1> splat (i1 true), i32 4)
  %i.bjl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjk)
  store <16 x bfloat> %i.bjl, ptr %i.bjh, align 1, !tbaa !18
  %i.bjm = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 96
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 12
  %i.bjp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjo, <16 x i32> %i.ayz, <16 x i1> splat (i1 true), i32 4)
  %i.bjq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjp)
  store <16 x bfloat> %i.bjq, ptr %i.bjm, align 1, !tbaa !18
  %i.bjr = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 128 ; 3 uses
  %indvars.iv.next2363.i.3 = add nuw nsw i64 %indvars.iv2362.i, 4 ; 2 uses
  %niter610.next.3 = add i64 %niter610, 4         ; 2 uses
  %niter610.ncmp.3 = icmp eq i64 %niter610.next.3, %unroll_iter609
  br i1 %niter610.ncmp.3, label %._crit_edge1935.us.i.unr-lcssa, label %.preheader1551.us.i.new, !llvm.loop !113

._crit_edge1935.us.i.unr-lcssa:                   ; preds = %.preheader1551.us.i.new
  br i1 %lcmp.mod606.not, label %._crit_edge1935.us.i, label %.epil.preheader603

.epil.preheader603:                               ; preds = %._crit_edge1935.us.i.unr-lcssa, %.preheader1551.us.i
  %indvars.iv2362.i.epil.init = phi i64 [ 0, %.preheader1551.us.i ], [ %indvars.iv.next2363.i.3, %._crit_edge1935.us.i.unr-lcssa ]
  %.111071933.us.i.epil.init = phi ptr [ %.011061938.us.i, %.preheader1551.us.i ], [ %i.bjr, %._crit_edge1935.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod608)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader603
  %indvars.iv2362.i.epil = phi i64 [ %indvars.iv2362.i.epil.init, %.epil.preheader603 ], [ %indvars.iv.next2363.i.epil, %bb.bh ] ; 2 uses
  %.111071933.us.i.epil = phi ptr [ %.111071933.us.i.epil.init, %.epil.preheader603 ], [ %i.bjv, %bb.bh ] ; 2 uses
  %epil.iter605 = phi i64 [ 0, %.epil.preheader603 ], [ %epil.iter605.next, %bb.bh ]
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i.epil
  %i.bjt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bjs, <16 x i32> %i.ayz, <16 x i1> splat (i1 true), i32 4)
  %i.bju = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjt)
  store <16 x bfloat> %i.bju, ptr %.111071933.us.i.epil, align 1, !tbaa !18
  %i.bjv = getelementptr inbounds nuw i8, ptr %.111071933.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2363.i.epil = add nuw nsw i64 %indvars.iv2362.i.epil, 1
  %epil.iter605.next = add i64 %epil.iter605, 1   ; 2 uses
  %epil.iter605.cmp.not = icmp eq i64 %epil.iter605.next, %xtraiter604
  br i1 %epil.iter605.cmp.not, label %._crit_edge1935.us.i, label %bb.bh, !llvm.loop !114

._crit_edge1935.us.i:                             ; preds = %bb.bh, %._crit_edge1935.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.bjr, %._crit_edge1935.us.i.unr-lcssa ], [ %i.bjv, %bb.bh ] ; 2 uses
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %i.azd ; 2 uses
  %i.bjx = add nuw nsw i32 %.011011939.us.i, 16   ; 2 uses
  %i.bjy = or disjoint i32 %i.bjx, 15
  %i.bjz = icmp slt i32 %i.bjy, %2
  br i1 %i.bjz, label %.preheader1551.us.i, label %.preheader1555.i, !llvm.loop !115

.preheader1555.i:                                 ; preds = %._crit_edge1935.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.01111.lcssa.i = phi ptr [ %i.bil, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bjw, %._crit_edge1935.us.i ] ; 3 uses
  %.01106.lcssa.i = phi ptr [ %i.biy, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1935.us.i ] ; 3 uses
  %.01101.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.azt, %._crit_edge1935.us.i ] ; 4 uses
  %i.bka = or disjoint i32 %.01101.lcssa.i, 7
  %i.bkb = icmp slt i32 %i.bka, %2
  br i1 %i.bkb, label %.preheader1550.lr.ph.i, label %.preheader1554.i

.preheader1555.thread.i:                          ; preds = %.preheader1551.lr.ph.i
  %scevgep2358.i = getelementptr i8, ptr %i.bih, i64 %i.azq
  %scevgep2361.i = getelementptr i8, ptr %scevgep2358.i, i64 %i.big ; 2 uses
  br i1 %i.azx, label %.preheader1550.preheader.i, label %.preheader1554.i

.preheader1550.lr.ph.i:                           ; preds = %.preheader1555.i
  br i1 %i.azb, label %.preheader1550.us.i, label %.preheader1550.preheader.i

.preheader1550.preheader.i:                       ; preds = %.preheader1550.lr.ph.i, %.preheader1555.thread.i
  %.01111.lcssa25962604.i = phi ptr [ %.01111.lcssa.i, %.preheader1550.lr.ph.i ], [ %scevgep2361.i, %.preheader1555.thread.i ]
  %.01106.lcssa25972603.i = phi ptr [ %.01106.lcssa.i, %.preheader1550.lr.ph.i ], [ %i.biy, %.preheader1555.thread.i ]
  %.01101.lcssa25982602.i = phi i32 [ %.01101.lcssa.i, %.preheader1550.lr.ph.i ], [ %i.azt, %.preheader1555.thread.i ] ; 2 uses
  %i.bkc = sub i32 %i.azu, %.01101.lcssa25982602.i ; 2 uses
  %i.bkd = lshr i32 %i.bkc, 1
  %i.bke = and i32 %i.bkd, 2147483644
  %narrow2438.i = add nuw i32 %i.bke, 4
  %i.bkf = zext i32 %narrow2438.i to i64
  %i.bkg = mul nsw i64 %i.bkf, %i.azf
  %scevgep2367.i = getelementptr i8, ptr %.01111.lcssa25962604.i, i64 %i.bkg
  %i.bkh = add nsw i32 %.01101.lcssa25982602.i, 8
  %i.bki = and i32 %i.bkc, -8
  %i.bkj = add i32 %i.bkh, %i.bki
  br label %.preheader1554.i

.preheader1550.us.i:                              ; preds = %.preheader1550.lr.ph.i, %._crit_edge1948.us.i
  %.111021952.us.i = phi i32 [ %i.bli, %._crit_edge1948.us.i ], [ %.01101.lcssa.i, %.preheader1550.lr.ph.i ]
  %.211081951.us.i = phi ptr [ %.lcssa448, %._crit_edge1948.us.i ], [ %.01106.lcssa.i, %.preheader1550.lr.ph.i ] ; 2 uses
  %.111121950.us.i = phi ptr [ %i.blh, %._crit_edge1948.us.i ], [ %.01111.lcssa.i, %.preheader1550.lr.ph.i ] ; 6 uses
  br i1 %i.baa, label %.epil.preheader611, label %.preheader1550.us.i.new

.preheader1550.us.i.new:                          ; preds = %.preheader1550.us.i, %.preheader1550.us.i.new
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i.3, %.preheader1550.us.i.new ], [ 0, %.preheader1550.us.i ] ; 5 uses
  %.311091946.us.i = phi ptr [ %i.blc, %.preheader1550.us.i.new ], [ %.211081951.us.i, %.preheader1550.us.i ] ; 5 uses
  %niter618 = phi i64 [ %niter618.next.3, %.preheader1550.us.i.new ], [ 0, %.preheader1550.us.i ]
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bkk, <8 x i32> %i.ayw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkl)
  store <8 x bfloat> %i.bkm, ptr %.311091946.us.i, align 1, !tbaa !18
  %i.bkn = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 16
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 4
  %i.bkq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bkp, <8 x i32> %i.ayw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkq)
  store <8 x bfloat> %i.bkr, ptr %i.bkn, align 1, !tbaa !18
  %i.bks = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 32
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 8
  %i.bkv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bku, <8 x i32> %i.ayw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkv)
  store <8 x bfloat> %i.bkw, ptr %i.bks, align 1, !tbaa !18
  %i.bkx = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 48
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 12
  %i.bla = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bkz, <8 x i32> %i.ayw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bla)
  store <8 x bfloat> %i.blb, ptr %i.bkx, align 1, !tbaa !18
  %i.blc = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 64 ; 3 uses
  %indvars.iv.next2369.i.3 = add nuw nsw i64 %indvars.iv2368.i, 4 ; 2 uses
  %niter618.next.3 = add i64 %niter618, 4         ; 2 uses
  %niter618.ncmp.3 = icmp eq i64 %niter618.next.3, %unroll_iter617
  br i1 %niter618.ncmp.3, label %._crit_edge1948.us.i.unr-lcssa, label %.preheader1550.us.i.new, !llvm.loop !116

._crit_edge1948.us.i.unr-lcssa:                   ; preds = %.preheader1550.us.i.new
  br i1 %lcmp.mod614.not, label %._crit_edge1948.us.i, label %.epil.preheader611

.epil.preheader611:                               ; preds = %._crit_edge1948.us.i.unr-lcssa, %.preheader1550.us.i
  %indvars.iv2368.i.epil.init = phi i64 [ 0, %.preheader1550.us.i ], [ %indvars.iv.next2369.i.3, %._crit_edge1948.us.i.unr-lcssa ]
  %.311091946.us.i.epil.init = phi ptr [ %.211081951.us.i, %.preheader1550.us.i ], [ %i.blc, %._crit_edge1948.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod616)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader611
  %indvars.iv2368.i.epil = phi i64 [ %indvars.iv2368.i.epil.init, %.epil.preheader611 ], [ %indvars.iv.next2369.i.epil, %bb.bi ] ; 2 uses
  %.311091946.us.i.epil = phi ptr [ %.311091946.us.i.epil.init, %.epil.preheader611 ], [ %i.blg, %bb.bi ] ; 2 uses
  %epil.iter613 = phi i64 [ 0, %.epil.preheader611 ], [ %epil.iter613.next, %bb.bi ]
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i.epil
  %i.ble = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bld, <8 x i32> %i.ayw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ble)
  store <8 x bfloat> %i.blf, ptr %.311091946.us.i.epil, align 1, !tbaa !18
  %i.blg = getelementptr inbounds nuw i8, ptr %.311091946.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2369.i.epil = add nuw nsw i64 %indvars.iv2368.i.epil, 1
  %epil.iter613.next = add i64 %epil.iter613, 1   ; 2 uses
  %epil.iter613.cmp.not = icmp eq i64 %epil.iter613.next, %xtraiter612
  br i1 %epil.iter613.cmp.not, label %._crit_edge1948.us.i, label %bb.bi, !llvm.loop !117

._crit_edge1948.us.i:                             ; preds = %bb.bi, %._crit_edge1948.us.i.unr-lcssa
  %.lcssa448 = phi ptr [ %i.blc, %._crit_edge1948.us.i.unr-lcssa ], [ %i.blg, %bb.bi ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %i.azf ; 2 uses
  %i.bli = add nuw nsw i32 %.111021952.us.i, 8    ; 3 uses
  %i.blj = or disjoint i32 %i.bli, 7
  %i.blk = icmp slt i32 %i.blj, %2
  br i1 %i.blk, label %.preheader1550.us.i, label %.preheader1554.i, !llvm.loop !118

.preheader1554.i:                                 ; preds = %._crit_edge1948.us.i, %.preheader1550.preheader.i, %.preheader1555.thread.i, %.preheader1555.i
  %.11112.lcssa.i = phi ptr [ %.01111.lcssa.i, %.preheader1555.i ], [ %scevgep2361.i, %.preheader1555.thread.i ], [ %scevgep2367.i, %.preheader1550.preheader.i ], [ %i.blh, %._crit_edge1948.us.i ] ; 2 uses
  %.21108.lcssa.i = phi ptr [ %.01106.lcssa.i, %.preheader1555.i ], [ %i.biy, %.preheader1555.thread.i ], [ %.01106.lcssa25972603.i, %.preheader1550.preheader.i ], [ %.lcssa448, %._crit_edge1948.us.i ] ; 2 uses
  %.11102.lcssa.i = phi i32 [ %.01101.lcssa.i, %.preheader1555.i ], [ %i.azt, %.preheader1555.thread.i ], [ %i.bkj, %.preheader1550.preheader.i ], [ %i.bli, %._crit_edge1948.us.i ] ; 3 uses
  %i.bll = or disjoint i32 %.11102.lcssa.i, 3
  %i.blm = icmp slt i32 %i.bll, %2
  br i1 %i.blm, label %.preheader1549.lr.ph.i, label %.preheader1553.i

.preheader1549.lr.ph.i:                           ; preds = %.preheader1554.i
  br i1 %i.azb, label %.preheader1549.us.i, label %._crit_edge1994.split.i

.preheader1549.us.i:                              ; preds = %.preheader1549.lr.ph.i, %._crit_edge1961.us.i
  %.211031965.us.i = phi i32 [ %i.bmv, %._crit_edge1961.us.i ], [ %.11102.lcssa.i, %.preheader1549.lr.ph.i ]
  %.411101964.us.i = phi ptr [ %.lcssa451, %._crit_edge1961.us.i ], [ %.21108.lcssa.i, %.preheader1549.lr.ph.i ] ; 2 uses
  %.211131963.us.i = phi ptr [ %i.bmu, %._crit_edge1961.us.i ], [ %.11112.lcssa.i, %.preheader1549.lr.ph.i ] ; 6 uses
  br i1 %i.bab, label %.epil.preheader619, label %.preheader1549.us.i.new

.preheader1549.us.i.new:                          ; preds = %.preheader1549.us.i, %.preheader1549.us.i.new
  %indvars.iv2374.i = phi i64 [ %indvars.iv.next2375.i.3, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ] ; 5 uses
  %.51959.us.i = phi ptr [ %i.bmn, %.preheader1549.us.i.new ], [ %.411101964.us.i, %.preheader1549.us.i ] ; 5 uses
  %niter626 = phi i64 [ %niter626.next.3, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ]
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.blo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bln, <4 x i32> %i.ayt, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.blo)
  %i.blq = bitcast <8 x bfloat> %i.blp to <2 x i64>
  %i.blr = extractelement <2 x i64> %i.blq, i64 0
  store i64 %i.blr, ptr %.51959.us.i, align 1, !tbaa !18
  %i.bls = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 8
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 4
  %i.blv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.blu, <4 x i32> %i.ayt, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.blv)
  %i.blx = bitcast <8 x bfloat> %i.blw to <2 x i64>
  %i.bly = extractelement <2 x i64> %i.blx, i64 0
  store i64 %i.bly, ptr %i.bls, align 1, !tbaa !18
  %i.blz = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 16
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8
  %i.bmc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmb, <4 x i32> %i.ayt, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmc)
  %i.bme = bitcast <8 x bfloat> %i.bmd to <2 x i64>
  %i.bmf = extractelement <2 x i64> %i.bme, i64 0
  store i64 %i.bmf, ptr %i.blz, align 1, !tbaa !18
  %i.bmg = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 24
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 12
  %i.bmj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmi, <4 x i32> %i.ayt, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmj)
  %i.bml = bitcast <8 x bfloat> %i.bmk to <2 x i64>
  %i.bmm = extractelement <2 x i64> %i.bml, i64 0
  store i64 %i.bmm, ptr %i.bmg, align 1, !tbaa !18
  %i.bmn = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 32 ; 3 uses
  %indvars.iv.next2375.i.3 = add nuw nsw i64 %indvars.iv2374.i, 4 ; 2 uses
  %niter626.next.3 = add i64 %niter626, 4         ; 2 uses
  %niter626.ncmp.3 = icmp eq i64 %niter626.next.3, %unroll_iter625
  br i1 %niter626.ncmp.3, label %._crit_edge1961.us.i.unr-lcssa, label %.preheader1549.us.i.new, !llvm.loop !119

._crit_edge1961.us.i.unr-lcssa:                   ; preds = %.preheader1549.us.i.new
  br i1 %lcmp.mod622.not, label %._crit_edge1961.us.i, label %.epil.preheader619

.epil.preheader619:                               ; preds = %._crit_edge1961.us.i.unr-lcssa, %.preheader1549.us.i
  %indvars.iv2374.i.epil.init = phi i64 [ 0, %.preheader1549.us.i ], [ %indvars.iv.next2375.i.3, %._crit_edge1961.us.i.unr-lcssa ]
  %.51959.us.i.epil.init = phi ptr [ %.411101964.us.i, %.preheader1549.us.i ], [ %i.bmn, %._crit_edge1961.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod624)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader619
  %indvars.iv2374.i.epil = phi i64 [ %indvars.iv2374.i.epil.init, %.epil.preheader619 ], [ %indvars.iv.next2375.i.epil, %bb.bj ] ; 2 uses
  %.51959.us.i.epil = phi ptr [ %.51959.us.i.epil.init, %.epil.preheader619 ], [ %i.bmt, %bb.bj ] ; 2 uses
  %epil.iter621 = phi i64 [ 0, %.epil.preheader619 ], [ %epil.iter621.next, %bb.bj ]
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i.epil
  %i.bmp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bmo, <4 x i32> %i.ayt, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmp)
  %i.bmr = bitcast <8 x bfloat> %i.bmq to <2 x i64>
  %i.bms = extractelement <2 x i64> %i.bmr, i64 0
  store i64 %i.bms, ptr %.51959.us.i.epil, align 1, !tbaa !18
  %i.bmt = getelementptr inbounds nuw i8, ptr %.51959.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2375.i.epil = add nuw nsw i64 %indvars.iv2374.i.epil, 1
  %epil.iter621.next = add i64 %epil.iter621, 1   ; 2 uses
  %epil.iter621.cmp.not = icmp eq i64 %epil.iter621.next, %xtraiter620
  br i1 %epil.iter621.cmp.not, label %._crit_edge1961.us.i, label %bb.bj, !llvm.loop !120

._crit_edge1961.us.i:                             ; preds = %bb.bj, %._crit_edge1961.us.i.unr-lcssa
  %.lcssa451 = phi ptr [ %i.bmn, %._crit_edge1961.us.i.unr-lcssa ], [ %i.bmt, %bb.bj ] ; 2 uses
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %i.azh ; 2 uses
  %i.bmv = add nuw nsw i32 %.211031965.us.i, 4    ; 3 uses
  %i.bmw = or disjoint i32 %i.bmv, 3
  %i.bmx = icmp slt i32 %i.bmw, %2
  br i1 %i.bmx, label %.preheader1549.us.i, label %.preheader1553.i, !llvm.loop !121

.preheader1553.i:                                 ; preds = %._crit_edge1961.us.i, %.preheader1554.i
  %.21113.lcssa.i = phi ptr [ %.11112.lcssa.i, %.preheader1554.i ], [ %i.bmu, %._crit_edge1961.us.i ] ; 2 uses
  %.41110.lcssa.i = phi ptr [ %.21108.lcssa.i, %.preheader1554.i ], [ %.lcssa451, %._crit_edge1961.us.i ] ; 2 uses
  %.21103.lcssa.i = phi i32 [ %.11102.lcssa.i, %.preheader1554.i ], [ %i.bmv, %._crit_edge1961.us.i ] ; 3 uses
  %i.bmy = or disjoint i32 %.21103.lcssa.i, 1
  %i.bmz = icmp slt i32 %i.bmy, %2
  br i1 %i.bmz, label %.preheader1548.lr.ph.i, label %.preheader1552.i

.preheader1548.lr.ph.i:                           ; preds = %.preheader1553.i
  br i1 %i.azb, label %iter.check420, label %._crit_edge1994.split.i

iter.check420:                                    ; preds = %.preheader1548.lr.ph.i, %._crit_edge1977.us.i
  %.311041981.us.i = phi i32 [ %i.boe, %._crit_edge1977.us.i ], [ %.21103.lcssa.i, %.preheader1548.lr.ph.i ]
  %.61980.us.i = phi ptr [ %.lcssa253, %._crit_edge1977.us.i ], [ %.41110.lcssa.i, %.preheader1548.lr.ph.i ] ; 6 uses
  %.311141979.us.i = phi ptr [ %i.bod, %._crit_edge1977.us.i ], [ %.21113.lcssa.i, %.preheader1548.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check401, label %vec.epilog.scalar.ph421.preheader, label %vector.main.loop.iter.check402

vector.main.loop.iter.check402:                   ; preds = %iter.check420
  br i1 %min.iters.check403, label %vec.epilog.ph424, label %vector.ph404

vector.ph404:                                     ; preds = %vector.main.loop.iter.check402
  %i.bna = getelementptr i8, ptr %.61980.us.i, i64 %i.bad ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next416, %vector.body406 ] ; 3 uses
  %i.bnb = shl i64 %index407, 2                   ; 2 uses
  %next.gep408 = getelementptr i8, ptr %.61980.us.i, i64 %i.bnb
  %i.bnc = getelementptr i8, ptr %.61980.us.i, i64 %i.bnb
  %next.gep409 = getelementptr i8, ptr %i.bnc, i64 64
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %index407 ; 3 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 64
  %wide.load410 = load <16 x i32>, ptr %i.bnd, align 4, !tbaa !22
  %wide.load411 = load <16 x i32>, ptr %i.bne, align 4, !tbaa !22
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %i.azi ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 64
  %wide.load412 = load <16 x i32>, ptr %i.bnf, align 4, !tbaa !22
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.aeq = load <4 x i16>, ptr %i.adr, align 2, !tbaa !24
  %i.aer = shufflevector <4 x i16> %i.aep, <4 x i16> %i.aeq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aes = zext <8 x i16> %i.aer to <8 x i32>
  %i.aet = shl nuw <8 x i32> %i.aes, splat (i32 16) ; 8 uses
  %i.aeu = bitcast <8 x i32> %i.aet to <8 x float>
  %i.aev = shufflevector <8 x float> %i.aeu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adt, <8 x float> nofpclass(nan inf) %i.aev, <8 x float> nofpclass(nan inf) %.1341234492)
  %i.aex = bitcast <8 x i32> %i.aet to <8 x float>
  %i.aey = shufflevector <8 x float> %i.aex, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adw, <8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %.1241474491)
  %i.afa = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afb = shufflevector <8 x float> %i.afa, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.afc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adz, <8 x float> nofpclass(nan inf) %i.afb, <8 x float> nofpclass(nan inf) %.1241704490)
  %i.afd = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afe = shufflevector <8 x float> %i.afd, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aec, <8 x float> nofpclass(nan inf) %i.afe, <8 x float> nofpclass(nan inf) %.1241914489)
  %i.afg = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afh = shufflevector <8 x float> %i.afg, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.afi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aef, <8 x float> nofpclass(nan inf) %i.afh, <8 x float> nofpclass(nan inf) %i.aew) ; 2 uses
  %i.afj = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afk = shufflevector <8 x float> %i.afj, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aei, <8 x float> nofpclass(nan inf) %i.afk, <8 x float> nofpclass(nan inf) %i.aez) ; 2 uses
  %i.afm = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afn = shufflevector <8 x float> %i.afm, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.afo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ael, <8 x float> nofpclass(nan inf) %i.afn, <8 x float> nofpclass(nan inf) %i.afc) ; 2 uses
  %i.afp = bitcast <8 x i32> %i.aet to <8 x float>
  %i.afq = shufflevector <8 x float> %i.afp, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.afr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeo, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) %i.aff) ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.1216094493, i64 128
  %indvars.iv.next5466 = add nuw nsw i64 %indvars.iv5465, 1 ; 2 uses
  %exitcond5471.not = icmp eq i64 %indvars.iv.next5466, %wide.trip.count5470
  br i1 %exitcond5471.not, label %.loopexit4389.loopexit, label %.lr.ph4496, !llvm.loop !158

.loopexit4389.loopexit:                           ; preds = %.lr.ph4496
  %scevgep5467 = getelementptr i8, ptr %.916064518, i64 128
  %scevgep5468 = getelementptr i8, ptr %scevgep5467, i64 %i.gi
  br label %.loopexit4388

.loopexit4389:                                    ; preds = %.loopexit4391
  br i1 %i.dt, label %.preheader4387, label %.loopexit4388

.preheader4387:                                   ; preds = %.loopexit4389
  br i1 %i.gd, label %.lr.ph4508, label %.loopexit4388

.lr.ph4508:                                       ; preds = %.preheader4387
  %i.aft = getelementptr [2 x i8], ptr %gep4530, i64 %i.gf
  %i.afu = getelementptr i8, ptr %gep4530, i64 %.idx2200
  %i.afv = getelementptr i8, ptr %gep4530, i64 %.idx2201
  %i.afw = getelementptr i8, ptr %gep4530, i64 %.idx2202
  %i.afx = getelementptr i8, ptr %gep4530, i64 %.idx2203
  %i.afy = getelementptr i8, ptr %gep4530, i64 %.idx2204
  %i.afz = getelementptr i8, ptr %gep4530, i64 %.idx2205
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph4508, %bb.h
  %indvars.iv5472 = phi i64 [ 0, %.lr.ph4508 ], [ %indvars.iv.next5473, %bb.h ] ; 2 uses
  %.1416114506 = phi ptr [ %.916064518, %.lr.ph4508 ], [ %i.ajm, %bb.h ] ; 9 uses
  %.1541254505 = phi <8 x float> [ %.1041204517, %.lr.ph4508 ], [ %i.ain, %bb.h ]
  %.1441494504 = phi <8 x float> [ %.941444516, %.lr.ph4508 ], [ %i.aiv, %bb.h ]
  %.1441724503 = phi <8 x float> [ %.941674515, %.lr.ph4508 ], [ %i.ajd, %bb.h ]
  %.1441934502 = phi <8 x float> [ %.941884514, %.lr.ph4508 ], [ %i.ajl, %bb.h ]
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv5472
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !30
  %i.agc = load <8 x bfloat>, ptr %.1416114506, align 16, !tbaa !18
  %i.agd = fpext fast <8 x bfloat> %i.agc to <8 x float>
  %i.age = getelementptr inbounds nuw i8, ptr %.1416114506, i64 16
  %i.agf = load <8 x bfloat>, ptr %i.age, align 16, !tbaa !18
  %i.agg = fpext fast <8 x bfloat> %i.agf to <8 x float>
  %i.agh = getelementptr inbounds nuw i8, ptr %.1416114506, i64 32
  %i.agi = load <8 x bfloat>, ptr %i.agh, align 16, !tbaa !18
  %i.agj = fpext fast <8 x bfloat> %i.agi to <8 x float>
  %i.agk = getelementptr inbounds nuw i8, ptr %.1416114506, i64 48
  %i.agl = load <8 x bfloat>, ptr %i.agk, align 16, !tbaa !18
  %i.agm = fpext fast <8 x bfloat> %i.agl to <8 x float>
  %i.agn = getelementptr inbounds nuw i8, ptr %.1416114506, i64 64
  %i.ago = load <8 x bfloat>, ptr %i.agn, align 16, !tbaa !18
  %i.agp = fpext fast <8 x bfloat> %i.ago to <8 x float>
  %i.agq = getelementptr inbounds nuw i8, ptr %.1416114506, i64 80
  %i.agr = load <8 x bfloat>, ptr %i.agq, align 16, !tbaa !18
  %i.ags = fpext fast <8 x bfloat> %i.agr to <8 x float>
  %i.agt = getelementptr inbounds nuw i8, ptr %.1416114506, i64 96
  %i.agu = load <8 x bfloat>, ptr %i.agt, align 16, !tbaa !18
  %i.agv = fpext fast <8 x bfloat> %i.agu to <8 x float>
  %i.agw = getelementptr inbounds nuw i8, ptr %.1416114506, i64 112
  %i.agx = load <8 x bfloat>, ptr %i.agw, align 16, !tbaa !18
  %i.agy = fpext fast <8 x bfloat> %i.agx to <8 x float>
  %i.agz = sext i32 %i.agb to i64                 ; 8 uses
  %i.aha = getelementptr inbounds [2 x i8], ptr %gep4530, i64 %i.agz
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !24
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = shl nuw i32 %i.ahc, 16
  %i.ahe = insertelement <8 x i32> poison, i32 %i.ahd, i64 0
  %i.ahf = bitcast <8 x i32> %i.ahe to <8 x float>
  %i.ahg = shufflevector <8 x float> %i.ahf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agd, <8 x float> nofpclass(nan inf) %i.ahg, <8 x float> nofpclass(nan inf) %.1541254505)
  %i.ahi = getelementptr [2 x i8], ptr %i.aft, i64 %i.agz
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !24
  %i.ahk = zext i16 %i.ahj to i32
  %i.ahl = shl nuw i32 %i.ahk, 16
  %i.ahm = insertelement <8 x i32> poison, i32 %i.ahl, i64 0
  %i.ahn = bitcast <8 x i32> %i.ahm to <8 x float>
  %i.aho = shufflevector <8 x float> %i.ahn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agg, <8 x float> nofpclass(nan inf) %i.aho, <8 x float> nofpclass(nan inf) %.1441494504)
  %i.ahq = getelementptr [2 x i8], ptr %i.afu, i64 %i.agz
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !24
  %i.ahs = zext i16 %i.ahr to i32
  %i.aht = shl nuw i32 %i.ahs, 16
  %i.ahu = insertelement <8 x i32> poison, i32 %i.aht, i64 0
  %i.ahv = bitcast <8 x i32> %i.ahu to <8 x float>
  %i.ahw = shufflevector <8 x float> %i.ahv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agj, <8 x float> nofpclass(nan inf) %i.ahw, <8 x float> nofpclass(nan inf) %.1441724503)
  %i.ahy = getelementptr [2 x i8], ptr %i.afv, i64 %i.agz
  %i.ahz = load i16, ptr %i.ahy, align 2, !tbaa !24
  %i.aia = zext i16 %i.ahz to i32
  %i.aib = shl nuw i32 %i.aia, 16
  %i.aic = insertelement <8 x i32> poison, i32 %i.aib, i64 0
  %i.aid = bitcast <8 x i32> %i.aic to <8 x float>
  %i.aie = shufflevector <8 x float> %i.aid, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aif = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agm, <8 x float> nofpclass(nan inf) %i.aie, <8 x float> nofpclass(nan inf) %.1441934502)
  %i.aig = getelementptr [2 x i8], ptr %i.afw, i64 %i.agz
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !24
  %i.aii = zext i16 %i.aih to i32
  %i.aij = shl nuw i32 %i.aii, 16
  %i.aik = insertelement <8 x i32> poison, i32 %i.aij, i64 0
  %i.ail = bitcast <8 x i32> %i.aik to <8 x float>
  %i.aim = shufflevector <8 x float> %i.ail, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ain = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agp, <8 x float> nofpclass(nan inf) %i.aim, <8 x float> nofpclass(nan inf) %i.ahh) ; 2 uses
  %i.aio = getelementptr [2 x i8], ptr %i.afx, i64 %i.agz
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !24
  %i.aiq = zext i16 %i.aip to i32
  %i.air = shl nuw i32 %i.aiq, 16
  %i.ais = insertelement <8 x i32> poison, i32 %i.air, i64 0
  %i.ait = bitcast <8 x i32> %i.ais to <8 x float>
  %i.aiu = shufflevector <8 x float> %i.ait, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aiv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ags, <8 x float> nofpclass(nan inf) %i.aiu, <8 x float> nofpclass(nan inf) %i.ahp) ; 2 uses
  %i.aiw = getelementptr [2 x i8], ptr %i.afy, i64 %i.agz
  %i.aix = load i16, ptr %i.aiw, align 2, !tbaa !24
  %i.aiy = zext i16 %i.aix to i32
  %i.aiz = shl nuw i32 %i.aiy, 16
  %i.aja = insertelement <8 x i32> poison, i32 %i.aiz, i64 0
  %i.ajb = bitcast <8 x i32> %i.aja to <8 x float>
  %i.ajc = shufflevector <8 x float> %i.ajb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agv, <8 x float> nofpclass(nan inf) %i.ajc, <8 x float> nofpclass(nan inf) %i.ahx) ; 2 uses
  %i.aje = getelementptr [2 x i8], ptr %i.afz, i64 %i.agz
  %i.ajf = load i16, ptr %i.aje, align 2, !tbaa !24
  %i.ajg = zext i16 %i.ajf to i32
  %i.ajh = shl nuw i32 %i.ajg, 16
  %i.aji = insertelement <8 x i32> poison, i32 %i.ajh, i64 0
  %i.ajj = bitcast <8 x i32> %i.aji to <8 x float>
  %i.ajk = shufflevector <8 x float> %i.ajj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agy, <8 x float> nofpclass(nan inf) %i.ajk, <8 x float> nofpclass(nan inf) %i.aif) ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1416114506, i64 128
  %indvars.iv.next5473 = add nuw nsw i64 %indvars.iv5472, 1 ; 2 uses
  %exitcond5478.not = icmp eq i64 %indvars.iv.next5473, %wide.trip.count5477
  br i1 %exitcond5478.not, label %.loopexit4388.loopexit, label %bb.h, !llvm.loop !159

.loopexit4388.loopexit:                           ; preds = %bb.h
  %scevgep5474 = getelementptr i8, ptr %.916064518, i64 128
  %scevgep5475 = getelementptr i8, ptr %scevgep5474, i64 %i.gi
  br label %.loopexit4388

.loopexit4388:                                    ; preds = %.preheader4390, %.loopexit4391.loopexit, %bb.g, %.loopexit4389.loopexit, %.loopexit4388.loopexit, %.preheader4387, %.loopexit4389
  %.154194 = phi nsz <8 x float> [ %.941884514, %.loopexit4389 ], [ %.941884514, %.preheader4387 ], [ %i.ajl, %.loopexit4388.loopexit ], [ %.941884514, %bb.g ], [ %i.afr, %.loopexit4389.loopexit ], [ %i.adk, %.loopexit4391.loopexit ], [ %.941884514, %.preheader4390 ] ; 2 uses
  %.154173 = phi nsz <8 x float> [ %.941674515, %.loopexit4389 ], [ %.941674515, %.preheader4387 ], [ %i.ajd, %.loopexit4388.loopexit ], [ %.941674515, %bb.g ], [ %i.afo, %.loopexit4389.loopexit ], [ %i.adh, %.loopexit4391.loopexit ], [ %.941674515, %.preheader4390 ] ; 2 uses
  %.154150 = phi nsz <8 x float> [ %.941444516, %.loopexit4389 ], [ %.941444516, %.preheader4387 ], [ %i.aiv, %.loopexit4388.loopexit ], [ %.941444516, %bb.g ], [ %i.afl, %.loopexit4389.loopexit ], [ %i.ade, %.loopexit4391.loopexit ], [ %.941444516, %.preheader4390 ] ; 2 uses
  %.164126 = phi nsz <8 x float> [ %.1041204517, %.loopexit4389 ], [ %.1041204517, %.preheader4387 ], [ %i.ain, %.loopexit4388.loopexit ], [ %.1041204517, %bb.g ], [ %i.afi, %.loopexit4389.loopexit ], [ %i.adb, %.loopexit4391.loopexit ], [ %.1041204517, %.preheader4390 ] ; 2 uses
  %.151612 = phi ptr [ %.916064518, %.loopexit4389 ], [ %.916064518, %.preheader4387 ], [ %scevgep5475, %.loopexit4388.loopexit ], [ %.916064518, %bb.g ], [ %scevgep5468, %.loopexit4389.loopexit ], [ %scevgep5461, %.loopexit4391.loopexit ], [ %.916064518, %.preheader4390 ] ; 2 uses
  %i.ajn = add nuw nsw i32 %.115934519, 8         ; 3 uses
  %i.ajo = or disjoint i32 %i.ajn, 7
  %i.ajp = icmp slt i32 %i.ajo, %i.db
  br i1 %i.ajp, label %_ZN4ncnn3MatD2Ev.exit2356, label %.preheader4400, !llvm.loop !160

.preheader4399:                                   ; preds = %.loopexit4384, %.preheader4400
  %.164195.lcssa = phi <8 x float> [ %.94188.lcssa, %.preheader4400 ], [ %.204199, %.loopexit4384 ]
  %.164174.lcssa = phi <8 x float> [ %.94167.lcssa, %.preheader4400 ], [ %.204178, %.loopexit4384 ]
  %.164151.lcssa = phi <8 x float> [ %.94144.lcssa, %.preheader4400 ], [ %.204155, %.loopexit4384 ] ; 3 uses
  %.174127.lcssa = phi <8 x float> [ %.104120.lcssa, %.preheader4400 ], [ %.214131, %.loopexit4384 ] ; 3 uses
  %.161613.lcssa = phi ptr [ %.91606.lcssa, %.preheader4400 ], [ %.201617, %.loopexit4384 ] ; 3 uses
  %.21594.lcssa = phi i32 [ %.11593.lcssa, %.preheader4400 ], [ %i.aop, %.loopexit4384 ] ; 5 uses
  %i.ajq = or disjoint i32 %.21594.lcssa, 1
  %i.ajr = icmp slt i32 %i.ajq, %i.db
  br i1 %i.ajr, label %_ZN4ncnn3MatD2Ev.exit2354.lr.ph, label %.preheader4398

_ZN4ncnn3MatD2Ev.exit2354.lr.ph:                  ; preds = %.preheader4399
  %i.ajs = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !285
  %i.ajt = load ptr, ptr %0, align 8, !tbaa !15, !noalias !285
  %i.aju = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !285
  %i.ajv = load i64, ptr %i.ci, align 8, !tbaa !17, !noalias !285 ; 2 uses
  %factor.op.mul4589 = mul i64 %i.aju, %i.ajv
  %i.ajw = sext i32 %i.ajs to i64
  %i.ajx = mul i64 %i.ajv, %i.ajw
  %i.ajy = mul i64 %i.ajx, %i.eh
  %invariant.gep4591 = getelementptr i8, ptr %i.ajt, i64 %i.ajy
  %i.ajz = mul nsw i64 %indvars.iv5513, %i.ep
  %invariant.gep4592 = getelementptr [2 x i8], ptr %invariant.gep4591, i64 %i.ajz
  %i.aka = load ptr, ptr %i.g, align 8
  %i.akb = load i64, ptr %i.d, align 8
  br i1 %i.ek, label %_ZN4ncnn3MatD2Ev.exit2354.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2354.preheader

_ZN4ncnn3MatD2Ev.exit2354.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2354.lr.ph
  %i.akc = add nsw i32 %.21594.lcssa, 2
  %i.akd = sub i32 %i.ee, %.21594.lcssa
  %i.ake = and i32 %i.akd, -2
  %i.akf = add i32 %i.akc, %i.ake
  br label %.preheader4398

_ZN4ncnn3MatD2Ev.exit2354.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2354.lr.ph
  %i.akg = zext i32 %.21594.lcssa to i64
  br label %_ZN4ncnn3MatD2Ev.exit2354.us

_ZN4ncnn3MatD2Ev.exit2354.us:                     ; preds = %_ZN4ncnn3MatD2Ev.exit2354.us.preheader, %._crit_edge4577.us
  %indvars.iv5500 = phi i64 [ %i.akg, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %indvars.iv.next5501, %._crit_edge4577.us ] ; 2 uses
  %.2116184583.us = phi ptr [ %.161613.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %scevgep5496, %._crit_edge4577.us ] ; 2 uses
  %.2241324582.us = phi <8 x float> [ %.174127.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %i.akx, %._crit_edge4577.us ]
  %.2141564581.us = phi <8 x float> [ %.164151.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %i.alf, %._crit_edge4577.us ]
  %.reass4590.us = mul i64 %factor.op.mul4589, %indvars.iv5500
  %gep4593.us = getelementptr i8, ptr %invariant.gep4592, i64 %.reass4590.us ; 2 uses
  %i.akh = getelementptr [2 x i8], ptr %gep4593.us, i64 %i.akb
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2354.us, %bb.i
  %indvars.iv5493 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %indvars.iv.next5494, %bb.i ] ; 2 uses
  %.2216194574.us = phi ptr [ %.2116184583.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.alg, %bb.i ] ; 3 uses
  %.2341334573.us = phi <8 x float> [ %.2241324582.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.akx, %bb.i ]
  %.2241574572.us = phi <8 x float> [ %.2141564581.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.alf, %bb.i ]
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %indvars.iv5493
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !30
  %i.akk = load <8 x bfloat>, ptr %.2216194574.us, align 16, !tbaa !18
  %i.akl = fpext fast <8 x bfloat> %i.akk to <8 x float>
  %i.akm = getelementptr inbounds nuw i8, ptr %.2216194574.us, i64 16
  %i.akn = load <8 x bfloat>, ptr %i.akm, align 16, !tbaa !18
  %i.ako = fpext fast <8 x bfloat> %i.akn to <8 x float>
  %i.akp = sext i32 %i.akj to i64                 ; 2 uses
  %i.akq = getelementptr inbounds [2 x i8], ptr %gep4593.us, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !24
  %i.aks = zext i16 %i.akr to i32
  %i.akt = shl nuw i32 %i.aks, 16
  %i.aku = insertelement <8 x i32> poison, i32 %i.akt, i64 0
  %i.akv = bitcast <8 x i32> %i.aku to <8 x float>
  %i.akw = shufflevector <8 x float> %i.akv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akl, <8 x float> nofpclass(nan inf) %i.akw, <8 x float> nofpclass(nan inf) %.2341334573.us) ; 3 uses
  %i.aky = getelementptr [2 x i8], ptr %i.akh, i64 %i.akp
  %i.akz = load i16, ptr %i.aky, align 2, !tbaa !24
  %i.ala = zext i16 %i.akz to i32
  %i.alb = shl nuw i32 %i.ala, 16
  %i.alc = insertelement <8 x i32> poison, i32 %i.alb, i64 0
  %i.ald = bitcast <8 x i32> %i.alc to <8 x float>
  %i.ale = shufflevector <8 x float> %i.ald, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ako, <8 x float> nofpclass(nan inf) %i.ale, <8 x float> nofpclass(nan inf) %.2241574572.us) ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.2216194574.us, i64 32
  %indvars.iv.next5494 = add nuw nsw i64 %indvars.iv5493, 1 ; 2 uses
  %exitcond5499.not = icmp eq i64 %indvars.iv.next5494, %wide.trip.count5498
  br i1 %exitcond5499.not, label %._crit_edge4577.us, label %bb.i, !llvm.loop !163

._crit_edge4577.us:                               ; preds = %bb.i
  %scevgep5495 = getelementptr i8, ptr %.2116184583.us, i64 32
  %scevgep5496 = getelementptr i8, ptr %scevgep5495, i64 %i.en ; 2 uses
  %indvars.iv.next5501 = add nuw nsw i64 %indvars.iv5500, 2 ; 3 uses
  %i.alh = trunc i64 %indvars.iv.next5501 to i32
  %i.ali = or i32 %i.alh, 1
  %i.alj = icmp slt i32 %i.ali, %i.db
  br i1 %i.alj, label %_ZN4ncnn3MatD2Ev.exit2354.us, label %.preheader4398.loopexit, !llvm.loop !164

_ZN4ncnn3MatD2Ev.exit2355:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2355.lr.ph, %.loopexit4384
  %.215944560 = phi i32 [ %.11593.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %i.aop, %.loopexit4384 ] ; 2 uses
  %.1616134559 = phi ptr [ %.91606.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.201617, %.loopexit4384 ] ; 7 uses
  %.1741274558 = phi <8 x float> [ %.104120.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.214131, %.loopexit4384 ] ; 5 uses
  %.1641514557 = phi <8 x float> [ %.94144.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204155, %.loopexit4384 ] ; 5 uses
  %.1641744556 = phi <8 x float> [ %.94167.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204178, %.loopexit4384 ] ; 5 uses
  %.1641954555 = phi <8 x float> [ %.94188.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204199, %.loopexit4384 ] ; 5 uses
  %i.alk = sdiv i32 %.215944560, %i.cz
  %i.all = sext i32 %i.alk to i64
  %.reass4568 = mul i64 %factor.op.mul4567, %i.all
  %gep4571 = getelementptr i8, ptr %invariant.gep4570, i64 %.reass4568 ; 5 uses
  br i1 %i.ds, label %.preheader4385, label %.loopexit4386

.preheader4385:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2355
  br i1 %i.abb, label %.lr.ph4537, label %.loopexit4384

.lr.ph4537:                                       ; preds = %.preheader4385, %.lr.ph4537
  %indvars.iv5479 = phi i64 [ %indvars.iv.next5480, %.lr.ph4537 ], [ 0, %.preheader4385 ] ; 2 uses
  %.1716144535 = phi ptr [ %i.amq, %.lr.ph4537 ], [ %.1616134559, %.preheader4385 ] ; 5 uses
  %.1841284534 = phi <8 x float> [ %i.amg, %.lr.ph4537 ], [ %.1741274558, %.preheader4385 ]
  %.1741524533 = phi <8 x float> [ %i.amj, %.lr.ph4537 ], [ %.1641514557, %.preheader4385 ]
  %.1741754532 = phi <8 x float> [ %i.amm, %.lr.ph4537 ], [ %.1641744556, %.preheader4385 ]
  %.1741964531 = phi <8 x float> [ %i.amp, %.lr.ph4537 ], [ %.1641954555, %.preheader4385 ]
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv5479
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !30
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [2 x i8], ptr %gep4571, i64 %i.alo
  %i.alq = load <8 x bfloat>, ptr %.1716144535, align 16, !tbaa !18
  %i.alr = fpext fast <8 x bfloat> %i.alq to <8 x float>
  %i.als = getelementptr inbounds nuw i8, ptr %.1716144535, i64 16
  %i.alt = load <8 x bfloat>, ptr %i.als, align 16, !tbaa !18
  %i.alu = fpext fast <8 x bfloat> %i.alt to <8 x float>
  %i.alv = getelementptr inbounds nuw i8, ptr %.1716144535, i64 32
  %i.alw = load <8 x bfloat>, ptr %i.alv, align 16, !tbaa !18
  %i.alx = fpext fast <8 x bfloat> %i.alw to <8 x float>
  %i.aly = getelementptr inbounds nuw i8, ptr %.1716144535, i64 48
  %i.alz = load <8 x bfloat>, ptr %i.aly, align 16, !tbaa !18
  %i.ama = fpext fast <8 x bfloat> %i.alz to <8 x float>
  %i.amb = load <4 x i16>, ptr %i.alp, align 2, !tbaa !24
  %i.amc = zext <4 x i16> %i.amb to <4 x i32>
  %i.amd = shl nuw <4 x i32> %i.amc, splat (i32 16) ; 4 uses
  %i.ame = bitcast <4 x i32> %i.amd to <4 x float>
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> poison, <8 x i32> zeroinitializer
  %i.amg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alr, <8 x float> nofpclass(nan inf) %i.amf, <8 x float> nofpclass(nan inf) %.1841284534) ; 2 uses
  %i.amh = bitcast <4 x i32> %i.amd to <4 x float>
  %i.ami = shufflevector <4 x float> %i.amh, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.amj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alu, <8 x float> nofpclass(nan inf) %i.ami, <8 x float> nofpclass(nan inf) %.1741524533) ; 2 uses
  %i.amk = bitcast <4 x i32> %i.amd to <4 x float>
  %i.aml = shufflevector <4 x float> %i.amk, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.amm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alx, <8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %.1741754532) ; 2 uses
  %i.amn = bitcast <4 x i32> %i.amd to <4 x float>
  %i.amo = shufflevector <4 x float> %i.amn, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.amp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ama, <8 x float> nofpclass(nan inf) %i.amo, <8 x float> nofpclass(nan inf) %.1741964531) ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.1716144535, i64 64
  %indvars.iv.next5480 = add nuw nsw i64 %indvars.iv5479, 1 ; 2 uses
  %exitcond5485.not = icmp eq i64 %indvars.iv.next5480, %wide.trip.count5484
  br i1 %exitcond5485.not, label %.loopexit4386.loopexit, label %.lr.ph4537, !llvm.loop !165

.loopexit4386.loopexit:                           ; preds = %.lr.ph4537
  %scevgep5481 = getelementptr i8, ptr %.1616134559, i64 64
  %scevgep5482 = getelementptr i8, ptr %scevgep5481, i64 %i.abg
  br label %.loopexit4384

.loopexit4386:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2355
  br i1 %i.dt, label %.preheader4383, label %.loopexit4384

.preheader4383:                                   ; preds = %.loopexit4386
  br i1 %i.abb, label %.lr.ph4549, label %.loopexit4384

.lr.ph4549:                                       ; preds = %.preheader4383
  %i.amr = getelementptr [2 x i8], ptr %gep4571, i64 %i.abd
  %i.ams = getelementptr i8, ptr %gep4571, i64 %.idx2187
  %i.amt = getelementptr i8, ptr %gep4571, i64 %.idx2188
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph4549, %bb.j
  %indvars.iv5486 = phi i64 [ 0, %.lr.ph4549 ], [ %indvars.iv.next5487, %bb.j ] ; 2 uses
  %.1916164547 = phi ptr [ %.1616134559, %.lr.ph4549 ], [ %i.aoo, %bb.j ] ; 5 uses
  %.2041304546 = phi <8 x float> [ %.1741274558, %.lr.ph4549 ], [ %i.anp, %bb.j ]
  %.1941544545 = phi <8 x float> [ %.1641514557, %.lr.ph4549 ], [ %i.anx, %bb.j ]
  %.1941774544 = phi <8 x float> [ %.1641744556, %.lr.ph4549 ], [ %i.aof, %bb.j ]
  %.1941984543 = phi <8 x float> [ %.1641954555, %.lr.ph4549 ], [ %i.aon, %bb.j ]
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv5486
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !30
  %i.amw = load <8 x bfloat>, ptr %.1916164547, align 16, !tbaa !18
  %i.amx = fpext fast <8 x bfloat> %i.amw to <8 x float>
  %i.amy = getelementptr inbounds nuw i8, ptr %.1916164547, i64 16
  %i.amz = load <8 x bfloat>, ptr %i.amy, align 16, !tbaa !18
  %i.ana = fpext fast <8 x bfloat> %i.amz to <8 x float>
  %i.anb = getelementptr inbounds nuw i8, ptr %.1916164547, i64 32
  %i.anc = load <8 x bfloat>, ptr %i.anb, align 16, !tbaa !18
  %i.and = fpext fast <8 x bfloat> %i.anc to <8 x float>
  %i.ane = getelementptr inbounds nuw i8, ptr %.1916164547, i64 48
  %i.anf = load <8 x bfloat>, ptr %i.ane, align 16, !tbaa !18
  %i.ang = fpext fast <8 x bfloat> %i.anf to <8 x float>
  %i.anh = sext i32 %i.amv to i64                 ; 4 uses
  %i.ani = getelementptr inbounds [2 x i8], ptr %gep4571, i64 %i.anh
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !24
  %i.ank = zext i16 %i.anj to i32
  %i.anl = shl nuw i32 %i.ank, 16
  %i.anm = insertelement <8 x i32> poison, i32 %i.anl, i64 0
  %i.ann = bitcast <8 x i32> %i.anm to <8 x float>
  %i.ano = shufflevector <8 x float> %i.ann, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amx, <8 x float> nofpclass(nan inf) %i.ano, <8 x float> nofpclass(nan inf) %.2041304546) ; 2 uses
  %i.anq = getelementptr [2 x i8], ptr %i.amr, i64 %i.anh
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !24
  %i.ans = zext i16 %i.anr to i32
  %i.ant = shl nuw i32 %i.ans, 16
  %i.anu = insertelement <8 x i32> poison, i32 %i.ant, i64 0
  %i.anv = bitcast <8 x i32> %i.anu to <8 x float>
  %i.anw = shufflevector <8 x float> %i.anv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ana, <8 x float> nofpclass(nan inf) %i.anw, <8 x float> nofpclass(nan inf) %.1941544545) ; 2 uses
  %i.any = getelementptr [2 x i8], ptr %i.ams, i64 %i.anh
  %i.anz = load i16, ptr %i.any, align 2, !tbaa !24
  %i.aoa = zext i16 %i.anz to i32
  %i.aob = shl nuw i32 %i.aoa, 16
  %i.aoc = insertelement <8 x i32> poison, i32 %i.aob, i64 0
  %i.aod = bitcast <8 x i32> %i.aoc to <8 x float>
  %i.aoe = shufflevector <8 x float> %i.aod, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aof = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.and, <8 x float> nofpclass(nan inf) %i.aoe, <8 x float> nofpclass(nan inf) %.1941774544) ; 2 uses
  %i.aog = getelementptr [2 x i8], ptr %i.amt, i64 %i.anh
  %i.aoh = load i16, ptr %i.aog, align 2, !tbaa !24
  %i.aoi = zext i16 %i.aoh to i32
  %i.aoj = shl nuw i32 %i.aoi, 16
  %i.aok = insertelement <8 x i32> poison, i32 %i.aoj, i64 0
  %i.aol = bitcast <8 x i32> %i.aok to <8 x float>
  %i.aom = shufflevector <8 x float> %i.aol, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aon = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ang, <8 x float> nofpclass(nan inf) %i.aom, <8 x float> nofpclass(nan inf) %.1941984543) ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.1916164547, i64 64
  %indvars.iv.next5487 = add nuw nsw i64 %indvars.iv5486, 1 ; 2 uses
  %exitcond5492.not = icmp eq i64 %indvars.iv.next5487, %wide.trip.count5491
  br i1 %exitcond5492.not, label %.loopexit4384.loopexit, label %bb.j, !llvm.loop !166

.loopexit4384.loopexit:                           ; preds = %bb.j
  %scevgep5488 = getelementptr i8, ptr %.1616134559, i64 64
  %scevgep5489 = getelementptr i8, ptr %scevgep5488, i64 %i.abg
  br label %.loopexit4384

end_hunk_5
begin_hunk_6_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.ckv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjp, <4 x float> nofpclass(nan inf) %i.cku, <4 x float> nofpclass(nan inf) %i.ckj) ; 2 uses
  %i.ckw = bitcast <8 x i32> %i.cka to <8 x float>
  %i.ckx = shufflevector <8 x float> %i.ckw, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjv, <4 x float> nofpclass(nan inf) %i.ckx, <4 x float> nofpclass(nan inf) %i.ckm) ; 2 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %.1215614715, i64 64
  %indvars.iv.next5560 = add nuw nsw i64 %indvars.iv5559, 1 ; 2 uses
  %exitcond5565.not = icmp eq i64 %indvars.iv.next5560, %wide.trip.count5564
  br i1 %exitcond5565.not, label %.loopexit4369.loopexit, label %.lr.ph4718, !llvm.loop !195

.loopexit4369.loopexit:                           ; preds = %.lr.ph4718
  %scevgep5561 = getelementptr i8, ptr %.915584740, i64 64
  %scevgep5562 = getelementptr i8, ptr %scevgep5561, i64 %i.bcj
  br label %.loopexit4368

.loopexit4369:                                    ; preds = %.loopexit4371
  br i1 %i.azu, label %.preheader4367, label %.loopexit4368

.preheader4367:                                   ; preds = %.loopexit4369
  br i1 %i.bce, label %.lr.ph4730, label %.loopexit4368

.lr.ph4730:                                       ; preds = %.preheader4367
  %i.cla = getelementptr [2 x i8], ptr %gep4752, i64 %i.bcg
  %i.clb = getelementptr i8, ptr %gep4752, i64 %.idx2066
  %i.clc = getelementptr i8, ptr %gep4752, i64 %.idx2067
  %i.cld = getelementptr i8, ptr %gep4752, i64 %.idx2068
  %i.cle = getelementptr i8, ptr %gep4752, i64 %.idx2069
  %i.clf = getelementptr i8, ptr %gep4752, i64 %.idx2070
  %i.clg = getelementptr i8, ptr %gep4752, i64 %.idx2071
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph4730, %bb.u
  %indvars.iv5566 = phi i64 [ 0, %.lr.ph4730 ], [ %indvars.iv.next5567, %bb.u ] ; 2 uses
  %.1415634728 = phi ptr [ %.915584740, %.lr.ph4730 ], [ %i.cpr, %bb.u ] ; 9 uses
  %.1442144727 = phi <4 x float> [ %.942094739, %.lr.ph4730 ], [ %i.cpq, %bb.u ]
  %.1442354726 = phi <4 x float> [ %.942304738, %.lr.ph4730 ], [ %i.cpi, %bb.u ]
  %.1442564725 = phi <4 x float> [ %.942514737, %.lr.ph4730 ], [ %i.cpa, %bb.u ]
  %.1542804724 = phi <4 x float> [ %.1042754736, %.lr.ph4730 ], [ %i.cos, %bb.u ]
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %indvars.iv5566
  %i.cli = load i32, ptr %i.clh, align 4, !tbaa !30
  %i.clj = load i64, ptr %.1415634728, align 1, !tbaa !18
  %i.clk = insertelement <2 x i64> poison, i64 %i.clj, i64 0
  %i.cll = bitcast <2 x i64> %i.clk to <8 x i16>
  %i.clm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cln = bitcast <8 x i16> %i.clm to <4 x float>
  %i.clo = getelementptr inbounds nuw i8, ptr %.1415634728, i64 8
  %i.clp = load i64, ptr %i.clo, align 1, !tbaa !18
  %i.clq = insertelement <2 x i64> poison, i64 %i.clp, i64 0
  %i.clr = bitcast <2 x i64> %i.clq to <8 x i16>
  %i.cls = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clt = bitcast <8 x i16> %i.cls to <4 x float>
  %i.clu = getelementptr inbounds nuw i8, ptr %.1415634728, i64 16
  %i.clv = load i64, ptr %i.clu, align 1, !tbaa !18
  %i.clw = insertelement <2 x i64> poison, i64 %i.clv, i64 0
  %i.clx = bitcast <2 x i64> %i.clw to <8 x i16>
  %i.cly = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clz = bitcast <8 x i16> %i.cly to <4 x float>
  %i.cma = getelementptr inbounds nuw i8, ptr %.1415634728, i64 24
  %i.cmb = load i64, ptr %i.cma, align 1, !tbaa !18
  %i.cmc = insertelement <2 x i64> poison, i64 %i.cmb, i64 0
  %i.cmd = bitcast <2 x i64> %i.cmc to <8 x i16>
  %i.cme = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmf = bitcast <8 x i16> %i.cme to <4 x float>
  %i.cmg = getelementptr inbounds nuw i8, ptr %.1415634728, i64 32
  %i.cmh = load i64, ptr %i.cmg, align 1, !tbaa !18
  %i.cmi = insertelement <2 x i64> poison, i64 %i.cmh, i64 0
  %i.cmj = bitcast <2 x i64> %i.cmi to <8 x i16>
  %i.cmk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cml = bitcast <8 x i16> %i.cmk to <4 x float>
  %i.cmm = getelementptr inbounds nuw i8, ptr %.1415634728, i64 40
  %i.cmn = load i64, ptr %i.cmm, align 1, !tbaa !18
  %i.cmo = insertelement <2 x i64> poison, i64 %i.cmn, i64 0
  %i.cmp = bitcast <2 x i64> %i.cmo to <8 x i16>
  %i.cmq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmr = bitcast <8 x i16> %i.cmq to <4 x float>
  %i.cms = getelementptr inbounds nuw i8, ptr %.1415634728, i64 48
  %i.cmt = load i64, ptr %i.cms, align 1, !tbaa !18
  %i.cmu = insertelement <2 x i64> poison, i64 %i.cmt, i64 0
  %i.cmv = bitcast <2 x i64> %i.cmu to <8 x i16>
  %i.cmw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmx = bitcast <8 x i16> %i.cmw to <4 x float>
  %i.cmy = getelementptr inbounds nuw i8, ptr %.1415634728, i64 56
  %i.cmz = load i64, ptr %i.cmy, align 1, !tbaa !18
  %i.cna = insertelement <2 x i64> poison, i64 %i.cmz, i64 0
  %i.cnb = bitcast <2 x i64> %i.cna to <8 x i16>
  %i.cnc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cnb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cnd = bitcast <8 x i16> %i.cnc to <4 x float>
  %i.cne = sext i32 %i.cli to i64                 ; 8 uses
  %i.cnf = getelementptr inbounds [2 x i8], ptr %gep4752, i64 %i.cne
  %i.cng = load i16, ptr %i.cnf, align 2, !tbaa !24
  %i.cnh = zext i16 %i.cng to i32
  %i.cni = shl nuw i32 %i.cnh, 16
  %i.cnj = insertelement <4 x i32> poison, i32 %i.cni, i64 0
  %i.cnk = bitcast <4 x i32> %i.cnj to <4 x float>
  %i.cnl = shufflevector <4 x float> %i.cnk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cln, <4 x float> nofpclass(nan inf) %i.cnl, <4 x float> nofpclass(nan inf) %.1542804724)
  %i.cnn = getelementptr [2 x i8], ptr %i.cla, i64 %i.cne
  %i.cno = load i16, ptr %i.cnn, align 2, !tbaa !24
  %i.cnp = zext i16 %i.cno to i32
  %i.cnq = shl nuw i32 %i.cnp, 16
  %i.cnr = insertelement <4 x i32> poison, i32 %i.cnq, i64 0
  %i.cns = bitcast <4 x i32> %i.cnr to <4 x float>
  %i.cnt = shufflevector <4 x float> %i.cns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clt, <4 x float> nofpclass(nan inf) %i.cnt, <4 x float> nofpclass(nan inf) %.1442564725)
  %i.cnv = getelementptr [2 x i8], ptr %i.clb, i64 %i.cne
  %i.cnw = load i16, ptr %i.cnv, align 2, !tbaa !24
  %i.cnx = zext i16 %i.cnw to i32
  %i.cny = shl nuw i32 %i.cnx, 16
  %i.cnz = insertelement <4 x i32> poison, i32 %i.cny, i64 0
  %i.coa = bitcast <4 x i32> %i.cnz to <4 x float>
  %i.cob = shufflevector <4 x float> %i.coa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.coc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clz, <4 x float> nofpclass(nan inf) %i.cob, <4 x float> nofpclass(nan inf) %.1442354726)
  %i.cod = getelementptr [2 x i8], ptr %i.clc, i64 %i.cne
  %i.coe = load i16, ptr %i.cod, align 2, !tbaa !24
  %i.cof = zext i16 %i.coe to i32
  %i.cog = shl nuw i32 %i.cof, 16
  %i.coh = insertelement <4 x i32> poison, i32 %i.cog, i64 0
  %i.coi = bitcast <4 x i32> %i.coh to <4 x float>
  %i.coj = shufflevector <4 x float> %i.coi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmf, <4 x float> nofpclass(nan inf) %i.coj, <4 x float> nofpclass(nan inf) %.1442144727)
  %i.col = getelementptr [2 x i8], ptr %i.cld, i64 %i.cne
  %i.com = load i16, ptr %i.col, align 2, !tbaa !24
  %i.con = zext i16 %i.com to i32
  %i.coo = shl nuw i32 %i.con, 16
  %i.cop = insertelement <4 x i32> poison, i32 %i.coo, i64 0
  %i.coq = bitcast <4 x i32> %i.cop to <4 x float>
  %i.cor = shufflevector <4 x float> %i.coq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cos = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cml, <4 x float> nofpclass(nan inf) %i.cor, <4 x float> nofpclass(nan inf) %i.cnm) ; 2 uses
  %i.cot = getelementptr [2 x i8], ptr %i.cle, i64 %i.cne
  %i.cou = load i16, ptr %i.cot, align 2, !tbaa !24
  %i.cov = zext i16 %i.cou to i32
  %i.cow = shl nuw i32 %i.cov, 16
  %i.cox = insertelement <4 x i32> poison, i32 %i.cow, i64 0
  %i.coy = bitcast <4 x i32> %i.cox to <4 x float>
  %i.coz = shufflevector <4 x float> %i.coy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmr, <4 x float> nofpclass(nan inf) %i.coz, <4 x float> nofpclass(nan inf) %i.cnu) ; 2 uses
  %i.cpb = getelementptr [2 x i8], ptr %i.clf, i64 %i.cne
  %i.cpc = load i16, ptr %i.cpb, align 2, !tbaa !24
  %i.cpd = zext i16 %i.cpc to i32
  %i.cpe = shl nuw i32 %i.cpd, 16
  %i.cpf = insertelement <4 x i32> poison, i32 %i.cpe, i64 0
  %i.cpg = bitcast <4 x i32> %i.cpf to <4 x float>
  %i.cph = shufflevector <4 x float> %i.cpg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmx, <4 x float> nofpclass(nan inf) %i.cph, <4 x float> nofpclass(nan inf) %i.coc) ; 2 uses
  %i.cpj = getelementptr [2 x i8], ptr %i.clg, i64 %i.cne
  %i.cpk = load i16, ptr %i.cpj, align 2, !tbaa !24
  %i.cpl = zext i16 %i.cpk to i32
  %i.cpm = shl nuw i32 %i.cpl, 16
  %i.cpn = insertelement <4 x i32> poison, i32 %i.cpm, i64 0
  %i.cpo = bitcast <4 x i32> %i.cpn to <4 x float>
  %i.cpp = shufflevector <4 x float> %i.cpo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnd, <4 x float> nofpclass(nan inf) %i.cpp, <4 x float> nofpclass(nan inf) %i.cok) ; 2 uses
  %i.cpr = getelementptr inbounds nuw i8, ptr %.1415634728, i64 64
  %indvars.iv.next5567 = add nuw nsw i64 %indvars.iv5566, 1 ; 2 uses
  %exitcond5572.not = icmp eq i64 %indvars.iv.next5567, %wide.trip.count5571
  br i1 %exitcond5572.not, label %.loopexit4368.loopexit, label %bb.u, !llvm.loop !196

.loopexit4368.loopexit:                           ; preds = %bb.u
  %scevgep5568 = getelementptr i8, ptr %.915584740, i64 64
  %scevgep5569 = getelementptr i8, ptr %scevgep5568, i64 %i.bcj
  br label %.loopexit4368

.loopexit4368:                                    ; preds = %.preheader4370, %.loopexit4371.loopexit, %bb.t, %.loopexit4369.loopexit, %.loopexit4368.loopexit, %.preheader4367, %.loopexit4369
  %.164281 = phi nsz <4 x float> [ %.1042754736, %.loopexit4369 ], [ %.1042754736, %.preheader4367 ], [ %i.cos, %.loopexit4368.loopexit ], [ %.1042754736, %bb.t ], [ %i.ckp, %.loopexit4369.loopexit ], [ %i.chk, %.loopexit4371.loopexit ], [ %.1042754736, %.preheader4370 ] ; 2 uses
  %.154257 = phi nsz <4 x float> [ %.942514737, %.loopexit4369 ], [ %.942514737, %.preheader4367 ], [ %i.cpa, %.loopexit4368.loopexit ], [ %.942514737, %bb.t ], [ %i.cks, %.loopexit4369.loopexit ], [ %i.chn, %.loopexit4371.loopexit ], [ %.942514737, %.preheader4370 ] ; 2 uses
  %.154236 = phi nsz <4 x float> [ %.942304738, %.loopexit4369 ], [ %.942304738, %.preheader4367 ], [ %i.cpi, %.loopexit4368.loopexit ], [ %.942304738, %bb.t ], [ %i.ckv, %.loopexit4369.loopexit ], [ %i.chq, %.loopexit4371.loopexit ], [ %.942304738, %.preheader4370 ] ; 2 uses
  %.154215 = phi nsz <4 x float> [ %.942094739, %.loopexit4369 ], [ %.942094739, %.preheader4367 ], [ %i.cpq, %.loopexit4368.loopexit ], [ %.942094739, %bb.t ], [ %i.cky, %.loopexit4369.loopexit ], [ %i.cht, %.loopexit4371.loopexit ], [ %.942094739, %.preheader4370 ] ; 2 uses
  %.151564 = phi ptr [ %.915584740, %.loopexit4369 ], [ %.915584740, %.preheader4367 ], [ %scevgep5569, %.loopexit4368.loopexit ], [ %.915584740, %bb.t ], [ %scevgep5562, %.loopexit4369.loopexit ], [ %scevgep5555, %.loopexit4371.loopexit ], [ %.915584740, %.preheader4370 ] ; 2 uses
  %i.cps = add nuw nsw i32 %.115454741, 8         ; 3 uses
  %i.cpt = or disjoint i32 %i.cps, 7
  %i.cpu = icmp slt i32 %i.cpt, %i.ayw
  br i1 %i.cpu, label %_ZN4ncnn3MatD2Ev.exit2349, label %.preheader4380, !llvm.loop !197

.preheader4379:                                   ; preds = %.loopexit4364, %.preheader4380
  %.174282.lcssa = phi <4 x float> [ %.104275.lcssa, %.preheader4380 ], [ %.214286, %.loopexit4364 ] ; 3 uses
  %.164258.lcssa = phi <4 x float> [ %.94251.lcssa, %.preheader4380 ], [ %.204262, %.loopexit4364 ] ; 3 uses
  %.164237.lcssa = phi <4 x float> [ %.94230.lcssa, %.preheader4380 ], [ %.204241, %.loopexit4364 ]
  %.164216.lcssa = phi <4 x float> [ %.94209.lcssa, %.preheader4380 ], [ %.204220, %.loopexit4364 ]
  %.161565.lcssa = phi ptr [ %.91558.lcssa, %.preheader4380 ], [ %.201569, %.loopexit4364 ] ; 3 uses
  %.21546.lcssa = phi i32 [ %.11545.lcssa, %.preheader4380 ], [ %i.cvy, %.loopexit4364 ] ; 5 uses
  %i.cpv = or disjoint i32 %.21546.lcssa, 1
  %i.cpw = icmp slt i32 %i.cpv, %i.ayw
  br i1 %i.cpw, label %_ZN4ncnn3MatD2Ev.exit2347.lr.ph, label %.preheader4378

_ZN4ncnn3MatD2Ev.exit2347.lr.ph:                  ; preds = %.preheader4379
  %i.cpx = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !294
  %i.cpy = load ptr, ptr %0, align 8, !tbaa !15, !noalias !294
  %i.cpz = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !294
  %i.cqa = load i64, ptr %i.cx, align 8, !tbaa !17, !noalias !294 ; 2 uses
  %factor.op.mul4811 = mul i64 %i.cpz, %i.cqa
  %i.cqb = sext i32 %i.cpx to i64
  %i.cqc = mul i64 %i.cqa, %i.cqb
  %i.cqd = mul i64 %i.cqc, %i.bai
  %invariant.gep4813 = getelementptr i8, ptr %i.cpy, i64 %i.cqd
  %i.cqe = mul nsw i64 %indvars.iv5607, %i.baq
  %invariant.gep4814 = getelementptr [2 x i8], ptr %invariant.gep4813, i64 %i.cqe
  %i.cqf = load ptr, ptr %i.g, align 8
  %i.cqg = load i64, ptr %i.d, align 8
  br i1 %i.bal, label %_ZN4ncnn3MatD2Ev.exit2347.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2347.preheader

_ZN4ncnn3MatD2Ev.exit2347.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2347.lr.ph
  %i.cqh = add nsw i32 %.21546.lcssa, 2
  %i.cqi = sub i32 %i.baf, %.21546.lcssa
  %i.cqj = and i32 %i.cqi, -2
  %i.cqk = add i32 %i.cqh, %i.cqj
  br label %.preheader4378

_ZN4ncnn3MatD2Ev.exit2347.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2347.lr.ph
  %i.cql = zext i32 %.21546.lcssa to i64
  br label %_ZN4ncnn3MatD2Ev.exit2347.us

_ZN4ncnn3MatD2Ev.exit2347.us:                     ; preds = %_ZN4ncnn3MatD2Ev.exit2347.us.preheader, %._crit_edge4799.us
  %indvars.iv5594 = phi i64 [ %i.cql, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %indvars.iv.next5595, %._crit_edge4799.us ] ; 2 uses
  %.2115704805.us = phi ptr [ %.161565.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %scevgep5590, %._crit_edge4799.us ] ; 2 uses
  %.2142634804.us = phi <4 x float> [ %.164258.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %i.crq, %._crit_edge4799.us ]
  %.2242874803.us = phi <4 x float> [ %.174282.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %i.cri, %._crit_edge4799.us ]
  %.reass4812.us = mul i64 %factor.op.mul4811, %indvars.iv5594
  %gep4815.us = getelementptr i8, ptr %invariant.gep4814, i64 %.reass4812.us ; 2 uses
  %i.cqm = getelementptr [2 x i8], ptr %gep4815.us, i64 %i.cqg
  br label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2347.us, %bb.v
  %indvars.iv5587 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %indvars.iv.next5588, %bb.v ] ; 2 uses
  %.2215714796.us = phi ptr [ %.2115704805.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.crr, %bb.v ] ; 3 uses
  %.2242644795.us = phi <4 x float> [ %.2142634804.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.crq, %bb.v ]
  %.2342884794.us = phi <4 x float> [ %.2242874803.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.cri, %bb.v ]
  %i.cqn = getelementptr inbounds nuw [4 x i8], ptr %i.cqf, i64 %indvars.iv5587
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !30
  %i.cqp = load i64, ptr %.2215714796.us, align 1, !tbaa !18
  %i.cqq = insertelement <2 x i64> poison, i64 %i.cqp, i64 0
  %i.cqr = bitcast <2 x i64> %i.cqq to <8 x i16>
  %i.cqs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqt = bitcast <8 x i16> %i.cqs to <4 x float>
  %i.cqu = getelementptr inbounds nuw i8, ptr %.2215714796.us, i64 8
  %i.cqv = load i64, ptr %i.cqu, align 1, !tbaa !18
  %i.cqw = insertelement <2 x i64> poison, i64 %i.cqv, i64 0
  %i.cqx = bitcast <2 x i64> %i.cqw to <8 x i16>
  %i.cqy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqz = bitcast <8 x i16> %i.cqy to <4 x float>
  %i.cra = sext i32 %i.cqo to i64                 ; 2 uses
  %i.crb = getelementptr inbounds [2 x i8], ptr %gep4815.us, i64 %i.cra
  %i.crc = load i16, ptr %i.crb, align 2, !tbaa !24
  %i.crd = zext i16 %i.crc to i32
  %i.cre = shl nuw i32 %i.crd, 16
  %i.crf = insertelement <4 x i32> poison, i32 %i.cre, i64 0
  %i.crg = bitcast <4 x i32> %i.crf to <4 x float>
  %i.crh = shufflevector <4 x float> %i.crg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cri = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqt, <4 x float> nofpclass(nan inf) %i.crh, <4 x float> nofpclass(nan inf) %.2342884794.us) ; 3 uses
  %i.crj = getelementptr [2 x i8], ptr %i.cqm, i64 %i.cra
  %i.crk = load i16, ptr %i.crj, align 2, !tbaa !24
  %i.crl = zext i16 %i.crk to i32
  %i.crm = shl nuw i32 %i.crl, 16
  %i.crn = insertelement <4 x i32> poison, i32 %i.crm, i64 0
  %i.cro = bitcast <4 x i32> %i.crn to <4 x float>
  %i.crp = shufflevector <4 x float> %i.cro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqz, <4 x float> nofpclass(nan inf) %i.crp, <4 x float> nofpclass(nan inf) %.2242644795.us) ; 3 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %.2215714796.us, i64 16
  %indvars.iv.next5588 = add nuw nsw i64 %indvars.iv5587, 1 ; 2 uses
  %exitcond5593.not = icmp eq i64 %indvars.iv.next5588, %wide.trip.count5592
  br i1 %exitcond5593.not, label %._crit_edge4799.us, label %bb.v, !llvm.loop !200

._crit_edge4799.us:                               ; preds = %bb.v
  %scevgep5589 = getelementptr i8, ptr %.2115704805.us, i64 16
  %scevgep5590 = getelementptr i8, ptr %scevgep5589, i64 %i.bao ; 2 uses
  %indvars.iv.next5595 = add nuw nsw i64 %indvars.iv5594, 2 ; 3 uses
  %i.crs = trunc i64 %indvars.iv.next5595 to i32
  %i.crt = or i32 %i.crs, 1
  %i.cru = icmp slt i32 %i.crt, %i.ayw
  br i1 %i.cru, label %_ZN4ncnn3MatD2Ev.exit2347.us, label %.preheader4378.loopexit, !llvm.loop !201

_ZN4ncnn3MatD2Ev.exit2348:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2348.lr.ph, %.loopexit4364
  %.215464782 = phi i32 [ %.11545.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %i.cvy, %.loopexit4364 ] ; 2 uses
  %.1615654781 = phi ptr [ %.91558.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.201569, %.loopexit4364 ] ; 7 uses
  %.1642164780 = phi <4 x float> [ %.94209.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204220, %.loopexit4364 ] ; 5 uses
  %.1642374779 = phi <4 x float> [ %.94230.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204241, %.loopexit4364 ] ; 5 uses
  %.1642584778 = phi <4 x float> [ %.94251.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204262, %.loopexit4364 ] ; 5 uses
  %.1742824777 = phi <4 x float> [ %.104275.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.214286, %.loopexit4364 ] ; 5 uses
  %i.crv = sdiv i32 %.215464782, %i.ayu
  %i.crw = sext i32 %i.crv to i64
  %.reass4790 = mul i64 %factor.op.mul4789, %i.crw
  %gep4793 = getelementptr i8, ptr %invariant.gep4792, i64 %.reass4790 ; 5 uses
  br i1 %i.azt, label %.preheader4365, label %.loopexit4366

.preheader4365:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2348
  br i1 %i.cem, label %.lr.ph4759, label %.loopexit4364

.lr.ph4759:                                       ; preds = %.preheader4365, %.lr.ph4759
  %indvars.iv5573 = phi i64 [ %indvars.iv.next5574, %.lr.ph4759 ], [ 0, %.preheader4365 ] ; 2 uses
  %.1715664757 = phi ptr [ %i.ctn, %.lr.ph4759 ], [ %.1615654781, %.preheader4365 ] ; 5 uses
  %.1742174756 = phi <4 x float> [ %i.ctm, %.lr.ph4759 ], [ %.1642164780, %.preheader4365 ]
  %.1742384755 = phi <4 x float> [ %i.ctj, %.lr.ph4759 ], [ %.1642374779, %.preheader4365 ]
  %.1742594754 = phi <4 x float> [ %i.ctg, %.lr.ph4759 ], [ %.1642584778, %.preheader4365 ]
  %.1842834753 = phi <4 x float> [ %i.ctd, %.lr.ph4759 ], [ %.1742824777, %.preheader4365 ]
  %i.crx = getelementptr inbounds nuw [4 x i8], ptr %i.cen, i64 %indvars.iv5573
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !30
  %i.crz = sext i32 %i.cry to i64
  %i.csa = getelementptr inbounds [2 x i8], ptr %gep4793, i64 %i.crz
  %i.csb = load i64, ptr %.1715664757, align 1, !tbaa !18
  %i.csc = insertelement <2 x i64> poison, i64 %i.csb, i64 0
  %i.csd = bitcast <2 x i64> %i.csc to <8 x i16>
  %i.cse = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csf = bitcast <8 x i16> %i.cse to <4 x float>
  %i.csg = getelementptr inbounds nuw i8, ptr %.1715664757, i64 8
  %i.csh = load i64, ptr %i.csg, align 1, !tbaa !18
  %i.csi = insertelement <2 x i64> poison, i64 %i.csh, i64 0
  %i.csj = bitcast <2 x i64> %i.csi to <8 x i16>
  %i.csk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csl = bitcast <8 x i16> %i.csk to <4 x float>
  %i.csm = getelementptr inbounds nuw i8, ptr %.1715664757, i64 16
  %i.csn = load i64, ptr %i.csm, align 1, !tbaa !18
  %i.cso = insertelement <2 x i64> poison, i64 %i.csn, i64 0
  %i.csp = bitcast <2 x i64> %i.cso to <8 x i16>
  %i.csq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csr = bitcast <8 x i16> %i.csq to <4 x float>
  %i.css = getelementptr inbounds nuw i8, ptr %.1715664757, i64 24
  %i.cst = load i64, ptr %i.css, align 1, !tbaa !18
  %i.csu = insertelement <2 x i64> poison, i64 %i.cst, i64 0
  %i.csv = bitcast <2 x i64> %i.csu to <8 x i16>
  %i.csw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csx = bitcast <8 x i16> %i.csw to <4 x float>
  %i.csy = load <4 x i16>, ptr %i.csa, align 2, !tbaa !24
  %i.csz = zext <4 x i16> %i.csy to <4 x i32>
  %i.cta = shl nuw <4 x i32> %i.csz, splat (i32 16) ; 4 uses
  %i.ctb = bitcast <4 x i32> %i.cta to <4 x float>
  %i.ctc = shufflevector <4 x float> %i.ctb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csf, <4 x float> nofpclass(nan inf) %i.ctc, <4 x float> nofpclass(nan inf) %.1842834753) ; 2 uses
  %i.cte = bitcast <4 x i32> %i.cta to <4 x float>
  %i.ctf = shufflevector <4 x float> %i.cte, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ctg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csl, <4 x float> nofpclass(nan inf) %i.ctf, <4 x float> nofpclass(nan inf) %.1742594754) ; 2 uses
  %i.cth = bitcast <4 x i32> %i.cta to <4 x float>
  %i.cti = shufflevector <4 x float> %i.cth, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ctj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csr, <4 x float> nofpclass(nan inf) %i.cti, <4 x float> nofpclass(nan inf) %.1742384755) ; 2 uses
  %i.ctk = bitcast <4 x i32> %i.cta to <4 x float>
  %i.ctl = shufflevector <4 x float> %i.ctk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ctm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csx, <4 x float> nofpclass(nan inf) %i.ctl, <4 x float> nofpclass(nan inf) %.1742174756) ; 2 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %.1715664757, i64 32
  %indvars.iv.next5574 = add nuw nsw i64 %indvars.iv5573, 1 ; 2 uses
  %exitcond5579.not = icmp eq i64 %indvars.iv.next5574, %wide.trip.count5578
  br i1 %exitcond5579.not, label %.loopexit4366.loopexit, label %.lr.ph4759, !llvm.loop !202

.loopexit4366.loopexit:                           ; preds = %.lr.ph4759
  %scevgep5575 = getelementptr i8, ptr %.1615654781, i64 32
  %scevgep5576 = getelementptr i8, ptr %scevgep5575, i64 %i.cer
  br label %.loopexit4364

.loopexit4366:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2348
  br i1 %i.azu, label %.preheader4363, label %.loopexit4364

.preheader4363:                                   ; preds = %.loopexit4366
  br i1 %i.cem, label %.lr.ph4771, label %.loopexit4364

.lr.ph4771:                                       ; preds = %.preheader4363
  %i.cto = getelementptr [2 x i8], ptr %gep4793, i64 %i.ceo
  %i.ctp = getelementptr i8, ptr %gep4793, i64 %.idx2051
  %i.ctq = getelementptr i8, ptr %gep4793, i64 %.idx2052
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph4771, %bb.w
  %indvars.iv5580 = phi i64 [ 0, %.lr.ph4771 ], [ %indvars.iv.next5581, %bb.w ] ; 2 uses
  %.1915684769 = phi ptr [ %.1615654781, %.lr.ph4771 ], [ %i.cvx, %bb.w ] ; 5 uses
  %.1942194768 = phi <4 x float> [ %.1642164780, %.lr.ph4771 ], [ %i.cvw, %bb.w ]
  %.1942404767 = phi <4 x float> [ %.1642374779, %.lr.ph4771 ], [ %i.cvo, %bb.w ]
  %.1942614766 = phi <4 x float> [ %.1642584778, %.lr.ph4771 ], [ %i.cvg, %bb.w ]
  %.2042854765 = phi <4 x float> [ %.1742824777, %.lr.ph4771 ], [ %i.cuy, %bb.w ]
  %i.ctr = getelementptr inbounds nuw [4 x i8], ptr %i.cen, i64 %indvars.iv5580
  %i.cts = load i32, ptr %i.ctr, align 4, !tbaa !30
  %i.ctt = load i64, ptr %.1915684769, align 1, !tbaa !18
  %i.ctu = insertelement <2 x i64> poison, i64 %i.ctt, i64 0
  %i.ctv = bitcast <2 x i64> %i.ctu to <8 x i16>
  %i.ctw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ctv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ctx = bitcast <8 x i16> %i.ctw to <4 x float>
  %i.cty = getelementptr inbounds nuw i8, ptr %.1915684769, i64 8
  %i.ctz = load i64, ptr %i.cty, align 1, !tbaa !18
  %i.cua = insertelement <2 x i64> poison, i64 %i.ctz, i64 0
  %i.cub = bitcast <2 x i64> %i.cua to <8 x i16>
  %i.cuc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cub, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cud = bitcast <8 x i16> %i.cuc to <4 x float>
  %i.cue = getelementptr inbounds nuw i8, ptr %.1915684769, i64 16
  %i.cuf = load i64, ptr %i.cue, align 1, !tbaa !18
  %i.cug = insertelement <2 x i64> poison, i64 %i.cuf, i64 0
  %i.cuh = bitcast <2 x i64> %i.cug to <8 x i16>
  %i.cui = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cuh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cuj = bitcast <8 x i16> %i.cui to <4 x float>
  %i.cuk = getelementptr inbounds nuw i8, ptr %.1915684769, i64 24
  %i.cul = load i64, ptr %i.cuk, align 1, !tbaa !18
  %i.cum = insertelement <2 x i64> poison, i64 %i.cul, i64 0
  %i.cun = bitcast <2 x i64> %i.cum to <8 x i16>
  %i.cuo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cun, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cup = bitcast <8 x i16> %i.cuo to <4 x float>
  %i.cuq = sext i32 %i.cts to i64                 ; 4 uses
  %i.cur = getelementptr inbounds [2 x i8], ptr %gep4793, i64 %i.cuq
  %i.cus = load i16, ptr %i.cur, align 2, !tbaa !24
  %i.cut = zext i16 %i.cus to i32
  %i.cuu = shl nuw i32 %i.cut, 16
  %i.cuv = insertelement <4 x i32> poison, i32 %i.cuu, i64 0
  %i.cuw = bitcast <4 x i32> %i.cuv to <4 x float>
  %i.cux = shufflevector <4 x float> %i.cuw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cuy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctx, <4 x float> nofpclass(nan inf) %i.cux, <4 x float> nofpclass(nan inf) %.2042854765) ; 2 uses
  %i.cuz = getelementptr [2 x i8], ptr %i.cto, i64 %i.cuq
  %i.cva = load i16, ptr %i.cuz, align 2, !tbaa !24
  %i.cvb = zext i16 %i.cva to i32
  %i.cvc = shl nuw i32 %i.cvb, 16
end_hunk_6
begin_hunk_7_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dye = load i64, ptr %.1715084944, align 1, !tbaa !18
  %i.dyf = insertelement <2 x i64> poison, i64 %i.dye, i64 0
  %i.dyg = bitcast <2 x i64> %i.dyf to <8 x i16>
  %i.dyh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyi = bitcast <8 x i16> %i.dyh to <4 x float>
  %i.dyj = getelementptr inbounds nuw i8, ptr %.1715084944, i64 8
  %i.dyk = load i64, ptr %i.dyj, align 1, !tbaa !18
  %i.dyl = insertelement <2 x i64> poison, i64 %i.dyk, i64 0
  %i.dym = bitcast <2 x i64> %i.dyl to <8 x i16>
  %i.dyn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dym, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyo = bitcast <8 x i16> %i.dyn to <4 x float>
  %i.dyp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyd, <4 x float> nofpclass(nan inf) %i.dyi, <4 x float> nofpclass(nan inf) %.140684942)
  %i.dyq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyd, <4 x float> nofpclass(nan inf) %i.dyo, <4 x float> nofpclass(nan inf) %.140634943)
  %i.dyr = getelementptr inbounds nuw i8, ptr %.1715084944, i64 16
  %i.dys = getelementptr inbounds nuw [4 x i8], ptr %i.dxn, i64 %indvars.iv5667
  %i.dyt = getelementptr inbounds nuw i8, ptr %i.dys, i64 4
  %i.dyu = load i32, ptr %i.dyt, align 4, !tbaa !30
  %i.dyv = sext i32 %i.dyu to i64
  %i.dyw = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dyv
  %i.dyx = load i64, ptr %i.dyw, align 1, !tbaa !18
  %i.dyy = insertelement <2 x i64> poison, i64 %i.dyx, i64 0
  %i.dyz = bitcast <2 x i64> %i.dyy to <8 x i16>
  %i.dza = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzb = bitcast <8 x i16> %i.dza to <4 x float> ; 2 uses
  %i.dzc = load i64, ptr %i.dyr, align 1, !tbaa !18
  %i.dzd = insertelement <2 x i64> poison, i64 %i.dzc, i64 0
  %i.dze = bitcast <2 x i64> %i.dzd to <8 x i16>
  %i.dzf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dze, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzg = bitcast <8 x i16> %i.dzf to <4 x float>
  %i.dzh = getelementptr inbounds nuw i8, ptr %.1715084944, i64 24
  %i.dzi = load i64, ptr %i.dzh, align 1, !tbaa !18
  %i.dzj = insertelement <2 x i64> poison, i64 %i.dzi, i64 0
  %i.dzk = bitcast <2 x i64> %i.dzj to <8 x i16>
  %i.dzl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzm = bitcast <8 x i16> %i.dzl to <4 x float>
  %i.dzn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzb, <4 x float> nofpclass(nan inf) %i.dzg, <4 x float> nofpclass(nan inf) %i.dyp) ; 3 uses
  %i.dzo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzb, <4 x float> nofpclass(nan inf) %i.dzm, <4 x float> nofpclass(nan inf) %i.dyq) ; 3 uses
  %i.dzp = getelementptr inbounds nuw i8, ptr %.1715084944, i64 32 ; 2 uses
  %indvars.iv.next5668.1 = add nuw nsw i64 %indvars.iv5667, 2 ; 2 uses
  %niter6673.next.1 = add i64 %niter6673, 2       ; 2 uses
  %niter6673.ncmp.1 = icmp eq i64 %niter6673.next.1, %unroll_iter6672
  br i1 %niter6673.ncmp.1, label %.loopexit4349.thread.unr-lcssa, label %.lr.ph4946, !llvm.loop !231

.loopexit4349.thread.unr-lcssa:                   ; preds = %.lr.ph4946
  br i1 %lcmp.mod6668.not, label %.loopexit4349.thread, label %.lr.ph4946.epil.preheader

.lr.ph4946.epil.preheader:                        ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.preheader
  %indvars.iv5667.epil.init = phi i64 [ 0, %.lr.ph4946.preheader ], [ %indvars.iv.next5668.1, %.loopexit4349.thread.unr-lcssa ]
  %.1715084944.epil.init = phi ptr [ %.1615074960, %.lr.ph4946.preheader ], [ %i.dzp, %.loopexit4349.thread.unr-lcssa ] ; 2 uses
  %.140634943.epil.init = phi <4 x float> [ %.040624959, %.lr.ph4946.preheader ], [ %i.dzo, %.loopexit4349.thread.unr-lcssa ]
  %.140684942.epil.init = phi <4 x float> [ %.040674958, %.lr.ph4946.preheader ], [ %i.dzn, %.loopexit4349.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6671)
  %i.dzq = getelementptr inbounds nuw [4 x i8], ptr %i.dxn, i64 %indvars.iv5667.epil.init
  %i.dzr = load i32, ptr %i.dzq, align 4, !tbaa !30
  %i.dzs = sext i32 %i.dzr to i64
  %i.dzt = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dzs
  %i.dzu = load i64, ptr %i.dzt, align 1, !tbaa !18
  %i.dzv = insertelement <2 x i64> poison, i64 %i.dzu, i64 0
  %i.dzw = bitcast <2 x i64> %i.dzv to <8 x i16>
  %i.dzx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzy = bitcast <8 x i16> %i.dzx to <4 x float> ; 2 uses
  %i.dzz = load i64, ptr %.1715084944.epil.init, align 1, !tbaa !18
  %i.eaa = insertelement <2 x i64> poison, i64 %i.dzz, i64 0
  %i.eab = bitcast <2 x i64> %i.eaa to <8 x i16>
  %i.eac = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ead = bitcast <8 x i16> %i.eac to <4 x float>
  %i.eae = getelementptr inbounds nuw i8, ptr %.1715084944.epil.init, i64 8
  %i.eaf = load i64, ptr %i.eae, align 1, !tbaa !18
  %i.eag = insertelement <2 x i64> poison, i64 %i.eaf, i64 0
  %i.eah = bitcast <2 x i64> %i.eag to <8 x i16>
  %i.eai = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eaj = bitcast <8 x i16> %i.eai to <4 x float>
  %i.eak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzy, <4 x float> nofpclass(nan inf) %i.ead, <4 x float> nofpclass(nan inf) %.140684942.epil.init)
  %i.eal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzy, <4 x float> nofpclass(nan inf) %i.eaj, <4 x float> nofpclass(nan inf) %.140634943.epil.init)
  br label %.loopexit4349.thread

.loopexit4349.thread:                             ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.epil.preheader
  %.lcssa6528 = phi <4 x float> [ %i.dzn, %.loopexit4349.thread.unr-lcssa ], [ %i.eak, %.lr.ph4946.epil.preheader ]
  %.lcssa6527 = phi <4 x float> [ %i.dzo, %.loopexit4349.thread.unr-lcssa ], [ %i.eal, %.lr.ph4946.epil.preheader ]
  %scevgep5669 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5670 = getelementptr i8, ptr %scevgep5669, i64 %i.dxr
  br label %.loopexit4347

.loopexit4349:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %brmerge5224, label %.loopexit4347, label %.lr.ph4954

.lr.ph4954:                                       ; preds = %.loopexit4349
  %i.eam = getelementptr i8, ptr %gep4971, i64 %.idx1974
  %i.ean = getelementptr i8, ptr %gep4971, i64 %.idx1975
  %i.eao = getelementptr [2 x i8], ptr %gep4971, i64 %i.dxo
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph4954, %bb.aj
  %indvars.iv5674 = phi i64 [ 0, %.lr.ph4954 ], [ %indvars.iv.next5675, %bb.aj ] ; 2 uses
  %.1915104952 = phi ptr [ %.1615074960, %.lr.ph4954 ], [ %i.ebx, %bb.aj ] ; 3 uses
  %.340654951 = phi <4 x float> [ %.040624959, %.lr.ph4954 ], [ %i.ebw, %bb.aj ]
  %.340704950 = phi <4 x float> [ %.040674958, %.lr.ph4954 ], [ %i.ebv, %bb.aj ]
  %i.eap = getelementptr inbounds nuw [4 x i8], ptr %i.dxn, i64 %indvars.iv5674
  %i.eaq = load i32, ptr %i.eap, align 4, !tbaa !30
  %i.ear = sext i32 %i.eaq to i64                 ; 4 uses
  %i.eas = getelementptr [2 x i8], ptr %i.eam, i64 %i.ear
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !24
  %i.eau = getelementptr [2 x i8], ptr %i.ean, i64 %i.ear
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !24
  %i.eaw = getelementptr [2 x i8], ptr %i.eao, i64 %i.ear
  %i.eax = load i16, ptr %i.eaw, align 2, !tbaa !24
  %i.eay = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.ear
  %i.eaz = load i16, ptr %i.eay, align 2, !tbaa !24
  %i.eba = zext i16 %i.eat to i32
  %i.ebb = zext i16 %i.eav to i32
  %i.ebc = zext i16 %i.eax to i32
  %i.ebd = zext i16 %i.eaz to i32
  %i.ebe = insertelement <4 x i32> poison, i32 %i.ebd, i64 0
  %i.ebf = insertelement <4 x i32> %i.ebe, i32 %i.ebc, i64 1
  %i.ebg = insertelement <4 x i32> %i.ebf, i32 %i.ebb, i64 2
  %i.ebh = insertelement <4 x i32> %i.ebg, i32 %i.eba, i64 3
  %i.ebi = shl nuw <4 x i32> %i.ebh, splat (i32 16)
  %i.ebj = bitcast <4 x i32> %i.ebi to <4 x float> ; 2 uses
  %i.ebk = load i64, ptr %.1915104952, align 1, !tbaa !18
  %i.ebl = insertelement <2 x i64> poison, i64 %i.ebk, i64 0
  %i.ebm = bitcast <2 x i64> %i.ebl to <8 x i16>
  %i.ebn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebo = bitcast <8 x i16> %i.ebn to <4 x float>
  %i.ebp = getelementptr inbounds nuw i8, ptr %.1915104952, i64 8
  %i.ebq = load i64, ptr %i.ebp, align 1, !tbaa !18
  %i.ebr = insertelement <2 x i64> poison, i64 %i.ebq, i64 0
  %i.ebs = bitcast <2 x i64> %i.ebr to <8 x i16>
  %i.ebt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebu = bitcast <8 x i16> %i.ebt to <4 x float>
  %i.ebv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebj, <4 x float> nofpclass(nan inf) %i.ebo, <4 x float> nofpclass(nan inf) %.340704950) ; 2 uses
  %i.ebw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebj, <4 x float> nofpclass(nan inf) %i.ebu, <4 x float> nofpclass(nan inf) %.340654951) ; 2 uses
  %i.ebx = getelementptr inbounds nuw i8, ptr %.1915104952, i64 16
  %indvars.iv.next5675 = add nuw nsw i64 %indvars.iv5674, 1 ; 2 uses
  %exitcond5680.not = icmp eq i64 %indvars.iv.next5675, %wide.trip.count5679
  br i1 %exitcond5680.not, label %.loopexit4347.loopexit, label %bb.aj, !llvm.loop !232

.loopexit4347.loopexit:                           ; preds = %bb.aj
  %scevgep5676 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5677 = getelementptr i8, ptr %scevgep5676, i64 %i.dxr
  br label %.loopexit4347

.loopexit4347:                                    ; preds = %.loopexit4349.thread, %.loopexit4347.loopexit, %.loopexit4349
  %.44071 = phi nsz <4 x float> [ %.040674958, %.loopexit4349 ], [ %i.ebv, %.loopexit4347.loopexit ], [ %.lcssa6528, %.loopexit4349.thread ] ; 2 uses
  %.44066 = phi nsz <4 x float> [ %.040624959, %.loopexit4349 ], [ %i.ebw, %.loopexit4347.loopexit ], [ %.lcssa6527, %.loopexit4349.thread ] ; 2 uses
  %.201511 = phi ptr [ %.1615074960, %.loopexit4349 ], [ %scevgep5677, %.loopexit4347.loopexit ], [ %scevgep5670, %.loopexit4349.thread ] ; 2 uses
  %i.eby = add nuw nsw i32 %.214884961, 4         ; 3 uses
  %i.ebz = or disjoint i32 %i.eby, 3
  %i.eca = icmp slt i32 %i.ebz, %i.axv
  br i1 %i.eca, label %_ZN4ncnn3MatD2Ev.exit2340, label %._crit_edge4962, !llvm.loop !233

._crit_edge4962:                                  ; preds = %.loopexit4347, %._crit_edge4932
  %.04067.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44071, %.loopexit4347 ] ; 4 uses
  %.04062.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44066, %.loopexit4347 ] ; 4 uses
  %.161507.lcssa = phi ptr [ %.91500.lcssa, %._crit_edge4932 ], [ %.201511, %.loopexit4347 ] ; 3 uses
  %.21488.lcssa = phi i32 [ %.11487.lcssa, %._crit_edge4932 ], [ %i.eby, %.loopexit4347 ] ; 5 uses
  %i.ecb = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 3, i32 7>
  %i.ecc = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 1, i32 5>
  %i.ecd = fadd fast <2 x float> %i.ecb, %i.ecc
  %i.ece = fadd fast <2 x float> %i.ecd, %i.dhm
  %i.ecf = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 2, i32 6>
  %i.ecg = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 0, i32 4>
  %i.ech = fadd fast <2 x float> %i.ecf, %i.ecg
  %i.eci = fadd fast <2 x float> %i.ece, %i.ech
  %i.ecj = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 3, i32 7>
  %i.eck = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 1, i32 5>
  %i.ecl = fadd fast <2 x float> %i.ecj, %i.eck
  %i.ecm = fadd fast <2 x float> %i.eci, %i.ecl
  %i.ecn = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 2, i32 6>
  %i.eco = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 0, i32 4>
  %i.ecp = fadd fast <2 x float> %i.ecn, %i.eco
  %i.ecq = fadd fast <2 x float> %i.ecm, %i.ecp
  %i.ecr = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 3, i32 7>
  %i.ecs = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 1, i32 5>
  %i.ect = fadd fast <2 x float> %i.ecr, %i.ecs
  %i.ecu = fadd fast <2 x float> %i.ecq, %i.ect
  %i.ecv = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 2, i32 6>
  %i.ecw = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 0, i32 4>
  %i.ecx = fadd fast <2 x float> %i.ecv, %i.ecw
  %i.ecy = fadd fast <2 x float> %i.ecu, %i.ecx   ; 3 uses
  %i.ecz = or disjoint i32 %.21488.lcssa, 1
  %i.eda = icmp slt i32 %i.ecz, %i.axv
  br i1 %i.eda, label %_ZN4ncnn3MatD2Ev.exit2339.lr.ph, label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.lr.ph:                  ; preds = %._crit_edge4962
  %i.edb = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !301
  %i.edc = load ptr, ptr %0, align 8, !tbaa !15, !noalias !301
  %i.edd = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !301
  %i.ede = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !301 ; 2 uses
  %factor.op.mul4989 = mul i64 %i.edd, %i.ede
  %i.edf = sext i32 %i.edb to i64
  %i.edg = mul i64 %i.ede, %i.edf
  %i.edh = mul i64 %i.edg, %i.dgv
  %invariant.gep4991 = getelementptr i8, ptr %i.edc, i64 %i.edh
  %i.edi = mul nsw i64 %indvars.iv5701, %i.dhd
  %invariant.gep4992 = getelementptr [2 x i8], ptr %invariant.gep4991, i64 %i.edi
  %i.edj = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.edk = load i64, ptr %i.d, align 8
  br i1 %i.dgy, label %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2339.preheader

_ZN4ncnn3MatD2Ev.exit2339.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edl = add nsw i32 %.21488.lcssa, 2
  %i.edm = sub i32 %i.ays, %.21488.lcssa
  %i.edn = and i32 %i.edm, -2
  %i.edo = add i32 %i.edl, %i.edn
  br label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edp = zext i32 %.21488.lcssa to i64
  br label %iter.check6348

iter.check6348:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, %._crit_edge4977.us
  %indvars.iv5688 = phi i64 [ %i.edp, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %indvars.iv.next5689, %._crit_edge4977.us ] ; 2 uses
  %.2115124983.us = phi ptr [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %scevgep5684, %._crit_edge4977.us ] ; 7 uses
  %i.edq = phi <2 x float> [ %i.ecy, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %i.etr, %._crit_edge4977.us ] ; 4 uses
  %.reass4990.us = mul i64 %factor.op.mul4989, %indvars.iv5688
  %gep4993.us = getelementptr i8, ptr %invariant.gep4992, i64 %.reass4990.us ; 42 uses
  %i.edr = getelementptr [2 x i8], ptr %gep4993.us, i64 %i.edk ; 41 uses
  br i1 %min.iters.check6315, label %vec.epilog.scalar.ph6349.preheader, label %vector.main.loop.iter.check6316

vector.main.loop.iter.check6316:                  ; preds = %iter.check6348
  %i.eds = extractelement <2 x float> %i.edq, i64 0
  %i.edt = extractelement <2 x float> %i.edq, i64 1
  br i1 %min.iters.check6317, label %vec.epilog.ph6352, label %vector.ph6318

vector.ph6318:                                    ; preds = %vector.main.loop.iter.check6316
  %i.edu = getelementptr i8, ptr %.2115124983.us, i64 %i.dhf
  %i.edv = shufflevector <2 x float> %i.edq, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.edw = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.edv, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edx = shufflevector <16 x float> %i.edv, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6320

vector.body6320:                                  ; preds = %vector.body6320, %vector.ph6318
  %index6321 = phi i64 [ 0, %vector.ph6318 ], [ %index.next6340, %vector.body6320 ] ; 3 uses
  %vec.phi6322 = phi <16 x float> [ %i.edw, %vector.ph6318 ], [ %i.eos, %vector.body6320 ]
  %vec.phi6323 = phi <16 x float> [ zeroinitializer, %vector.ph6318 ], [ %i.eot, %vector.body6320 ]
  %vec.phi6324 = phi <16 x float> [ %i.edx, %vector.ph6318 ], [ %i.eoi, %vector.body6320 ]
  %vec.phi6325 = phi <16 x float> [ zeroinitializer, %vector.ph6318 ], [ %i.eoj, %vector.body6320 ]
  %i.edy = shl i64 %index6321, 3                  ; 2 uses
  %next.gep6326 = getelementptr i8, ptr %.2115124983.us, i64 %i.edy
  %i.edz = getelementptr i8, ptr %.2115124983.us, i64 %i.edy
  %next.gep6327 = getelementptr i8, ptr %i.edz, i64 128
  %i.eea = getelementptr inbounds nuw [4 x i8], ptr %i.edj, i64 %index6321 ; 2 uses
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.eea, i64 64
  %wide.load6328 = load <16 x i32>, ptr %i.eea, align 4, !tbaa !30
  %wide.load6329 = load <16 x i32>, ptr %i.eeb, align 4, !tbaa !30
  %i.eec = sext <16 x i32> %wide.load6328 to <16 x i64> ; 16 uses
  %i.eed = sext <16 x i32> %wide.load6329 to <16 x i64> ; 16 uses
  %i.eee = extractelement <16 x i64> %i.eec, i64 0 ; 2 uses
  %i.eef = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eee
  %i.eeg = extractelement <16 x i64> %i.eec, i64 1 ; 2 uses
  %i.eeh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeg
  %i.eei = extractelement <16 x i64> %i.eec, i64 2 ; 2 uses
  %i.eej = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eei
  %i.eek = extractelement <16 x i64> %i.eec, i64 3 ; 2 uses
  %i.eel = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eek
  %i.eem = extractelement <16 x i64> %i.eec, i64 4 ; 2 uses
  %i.een = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eem
  %i.eeo = extractelement <16 x i64> %i.eec, i64 5 ; 2 uses
  %i.eep = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeo
  %i.eeq = extractelement <16 x i64> %i.eec, i64 6 ; 2 uses
  %i.eer = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeq
  %i.ees = extractelement <16 x i64> %i.eec, i64 7 ; 2 uses
  %i.eet = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ees
  %i.eeu = extractelement <16 x i64> %i.eec, i64 8 ; 2 uses
  %i.eev = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeu
  %i.eew = extractelement <16 x i64> %i.eec, i64 9 ; 2 uses
  %i.eex = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eew
  %i.eey = extractelement <16 x i64> %i.eec, i64 10 ; 2 uses
  %i.eez = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eey
  %i.efa = extractelement <16 x i64> %i.eec, i64 11 ; 2 uses
  %i.efb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efa
  %i.efc = extractelement <16 x i64> %i.eec, i64 12 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efc
  %i.efe = extractelement <16 x i64> %i.eec, i64 13 ; 2 uses
  %i.eff = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efe
  %i.efg = extractelement <16 x i64> %i.eec, i64 14 ; 2 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efg
  %i.efi = extractelement <16 x i64> %i.eec, i64 15 ; 2 uses
  %i.efj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efi
  %i.efk = extractelement <16 x i64> %i.eed, i64 0 ; 2 uses
  %i.efl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efk
  %i.efm = extractelement <16 x i64> %i.eed, i64 1 ; 2 uses
  %i.efn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efm
  %i.efo = extractelement <16 x i64> %i.eed, i64 2 ; 2 uses
  %i.efp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efo
  %i.efq = extractelement <16 x i64> %i.eed, i64 3 ; 2 uses
  %i.efr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efq
  %i.efs = extractelement <16 x i64> %i.eed, i64 4 ; 2 uses
  %i.eft = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efs
  %i.efu = extractelement <16 x i64> %i.eed, i64 5 ; 2 uses
  %i.efv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efu
  %i.efw = extractelement <16 x i64> %i.eed, i64 6 ; 2 uses
  %i.efx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efw
  %i.efy = extractelement <16 x i64> %i.eed, i64 7 ; 2 uses
  %i.efz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efy
  %i.ega = extractelement <16 x i64> %i.eed, i64 8 ; 2 uses
  %i.egb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ega
  %i.egc = extractelement <16 x i64> %i.eed, i64 9 ; 2 uses
  %i.egd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egc
  %i.ege = extractelement <16 x i64> %i.eed, i64 10 ; 2 uses
  %i.egf = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ege
  %i.egg = extractelement <16 x i64> %i.eed, i64 11 ; 2 uses
  %i.egh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egg
  %i.egi = extractelement <16 x i64> %i.eed, i64 12 ; 2 uses
  %i.egj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egi
  %i.egk = extractelement <16 x i64> %i.eed, i64 13 ; 2 uses
  %i.egl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egk
  %i.egm = extractelement <16 x i64> %i.eed, i64 14 ; 2 uses
  %i.egn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egm
  %i.ego = extractelement <16 x i64> %i.eed, i64 15 ; 2 uses
  %i.egp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ego
  %i.egq = load i16, ptr %i.eef, align 2, !tbaa !24
  %i.egr = load i16, ptr %i.eeh, align 2, !tbaa !24
  %i.egs = load i16, ptr %i.eej, align 2, !tbaa !24
  %i.egt = load i16, ptr %i.eel, align 2, !tbaa !24
  %i.egu = load i16, ptr %i.een, align 2, !tbaa !24
  %i.egv = load i16, ptr %i.eep, align 2, !tbaa !24
  %i.egw = load i16, ptr %i.eer, align 2, !tbaa !24
  %i.egx = load i16, ptr %i.eet, align 2, !tbaa !24
  %i.egy = load i16, ptr %i.eev, align 2, !tbaa !24
  %i.egz = load i16, ptr %i.eex, align 2, !tbaa !24
  %i.eha = load i16, ptr %i.eez, align 2, !tbaa !24
  %i.ehb = load i16, ptr %i.efb, align 2, !tbaa !24
  %i.ehc = load i16, ptr %i.efd, align 2, !tbaa !24
  %i.ehd = load i16, ptr %i.eff, align 2, !tbaa !24
  %i.ehe = load i16, ptr %i.efh, align 2, !tbaa !24
  %i.ehf = load i16, ptr %i.efj, align 2, !tbaa !24
  %i.ehg = insertelement <16 x i16> poison, i16 %i.egq, i64 0
  %i.ehh = insertelement <16 x i16> %i.ehg, i16 %i.egr, i64 1
  %i.ehi = insertelement <16 x i16> %i.ehh, i16 %i.egs, i64 2
  %i.ehj = insertelement <16 x i16> %i.ehi, i16 %i.egt, i64 3
  %i.ehk = insertelement <16 x i16> %i.ehj, i16 %i.egu, i64 4
  %i.ehl = insertelement <16 x i16> %i.ehk, i16 %i.egv, i64 5
  %i.ehm = insertelement <16 x i16> %i.ehl, i16 %i.egw, i64 6
  %i.ehn = insertelement <16 x i16> %i.ehm, i16 %i.egx, i64 7
  %i.eho = insertelement <16 x i16> %i.ehn, i16 %i.egy, i64 8
  %i.ehp = insertelement <16 x i16> %i.eho, i16 %i.egz, i64 9
  %i.ehq = insertelement <16 x i16> %i.ehp, i16 %i.eha, i64 10
  %i.ehr = insertelement <16 x i16> %i.ehq, i16 %i.ehb, i64 11
  %i.ehs = insertelement <16 x i16> %i.ehr, i16 %i.ehc, i64 12
  %i.eht = insertelement <16 x i16> %i.ehs, i16 %i.ehd, i64 13
  %i.ehu = insertelement <16 x i16> %i.eht, i16 %i.ehe, i64 14
  %i.ehv = insertelement <16 x i16> %i.ehu, i16 %i.ehf, i64 15
  %i.ehw = load i16, ptr %i.efl, align 2, !tbaa !24
  %i.ehx = load i16, ptr %i.efn, align 2, !tbaa !24
  %i.ehy = load i16, ptr %i.efp, align 2, !tbaa !24
  %i.ehz = load i16, ptr %i.efr, align 2, !tbaa !24
  %i.eia = load i16, ptr %i.eft, align 2, !tbaa !24
  %i.eib = load i16, ptr %i.efv, align 2, !tbaa !24
  %i.eic = load i16, ptr %i.efx, align 2, !tbaa !24
  %i.eid = load i16, ptr %i.efz, align 2, !tbaa !24
  %i.eie = load i16, ptr %i.egb, align 2, !tbaa !24
  %i.eif = load i16, ptr %i.egd, align 2, !tbaa !24
  %i.eig = load i16, ptr %i.egf, align 2, !tbaa !24
  %i.eih = load i16, ptr %i.egh, align 2, !tbaa !24
  %i.eii = load i16, ptr %i.egj, align 2, !tbaa !24
  %i.eij = load i16, ptr %i.egl, align 2, !tbaa !24
  %i.eik = load i16, ptr %i.egn, align 2, !tbaa !24
  %i.eil = load i16, ptr %i.egp, align 2, !tbaa !24
  %i.eim = insertelement <16 x i16> poison, i16 %i.ehw, i64 0
  %i.ein = insertelement <16 x i16> %i.eim, i16 %i.ehx, i64 1
  %i.eio = insertelement <16 x i16> %i.ein, i16 %i.ehy, i64 2
  %i.eip = insertelement <16 x i16> %i.eio, i16 %i.ehz, i64 3
  %i.eiq = insertelement <16 x i16> %i.eip, i16 %i.eia, i64 4
  %i.eir = insertelement <16 x i16> %i.eiq, i16 %i.eib, i64 5
  %i.eis = insertelement <16 x i16> %i.eir, i16 %i.eic, i64 6
  %i.eit = insertelement <16 x i16> %i.eis, i16 %i.eid, i64 7
  %i.eiu = insertelement <16 x i16> %i.eit, i16 %i.eie, i64 8
  %i.eiv = insertelement <16 x i16> %i.eiu, i16 %i.eif, i64 9
  %i.eiw = insertelement <16 x i16> %i.eiv, i16 %i.eig, i64 10
  %i.eix = insertelement <16 x i16> %i.eiw, i16 %i.eih, i64 11
  %i.eiy = insertelement <16 x i16> %i.eix, i16 %i.eii, i64 12
  %i.eiz = insertelement <16 x i16> %i.eiy, i16 %i.eij, i64 13
  %i.eja = insertelement <16 x i16> %i.eiz, i16 %i.eik, i64 14
  %i.ejb = insertelement <16 x i16> %i.eja, i16 %i.eil, i64 15
  %i.ejc = zext <16 x i16> %i.ehv to <16 x i32>
  %i.ejd = zext <16 x i16> %i.ejb to <16 x i32>
  %i.eje = shl nuw <16 x i32> %i.ejc, splat (i32 16)
  %i.ejf = shl nuw <16 x i32> %i.ejd, splat (i32 16)
  %i.ejg = bitcast <16 x i32> %i.eje to <16 x float> ; 2 uses
  %i.ejh = bitcast <16 x i32> %i.ejf to <16 x float> ; 2 uses
  %wide.vec6330 = load <64 x i16>, ptr %next.gep6326, align 2, !tbaa !24 ; 4 uses
  %strided.vec6331 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6332 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6333 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6334 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec6335 = load <64 x i16>, ptr %next.gep6327, align 2, !tbaa !24 ; 4 uses
  %strided.vec6336 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6337 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6338 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6339 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eji = zext <16 x i16> %strided.vec6331 to <16 x i32>
  %i.ejj = zext <16 x i16> %strided.vec6336 to <16 x i32>
  %i.ejk = shl nuw <16 x i32> %i.eji, splat (i32 16)
  %i.ejl = shl nuw <16 x i32> %i.ejj, splat (i32 16)
  %i.ejm = bitcast <16 x i32> %i.ejk to <16 x float>
  %i.ejn = bitcast <16 x i32> %i.ejl to <16 x float>
  %i.ejo = fmul fast <16 x float> %i.ejm, %i.ejg
  %i.ejp = fmul fast <16 x float> %i.ejn, %i.ejh
  %i.ejq = fadd fast <16 x float> %vec.phi6324, %i.ejo
  %i.ejr = fadd fast <16 x float> %vec.phi6325, %i.ejp
end_hunk_7
begin_hunk_8_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.gdn = trunc nuw nsw i64 %indvars.iv5795 to i32
  %.reass5191 = mul i32 %factor.op.mul5186, %i.gdn
  %i.gdo = sext i32 %.reass5191 to i64
  %invariant.gep5140 = getelementptr [2 x i8], ptr %invariant.gep5139, i64 %i.gdo
  %i.gdp = load i32, ptr %i.f, align 4            ; 6 uses
  %i.gdq = icmp slt i32 %i.gdp, 1                 ; 2 uses
  %i.gdr = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.gds = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx = mul i64 %i.gds, 6
  %.idx1923 = shl i64 %i.gds, 2
  %i.gdt = add i32 %i.gdp, -1
  %i.gdu = zext i32 %i.gdt to i64
  %i.gdv = shl nuw nsw i64 %i.gdu, 3              ; 2 uses
  %brmerge5239 = select i1 %i.dfm, i1 true, i1 %i.gdq
  %wide.trip.count5766 = zext i32 %i.gdp to i64   ; 2 uses
  %brmerge5242 = select i1 %i.dfk, i1 true, i1 %i.gdq
  %wide.trip.count5773 = zext nneg i32 %i.gdp to i64
  %xtraiter6698 = and i64 %wide.trip.count5766, 1
  %i.gdw = icmp eq i32 %i.gdp, 1
  %unroll_iter6702 = and i64 %wide.trip.count5766, 2147483646
  %lcmp.mod6699.not = icmp eq i64 %xtraiter6698, 0
  %lcmp.mod6701 = trunc i32 %i.gdp to i1
  br label %_ZN4ncnn3MatD2Ev.exit2333

_ZN4ncnn3MatD2Ev.exit2333:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2333.lr.ph, %.loopexit
  %.25132 = phi i32 [ %.1.lcssa, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %i.gha, %.loopexit ] ; 2 uses
  %.165131 = phi ptr [ %.9.lcssa, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %.20, %.loopexit ] ; 6 uses
  %.040415130 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %.44045, %.loopexit ] ; 4 uses
  %i.gdx = sdiv i32 %.25132, %i.n
  %i.gdy = sext i32 %i.gdx to i64
  %.reass5138 = mul i64 %factor.op.mul5137, %i.gdy
  %gep5141 = getelementptr i8, ptr %invariant.gep5140, i64 %.reass5138 ; 7 uses
  br i1 %brmerge5239, label %.loopexit4332, label %.lr.ph5121.preheader

.lr.ph5121.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %i.gdw, label %.lr.ph5121.epil.preheader, label %.lr.ph5121

.lr.ph5121:                                       ; preds = %.lr.ph5121.preheader, %.lr.ph5121
  %indvars.iv5761 = phi i64 [ %indvars.iv.next5762.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ] ; 3 uses
  %.175119 = phi ptr [ %i.gff, %.lr.ph5121 ], [ %.165131, %.lr.ph5121.preheader ] ; 3 uses
  %.140425118 = phi <4 x float> [ %i.gfe, %.lr.ph5121 ], [ %.040415130, %.lr.ph5121.preheader ]
  %niter6703 = phi i64 [ %niter6703.next.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ]
  %i.gdz = getelementptr inbounds nuw [4 x i8], ptr %i.gdr, i64 %indvars.iv5761
  %i.gea = load i32, ptr %i.gdz, align 4, !tbaa !30
  %i.geb = sext i32 %i.gea to i64
  %i.gec = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.geb
  %i.ged = load i64, ptr %i.gec, align 1, !tbaa !18
  %i.gee = insertelement <2 x i64> poison, i64 %i.ged, i64 0
  %i.gef = bitcast <2 x i64> %i.gee to <8 x i16>
  %i.geg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.geh = bitcast <8 x i16> %i.geg to <4 x float>
  %i.gei = load i64, ptr %.175119, align 1, !tbaa !18
  %i.gej = insertelement <2 x i64> poison, i64 %i.gei, i64 0
  %i.gek = bitcast <2 x i64> %i.gej to <8 x i16>
  %i.gel = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gem = bitcast <8 x i16> %i.gel to <4 x float>
  %i.gen = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.geh, <4 x float> nofpclass(nan inf) %i.gem, <4 x float> nofpclass(nan inf) %.140425118)
  %i.geo = getelementptr inbounds nuw i8, ptr %.175119, i64 8
  %i.gep = getelementptr inbounds nuw [4 x i8], ptr %i.gdr, i64 %indvars.iv5761
  %i.geq = getelementptr inbounds nuw i8, ptr %i.gep, i64 4
  %i.ger = load i32, ptr %i.geq, align 4, !tbaa !30
  %i.ges = sext i32 %i.ger to i64
  %i.get = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.ges
  %i.geu = load i64, ptr %i.get, align 1, !tbaa !18
  %i.gev = insertelement <2 x i64> poison, i64 %i.geu, i64 0
  %i.gew = bitcast <2 x i64> %i.gev to <8 x i16>
  %i.gex = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gey = bitcast <8 x i16> %i.gex to <4 x float>
  %i.gez = load i64, ptr %i.geo, align 1, !tbaa !18
  %i.gfa = insertelement <2 x i64> poison, i64 %i.gez, i64 0
  %i.gfb = bitcast <2 x i64> %i.gfa to <8 x i16>
  %i.gfc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfd = bitcast <8 x i16> %i.gfc to <4 x float>
  %i.gfe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gey, <4 x float> nofpclass(nan inf) %i.gfd, <4 x float> nofpclass(nan inf) %i.gen) ; 3 uses
  %i.gff = getelementptr inbounds nuw i8, ptr %.175119, i64 16 ; 2 uses
  %indvars.iv.next5762.1 = add nuw nsw i64 %indvars.iv5761, 2 ; 2 uses
  %niter6703.next.1 = add i64 %niter6703, 2       ; 2 uses
  %niter6703.ncmp.1 = icmp eq i64 %niter6703.next.1, %unroll_iter6702
  br i1 %niter6703.ncmp.1, label %.loopexit4332.thread.unr-lcssa, label %.lr.ph5121, !llvm.loop !264

.loopexit4332.thread.unr-lcssa:                   ; preds = %.lr.ph5121
  br i1 %lcmp.mod6699.not, label %.loopexit4332.thread, label %.lr.ph5121.epil.preheader

.lr.ph5121.epil.preheader:                        ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.preheader
  %indvars.iv5761.epil.init = phi i64 [ 0, %.lr.ph5121.preheader ], [ %indvars.iv.next5762.1, %.loopexit4332.thread.unr-lcssa ]
  %.175119.epil.init = phi ptr [ %.165131, %.lr.ph5121.preheader ], [ %i.gff, %.loopexit4332.thread.unr-lcssa ]
  %.140425118.epil.init = phi <4 x float> [ %.040415130, %.lr.ph5121.preheader ], [ %i.gfe, %.loopexit4332.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6701)
  %i.gfg = getelementptr inbounds nuw [4 x i8], ptr %i.gdr, i64 %indvars.iv5761.epil.init
  %i.gfh = load i32, ptr %i.gfg, align 4, !tbaa !30
  %i.gfi = sext i32 %i.gfh to i64
  %i.gfj = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gfi
  %i.gfk = load i64, ptr %i.gfj, align 1, !tbaa !18
  %i.gfl = insertelement <2 x i64> poison, i64 %i.gfk, i64 0
  %i.gfm = bitcast <2 x i64> %i.gfl to <8 x i16>
  %i.gfn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfo = bitcast <8 x i16> %i.gfn to <4 x float>
  %i.gfp = load i64, ptr %.175119.epil.init, align 1, !tbaa !18
  %i.gfq = insertelement <2 x i64> poison, i64 %i.gfp, i64 0
  %i.gfr = bitcast <2 x i64> %i.gfq to <8 x i16>
  %i.gfs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gft = bitcast <8 x i16> %i.gfs to <4 x float>
  %i.gfu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gfo, <4 x float> nofpclass(nan inf) %i.gft, <4 x float> nofpclass(nan inf) %.140425118.epil.init)
  br label %.loopexit4332.thread

.loopexit4332.thread:                             ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.epil.preheader
  %.lcssa6495 = phi <4 x float> [ %i.gfe, %.loopexit4332.thread.unr-lcssa ], [ %i.gfu, %.lr.ph5121.epil.preheader ]
  %scevgep5763 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5764 = getelementptr i8, ptr %scevgep5763, i64 %i.gdv
  br label %.loopexit

.loopexit4332:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %brmerge5242, label %.loopexit, label %.lr.ph5127

.lr.ph5127:                                       ; preds = %.loopexit4332
  %i.gfv = getelementptr i8, ptr %gep5141, i64 %.idx
  %i.gfw = getelementptr i8, ptr %gep5141, i64 %.idx1923
  %i.gfx = getelementptr [2 x i8], ptr %gep5141, i64 %i.gds
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph5127, %bb.ax
  %indvars.iv5768 = phi i64 [ 0, %.lr.ph5127 ], [ %indvars.iv.next5769, %bb.ax ] ; 2 uses
  %.195125 = phi ptr [ %.165131, %.lr.ph5127 ], [ %i.ggz, %bb.ax ] ; 2 uses
  %.340445124 = phi <4 x float> [ %.040415130, %.lr.ph5127 ], [ %i.ggy, %bb.ax ]
  %i.gfy = getelementptr inbounds nuw [4 x i8], ptr %i.gdr, i64 %indvars.iv5768
  %i.gfz = load i32, ptr %i.gfy, align 4, !tbaa !30
  %i.gga = sext i32 %i.gfz to i64                 ; 4 uses
  %i.ggb = getelementptr [2 x i8], ptr %i.gfv, i64 %i.gga
  %i.ggc = load i16, ptr %i.ggb, align 2, !tbaa !24
  %i.ggd = getelementptr [2 x i8], ptr %i.gfw, i64 %i.gga
  %i.gge = load i16, ptr %i.ggd, align 2, !tbaa !24
  %i.ggf = getelementptr [2 x i8], ptr %i.gfx, i64 %i.gga
  %i.ggg = load i16, ptr %i.ggf, align 2, !tbaa !24
  %i.ggh = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gga
  %i.ggi = load i16, ptr %i.ggh, align 2, !tbaa !24
  %i.ggj = zext i16 %i.ggc to i32
  %i.ggk = zext i16 %i.gge to i32
  %i.ggl = zext i16 %i.ggg to i32
  %i.ggm = zext i16 %i.ggi to i32
  %i.ggn = insertelement <4 x i32> poison, i32 %i.ggm, i64 0
  %i.ggo = insertelement <4 x i32> %i.ggn, i32 %i.ggl, i64 1
  %i.ggp = insertelement <4 x i32> %i.ggo, i32 %i.ggk, i64 2
  %i.ggq = insertelement <4 x i32> %i.ggp, i32 %i.ggj, i64 3
  %i.ggr = shl nuw <4 x i32> %i.ggq, splat (i32 16)
  %i.ggs = bitcast <4 x i32> %i.ggr to <4 x float>
  %i.ggt = load i64, ptr %.195125, align 1, !tbaa !18
  %i.ggu = insertelement <2 x i64> poison, i64 %i.ggt, i64 0
  %i.ggv = bitcast <2 x i64> %i.ggu to <8 x i16>
  %i.ggw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ggx = bitcast <8 x i16> %i.ggw to <4 x float>
  %i.ggy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ggs, <4 x float> nofpclass(nan inf) %i.ggx, <4 x float> nofpclass(nan inf) %.340445124) ; 2 uses
  %i.ggz = getelementptr inbounds nuw i8, ptr %.195125, i64 8
  %indvars.iv.next5769 = add nuw nsw i64 %indvars.iv5768, 1 ; 2 uses
  %exitcond5774.not = icmp eq i64 %indvars.iv.next5769, %wide.trip.count5773
  br i1 %exitcond5774.not, label %.loopexit.loopexit, label %bb.ax, !llvm.loop !265

.loopexit.loopexit:                               ; preds = %bb.ax
  %scevgep5770 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5771 = getelementptr i8, ptr %scevgep5770, i64 %i.gdv
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit4332.thread, %.loopexit.loopexit, %.loopexit4332
  %.44045 = phi nsz <4 x float> [ %.040415130, %.loopexit4332 ], [ %i.ggy, %.loopexit.loopexit ], [ %.lcssa6495, %.loopexit4332.thread ] ; 2 uses
  %.20 = phi ptr [ %.165131, %.loopexit4332 ], [ %scevgep5771, %.loopexit.loopexit ], [ %scevgep5764, %.loopexit4332.thread ] ; 2 uses
  %i.gha = add nuw nsw i32 %.25132, 4             ; 3 uses
  %i.ghb = or disjoint i32 %i.gha, 3
  %i.ghc = icmp slt i32 %i.ghb, %i.q
  br i1 %i.ghc, label %_ZN4ncnn3MatD2Ev.exit2333, label %._crit_edge5133, !llvm.loop !266

._crit_edge5133:                                  ; preds = %.loopexit, %._crit_edge5109
  %.04041.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge5109 ], [ %.44045, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge5109 ], [ %.20, %.loopexit ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge5109 ], [ %i.gha, %.loopexit ] ; 5 uses
  %i.ghd = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdd, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghe = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdd, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghf = fadd fast <4 x float> %i.ghd, %i.ghe
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fww, <4 x float> %i.ghf)
  %op.rdx6477 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01465, <8 x float> %i.fwx)
  %op.rdx6478 = fadd fast float %op.rdx, %op.rdx6477 ; 3 uses
  %i.ghg = or disjoint i32 %.2.lcssa, 1
  %i.ghh = icmp slt i32 %i.ghg, %i.q
  br i1 %i.ghh, label %_ZN4ncnn3MatD2Ev.exit2332.lr.ph, label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.lr.ph:                  ; preds = %._crit_edge5133
  %i.ghi = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !306
  %i.ghj = load ptr, ptr %0, align 8, !tbaa !15, !noalias !306
  %i.ghk = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !306
  %i.ghl = load i64, ptr %i.dfg, align 8, !tbaa !17, !noalias !306 ; 2 uses
  %factor.op.mul5155 = mul i64 %i.ghk, %i.ghl
  %i.ghm = sext i32 %i.ghi to i64
  %i.ghn = mul i64 %i.ghl, %i.ghm
  %i.gho = mul i64 %i.ghn, %i.fnr
  %invariant.gep5157 = getelementptr i8, ptr %i.ghj, i64 %i.gho
  %i.ghp = mul nsw i64 %indvars.iv5795, %i.fnz
  %invariant.gep5158 = getelementptr [2 x i8], ptr %invariant.gep5157, i64 %i.ghp
  %i.ghq = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.ghr = load i64, ptr %i.d, align 8
  br i1 %i.fnu, label %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2332.preheader

_ZN4ncnn3MatD2Ev.exit2332.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghs = add nsw i32 %.2.lcssa, 2
  %i.ght = sub i32 %i.dft, %.2.lcssa
  %i.ghu = and i32 %i.ght, -2
  %i.ghv = add i32 %i.ghs, %i.ghu
  br label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghw = zext i32 %.2.lcssa to i64
  br label %iter.check6457

iter.check6457:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, %._crit_edge5146.us
  %indvars.iv5782 = phi i64 [ %i.ghw, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %indvars.iv.next5783, %._crit_edge5146.us ] ; 2 uses
  %.215150.us = phi ptr [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %scevgep5778, %._crit_edge5146.us ] ; 9 uses
  %.114665149.us = phi float [ %op.rdx6478, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %.lcssa6118, %._crit_edge5146.us ] ; 3 uses
  %.reass5156.us = mul i64 %factor.op.mul5155, %indvars.iv5782
  %gep5159.us = getelementptr i8, ptr %invariant.gep5158, i64 %.reass5156.us ; 74 uses
  %i.ghx = getelementptr [2 x i8], ptr %gep5159.us, i64 %i.ghr ; 73 uses
  br i1 %min.iters.check6418, label %vec.epilog.scalar.ph6458.preheader, label %vector.main.loop.iter.check6419

vector.main.loop.iter.check6419:                  ; preds = %iter.check6457
  br i1 %min.iters.check6420, label %vec.epilog.ph6461, label %vector.ph6421

vector.ph6421:                                    ; preds = %vector.main.loop.iter.check6419
  %i.ghy = getelementptr i8, ptr %.215150.us, i64 %i.fob
  %i.ghz = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.114665149.us, i64 0
  br label %vector.body6423

vector.body6423:                                  ; preds = %vector.body6423, %vector.ph6421
  %index6424 = phi i64 [ 0, %vector.ph6421 ], [ %index.next6449, %vector.body6423 ] ; 3 uses
  %vec.phi6425 = phi <16 x float> [ %i.ghz, %vector.ph6421 ], [ %i.hce, %vector.body6423 ]
  %vec.phi6426 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hcf, %vector.body6423 ]
  %vec.phi6427 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hcg, %vector.body6423 ]
  %vec.phi6428 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hch, %vector.body6423 ]
  %i.gia = shl i64 %index6424, 2                  ; 4 uses
  %next.gep6429 = getelementptr i8, ptr %.215150.us, i64 %i.gia
  %i.gib = getelementptr i8, ptr %.215150.us, i64 %i.gia
  %next.gep6430 = getelementptr i8, ptr %i.gib, i64 64
  %i.gic = getelementptr i8, ptr %.215150.us, i64 %i.gia
  %next.gep6431 = getelementptr i8, ptr %i.gic, i64 128
  %i.gid = getelementptr i8, ptr %.215150.us, i64 %i.gia
  %next.gep6432 = getelementptr i8, ptr %i.gid, i64 192
  %i.gie = getelementptr inbounds nuw [4 x i8], ptr %i.ghq, i64 %index6424 ; 4 uses
  %i.gif = getelementptr inbounds nuw i8, ptr %i.gie, i64 64
  %i.gig = getelementptr inbounds nuw i8, ptr %i.gie, i64 128
  %i.gih = getelementptr inbounds nuw i8, ptr %i.gie, i64 192
  %wide.load6433 = load <16 x i32>, ptr %i.gie, align 4, !tbaa !30
  %wide.load6434 = load <16 x i32>, ptr %i.gif, align 4, !tbaa !30
  %wide.load6435 = load <16 x i32>, ptr %i.gig, align 4, !tbaa !30
  %wide.load6436 = load <16 x i32>, ptr %i.gih, align 4, !tbaa !30
  %i.gii = sext <16 x i32> %wide.load6433 to <16 x i64> ; 16 uses
  %i.gij = sext <16 x i32> %wide.load6434 to <16 x i64> ; 16 uses
  %i.gik = sext <16 x i32> %wide.load6435 to <16 x i64> ; 16 uses
  %i.gil = sext <16 x i32> %wide.load6436 to <16 x i64> ; 16 uses
  %i.gim = extractelement <16 x i64> %i.gii, i64 0 ; 2 uses
  %i.gin = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gim
  %i.gio = extractelement <16 x i64> %i.gii, i64 1 ; 2 uses
  %i.gip = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gio
  %i.giq = extractelement <16 x i64> %i.gii, i64 2 ; 2 uses
  %i.gir = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giq
  %i.gis = extractelement <16 x i64> %i.gii, i64 3 ; 2 uses
  %i.git = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gis
  %i.giu = extractelement <16 x i64> %i.gii, i64 4 ; 2 uses
  %i.giv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giu
  %i.giw = extractelement <16 x i64> %i.gii, i64 5 ; 2 uses
  %i.gix = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giw
  %i.giy = extractelement <16 x i64> %i.gii, i64 6 ; 2 uses
  %i.giz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giy
  %i.gja = extractelement <16 x i64> %i.gii, i64 7 ; 2 uses
  %i.gjb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gja
  %i.gjc = extractelement <16 x i64> %i.gii, i64 8 ; 2 uses
  %i.gjd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjc
  %i.gje = extractelement <16 x i64> %i.gii, i64 9 ; 2 uses
  %i.gjf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gje
  %i.gjg = extractelement <16 x i64> %i.gii, i64 10 ; 2 uses
  %i.gjh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjg
  %i.gji = extractelement <16 x i64> %i.gii, i64 11 ; 2 uses
  %i.gjj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gji
  %i.gjk = extractelement <16 x i64> %i.gii, i64 12 ; 2 uses
  %i.gjl = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjk
  %i.gjm = extractelement <16 x i64> %i.gii, i64 13 ; 2 uses
  %i.gjn = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjm
  %i.gjo = extractelement <16 x i64> %i.gii, i64 14 ; 2 uses
  %i.gjp = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjo
  %i.gjq = extractelement <16 x i64> %i.gii, i64 15 ; 2 uses
  %i.gjr = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjq
  %i.gjs = extractelement <16 x i64> %i.gij, i64 0 ; 2 uses
  %i.gjt = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjs
  %i.gju = extractelement <16 x i64> %i.gij, i64 1 ; 2 uses
  %i.gjv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gju
  %i.gjw = extractelement <16 x i64> %i.gij, i64 2 ; 2 uses
  %i.gjx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjw
  %i.gjy = extractelement <16 x i64> %i.gij, i64 3 ; 2 uses
  %i.gjz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjy
  %i.gka = extractelement <16 x i64> %i.gij, i64 4 ; 2 uses
  %i.gkb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gka
  %i.gkc = extractelement <16 x i64> %i.gij, i64 5 ; 2 uses
  %i.gkd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkc
  %i.gke = extractelement <16 x i64> %i.gij, i64 6 ; 2 uses
  %i.gkf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gke
  %i.gkg = extractelement <16 x i64> %i.gij, i64 7 ; 2 uses
  %i.gkh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkg
  %i.gki = extractelement <16 x i64> %i.gij, i64 8 ; 2 uses
  %i.gkj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gki
  %i.gkk = extractelement <16 x i64> %i.gij, i64 9 ; 2 uses
  %i.gkl = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkk
  %i.gkm = extractelement <16 x i64> %i.gij, i64 10 ; 2 uses
  %i.gkn = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkm
  %i.gko = extractelement <16 x i64> %i.gij, i64 11 ; 2 uses
  %i.gkp = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gko
  %i.gkq = extractelement <16 x i64> %i.gij, i64 12 ; 2 uses
  %i.gkr = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkq
  %i.gks = extractelement <16 x i64> %i.gij, i64 13 ; 2 uses
  %i.gkt = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gks
  %i.gku = extractelement <16 x i64> %i.gij, i64 14 ; 2 uses
  %i.gkv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gku
  %i.gkw = extractelement <16 x i64> %i.gij, i64 15 ; 2 uses
  %i.gkx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkw
  %i.gky = extractelement <16 x i64> %i.gik, i64 0 ; 2 uses
  %i.gkz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gky
  %i.gla = extractelement <16 x i64> %i.gik, i64 1 ; 2 uses
  %i.glb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gla
  %i.glc = extractelement <16 x i64> %i.gik, i64 2 ; 2 uses
  %i.gld = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glc
  %i.gle = extractelement <16 x i64> %i.gik, i64 3 ; 2 uses
  %i.glf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gle
  %i.glg = extractelement <16 x i64> %i.gik, i64 4 ; 2 uses
  %i.glh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glg
  %i.gli = extractelement <16 x i64> %i.gik, i64 5 ; 2 uses
  %i.glj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gli
  %i.glk = extractelement <16 x i64> %i.gik, i64 6 ; 2 uses
  %i.gll = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glk
  %i.glm = extractelement <16 x i64> %i.gik, i64 7 ; 2 uses
  %i.gln = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glm
  %i.glo = extractelement <16 x i64> %i.gik, i64 8 ; 2 uses
  %i.glp = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glo
  %i.glq = extractelement <16 x i64> %i.gik, i64 9 ; 2 uses
  %i.glr = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glq
  %i.gls = extractelement <16 x i64> %i.gik, i64 10 ; 2 uses
  %i.glt = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gls
  %i.glu = extractelement <16 x i64> %i.gik, i64 11 ; 2 uses
  %i.glv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glu
  %i.glw = extractelement <16 x i64> %i.gik, i64 12 ; 2 uses
  %i.glx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glw
  %i.gly = extractelement <16 x i64> %i.gik, i64 13 ; 2 uses
  %i.glz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gly
  %i.gma = extractelement <16 x i64> %i.gik, i64 14 ; 2 uses
  %i.gmb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gma
  %i.gmc = extractelement <16 x i64> %i.gik, i64 15 ; 2 uses
  %i.gmd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmc
  %i.gme = extractelement <16 x i64> %i.gil, i64 0 ; 2 uses
  %i.gmf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gme
  %i.gmg = extractelement <16 x i64> %i.gil, i64 1 ; 2 uses
  %i.gmh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmg
  %i.gmi = extractelement <16 x i64> %i.gil, i64 2 ; 2 uses
  %i.gmj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmi
  %i.gmk = extractelement <16 x i64> %i.gil, i64 3 ; 2 uses
  %i.gml = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmk
  %i.gmm = extractelement <16 x i64> %i.gil, i64 4 ; 2 uses
  %i.gmn = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmm
  %i.gmo = extractelement <16 x i64> %i.gil, i64 5 ; 2 uses
  %i.gmp = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmo
  %i.gmq = extractelement <16 x i64> %i.gil, i64 6 ; 2 uses
  %i.gmr = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmq
  %i.gms = extractelement <16 x i64> %i.gil, i64 7 ; 2 uses
  %i.gmt = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gms
  %i.gmu = extractelement <16 x i64> %i.gil, i64 8 ; 2 uses
  %i.gmv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmu
  %i.gmw = extractelement <16 x i64> %i.gil, i64 9 ; 2 uses
  %i.gmx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmw
  %i.gmy = extractelement <16 x i64> %i.gil, i64 10 ; 2 uses
  %i.gmz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmy
  %i.gna = extractelement <16 x i64> %i.gil, i64 11 ; 2 uses
  %i.gnb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gna
  %i.gnc = extractelement <16 x i64> %i.gil, i64 12 ; 2 uses
  %i.gnd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnc
  %i.gne = extractelement <16 x i64> %i.gil, i64 13 ; 2 uses
  %i.gnf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gne
  %i.gng = extractelement <16 x i64> %i.gil, i64 14 ; 2 uses
  %i.gnh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gng
  %i.gni = extractelement <16 x i64> %i.gil, i64 15 ; 2 uses
  %i.gnj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gni
  %i.gnk = load i16, ptr %i.gin, align 2, !tbaa !24
  %i.gnl = load i16, ptr %i.gip, align 2, !tbaa !24
  %i.gnm = load i16, ptr %i.gir, align 2, !tbaa !24
  %i.gnn = load i16, ptr %i.git, align 2, !tbaa !24
  %i.gno = load i16, ptr %i.giv, align 2, !tbaa !24
  %i.gnp = load i16, ptr %i.gix, align 2, !tbaa !24
  %i.gnq = load i16, ptr %i.giz, align 2, !tbaa !24
  %i.gnr = load i16, ptr %i.gjb, align 2, !tbaa !24
  %i.gns = load i16, ptr %i.gjd, align 2, !tbaa !24
  %i.gnt = load i16, ptr %i.gjf, align 2, !tbaa !24
  %i.gnu = load i16, ptr %i.gjh, align 2, !tbaa !24
  %i.gnv = load i16, ptr %i.gjj, align 2, !tbaa !24
  %i.gnw = load i16, ptr %i.gjl, align 2, !tbaa !24
  %i.gnx = load i16, ptr %i.gjn, align 2, !tbaa !24
  %i.gny = load i16, ptr %i.gjp, align 2, !tbaa !24
  %i.gnz = load i16, ptr %i.gjr, align 2, !tbaa !24
  %i.goa = insertelement <16 x i16> poison, i16 %i.gnk, i64 0
  %i.gob = insertelement <16 x i16> %i.goa, i16 %i.gnl, i64 1
  %i.goc = insertelement <16 x i16> %i.gob, i16 %i.gnm, i64 2
  %i.god = insertelement <16 x i16> %i.goc, i16 %i.gnn, i64 3
end_hunk_8
begin_hunk_9_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.add = bitcast <8 x i32> %i.ack to <8 x float>
  %i.ade = shufflevector <8 x float> %i.add, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.adf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acc, <16 x float> nofpclass(nan inf) %i.ade, <16 x float> nofpclass(nan inf) %i.act) ; 2 uses
  %i.adg = bitcast <8 x i32> %i.ack to <8 x float>
  %i.adh = shufflevector <8 x float> %i.adg, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.adi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acf, <16 x float> nofpclass(nan inf) %i.adh, <16 x float> nofpclass(nan inf) %i.acw) ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.121162, i64 256
  %indvars.iv.next1380 = add nuw nsw i64 %indvars.iv1379, 1 ; 2 uses
  %exitcond1385.not = icmp eq i64 %indvars.iv.next1380, %wide.trip.count1384
  br i1 %exitcond1385.not, label %.loopexit1072.loopexit, label %bb.m, !llvm.loop !326

.loopexit1072.loopexit:                           ; preds = %bb.m
  %scevgep1381 = getelementptr i8, ptr %.91186, i64 256
  %i.adk = add nsw i32 %i.abb, -1
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = shl nuw nsw i64 %i.adl, 8
  %scevgep1382 = getelementptr i8, ptr %scevgep1381, i64 %i.adm
  br label %.loopexit1071

.loopexit1072:                                    ; preds = %.loopexit1074
  br i1 %i.ao, label %.preheader1070, label %.loopexit1071

.preheader1070:                                   ; preds = %.loopexit1072
  %i.adn = load i32, ptr %9, align 4, !tbaa !30   ; 3 uses
  %i.ado = icmp sgt i32 %i.adn, 0
  br i1 %i.ado, label %.lr.ph1176, label %.loopexit1071

.lr.ph1176:                                       ; preds = %.preheader1070
  %i.adp = load ptr, ptr %10, align 8, !tbaa !36
  %i.adq = load i64, ptr %11, align 8, !tbaa !34  ; 7 uses
  %i.adr = getelementptr [2 x i8], ptr %gep1198, i64 %i.adq
  %.idx702 = shl i64 %i.adq, 2
  %i.ads = getelementptr i8, ptr %gep1198, i64 %.idx702
  %.idx703 = mul i64 %i.adq, 6
  %i.adt = getelementptr i8, ptr %gep1198, i64 %.idx703
  %.idx704 = shl i64 %i.adq, 3
  %i.adu = getelementptr i8, ptr %gep1198, i64 %.idx704
  %.idx705 = mul i64 %i.adq, 10
  %i.adv = getelementptr i8, ptr %gep1198, i64 %.idx705
  %.idx706 = mul i64 %i.adq, 12
  %i.adw = getelementptr i8, ptr %gep1198, i64 %.idx706
  %.idx707 = mul i64 %i.adq, 14
  %i.adx = getelementptr i8, ptr %gep1198, i64 %.idx707
  %wide.trip.count1391 = zext nneg i32 %i.adn to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1176, %bb.n
  %indvars.iv1386 = phi i64 [ 0, %.lr.ph1176 ], [ %indvars.iv.next1387, %bb.n ] ; 2 uses
  %.141174 = phi ptr [ %.91186, %.lr.ph1176 ], [ %i.ahk, %bb.n ] ; 9 uses
  %.146231173 = phi <16 x float> [ %.96181185, %.lr.ph1176 ], [ %i.ahj, %bb.n ]
  %.146441172 = phi <16 x float> [ %.96391184, %.lr.ph1176 ], [ %i.ahb, %bb.n ]
  %.146651171 = phi <16 x float> [ %.96601183, %.lr.ph1176 ], [ %i.agt, %bb.n ]
  %.1510521170 = phi <16 x float> [ %.1010471182, %.lr.ph1176 ], [ %i.agl, %bb.n ]
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv1386
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !30
  %i.aea = load <16 x bfloat>, ptr %.141174, align 32, !tbaa !18
  %i.aeb = fpext fast <16 x bfloat> %i.aea to <16 x float>
  %i.aec = getelementptr inbounds nuw i8, ptr %.141174, i64 32
  %i.aed = load <16 x bfloat>, ptr %i.aec, align 32, !tbaa !18
  %i.aee = fpext fast <16 x bfloat> %i.aed to <16 x float>
  %i.aef = getelementptr inbounds nuw i8, ptr %.141174, i64 64
  %i.aeg = load <16 x bfloat>, ptr %i.aef, align 32, !tbaa !18
  %i.aeh = fpext fast <16 x bfloat> %i.aeg to <16 x float>
  %i.aei = getelementptr inbounds nuw i8, ptr %.141174, i64 96
  %i.aej = load <16 x bfloat>, ptr %i.aei, align 32, !tbaa !18
  %i.aek = fpext fast <16 x bfloat> %i.aej to <16 x float>
  %i.ael = getelementptr inbounds nuw i8, ptr %.141174, i64 128
  %i.aem = load <16 x bfloat>, ptr %i.ael, align 32, !tbaa !18
  %i.aen = fpext fast <16 x bfloat> %i.aem to <16 x float>
  %i.aeo = getelementptr inbounds nuw i8, ptr %.141174, i64 160
  %i.aep = load <16 x bfloat>, ptr %i.aeo, align 32, !tbaa !18
  %i.aeq = fpext fast <16 x bfloat> %i.aep to <16 x float>
  %i.aer = getelementptr inbounds nuw i8, ptr %.141174, i64 192
  %i.aes = load <16 x bfloat>, ptr %i.aer, align 32, !tbaa !18
  %i.aet = fpext fast <16 x bfloat> %i.aes to <16 x float>
  %i.aeu = getelementptr inbounds nuw i8, ptr %.141174, i64 224
  %i.aev = load <16 x bfloat>, ptr %i.aeu, align 32, !tbaa !18
  %i.aew = fpext fast <16 x bfloat> %i.aev to <16 x float>
  %i.aex = sext i32 %i.adz to i64                 ; 8 uses
  %i.aey = getelementptr inbounds [2 x i8], ptr %gep1198, i64 %i.aex
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !24
  %i.afa = zext i16 %i.aez to i32
  %i.afb = shl nuw i32 %i.afa, 16
  %i.afc = insertelement <16 x i32> poison, i32 %i.afb, i64 0
  %i.afd = bitcast <16 x i32> %i.afc to <16 x float>
  %i.afe = shufflevector <16 x float> %i.afd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeb, <16 x float> nofpclass(nan inf) %i.afe, <16 x float> nofpclass(nan inf) %.1510521170)
  %i.afg = getelementptr [2 x i8], ptr %i.adr, i64 %i.aex
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !24
  %i.afi = zext i16 %i.afh to i32
  %i.afj = shl nuw i32 %i.afi, 16
  %i.afk = insertelement <16 x i32> poison, i32 %i.afj, i64 0
  %i.afl = bitcast <16 x i32> %i.afk to <16 x float>
  %i.afm = shufflevector <16 x float> %i.afl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aee, <16 x float> nofpclass(nan inf) %i.afm, <16 x float> nofpclass(nan inf) %.146651171)
  %i.afo = getelementptr [2 x i8], ptr %i.ads, i64 %i.aex
  %i.afp = load i16, ptr %i.afo, align 2, !tbaa !24
  %i.afq = zext i16 %i.afp to i32
  %i.afr = shl nuw i32 %i.afq, 16
  %i.afs = insertelement <16 x i32> poison, i32 %i.afr, i64 0
  %i.aft = bitcast <16 x i32> %i.afs to <16 x float>
  %i.afu = shufflevector <16 x float> %i.aft, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeh, <16 x float> nofpclass(nan inf) %i.afu, <16 x float> nofpclass(nan inf) %.146441172)
  %i.afw = getelementptr [2 x i8], ptr %i.adt, i64 %i.aex
  %i.afx = load i16, ptr %i.afw, align 2, !tbaa !24
  %i.afy = zext i16 %i.afx to i32
  %i.afz = shl nuw i32 %i.afy, 16
  %i.aga = insertelement <16 x i32> poison, i32 %i.afz, i64 0
  %i.agb = bitcast <16 x i32> %i.aga to <16 x float>
  %i.agc = shufflevector <16 x float> %i.agb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aek, <16 x float> nofpclass(nan inf) %i.agc, <16 x float> nofpclass(nan inf) %.146231173)
  %i.age = getelementptr [2 x i8], ptr %i.adu, i64 %i.aex
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !24
  %i.agg = zext i16 %i.agf to i32
  %i.agh = shl nuw i32 %i.agg, 16
  %i.agi = insertelement <16 x i32> poison, i32 %i.agh, i64 0
  %i.agj = bitcast <16 x i32> %i.agi to <16 x float>
  %i.agk = shufflevector <16 x float> %i.agj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aen, <16 x float> nofpclass(nan inf) %i.agk, <16 x float> nofpclass(nan inf) %i.aff) ; 2 uses
  %i.agm = getelementptr [2 x i8], ptr %i.adv, i64 %i.aex
  %i.agn = load i16, ptr %i.agm, align 2, !tbaa !24
  %i.ago = zext i16 %i.agn to i32
  %i.agp = shl nuw i32 %i.ago, 16
  %i.agq = insertelement <16 x i32> poison, i32 %i.agp, i64 0
  %i.agr = bitcast <16 x i32> %i.agq to <16 x float>
  %i.ags = shufflevector <16 x float> %i.agr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeq, <16 x float> nofpclass(nan inf) %i.ags, <16 x float> nofpclass(nan inf) %i.afn) ; 2 uses
  %i.agu = getelementptr [2 x i8], ptr %i.adw, i64 %i.aex
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !24
  %i.agw = zext i16 %i.agv to i32
  %i.agx = shl nuw i32 %i.agw, 16
  %i.agy = insertelement <16 x i32> poison, i32 %i.agx, i64 0
  %i.agz = bitcast <16 x i32> %i.agy to <16 x float>
  %i.aha = shufflevector <16 x float> %i.agz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aet, <16 x float> nofpclass(nan inf) %i.aha, <16 x float> nofpclass(nan inf) %i.afv) ; 2 uses
  %i.ahc = getelementptr [2 x i8], ptr %i.adx, i64 %i.aex
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !24
  %i.ahe = zext i16 %i.ahd to i32
  %i.ahf = shl nuw i32 %i.ahe, 16
  %i.ahg = insertelement <16 x i32> poison, i32 %i.ahf, i64 0
  %i.ahh = bitcast <16 x i32> %i.ahg to <16 x float>
  %i.ahi = shufflevector <16 x float> %i.ahh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aew, <16 x float> nofpclass(nan inf) %i.ahi, <16 x float> nofpclass(nan inf) %i.agd) ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.141174, i64 256
  %indvars.iv.next1387 = add nuw nsw i64 %indvars.iv1386, 1 ; 2 uses
  %exitcond1392.not = icmp eq i64 %indvars.iv.next1387, %wide.trip.count1391
  br i1 %exitcond1392.not, label %.loopexit1071.loopexit, label %bb.n, !llvm.loop !327

.loopexit1071.loopexit:                           ; preds = %bb.n
  %scevgep1388 = getelementptr i8, ptr %.91186, i64 256
  %i.ahl = add nsw i32 %i.adn, -1
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = shl nuw nsw i64 %i.ahm, 8
  %scevgep1389 = getelementptr i8, ptr %scevgep1388, i64 %i.ahn
  br label %.loopexit1071

.loopexit1071:                                    ; preds = %.preheader1073, %.loopexit1074.loopexit, %bb.l, %.loopexit1072.loopexit, %.loopexit1071.loopexit, %.preheader1070, %.loopexit1072
  %.161053 = phi nsz <16 x float> [ %.1010471182, %.loopexit1072 ], [ %.1010471182, %.preheader1070 ], [ %i.agl, %.loopexit1071.loopexit ], [ %.1010471182, %bb.l ], [ %i.acz, %.loopexit1072.loopexit ], [ %i.aal, %.loopexit1074.loopexit ], [ %.1010471182, %.preheader1073 ] ; 2 uses
  %.15666 = phi nsz <16 x float> [ %.96601183, %.loopexit1072 ], [ %.96601183, %.preheader1070 ], [ %i.agt, %.loopexit1071.loopexit ], [ %.96601183, %bb.l ], [ %i.adc, %.loopexit1072.loopexit ], [ %i.aao, %.loopexit1074.loopexit ], [ %.96601183, %.preheader1073 ] ; 2 uses
  %.15645 = phi nsz <16 x float> [ %.96391184, %.loopexit1072 ], [ %.96391184, %.preheader1070 ], [ %i.ahb, %.loopexit1071.loopexit ], [ %.96391184, %bb.l ], [ %i.adf, %.loopexit1072.loopexit ], [ %i.aar, %.loopexit1074.loopexit ], [ %.96391184, %.preheader1073 ] ; 2 uses
  %.15624 = phi nsz <16 x float> [ %.96181185, %.loopexit1072 ], [ %.96181185, %.preheader1070 ], [ %i.ahj, %.loopexit1071.loopexit ], [ %.96181185, %bb.l ], [ %i.adi, %.loopexit1072.loopexit ], [ %i.aau, %.loopexit1074.loopexit ], [ %.96181185, %.preheader1073 ] ; 2 uses
  %.15 = phi ptr [ %.91186, %.loopexit1072 ], [ %.91186, %.preheader1070 ], [ %scevgep1389, %.loopexit1071.loopexit ], [ %.91186, %bb.l ], [ %scevgep1382, %.loopexit1072.loopexit ], [ %scevgep1375, %.loopexit1074.loopexit ], [ %.91186, %.preheader1073 ] ; 2 uses
  %i.aho = add nuw nsw i32 %.11187, 8             ; 3 uses
  %i.ahp = or disjoint i32 %i.aho, 7
  %i.ahq = icmp slt i32 %i.ahp, %i.ae
  br i1 %i.ahq, label %_ZN4ncnn3MatD2Ev.exit726, label %.preheader1083, !llvm.loop !328

.preheader1082:                                   ; preds = %.loopexit, %.preheader1083
  %.171054.lcssa = phi <16 x float> [ %.101047.lcssa, %.preheader1083 ], [ %.211058, %.loopexit ] ; 3 uses
  %.16667.lcssa = phi <16 x float> [ %.9660.lcssa, %.preheader1083 ], [ %.20671, %.loopexit ] ; 3 uses
  %.16646.lcssa = phi <16 x float> [ %.9639.lcssa, %.preheader1083 ], [ %.20650, %.loopexit ]
  %.16625.lcssa = phi <16 x float> [ %.9618.lcssa, %.preheader1083 ], [ %.20629, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader1083 ], [ %.20, %.loopexit ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1083 ], [ %i.ann, %.loopexit ] ; 5 uses
  %i.ahr = or disjoint i32 %.2.lcssa, 1
  %i.ahs = icmp slt i32 %i.ahr, %i.ae
  br i1 %i.ahs, label %_ZN4ncnn3MatD2Ev.exit724.lr.ph, label %.preheader1081

_ZN4ncnn3MatD2Ev.exit724.lr.ph:                   ; preds = %.preheader1082
  %i.aht = load i32, ptr %i.u, align 4, !tbaa !31, !noalias !346
  %i.ahu = load ptr, ptr %3, align 8, !tbaa !15, !noalias !346
  %i.ahv = load i64, ptr %i.v, align 8, !tbaa !16, !noalias !346
  %i.ahw = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !346 ; 2 uses
  %factor.op.mul1256 = mul i64 %i.ahv, %i.ahw
  %i.ahx = sext i32 %i.aht to i64
  %i.ahy = load i32, ptr %7, align 4, !tbaa !30
  %i.ahz = mul nsw i32 %i.ahy, %.06751287
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = mul i64 %i.ahw, %i.ahx
  %i.aic = mul i64 %i.aib, %i.aia
  %invariant.gep1258 = getelementptr i8, ptr %i.ahu, i64 %i.aic
  %i.aid = load i32, ptr %8, align 4, !tbaa !30
  %i.aie = mul nsw i32 %i.aid, %.06741283
  %i.aif = sext i32 %i.aie to i64
  %invariant.gep1259 = getelementptr [2 x i8], ptr %invariant.gep1258, i64 %i.aif
  %i.aig = load i32, ptr %9, align 4, !tbaa !30   ; 3 uses
  %i.aih = icmp sgt i32 %i.aig, 0
  br i1 %i.aih, label %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us, label %_ZN4ncnn3MatD2Ev.exit724.preheader

_ZN4ncnn3MatD2Ev.exit724.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit724.lr.ph
  %i.aii = add nsw i32 %.2.lcssa, 2
  %i.aij = sub i32 %i.bc, %.2.lcssa
  %i.aik = and i32 %i.aij, -2
  %i.ail = add i32 %i.aii, %i.aik
  br label %.preheader1081

_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us:          ; preds = %_ZN4ncnn3MatD2Ev.exit724.lr.ph
  %i.aim = load ptr, ptr %10, align 8, !tbaa !36
  %i.ain = load i64, ptr %11, align 8, !tbaa !34
  %i.aio = add nsw i32 %i.aig, -1
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = shl nuw nsw i64 %i.aip, 6
  %i.air = zext i32 %.2.lcssa to i64
  %wide.trip.count1412 = zext nneg i32 %i.aig to i64
  br label %_ZN4ncnn3MatD2Ev.exit724.us

_ZN4ncnn3MatD2Ev.exit724.us:                      ; preds = %._crit_edge.us, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us
  %indvars.iv1414 = phi i64 [ %indvars.iv.next1415, %._crit_edge.us ], [ %i.air, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ] ; 2 uses
  %.211250.us = phi ptr [ %scevgep1410, %._crit_edge.us ], [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ] ; 2 uses
  %.216721249.us = phi <16 x float> [ %i.ajq, %._crit_edge.us ], [ %.16667.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ]
  %.2210591248.us = phi <16 x float> [ %i.aji, %._crit_edge.us ], [ %.171054.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ]
  %.reass1257.us = mul i64 %factor.op.mul1256, %indvars.iv1414
  %gep1260.us = getelementptr i8, ptr %invariant.gep1259, i64 %.reass1257.us ; 2 uses
  %i.ais = getelementptr [2 x i8], ptr %gep1260.us, i64 %i.ain
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit724.us, %bb.o
  %indvars.iv1407 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %indvars.iv.next1408, %bb.o ] ; 2 uses
  %.221242.us = phi ptr [ %.211250.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.ajr, %bb.o ] ; 3 uses
  %.226731241.us = phi <16 x float> [ %.216721249.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.ajq, %bb.o ]
  %.2310601240.us = phi <16 x float> [ %.2210591248.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.aji, %bb.o ]
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %indvars.iv1407
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !30
  %i.aiv = load <16 x bfloat>, ptr %.221242.us, align 32, !tbaa !18
  %i.aiw = fpext fast <16 x bfloat> %i.aiv to <16 x float>
  %i.aix = getelementptr inbounds nuw i8, ptr %.221242.us, i64 32
  %i.aiy = load <16 x bfloat>, ptr %i.aix, align 32, !tbaa !18
  %i.aiz = fpext fast <16 x bfloat> %i.aiy to <16 x float>
  %i.aja = sext i32 %i.aiu to i64                 ; 2 uses
  %i.ajb = getelementptr inbounds [2 x i8], ptr %gep1260.us, i64 %i.aja
  %i.ajc = load i16, ptr %i.ajb, align 2, !tbaa !24
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = shl nuw i32 %i.ajd, 16
  %i.ajf = insertelement <16 x i32> poison, i32 %i.aje, i64 0
  %i.ajg = bitcast <16 x i32> %i.ajf to <16 x float>
  %i.ajh = shufflevector <16 x float> %i.ajg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aji = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aiw, <16 x float> nofpclass(nan inf) %i.ajh, <16 x float> nofpclass(nan inf) %.2310601240.us) ; 3 uses
  %i.ajj = getelementptr [2 x i8], ptr %i.ais, i64 %i.aja
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !24
  %i.ajl = zext i16 %i.ajk to i32
  %i.ajm = shl nuw i32 %i.ajl, 16
  %i.ajn = insertelement <16 x i32> poison, i32 %i.ajm, i64 0
  %i.ajo = bitcast <16 x i32> %i.ajn to <16 x float>
  %i.ajp = shufflevector <16 x float> %i.ajo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aiz, <16 x float> nofpclass(nan inf) %i.ajp, <16 x float> nofpclass(nan inf) %.226731241.us) ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.221242.us, i64 64
  %indvars.iv.next1408 = add nuw nsw i64 %indvars.iv1407, 1 ; 2 uses
  %exitcond1413.not = icmp eq i64 %indvars.iv.next1408, %wide.trip.count1412
  br i1 %exitcond1413.not, label %._crit_edge.us, label %bb.o, !llvm.loop !331

._crit_edge.us:                                   ; preds = %bb.o
  %scevgep1409 = getelementptr i8, ptr %.211250.us, i64 64
  %scevgep1410 = getelementptr i8, ptr %scevgep1409, i64 %i.aiq ; 2 uses
  %indvars.iv.next1415 = add nuw nsw i64 %indvars.iv1414, 2 ; 3 uses
  %i.ajs = trunc i64 %indvars.iv.next1415 to i32
  %i.ajt = or i32 %i.ajs, 1
  %i.aju = icmp slt i32 %i.ajt, %i.ae
  br i1 %i.aju, label %_ZN4ncnn3MatD2Ev.exit724.us, label %.preheader1081.loopexit, !llvm.loop !332

_ZN4ncnn3MatD2Ev.exit725:                         ; preds = %_ZN4ncnn3MatD2Ev.exit725.lr.ph, %.loopexit
  %.21228 = phi i32 [ %.1.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %i.ann, %.loopexit ] ; 2 uses
  %.161227 = phi ptr [ %.9.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20, %.loopexit ] ; 7 uses
  %.166251226 = phi <16 x float> [ %.9618.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20629, %.loopexit ] ; 5 uses
  %.166461225 = phi <16 x float> [ %.9639.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20650, %.loopexit ] ; 5 uses
  %.166671224 = phi <16 x float> [ %.9660.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20671, %.loopexit ] ; 5 uses
  %.1710541223 = phi <16 x float> [ %.101047.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.211058, %.loopexit ] ; 5 uses
  %i.ajv = sdiv i32 %.21228, %i.ac
  %i.ajw = sext i32 %i.ajv to i64
  %.reass1236 = mul i64 %factor.op.mul1235, %i.ajw
  %gep1239 = getelementptr i8, ptr %invariant.gep1238, i64 %.reass1236 ; 5 uses
  br i1 %i.an, label %.preheader1068, label %.loopexit1069

.preheader1068:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit725
  %i.ajx = load i32, ptr %9, align 4, !tbaa !30   ; 3 uses
  %i.ajy = icmp sgt i32 %i.ajx, 0
  br i1 %i.ajy, label %.lr.ph1205, label %.loopexit

.lr.ph1205:                                       ; preds = %.preheader1068
  %i.ajz = load ptr, ptr %10, align 8, !tbaa !36
  %wide.trip.count1398 = zext nneg i32 %i.ajx to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph1205, %bb.p
  %indvars.iv1393 = phi i64 [ 0, %.lr.ph1205 ], [ %indvars.iv.next1394, %bb.p ] ; 2 uses
  %.171203 = phi ptr [ %.161227, %.lr.ph1205 ], [ %i.ale, %bb.p ] ; 5 uses
  %.176261202 = phi <16 x float> [ %.166251226, %.lr.ph1205 ], [ %i.ald, %bb.p ]
  %.176471201 = phi <16 x float> [ %.166461225, %.lr.ph1205 ], [ %i.ala, %bb.p ]
  %.176681200 = phi <16 x float> [ %.166671224, %.lr.ph1205 ], [ %i.akx, %bb.p ]
  %.1810551199 = phi <16 x float> [ %.1710541223, %.lr.ph1205 ], [ %i.aku, %bb.p ]
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %indvars.iv1393
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !30
  %i.akc = sext i32 %i.akb to i64
  %i.akd = getelementptr inbounds [2 x i8], ptr %gep1239, i64 %i.akc
  %i.ake = load <16 x bfloat>, ptr %.171203, align 32, !tbaa !18
  %i.akf = fpext fast <16 x bfloat> %i.ake to <16 x float>
  %i.akg = getelementptr inbounds nuw i8, ptr %.171203, i64 32
  %i.akh = load <16 x bfloat>, ptr %i.akg, align 32, !tbaa !18
  %i.aki = fpext fast <16 x bfloat> %i.akh to <16 x float>
  %i.akj = getelementptr inbounds nuw i8, ptr %.171203, i64 64
  %i.akk = load <16 x bfloat>, ptr %i.akj, align 32, !tbaa !18
  %i.akl = fpext fast <16 x bfloat> %i.akk to <16 x float>
  %i.akm = getelementptr inbounds nuw i8, ptr %.171203, i64 96
  %i.akn = load <16 x bfloat>, ptr %i.akm, align 32, !tbaa !18
  %i.ako = fpext fast <16 x bfloat> %i.akn to <16 x float>
  %i.akp = load <4 x i16>, ptr %i.akd, align 2, !tbaa !24
  %i.akq = zext <4 x i16> %i.akp to <4 x i32>
  %i.akr = shl nuw <4 x i32> %i.akq, splat (i32 16) ; 4 uses
  %i.aks = bitcast <4 x i32> %i.akr to <4 x float>
  %i.akt = shufflevector <4 x float> %i.aks, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aku = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akf, <16 x float> nofpclass(nan inf) %i.akt, <16 x float> nofpclass(nan inf) %.1810551199) ; 2 uses
  %i.akv = bitcast <4 x i32> %i.akr to <4 x float>
  %i.akw = shufflevector <4 x float> %i.akv, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.akx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aki, <16 x float> nofpclass(nan inf) %i.akw, <16 x float> nofpclass(nan inf) %.176681200) ; 2 uses
  %i.aky = bitcast <4 x i32> %i.akr to <4 x float>
  %i.akz = shufflevector <4 x float> %i.aky, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ala = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akl, <16 x float> nofpclass(nan inf) %i.akz, <16 x float> nofpclass(nan inf) %.176471201) ; 2 uses
  %i.alb = bitcast <4 x i32> %i.akr to <4 x float>
  %i.alc = shufflevector <4 x float> %i.alb, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ald = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ako, <16 x float> nofpclass(nan inf) %i.alc, <16 x float> nofpclass(nan inf) %.176261202) ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.171203, i64 128
  %indvars.iv.next1394 = add nuw nsw i64 %indvars.iv1393, 1 ; 2 uses
  %exitcond1399.not = icmp eq i64 %indvars.iv.next1394, %wide.trip.count1398
  br i1 %exitcond1399.not, label %.loopexit1069.loopexit, label %bb.p, !llvm.loop !333

.loopexit1069.loopexit:                           ; preds = %bb.p
  %scevgep1395 = getelementptr i8, ptr %.161227, i64 128
  %i.alf = add nsw i32 %i.ajx, -1
  %i.alg = zext nneg i32 %i.alf to i64
  %i.alh = shl nuw nsw i64 %i.alg, 7
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %i.alh
  br label %.loopexit

.loopexit1069:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit725
  br i1 %i.ao, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit1069
  %i.ali = load i32, ptr %9, align 4, !tbaa !30   ; 3 uses
  %i.alj = icmp sgt i32 %i.ali, 0
  br i1 %i.alj, label %.lr.ph1217, label %.loopexit

.lr.ph1217:                                       ; preds = %.preheader
  %i.alk = load ptr, ptr %10, align 8, !tbaa !36
  %i.all = load i64, ptr %11, align 8, !tbaa !34  ; 3 uses
  %i.alm = getelementptr [2 x i8], ptr %gep1239, i64 %i.all
  %.idx700 = shl i64 %i.all, 2
  %i.aln = getelementptr i8, ptr %gep1239, i64 %.idx700
  %.idx701 = mul i64 %i.all, 6
  %i.alo = getelementptr i8, ptr %gep1239, i64 %.idx701
  %wide.trip.count1405 = zext nneg i32 %i.ali to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1217, %bb.q
  %indvars.iv1400 = phi i64 [ 0, %.lr.ph1217 ], [ %indvars.iv.next1401, %bb.q ] ; 2 uses
  %.191215 = phi ptr [ %.161227, %.lr.ph1217 ], [ %i.anj, %bb.q ] ; 5 uses
  %.196281214 = phi <16 x float> [ %.166251226, %.lr.ph1217 ], [ %i.ani, %bb.q ]
  %.196491213 = phi <16 x float> [ %.166461225, %.lr.ph1217 ], [ %i.ana, %bb.q ]
  %.196701212 = phi <16 x float> [ %.166671224, %.lr.ph1217 ], [ %i.ams, %bb.q ]
  %.2010571211 = phi <16 x float> [ %.1710541223, %.lr.ph1217 ], [ %i.amk, %bb.q ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %indvars.iv1400
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !30
  %i.alr = load <16 x bfloat>, ptr %.191215, align 32, !tbaa !18
  %i.als = fpext fast <16 x bfloat> %i.alr to <16 x float>
  %i.alt = getelementptr inbounds nuw i8, ptr %.191215, i64 32
  %i.alu = load <16 x bfloat>, ptr %i.alt, align 32, !tbaa !18
  %i.alv = fpext fast <16 x bfloat> %i.alu to <16 x float>
  %i.alw = getelementptr inbounds nuw i8, ptr %.191215, i64 64
  %i.alx = load <16 x bfloat>, ptr %i.alw, align 32, !tbaa !18
  %i.aly = fpext fast <16 x bfloat> %i.alx to <16 x float>
  %i.alz = getelementptr inbounds nuw i8, ptr %.191215, i64 96
  %i.ama = load <16 x bfloat>, ptr %i.alz, align 32, !tbaa !18
  %i.amb = fpext fast <16 x bfloat> %i.ama to <16 x float>
  %i.amc = sext i32 %i.alq to i64                 ; 4 uses
  %i.amd = getelementptr inbounds [2 x i8], ptr %gep1239, i64 %i.amc
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !24
  %i.amf = zext i16 %i.ame to i32
  %i.amg = shl nuw i32 %i.amf, 16
  %i.amh = insertelement <16 x i32> poison, i32 %i.amg, i64 0
  %i.ami = bitcast <16 x i32> %i.amh to <16 x float>
  %i.amj = shufflevector <16 x float> %i.ami, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.als, <16 x float> nofpclass(nan inf) %i.amj, <16 x float> nofpclass(nan inf) %.2010571211) ; 2 uses
  %i.aml = getelementptr [2 x i8], ptr %i.alm, i64 %i.amc
  %i.amm = load i16, ptr %i.aml, align 2, !tbaa !24
  %i.amn = zext i16 %i.amm to i32
  %i.amo = shl nuw i32 %i.amn, 16
  %i.amp = insertelement <16 x i32> poison, i32 %i.amo, i64 0
  %i.amq = bitcast <16 x i32> %i.amp to <16 x float>
  %i.amr = shufflevector <16 x float> %i.amq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ams = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alv, <16 x float> nofpclass(nan inf) %i.amr, <16 x float> nofpclass(nan inf) %.196701212) ; 2 uses
  %i.amt = getelementptr [2 x i8], ptr %i.aln, i64 %i.amc
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !24
  %i.amv = zext i16 %i.amu to i32
end_hunk_9
begin_hunk_10_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %gep217.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.oq ; 5 uses
  %i.or = add nsw i64 %i.op, 1
  %i.os = mul nsw i64 %i.or, %i.aa
  %gep219.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.os ; 5 uses
  br i1 %min.iters.check337, label %vec.epilog.scalar.ph362.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check361
  br i1 %min.iters.check339, label %vec.epilog.ph365, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.ot = getelementptr i8, ptr %gep219.us.i, i64 %i.oe ; 2 uses
  %i.ou = getelementptr i8, ptr %gep217.us.i, i64 %i.oe ; 2 uses
  %i.ov = getelementptr i8, ptr %.9211.us.i, i64 %i.oe ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next354, %vector.body342 ] ; 2 uses
  %i.ow = shl i64 %index343, 3                    ; 3 uses
  %next.gep344 = getelementptr i8, ptr %gep219.us.i, i64 %i.ow
  %next.gep345 = getelementptr i8, ptr %gep217.us.i, i64 %i.ow
  %next.gep346 = getelementptr i8, ptr %.9211.us.i, i64 %i.ow
  %wide.vec347 = load <32 x i32>, ptr %next.gep345, align 4, !tbaa !22
  %wide.vec350 = load <32 x i32>, ptr %next.gep344, align 4, !tbaa !22
  %i.ox = lshr <32 x i32> %wide.vec347, splat (i32 16)
  %i.oy = shufflevector <32 x i32> %i.ox, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.oz = trunc nuw <32 x i32> %i.oy to <32 x i16>
  %i.pa = lshr <32 x i32> %wide.vec350, splat (i32 16)
  %i.pb = shufflevector <32 x i32> %i.pa, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.pc = trunc nuw <32 x i32> %i.pb to <32 x i16>
  %interleaved.vec353 = shufflevector <32 x i16> %i.oz, <32 x i16> %i.pc, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec353, ptr %next.gep346, align 2, !tbaa !24
  %index.next354 = add nuw i64 %index343, 16      ; 2 uses
  %i.pd = icmp eq i64 %index.next354, %n.vec341
  br i1 %i.pd, label %middle.block355, label %vector.body342, !llvm.loop !374

middle.block355:                                  ; preds = %vector.body342
  br i1 %cmp.n356, label %..preheader4_crit_edge.us.i, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block355
  br i1 %min.epilog.iters.check364, label %vec.epilog.scalar.ph362.preheader, label %vec.epilog.ph365, !prof !27

vec.epilog.ph365:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check363
  %vec.epilog.resume.val357 = phi i64 [ %n.vec341, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.pe = getelementptr i8, ptr %gep219.us.i, i64 %i.oh ; 2 uses
  %i.pf = getelementptr i8, ptr %gep217.us.i, i64 %i.oh ; 2 uses
  %i.pg = getelementptr i8, ptr %.9211.us.i, i64 %i.oh ; 2 uses
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph365
  %index368 = phi i64 [ %vec.epilog.resume.val357, %vec.epilog.ph365 ], [ %index.next379, %vec.epilog.vector.body367 ] ; 2 uses
  %i.ph = shl i64 %index368, 3                    ; 3 uses
  %next.gep369 = getelementptr i8, ptr %gep219.us.i, i64 %i.ph
  %next.gep370 = getelementptr i8, ptr %gep217.us.i, i64 %i.ph
  %next.gep371 = getelementptr i8, ptr %.9211.us.i, i64 %i.ph
  %wide.vec372 = load <8 x i32>, ptr %next.gep370, align 4, !tbaa !22
  %wide.vec375 = load <8 x i32>, ptr %next.gep369, align 4, !tbaa !22
  %i.pi = shufflevector <8 x i32> %wide.vec372, <8 x i32> %wide.vec375, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.pj = lshr <16 x i32> %i.pi, splat (i32 16)
  %interleaved.vec378 = trunc nuw <16 x i32> %i.pj to <16 x i16>
  store <16 x i16> %interleaved.vec378, ptr %next.gep371, align 2, !tbaa !24
  %index.next379 = add nuw i64 %index368, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next379, %n.vec366
  br i1 %i.pk, label %vec.epilog.middle.block380, label %vec.epilog.vector.body367, !llvm.loop !375

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body367
  br i1 %cmp.n381, label %..preheader4_crit_edge.us.i, label %vec.epilog.scalar.ph362.preheader

vec.epilog.scalar.ph362.preheader:                ; preds = %iter.check361, %vec.epilog.iter.check363, %vec.epilog.middle.block380
  %.0461197.us.i.ph = phi i32 [ 0, %iter.check361 ], [ %i.od, %vec.epilog.iter.check363 ], [ %i.og, %vec.epilog.middle.block380 ]
  %.0463196.us.i.ph = phi ptr [ %gep219.us.i, %iter.check361 ], [ %i.ot, %vec.epilog.iter.check363 ], [ %i.pe, %vec.epilog.middle.block380 ]
  %.0465195.us.i.ph = phi ptr [ %gep217.us.i, %iter.check361 ], [ %i.ou, %vec.epilog.iter.check363 ], [ %i.pf, %vec.epilog.middle.block380 ]
  %.10194.us.i.ph = phi ptr [ %.9211.us.i, %iter.check361 ], [ %i.ov, %vec.epilog.iter.check363 ], [ %i.pg, %vec.epilog.middle.block380 ]
  br label %vec.epilog.scalar.ph362

vec.epilog.scalar.ph362:                          ; preds = %vec.epilog.scalar.ph362.preheader, %vec.epilog.scalar.ph362
  %.0461197.us.i = phi i32 [ %i.pt, %vec.epilog.scalar.ph362 ], [ %.0461197.us.i.ph, %vec.epilog.scalar.ph362.preheader ]
  %.0463196.us.i = phi ptr [ %i.ps, %vec.epilog.scalar.ph362 ], [ %.0463196.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.0465195.us.i = phi ptr [ %i.pr, %vec.epilog.scalar.ph362 ], [ %.0465195.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.10194.us.i = phi ptr [ %i.pq, %vec.epilog.scalar.ph362 ], [ %.10194.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %i.pl = load <2 x i32>, ptr %.0465195.us.i, align 4, !tbaa !22
  %i.pm = load <2 x i32>, ptr %.0463196.us.i, align 4, !tbaa !22
  %i.pn = shufflevector <2 x i32> %i.pl, <2 x i32> %i.pm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.po = lshr <4 x i32> %i.pn, splat (i32 16)
  %i.pp = trunc nuw <4 x i32> %i.po to <4 x i16>
  store <4 x i16> %i.pp, ptr %.10194.us.i, align 2, !tbaa !24
  %i.pq = getelementptr inbounds nuw i8, ptr %.10194.us.i, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0465195.us.i, i64 8 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0463196.us.i, i64 8 ; 2 uses
  %i.pt = add nuw nsw i32 %.0461197.us.i, 2       ; 2 uses
  %i.pu = or disjoint i32 %i.pt, 1
  %i.pv = icmp slt i32 %i.pu, %.sroa.speculated
  br i1 %i.pv, label %vec.epilog.scalar.ph362, label %..preheader4_crit_edge.us.i, !llvm.loop !376

.lr.ph208.us.i:                                   ; preds = %.lr.ph208.us.i.preheader, %.lr.ph208.us.i
  %.1462207.us.i = phi i32 [ %i.qg, %.lr.ph208.us.i ], [ %.1462207.us.i.ph, %.lr.ph208.us.i.preheader ]
  %.1464206.us.i = phi ptr [ %i.qf, %.lr.ph208.us.i ], [ %.1464206.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.1466205.us.i = phi ptr [ %i.qe, %.lr.ph208.us.i ], [ %.1466205.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.11204.us.i = phi ptr [ %i.qd, %.lr.ph208.us.i ], [ %.11204.us.i.ph, %.lr.ph208.us.i.preheader ] ; 3 uses
  %i.pw = load i32, ptr %.1466205.us.i, align 4, !tbaa !22
  %i.px = lshr i32 %i.pw, 16
  %i.py = trunc nuw i32 %i.px to i16
  store i16 %i.py, ptr %.11204.us.i, align 2, !tbaa !24
  %i.pz = load i32, ptr %.1464206.us.i, align 4, !tbaa !22
  %i.qa = lshr i32 %i.pz, 16
  %i.qb = trunc nuw i32 %i.qa to i16
  %i.qc = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 2
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !24
  %i.qd = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 4 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.1466205.us.i, i64 4
  %i.qf = getelementptr inbounds nuw i8, ptr %.1464206.us.i, i64 4
  %i.qg = add nuw nsw i32 %.1462207.us.i, 1       ; 2 uses
  %exitcond324.not.i = icmp eq i32 %i.qg, %.sroa.speculated
  br i1 %exitcond324.not.i, label %._crit_edge209.us.i, label %.lr.ph208.us.i, !llvm.loop !377

._crit_edge209.us.i:                              ; preds = %.lr.ph208.us.i, %middle.block309, %vec.epilog.middle.block330, %..preheader4_crit_edge.us.i
  %.11.lcssa.us.i = phi ptr [ %.lcssa236, %..preheader4_crit_edge.us.i ], [ %i.qr, %vec.epilog.middle.block330 ], [ %i.qk, %middle.block309 ], [ %i.qd, %.lr.ph208.us.i ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 2 ; 3 uses
  %i.qh = icmp slt i64 %indvars.iv.next326.i, %invariant.op383.i
  br i1 %i.qh, label %iter.check361, label %.preheader3.loopexit.i, !llvm.loop !378

..preheader4_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph362, %vec.epilog.middle.block380, %middle.block355
  %.lcssa236 = phi ptr [ %i.pg, %vec.epilog.middle.block380 ], [ %i.ov, %middle.block355 ], [ %i.pq, %vec.epilog.scalar.ph362 ] ; 6 uses
  %.lcssa235 = phi ptr [ %i.pf, %vec.epilog.middle.block380 ], [ %i.ou, %middle.block355 ], [ %i.pr, %vec.epilog.scalar.ph362 ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.pe, %vec.epilog.middle.block380 ], [ %i.ot, %middle.block355 ], [ %i.ps, %vec.epilog.scalar.ph362 ] ; 5 uses
  br i1 %.not63, label %._crit_edge209.us.i, label %iter.check315

iter.check315:                                    ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check295, label %.lr.ph208.us.i.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check315
  br i1 %min.iters.check297, label %vec.epilog.ph319, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.qi = getelementptr i8, ptr %.lcssa234, i64 %i.ol
  %i.qj = getelementptr i8, ptr %.lcssa235, i64 %i.ol
  %i.qk = getelementptr i8, ptr %.lcssa236, i64 %i.ol ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next308, %vector.body300 ] ; 2 uses
  %i.ql = shl i64 %index301, 2                    ; 3 uses
  %next.gep302 = getelementptr i8, ptr %.lcssa234, i64 %i.ql
  %next.gep303 = getelementptr i8, ptr %.lcssa235, i64 %i.ql
  %next.gep304 = getelementptr i8, ptr %.lcssa236, i64 %i.ql
  %wide.load305 = load <16 x i32>, ptr %next.gep303, align 4, !tbaa !22
  %wide.load306 = load <16 x i32>, ptr %next.gep302, align 4, !tbaa !22
  %i.qm = shufflevector <16 x i32> %wide.load305, <16 x i32> %wide.load306, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.qn = lshr <32 x i32> %i.qm, splat (i32 16)
  %interleaved.vec307 = trunc nuw <32 x i32> %i.qn to <32 x i16>
  store <32 x i16> %interleaved.vec307, ptr %next.gep304, align 2, !tbaa !24
  %index.next308 = add nuw i64 %index301, 16      ; 2 uses
  %i.qo = icmp eq i64 %index.next308, %n.vec299
  br i1 %i.qo, label %middle.block309, label %vector.body300, !llvm.loop !379

middle.block309:                                  ; preds = %vector.body300
  br i1 %cmp.n310, label %._crit_edge209.us.i, label %vec.epilog.iter.check317

vec.epilog.iter.check317:                         ; preds = %middle.block309
  br i1 %min.epilog.iters.check318, label %.lr.ph208.us.i.preheader, label %vec.epilog.ph319, !prof !27

vec.epilog.ph319:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check317
  %vec.epilog.resume.val311 = phi i64 [ %n.vec299, %vec.epilog.iter.check317 ], [ 0, %vector.main.loop.iter.check296 ]
  %i.qp = getelementptr i8, ptr %.lcssa234, i64 %i.oo
  %i.qq = getelementptr i8, ptr %.lcssa235, i64 %i.oo
  %i.qr = getelementptr i8, ptr %.lcssa236, i64 %i.oo ; 2 uses
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph319
  %index322 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph319 ], [ %index.next329, %vec.epilog.vector.body321 ] ; 2 uses
  %i.qs = shl i64 %index322, 2                    ; 3 uses
  %next.gep323 = getelementptr i8, ptr %.lcssa234, i64 %i.qs
  %next.gep324 = getelementptr i8, ptr %.lcssa235, i64 %i.qs
  %next.gep325 = getelementptr i8, ptr %.lcssa236, i64 %i.qs
  %wide.load326 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !22
  %wide.load327 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !22
  %i.qt = shufflevector <4 x i32> %wide.load326, <4 x i32> %wide.load327, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qu = lshr <8 x i32> %i.qt, splat (i32 16)
  %interleaved.vec328 = trunc nuw <8 x i32> %i.qu to <8 x i16>
  store <8 x i16> %interleaved.vec328, ptr %next.gep325, align 2, !tbaa !24
  %index.next329 = add nuw i64 %index322, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.qv, label %vec.epilog.middle.block330, label %vec.epilog.vector.body321, !llvm.loop !380

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body321
  br i1 %cmp.n331, label %._crit_edge209.us.i, label %.lr.ph208.us.i.preheader

.lr.ph208.us.i.preheader:                         ; preds = %iter.check315, %vec.epilog.iter.check317, %vec.epilog.middle.block330
  %.1462207.us.i.ph = phi i32 [ %i.nz, %iter.check315 ], [ %i.ok, %vec.epilog.iter.check317 ], [ %i.on, %vec.epilog.middle.block330 ]
  %.1464206.us.i.ph = phi ptr [ %.lcssa234, %iter.check315 ], [ %i.qi, %vec.epilog.iter.check317 ], [ %i.qp, %vec.epilog.middle.block330 ]
  %.1466205.us.i.ph = phi ptr [ %.lcssa235, %iter.check315 ], [ %i.qj, %vec.epilog.iter.check317 ], [ %i.qq, %vec.epilog.middle.block330 ]
  %.11204.us.i.ph = phi ptr [ %.lcssa236, %iter.check315 ], [ %i.qk, %vec.epilog.iter.check317 ], [ %i.qr, %vec.epilog.middle.block330 ]
  br label %.lr.ph208.us.i

.lr.ph213.split.i:                                ; preds = %.lr.ph213.i
  %i.qw = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.qw, label %iter.check403, label %.preheader4.preheader.i

.preheader4.preheader.i:                          ; preds = %.lr.ph213.split.i
  %i.qx = sub i32 %i.aq, %.2.lcssa.i
  %i.qy = and i32 %i.qx, -2
  %i.qz = add nsw i32 %.2.lcssa.i, 2
  %i.ra = add i32 %i.qz, %i.qy
  br label %.preheader3.i

iter.check403:                                    ; preds = %.lr.ph213.split.i
  %i.rb = sext i32 %.2.lcssa.i to i64             ; 7 uses
  %i.rc = add nsw i64 %i.rb, 2
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op383.i, i64 %i.rc)
  %i.rd = xor i64 %i.rb, -1
  %i.re = add i64 %smax, %i.rd                    ; 3 uses
  %i.rf = lshr i64 %i.re, 1
  %i.rg = add nuw i64 %i.rf, 1                    ; 5 uses
  %min.iters.check386 = icmp ugt i64 %i.re, 5
  %or.cond = select i1 %min.iters.check386, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check387, label %._crit_edge209.us231.i.preheader

vector.main.loop.iter.check387:                   ; preds = %iter.check403
  %min.iters.check388 = icmp ult i64 %i.re, 30
  br i1 %min.iters.check388, label %vec.epilog.ph407, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.rh = and i64 %i.rg, 12
  %n.vec390 = and i64 %i.rg, -16                  ; 5 uses
  %i.ri = shl i64 %n.vec390, 1
  %i.rj = add i64 %i.ri, %i.rb                    ; 2 uses
  %i.rk = shl i64 %n.vec390, 2
  %i.rl = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rk ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rb
  %invariant.gep708 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ag
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next398, %vector.body391 ] ; 3 uses
  %i.rm = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rm
  %.idx = shl i64 %index392, 3
  %gep709 = getelementptr i8, ptr %invariant.gep708, i64 %.idx
  %wide.vec394 = load <32 x i32>, ptr %gep709, align 4, !tbaa !22
  %i.rn = lshr <32 x i32> %wide.vec394, splat (i32 16)
  %interleaved.vec397 = trunc nuw <32 x i32> %i.rn to <32 x i16>
  store <32 x i16> %interleaved.vec397, ptr %next.gep393, align 2, !tbaa !24
  %index.next398 = add nuw i64 %index392, 16      ; 2 uses
  %i.ro = icmp eq i64 %index.next398, %n.vec390
  br i1 %i.ro, label %middle.block399, label %vector.body391, !llvm.loop !381

middle.block399:                                  ; preds = %vector.body391
  %cmp.n400 = icmp eq i64 %i.rg, %n.vec390
  br i1 %cmp.n400, label %.preheader3.loopexit258.i, label %vec.epilog.iter.check405

vec.epilog.iter.check405:                         ; preds = %middle.block399
  %min.epilog.iters.check406 = icmp eq i64 %i.rh, 0
  br i1 %min.epilog.iters.check406, label %._crit_edge209.us231.i.preheader, label %vec.epilog.ph407, !prof !27

vec.epilog.ph407:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check405
  %vec.epilog.resume.val401 = phi i64 [ %n.vec390, %vec.epilog.iter.check405 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec408 = and i64 %i.rg, -4                   ; 4 uses
  %i.rp = shl i64 %n.vec408, 1
  %i.rq = add i64 %i.rp, %i.rb                    ; 2 uses
  %i.rr = shl i64 %n.vec408, 2
  %i.rs = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rr ; 2 uses
  %invariant.gep710 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rb
  %invariant.gep711 = getelementptr [4 x i8], ptr %invariant.gep710, i64 %i.ag
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph407
  %index410 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph407 ], [ %index.next416, %vec.epilog.vector.body409 ] ; 3 uses
  %i.rt = shl i64 %index410, 2
  %next.gep411 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rt
  %.idx623 = shl i64 %index410, 3
  %gep712 = getelementptr i8, ptr %invariant.gep711, i64 %.idx623
  %wide.vec412 = load <8 x i32>, ptr %gep712, align 4, !tbaa !22
  %i.ru = lshr <8 x i32> %wide.vec412, splat (i32 16)
  %interleaved.vec415 = trunc nuw <8 x i32> %i.ru to <8 x i16>
  store <8 x i16> %interleaved.vec415, ptr %next.gep411, align 2, !tbaa !24
  %index.next416 = add nuw i64 %index410, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next416, %n.vec408
  br i1 %i.rv, label %vec.epilog.middle.block417, label %vec.epilog.vector.body409, !llvm.loop !382

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body409
  %cmp.n418 = icmp eq i64 %i.rg, %n.vec408
  br i1 %cmp.n418, label %.preheader3.loopexit258.i, label %._crit_edge209.us231.i.preheader

._crit_edge209.us231.i.preheader:                 ; preds = %iter.check403, %vec.epilog.iter.check405, %vec.epilog.middle.block417
  %indvars.iv321.i.ph = phi i64 [ %i.rb, %iter.check403 ], [ %i.rj, %vec.epilog.iter.check405 ], [ %i.rq, %vec.epilog.middle.block417 ]
  %.9211.us223.i.ph = phi ptr [ %.6.lcssa.i, %iter.check403 ], [ %i.rl, %vec.epilog.iter.check405 ], [ %i.rs, %vec.epilog.middle.block417 ]
  br label %._crit_edge209.us231.i

._crit_edge209.us231.i:                           ; preds = %._crit_edge209.us231.i.preheader, %._crit_edge209.us231.i
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %._crit_edge209.us231.i ], [ %indvars.iv321.i.ph, %._crit_edge209.us231.i.preheader ] ; 2 uses
  %.9211.us223.i = phi ptr [ %i.rw, %._crit_edge209.us231.i ], [ %.9211.us223.i.ph, %._crit_edge209.us231.i.preheader ] ; 3 uses
  %i.rw = getelementptr i8, ptr %.9211.us223.i, i64 4 ; 2 uses
  %i.rx = add nsw i64 %indvars.iv321.i, %i.ag     ; 2 uses
  %i.ry = add nsw i64 %i.rx, 1
  %i.rz = mul nsw i64 %i.ry, %i.aa
  %gep219.us225.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rz
  %.pre333.i = load i32, ptr %gep219.us225.i, align 4, !tbaa !22
  %i.sa = mul nsw i64 %i.rx, %i.aa
  %gep217.us224.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.sa
  %.pre.i = load i32, ptr %gep217.us224.i, align 4, !tbaa !22
  %i.sb = lshr i32 %.pre.i, 16
  %i.sc = trunc nuw i32 %i.sb to i16
  store i16 %i.sc, ptr %.9211.us223.i, align 2, !tbaa !24
  %i.sd = lshr i32 %.pre333.i, 16
  %i.se = trunc nuw i32 %i.sd to i16
  %i.sf = getelementptr inbounds nuw i8, ptr %.9211.us223.i, i64 2
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !24
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 2 ; 3 uses
  %i.sg = icmp slt i64 %indvars.iv.next322.i, %invariant.op383.i
  br i1 %i.sg, label %._crit_edge209.us231.i, label %.preheader3.loopexit258.i, !llvm.loop !383

bb.e:                                             ; preds = %._crit_edge179.i, %.lr.ph183.i
  %indvars.iv318.i = phi i64 [ %i.if, %.lr.ph183.i ], [ %indvars.iv.next319.i, %._crit_edge179.i ] ; 2 uses
  %.6181.i = phi ptr [ %.3534.lcssa.i, %.lr.ph183.i ], [ %.8.lcssa.i, %._crit_edge179.i ] ; 6 uses
  %i.sh = add nsw i64 %indvars.iv318.i, %i.ag     ; 4 uses
  %i.si = mul nsw i64 %i.sh, %i.aa
  %gep187.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.si ; 6 uses
  %i.sj = add nsw i64 %i.sh, 1
  %i.sk = mul nsw i64 %i.sj, %i.aa
  %gep189.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sk ; 6 uses
  %i.sl = add nsw i64 %i.sh, 2
  %i.sm = mul nsw i64 %i.sl, %i.aa
  %gep191.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sm ; 6 uses
  %i.sn = add nsw i64 %i.sh, 3
  %i.so = mul nsw i64 %i.sn, %i.aa
  %gep193.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.so ; 6 uses
  br i1 %i.id, label %iter.check509, label %.preheader6.i

iter.check509:                                    ; preds = %bb.e
  br i1 %min.iters.check475, label %.lr.ph165.i.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check509
  br i1 %min.iters.check477, label %vec.epilog.ph513, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.sp = getelementptr i8, ptr %gep193.i, i64 %i.ij ; 2 uses
  %i.sq = getelementptr i8, ptr %gep191.i, i64 %i.ij ; 2 uses
  %i.sr = getelementptr i8, ptr %gep189.i, i64 %i.ij ; 2 uses
  %i.ss = getelementptr i8, ptr %gep187.i, i64 %i.ij ; 2 uses
  %i.st = getelementptr i8, ptr %.6181.i, i64 %i.ik ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next500, %vector.body480 ] ; 3 uses
  %i.su = shl i64 %index481, 3                    ; 4 uses
  %next.gep482 = getelementptr i8, ptr %gep193.i, i64 %i.su
  %next.gep483 = getelementptr i8, ptr %gep191.i, i64 %i.su
  %next.gep484 = getelementptr i8, ptr %gep189.i, i64 %i.su
  %next.gep485 = getelementptr i8, ptr %gep187.i, i64 %i.su
  %i.sv = shl i64 %index481, 4
  %next.gep486 = getelementptr i8, ptr %.6181.i, i64 %i.sv
  %wide.vec487 = load <32 x i32>, ptr %next.gep485, align 4, !tbaa !22
  %wide.vec490 = load <32 x i32>, ptr %next.gep484, align 4, !tbaa !22
  %wide.vec493 = load <32 x i32>, ptr %next.gep483, align 4, !tbaa !22
  %wide.vec496 = load <32 x i32>, ptr %next.gep482, align 4, !tbaa !22
  %i.sw = shufflevector <32 x i32> %wide.vec487, <32 x i32> %wide.vec490, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.sx = lshr <64 x i32> %i.sw, splat (i32 16)
  %i.sy = trunc nuw <64 x i32> %i.sx to <64 x i16>
  %i.sz = shufflevector <32 x i32> %wide.vec493, <32 x i32> %wide.vec496, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.ta = lshr <64 x i32> %i.sz, splat (i32 16)
  %i.tb = trunc nuw <64 x i32> %i.ta to <64 x i16>
  %interleaved.vec499 = shufflevector <64 x i16> %i.sy, <64 x i16> %i.tb, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec499, ptr %next.gep486, align 2, !tbaa !24
  %index.next500 = add nuw i64 %index481, 16      ; 2 uses
  %i.tc = icmp eq i64 %index.next500, %n.vec479
  br i1 %i.tc, label %middle.block501, label %vector.body480, !llvm.loop !384

middle.block501:                                  ; preds = %vector.body480
  br i1 %cmp.n502, label %.preheader6.i, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block501
  br i1 %min.epilog.iters.check512, label %.lr.ph165.i.preheader, label %vec.epilog.ph513, !prof !27

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check511
  %vec.epilog.resume.val503 = phi i64 [ %n.vec479, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check476 ]
  %i.td = getelementptr i8, ptr %gep193.i, i64 %i.in ; 2 uses
  %i.te = getelementptr i8, ptr %gep191.i, i64 %i.in ; 2 uses
  %i.tf = getelementptr i8, ptr %gep189.i, i64 %i.in ; 2 uses
  %i.tg = getelementptr i8, ptr %gep187.i, i64 %i.in ; 2 uses
  %i.th = getelementptr i8, ptr %.6181.i, i64 %i.io ; 2 uses
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val503, %vec.epilog.ph513 ], [ %index.next535, %vec.epilog.vector.body515 ] ; 3 uses
  %i.ti = shl i64 %index516, 3                    ; 4 uses
  %next.gep517 = getelementptr i8, ptr %gep193.i, i64 %i.ti
  %next.gep518 = getelementptr i8, ptr %gep191.i, i64 %i.ti
  %next.gep519 = getelementptr i8, ptr %gep189.i, i64 %i.ti
  %next.gep520 = getelementptr i8, ptr %gep187.i, i64 %i.ti
  %i.tj = shl i64 %index516, 4
  %next.gep521 = getelementptr i8, ptr %.6181.i, i64 %i.tj
  %wide.vec522 = load <8 x i32>, ptr %next.gep520, align 4, !tbaa !22
  %wide.vec525 = load <8 x i32>, ptr %next.gep519, align 4, !tbaa !22
  %wide.vec528 = load <8 x i32>, ptr %next.gep518, align 4, !tbaa !22
  %wide.vec531 = load <8 x i32>, ptr %next.gep517, align 4, !tbaa !22
  %i.tk = shufflevector <8 x i32> %wide.vec522, <8 x i32> %wide.vec525, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tl = shufflevector <8 x i32> %wide.vec528, <8 x i32> %wide.vec531, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tm = shufflevector <16 x i32> %i.tk, <16 x i32> %i.tl, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.tn = lshr <32 x i32> %i.tm, splat (i32 16)
  %interleaved.vec534 = trunc nuw <32 x i32> %i.tn to <32 x i16>
  store <32 x i16> %interleaved.vec534, ptr %next.gep521, align 2, !tbaa !24
  %index.next535 = add nuw i64 %index516, 4       ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.bhz = load float, ptr %.08971072, align 4, !tbaa !22
  %i.bia = insertelement <4 x float> poison, float %i.bhz, i64 0
  %i.bib = shufflevector <4 x float> %i.bia, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bic = load <4 x float>, ptr %.19011071, align 16, !tbaa !18
  %i.bid = getelementptr inbounds nuw i8, ptr %.19011071, i64 16
  %i.bie = load <4 x float>, ptr %i.bid, align 16, !tbaa !18
  %i.bif = getelementptr inbounds nuw i8, ptr %.19011071, i64 32
  %i.big = load <4 x float>, ptr %i.bif, align 16, !tbaa !18
  %i.bih = getelementptr inbounds nuw i8, ptr %.19011071, i64 48
  %i.bii = load <4 x float>, ptr %i.bih, align 16, !tbaa !18
  %i.bij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %i.bic, <4 x float> nofpclass(nan inf) %.13761067)
  %i.bik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %i.bie, <4 x float> nofpclass(nan inf) %.13741068)
  %i.bil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %i.big, <4 x float> nofpclass(nan inf) %.13721069)
  %i.bim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %i.bii, <4 x float> nofpclass(nan inf) %.03701070)
  %i.bin = getelementptr inbounds nuw i8, ptr %.08971072, i64 4
  %i.bio = getelementptr inbounds nuw i8, ptr %.19011071, i64 64
  %i.bip = load float, ptr %i.bin, align 4, !tbaa !22
  %i.biq = insertelement <4 x float> poison, float %i.bip, i64 0
  %i.bir = shufflevector <4 x float> %i.biq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bis = load <4 x float>, ptr %i.bio, align 16, !tbaa !18
  %i.bit = getelementptr inbounds nuw i8, ptr %.19011071, i64 80
  %i.biu = load <4 x float>, ptr %i.bit, align 16, !tbaa !18
  %i.biv = getelementptr inbounds nuw i8, ptr %.19011071, i64 96
  %i.biw = load <4 x float>, ptr %i.biv, align 16, !tbaa !18
  %i.bix = getelementptr inbounds nuw i8, ptr %.19011071, i64 112
  %i.biy = load <4 x float>, ptr %i.bix, align 16, !tbaa !18
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.bis, <4 x float> nofpclass(nan inf) %i.bij) ; 3 uses
  %i.bja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.biu, <4 x float> nofpclass(nan inf) %i.bik) ; 3 uses
  %i.bjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.biw, <4 x float> nofpclass(nan inf) %i.bil) ; 3 uses
  %i.bjc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.biy, <4 x float> nofpclass(nan inf) %i.bim) ; 3 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.08971072, i64 8 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.19011071, i64 128 ; 2 uses
  %niter2372.next.1 = add nuw nsw i32 %niter2372, 2 ; 2 uses
  %niter2372.ncmp.1 = icmp eq i32 %niter2372.next.1, %unroll_iter2371
  br i1 %niter2372.ncmp.1, label %._crit_edge1076.loopexit.unr-lcssa, label %.lr.ph1075, !llvm.loop !765

._crit_edge1076.loopexit.unr-lcssa:               ; preds = %.lr.ph1075
  br i1 %lcmp.mod2365.not, label %._crit_edge1076.loopexit, label %.lr.ph1075.epil.preheader

.lr.ph1075.epil.preheader:                        ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.preheader
  %.08971072.epil.init = phi ptr [ %i.bhi, %.lr.ph1075.preheader ], [ %i.bjd, %._crit_edge1076.loopexit.unr-lcssa ]
  %.19011071.epil.init = phi ptr [ %.09001083, %.lr.ph1075.preheader ], [ %i.bje, %._crit_edge1076.loopexit.unr-lcssa ] ; 4 uses
  %.03701070.epil.init = phi <4 x float> [ %storemerge1100, %.lr.ph1075.preheader ], [ %i.bjc, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13721069.epil.init = phi <4 x float> [ %.0371, %.lr.ph1075.preheader ], [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13741068.epil.init = phi <4 x float> [ %.0373, %.lr.ph1075.preheader ], [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13761067.epil.init = phi <4 x float> [ %.0375, %.lr.ph1075.preheader ], [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2370)
  %i.bjf = load float, ptr %.08971072.epil.init, align 4, !tbaa !22
  %i.bjg = insertelement <4 x float> poison, float %i.bjf, i64 0
  %i.bjh = shufflevector <4 x float> %i.bjg, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bji = load <4 x float>, ptr %.19011071.epil.init, align 16, !tbaa !18
  %i.bjj = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 16
  %i.bjk = load <4 x float>, ptr %i.bjj, align 16, !tbaa !18
  %i.bjl = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 32
  %i.bjm = load <4 x float>, ptr %i.bjl, align 16, !tbaa !18
  %i.bjn = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 48
  %i.bjo = load <4 x float>, ptr %i.bjn, align 16, !tbaa !18
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %i.bji, <4 x float> nofpclass(nan inf) %.13761067.epil.init)
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %i.bjk, <4 x float> nofpclass(nan inf) %.13741068.epil.init)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %i.bjm, <4 x float> nofpclass(nan inf) %.13721069.epil.init)
  %i.bjs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %i.bjo, <4 x float> nofpclass(nan inf) %.03701070.epil.init)
  br label %._crit_edge1076.loopexit

._crit_edge1076.loopexit:                         ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.epil.preheader
  %.lcssa2109 = phi <4 x float> [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjp, %.lr.ph1075.epil.preheader ]
  %.lcssa2108 = phi <4 x float> [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjq, %.lr.ph1075.epil.preheader ]
  %.lcssa2107 = phi <4 x float> [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjr, %.lr.ph1075.epil.preheader ]
  %.lcssa = phi <4 x float> [ %i.bjc, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjs, %.lr.ph1075.epil.preheader ]
  %i.bjt = getelementptr i8, ptr %.09001083, i64 %i.asp
  %scevgep1471 = getelementptr i8, ptr %i.bjt, i64 64
  br label %._crit_edge1076

._crit_edge1076:                                  ; preds = %._crit_edge1076.loopexit, %bb.ax
  %.1376.lcssa = phi <4 x float> [ %.0375, %bb.ax ], [ %.lcssa2109, %._crit_edge1076.loopexit ]
  %.1374.lcssa = phi <4 x float> [ %.0373, %bb.ax ], [ %.lcssa2108, %._crit_edge1076.loopexit ]
  %.1372.lcssa = phi <4 x float> [ %.0371, %bb.ax ], [ %.lcssa2107, %._crit_edge1076.loopexit ]
  %.0370.lcssa = phi <4 x float> [ %storemerge1100, %bb.ax ], [ %.lcssa, %._crit_edge1076.loopexit ]
  %.1901.lcssa = phi ptr [ %.09001083, %bb.ax ], [ %scevgep1471, %._crit_edge1076.loopexit ] ; 2 uses
  store <4 x float> %.1376.lcssa, ptr %.301082, align 1, !tbaa !18
  %i.bju = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  store <4 x float> %.1374.lcssa, ptr %i.bju, align 1, !tbaa !18
  %i.bjv = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  store <4 x float> %.1372.lcssa, ptr %i.bjv, align 1, !tbaa !18
  %i.bjw = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  store <4 x float> %.0370.lcssa, ptr %i.bjw, align 1, !tbaa !18
  %i.bjx = getelementptr inbounds nuw i8, ptr %.301082, i64 64 ; 2 uses
  %i.bjy = add nuw nsw i32 %.08981084, 16         ; 2 uses
  %i.bjz = or disjoint i32 %i.bjy, 15
  %i.bka = icmp slt i32 %i.bjz, %4
  br i1 %i.bka, label %.lr.ph1086, label %.preheader498, !llvm.loop !766

.preheader497:                                    ; preds = %._crit_edge1097, %.preheader498
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader498 ], [ %i.bno, %._crit_edge1097 ] ; 5 uses
  %.2902.lcssa = phi ptr [ %.0900.lcssa, %.preheader498 ], [ %.3903.lcssa, %._crit_edge1097 ] ; 4 uses
  %.1899.lcssa = phi i32 [ %.0898.lcssa, %.preheader498 ], [ %i.bnp, %._crit_edge1097 ] ; 7 uses
  %i.bkb = or disjoint i32 %.1899.lcssa, 3
  %i.bkc = icmp slt i32 %i.bkb, %4
  br i1 %i.bkc, label %.lr.ph1120, label %.preheader496

.lr.ph1120:                                       ; preds = %.preheader497
  br i1 %i.asm, label %.lr.ph1120.split.us, label %.lr.ph1120.split

.lr.ph1120.split.us:                              ; preds = %.lr.ph1120, %._crit_edge1114.us
  %.21119.us = phi i32 [ %i.blp, %._crit_edge1114.us ], [ %.1899.lcssa, %.lr.ph1120 ]
  %.49041118.us = phi ptr [ %scevgep1479, %._crit_edge1114.us ], [ %.2902.lcssa, %.lr.ph1120 ] ; 3 uses
  %.321117.us = phi ptr [ %i.blo, %._crit_edge1114.us ], [ %.31.lcssa, %.lr.ph1120 ] ; 3 uses
  br i1 %i.asl, label %.lr.ph1113.us.preheader, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1120.split.us
  %i.bkd = load <4 x float>, ptr %.321117.us, align 1, !tbaa !18
  br label %.lr.ph1113.us.preheader

.lr.ph1113.us.preheader:                          ; preds = %bb.ay, %.lr.ph1120.split.us
  %.03501108.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph1120.split.us ], [ %i.bkd, %bb.ay ] ; 2 uses
  br i1 %i.atb, label %.lr.ph1113.us.epil.preheader, label %.lr.ph1113.us

.lr.ph1113.us:                                    ; preds = %.lr.ph1113.us.preheader, %.lr.ph1113.us
  %.08931110.us = phi ptr [ %i.ble, %.lr.ph1113.us ], [ %i.bhi, %.lr.ph1113.us.preheader ] ; 5 uses
  %.51109.us = phi ptr [ %i.blf, %.lr.ph1113.us ], [ %.49041118.us, %.lr.ph1113.us.preheader ] ; 5 uses
  %.03501108.us = phi <4 x float> [ %i.bld, %.lr.ph1113.us ], [ %.03501108.us.ph, %.lr.ph1113.us.preheader ]
  %niter2387 = phi i32 [ %niter2387.next.3, %.lr.ph1113.us ], [ 0, %.lr.ph1113.us.preheader ]
  %i.bke = load float, ptr %.08931110.us, align 4, !tbaa !22
  %i.bkf = insertelement <4 x float> poison, float %i.bke, i64 0
  %i.bkg = shufflevector <4 x float> %i.bkf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkh = load <4 x float>, ptr %.51109.us, align 16, !tbaa !18
  %i.bki = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkg, <4 x float> nofpclass(nan inf) %i.bkh, <4 x float> nofpclass(nan inf) %.03501108.us)
  %i.bkj = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 4
  %i.bkk = getelementptr inbounds nuw i8, ptr %.51109.us, i64 16
  %i.bkl = load float, ptr %i.bkj, align 4, !tbaa !22
  %i.bkm = insertelement <4 x float> poison, float %i.bkl, i64 0
  %i.bkn = shufflevector <4 x float> %i.bkm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bko = load <4 x float>, ptr %i.bkk, align 16, !tbaa !18
  %i.bkp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkn, <4 x float> nofpclass(nan inf) %i.bko, <4 x float> nofpclass(nan inf) %i.bki)
  %i.bkq = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 8
  %i.bkr = getelementptr inbounds nuw i8, ptr %.51109.us, i64 32
  %i.bks = load float, ptr %i.bkq, align 4, !tbaa !22
  %i.bkt = insertelement <4 x float> poison, float %i.bks, i64 0
  %i.bku = shufflevector <4 x float> %i.bkt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkv = load <4 x float>, ptr %i.bkr, align 16, !tbaa !18
  %i.bkw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bku, <4 x float> nofpclass(nan inf) %i.bkv, <4 x float> nofpclass(nan inf) %i.bkp)
  %i.bkx = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 12
  %i.bky = getelementptr inbounds nuw i8, ptr %.51109.us, i64 48
  %i.bkz = load float, ptr %i.bkx, align 4, !tbaa !22
  %i.bla = insertelement <4 x float> poison, float %i.bkz, i64 0
  %i.blb = shufflevector <4 x float> %i.bla, <4 x float> poison, <4 x i32> zeroinitializer
  %i.blc = load <4 x float>, ptr %i.bky, align 16, !tbaa !18
  %i.bld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.blb, <4 x float> nofpclass(nan inf) %i.blc, <4 x float> nofpclass(nan inf) %i.bkw) ; 3 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 16 ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %.51109.us, i64 64 ; 2 uses
  %niter2387.next.3 = add nuw nsw i32 %niter2387, 4 ; 2 uses
  %niter2387.ncmp.3 = icmp eq i32 %niter2387.next.3, %unroll_iter2386
  br i1 %niter2387.ncmp.3, label %._crit_edge1114.us.unr-lcssa, label %.lr.ph1113.us, !llvm.loop !767

._crit_edge1114.us.unr-lcssa:                     ; preds = %.lr.ph1113.us
  br i1 %lcmp.mod2383.not, label %._crit_edge1114.us, label %.lr.ph1113.us.epil.preheader

.lr.ph1113.us.epil.preheader:                     ; preds = %._crit_edge1114.us.unr-lcssa, %.lr.ph1113.us.preheader
  %.08931110.us.epil.init = phi ptr [ %i.bhi, %.lr.ph1113.us.preheader ], [ %i.ble, %._crit_edge1114.us.unr-lcssa ]
  %.51109.us.epil.init = phi ptr [ %.49041118.us, %.lr.ph1113.us.preheader ], [ %i.blf, %._crit_edge1114.us.unr-lcssa ]
  %.03501108.us.epil.init = phi <4 x float> [ %.03501108.us.ph, %.lr.ph1113.us.preheader ], [ %i.bld, %._crit_edge1114.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2385)
  br label %.lr.ph1113.us.epil

.lr.ph1113.us.epil:                               ; preds = %.lr.ph1113.us.epil, %.lr.ph1113.us.epil.preheader
  %.08931110.us.epil = phi ptr [ %i.bll, %.lr.ph1113.us.epil ], [ %.08931110.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.51109.us.epil = phi ptr [ %i.blm, %.lr.ph1113.us.epil ], [ %.51109.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.03501108.us.epil = phi <4 x float> [ %i.blk, %.lr.ph1113.us.epil ], [ %.03501108.us.epil.init, %.lr.ph1113.us.epil.preheader ]
  %epil.iter2382 = phi i32 [ %epil.iter2382.next, %.lr.ph1113.us.epil ], [ 0, %.lr.ph1113.us.epil.preheader ]
  %i.blg = load float, ptr %.08931110.us.epil, align 4, !tbaa !22
  %i.blh = insertelement <4 x float> poison, float %i.blg, i64 0
  %i.bli = shufflevector <4 x float> %i.blh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.blj = load <4 x float>, ptr %.51109.us.epil, align 16, !tbaa !18
  %i.blk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bli, <4 x float> nofpclass(nan inf) %i.blj, <4 x float> nofpclass(nan inf) %.03501108.us.epil) ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %.08931110.us.epil, i64 4
  %i.blm = getelementptr inbounds nuw i8, ptr %.51109.us.epil, i64 16
  %epil.iter2382.next = add i32 %epil.iter2382, 1 ; 2 uses
  %epil.iter2382.cmp.not = icmp eq i32 %epil.iter2382.next, %xtraiter2381
  br i1 %epil.iter2382.cmp.not, label %._crit_edge1114.us, label %.lr.ph1113.us.epil, !llvm.loop !768

._crit_edge1114.us:                               ; preds = %.lr.ph1113.us.epil, %._crit_edge1114.us.unr-lcssa
  %.lcssa2115 = phi <4 x float> [ %i.bld, %._crit_edge1114.us.unr-lcssa ], [ %i.blk, %.lr.ph1113.us.epil ]
  %i.bln = getelementptr i8, ptr %.49041118.us, i64 %i.ast
  %scevgep1479 = getelementptr i8, ptr %i.bln, i64 16 ; 2 uses
  store <4 x float> %.lcssa2115, ptr %.321117.us, align 1, !tbaa !18
  %i.blo = getelementptr inbounds nuw i8, ptr %.321117.us, i64 16 ; 2 uses
  %i.blp = add nuw nsw i32 %.21119.us, 4          ; 3 uses
  %i.blq = or disjoint i32 %i.blp, 3
  %i.blr = icmp slt i32 %i.blq, %4
  br i1 %i.blr, label %.lr.ph1120.split.us, label %.preheader496, !llvm.loop !769

.lr.ph1120.split:                                 ; preds = %.lr.ph1120
  br i1 %i.asl, label %.lr.ph1120.split.split.us.preheader, label %.lr.ph1120.split.split.preheader

.lr.ph1120.split.split.preheader:                 ; preds = %.lr.ph1120.split
  %scevgep1475 = getelementptr i8, ptr %.31.lcssa, i64 16
  %i.bls = sub i32 %i.ass, %.1899.lcssa           ; 2 uses
  %i.blt = lshr i32 %i.bls, 2
  %i.blu = zext nneg i32 %i.blt to i64
  %i.blv = shl nuw nsw i64 %i.blu, 4
  %scevgep1476 = getelementptr i8, ptr %scevgep1475, i64 %i.blv
  %i.blw = add nsw i32 %.1899.lcssa, 4
  %i.blx = and i32 %i.bls, -4
  %i.bly = add i32 %i.blw, %i.blx
  br label %.preheader496

.lr.ph1120.split.split.us.preheader:              ; preds = %.lr.ph1120.split
  %i.blz = sub i32 %i.ass, %.1899.lcssa           ; 2 uses
  %i.bma = lshr i32 %i.blz, 2
  %i.bmb = zext nneg i32 %i.bma to i64
  %i.bmc = shl nuw nsw i64 %i.bmb, 4              ; 2 uses
  %i.bmd = add nuw nsw i64 %i.bmc, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.31.lcssa, i8 0, i64 %i.bmd, i1 false), !tbaa !18
  %scevgep1477 = getelementptr i8, ptr %.31.lcssa, i64 16
  %scevgep1478 = getelementptr i8, ptr %scevgep1477, i64 %i.bmc
  %i.bme = add nsw i32 %.1899.lcssa, 4
  %i.bmf = and i32 %i.blz, -4
  %i.bmg = add i32 %i.bme, %i.bmf
  br label %.preheader496

.lr.ph1104:                                       ; preds = %.preheader498, %._crit_edge1097
  %.18991103 = phi i32 [ %i.bnp, %._crit_edge1097 ], [ %.0898.lcssa, %.preheader498 ]
  %.29021102 = phi ptr [ %.3903.lcssa, %._crit_edge1097 ], [ %.0900.lcssa, %.preheader498 ] ; 4 uses
  %.311101 = phi ptr [ %i.bno, %._crit_edge1097 ], [ %.30.lcssa, %.preheader498 ] ; 5 uses
  br i1 %i.asl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph1104
  %i.bmh = load <4 x float>, ptr %.311101, align 1, !tbaa !18
  %i.bmi = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  %i.bmj = load <4 x float>, ptr %i.bmi, align 1, !tbaa !18
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1104, %bb.az
  %.0358 = phi nsz <4 x float> [ %i.bmh, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  %storemerge1099 = phi <4 x float> [ %i.bmj, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1096.preheader, label %._crit_edge1097

.lr.ph1096.preheader:                             ; preds = %bb.ba
  br i1 %i.ata, label %.lr.ph1096.epil.preheader, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %.lr.ph1096.preheader, %.lr.ph1096
  %.08951093 = phi ptr [ %i.bnc, %.lr.ph1096 ], [ %i.bhi, %.lr.ph1096.preheader ] ; 3 uses
  %.39031092 = phi ptr [ %i.bnd, %.lr.ph1096 ], [ %.29021102, %.lr.ph1096.preheader ] ; 5 uses
  %.03571091 = phi <4 x float> [ %i.bnb, %.lr.ph1096 ], [ %storemerge1099, %.lr.ph1096.preheader ]
  %.13591090 = phi <4 x float> [ %i.bna, %.lr.ph1096 ], [ %.0358, %.lr.ph1096.preheader ]
  %niter2380 = phi i32 [ %niter2380.next.1, %.lr.ph1096 ], [ 0, %.lr.ph1096.preheader ]
  %i.bmk = load float, ptr %.08951093, align 4, !tbaa !22
  %i.bml = insertelement <4 x float> poison, float %i.bmk, i64 0
  %i.bmm = shufflevector <4 x float> %i.bml, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmn = load <4 x float>, ptr %.39031092, align 16, !tbaa !18
  %i.bmo = getelementptr inbounds nuw i8, ptr %.39031092, i64 16
  %i.bmp = load <4 x float>, ptr %i.bmo, align 16, !tbaa !18
  %i.bmq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %i.bmn, <4 x float> nofpclass(nan inf) %.13591090)
  %i.bmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %i.bmp, <4 x float> nofpclass(nan inf) %.03571091)
  %i.bms = getelementptr inbounds nuw i8, ptr %.08951093, i64 4
  %i.bmt = getelementptr inbounds nuw i8, ptr %.39031092, i64 32
  %i.bmu = load float, ptr %i.bms, align 4, !tbaa !22
  %i.bmv = insertelement <4 x float> poison, float %i.bmu, i64 0
  %i.bmw = shufflevector <4 x float> %i.bmv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmx = load <4 x float>, ptr %i.bmt, align 16, !tbaa !18
  %i.bmy = getelementptr inbounds nuw i8, ptr %.39031092, i64 48
  %i.bmz = load <4 x float>, ptr %i.bmy, align 16, !tbaa !18
  %i.bna = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmw, <4 x float> nofpclass(nan inf) %i.bmx, <4 x float> nofpclass(nan inf) %i.bmq) ; 3 uses
  %i.bnb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmw, <4 x float> nofpclass(nan inf) %i.bmz, <4 x float> nofpclass(nan inf) %i.bmr) ; 3 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %.08951093, i64 8 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %.39031092, i64 64 ; 2 uses
  %niter2380.next.1 = add nuw nsw i32 %niter2380, 2 ; 2 uses
  %niter2380.ncmp.1 = icmp eq i32 %niter2380.next.1, %unroll_iter2379
  br i1 %niter2380.ncmp.1, label %._crit_edge1097.loopexit.unr-lcssa, label %.lr.ph1096, !llvm.loop !770

._crit_edge1097.loopexit.unr-lcssa:               ; preds = %.lr.ph1096
  br i1 %lcmp.mod2375.not, label %._crit_edge1097.loopexit, label %.lr.ph1096.epil.preheader

.lr.ph1096.epil.preheader:                        ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.preheader
  %.08951093.epil.init = phi ptr [ %i.bhi, %.lr.ph1096.preheader ], [ %i.bnc, %._crit_edge1097.loopexit.unr-lcssa ]
  %.39031092.epil.init = phi ptr [ %.29021102, %.lr.ph1096.preheader ], [ %i.bnd, %._crit_edge1097.loopexit.unr-lcssa ] ; 2 uses
  %.03571091.epil.init = phi <4 x float> [ %storemerge1099, %.lr.ph1096.preheader ], [ %i.bnb, %._crit_edge1097.loopexit.unr-lcssa ]
  %.13591090.epil.init = phi <4 x float> [ %.0358, %.lr.ph1096.preheader ], [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2378)
  %i.bne = load float, ptr %.08951093.epil.init, align 4, !tbaa !22
  %i.bnf = insertelement <4 x float> poison, float %i.bne, i64 0
  %i.bng = shufflevector <4 x float> %i.bnf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bnh = load <4 x float>, ptr %.39031092.epil.init, align 16, !tbaa !18
  %i.bni = getelementptr inbounds nuw i8, ptr %.39031092.epil.init, i64 16
  %i.bnj = load <4 x float>, ptr %i.bni, align 16, !tbaa !18
  %i.bnk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bng, <4 x float> nofpclass(nan inf) %i.bnh, <4 x float> nofpclass(nan inf) %.13591090.epil.init)
  %i.bnl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bng, <4 x float> nofpclass(nan inf) %i.bnj, <4 x float> nofpclass(nan inf) %.03571091.epil.init)
  br label %._crit_edge1097.loopexit

._crit_edge1097.loopexit:                         ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.epil.preheader
  %.lcssa2112 = phi <4 x float> [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnk, %.lr.ph1096.epil.preheader ]
  %.lcssa2111 = phi <4 x float> [ %i.bnb, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnl, %.lr.ph1096.epil.preheader ]
  %i.bnm = getelementptr i8, ptr %.29021102, i64 %i.asr
  %scevgep1473 = getelementptr i8, ptr %i.bnm, i64 32
  br label %._crit_edge1097

._crit_edge1097:                                  ; preds = %._crit_edge1097.loopexit, %bb.ba
  %.1359.lcssa = phi <4 x float> [ %.0358, %bb.ba ], [ %.lcssa2112, %._crit_edge1097.loopexit ]
  %.0357.lcssa = phi <4 x float> [ %storemerge1099, %bb.ba ], [ %.lcssa2111, %._crit_edge1097.loopexit ]
  %.3903.lcssa = phi ptr [ %.29021102, %bb.ba ], [ %scevgep1473, %._crit_edge1097.loopexit ] ; 2 uses
  store <4 x float> %.1359.lcssa, ptr %.311101, align 1, !tbaa !18
  %i.bnn = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  store <4 x float> %.0357.lcssa, ptr %i.bnn, align 1, !tbaa !18
  %i.bno = getelementptr inbounds nuw i8, ptr %.311101, i64 32 ; 2 uses
  %i.bnp = add nuw nsw i32 %.18991103, 8          ; 3 uses
  %i.bnq = or disjoint i32 %i.bnp, 7
  %i.bnr = icmp slt i32 %i.bnq, %4
  br i1 %i.bnr, label %.lr.ph1104, label %.preheader497, !llvm.loop !771

.preheader496:                                    ; preds = %._crit_edge1114.us, %.lr.ph1120.split.split.preheader, %.lr.ph1120.split.split.us.preheader, %.preheader497
  %.32.lcssa = phi ptr [ %.31.lcssa, %.preheader497 ], [ %scevgep1478, %.lr.ph1120.split.split.us.preheader ], [ %scevgep1476, %.lr.ph1120.split.split.preheader ], [ %i.blo, %._crit_edge1114.us ] ; 2 uses
  %.4904.lcssa = phi ptr [ %.2902.lcssa, %.preheader497 ], [ %.2902.lcssa, %.lr.ph1120.split.split.us.preheader ], [ %.2902.lcssa, %.lr.ph1120.split.split.preheader ], [ %scevgep1479, %._crit_edge1114.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1899.lcssa, %.preheader497 ], [ %i.bmg, %.lr.ph1120.split.split.us.preheader ], [ %i.bly, %.lr.ph1120.split.split.preheader ], [ %i.blp, %._crit_edge1114.us ] ; 3 uses
  %i.bns = or disjoint i32 %.2.lcssa, 1
  %i.bnt = icmp slt i32 %i.bns, %4
  br i1 %i.bnt, label %.lr.ph1150.preheader, label %.preheader

.lr.ph1150.preheader:                             ; preds = %.preheader496
  %i.bnu = getelementptr i8, ptr %i.bhi, i64 %i.ate
  %i.bnv = getelementptr i8, ptr %i.bhi, i64 %i.ath
  br label %.lr.ph1150

.preheader:                                       ; preds = %._crit_edge1143, %.preheader496
  %.33.lcssa = phi ptr [ %.32.lcssa, %.preheader496 ], [ %i.bqf, %._crit_edge1143 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4904.lcssa, %.preheader496 ], [ %.7.lcssa, %._crit_edge1143 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader496 ], [ %i.bqg, %._crit_edge1143 ] ; 2 uses
  %i.bnw = icmp slt i32 %.3.lcssa, %4
  br i1 %i.bnw, label %.lr.ph1166.preheader, label %._crit_edge1167

.lr.ph1166.preheader:                             ; preds = %.preheader
  %i.bnx = getelementptr i8, ptr %i.bhi, i64 %i.atl
  %i.bny = getelementptr i8, ptr %i.bhi, i64 %i.atn
  br label %.lr.ph1166

.lr.ph1150:                                       ; preds = %.lr.ph1150.preheader, %._crit_edge1143
  %.31149 = phi i32 [ %i.bqg, %._crit_edge1143 ], [ %.2.lcssa, %.lr.ph1150.preheader ]
  %.61148 = phi ptr [ %.7.lcssa, %._crit_edge1143 ], [ %.4904.lcssa, %.lr.ph1150.preheader ] ; 10 uses
  %.331147 = phi ptr [ %i.bqf, %._crit_edge1143 ], [ %.32.lcssa, %.lr.ph1150.preheader ] ; 5 uses
  br i1 %i.asl, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1150
  %i.bnz = load float, ptr %.331147, align 4, !tbaa !22
  %i.boa = getelementptr inbounds nuw i8, ptr %.331147, i64 4
  %i.bob = load float, ptr %i.boa, align 4, !tbaa !22
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1150, %bb.bb
  %.0889 = phi nsz float [ %i.bnz, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  %.0887 = phi nsz float [ %i.bob, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  br i1 %i.asm, label %iter.check2083, label %._crit_edge1143

iter.check2083:                                   ; preds = %bb.bc
  br i1 %min.iters.check2033, label %.lr.ph1142.preheader, label %vector.main.loop.iter.check2034

vector.main.loop.iter.check2034:                  ; preds = %iter.check2083
  br i1 %min.iters.check2035, label %vec.epilog.ph2087, label %vector.ph2036

vector.ph2036:                                    ; preds = %vector.main.loop.iter.check2034
  %i.boc = getelementptr i8, ptr %.61148, i64 %i.atf
  %i.bod = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0887, i64 0
  %i.boe = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0889, i64 0
  br label %vector.body2038

vector.body2038:                                  ; preds = %vector.body2038, %vector.ph2036
  %index2039 = phi i64 [ 0, %vector.ph2036 ], [ %index.next2069, %vector.body2038 ] ; 3 uses
  %vec.phi2040 = phi <16 x float> [ %i.bod, %vector.ph2036 ], [ %i.boz, %vector.body2038 ]
  %vec.phi2041 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpa, %vector.body2038 ]
  %vec.phi2042 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpb, %vector.body2038 ]
  %vec.phi2043 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpc, %vector.body2038 ]
  %vec.phi2044 = phi <16 x float> [ %i.boe, %vector.ph2036 ], [ %i.bor, %vector.body2038 ]
  %vec.phi2045 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bos, %vector.body2038 ]
  %vec.phi2046 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bot, %vector.body2038 ]
  %vec.phi2047 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bou, %vector.body2038 ]
  %i.bof = shl i64 %index2039, 2
  %next.gep2048 = getelementptr i8, ptr %i.bhi, i64 %i.bof ; 4 uses
  %i.bog = shl i64 %index2039, 3                  ; 4 uses
  %next.gep2049 = getelementptr i8, ptr %.61148, i64 %i.bog
  %i.boh = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2050 = getelementptr i8, ptr %i.boh, i64 128
  %i.boi = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2051 = getelementptr i8, ptr %i.boi, i64 256
  %i.boj = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2052 = getelementptr i8, ptr %i.boj, i64 384
  %i.bok = getelementptr i8, ptr %next.gep2048, i64 64
  %i.bol = getelementptr i8, ptr %next.gep2048, i64 128
  %i.bom = getelementptr i8, ptr %next.gep2048, i64 192
  %wide.load2053 = load <16 x float>, ptr %next.gep2048, align 4, !tbaa !22 ; 2 uses
  %wide.load2054 = load <16 x float>, ptr %i.bok, align 4, !tbaa !22 ; 2 uses
  %wide.load2055 = load <16 x float>, ptr %i.bol, align 4, !tbaa !22 ; 2 uses
  %wide.load2056 = load <16 x float>, ptr %i.bom, align 4, !tbaa !22 ; 2 uses
  %wide.vec2057 = load <32 x float>, ptr %next.gep2049, align 4, !tbaa !22 ; 2 uses
  %strided.vec2058 = shufflevector <32 x float> %wide.vec2057, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2059 = shufflevector <32 x float> %wide.vec2057, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2060 = load <32 x float>, ptr %next.gep2050, align 4, !tbaa !22 ; 2 uses
  %strided.vec2061 = shufflevector <32 x float> %wide.vec2060, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2062 = shufflevector <32 x float> %wide.vec2060, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2063 = load <32 x float>, ptr %next.gep2051, align 4, !tbaa !22 ; 2 uses
  %strided.vec2064 = shufflevector <32 x float> %wide.vec2063, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2065 = shufflevector <32 x float> %wide.vec2063, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2066 = load <32 x float>, ptr %next.gep2052, align 4, !tbaa !22 ; 2 uses
  %strided.vec2067 = shufflevector <32 x float> %wide.vec2066, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2068 = shufflevector <32 x float> %wide.vec2066, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bon = fmul fast <16 x float> %strided.vec2058, %wide.load2053
  %i.boo = fmul fast <16 x float> %strided.vec2061, %wide.load2054
  %i.bop = fmul fast <16 x float> %strided.vec2064, %wide.load2055
  %i.boq = fmul fast <16 x float> %strided.vec2067, %wide.load2056
  %i.bor = fadd fast <16 x float> %i.bon, %vec.phi2044 ; 2 uses
  %i.bos = fadd fast <16 x float> %i.boo, %vec.phi2045 ; 2 uses
  %i.bot = fadd fast <16 x float> %i.bop, %vec.phi2046 ; 2 uses
  %i.bou = fadd fast <16 x float> %i.boq, %vec.phi2047 ; 2 uses
  %i.bov = fmul fast <16 x float> %strided.vec2059, %wide.load2053
  %i.bow = fmul fast <16 x float> %strided.vec2062, %wide.load2054
  %i.box = fmul fast <16 x float> %strided.vec2065, %wide.load2055
  %i.boy = fmul fast <16 x float> %strided.vec2068, %wide.load2056
  %i.boz = fadd fast <16 x float> %i.bov, %vec.phi2040 ; 2 uses
  %i.bpa = fadd fast <16 x float> %i.bow, %vec.phi2041 ; 2 uses
end_hunk_11
