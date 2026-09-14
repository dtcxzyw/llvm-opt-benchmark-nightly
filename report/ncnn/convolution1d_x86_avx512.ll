Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %.011301606.us.i = phi ptr [ %i.so, %._crit_edge.us.i ], [ %i.mj, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011311605.us.i = phi ptr [ %i.sp, %._crit_edge.us.i ], [ %i.mn, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011471604.us.i = phi ptr [ %i.sq, %._crit_edge.us.i ], [ %i.mr, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011481603.us.i = phi ptr [ %i.sr, %._crit_edge.us.i ], [ %i.mv, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011541602.us.i = phi ptr [ %i.ss, %._crit_edge.us.i ], [ %i.mz, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011551601.us.i = phi ptr [ %i.st, %._crit_edge.us.i ], [ %i.nd, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011561600.us.i = phi ptr [ %i.su, %._crit_edge.us.i ], [ %i.nh, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011571599.us.i = phi ptr [ %i.sv, %._crit_edge.us.i ], [ %i.nl, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011591598.us.i = phi ptr [ %i.sw, %._crit_edge.us.i ], [ %i.np, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011601597.us.i = phi ptr [ %i.sx, %._crit_edge.us.i ], [ %i.nt, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011611596.us.i = phi ptr [ %i.sy, %._crit_edge.us.i ], [ %i.nx, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011621595.us.i = phi ptr [ %i.sz, %._crit_edge.us.i ], [ %i.ob, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011641594.us.i = phi ptr [ %i.sj, %._crit_edge.us.i ], [ %i.lt, %.preheader1587.us.preheader.i ]
  %.011751593.us.i = phi i32 [ %i.ta, %._crit_edge.us.i ], [ 0, %.preheader1587.us.preheader.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1587.us.i
  %indvars.iv2171.i = phi i64 [ 0, %.preheader1587.us.i ], [ %indvars.iv.next2172.i, %bb.ba ] ; 17 uses
  %.111651592.us.i = phi ptr [ %.011641594.us.i, %.preheader1587.us.i ], [ %i.sj, %bb.ba ] ; 17 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.011211610.us.i, i64 %indvars.iv2171.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.011251609.us.i, i64 %indvars.iv2171.i
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.011271608.us.i, i64 %indvars.iv2171.i
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.011281607.us.i, i64 %indvars.iv2171.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.011301606.us.i, i64 %indvars.iv2171.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.011311605.us.i, i64 %indvars.iv2171.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.011471604.us.i, i64 %indvars.iv2171.i
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.011481603.us.i, i64 %indvars.iv2171.i
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.011541602.us.i, i64 %indvars.iv2171.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.011551601.us.i, i64 %indvars.iv2171.i
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.011561600.us.i, i64 %indvars.iv2171.i
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.011571599.us.i, i64 %indvars.iv2171.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.011591598.us.i, i64 %indvars.iv2171.i
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.011601597.us.i, i64 %indvars.iv2171.i
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.011611596.us.i, i64 %indvars.iv2171.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.011621595.us.i, i64 %indvars.iv2171.i
  %i.os = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oc, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ot = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.od, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ou = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oe, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ov = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.of, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ow = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.og, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ox = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oh, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oi, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oj, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ok, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ol, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.om, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.on, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oo, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.op, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oq, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ph = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.or, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pi = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pj = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pk = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pl = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pm = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pn = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.po = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.pa, <16 x float> %i.pb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pa, <16 x float> %i.pb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pc, <16 x float> %i.pd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pc, <16 x float> %i.pd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pe, <16 x float> %i.pf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pe, <16 x float> %i.pf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pg, <16 x float> %i.ph, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.px = shufflevector <16 x float> %i.pg, <16 x float> %i.ph, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.py = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.pr, <16 x float> %i.pt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pr, <16 x float> %i.pt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.pv, <16 x float> %i.px, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.pv, <16 x float> %i.px, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.qg, <16 x float> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.qh, <16 x float> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.qi, <16 x float> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qu = shufflevector <16 x float> %i.qb, <16 x float> %i.qf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qv = shufflevector <16 x float> %i.qj, <16 x float> %i.qn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qw = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qx = shufflevector <16 x float> %i.qg, <16 x float> %i.qk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qy = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qz = shufflevector <16 x float> %i.qh, <16 x float> %i.ql, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ra = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rb = shufflevector <16 x float> %i.qi, <16 x float> %i.qm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rc = shufflevector <16 x float> %i.qb, <16 x float> %i.qf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rd = shufflevector <16 x float> %i.qj, <16 x float> %i.qn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.re = shufflevector <16 x float> %i.qo, <16 x float> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rf = shufflevector <16 x float> %i.qq, <16 x float> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rg = shufflevector <16 x float> %i.qs, <16 x float> %i.qt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rh = shufflevector <16 x float> %i.qu, <16 x float> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ri = shufflevector <16 x float> %i.qw, <16 x float> %i.qx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rj = shufflevector <16 x float> %i.qy, <16 x float> %i.qz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rk = shufflevector <16 x float> %i.ra, <16 x float> %i.rb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rl = shufflevector <16 x float> %i.rc, <16 x float> %i.rd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rm = shufflevector <16 x float> %i.qo, <16 x float> %i.qp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rn = shufflevector <16 x float> %i.qq, <16 x float> %i.qr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ro = shufflevector <16 x float> %i.qs, <16 x float> %i.qt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rp = shufflevector <16 x float> %i.qu, <16 x float> %i.qv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rq = shufflevector <16 x float> %i.qw, <16 x float> %i.qx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rr = shufflevector <16 x float> %i.qy, <16 x float> %i.qz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rs = shufflevector <16 x float> %i.ra, <16 x float> %i.rb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rt = shufflevector <16 x float> %i.rc, <16 x float> %i.rd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.re, ptr %.111651592.us.i, align 64, !tbaa !45
  %i.ru = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 64
  store <16 x float> %i.rf, ptr %i.ru, align 64, !tbaa !45
  %i.rv = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 128
  store <16 x float> %i.rg, ptr %i.rv, align 64, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 192
  store <16 x float> %i.rh, ptr %i.rw, align 64, !tbaa !45
  %i.rx = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 256
  store <16 x float> %i.ri, ptr %i.rx, align 64, !tbaa !45
  %i.ry = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 320
  store <16 x float> %i.rj, ptr %i.ry, align 64, !tbaa !45
  %i.rz = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 384
  store <16 x float> %i.rk, ptr %i.rz, align 64, !tbaa !45
  %i.sa = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 448
  store <16 x float> %i.rl, ptr %i.sa, align 64, !tbaa !45
  %i.sb = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 512
  store <16 x float> %i.rm, ptr %i.sb, align 64, !tbaa !45
  %i.sc = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 576
  store <16 x float> %i.rn, ptr %i.sc, align 64, !tbaa !45
  %i.sd = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 640
  store <16 x float> %i.ro, ptr %i.sd, align 64, !tbaa !45
  %i.se = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 704
  store <16 x float> %i.rp, ptr %i.se, align 64, !tbaa !45
  %i.sf = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 768
  store <16 x float> %i.rq, ptr %i.sf, align 64, !tbaa !45
  %i.sg = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 832
  store <16 x float> %i.rr, ptr %i.sg, align 64, !tbaa !45
  %i.sh = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 896
  store <16 x float> %i.rs, ptr %i.sh, align 64, !tbaa !45
  %i.si = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 960
  store <16 x float> %i.rt, ptr %i.si, align 64, !tbaa !45
  %i.sj = getelementptr inbounds nuw i8, ptr %.111651592.us.i, i64 1024 ; 3 uses
  %indvars.iv.next2172.i = add nuw nsw i64 %indvars.iv2171.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next2172.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.ba, !llvm.loop !76

._crit_edge.us.i:                                 ; preds = %bb.ba
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.011211610.us.i, i64 %i.im ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.011251609.us.i, i64 %i.im
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.011271608.us.i, i64 %i.im
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.011281607.us.i, i64 %i.im
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.011301606.us.i, i64 %i.im
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.011311605.us.i, i64 %i.im
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.011471604.us.i, i64 %i.im
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.011481603.us.i, i64 %i.im
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.011541602.us.i, i64 %i.im
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.011551601.us.i, i64 %i.im
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.011561600.us.i, i64 %i.im
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.011571599.us.i, i64 %i.im
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.011591598.us.i, i64 %i.im
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.011601597.us.i, i64 %i.im
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.011611596.us.i, i64 %i.im
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.011621595.us.i, i64 %i.im
  %i.ta = add nuw nsw i32 %.011751593.us.i, 16    ; 2 uses
  %i.tb = or disjoint i32 %i.ta, 15
  %i.tc = icmp slt i32 %i.tb, %i.r
  br i1 %i.tc, label %.preheader1587.us.i, label %._crit_edge1611.i, !llvm.loop !77

._crit_edge1611.i:                                ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1328.i
  %.01175.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.je, %._crit_edge.us.i ] ; 4 uses
  %.01164.lcssa.i = phi ptr [ %i.lt, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.sj, %._crit_edge.us.i ] ; 3 uses
  %.01121.lcssa.i = phi ptr [ %i.lm, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.sk, %._crit_edge.us.i ] ; 3 uses
  %i.td = or disjoint i32 %.01175.lcssa.i, 7
  %i.te = icmp slt i32 %i.td, %i.r
  br i1 %i.te, label %.preheader1586.lr.ph.i, label %.preheader1590.i

._crit_edge1611.thread.i:                         ; preds = %.preheader1587.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.li, i64 %i.jb
  %scevgep2170.i = getelementptr i8, ptr %scevgep.i, i64 %i.lh ; 2 uses
  br i1 %i.ji, label %.preheader1586.preheader.i, label %.preheader1590.i

.preheader1586.lr.ph.i:                           ; preds = %._crit_edge1611.i
  br i1 %i.ik, label %.preheader1586.us.i, label %.preheader1586.preheader.i

.preheader1586.preheader.i:                       ; preds = %.preheader1586.lr.ph.i, %._crit_edge1611.thread.i
  %.01175.lcssa24402448.i = phi i32 [ %.01175.lcssa.i, %.preheader1586.lr.ph.i ], [ %i.je, %._crit_edge1611.thread.i ] ; 2 uses
  %.01164.lcssa24412447.i = phi ptr [ %.01164.lcssa.i, %.preheader1586.lr.ph.i ], [ %i.lt, %._crit_edge1611.thread.i ]
  %.01121.lcssa24422446.i = phi ptr [ %.01121.lcssa.i, %.preheader1586.lr.ph.i ], [ %scevgep2170.i, %._crit_edge1611.thread.i ]
  %i.tf = sub i32 %i.jf, %.01175.lcssa24402448.i  ; 2 uses
  %i.tg = lshr i32 %i.tf, 1
  %i.th = and i32 %i.tg, 2147483644
  %narrow2428.i = add nuw i32 %i.th, 4
  %i.ti = zext i32 %narrow2428.i to i64
  %i.tj = mul nsw i64 %i.ti, %i.ir
  %scevgep2174.i = getelementptr i8, ptr %.01121.lcssa24422446.i, i64 %i.tj
  %i.tk = add nsw i32 %.01175.lcssa24402448.i, 8
  %i.tl = and i32 %i.tf, -8
  %i.tm = add i32 %i.tk, %i.tl
  br label %.preheader1590.i

.preheader1586.us.i:                              ; preds = %.preheader1586.lr.ph.i, %._crit_edge.us1628.i
  %.111221624.us.i = phi ptr [ %i.ul, %._crit_edge.us1628.i ], [ %.01121.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.211661623.us.i = phi ptr [ %i.uk, %._crit_edge.us1628.i ], [ %.01164.lcssa.i, %.preheader1586.lr.ph.i ]
  %.111761622.us.i = phi i32 [ %i.um, %._crit_edge.us1628.i ], [ %.01175.lcssa.i, %.preheader1586.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1586.us.i
  %indvars.iv2176.i = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2177.i, %bb.bb ] ; 2 uses
  %.311671621.us.i = phi ptr [ %.211661623.us.i, %.preheader1586.us.i ], [ %i.uk, %bb.bb ] ; 9 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.111221624.us.i, i64 %indvars.iv2176.i ; 2 uses
  %i.to = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.tn, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.to, ptr %.311671621.us.i, align 64, !tbaa !45
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.ip ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 64
  %i.tr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.tp, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.tr, ptr %i.tq, align 64, !tbaa !45
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.ip ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 128
  %i.tu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ts, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.tu, ptr %i.tt, align 64, !tbaa !45
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.ip ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 192
  %i.tx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.tv, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.tx, ptr %i.tw, align 64, !tbaa !45
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.ip ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 256
  %i.ua = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ty, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.ua, ptr %i.tz, align 64, !tbaa !45
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.ip ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 320
  %i.ud = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ub, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.ud, ptr %i.uc, align 64, !tbaa !45
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.ip ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 384
  %i.ug = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ue, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.ug, ptr %i.uf, align 64, !tbaa !45
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ip
  %i.ui = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 448
  %i.uj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uh, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.uj, ptr %i.ui, align 64, !tbaa !45
  %i.uk = getelementptr inbounds nuw i8, ptr %.311671621.us.i, i64 512 ; 3 uses
  %indvars.iv.next2177.i = add nuw nsw i64 %indvars.iv2176.i, 1 ; 2 uses
  %exitcond2180.not.i = icmp eq i64 %indvars.iv.next2177.i, %wide.trip.count.i
  br i1 %exitcond2180.not.i, label %._crit_edge.us1628.i, label %bb.bb, !llvm.loop !78

._crit_edge.us1628.i:                             ; preds = %bb.bb
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.111221624.us.i, i64 %i.ir ; 2 uses
  %i.um = add nuw nsw i32 %.111761622.us.i, 8     ; 3 uses
  %i.un = or disjoint i32 %i.um, 7
  %i.uo = icmp slt i32 %i.un, %i.r
  br i1 %i.uo, label %.preheader1586.us.i, label %.preheader1590.i, !llvm.loop !79

.preheader1590.i:                                 ; preds = %._crit_edge.us1628.i, %.preheader1586.preheader.i, %._crit_edge1611.thread.i, %._crit_edge1611.i
  %.11176.lcssa.i = phi i32 [ %.01175.lcssa.i, %._crit_edge1611.i ], [ %i.je, %._crit_edge1611.thread.i ], [ %i.tm, %.preheader1586.preheader.i ], [ %i.um, %._crit_edge.us1628.i ] ; 3 uses
  %.21166.lcssa.i = phi ptr [ %.01164.lcssa.i, %._crit_edge1611.i ], [ %i.lt, %._crit_edge1611.thread.i ], [ %.01164.lcssa24412447.i, %.preheader1586.preheader.i ], [ %i.uk, %._crit_edge.us1628.i ] ; 2 uses
  %.11122.lcssa.i = phi ptr [ %.01121.lcssa.i, %._crit_edge1611.i ], [ %scevgep2170.i, %._crit_edge1611.thread.i ], [ %scevgep2174.i, %.preheader1586.preheader.i ], [ %i.ul, %._crit_edge.us1628.i ] ; 2 uses
  %i.up = or disjoint i32 %.11176.lcssa.i, 3
  %i.uq = icmp slt i32 %i.up, %i.r
  br i1 %i.uq, label %.preheader1585.lr.ph.i, label %.preheader1589.i

.preheader1585.lr.ph.i:                           ; preds = %.preheader1590.i
  br i1 %i.ik, label %.preheader1585.us.i, label %._crit_edge1669.split.i

.preheader1585.us.i:                              ; preds = %.preheader1585.lr.ph.i, %._crit_edge.us1644.i
  %.211231640.us.i = phi ptr [ %i.wc, %._crit_edge.us1644.i ], [ %.11122.lcssa.i, %.preheader1585.lr.ph.i ] ; 4 uses
  %.511691639.us.i = phi ptr [ %.lcssa574, %._crit_edge.us1644.i ], [ %.21166.lcssa.i, %.preheader1585.lr.ph.i ] ; 2 uses
  %.211771638.us.i = phi i32 [ %i.wd, %._crit_edge.us1644.i ], [ %.11176.lcssa.i, %.preheader1585.lr.ph.i ]
  br i1 %i.jk, label %.epil.preheader, label %.preheader1585.us.i.new

.preheader1585.us.i.new:                          ; preds = %.preheader1585.us.i, %.preheader1585.us.i.new
  %indvars.iv2183.i = phi i64 [ %indvars.iv.next2184.i.1, %.preheader1585.us.i.new ], [ 0, %.preheader1585.us.i ] ; 3 uses
  %.611701637.us.i = phi ptr [ %i.vp, %.preheader1585.us.i.new ], [ %.511691639.us.i, %.preheader1585.us.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.preheader1585.us.i.new ], [ 0, %.preheader1585.us.i ]
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.211231640.us.i, i64 %indvars.iv2183.i ; 2 uses
  %i.us = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ur, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.us, ptr %.611701637.us.i, align 64, !tbaa !45
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.ip ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 64
  %i.uv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ut, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.uv, ptr %i.uu, align 64, !tbaa !45
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.ip ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 128
  %i.uy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uw, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.uy, ptr %i.ux, align 64, !tbaa !45
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ip
  %i.va = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 192
  %i.vb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uz, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vb, ptr %i.va, align 64, !tbaa !45
  %i.vc = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 256
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.211231640.us.i, i64 %indvars.iv2183.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 4 ; 2 uses
  %i.vf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ve, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vf, ptr %i.vc, align 64, !tbaa !45
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.ip ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 320
  %i.vi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vg, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vi, ptr %i.vh, align 64, !tbaa !45
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.ip ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 384
  %i.vl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vj, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vl, ptr %i.vk, align 64, !tbaa !45
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.ip
  %i.vn = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 448
  %i.vo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vm, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vo, ptr %i.vn, align 64, !tbaa !45
  %i.vp = getelementptr inbounds nuw i8, ptr %.611701637.us.i, i64 512 ; 3 uses
  %indvars.iv.next2184.i.1 = add nuw nsw i64 %indvars.iv2183.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1644.i.unr-lcssa, label %.preheader1585.us.i.new, !llvm.loop !80

._crit_edge.us1644.i.unr-lcssa:                   ; preds = %.preheader1585.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1644.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1644.i.unr-lcssa, %.preheader1585.us.i
  %indvars.iv2183.i.epil.init = phi i64 [ 0, %.preheader1585.us.i ], [ %indvars.iv.next2184.i.1, %._crit_edge.us1644.i.unr-lcssa ]
  %.611701637.us.i.epil.init = phi ptr [ %.511691639.us.i, %.preheader1585.us.i ], [ %i.vp, %._crit_edge.us1644.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.211231640.us.i, i64 %indvars.iv2183.i.epil.init ; 2 uses
  %i.vr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.vq, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vr, ptr %.611701637.us.i.epil.init, align 64, !tbaa !45
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.ip ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.611701637.us.i.epil.init, i64 64
  %i.vu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vs, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vu, ptr %i.vt, align 64, !tbaa !45
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.ip ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.611701637.us.i.epil.init, i64 128
  %i.vx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vv, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.vx, ptr %i.vw, align 64, !tbaa !45
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.ip
  %i.vz = getelementptr inbounds nuw i8, ptr %.611701637.us.i.epil.init, i64 192
  %i.wa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vy, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wa, ptr %i.vz, align 64, !tbaa !45
  %i.wb = getelementptr inbounds nuw i8, ptr %.611701637.us.i.epil.init, i64 256
  br label %._crit_edge.us1644.i

._crit_edge.us1644.i:                             ; preds = %._crit_edge.us1644.i.unr-lcssa, %.epil.preheader
  %.lcssa574 = phi ptr [ %i.vp, %._crit_edge.us1644.i.unr-lcssa ], [ %i.wb, %.epil.preheader ] ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.211231640.us.i, i64 %i.it ; 2 uses
  %i.wd = add nuw nsw i32 %.211771638.us.i, 4     ; 3 uses
  %i.we = or disjoint i32 %i.wd, 3
  %i.wf = icmp slt i32 %i.we, %i.r
  br i1 %i.wf, label %.preheader1585.us.i, label %.preheader1589.i, !llvm.loop !81

.preheader1589.i:                                 ; preds = %._crit_edge.us1644.i, %.preheader1590.i
  %.21177.lcssa.i = phi i32 [ %.11176.lcssa.i, %.preheader1590.i ], [ %i.wd, %._crit_edge.us1644.i ] ; 3 uses
  %.51169.lcssa.i = phi ptr [ %.21166.lcssa.i, %.preheader1590.i ], [ %.lcssa574, %._crit_edge.us1644.i ] ; 2 uses
  %.21123.lcssa.i = phi ptr [ %.11122.lcssa.i, %.preheader1590.i ], [ %i.wc, %._crit_edge.us1644.i ] ; 2 uses
  %i.wg = or disjoint i32 %.21177.lcssa.i, 1
  %i.wh = icmp slt i32 %i.wg, %i.r
  br i1 %i.wh, label %.preheader1584.lr.ph.i, label %.preheader1588.i

.preheader1584.lr.ph.i:                           ; preds = %.preheader1589.i
  br i1 %i.ik, label %.preheader1584.us.i, label %._crit_edge1669.split.i

.preheader1584.us.i:                              ; preds = %.preheader1584.lr.ph.i, %._crit_edge.us1660.i
  %.311241656.us.i = phi ptr [ %i.xp, %._crit_edge.us1660.i ], [ %.21123.lcssa.i, %.preheader1584.lr.ph.i ] ; 6 uses
  %.811721655.us.i = phi ptr [ %.lcssa577, %._crit_edge.us1660.i ], [ %.51169.lcssa.i, %.preheader1584.lr.ph.i ] ; 2 uses
  %.311781654.us.i = phi i32 [ %i.xq, %._crit_edge.us1660.i ], [ %.21177.lcssa.i, %.preheader1584.lr.ph.i ]
  br i1 %i.jl, label %.epil.preheader583, label %.preheader1584.us.i.new

.preheader1584.us.i.new:                          ; preds = %.preheader1584.us.i, %.preheader1584.us.i.new
  %indvars.iv2189.i = phi i64 [ %indvars.iv.next2190.i.3, %.preheader1584.us.i.new ], [ 0, %.preheader1584.us.i ] ; 5 uses
  %.911731653.us.i = phi ptr [ %i.xi, %.preheader1584.us.i.new ], [ %.811721655.us.i, %.preheader1584.us.i ] ; 9 uses
  %niter589 = phi i64 [ %niter589.next.3, %.preheader1584.us.i.new ], [ 0, %.preheader1584.us.i ]
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i ; 2 uses
  %i.wj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.wi, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wj, ptr %.911731653.us.i, align 64, !tbaa !45
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.ip
  %i.wl = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 64
  %i.wm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wk, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wm, ptr %i.wl, align 64, !tbaa !45
  %i.wn = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 128
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 4 ; 2 uses
  %i.wq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wp, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wq, ptr %i.wn, align 64, !tbaa !45
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.ip
  %i.ws = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 192
  %i.wt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wr, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wt, ptr %i.ws, align 64, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 256
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.wx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ww, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wx, ptr %i.wu, align 64, !tbaa !45
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.ip
  %i.wz = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 320
  %i.xa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wy, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xa, ptr %i.wz, align 64, !tbaa !45
  %i.xb = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 384
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 12 ; 2 uses
  %i.xe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xd, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xe, ptr %i.xb, align 64, !tbaa !45
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.ip
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.abc = shl <4 x i32> %i.abb, splat (i32 2)
  %i.abd = add nsw i64 %wide.trip.count2282.i, -1 ; 2 uses
  %xtraiter623 = and i64 %wide.trip.count2282.i, 3 ; 3 uses
  %i.abe = icmp ult i64 %i.abd, 3
  %unroll_iter628 = and i64 %wide.trip.count2282.i, 2147483644
  %lcmp.mod625.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod627 = icmp ne i64 %xtraiter623, 0
  %xtraiter631 = and i64 %wide.trip.count2282.i, 7 ; 3 uses
  %i.abf = icmp ult i64 %i.abd, 7
  %unroll_iter636 = and i64 %wide.trip.count2282.i, 2147483640
  %lcmp.mod633.not = icmp eq i64 %xtraiter631, 0
  %lcmp.mod635 = icmp ne i64 %xtraiter631, 0
  br label %_ZN4ncnn3MatD2Ev.exit1326.i

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1765.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2261.i = phi i64 [ %i.kx, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2262.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2259.i = phi i32 [ %i.ky, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2260.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2204.i = phi i32 [ %i.ks, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2205.i, %._crit_edge1765.split.i ] ; 2 uses
  %i.abg = sext i32 %indvars.iv2204.i to i64
  %i.abh = shl nsw i64 %i.abg, 2
  %i.abi = load ptr, ptr %i.s, align 8, !tbaa !19 ; 9 uses
  %i.abj = trunc nuw i64 %indvars.iv2261.i to i32 ; 9 uses
  %i.abk = mul i32 %i.jq, %i.abj
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abl ; 2 uses
  %i.abn = add i32 %i.abj, 1
  %i.abo = mul i32 %i.abn, %i.jq
  %i.abp = sext i32 %i.abo to i64
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abp ; 2 uses
  %i.abr = add i32 %i.abj, 2
  %i.abs = mul i32 %i.abr, %i.jq
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abt ; 2 uses
  %i.abv = add i32 %i.abj, 3
  %i.abw = mul i32 %i.abv, %i.jq
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abx ; 2 uses
  %i.abz = add i32 %i.abj, 4
  %i.aca = mul i32 %i.abz, %i.jq
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acb ; 2 uses
  %i.acd = add i32 %i.abj, 5
  %i.ace = mul i32 %i.acd, %i.jq
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acf ; 2 uses
  %i.ach = add i32 %i.abj, 6
  %i.aci = mul i32 %i.ach, %i.jq
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acj ; 2 uses
  %i.acl = mul i32 %indvars.iv2259.i, %i.jq
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acm ; 2 uses
  %i.aco = lshr i32 %i.abj, 4
  %i.acp = lshr i32 %i.abj, 3
  %i.acq = and i32 %i.acp, 1
  %i.acr = add nuw nsw i32 %i.acq, %i.aco
  %i.acs = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !178
  %i.act = load i64, ptr %i.jr, align 8, !tbaa !20, !noalias !178
  %i.acu = zext nneg i32 %i.acr to i64
  %i.acv = mul i64 %i.act, %i.acu
  %i.acw = load i64, ptr %i.js, align 8, !tbaa !44, !noalias !178
  %i.acx = mul i64 %i.acv, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acx ; 4 uses
  br i1 %i.jz, label %.preheader1578.lr.ph.i, label %.preheader1581.i

.preheader1578.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.ka, label %.preheader1578.us.i, label %.preheader1581.thread.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1674.us.i
  %.012201685.us.i = phi ptr [ %i.afd, %._crit_edge1674.us.i ], [ %i.abm, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012241684.us.i = phi ptr [ %i.afe, %._crit_edge1674.us.i ], [ %i.abq, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012261683.us.i = phi ptr [ %i.aff, %._crit_edge1674.us.i ], [ %i.abu, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012281682.us.i = phi ptr [ %i.afg, %._crit_edge1674.us.i ], [ %i.aby, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012311681.us.i = phi ptr [ %i.afh, %._crit_edge1674.us.i ], [ %i.acc, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012331680.us.i = phi ptr [ %i.afi, %._crit_edge1674.us.i ], [ %i.acg, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012351679.us.i = phi ptr [ %i.afj, %._crit_edge1674.us.i ], [ %i.ack, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012371678.us.i = phi ptr [ %i.afk, %._crit_edge1674.us.i ], [ %i.acn, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012401677.us.i = phi ptr [ %i.afc, %._crit_edge1674.us.i ], [ %i.acy, %.preheader1578.lr.ph.i ]
  %.012521676.us.i = phi i32 [ %i.afl, %._crit_edge1674.us.i ], [ 0, %.preheader1578.lr.ph.i ]
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1578.us.i
  %indvars.iv2229.i = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2230.i, %bb.be ] ; 9 uses
  %.112411673.us.i = phi ptr [ %.012401677.us.i, %.preheader1578.us.i ], [ %i.afc, %bb.be ] ; 9 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %indvars.iv2229.i
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %indvars.iv2229.i
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %indvars.iv2229.i
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %indvars.iv2229.i
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %indvars.iv2229.i
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %indvars.iv2229.i
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %indvars.iv2229.i
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %indvars.iv2229.i
  %i.adh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acz, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ada, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adb, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adc, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.add, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ade, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adf, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ado = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adg, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adp = shufflevector <16 x float> %i.adh, <16 x float> %i.adi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adq = shufflevector <16 x float> %i.adh, <16 x float> %i.adi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adr = shufflevector <16 x float> %i.adj, <16 x float> %i.adk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ads = shufflevector <16 x float> %i.adj, <16 x float> %i.adk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adt = shufflevector <16 x float> %i.adl, <16 x float> %i.adm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adu = shufflevector <16 x float> %i.adl, <16 x float> %i.adm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adv = shufflevector <16 x float> %i.adn, <16 x float> %i.ado, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adw = shufflevector <16 x float> %i.adn, <16 x float> %i.ado, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adx = shufflevector <16 x float> %i.adp, <16 x float> %i.adr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ady = shufflevector <16 x float> %i.adp, <16 x float> %i.adr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adq, <16 x float> %i.ads, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.adq, <16 x float> %i.ads, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.adt, <16 x float> %i.adv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adt, <16 x float> %i.adv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adu, <16 x float> %i.adw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adu, <16 x float> %i.adw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adx, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.ady, <16 x float> %i.aec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.adz, <16 x float> %i.aed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.aea, <16 x float> %i.aee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.adx, <16 x float> %i.aeb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.ady, <16 x float> %i.aec, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.adz, <16 x float> %i.aed, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aea, <16 x float> %i.aee, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aef, <16 x float> %i.aeg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aeo = shufflevector <16 x float> %i.aeh, <16 x float> %i.aei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aep = shufflevector <16 x float> %i.aej, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aeq = shufflevector <16 x float> %i.ael, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aer = shufflevector <16 x float> %i.aef, <16 x float> %i.aeg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aes = shufflevector <16 x float> %i.aeh, <16 x float> %i.aei, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aet = shufflevector <16 x float> %i.aej, <16 x float> %i.aek, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aeu = shufflevector <16 x float> %i.ael, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.aen, ptr %.112411673.us.i, align 1, !tbaa !45
  %i.aev = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 64
  store <16 x float> %i.aeo, ptr %i.aev, align 1, !tbaa !45
  %i.aew = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 128
  store <16 x float> %i.aep, ptr %i.aew, align 1, !tbaa !45
  %i.aex = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 192
  store <16 x float> %i.aeq, ptr %i.aex, align 1, !tbaa !45
  %i.aey = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 256
  store <16 x float> %i.aer, ptr %i.aey, align 1, !tbaa !45
  %i.aez = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 320
  store <16 x float> %i.aes, ptr %i.aez, align 1, !tbaa !45
  %i.afa = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 384
  store <16 x float> %i.aet, ptr %i.afa, align 1, !tbaa !45
  %i.afb = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 448
  store <16 x float> %i.aeu, ptr %i.afb, align 1, !tbaa !45
  %i.afc = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 512 ; 3 uses
  %indvars.iv.next2230.i = add nuw nsw i64 %indvars.iv2229.i, 1 ; 2 uses
  %exitcond2233.not.i = icmp eq i64 %indvars.iv.next2230.i, %wide.trip.count2232.i
  br i1 %exitcond2233.not.i, label %._crit_edge1674.us.i, label %bb.be, !llvm.loop !91

._crit_edge1674.us.i:                             ; preds = %bb.be
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %i.kc ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %i.kc ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %i.kc ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %i.kc ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %i.kc ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %i.kc ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %i.kc ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %i.kc ; 2 uses
  %i.afl = add nuw nsw i32 %.012521676.us.i, 16   ; 2 uses
  %i.afm = or disjoint i32 %i.afl, 15
  %i.afn = icmp slt i32 %i.afm, %i.r
  br i1 %i.afn, label %.preheader1578.us.i, label %.preheader1581.i, !llvm.loop !92

.preheader1581.i:                                 ; preds = %._crit_edge1674.us.i, %_ZN4ncnn3MatD2Ev.exit1327.i
  %.01252.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.kv, %._crit_edge1674.us.i ] ; 4 uses
  %.01240.lcssa.i = phi ptr [ %i.acy, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afc, %._crit_edge1674.us.i ] ; 3 uses
  %.01237.lcssa.i = phi ptr [ %i.acn, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afk, %._crit_edge1674.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.ack, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afj, %._crit_edge1674.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.acg, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afi, %._crit_edge1674.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.acc, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afh, %._crit_edge1674.us.i ]
  %.01228.lcssa.i = phi ptr [ %i.aby, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afg, %._crit_edge1674.us.i ]
  %.01226.lcssa.i = phi ptr [ %i.abu, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.aff, %._crit_edge1674.us.i ]
  %.01224.lcssa.i = phi ptr [ %i.abq, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afe, %._crit_edge1674.us.i ]
  %.01220.lcssa.i = phi ptr [ %i.abm, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afd, %._crit_edge1674.us.i ] ; 3 uses
  %i.afo = or disjoint i32 %.01252.lcssa.i, 7
  %i.afp = icmp slt i32 %i.afo, %i.r
  br i1 %i.afp, label %.preheader1577.lr.ph.i, label %._crit_edge1720.i

.preheader1581.thread.i:                          ; preds = %.preheader1578.lr.ph.i
  %scevgep2203.i = getelementptr i8, ptr %i.abi, i64 %i.kr
  %scevgep2206.i = getelementptr i8, ptr %scevgep2203.i, i64 %i.abh ; 2 uses
  br i1 %i.lb, label %.preheader1577.preheader.i, label %._crit_edge1720.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1581.i
  br i1 %i.ka, label %.preheader1577.us.i, label %.preheader1577.preheader.i

.preheader1577.preheader.i:                       ; preds = %.preheader1577.lr.ph.i, %.preheader1581.thread.i
  %.01252.lcssa24752497.i = phi i32 [ %.01252.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.kv, %.preheader1581.thread.i ] ; 2 uses
  %.01240.lcssa24762496.i = phi ptr [ %.01240.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.acy, %.preheader1581.thread.i ]
  %.01220.lcssa24842495.i = phi ptr [ %.01220.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2206.i, %.preheader1581.thread.i ]
  %i.afq = sub i32 %i.kw, %.01252.lcssa24752497.i ; 2 uses
  %i.afr = lshr i32 %i.afq, 1
  %i.afs = and i32 %i.afr, 2147483644
  %narrow2430.i = add nuw i32 %i.afs, 4
  %i.aft = zext i32 %narrow2430.i to i64
  %i.afu = mul nsw i64 %i.aft, %i.ke
  %scevgep2234.i = getelementptr i8, ptr %.01220.lcssa24842495.i, i64 %i.afu
  %i.afv = add nsw i32 %.01252.lcssa24752497.i, 8
  %i.afw = and i32 %i.afq, -8
  %i.afx = add i32 %i.afv, %i.afw
  br label %._crit_edge1720.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1708.us.i
  %.112211719.us.i = phi ptr [ %i.ahu, %._crit_edge1708.us.i ], [ %.01220.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112251718.us.i = phi ptr [ %i.ahv, %._crit_edge1708.us.i ], [ %.01224.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112271717.us.i = phi ptr [ %i.ahw, %._crit_edge1708.us.i ], [ %.01226.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112291716.us.i = phi ptr [ %i.ahx, %._crit_edge1708.us.i ], [ %.01228.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112321715.us.i = phi ptr [ %i.ahy, %._crit_edge1708.us.i ], [ %.01231.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112341714.us.i = phi ptr [ %i.ahz, %._crit_edge1708.us.i ], [ %.01233.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112361713.us.i = phi ptr [ %i.aia, %._crit_edge1708.us.i ], [ %.01235.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112381712.us.i = phi ptr [ %i.aib, %._crit_edge1708.us.i ], [ %.01237.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.212421711.us.i = phi ptr [ %i.aht, %._crit_edge1708.us.i ], [ %.01240.lcssa.i, %.preheader1577.lr.ph.i ]
  %.112531710.us.i = phi i32 [ %i.aic, %._crit_edge1708.us.i ], [ %.01252.lcssa.i, %.preheader1577.lr.ph.i ]
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1577.us.i
  %indvars.iv2235.i = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2236.i, %bb.bf ] ; 9 uses
  %.312431707.us.i = phi ptr [ %.212421711.us.i, %.preheader1577.us.i ], [ %i.aht, %bb.bf ] ; 9 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.112211719.us.i, i64 %indvars.iv2235.i
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.112251718.us.i, i64 %indvars.iv2235.i
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.112271717.us.i, i64 %indvars.iv2235.i
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.112291716.us.i, i64 %indvars.iv2235.i
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.112321715.us.i, i64 %indvars.iv2235.i
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.112341714.us.i, i64 %indvars.iv2235.i
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.112361713.us.i, i64 %indvars.iv2235.i
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.112381712.us.i, i64 %indvars.iv2235.i
  %i.agg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.afy, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.afz, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agi = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aga, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agb, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agc, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agd, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.age, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agf, <8 x i32> %i.jv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ago = shufflevector <8 x float> %i.agg, <8 x float> %i.agh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.agp = shufflevector <8 x float> %i.agg, <8 x float> %i.agh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.agq = shufflevector <8 x float> %i.agi, <8 x float> %i.agj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.agr = shufflevector <8 x float> %i.agi, <8 x float> %i.agj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ags = shufflevector <8 x float> %i.agk, <8 x float> %i.agl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.agt = shufflevector <8 x float> %i.agk, <8 x float> %i.agl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.agu = shufflevector <8 x float> %i.agm, <8 x float> %i.agn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.agv = shufflevector <8 x float> %i.agm, <8 x float> %i.agn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.agw = shufflevector <8 x float> %i.ago, <8 x float> %i.agq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.agx = shufflevector <8 x float> %i.ago, <8 x float> %i.agq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.agy = shufflevector <8 x float> %i.agp, <8 x float> %i.agr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.agz = shufflevector <8 x float> %i.agp, <8 x float> %i.agr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aha = shufflevector <8 x float> %i.ags, <8 x float> %i.agu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahb = shufflevector <8 x float> %i.ags, <8 x float> %i.agu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahc = shufflevector <8 x float> %i.agt, <8 x float> %i.agv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahd = shufflevector <8 x float> %i.agt, <8 x float> %i.agv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahe = shufflevector <8 x float> %i.agw, <8 x float> %i.aha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahf = shufflevector <8 x float> %i.agx, <8 x float> %i.ahb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahg = shufflevector <8 x float> %i.agy, <8 x float> %i.ahc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahh = shufflevector <8 x float> %i.agz, <8 x float> %i.ahd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahi = shufflevector <8 x float> %i.agw, <8 x float> %i.aha, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ahj = shufflevector <8 x float> %i.agx, <8 x float> %i.ahb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ahk = shufflevector <8 x float> %i.agy, <8 x float> %i.ahc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ahl = shufflevector <8 x float> %i.agz, <8 x float> %i.ahd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ahe, ptr %.312431707.us.i, align 32, !tbaa !45
  %i.ahm = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 32
  store <8 x float> %i.ahf, ptr %i.ahm, align 32, !tbaa !45
  %i.ahn = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 64
  store <8 x float> %i.ahg, ptr %i.ahn, align 32, !tbaa !45
  %i.aho = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 96
  store <8 x float> %i.ahh, ptr %i.aho, align 32, !tbaa !45
  %i.ahp = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 128
  store <8 x float> %i.ahi, ptr %i.ahp, align 32, !tbaa !45
  %i.ahq = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 160
  store <8 x float> %i.ahj, ptr %i.ahq, align 32, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 192
  store <8 x float> %i.ahk, ptr %i.ahr, align 32, !tbaa !45
  %i.ahs = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 224
  store <8 x float> %i.ahl, ptr %i.ahs, align 32, !tbaa !45
  %i.aht = getelementptr inbounds nuw i8, ptr %.312431707.us.i, i64 256 ; 3 uses
  %indvars.iv.next2236.i = add nuw nsw i64 %indvars.iv2235.i, 1 ; 2 uses
  %exitcond2239.not.i = icmp eq i64 %indvars.iv.next2236.i, %wide.trip.count2232.i
  br i1 %exitcond2239.not.i, label %._crit_edge1708.us.i, label %bb.bf, !llvm.loop !93

._crit_edge1708.us.i:                             ; preds = %bb.bf
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.112211719.us.i, i64 %i.ke ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %.112251718.us.i, i64 %i.ke
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %.112271717.us.i, i64 %i.ke
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %.112291716.us.i, i64 %i.ke
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %.112321715.us.i, i64 %i.ke
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %.112341714.us.i, i64 %i.ke
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %.112361713.us.i, i64 %i.ke
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %.112381712.us.i, i64 %i.ke
  %i.aic = add nuw nsw i32 %.112531710.us.i, 8    ; 3 uses
  %i.aid = or disjoint i32 %i.aic, 7
  %i.aie = icmp slt i32 %i.aid, %i.r
  br i1 %i.aie, label %.preheader1577.us.i, label %._crit_edge1720.i, !llvm.loop !94

._crit_edge1720.i:                                ; preds = %._crit_edge1708.us.i, %.preheader1577.preheader.i, %.preheader1581.thread.i, %.preheader1581.i
  %.11253.lcssa.i = phi i32 [ %.01252.lcssa.i, %.preheader1581.i ], [ %i.kv, %.preheader1581.thread.i ], [ %i.afx, %.preheader1577.preheader.i ], [ %i.aic, %._crit_edge1708.us.i ] ; 3 uses
  %.21242.lcssa.i = phi ptr [ %.01240.lcssa.i, %.preheader1581.i ], [ %i.acy, %.preheader1581.thread.i ], [ %.01240.lcssa24762496.i, %.preheader1577.preheader.i ], [ %i.aht, %._crit_edge1708.us.i ] ; 2 uses
  %.11221.lcssa.i = phi ptr [ %.01220.lcssa.i, %.preheader1581.i ], [ %scevgep2206.i, %.preheader1581.thread.i ], [ %scevgep2234.i, %.preheader1577.preheader.i ], [ %i.ahu, %._crit_edge1708.us.i ] ; 2 uses
  %i.aif = or disjoint i32 %.11253.lcssa.i, 3
  %i.aig = icmp slt i32 %i.aif, %i.r
  br i1 %i.aig, label %.preheader1576.lr.ph.i, label %.preheader1580.i

.preheader1576.lr.ph.i:                           ; preds = %._crit_edge1720.i
  br i1 %i.ka, label %.preheader1576.us.i, label %._crit_edge1765.split.i

.preheader1576.us.i:                              ; preds = %.preheader1576.lr.ph.i, %._crit_edge1732.us.i
  %.212221736.us.i = phi ptr [ %i.ajs, %._crit_edge1732.us.i ], [ %.11221.lcssa.i, %.preheader1576.lr.ph.i ] ; 4 uses
  %.412441735.us.i = phi ptr [ %.lcssa562, %._crit_edge1732.us.i ], [ %.21242.lcssa.i, %.preheader1576.lr.ph.i ] ; 2 uses
  %.212541734.us.i = phi i32 [ %i.ajt, %._crit_edge1732.us.i ], [ %.11253.lcssa.i, %.preheader1576.lr.ph.i ]
  br i1 %i.ld, label %.epil.preheader598, label %.preheader1576.us.i.new

.preheader1576.us.i.new:                          ; preds = %.preheader1576.us.i, %.preheader1576.us.i.new
  %indvars.iv2242.i = phi i64 [ %indvars.iv.next2243.i.1, %.preheader1576.us.i.new ], [ 0, %.preheader1576.us.i ] ; 3 uses
  %.512451731.us.i = phi ptr [ %i.ajf, %.preheader1576.us.i.new ], [ %.412441735.us.i, %.preheader1576.us.i ] ; 9 uses
  %niter605 = phi i64 [ %niter605.next.1, %.preheader1576.us.i.new ], [ 0, %.preheader1576.us.i ]
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %.212221736.us.i, i64 %indvars.iv2242.i ; 2 uses
  %i.aii = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aih, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aii, ptr %.512451731.us.i, align 32, !tbaa !45
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.kh ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 32
  %i.ail = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aij, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ail, ptr %i.aik, align 32, !tbaa !45
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.kh ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 64
  %i.aio = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aim, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aio, ptr %i.ain, align 32, !tbaa !45
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.kh
  %i.aiq = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 96
  %i.air = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aip, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.air, ptr %i.aiq, align 32, !tbaa !45
  %i.ais = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 128
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.212221736.us.i, i64 %indvars.iv2242.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 4 ; 2 uses
  %i.aiv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aiu, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aiv, ptr %i.ais, align 32, !tbaa !45
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aiu, i64 %i.kh ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 160
  %i.aiy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aiw, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aiy, ptr %i.aix, align 32, !tbaa !45
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.kh ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 192
  %i.ajb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aiz, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ajb, ptr %i.aja, align 32, !tbaa !45
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.kh
  %i.ajd = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 224
  %i.aje = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ajc, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aje, ptr %i.ajd, align 32, !tbaa !45
  %i.ajf = getelementptr inbounds nuw i8, ptr %.512451731.us.i, i64 256 ; 3 uses
  %indvars.iv.next2243.i.1 = add nuw nsw i64 %indvars.iv2242.i, 2 ; 2 uses
  %niter605.next.1 = add i64 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i64 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %._crit_edge1732.us.i.unr-lcssa, label %.preheader1576.us.i.new, !llvm.loop !95

._crit_edge1732.us.i.unr-lcssa:                   ; preds = %.preheader1576.us.i.new
  br i1 %lcmp.mod601.not, label %._crit_edge1732.us.i, label %.epil.preheader598

.epil.preheader598:                               ; preds = %._crit_edge1732.us.i.unr-lcssa, %.preheader1576.us.i
  %indvars.iv2242.i.epil.init = phi i64 [ 0, %.preheader1576.us.i ], [ %indvars.iv.next2243.i.1, %._crit_edge1732.us.i.unr-lcssa ]
  %.512451731.us.i.epil.init = phi ptr [ %.412441735.us.i, %.preheader1576.us.i ], [ %i.ajf, %._crit_edge1732.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %.212221736.us.i, i64 %indvars.iv2242.i.epil.init ; 2 uses
  %i.ajh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajg, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ajh, ptr %.512451731.us.i.epil.init, align 32, !tbaa !45
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.kh ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.512451731.us.i.epil.init, i64 32
  %i.ajk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aji, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ajk, ptr %i.ajj, align 32, !tbaa !45
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.kh ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.512451731.us.i.epil.init, i64 64
  %i.ajn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajl, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ajn, ptr %i.ajm, align 32, !tbaa !45
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.kh
  %i.ajp = getelementptr inbounds nuw i8, ptr %.512451731.us.i.epil.init, i64 96
  %i.ajq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajo, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ajq, ptr %i.ajp, align 32, !tbaa !45
  %i.ajr = getelementptr inbounds nuw i8, ptr %.512451731.us.i.epil.init, i64 128
  br label %._crit_edge1732.us.i

._crit_edge1732.us.i:                             ; preds = %._crit_edge1732.us.i.unr-lcssa, %.epil.preheader598
  %.lcssa562 = phi ptr [ %i.ajf, %._crit_edge1732.us.i.unr-lcssa ], [ %i.ajr, %.epil.preheader598 ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %.212221736.us.i, i64 %i.kj ; 2 uses
  %i.ajt = add nuw nsw i32 %.212541734.us.i, 4    ; 3 uses
  %i.aju = or disjoint i32 %i.ajt, 3
  %i.ajv = icmp slt i32 %i.aju, %i.r
  br i1 %i.ajv, label %.preheader1576.us.i, label %.preheader1580.i, !llvm.loop !96

.preheader1580.i:                                 ; preds = %._crit_edge1732.us.i, %._crit_edge1720.i
  %.21254.lcssa.i = phi i32 [ %.11253.lcssa.i, %._crit_edge1720.i ], [ %i.ajt, %._crit_edge1732.us.i ] ; 3 uses
  %.41244.lcssa.i = phi ptr [ %.21242.lcssa.i, %._crit_edge1720.i ], [ %.lcssa562, %._crit_edge1732.us.i ] ; 2 uses
  %.21222.lcssa.i = phi ptr [ %.11221.lcssa.i, %._crit_edge1720.i ], [ %i.ajs, %._crit_edge1732.us.i ] ; 2 uses
  %i.ajw = or disjoint i32 %.21254.lcssa.i, 1
  %i.ajx = icmp slt i32 %i.ajw, %i.r
  br i1 %i.ajx, label %.preheader1575.lr.ph.i, label %.preheader1579.i

.preheader1575.lr.ph.i:                           ; preds = %.preheader1580.i
  br i1 %i.ka, label %.preheader1575.us.i, label %._crit_edge1765.split.i

.preheader1575.us.i:                              ; preds = %.preheader1575.lr.ph.i, %._crit_edge1748.us.i
  %.312231752.us.i = phi ptr [ %i.alf, %._crit_edge1748.us.i ], [ %.21222.lcssa.i, %.preheader1575.lr.ph.i ] ; 6 uses
  %.712471751.us.i = phi ptr [ %.lcssa565, %._crit_edge1748.us.i ], [ %.41244.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.aoa = mul i32 %i.amx, %.2.lcssa.i
  %i.aob = shl i32 %i.amx, 1                      ; 2 uses
  %i.aoc = mul i32 %i.amv, %i.amx
  %i.aod = and i32 %i.anv, -16
  %i.aoe = add nuw i32 %i.aod, 16                 ; 4 uses
  %i.aof = add i32 %i.r, -8
  %i.aog = sext i32 %.2.lcssa.i to i64
  %i.aoh = sext i32 %i.m to i64
  %i.aoi = or disjoint i32 %i.aoe, 7
  %i.aoj = icmp slt i32 %i.aoi, %i.r
  %wide.trip.count2324.i = zext i32 %i.j to i64   ; 26 uses
  %i.aok = shl nuw nsw i64 %wide.trip.count2324.i, 3
  %i.aol = shl nuw nsw i64 %wide.trip.count2324.i, 2 ; 5 uses
  %i.aom = shl nuw nsw i64 %wide.trip.count2324.i, 4
  %i.aon = shl nuw nsw i64 %i.anr, 2              ; 3 uses
  %i.aoo = add nuw nsw i64 %i.aon, %i.aol         ; 2 uses
  %i.aop = shl nsw i64 %i.ant, 2
  %i.aoq = add i32 %i.r, -2
  %i.aor = add nsw i64 %wide.trip.count2324.i, -1 ; 3 uses
  %xtraiter639 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aos = icmp ult i64 %i.aor, 3
  %unroll_iter644 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod641.not = icmp eq i64 %xtraiter639, 0
  %lcmp.mod643 = icmp ne i64 %xtraiter639, 0
  %xtraiter647 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aot = icmp ult i64 %i.aor, 3
  %unroll_iter652 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod649.not = icmp eq i64 %xtraiter647, 0
  %lcmp.mod651 = icmp ne i64 %xtraiter647, 0
  %xtraiter655 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aou = icmp ult i64 %i.aor, 3
  %unroll_iter660 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod657.not = icmp eq i64 %xtraiter655, 0
  %lcmp.mod659 = icmp ne i64 %xtraiter655, 0
  %min.iters.check373 = icmp ult i32 %i.j, 4
  %stride.check361 = icmp slt i32 %i.ans, 0
  %min.iters.check375 = icmp ult i32 %i.j, 16
  %i.aov = and i64 %wide.trip.count2324.i, 12
  %n.vec377 = and i64 %wide.trip.count2324.i, 2147483632 ; 5 uses
  %i.aow = shl nuw nsw i64 %n.vec377, 4
  %cmp.n388 = icmp eq i64 %n.vec377, %wide.trip.count2324.i
  %min.epilog.iters.check393 = icmp eq i64 %i.aov, 0
  %n.vec395 = and i64 %wide.trip.count2324.i, 2147483644 ; 4 uses
  %i.aox = shl nuw nsw i64 %n.vec395, 4
  %cmp.n406 = icmp eq i64 %n.vec395, %wide.trip.count2324.i
  %xtraiter662 = and i64 %wide.trip.count2324.i, 1
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  %i.aoy = add nsw i64 %wide.trip.count2324.i, -1
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check331 = icmp ult i32 %i.j, 16
  %i.aoz = and i64 %wide.trip.count2324.i, 12
  %n.vec = and i64 %wide.trip.count2324.i, 2147483632 ; 5 uses
  %i.apa = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2324.i
  %min.epilog.iters.check = icmp eq i64 %i.aoz, 0
  %n.vec333 = and i64 %wide.trip.count2324.i, 2147483644 ; 4 uses
  %i.apb = shl nuw nsw i64 %n.vec333, 3
  %cmp.n340 = icmp eq i64 %n.vec333, %wide.trip.count2324.i
  %xtraiter664 = and i64 %wide.trip.count2324.i, 3 ; 2 uses
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  br label %_ZN4ncnn3MatD2Ev.exit1325.i

_ZN4ncnn3MatD2Ev.exit1326.i:                      ; preds = %._crit_edge1851.split.i, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i
  %indvars.iv2311.i = phi i64 [ %i.aax, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %indvars.iv.next2312.i, %._crit_edge1851.split.i ] ; 2 uses
  %i.apc = phi i32 [ %i.zg, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axh, %._crit_edge1851.split.i ]
  %i.apd = phi <4 x i32> [ %i.aat, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axg, %._crit_edge1851.split.i ] ; 2 uses
  %i.ape = sext <4 x i32> %i.apd to <4 x i64>
  %i.apf = shl nsw <4 x i64> %i.ape, splat (i64 2) ; 4 uses
  %i.apg = load ptr, ptr %i.s, align 8, !tbaa !19 ; 5 uses
  %i.aph = trunc i64 %indvars.iv2311.i to i32     ; 6 uses
  %i.api = mul i32 %i.aap, %i.aph
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.apg, i64 %i.apj ; 2 uses
  %i.apl = add i32 %i.aph, 1
  %i.apm = mul i32 %i.apl, %i.aap
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [4 x i8], ptr %i.apg, i64 %i.apn ; 2 uses
  %i.app = add i32 %i.aph, 2
  %i.apq = mul i32 %i.app, %i.aap
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.apg, i64 %i.apr ; 2 uses
  %i.apt = mul i32 %i.apc, %i.aap
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.apg, i64 %i.apu ; 2 uses
  %i.apw = lshr i32 %i.aph, 4
  %i.apx = lshr i32 %i.aph, 3
  %i.apy = and i32 %i.apx, 1
  %i.apz = add nuw nsw i32 %i.apy, %i.apw
  %i.aqa = lshr i32 %i.aph, 2
  %i.aqb = and i32 %i.aqa, 1
  %i.aqc = add nuw nsw i32 %i.apz, %i.aqb
  %i.aqd = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !179
  %i.aqe = load i64, ptr %i.zl, align 8, !tbaa !20, !noalias !179
  %i.aqf = zext nneg i32 %i.aqc to i64
  %i.aqg = mul i64 %i.aqe, %i.aqf
  %i.aqh = load i64, ptr %i.zm, align 8, !tbaa !44, !noalias !179
  %i.aqi = mul i64 %i.aqg, %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqd, i64 %i.aqi ; 4 uses
  br i1 %i.zw, label %.preheader1569.lr.ph.i, label %.preheader1572.i

.preheader1569.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1326.i
  br i1 %i.zx, label %.preheader1569.us.i, label %.preheader1572.thread.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1770.us.i
  %.012581777.us.i = phi i32 [ %i.arm, %._crit_edge1770.us.i ], [ 0, %.preheader1569.lr.ph.i ]
  %.012631776.us.i = phi ptr [ %i.arh, %._crit_edge1770.us.i ], [ %i.aqj, %.preheader1569.lr.ph.i ]
  %.012741775.us.i = phi ptr [ %i.arl, %._crit_edge1770.us.i ], [ %i.apv, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012771774.us.i = phi ptr [ %i.ark, %._crit_edge1770.us.i ], [ %i.aps, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012801773.us.i = phi ptr [ %i.arj, %._crit_edge1770.us.i ], [ %i.apo, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012831772.us.i = phi ptr [ %i.ari, %._crit_edge1770.us.i ], [ %i.apk, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader1569.us.i
  %indvars.iv2279.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2280.i, %bb.bi ] ; 5 uses
  %.112641768.us.i = phi ptr [ %.012631776.us.i, %.preheader1569.us.i ], [ %i.arh, %bb.bi ] ; 5 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %indvars.iv2279.i
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %indvars.iv2279.i
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %indvars.iv2279.i
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %indvars.iv2279.i
  %i.aqo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqk, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aql, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqm, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqn, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqs = shufflevector <16 x float> %i.aqo, <16 x float> %i.aqp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aqt = shufflevector <16 x float> %i.aqo, <16 x float> %i.aqp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aqu = shufflevector <16 x float> %i.aqq, <16 x float> %i.aqr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aqv = shufflevector <16 x float> %i.aqq, <16 x float> %i.aqr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aqw = shufflevector <16 x float> %i.aqs, <16 x float> %i.aqu, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.aqx = shufflevector <16 x float> %i.aqt, <16 x float> %i.aqv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.aqy = shufflevector <16 x float> %i.aqs, <16 x float> %i.aqu, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aqz = shufflevector <16 x float> %i.aqt, <16 x float> %i.aqv, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ara = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arb = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arc = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ard = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.ara, ptr %.112641768.us.i, align 1, !tbaa !45
  %i.are = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 64
  store <16 x float> %i.arb, ptr %i.are, align 1, !tbaa !45
  %i.arf = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 128
  store <16 x float> %i.arc, ptr %i.arf, align 1, !tbaa !45
  %i.arg = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 192
  store <16 x float> %i.ard, ptr %i.arg, align 1, !tbaa !45
  %i.arh = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 256 ; 3 uses
  %indvars.iv.next2280.i = add nuw nsw i64 %indvars.iv2279.i, 1 ; 2 uses
  %exitcond2283.not.i = icmp eq i64 %indvars.iv.next2280.i, %wide.trip.count2282.i
  br i1 %exitcond2283.not.i, label %._crit_edge1770.us.i, label %bb.bi, !llvm.loop !106

._crit_edge1770.us.i:                             ; preds = %bb.bi
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %i.zz ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %i.zz ; 2 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %i.zz ; 2 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %i.zz ; 2 uses
  %i.arm = add nuw nsw i32 %.012581777.us.i, 16   ; 2 uses
  %i.arn = or disjoint i32 %i.arm, 15
  %i.aro = icmp slt i32 %i.arn, %i.r
  br i1 %i.aro, label %.preheader1569.us.i, label %.preheader1572.i, !llvm.loop !107

.preheader1572.i:                                 ; preds = %._crit_edge1770.us.i, %_ZN4ncnn3MatD2Ev.exit1326.i
  %.01283.lcssa.i = phi ptr [ %i.apk, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ari, %._crit_edge1770.us.i ] ; 3 uses
  %.01280.lcssa.i = phi ptr [ %i.apo, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arj, %._crit_edge1770.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.aps, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ark, %._crit_edge1770.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.apv, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arl, %._crit_edge1770.us.i ] ; 3 uses
  %.01263.lcssa.i = phi ptr [ %i.aqj, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arh, %._crit_edge1770.us.i ] ; 3 uses
  %.01258.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.aav, %._crit_edge1770.us.i ] ; 4 uses
  %i.arp = or disjoint i32 %.01258.lcssa.i, 7
  %i.arq = icmp slt i32 %i.arp, %i.r
  br i1 %i.arq, label %.preheader1568.lr.ph.i, label %.preheader1571.i

.preheader1572.thread.i:                          ; preds = %.preheader1569.lr.ph.i
  %scevgep2266.i = getelementptr i8, ptr %i.apg, i64 %i.aao ; 4 uses
  %i.arr = extractelement <4 x i64> %i.apf, i64 0
  %scevgep2269.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.arr ; 2 uses
  %i.ars = extractelement <4 x i64> %i.apf, i64 1
  %scevgep2272.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.ars ; 2 uses
  %i.art = extractelement <4 x i64> %i.apf, i64 2
  %scevgep2275.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.art ; 2 uses
  %i.aru = extractelement <4 x i64> %i.apf, i64 3
  %scevgep2278.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.aru ; 2 uses
  br i1 %i.aba, label %.preheader1568.preheader.i, label %.preheader1571.i

.preheader1568.lr.ph.i:                           ; preds = %.preheader1572.i
  br i1 %i.zx, label %.preheader1568.us.i, label %.preheader1568.preheader.i

.preheader1568.preheader.i:                       ; preds = %.preheader1568.lr.ph.i, %.preheader1572.thread.i
  %.01283.lcssa25202537.i = phi ptr [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2269.i, %.preheader1572.thread.i ]
  %.01280.lcssa25212536.i = phi ptr [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2272.i, %.preheader1572.thread.i ]
  %.01277.lcssa25222535.i = phi ptr [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2275.i, %.preheader1572.thread.i ]
  %.01274.lcssa25232534.i = phi ptr [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2278.i, %.preheader1572.thread.i ]
  %.01263.lcssa25242533.i = phi ptr [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aqj, %.preheader1572.thread.i ]
  %.01258.lcssa25252532.i = phi i32 [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aav, %.preheader1572.thread.i ] ; 2 uses
  %i.arv = sub i32 %i.aaw, %.01258.lcssa25252532.i ; 2 uses
  %i.arw = lshr i32 %i.arv, 1
  %i.arx = and i32 %i.arw, 2147483644
  %narrow2432.i = add nuw i32 %i.arx, 4
  %i.ary = zext i32 %narrow2432.i to i64
  %i.arz = mul nsw i64 %i.ary, %i.aab             ; 4 uses
  %scevgep2284.i = getelementptr i8, ptr %.01283.lcssa25202537.i, i64 %i.arz
  %scevgep2285.i = getelementptr i8, ptr %.01280.lcssa25212536.i, i64 %i.arz
  %scevgep2286.i = getelementptr i8, ptr %.01277.lcssa25222535.i, i64 %i.arz
  %scevgep2287.i = getelementptr i8, ptr %.01274.lcssa25232534.i, i64 %i.arz
  %i.asa = add nsw i32 %.01258.lcssa25252532.i, 8
  %i.asb = and i32 %i.arv, -8
  %i.asc = add i32 %i.asa, %i.asb
  br label %.preheader1571.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1792.us.i
  %.112591799.us.i = phi i32 [ %i.atb, %._crit_edge1792.us.i ], [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ]
  %.212651798.us.i = phi ptr [ %i.asw, %._crit_edge1792.us.i ], [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ]
  %.112751797.us.i = phi ptr [ %i.ata, %._crit_edge1792.us.i ], [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112781796.us.i = phi ptr [ %i.asz, %._crit_edge1792.us.i ], [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112811795.us.i = phi ptr [ %i.asy, %._crit_edge1792.us.i ], [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112841794.us.i = phi ptr [ %i.asx, %._crit_edge1792.us.i ], [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader1568.us.i
  %indvars.iv2288.i = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2289.i, %bb.bj ] ; 5 uses
  %.312661790.us.i = phi ptr [ %.212651798.us.i, %.preheader1568.us.i ], [ %i.asw, %bb.bj ] ; 5 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.112841794.us.i, i64 %indvars.iv2288.i
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %.112811795.us.i, i64 %indvars.iv2288.i
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %.112781796.us.i, i64 %indvars.iv2288.i
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.112751797.us.i, i64 %indvars.iv2288.i
  %i.ash = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asd, <8 x i32> %i.zs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asi = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ase, <8 x i32> %i.zs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asf, <8 x i32> %i.zs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ask = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asg, <8 x i32> %i.zs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asl = shufflevector <8 x float> %i.ash, <8 x float> %i.asi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.asm = shufflevector <8 x float> %i.ash, <8 x float> %i.asi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.asn = shufflevector <8 x float> %i.asj, <8 x float> %i.ask, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aso = shufflevector <8 x float> %i.asj, <8 x float> %i.ask, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.asp = shufflevector <8 x float> %i.asl, <8 x float> %i.asn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.asq = shufflevector <8 x float> %i.asm, <8 x float> %i.aso, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.asr = shufflevector <8 x float> %i.asl, <8 x float> %i.asn, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ass = shufflevector <8 x float> %i.asm, <8 x float> %i.aso, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.asp, ptr %.312661790.us.i, align 1, !tbaa !45
  %i.ast = getelementptr inbounds nuw i8, ptr %.312661790.us.i, i64 32
  store <8 x float> %i.asq, ptr %i.ast, align 1, !tbaa !45
  %i.asu = getelementptr inbounds nuw i8, ptr %.312661790.us.i, i64 64
  store <8 x float> %i.asr, ptr %i.asu, align 1, !tbaa !45
  %i.asv = getelementptr inbounds nuw i8, ptr %.312661790.us.i, i64 96
  store <8 x float> %i.ass, ptr %i.asv, align 1, !tbaa !45
  %i.asw = getelementptr inbounds nuw i8, ptr %.312661790.us.i, i64 128 ; 3 uses
  %indvars.iv.next2289.i = add nuw nsw i64 %indvars.iv2288.i, 1 ; 2 uses
  %exitcond2292.not.i = icmp eq i64 %indvars.iv.next2289.i, %wide.trip.count2282.i
  br i1 %exitcond2292.not.i, label %._crit_edge1792.us.i, label %bb.bj, !llvm.loop !108

._crit_edge1792.us.i:                             ; preds = %bb.bj
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.112841794.us.i, i64 %i.aab ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %.112811795.us.i, i64 %i.aab ; 2 uses
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %.112781796.us.i, i64 %i.aab ; 2 uses
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %.112751797.us.i, i64 %i.aab ; 2 uses
  %i.atb = add nuw nsw i32 %.112591799.us.i, 8    ; 3 uses
  %i.atc = or disjoint i32 %i.atb, 7
  %i.atd = icmp slt i32 %i.atc, %i.r
  br i1 %i.atd, label %.preheader1568.us.i, label %.preheader1571.i, !llvm.loop !109

.preheader1571.i:                                 ; preds = %._crit_edge1792.us.i, %.preheader1568.preheader.i, %.preheader1572.thread.i, %.preheader1572.i
  %.11284.lcssa.i = phi ptr [ %.01283.lcssa.i, %.preheader1572.i ], [ %scevgep2269.i, %.preheader1572.thread.i ], [ %scevgep2284.i, %.preheader1568.preheader.i ], [ %i.asx, %._crit_edge1792.us.i ] ; 2 uses
  %.11281.lcssa.i = phi ptr [ %.01280.lcssa.i, %.preheader1572.i ], [ %scevgep2272.i, %.preheader1572.thread.i ], [ %scevgep2285.i, %.preheader1568.preheader.i ], [ %i.asy, %._crit_edge1792.us.i ]
  %.11278.lcssa.i = phi ptr [ %.01277.lcssa.i, %.preheader1572.i ], [ %scevgep2275.i, %.preheader1572.thread.i ], [ %scevgep2286.i, %.preheader1568.preheader.i ], [ %i.asz, %._crit_edge1792.us.i ]
  %.11275.lcssa.i = phi ptr [ %.01274.lcssa.i, %.preheader1572.i ], [ %scevgep2278.i, %.preheader1572.thread.i ], [ %scevgep2287.i, %.preheader1568.preheader.i ], [ %i.ata, %._crit_edge1792.us.i ]
  %.21265.lcssa.i = phi ptr [ %.01263.lcssa.i, %.preheader1572.i ], [ %i.aqj, %.preheader1572.thread.i ], [ %.01263.lcssa25242533.i, %.preheader1568.preheader.i ], [ %i.asw, %._crit_edge1792.us.i ] ; 2 uses
  %.11259.lcssa.i = phi i32 [ %.01258.lcssa.i, %.preheader1572.i ], [ %i.aav, %.preheader1572.thread.i ], [ %i.asc, %.preheader1568.preheader.i ], [ %i.atb, %._crit_edge1792.us.i ] ; 3 uses
  %i.ate = or disjoint i32 %.11259.lcssa.i, 3
  %i.atf = icmp slt i32 %i.ate, %i.r
  br i1 %i.atf, label %.preheader1567.lr.ph.i, label %._crit_edge1822.i

.preheader1567.lr.ph.i:                           ; preds = %.preheader1571.i
  br i1 %i.zx, label %.preheader1567.us.i, label %._crit_edge1851.split.i

.preheader1567.us.i:                              ; preds = %.preheader1567.lr.ph.i, %._crit_edge1814.us.i
  %.212601821.us.i = phi i32 [ %i.aue, %._crit_edge1814.us.i ], [ %.11259.lcssa.i, %.preheader1567.lr.ph.i ]
  %.412671820.us.i = phi ptr [ %i.atz, %._crit_edge1814.us.i ], [ %.21265.lcssa.i, %.preheader1567.lr.ph.i ]
  %.212761819.us.i = phi ptr [ %i.aud, %._crit_edge1814.us.i ], [ %.11275.lcssa.i, %.preheader1567.lr.ph.i ] ; 2 uses
  %.212791818.us.i = phi ptr [ %i.auc, %._crit_edge1814.us.i ], [ %.11278.lcssa.i, %.preheader1567.lr.ph.i ] ; 2 uses
  %.212821817.us.i = phi ptr [ %i.aub, %._crit_edge1814.us.i ], [ %.11281.lcssa.i, %.preheader1567.lr.ph.i ] ; 2 uses
  %.212851816.us.i = phi ptr [ %i.aua, %._crit_edge1814.us.i ], [ %.11284.lcssa.i, %.preheader1567.lr.ph.i ] ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.preheader1567.us.i
  %indvars.iv2294.i = phi i64 [ 0, %.preheader1567.us.i ], [ %indvars.iv.next2295.i, %bb.bk ] ; 5 uses
  %.512681812.us.i = phi ptr [ %.412671820.us.i, %.preheader1567.us.i ], [ %i.atz, %bb.bk ] ; 5 uses
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %.212851816.us.i, i64 %indvars.iv2294.i
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %.212821817.us.i, i64 %indvars.iv2294.i
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %.212791818.us.i, i64 %indvars.iv2294.i
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.212761819.us.i, i64 %indvars.iv2294.i
  %i.atk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.atg, <4 x i32> %i.zp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.atl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.ath, <4 x i32> %i.zp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.atm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.ati, <4 x i32> %i.zp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.atn = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.atj, <4 x i32> %i.zp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ato = shufflevector <4 x float> %i.atk, <4 x float> %i.atl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.atp = shufflevector <4 x float> %i.atm, <4 x float> %i.atn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.atq = shufflevector <4 x float> %i.atk, <4 x float> %i.atl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.atr = shufflevector <4 x float> %i.atm, <4 x float> %i.atn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ats = shufflevector <4 x float> %i.ato, <4 x float> %i.atp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.att = shufflevector <4 x float> %i.atp, <4 x float> %i.ato, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.atu = shufflevector <4 x float> %i.atq, <4 x float> %i.atr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.atv = shufflevector <4 x float> %i.atr, <4 x float> %i.atq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ats, ptr %.512681812.us.i, align 16, !tbaa !45
  %i.atw = getelementptr inbounds nuw i8, ptr %.512681812.us.i, i64 16
  store <4 x float> %i.att, ptr %i.atw, align 16, !tbaa !45
  %i.atx = getelementptr inbounds nuw i8, ptr %.512681812.us.i, i64 32
  store <4 x float> %i.atu, ptr %i.atx, align 16, !tbaa !45
  %i.aty = getelementptr inbounds nuw i8, ptr %.512681812.us.i, i64 48
  store <4 x float> %i.atv, ptr %i.aty, align 16, !tbaa !45
  %i.atz = getelementptr inbounds nuw i8, ptr %.512681812.us.i, i64 64 ; 3 uses
  %indvars.iv.next2295.i = add nuw nsw i64 %indvars.iv2294.i, 1 ; 2 uses
  %exitcond2298.not.i = icmp eq i64 %indvars.iv.next2295.i, %wide.trip.count2282.i
  br i1 %exitcond2298.not.i, label %._crit_edge1814.us.i, label %bb.bk, !llvm.loop !110

._crit_edge1814.us.i:                             ; preds = %bb.bk
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.212851816.us.i, i64 %i.aad ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.212821817.us.i, i64 %i.aad
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %.212791818.us.i, i64 %i.aad
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %.212761819.us.i, i64 %i.aad
  %i.aue = add nuw nsw i32 %.212601821.us.i, 4    ; 3 uses
  %i.auf = or disjoint i32 %i.aue, 3
  %i.aug = icmp slt i32 %i.auf, %i.r
  br i1 %i.aug, label %.preheader1567.us.i, label %._crit_edge1822.i, !llvm.loop !111

._crit_edge1822.i:                                ; preds = %._crit_edge1814.us.i, %.preheader1571.i
  %.21285.lcssa.i = phi ptr [ %.11284.lcssa.i, %.preheader1571.i ], [ %i.aua, %._crit_edge1814.us.i ] ; 2 uses
  %.41267.lcssa.i = phi ptr [ %.21265.lcssa.i, %.preheader1571.i ], [ %i.atz, %._crit_edge1814.us.i ] ; 2 uses
  %.21260.lcssa.i = phi i32 [ %.11259.lcssa.i, %.preheader1571.i ], [ %i.aue, %._crit_edge1814.us.i ] ; 3 uses
  %i.auh = or disjoint i32 %.21260.lcssa.i, 1
  %i.aui = icmp slt i32 %i.auh, %i.r
  br i1 %i.aui, label %.preheader1566.lr.ph.i, label %.preheader1570.i

.preheader1566.lr.ph.i:                           ; preds = %._crit_edge1822.i
  br i1 %i.zx, label %.preheader1566.us.i, label %._crit_edge1851.split.i

.preheader1566.us.i:                              ; preds = %.preheader1566.lr.ph.i, %._crit_edge1834.us.i
  %.312611838.us.i = phi i32 [ %i.avr, %._crit_edge1834.us.i ], [ %.21260.lcssa.i, %.preheader1566.lr.ph.i ]
  %.612691837.us.i = phi ptr [ %.lcssa546, %._crit_edge1834.us.i ], [ %.41267.lcssa.i, %.preheader1566.lr.ph.i ] ; 2 uses
  %.312861836.us.i = phi ptr [ %i.avq, %._crit_edge1834.us.i ], [ %.21285.lcssa.i, %.preheader1566.lr.ph.i ] ; 6 uses
  br i1 %i.abe, label %.epil.preheader622, label %.preheader1566.us.i.new

.preheader1566.us.i.new:                          ; preds = %.preheader1566.us.i, %.preheader1566.us.i.new
  %indvars.iv2300.i = phi i64 [ %indvars.iv.next2301.i.3, %.preheader1566.us.i.new ], [ 0, %.preheader1566.us.i ] ; 5 uses
  %.712701832.us.i = phi ptr [ %i.avj, %.preheader1566.us.i.new ], [ %.612691837.us.i, %.preheader1566.us.i ] ; 9 uses
  %niter629 = phi i64 [ %niter629.next.3, %.preheader1566.us.i.new ], [ 0, %.preheader1566.us.i ]
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i ; 2 uses
  %i.auk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.auj, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.auk, ptr %.712701832.us.i, align 16, !tbaa !45
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.auj, i64 %i.aag
  %i.aum = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 16
  %i.aun = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aul, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.aun, ptr %i.aum, align 16, !tbaa !45
  %i.auo = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 32
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 4 ; 2 uses
  %i.aur = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.auq, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.aur, ptr %i.auo, align 16, !tbaa !45
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %i.aag
  %i.aut = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 48
  %i.auu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.aus, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.auu, ptr %i.aut, align 16, !tbaa !45
  %i.auv = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 64
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8 ; 2 uses
  %i.auy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.aux, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.auy, ptr %i.auv, align 16, !tbaa !45
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.aag
  %i.ava = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 80
  %i.avb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.auz, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avb, ptr %i.ava, align 16, !tbaa !45
  %i.avc = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 96
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 12 ; 2 uses
  %i.avf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ave, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avf, ptr %i.avc, align 16, !tbaa !45
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.aag
  %i.avh = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 112
  %i.avi = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avg, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avi, ptr %i.avh, align 16, !tbaa !45
  %i.avj = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 128 ; 3 uses
  %indvars.iv.next2301.i.3 = add nuw nsw i64 %indvars.iv2300.i, 4 ; 2 uses
  %niter629.next.3 = add i64 %niter629, 4         ; 2 uses
  %niter629.ncmp.3 = icmp eq i64 %niter629.next.3, %unroll_iter628
  br i1 %niter629.ncmp.3, label %._crit_edge1834.us.i.unr-lcssa, label %.preheader1566.us.i.new, !llvm.loop !112

._crit_edge1834.us.i.unr-lcssa:                   ; preds = %.preheader1566.us.i.new
  br i1 %lcmp.mod625.not, label %._crit_edge1834.us.i, label %.epil.preheader622

.epil.preheader622:                               ; preds = %._crit_edge1834.us.i.unr-lcssa, %.preheader1566.us.i
  %indvars.iv2300.i.epil.init = phi i64 [ 0, %.preheader1566.us.i ], [ %indvars.iv.next2301.i.3, %._crit_edge1834.us.i.unr-lcssa ]
  %.712701832.us.i.epil.init = phi ptr [ %.612691837.us.i, %.preheader1566.us.i ], [ %i.avj, %._crit_edge1834.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod627)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader622
  %indvars.iv2300.i.epil = phi i64 [ %indvars.iv2300.i.epil.init, %.epil.preheader622 ], [ %indvars.iv.next2301.i.epil, %bb.bl ] ; 2 uses
  %.712701832.us.i.epil = phi ptr [ %.712701832.us.i.epil.init, %.epil.preheader622 ], [ %i.avp, %bb.bl ] ; 3 uses
  %epil.iter624 = phi i64 [ 0, %.epil.preheader622 ], [ %epil.iter624.next, %bb.bl ]
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i.epil ; 2 uses
  %i.avl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avk, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avl, ptr %.712701832.us.i.epil, align 16, !tbaa !45
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %i.aag
  %i.avn = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 16
  %i.avo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avm, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avo, ptr %i.avn, align 16, !tbaa !45
  %i.avp = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %wide.trip.count2363.i = zext i32 %i.j to i64   ; 25 uses
  %i.ayu = shl nuw nsw i64 %wide.trip.count2363.i, 3
  %i.ayv = shl nuw nsw i64 %i.aye, 2              ; 2 uses
  %i.ayw = shl nuw nsw i64 %wide.trip.count2363.i, 2 ; 2 uses
  %i.ayx = shl nsw i64 %i.ayg, 2
  %i.ayy = add i32 %i.r, -2
  %i.ayz = add nsw i64 %wide.trip.count2363.i, -1 ; 3 uses
  %xtraiter667 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.aza = icmp ult i64 %i.ayz, 7
  %unroll_iter672 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod669.not = icmp eq i64 %xtraiter667, 0
  %lcmp.mod671 = icmp ne i64 %xtraiter667, 0
  %xtraiter675 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.azb = icmp ult i64 %i.ayz, 7
  %unroll_iter680 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  %xtraiter683 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.azc = icmp ult i64 %i.ayz, 7
  %unroll_iter688 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  %lcmp.mod687 = icmp ne i64 %xtraiter683, 0
  %min.iters.check459 = icmp ult i32 %i.j, 8
  %stride.check457 = icmp slt i32 %i.ayf, 0
  %min.iters.check461 = icmp ult i32 %i.j, 32
  %i.azd = and i64 %wide.trip.count2363.i, 24
  %n.vec463 = and i64 %wide.trip.count2363.i, 2147483616 ; 5 uses
  %i.aze = shl nuw nsw i64 %n.vec463, 3
  %cmp.n476 = icmp eq i64 %n.vec463, %wide.trip.count2363.i
  %min.epilog.iters.check481 = icmp eq i64 %i.azd, 0
  %n.vec483 = and i64 %wide.trip.count2363.i, 2147483640 ; 4 uses
  %i.azf = shl nuw nsw i64 %n.vec483, 3
  %cmp.n492 = icmp eq i64 %n.vec483, %wide.trip.count2363.i
  %xtraiter690 = and i64 %wide.trip.count2363.i, 3 ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  %min.iters.check412 = icmp ult i32 %i.j, 8
  %min.iters.check414 = icmp ult i32 %i.j, 64
  %i.azg = and i64 %wide.trip.count2363.i, 56
  %n.vec416 = and i64 %wide.trip.count2363.i, 2147483584 ; 5 uses
  %i.azh = shl nuw nsw i64 %n.vec416, 2
  %cmp.n426 = icmp eq i64 %n.vec416, %wide.trip.count2363.i
  %min.epilog.iters.check431 = icmp eq i64 %i.azg, 0
  %n.vec433 = and i64 %wide.trip.count2363.i, 2147483640 ; 4 uses
  %i.azi = shl nuw nsw i64 %n.vec433, 2
  %cmp.n440 = icmp eq i64 %n.vec433, %wide.trip.count2363.i
  %xtraiter693 = and i64 %wide.trip.count2363.i, 7 ; 2 uses
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1325.i:                      ; preds = %._crit_edge1928.split.i, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i
  %indvars.iv2353.i = phi i64 [ %i.aog, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2354.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2318.i = phi i32 [ %i.aoc, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2319.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2315.i = phi i32 [ %i.aoa, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2316.i, %._crit_edge1928.split.i ] ; 2 uses
  %i.azj = phi i32 [ %i.amv, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %i.bje, %._crit_edge1928.split.i ]
  %i.azk = sext i32 %indvars.iv2315.i to i64
  %i.azl = shl nsw i64 %i.azk, 2
  %i.azm = sext i32 %indvars.iv2318.i to i64
  %i.azn = shl nsw i64 %i.azm, 2
  %i.azo = load ptr, ptr %i.s, align 8, !tbaa !19 ; 3 uses
  %i.azp = trunc nsw i64 %indvars.iv2353.i to i32 ; 2 uses
  %i.azq = mul i32 %i.amx, %i.azp
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %i.azr ; 2 uses
  %i.azt = mul i32 %i.azj, %i.amx
  %i.azu = sext i32 %i.azt to i64
  %i.azv = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %i.azu ; 2 uses
  %i.azw = insertelement <4 x i32> poison, i32 %i.azp, i64 0
  %i.azx = shufflevector <4 x i32> %i.azw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azy = lshr <4 x i32> %i.azx, <i32 3, i32 2, i32 1, i32 4>
  %i.azz = and <4 x i32> %i.azy, <i32 1, i32 1, i32 1, i32 -1>
  %i.baa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.azz)
  %i.bab = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !180
  %i.bac = load i64, ptr %i.amy, align 8, !tbaa !20, !noalias !180
  %i.bad = zext nneg i32 %i.baa to i64
  %i.bae = mul i64 %i.bac, %i.bad
  %i.baf = load i64, ptr %i.amz, align 8, !tbaa !44, !noalias !180
  %i.bag = mul i64 %i.bae, %i.baf
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.bag ; 4 uses
  br i1 %i.anj, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1325.i
  br i1 %i.ank, label %.preheader1559.us.i, label %.preheader1563.thread.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1856.us.i
  %.011821861.us.i = phi i32 [ %i.bbo, %._crit_edge1856.us.i ], [ 0, %.preheader1559.lr.ph.i ]
  %.011871860.us.i = phi ptr [ %.lcssa516, %._crit_edge1856.us.i ], [ %i.bah, %.preheader1559.lr.ph.i ] ; 2 uses
  %.011981859.us.i = phi ptr [ %i.bbn, %._crit_edge1856.us.i ], [ %i.azv, %.preheader1559.lr.ph.i ] ; 6 uses
  %.012021858.us.i = phi ptr [ %i.bbm, %._crit_edge1856.us.i ], [ %i.azs, %.preheader1559.lr.ph.i ] ; 6 uses
  br i1 %i.aos, label %.epil.preheader638, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2321.i = phi i64 [ %indvars.iv.next2322.i.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 6 uses
  %.111881854.us.i = phi ptr [ %i.bbf, %.preheader1559.us.i.new ], [ %.011871860.us.i, %.preheader1559.us.i ] ; 9 uses
  %niter645 = phi i64 [ %niter645.next.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2321.i
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2321.i
  %i.bak = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bai, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  %i.bal = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baj, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bak, ptr %.111881854.us.i, align 1, !tbaa !45
  %i.bam = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 64
  store <16 x float> %i.bal, ptr %i.bam, align 1, !tbaa !45
  %i.ban = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 128
  %indvars.iv.next2322.i = or disjoint i64 %indvars.iv2321.i, 1 ; 2 uses
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i
  %i.baq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bao, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  %i.bar = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bap, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.baq, ptr %i.ban, align 1, !tbaa !45
  %i.bas = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 192
  store <16 x float> %i.bar, ptr %i.bas, align 1, !tbaa !45
  %i.bat = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 256
  %indvars.iv.next2322.i.1 = or disjoint i64 %indvars.iv2321.i, 2 ; 2 uses
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i.1
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i.1
  %i.baw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bau, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  %i.bax = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bav, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.baw, ptr %i.bat, align 1, !tbaa !45
  %i.bay = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 320
  store <16 x float> %i.bax, ptr %i.bay, align 1, !tbaa !45
  %i.baz = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 384
  %indvars.iv.next2322.i.2 = or disjoint i64 %indvars.iv2321.i, 3 ; 2 uses
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i.2
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i.2
  %i.bbc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bba, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  %i.bbd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbb, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbc, ptr %i.baz, align 1, !tbaa !45
  %i.bbe = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 448
  store <16 x float> %i.bbd, ptr %i.bbe, align 1, !tbaa !45
  %i.bbf = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 512 ; 3 uses
  %indvars.iv.next2322.i.3 = add nuw nsw i64 %indvars.iv2321.i, 4 ; 2 uses
  %niter645.next.3 = add i64 %niter645, 4         ; 2 uses
  %niter645.ncmp.3 = icmp eq i64 %niter645.next.3, %unroll_iter644
  br i1 %niter645.ncmp.3, label %._crit_edge1856.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !121

._crit_edge1856.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod641.not, label %._crit_edge1856.us.i, label %.epil.preheader638

.epil.preheader638:                               ; preds = %._crit_edge1856.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2321.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2322.i.3, %._crit_edge1856.us.i.unr-lcssa ]
  %.111881854.us.i.epil.init = phi ptr [ %.011871860.us.i, %.preheader1559.us.i ], [ %i.bbf, %._crit_edge1856.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod643)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader638
  %indvars.iv2321.i.epil = phi i64 [ %indvars.iv2321.i.epil.init, %.epil.preheader638 ], [ %indvars.iv.next2322.i.epil, %bb.bn ] ; 3 uses
  %.111881854.us.i.epil = phi ptr [ %.111881854.us.i.epil.init, %.epil.preheader638 ], [ %i.bbl, %bb.bn ] ; 3 uses
  %epil.iter640 = phi i64 [ 0, %.epil.preheader638 ], [ %epil.iter640.next, %bb.bn ]
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2321.i.epil
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2321.i.epil
  %i.bbi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbg, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  %i.bbj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbh, <16 x i32> %i.ani, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbi, ptr %.111881854.us.i.epil, align 1, !tbaa !45
  %i.bbk = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 64
  store <16 x float> %i.bbj, ptr %i.bbk, align 1, !tbaa !45
  %i.bbl = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2322.i.epil = add nuw nsw i64 %indvars.iv2321.i.epil, 1
  %epil.iter640.next = add i64 %epil.iter640, 1   ; 2 uses
  %epil.iter640.cmp.not = icmp eq i64 %epil.iter640.next, %xtraiter639
  br i1 %epil.iter640.cmp.not, label %._crit_edge1856.us.i, label %bb.bn, !llvm.loop !122

._crit_edge1856.us.i:                             ; preds = %bb.bn, %._crit_edge1856.us.i.unr-lcssa
  %.lcssa516 = phi ptr [ %i.bbf, %._crit_edge1856.us.i.unr-lcssa ], [ %i.bbl, %bb.bn ] ; 2 uses
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %i.anm ; 2 uses
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %i.anm ; 2 uses
  %i.bbo = add nuw nsw i32 %.011821861.us.i, 16   ; 2 uses
  %i.bbp = or disjoint i32 %i.bbo, 15
  %i.bbq = icmp slt i32 %i.bbp, %i.r
  br i1 %i.bbq, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !123

.preheader1563.i:                                 ; preds = %._crit_edge1856.us.i, %_ZN4ncnn3MatD2Ev.exit1325.i
  %.01202.lcssa.i = phi ptr [ %i.azs, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbm, %._crit_edge1856.us.i ] ; 3 uses
  %.01198.lcssa.i = phi ptr [ %i.azv, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbn, %._crit_edge1856.us.i ] ; 3 uses
  %.01187.lcssa.i = phi ptr [ %i.bah, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %.lcssa516, %._crit_edge1856.us.i ] ; 3 uses
  %.01182.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.aoe, %._crit_edge1856.us.i ] ; 4 uses
  %i.bbr = or disjoint i32 %.01182.lcssa.i, 7
  %i.bbs = icmp slt i32 %i.bbr, %i.r
  br i1 %i.bbs, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1563.thread.i:                          ; preds = %.preheader1559.lr.ph.i
  %scevgep2314.i = getelementptr i8, ptr %i.azo, i64 %i.anz ; 2 uses
  %scevgep2317.i = getelementptr i8, ptr %scevgep2314.i, i64 %i.azl ; 2 uses
  %scevgep2320.i = getelementptr i8, ptr %scevgep2314.i, i64 %i.azn ; 2 uses
  br i1 %i.aoj, label %.preheader1558.preheader.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.ank, label %.preheader1558.us.i, label %.preheader1558.preheader.i

.preheader1558.preheader.i:                       ; preds = %.preheader1558.lr.ph.i, %.preheader1563.thread.i
  %.01202.lcssa25582569.i = phi ptr [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2317.i, %.preheader1563.thread.i ]
  %.01198.lcssa25592568.i = phi ptr [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2320.i, %.preheader1563.thread.i ]
  %.01187.lcssa25602567.i = phi ptr [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.bah, %.preheader1563.thread.i ]
  %.01182.lcssa25612566.i = phi i32 [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.aoe, %.preheader1563.thread.i ] ; 2 uses
  %i.bbt = sub i32 %i.aof, %.01182.lcssa25612566.i ; 2 uses
  %i.bbu = lshr i32 %i.bbt, 1
  %i.bbv = and i32 %i.bbu, 2147483644
  %narrow2434.i = add nuw i32 %i.bbv, 4
  %i.bbw = zext i32 %narrow2434.i to i64
  %i.bbx = mul nsw i64 %i.bbw, %i.ano             ; 2 uses
  %scevgep2326.i = getelementptr i8, ptr %.01202.lcssa25582569.i, i64 %i.bbx
  %scevgep2327.i = getelementptr i8, ptr %.01198.lcssa25592568.i, i64 %i.bbx
  %i.bby = add nsw i32 %.01182.lcssa25612566.i, 8
  %i.bbz = and i32 %i.bbt, -8
  %i.bca = add i32 %i.bby, %i.bbz
  br label %.preheader1562.i

.preheader1558.us.i:                              ; preds = %.preheader1558.lr.ph.i, %._crit_edge1872.us.i
  %.111831877.us.i = phi i32 [ %i.bdh, %._crit_edge1872.us.i ], [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ]
  %.211891876.us.i = phi ptr [ %.lcssa519, %._crit_edge1872.us.i ], [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ] ; 2 uses
  %.111991875.us.i = phi ptr [ %i.bdg, %._crit_edge1872.us.i ], [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ] ; 6 uses
  %.112031874.us.i = phi ptr [ %i.bdf, %._crit_edge1872.us.i ], [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ] ; 6 uses
  br i1 %i.aot, label %.epil.preheader646, label %.preheader1558.us.i.new

.preheader1558.us.i.new:                          ; preds = %.preheader1558.us.i, %.preheader1558.us.i.new
  %indvars.iv2328.i = phi i64 [ %indvars.iv.next2329.i.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ] ; 6 uses
  %.311901870.us.i = phi ptr [ %i.bcy, %.preheader1558.us.i.new ], [ %.211891876.us.i, %.preheader1558.us.i ] ; 9 uses
  %niter653 = phi i64 [ %niter653.next.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ]
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv2328.i
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv2328.i
  %i.bcd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcb, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bce = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcc, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcd, ptr %.311901870.us.i, align 1, !tbaa !45
  %i.bcf = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 32
  store <8 x float> %i.bce, ptr %i.bcf, align 1, !tbaa !45
  %i.bcg = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 64
  %indvars.iv.next2329.i = or disjoint i64 %indvars.iv2328.i, 1 ; 2 uses
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2329.i
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2329.i
  %i.bcj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bch, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bck = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bci, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcj, ptr %i.bcg, align 1, !tbaa !45
  %i.bcl = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 96
  store <8 x float> %i.bck, ptr %i.bcl, align 1, !tbaa !45
  %i.bcm = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 128
  %indvars.iv.next2329.i.1 = or disjoint i64 %indvars.iv2328.i, 2 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2329.i.1
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2329.i.1
  %i.bcp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bcn, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bco, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcp, ptr %i.bcm, align 1, !tbaa !45
  %i.bcr = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 160
  store <8 x float> %i.bcq, ptr %i.bcr, align 1, !tbaa !45
  %i.bcs = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 192
  %indvars.iv.next2329.i.2 = or disjoint i64 %indvars.iv2328.i, 3 ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2329.i.2
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2329.i.2
  %i.bcv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bct, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bcu, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcv, ptr %i.bcs, align 1, !tbaa !45
  %i.bcx = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 224
  store <8 x float> %i.bcw, ptr %i.bcx, align 1, !tbaa !45
  %i.bcy = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 256 ; 3 uses
  %indvars.iv.next2329.i.3 = add nuw nsw i64 %indvars.iv2328.i, 4 ; 2 uses
  %niter653.next.3 = add i64 %niter653, 4         ; 2 uses
  %niter653.ncmp.3 = icmp eq i64 %niter653.next.3, %unroll_iter652
  br i1 %niter653.ncmp.3, label %._crit_edge1872.us.i.unr-lcssa, label %.preheader1558.us.i.new, !llvm.loop !124

._crit_edge1872.us.i.unr-lcssa:                   ; preds = %.preheader1558.us.i.new
  br i1 %lcmp.mod649.not, label %._crit_edge1872.us.i, label %.epil.preheader646

.epil.preheader646:                               ; preds = %._crit_edge1872.us.i.unr-lcssa, %.preheader1558.us.i
  %indvars.iv2328.i.epil.init = phi i64 [ 0, %.preheader1558.us.i ], [ %indvars.iv.next2329.i.3, %._crit_edge1872.us.i.unr-lcssa ]
  %.311901870.us.i.epil.init = phi ptr [ %.211891876.us.i, %.preheader1558.us.i ], [ %i.bcy, %._crit_edge1872.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod651)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.epil.preheader646
  %indvars.iv2328.i.epil = phi i64 [ %indvars.iv2328.i.epil.init, %.epil.preheader646 ], [ %indvars.iv.next2329.i.epil, %bb.bo ] ; 3 uses
  %.311901870.us.i.epil = phi ptr [ %.311901870.us.i.epil.init, %.epil.preheader646 ], [ %i.bde, %bb.bo ] ; 3 uses
  %epil.iter648 = phi i64 [ 0, %.epil.preheader646 ], [ %epil.iter648.next, %bb.bo ]
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv2328.i.epil
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv2328.i.epil
  %i.bdb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcz, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bda, <8 x i32> %i.anf, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bdb, ptr %.311901870.us.i.epil, align 1, !tbaa !45
  %i.bdd = getelementptr inbounds nuw i8, ptr %.311901870.us.i.epil, i64 32
  store <8 x float> %i.bdc, ptr %i.bdd, align 1, !tbaa !45
  %i.bde = getelementptr inbounds nuw i8, ptr %.311901870.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2329.i.epil = add nuw nsw i64 %indvars.iv2328.i.epil, 1
  %epil.iter648.next = add i64 %epil.iter648, 1   ; 2 uses
  %epil.iter648.cmp.not = icmp eq i64 %epil.iter648.next, %xtraiter647
  br i1 %epil.iter648.cmp.not, label %._crit_edge1872.us.i, label %bb.bo, !llvm.loop !125

._crit_edge1872.us.i:                             ; preds = %bb.bo, %._crit_edge1872.us.i.unr-lcssa
  %.lcssa519 = phi ptr [ %i.bcy, %._crit_edge1872.us.i.unr-lcssa ], [ %i.bde, %bb.bo ] ; 2 uses
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %i.ano ; 2 uses
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %i.ano ; 2 uses
  %i.bdh = add nuw nsw i32 %.111831877.us.i, 8    ; 3 uses
  %i.bdi = or disjoint i32 %i.bdh, 7
  %i.bdj = icmp slt i32 %i.bdi, %i.r
  br i1 %i.bdj, label %.preheader1558.us.i, label %.preheader1562.i, !llvm.loop !126

.preheader1562.i:                                 ; preds = %._crit_edge1872.us.i, %.preheader1558.preheader.i, %.preheader1563.thread.i, %.preheader1563.i
  %.11203.lcssa.i = phi ptr [ %.01202.lcssa.i, %.preheader1563.i ], [ %scevgep2317.i, %.preheader1563.thread.i ], [ %scevgep2326.i, %.preheader1558.preheader.i ], [ %i.bdf, %._crit_edge1872.us.i ] ; 2 uses
  %.11199.lcssa.i = phi ptr [ %.01198.lcssa.i, %.preheader1563.i ], [ %scevgep2320.i, %.preheader1563.thread.i ], [ %scevgep2327.i, %.preheader1558.preheader.i ], [ %i.bdg, %._crit_edge1872.us.i ] ; 2 uses
  %.21189.lcssa.i = phi ptr [ %.01187.lcssa.i, %.preheader1563.i ], [ %i.bah, %.preheader1563.thread.i ], [ %.01187.lcssa25602567.i, %.preheader1558.preheader.i ], [ %.lcssa519, %._crit_edge1872.us.i ] ; 2 uses
  %.11183.lcssa.i = phi i32 [ %.01182.lcssa.i, %.preheader1563.i ], [ %i.aoe, %.preheader1563.thread.i ], [ %i.bca, %.preheader1558.preheader.i ], [ %i.bdh, %._crit_edge1872.us.i ] ; 3 uses
  %i.bdk = or disjoint i32 %.11183.lcssa.i, 3
  %i.bdl = icmp slt i32 %i.bdk, %i.r
  br i1 %i.bdl, label %.preheader1557.lr.ph.i, label %.preheader1561.i

.preheader1557.lr.ph.i:                           ; preds = %.preheader1562.i
  br i1 %i.ank, label %.preheader1557.us.i, label %._crit_edge1928.split.i

.preheader1557.us.i:                              ; preds = %.preheader1557.lr.ph.i, %._crit_edge1888.us.i
  %.211841893.us.i = phi i32 [ %i.bes, %._crit_edge1888.us.i ], [ %.11183.lcssa.i, %.preheader1557.lr.ph.i ]
  %.411911892.us.i = phi ptr [ %.lcssa523, %._crit_edge1888.us.i ], [ %.21189.lcssa.i, %.preheader1557.lr.ph.i ] ; 2 uses
  %.212001891.us.i = phi ptr [ %i.ber, %._crit_edge1888.us.i ], [ %.11199.lcssa.i, %.preheader1557.lr.ph.i ] ; 6 uses
  %.212041890.us.i = phi ptr [ %i.beq, %._crit_edge1888.us.i ], [ %.11203.lcssa.i, %.preheader1557.lr.ph.i ] ; 6 uses
  br i1 %i.aou, label %.epil.preheader654, label %.preheader1557.us.i.new

.preheader1557.us.i.new:                          ; preds = %.preheader1557.us.i, %.preheader1557.us.i.new
  %indvars.iv2335.i = phi i64 [ %indvars.iv.next2336.i.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ] ; 6 uses
  %.511921886.us.i = phi ptr [ %i.bej, %.preheader1557.us.i.new ], [ %.411911892.us.i, %.preheader1557.us.i ] ; 9 uses
  %niter661 = phi i64 [ %niter661.next.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ]
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv2335.i
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv2335.i
  %i.bdo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bdm, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bdn, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bdo, ptr %.511921886.us.i, align 1, !tbaa !45
  %i.bdq = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 16
  store <4 x float> %i.bdp, ptr %i.bdq, align 1, !tbaa !45
  %i.bdr = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 32
  %indvars.iv.next2336.i = or disjoint i64 %indvars.iv2335.i, 1 ; 2 uses
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2336.i
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2336.i
  %i.bdu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bds, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bdt, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bdu, ptr %i.bdr, align 1, !tbaa !45
  %i.bdw = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 48
  store <4 x float> %i.bdv, ptr %i.bdw, align 1, !tbaa !45
  %i.bdx = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 64
  %indvars.iv.next2336.i.1 = or disjoint i64 %indvars.iv2335.i, 2 ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2336.i.1
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2336.i.1
  %i.bea = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bdy, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.beb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bdz, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bea, ptr %i.bdx, align 1, !tbaa !45
  %i.bec = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 80
  store <4 x float> %i.beb, ptr %i.bec, align 1, !tbaa !45
  %i.bed = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 96
  %indvars.iv.next2336.i.2 = or disjoint i64 %indvars.iv2335.i, 3 ; 2 uses
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2336.i.2
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2336.i.2
  %i.beg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bee, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.beh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bef, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.beg, ptr %i.bed, align 1, !tbaa !45
  %i.bei = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 112
  store <4 x float> %i.beh, ptr %i.bei, align 1, !tbaa !45
  %i.bej = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 128 ; 3 uses
  %indvars.iv.next2336.i.3 = add nuw nsw i64 %indvars.iv2335.i, 4 ; 2 uses
  %niter661.next.3 = add i64 %niter661, 4         ; 2 uses
  %niter661.ncmp.3 = icmp eq i64 %niter661.next.3, %unroll_iter660
  br i1 %niter661.ncmp.3, label %._crit_edge1888.us.i.unr-lcssa, label %.preheader1557.us.i.new, !llvm.loop !127

._crit_edge1888.us.i.unr-lcssa:                   ; preds = %.preheader1557.us.i.new
  br i1 %lcmp.mod657.not, label %._crit_edge1888.us.i, label %.epil.preheader654

.epil.preheader654:                               ; preds = %._crit_edge1888.us.i.unr-lcssa, %.preheader1557.us.i
  %indvars.iv2335.i.epil.init = phi i64 [ 0, %.preheader1557.us.i ], [ %indvars.iv.next2336.i.3, %._crit_edge1888.us.i.unr-lcssa ]
  %.511921886.us.i.epil.init = phi ptr [ %.411911892.us.i, %.preheader1557.us.i ], [ %i.bej, %._crit_edge1888.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod659)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader654
  %indvars.iv2335.i.epil = phi i64 [ %indvars.iv2335.i.epil.init, %.epil.preheader654 ], [ %indvars.iv.next2336.i.epil, %bb.bp ] ; 3 uses
  %.511921886.us.i.epil = phi ptr [ %.511921886.us.i.epil.init, %.epil.preheader654 ], [ %i.bep, %bb.bp ] ; 3 uses
  %epil.iter656 = phi i64 [ 0, %.epil.preheader654 ], [ %epil.iter656.next, %bb.bp ]
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv2335.i.epil
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv2335.i.epil
  %i.bem = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bek, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ben = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bel, <4 x i32> %i.anc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bem, ptr %.511921886.us.i.epil, align 1, !tbaa !45
  %i.beo = getelementptr inbounds nuw i8, ptr %.511921886.us.i.epil, i64 16
  store <4 x float> %i.ben, ptr %i.beo, align 1, !tbaa !45
  %i.bep = getelementptr inbounds nuw i8, ptr %.511921886.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2336.i.epil = add nuw nsw i64 %indvars.iv2335.i.epil, 1
  %epil.iter656.next = add i64 %epil.iter656, 1   ; 2 uses
  %epil.iter656.cmp.not = icmp eq i64 %epil.iter656.next, %xtraiter655
  br i1 %epil.iter656.cmp.not, label %._crit_edge1888.us.i, label %bb.bp, !llvm.loop !128

._crit_edge1888.us.i:                             ; preds = %bb.bp, %._crit_edge1888.us.i.unr-lcssa
  %.lcssa523 = phi ptr [ %i.bej, %._crit_edge1888.us.i.unr-lcssa ], [ %i.bep, %bb.bp ] ; 2 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %i.anq ; 2 uses
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %i.anq ; 2 uses
  %i.bes = add nuw nsw i32 %.211841893.us.i, 4    ; 3 uses
  %i.bet = or disjoint i32 %i.bes, 3
  %i.beu = icmp slt i32 %i.bet, %i.r
  br i1 %i.beu, label %.preheader1557.us.i, label %.preheader1561.i, !llvm.loop !129

.preheader1561.i:                                 ; preds = %._crit_edge1888.us.i, %.preheader1562.i
  %.21204.lcssa.i = phi ptr [ %.11203.lcssa.i, %.preheader1562.i ], [ %i.beq, %._crit_edge1888.us.i ] ; 6 uses
  %.21200.lcssa.i = phi ptr [ %.11199.lcssa.i, %.preheader1562.i ], [ %i.ber, %._crit_edge1888.us.i ] ; 6 uses
  %.41191.lcssa.i = phi ptr [ %.21189.lcssa.i, %.preheader1562.i ], [ %.lcssa523, %._crit_edge1888.us.i ] ; 2 uses
  %.21184.lcssa.i = phi i32 [ %.11183.lcssa.i, %.preheader1562.i ], [ %i.bes, %._crit_edge1888.us.i ] ; 4 uses
  %i.bev = or disjoint i32 %.21184.lcssa.i, 1
  %i.bew = icmp slt i32 %i.bev, %i.r
  br i1 %i.bew, label %.preheader1556.lr.ph.i, label %.preheader1560.i

.preheader1556.lr.ph.i:                           ; preds = %.preheader1561.i
  br i1 %i.ank, label %.preheader1556.us.i.preheader, label %._crit_edge1928.split.i

end_hunk_3
begin_hunk_4_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.bic = icmp ugt i64 %i.bib, -4
  br i1 %i.bic, label %._crit_edge1924.i, label %vec.epilog.scalar.ph

._crit_edge1924.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa276 = phi ptr [ %i.bhq, %vec.epilog.middle.block ], [ %i.bhl, %middle.block ], [ %.lcssa531.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bjb, %vec.epilog.scalar.ph ]
  %i.bid = add nuw nsw i32 %.411861927.i, 1       ; 2 uses
  %exitcond2352.not.i = icmp eq i32 %i.bid, %i.r
  br i1 %exitcond2352.not.i, label %._crit_edge1928.split.i, label %iter.check, !llvm.loop !147

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv2347.i = phi i64 [ %indvars.iv.next2348.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv2347.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.1011971922.i = phi ptr [ %i.bjb, %vec.epilog.scalar.ph ], [ %.1011971922.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %.31205.lcssa.i, i64 %indvars.iv2347.i
  %i.bif = getelementptr inbounds nuw [4 x i8], ptr %.31201.lcssa.i, i64 %indvars.iv2347.i
  %i.big = load float, ptr %i.bie, align 4, !tbaa !48
  store float %i.big, ptr %.1011971922.i, align 4, !tbaa !48
  %i.bih = load float, ptr %i.bif, align 4, !tbaa !48
  %i.bii = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 4
  store float %i.bih, ptr %i.bii, align 4, !tbaa !48
  %i.bij = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 8
  %indvars.iv.next2348.i = add nuw nsw i64 %indvars.iv2347.i, 1 ; 2 uses
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %.31205.lcssa.i, i64 %indvars.iv.next2348.i
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %.31201.lcssa.i, i64 %indvars.iv.next2348.i
  %i.bim = load float, ptr %i.bik, align 4, !tbaa !48
  store float %i.bim, ptr %i.bij, align 4, !tbaa !48
  %i.bin = load float, ptr %i.bil, align 4, !tbaa !48
  %i.bio = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 12
  store float %i.bin, ptr %i.bio, align 4, !tbaa !48
  %i.bip = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 16
  %indvars.iv.next2348.i.1 = add nuw nsw i64 %indvars.iv2347.i, 2 ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.31205.lcssa.i, i64 %indvars.iv.next2348.i.1
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %.31201.lcssa.i, i64 %indvars.iv.next2348.i.1
  %i.bis = load float, ptr %i.biq, align 4, !tbaa !48
  store float %i.bis, ptr %i.bip, align 4, !tbaa !48
  %i.bit = load float, ptr %i.bir, align 4, !tbaa !48
  %i.biu = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 20
  store float %i.bit, ptr %i.biu, align 4, !tbaa !48
  %i.biv = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 24
  %indvars.iv.next2348.i.2 = add nuw nsw i64 %indvars.iv2347.i, 3 ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.31205.lcssa.i, i64 %indvars.iv.next2348.i.2
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %.31201.lcssa.i, i64 %indvars.iv.next2348.i.2
  %i.biy = load float, ptr %i.biw, align 4, !tbaa !48
  store float %i.biy, ptr %i.biv, align 4, !tbaa !48
  %i.biz = load float, ptr %i.bix, align 4, !tbaa !48
  %i.bja = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 28
  store float %i.biz, ptr %i.bja, align 4, !tbaa !48
  %i.bjb = getelementptr inbounds nuw i8, ptr %.1011971922.i, i64 32 ; 2 uses
  %indvars.iv.next2348.i.3 = add nuw nsw i64 %indvars.iv2347.i, 4 ; 2 uses
  %exitcond2351.not.i.3 = icmp eq i64 %indvars.iv.next2348.i.3, %wide.trip.count2324.i
  br i1 %exitcond2351.not.i.3, label %._crit_edge1924.i, label %vec.epilog.scalar.ph, !llvm.loop !148

._crit_edge1928.split.i:                          ; preds = %._crit_edge1924.i, %.preheader1560.i, %.preheader1556.lr.ph.i, %.preheader1557.lr.ph.i
  %indvars.iv.next2354.i = add nuw nsw i64 %indvars.iv2353.i, 2 ; 3 uses
  %i.bjc = or disjoint i64 %indvars.iv.next2354.i, 1 ; 2 uses
  %i.bjd = icmp slt i64 %i.bjc, %i.aoh
  %indvars.iv.next2316.i = add i32 %indvars.iv2315.i, %i.aob
  %indvars.iv.next2319.i = add i32 %indvars.iv2318.i, %i.aob
  %i.bje = trunc nsw i64 %i.bjc to i32
  br i1 %i.bjd, label %_ZN4ncnn3MatD2Ev.exit1325.i, label %.preheader1554.loopexit.i, !llvm.loop !149

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1992.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv2389.i = phi i64 [ %i.ayr, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2390.i, %._crit_edge1992.split.i ] ; 2 uses
  %indvars.iv2357.i = phi i32 [ %i.ayn, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2358.i, %._crit_edge1992.split.i ] ; 2 uses
  %i.bjf = sext i32 %indvars.iv2357.i to i64
  %i.bjg = shl nsw i64 %i.bjf, 2
  %i.bjh = load ptr, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.bji = trunc nsw i64 %indvars.iv2389.i to i32 ; 3 uses
  %i.bjj = mul i32 %i.axk, %i.bji
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds [4 x i8], ptr %i.bjh, i64 %i.bjk ; 2 uses
  %i.bjm = lshr i32 %i.bji, 4
  %i.bjn = insertelement <4 x i32> poison, i32 %i.bji, i64 0
  %i.bjo = shufflevector <4 x i32> %i.bjn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bjp = lshr <4 x i32> %i.bjo, <i32 0, i32 3, i32 2, i32 1>
  %i.bjq = and <4 x i32> %i.bjp, splat (i32 1)
  %i.bjr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bjq)
  %op.rdx = add nuw nsw i32 %i.bjr, %i.bjm
  %i.bjs = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !191
  %i.bjt = load i64, ptr %i.axl, align 8, !tbaa !20, !noalias !191
  %i.bju = zext nneg i32 %op.rdx to i64
  %i.bjv = load i64, ptr %i.axm, align 8, !tbaa !44, !noalias !191
  %i.bjw = mul i64 %i.bjv, %i.bjt
  %i.bjx = mul i64 %i.bjw, %i.bju
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjs, i64 %i.bjx ; 4 uses
  br i1 %i.axw, label %.preheader1549.lr.ph.i, label %.preheader1553.i

.preheader1549.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.axx, label %.preheader1549.us.i, label %.preheader1553.thread.i

.preheader1549.us.i:                              ; preds = %.preheader1549.lr.ph.i, %._crit_edge1933.us.i
  %.011331937.us.i = phi i32 [ %i.bli, %._crit_edge1933.us.i ], [ 0, %.preheader1549.lr.ph.i ]
  %.011381936.us.i = phi ptr [ %.lcssa, %._crit_edge1933.us.i ], [ %i.bjy, %.preheader1549.lr.ph.i ] ; 2 uses
  %.011431935.us.i = phi ptr [ %i.blh, %._crit_edge1933.us.i ], [ %i.bjl, %.preheader1549.lr.ph.i ] ; 10 uses
  br i1 %i.aza, label %.epil.preheader666, label %.preheader1549.us.i.new

.preheader1549.us.i.new:                          ; preds = %.preheader1549.us.i, %.preheader1549.us.i.new
  %indvars.iv2360.i = phi i64 [ %indvars.iv.next2361.i.7, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ] ; 9 uses
  %.111391931.us.i = phi ptr [ %i.bld, %.preheader1549.us.i.new ], [ %.011381936.us.i, %.preheader1549.us.i ] ; 9 uses
  %niter673 = phi i64 [ %niter673.next.7, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ]
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bka = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bjz, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bka, ptr %.111391931.us.i, align 1, !tbaa !45
  %i.bkb = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 64
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 4
  %i.bke = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkd, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bke, ptr %i.bkb, align 1, !tbaa !45
  %i.bkf = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 128
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  %i.bki = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkh, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bki, ptr %i.bkf, align 1, !tbaa !45
  %i.bkj = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 192
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 12
  %i.bkm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkl, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bkm, ptr %i.bkj, align 1, !tbaa !45
  %i.bkn = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 256
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 16
  %i.bkq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkp, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bkq, ptr %i.bkn, align 1, !tbaa !45
  %i.bkr = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 320
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 20
  %i.bku = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkt, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bku, ptr %i.bkr, align 1, !tbaa !45
  %i.bkv = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 384
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 24
  %i.bky = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bkx, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bky, ptr %i.bkv, align 1, !tbaa !45
  %i.bkz = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 448
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 28
  %i.blc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.blb, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.blc, ptr %i.bkz, align 1, !tbaa !45
  %i.bld = getelementptr inbounds nuw i8, ptr %.111391931.us.i, i64 512 ; 3 uses
  %indvars.iv.next2361.i.7 = add nuw nsw i64 %indvars.iv2360.i, 8 ; 2 uses
  %niter673.next.7 = add i64 %niter673, 8         ; 2 uses
  %niter673.ncmp.7 = icmp eq i64 %niter673.next.7, %unroll_iter672
  br i1 %niter673.ncmp.7, label %._crit_edge1933.us.i.unr-lcssa, label %.preheader1549.us.i.new, !llvm.loop !152

._crit_edge1933.us.i.unr-lcssa:                   ; preds = %.preheader1549.us.i.new
  br i1 %lcmp.mod669.not, label %._crit_edge1933.us.i, label %.epil.preheader666

.epil.preheader666:                               ; preds = %._crit_edge1933.us.i.unr-lcssa, %.preheader1549.us.i
  %indvars.iv2360.i.epil.init = phi i64 [ 0, %.preheader1549.us.i ], [ %indvars.iv.next2361.i.7, %._crit_edge1933.us.i.unr-lcssa ]
  %.111391931.us.i.epil.init = phi ptr [ %.011381936.us.i, %.preheader1549.us.i ], [ %i.bld, %._crit_edge1933.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.epil.preheader666
  %indvars.iv2360.i.epil = phi i64 [ %indvars.iv2360.i.epil.init, %.epil.preheader666 ], [ %indvars.iv.next2361.i.epil, %bb.bq ] ; 2 uses
  %.111391931.us.i.epil = phi ptr [ %.111391931.us.i.epil.init, %.epil.preheader666 ], [ %i.blg, %bb.bq ] ; 2 uses
  %epil.iter668 = phi i64 [ 0, %.epil.preheader666 ], [ %epil.iter668.next, %bb.bq ]
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %indvars.iv2360.i.epil
  %i.blf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ble, <16 x i32> %i.axv, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.blf, ptr %.111391931.us.i.epil, align 1, !tbaa !45
  %i.blg = getelementptr inbounds nuw i8, ptr %.111391931.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2361.i.epil = add nuw nsw i64 %indvars.iv2360.i.epil, 1
  %epil.iter668.next = add i64 %epil.iter668, 1   ; 2 uses
  %epil.iter668.cmp.not = icmp eq i64 %epil.iter668.next, %xtraiter667
  br i1 %epil.iter668.cmp.not, label %._crit_edge1933.us.i, label %bb.bq, !llvm.loop !153

._crit_edge1933.us.i:                             ; preds = %bb.bq, %._crit_edge1933.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.bld, %._crit_edge1933.us.i.unr-lcssa ], [ %i.blg, %bb.bq ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %.011431935.us.i, i64 %i.axz ; 2 uses
  %i.bli = add nuw nsw i32 %.011331937.us.i, 16   ; 2 uses
  %i.blj = or disjoint i32 %i.bli, 15
  %i.blk = icmp slt i32 %i.blj, %i.r
  br i1 %i.blk, label %.preheader1549.us.i, label %.preheader1553.i, !llvm.loop !154

.preheader1553.i:                                 ; preds = %._crit_edge1933.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.01143.lcssa.i = phi ptr [ %i.bjl, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.blh, %._crit_edge1933.us.i ] ; 3 uses
  %.01138.lcssa.i = phi ptr [ %i.bjy, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1933.us.i ] ; 3 uses
  %.01133.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ayp, %._crit_edge1933.us.i ] ; 4 uses
  %i.bll = or disjoint i32 %.01133.lcssa.i, 7
  %i.blm = icmp slt i32 %i.bll, %i.r
  br i1 %i.blm, label %.preheader1548.lr.ph.i, label %.preheader1552.i

.preheader1553.thread.i:                          ; preds = %.preheader1549.lr.ph.i
  %scevgep2356.i = getelementptr i8, ptr %i.bjh, i64 %i.aym
  %scevgep2359.i = getelementptr i8, ptr %scevgep2356.i, i64 %i.bjg ; 2 uses
  br i1 %i.ayt, label %.preheader1548.preheader.i, label %.preheader1552.i

.preheader1548.lr.ph.i:                           ; preds = %.preheader1553.i
  br i1 %i.axx, label %.preheader1548.us.i, label %.preheader1548.preheader.i

.preheader1548.preheader.i:                       ; preds = %.preheader1548.lr.ph.i, %.preheader1553.thread.i
  %.01143.lcssa25942602.i = phi ptr [ %.01143.lcssa.i, %.preheader1548.lr.ph.i ], [ %scevgep2359.i, %.preheader1553.thread.i ]
  %.01138.lcssa25952601.i = phi ptr [ %.01138.lcssa.i, %.preheader1548.lr.ph.i ], [ %i.bjy, %.preheader1553.thread.i ]
  %.01133.lcssa25962600.i = phi i32 [ %.01133.lcssa.i, %.preheader1548.lr.ph.i ], [ %i.ayp, %.preheader1553.thread.i ] ; 2 uses
  %i.bln = sub i32 %i.ayq, %.01133.lcssa25962600.i ; 2 uses
  %i.blo = lshr i32 %i.bln, 1
  %i.blp = and i32 %i.blo, 2147483644
  %narrow2436.i = add nuw i32 %i.blp, 4
  %i.blq = zext i32 %narrow2436.i to i64
  %i.blr = mul nsw i64 %i.blq, %i.ayb
  %scevgep2365.i = getelementptr i8, ptr %.01143.lcssa25942602.i, i64 %i.blr
  %i.bls = add nsw i32 %.01133.lcssa25962600.i, 8
  %i.blt = and i32 %i.bln, -8
  %i.blu = add i32 %i.bls, %i.blt
  br label %.preheader1552.i

.preheader1548.us.i:                              ; preds = %.preheader1548.lr.ph.i, %._crit_edge1946.us.i
  %.111341950.us.i = phi i32 [ %i.bne, %._crit_edge1946.us.i ], [ %.01133.lcssa.i, %.preheader1548.lr.ph.i ]
  %.211401949.us.i = phi ptr [ %.lcssa506, %._crit_edge1946.us.i ], [ %.01138.lcssa.i, %.preheader1548.lr.ph.i ] ; 2 uses
  %.111441948.us.i = phi ptr [ %i.bnd, %._crit_edge1946.us.i ], [ %.01143.lcssa.i, %.preheader1548.lr.ph.i ] ; 10 uses
  br i1 %i.azb, label %.epil.preheader674, label %.preheader1548.us.i.new

.preheader1548.us.i.new:                          ; preds = %.preheader1548.us.i, %.preheader1548.us.i.new
  %indvars.iv2366.i = phi i64 [ %indvars.iv.next2367.i.7, %.preheader1548.us.i.new ], [ 0, %.preheader1548.us.i ] ; 9 uses
  %.311411944.us.i = phi ptr [ %i.bmz, %.preheader1548.us.i.new ], [ %.211401949.us.i, %.preheader1548.us.i ] ; 9 uses
  %niter681 = phi i64 [ %niter681.next.7, %.preheader1548.us.i.new ], [ 0, %.preheader1548.us.i ]
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.blw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blv, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.blw, ptr %.311411944.us.i, align 1, !tbaa !45
  %i.blx = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 32
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 4
  %i.bma = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blz, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bma, ptr %i.blx, align 1, !tbaa !45
  %i.bmb = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 64
  %i.bmc = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 8
  %i.bme = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmd, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bme, ptr %i.bmb, align 1, !tbaa !45
  %i.bmf = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 96
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 12
  %i.bmi = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmh, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmi, ptr %i.bmf, align 1, !tbaa !45
  %i.bmj = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 128
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16
  %i.bmm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bml, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmm, ptr %i.bmj, align 1, !tbaa !45
  %i.bmn = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 160
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 20
  %i.bmq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmp, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmq, ptr %i.bmn, align 1, !tbaa !45
  %i.bmr = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 192
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  %i.bmu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmt, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmu, ptr %i.bmr, align 1, !tbaa !45
  %i.bmv = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 224
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 28
  %i.bmy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmx, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmy, ptr %i.bmv, align 1, !tbaa !45
  %i.bmz = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 256 ; 3 uses
  %indvars.iv.next2367.i.7 = add nuw nsw i64 %indvars.iv2366.i, 8 ; 2 uses
  %niter681.next.7 = add i64 %niter681, 8         ; 2 uses
  %niter681.ncmp.7 = icmp eq i64 %niter681.next.7, %unroll_iter680
  br i1 %niter681.ncmp.7, label %._crit_edge1946.us.i.unr-lcssa, label %.preheader1548.us.i.new, !llvm.loop !155

._crit_edge1946.us.i.unr-lcssa:                   ; preds = %.preheader1548.us.i.new
  br i1 %lcmp.mod677.not, label %._crit_edge1946.us.i, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge1946.us.i.unr-lcssa, %.preheader1548.us.i
  %indvars.iv2366.i.epil.init = phi i64 [ 0, %.preheader1548.us.i ], [ %indvars.iv.next2367.i.7, %._crit_edge1946.us.i.unr-lcssa ]
  %.311411944.us.i.epil.init = phi ptr [ %.211401949.us.i, %.preheader1548.us.i ], [ %i.bmz, %._crit_edge1946.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader674
  %indvars.iv2366.i.epil = phi i64 [ %indvars.iv2366.i.epil.init, %.epil.preheader674 ], [ %indvars.iv.next2367.i.epil, %bb.br ] ; 2 uses
  %.311411944.us.i.epil = phi ptr [ %.311411944.us.i.epil.init, %.epil.preheader674 ], [ %i.bnc, %bb.br ] ; 2 uses
  %epil.iter676 = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter676.next, %bb.br ]
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2366.i.epil
  %i.bnb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bna, <8 x i32> %i.axs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnb, ptr %.311411944.us.i.epil, align 1, !tbaa !45
  %i.bnc = getelementptr inbounds nuw i8, ptr %.311411944.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2367.i.epil = add nuw nsw i64 %indvars.iv2366.i.epil, 1
  %epil.iter676.next = add i64 %epil.iter676, 1   ; 2 uses
  %epil.iter676.cmp.not = icmp eq i64 %epil.iter676.next, %xtraiter675
  br i1 %epil.iter676.cmp.not, label %._crit_edge1946.us.i, label %bb.br, !llvm.loop !156

._crit_edge1946.us.i:                             ; preds = %bb.br, %._crit_edge1946.us.i.unr-lcssa
  %.lcssa506 = phi ptr [ %i.bmz, %._crit_edge1946.us.i.unr-lcssa ], [ %i.bnc, %bb.br ] ; 2 uses
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %i.ayb ; 2 uses
  %i.bne = add nuw nsw i32 %.111341950.us.i, 8    ; 3 uses
  %i.bnf = or disjoint i32 %i.bne, 7
  %i.bng = icmp slt i32 %i.bnf, %i.r
  br i1 %i.bng, label %.preheader1548.us.i, label %.preheader1552.i, !llvm.loop !157

.preheader1552.i:                                 ; preds = %._crit_edge1946.us.i, %.preheader1548.preheader.i, %.preheader1553.thread.i, %.preheader1553.i
  %.11144.lcssa.i = phi ptr [ %.01143.lcssa.i, %.preheader1553.i ], [ %scevgep2359.i, %.preheader1553.thread.i ], [ %scevgep2365.i, %.preheader1548.preheader.i ], [ %i.bnd, %._crit_edge1946.us.i ] ; 2 uses
  %.21140.lcssa.i = phi ptr [ %.01138.lcssa.i, %.preheader1553.i ], [ %i.bjy, %.preheader1553.thread.i ], [ %.01138.lcssa25952601.i, %.preheader1548.preheader.i ], [ %.lcssa506, %._crit_edge1946.us.i ] ; 2 uses
  %.11134.lcssa.i = phi i32 [ %.01133.lcssa.i, %.preheader1553.i ], [ %i.ayp, %.preheader1553.thread.i ], [ %i.blu, %.preheader1548.preheader.i ], [ %i.bne, %._crit_edge1946.us.i ] ; 3 uses
  %i.bnh = or disjoint i32 %.11134.lcssa.i, 3
  %i.bni = icmp slt i32 %i.bnh, %i.r
  br i1 %i.bni, label %.preheader1547.lr.ph.i, label %.preheader1551.i

.preheader1547.lr.ph.i:                           ; preds = %.preheader1552.i
  br i1 %i.axx, label %.preheader1547.us.i, label %._crit_edge1992.split.i

.preheader1547.us.i:                              ; preds = %.preheader1547.lr.ph.i, %._crit_edge1959.us.i
  %.211351963.us.i = phi i32 [ %i.bos, %._crit_edge1959.us.i ], [ %.11134.lcssa.i, %.preheader1547.lr.ph.i ]
  %.411421962.us.i = phi ptr [ %.lcssa509, %._crit_edge1959.us.i ], [ %.21140.lcssa.i, %.preheader1547.lr.ph.i ] ; 2 uses
  %.211451961.us.i = phi ptr [ %i.bor, %._crit_edge1959.us.i ], [ %.11144.lcssa.i, %.preheader1547.lr.ph.i ] ; 10 uses
  br i1 %i.azc, label %.epil.preheader682, label %.preheader1547.us.i.new

.preheader1547.us.i.new:                          ; preds = %.preheader1547.us.i, %.preheader1547.us.i.new
  %indvars.iv2372.i = phi i64 [ %indvars.iv.next2373.i.7, %.preheader1547.us.i.new ], [ 0, %.preheader1547.us.i ] ; 9 uses
  %.51957.us.i = phi ptr [ %i.bon, %.preheader1547.us.i.new ], [ %.411421962.us.i, %.preheader1547.us.i ] ; 9 uses
  %niter689 = phi i64 [ %niter689.next.7, %.preheader1547.us.i.new ], [ 0, %.preheader1547.us.i ]
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bnk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bnj, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bnk, ptr %.51957.us.i, align 1, !tbaa !45
  %i.bnl = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 16
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 4
  %i.bno = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnn, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bno, ptr %i.bnl, align 1, !tbaa !45
  %i.bnp = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 32
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  %i.bns = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnr, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bns, ptr %i.bnp, align 1, !tbaa !45
  %i.bnt = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 48
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 12
  %i.bnw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnv, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bnw, ptr %i.bnt, align 1, !tbaa !45
  %i.bnx = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 64
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 16
  %i.boa = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnz, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.boa, ptr %i.bnx, align 1, !tbaa !45
  %i.bob = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 80
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 20
  %i.boe = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bod, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.boe, ptr %i.bob, align 1, !tbaa !45
  %i.bof = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 96
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 24
  %i.boi = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.boh, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.boi, ptr %i.bof, align 1, !tbaa !45
  %i.boj = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 112
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 28
  %i.bom = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bol, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bom, ptr %i.boj, align 1, !tbaa !45
  %i.bon = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 128 ; 3 uses
  %indvars.iv.next2373.i.7 = add nuw nsw i64 %indvars.iv2372.i, 8 ; 2 uses
  %niter689.next.7 = add i64 %niter689, 8         ; 2 uses
  %niter689.ncmp.7 = icmp eq i64 %niter689.next.7, %unroll_iter688
  br i1 %niter689.ncmp.7, label %._crit_edge1959.us.i.unr-lcssa, label %.preheader1547.us.i.new, !llvm.loop !158

._crit_edge1959.us.i.unr-lcssa:                   ; preds = %.preheader1547.us.i.new
  br i1 %lcmp.mod685.not, label %._crit_edge1959.us.i, label %.epil.preheader682

.epil.preheader682:                               ; preds = %._crit_edge1959.us.i.unr-lcssa, %.preheader1547.us.i
  %indvars.iv2372.i.epil.init = phi i64 [ 0, %.preheader1547.us.i ], [ %indvars.iv.next2373.i.7, %._crit_edge1959.us.i.unr-lcssa ]
  %.51957.us.i.epil.init = phi ptr [ %.411421962.us.i, %.preheader1547.us.i ], [ %i.bon, %._crit_edge1959.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod687)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader682
  %indvars.iv2372.i.epil = phi i64 [ %indvars.iv2372.i.epil.init, %.epil.preheader682 ], [ %indvars.iv.next2373.i.epil, %bb.bs ] ; 2 uses
  %.51957.us.i.epil = phi ptr [ %.51957.us.i.epil.init, %.epil.preheader682 ], [ %i.boq, %bb.bs ] ; 2 uses
  %epil.iter684 = phi i64 [ 0, %.epil.preheader682 ], [ %epil.iter684.next, %bb.bs ]
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2372.i.epil
  %i.bop = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.boo, <4 x i32> %i.axp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bop, ptr %.51957.us.i.epil, align 1, !tbaa !45
  %i.boq = getelementptr inbounds nuw i8, ptr %.51957.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2373.i.epil = add nuw nsw i64 %indvars.iv2372.i.epil, 1
  %epil.iter684.next = add i64 %epil.iter684, 1   ; 2 uses
  %epil.iter684.cmp.not = icmp eq i64 %epil.iter684.next, %xtraiter683
  br i1 %epil.iter684.cmp.not, label %._crit_edge1959.us.i, label %bb.bs, !llvm.loop !159

._crit_edge1959.us.i:                             ; preds = %bb.bs, %._crit_edge1959.us.i.unr-lcssa
  %.lcssa509 = phi ptr [ %i.bon, %._crit_edge1959.us.i.unr-lcssa ], [ %i.boq, %bb.bs ] ; 2 uses
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %i.ayd ; 2 uses
  %i.bos = add nuw nsw i32 %.211351963.us.i, 4    ; 3 uses
  %i.bot = or disjoint i32 %i.bos, 3
  %i.bou = icmp slt i32 %i.bot, %i.r
  br i1 %i.bou, label %.preheader1547.us.i, label %.preheader1551.i, !llvm.loop !160

.preheader1551.i:                                 ; preds = %._crit_edge1959.us.i, %.preheader1552.i
  %.21145.lcssa.i = phi ptr [ %.11144.lcssa.i, %.preheader1552.i ], [ %i.bor, %._crit_edge1959.us.i ] ; 6 uses
  %.41142.lcssa.i = phi ptr [ %.21140.lcssa.i, %.preheader1552.i ], [ %.lcssa509, %._crit_edge1959.us.i ] ; 2 uses
  %.21135.lcssa.i = phi i32 [ %.11134.lcssa.i, %.preheader1552.i ], [ %i.bos, %._crit_edge1959.us.i ] ; 4 uses
  %i.bov = or disjoint i32 %.21135.lcssa.i, 1
  %i.bow = icmp slt i32 %i.bov, %i.r
  br i1 %i.bow, label %.preheader1546.lr.ph.i, label %.preheader1550.i

.preheader1546.lr.ph.i:                           ; preds = %.preheader1551.i
  br i1 %i.axx, label %.preheader1546.us.i.preheader, label %._crit_edge1992.split.i

.preheader1546.us.i.preheader:                    ; preds = %.preheader1546.lr.ph.i
  %scevgep445 = getelementptr i8, ptr %.21145.lcssa.i, i64 %i.ayv
  %i.box = getelementptr i8, ptr %.21145.lcssa.i, i64 %i.ayv
  %scevgep446 = getelementptr i8, ptr %i.box, i64 %i.ayw
  %i.boy = sub i32 %i.ayy, %.21135.lcssa.i
  %i.boz = lshr i32 %i.boy, 1
end_hunk_4
begin_hunk_5_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
.loopexit2635.i:                                  ; preds = %bb.r
  br i1 %i.fc, label %bb.s, label %.loopexit2633.i

bb.s:                                             ; preds = %.loopexit2635.i
  br i1 %i.iq, label %.lr.ph2740.preheader.i, label %.loopexit2632.i

.lr.ph2740.preheader.i:                           ; preds = %bb.s
  %i.ael = getelementptr inbounds [4 x i8], ptr %gep2776.i, i64 %i.iv
  br label %.lr.ph2740.i

.lr.ph2740.i:                                     ; preds = %.lr.ph2740.i, %.lr.ph2740.preheader.i
  %.1213172739.i = phi ptr [ %i.agp, %.lr.ph2740.i ], [ %.913142765.i, %.lr.ph2740.preheader.i ] ; 9 uses
  %.214282738.i = phi ptr [ %i.agn, %.lr.ph2740.i ], [ %gep2776.i, %.lr.ph2740.preheader.i ] ; 5 uses
  %.014322737.i = phi ptr [ %i.ago, %.lr.ph2740.i ], [ %i.ael, %.lr.ph2740.preheader.i ] ; 5 uses
  %.014332736.i = phi i32 [ %i.agq, %.lr.ph2740.i ], [ 0, %.lr.ph2740.preheader.i ]
  %.1323082735.i = phi <8 x float> [ %i.afx, %.lr.ph2740.i ], [ %.1023052763.i, %.lr.ph2740.preheader.i ]
  %.1223372734.i = phi <8 x float> [ %i.agc, %.lr.ph2740.i ], [ %.923342762.i, %.lr.ph2740.preheader.i ]
  %.1223602733.i = phi <8 x float> [ %i.agh, %.lr.ph2740.i ], [ %.923572761.i, %.lr.ph2740.preheader.i ]
  %.1223812732.i = phi <8 x float> [ %i.agm, %.lr.ph2740.i ], [ %.923782760.i, %.lr.ph2740.preheader.i ]
  %i.aem = load <8 x float>, ptr %.1213172739.i, align 32, !tbaa !45
  %i.aen = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 32
  %i.aeo = load <8 x float>, ptr %i.aen, align 32, !tbaa !45
  %i.aep = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 64
  %i.aeq = load <8 x float>, ptr %i.aep, align 32, !tbaa !45
  %i.aer = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 96
  %i.aes = load <8 x float>, ptr %i.aer, align 32, !tbaa !45
  %i.aet = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 128
  %i.aeu = load <8 x float>, ptr %i.aet, align 32, !tbaa !45
  %i.aev = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 160
  %i.aew = load <8 x float>, ptr %i.aev, align 32, !tbaa !45
  %i.aex = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 192
  %i.aey = load <8 x float>, ptr %i.aex, align 32, !tbaa !45
  %i.aez = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 224
  %i.afa = load <8 x float>, ptr %i.aez, align 32, !tbaa !45
  %i.afb = load float, ptr %.214282738.i, align 4, !tbaa !48
  %i.afc = insertelement <8 x float> poison, float %i.afb, i64 0
  %i.afd = shufflevector <8 x float> %i.afc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aem, <8 x float> nofpclass(nan inf) %i.afd, <8 x float> nofpclass(nan inf) %.1323082735.i)
  %i.aff = getelementptr inbounds nuw i8, ptr %.214282738.i, i64 4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !48
  %i.afh = insertelement <8 x float> poison, float %i.afg, i64 0
  %i.afi = shufflevector <8 x float> %i.afh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeo, <8 x float> nofpclass(nan inf) %i.afi, <8 x float> nofpclass(nan inf) %.1223372734.i)
  %i.afk = getelementptr inbounds nuw i8, ptr %.214282738.i, i64 8
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !48
  %i.afm = insertelement <8 x float> poison, float %i.afl, i64 0
  %i.afn = shufflevector <8 x float> %i.afm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) %i.afn, <8 x float> nofpclass(nan inf) %.1223602733.i)
  %i.afp = getelementptr inbounds nuw i8, ptr %.214282738.i, i64 12
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !48
  %i.afr = insertelement <8 x float> poison, float %i.afq, i64 0
  %i.afs = shufflevector <8 x float> %i.afr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aes, <8 x float> nofpclass(nan inf) %i.afs, <8 x float> nofpclass(nan inf) %.1223812732.i)
  %i.afu = load float, ptr %.014322737.i, align 4, !tbaa !48
  %i.afv = insertelement <8 x float> poison, float %i.afu, i64 0
  %i.afw = shufflevector <8 x float> %i.afv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %i.afw, <8 x float> nofpclass(nan inf) %i.afe) ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.014322737.i, i64 4
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !48
  %i.aga = insertelement <8 x float> poison, float %i.afz, i64 0
  %i.agb = shufflevector <8 x float> %i.aga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> nofpclass(nan inf) %i.agb, <8 x float> nofpclass(nan inf) %i.afj) ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.014322737.i, i64 8
  %i.age = load float, ptr %i.agd, align 4, !tbaa !48
  %i.agf = insertelement <8 x float> poison, float %i.age, i64 0
  %i.agg = shufflevector <8 x float> %i.agf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %i.agg, <8 x float> nofpclass(nan inf) %i.afo) ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.014322737.i, i64 12
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !48
  %i.agk = insertelement <8 x float> poison, float %i.agj, i64 0
  %i.agl = shufflevector <8 x float> %i.agk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afa, <8 x float> nofpclass(nan inf) %i.agl, <8 x float> nofpclass(nan inf) %i.aft) ; 2 uses
  %i.agn = getelementptr inbounds [4 x i8], ptr %.214282738.i, i64 %i.ix
  %i.ago = getelementptr inbounds [4 x i8], ptr %.014322737.i, i64 %i.ix
  %i.agp = getelementptr inbounds nuw i8, ptr %.1213172739.i, i64 256
  %i.agq = add nuw nsw i32 %.014332736.i, 1       ; 2 uses
  %exitcond3766.not.i = icmp eq i32 %i.agq, %i.ip
  br i1 %exitcond3766.not.i, label %.loopexit2633.loopexit.i, label %.lr.ph2740.i, !llvm.loop !212

.loopexit2633.loopexit.i:                         ; preds = %.lr.ph2740.i
  %scevgep3764.i = getelementptr i8, ptr %.913142765.i, i64 256
  %scevgep3765.i = getelementptr i8, ptr %scevgep3764.i, i64 %i.jn
  br label %.loopexit2632.i

.loopexit2633.i:                                  ; preds = %.loopexit2635.i
  br i1 %i.fd, label %.preheader2631.i, label %.loopexit2632.i

.preheader2631.i:                                 ; preds = %.loopexit2633.i
  br i1 %i.iq, label %.lr.ph2754.i, label %.loopexit2632.i

.lr.ph2754.i:                                     ; preds = %.preheader2631.i, %.lr.ph2754.i
  %.1413192753.i = phi ptr [ %i.aiu, %.lr.ph2754.i ], [ %.913142765.i, %.preheader2631.i ] ; 9 uses
  %.414302752.i = phi ptr [ %i.ait, %.lr.ph2754.i ], [ %gep2776.i, %.preheader2631.i ] ; 9 uses
  %.014342751.i = phi i32 [ %i.aiv, %.lr.ph2754.i ], [ 0, %.preheader2631.i ]
  %.1523102750.i = phi <8 x float> [ %i.aid, %.lr.ph2754.i ], [ %.1023052763.i, %.preheader2631.i ]
  %.1423392749.i = phi <8 x float> [ %i.aii, %.lr.ph2754.i ], [ %.923342762.i, %.preheader2631.i ]
  %.1423622748.i = phi <8 x float> [ %i.ain, %.lr.ph2754.i ], [ %.923572761.i, %.preheader2631.i ]
  %.1423832747.i = phi <8 x float> [ %i.ais, %.lr.ph2754.i ], [ %.923782760.i, %.preheader2631.i ]
  %i.agr = load <8 x float>, ptr %.1413192753.i, align 32, !tbaa !45
  %i.ags = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 32
  %i.agt = load <8 x float>, ptr %i.ags, align 32, !tbaa !45
  %i.agu = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 64
  %i.agv = load <8 x float>, ptr %i.agu, align 32, !tbaa !45
  %i.agw = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 96
  %i.agx = load <8 x float>, ptr %i.agw, align 32, !tbaa !45
  %i.agy = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 128
  %i.agz = load <8 x float>, ptr %i.agy, align 32, !tbaa !45
  %i.aha = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 160
  %i.ahb = load <8 x float>, ptr %i.aha, align 32, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 192
  %i.ahd = load <8 x float>, ptr %i.ahc, align 32, !tbaa !45
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 224
  %i.ahf = load <8 x float>, ptr %i.ahe, align 32, !tbaa !45
  %i.ahg = load float, ptr %.414302752.i, align 4, !tbaa !48
  %i.ahh = insertelement <8 x float> poison, float %i.ahg, i64 0
  %i.ahi = shufflevector <8 x float> %i.ahh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agr, <8 x float> nofpclass(nan inf) %i.ahi, <8 x float> nofpclass(nan inf) %.1523102750.i)
  %i.ahk = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.iv
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !48
  %i.ahm = insertelement <8 x float> poison, float %i.ahl, i64 0
  %i.ahn = shufflevector <8 x float> %i.ahm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agt, <8 x float> nofpclass(nan inf) %i.ahn, <8 x float> nofpclass(nan inf) %.1423392749.i)
  %i.ahp = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.iz
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !48
  %i.ahr = insertelement <8 x float> poison, float %i.ahq, i64 0
  %i.ahs = shufflevector <8 x float> %i.ahr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aht = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agv, <8 x float> nofpclass(nan inf) %i.ahs, <8 x float> nofpclass(nan inf) %.1423622748.i)
  %i.ahu = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jb
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !48
  %i.ahw = insertelement <8 x float> poison, float %i.ahv, i64 0
  %i.ahx = shufflevector <8 x float> %i.ahw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agx, <8 x float> nofpclass(nan inf) %i.ahx, <8 x float> nofpclass(nan inf) %.1423832747.i)
  %i.ahz = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jd
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !48
  %i.aib = insertelement <8 x float> poison, float %i.aia, i64 0
  %i.aic = shufflevector <8 x float> %i.aib, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aid = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agz, <8 x float> nofpclass(nan inf) %i.aic, <8 x float> nofpclass(nan inf) %i.ahj) ; 2 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jf
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !48
  %i.aig = insertelement <8 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <8 x float> %i.aig, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aii = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahb, <8 x float> nofpclass(nan inf) %i.aih, <8 x float> nofpclass(nan inf) %i.aho) ; 2 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jh
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !48
  %i.ail = insertelement <8 x float> poison, float %i.aik, i64 0
  %i.aim = shufflevector <8 x float> %i.ail, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ain = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahd, <8 x float> nofpclass(nan inf) %i.aim, <8 x float> nofpclass(nan inf) %i.aht) ; 2 uses
  %i.aio = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jj
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !48
  %i.aiq = insertelement <8 x float> poison, float %i.aip, i64 0
  %i.air = shufflevector <8 x float> %i.aiq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ais = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahf, <8 x float> nofpclass(nan inf) %i.air, <8 x float> nofpclass(nan inf) %i.ahy) ; 2 uses
  %i.ait = getelementptr inbounds [4 x i8], ptr %.414302752.i, i64 %i.jk
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1413192753.i, i64 256
  %i.aiv = add nuw nsw i32 %.014342751.i, 1       ; 2 uses
  %exitcond3769.not.i = icmp eq i32 %i.aiv, %i.ip
  br i1 %exitcond3769.not.i, label %.loopexit2632.loopexit.i, label %.lr.ph2754.i, !llvm.loop !213

.loopexit2632.loopexit.i:                         ; preds = %.lr.ph2754.i
  %scevgep3767.i = getelementptr i8, ptr %.913142765.i, i64 256
  %scevgep3768.i = getelementptr i8, ptr %scevgep3767.i, i64 %i.jn
  br label %.loopexit2632.i

.loopexit2632.i:                                  ; preds = %.loopexit2632.loopexit.i, %.preheader2631.i, %.loopexit2633.i, %.loopexit2633.loopexit.i, %bb.s, %.loopexit2635.loopexit.i, %.preheader2634.i
  %.152384.i = phi nsz <8 x float> [ %.923782760.i, %.loopexit2633.i ], [ %.923782760.i, %.preheader2631.i ], [ %i.ais, %.loopexit2632.loopexit.i ], [ %.923782760.i, %bb.s ], [ %i.agm, %.loopexit2633.loopexit.i ], [ %i.aeh, %.loopexit2635.loopexit.i ], [ %.923782760.i, %.preheader2634.i ] ; 2 uses
  %.152363.i = phi nsz <8 x float> [ %.923572761.i, %.loopexit2633.i ], [ %.923572761.i, %.preheader2631.i ], [ %i.ain, %.loopexit2632.loopexit.i ], [ %.923572761.i, %bb.s ], [ %i.agh, %.loopexit2633.loopexit.i ], [ %i.aec, %.loopexit2635.loopexit.i ], [ %.923572761.i, %.preheader2634.i ] ; 2 uses
  %.152340.i = phi nsz <8 x float> [ %.923342762.i, %.loopexit2633.i ], [ %.923342762.i, %.preheader2631.i ], [ %i.aii, %.loopexit2632.loopexit.i ], [ %.923342762.i, %bb.s ], [ %i.agc, %.loopexit2633.loopexit.i ], [ %i.adx, %.loopexit2635.loopexit.i ], [ %.923342762.i, %.preheader2634.i ] ; 2 uses
  %.162311.i = phi nsz <8 x float> [ %.1023052763.i, %.loopexit2633.i ], [ %.1023052763.i, %.preheader2631.i ], [ %i.aid, %.loopexit2632.loopexit.i ], [ %.1023052763.i, %bb.s ], [ %i.afx, %.loopexit2633.loopexit.i ], [ %i.ads, %.loopexit2635.loopexit.i ], [ %.1023052763.i, %.preheader2634.i ] ; 2 uses
  %.151320.i = phi ptr [ %.913142765.i, %.loopexit2633.i ], [ %.913142765.i, %.preheader2631.i ], [ %scevgep3768.i, %.loopexit2632.loopexit.i ], [ %.913142765.i, %bb.s ], [ %scevgep3765.i, %.loopexit2633.loopexit.i ], [ %scevgep3762.i, %.loopexit2635.loopexit.i ], [ %.913142765.i, %.preheader2634.i ] ; 2 uses
  %i.aiw = add nuw nsw i32 %.113352764.i, 8       ; 3 uses
  %i.aix = or disjoint i32 %i.aiw, 7
  %i.aiy = icmp slt i32 %i.aix, %i.ee
  br i1 %i.aiy, label %bb.r, label %.preheader2644.i, !llvm.loop !214

.preheader2643.i:                                 ; preds = %.loopexit2628.i, %.preheader2644.i
  %.162385.lcssa.i = phi <8 x float> [ %.92378.lcssa.i, %.preheader2644.i ], [ %.202389.i, %.loopexit2628.i ]
  %.162364.lcssa.i = phi <8 x float> [ %.92357.lcssa.i, %.preheader2644.i ], [ %.202368.i, %.loopexit2628.i ]
  %.162341.lcssa.i = phi <8 x float> [ %.92334.lcssa.i, %.preheader2644.i ], [ %.202345.i, %.loopexit2628.i ] ; 3 uses
  %.172312.lcssa.i = phi <8 x float> [ %.102305.lcssa.i, %.preheader2644.i ], [ %.212316.i, %.loopexit2628.i ] ; 3 uses
  %.21336.lcssa.i = phi i32 [ %.11335.lcssa.i, %.preheader2644.i ], [ %i.ano, %.loopexit2628.i ] ; 5 uses
  %.161321.lcssa.i = phi ptr [ %.91314.lcssa.i, %.preheader2644.i ], [ %.201325.i, %.loopexit2628.i ] ; 3 uses
  %i.aiz = or disjoint i32 %.21336.lcssa.i, 1
  %i.aja = icmp slt i32 %i.aiz, %i.ee
  br i1 %i.aja, label %.lr.ph2834.i, label %.preheader2642.i

.lr.ph2834.i:                                     ; preds = %.preheader2643.i
  %i.ajb = load ptr, ptr %4, align 8, !tbaa !19
  %i.ajc = load i32, ptr %i.ag, align 4, !tbaa !55
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = load i64, ptr %i.ad, align 8, !tbaa !44
  %factor.op.mul2839.i = mul i64 %i.aje, %i.ajd
  %i.ajf = mul nsw i64 %indvars.iv3786.i, %i.ga
  %invariant.gep2841.i = getelementptr [4 x i8], ptr %i.ajb, i64 %i.ajf
  %i.ajg = load i32, ptr %i.e, align 4
  %i.ajh = sext i32 %i.ajg to i64                 ; 3 uses
  %i.aji = load i32, ptr %i.b, align 4
  %i.ajj = sext i32 %i.aji to i64                 ; 2 uses
  br i1 %i.ff, label %.lr.ph2826.us.preheader.i, label %.lr.ph2834.split.preheader.i

.lr.ph2834.split.preheader.i:                     ; preds = %.lr.ph2834.i
  %i.ajk = add nsw i32 %.21336.lcssa.i, 2
  %i.ajl = sub i32 %i.fv, %.21336.lcssa.i
  %i.ajm = and i32 %i.ajl, -2
  %i.ajn = add i32 %i.ajk, %i.ajm
  br label %.preheader2642.i

.lr.ph2826.us.preheader.i:                        ; preds = %.lr.ph2834.i
  %i.ajo = zext i32 %.21336.lcssa.i to i64
  br label %.lr.ph2826.us.i

.lr.ph2826.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph2826.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.ajo, %.lr.ph2826.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.2113262833.us.i = phi ptr [ %.161321.lcssa.i, %.lr.ph2826.us.preheader.i ], [ %scevgep3777.i, %._crit_edge.us.i ] ; 3 uses
  %.2223172831.us.i = phi <8 x float> [ %.172312.lcssa.i, %.lr.ph2826.us.preheader.i ], [ %.lcssa756, %._crit_edge.us.i ] ; 2 uses
  %.2123462830.us.i = phi <8 x float> [ %.162341.lcssa.i, %.lr.ph2826.us.preheader.i ], [ %.lcssa755, %._crit_edge.us.i ] ; 2 uses
  %.reass2840.us.i = mul i64 %factor.op.mul2839.i, %indvars.iv.i
  %gep2842.us.i = getelementptr i8, ptr %invariant.gep2841.i, i64 %.reass2840.us.i ; 2 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph2826.us.i.new

.lr.ph2826.us.i.new:                              ; preds = %.lr.ph2826.us.i, %.lr.ph2826.us.i.new
  %.2213272825.us.i = phi ptr [ %i.akq, %.lr.ph2826.us.i.new ], [ %.2113262833.us.i, %.lr.ph2826.us.i ] ; 5 uses
  %.014402824.us.i = phi ptr [ %i.akp, %.lr.ph2826.us.i.new ], [ %gep2842.us.i, %.lr.ph2826.us.i ] ; 3 uses
  %.2323182822.us.i = phi <8 x float> [ %i.akj, %.lr.ph2826.us.i.new ], [ %.2223172831.us.i, %.lr.ph2826.us.i ]
  %.2223472821.us.i = phi <8 x float> [ %i.ako, %.lr.ph2826.us.i.new ], [ %.2123462830.us.i, %.lr.ph2826.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph2826.us.i.new ], [ 0, %.lr.ph2826.us.i ]
  %i.ajp = load <8 x float>, ptr %.2213272825.us.i, align 32, !tbaa !45
  %i.ajq = getelementptr inbounds nuw i8, ptr %.2213272825.us.i, i64 32
  %i.ajr = load <8 x float>, ptr %i.ajq, align 32, !tbaa !45
  %i.ajs = load float, ptr %.014402824.us.i, align 4, !tbaa !48
  %i.ajt = insertelement <8 x float> poison, float %i.ajs, i64 0
  %i.aju = shufflevector <8 x float> %i.ajt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajp, <8 x float> nofpclass(nan inf) %i.aju, <8 x float> nofpclass(nan inf) %.2323182822.us.i)
  %i.ajw = getelementptr inbounds [4 x i8], ptr %.014402824.us.i, i64 %i.ajh
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !48
  %i.ajy = insertelement <8 x float> poison, float %i.ajx, i64 0
  %i.ajz = shufflevector <8 x float> %i.ajy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajr, <8 x float> nofpclass(nan inf) %i.ajz, <8 x float> nofpclass(nan inf) %.2223472821.us.i)
  %i.akb = getelementptr inbounds [4 x i8], ptr %.014402824.us.i, i64 %i.ajj ; 3 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.2213272825.us.i, i64 64
  %i.akd = load <8 x float>, ptr %i.akc, align 32, !tbaa !45
  %i.ake = getelementptr inbounds nuw i8, ptr %.2213272825.us.i, i64 96
  %i.akf = load <8 x float>, ptr %i.ake, align 32, !tbaa !45
  %i.akg = load float, ptr %i.akb, align 4, !tbaa !48
  %i.akh = insertelement <8 x float> poison, float %i.akg, i64 0
  %i.aki = shufflevector <8 x float> %i.akh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akd, <8 x float> nofpclass(nan inf) %i.aki, <8 x float> nofpclass(nan inf) %i.ajv) ; 3 uses
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.akb, i64 %i.ajh
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !48
  %i.akm = insertelement <8 x float> poison, float %i.akl, i64 0
  %i.akn = shufflevector <8 x float> %i.akm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ako = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akf, <8 x float> nofpclass(nan inf) %i.akn, <8 x float> nofpclass(nan inf) %i.aka) ; 3 uses
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.akb, i64 %i.ajj ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %.2213272825.us.i, i64 128 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph2826.us.i.new, !llvm.loop !215

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph2826.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph2826.us.i
  %.2213272825.us.i.epil.init = phi ptr [ %.2113262833.us.i, %.lr.ph2826.us.i ], [ %i.akq, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.014402824.us.i.epil.init = phi ptr [ %gep2842.us.i, %.lr.ph2826.us.i ], [ %i.akp, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.2323182822.us.i.epil.init = phi <8 x float> [ %.2223172831.us.i, %.lr.ph2826.us.i ], [ %i.akj, %._crit_edge.us.i.unr-lcssa ]
  %.2223472821.us.i.epil.init = phi <8 x float> [ %.2123462830.us.i, %.lr.ph2826.us.i ], [ %i.ako, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod761)
  %i.akr = load <8 x float>, ptr %.2213272825.us.i.epil.init, align 32, !tbaa !45
  %i.aks = getelementptr inbounds nuw i8, ptr %.2213272825.us.i.epil.init, i64 32
  %i.akt = load <8 x float>, ptr %i.aks, align 32, !tbaa !45
  %i.aku = load float, ptr %.014402824.us.i.epil.init, align 4, !tbaa !48
  %i.akv = insertelement <8 x float> poison, float %i.aku, i64 0
  %i.akw = shufflevector <8 x float> %i.akv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akr, <8 x float> nofpclass(nan inf) %i.akw, <8 x float> nofpclass(nan inf) %.2323182822.us.i.epil.init)
  %i.aky = getelementptr inbounds [4 x i8], ptr %.014402824.us.i.epil.init, i64 %i.ajh
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !48
  %i.ala = insertelement <8 x float> poison, float %i.akz, i64 0
  %i.alb = shufflevector <8 x float> %i.ala, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akt, <8 x float> nofpclass(nan inf) %i.alb, <8 x float> nofpclass(nan inf) %.2223472821.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa756 = phi <8 x float> [ %i.akj, %._crit_edge.us.i.unr-lcssa ], [ %i.akx, %.epil.preheader ] ; 2 uses
  %.lcssa755 = phi <8 x float> [ %i.ako, %._crit_edge.us.i.unr-lcssa ], [ %i.alc, %.epil.preheader ] ; 2 uses
  %scevgep3776.i = getelementptr i8, ptr %.2113262833.us.i, i64 64
  %scevgep3777.i = getelementptr i8, ptr %scevgep3776.i, i64 %i.fy ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ald = trunc i64 %indvars.iv.next.i to i32    ; 2 uses
  %i.ale = or i32 %i.ald, 1
  %i.alf = icmp slt i32 %i.ale, %i.ee
  br i1 %i.alf, label %.lr.ph2826.us.i, label %.preheader2642.i, !llvm.loop !216

bb.t:                                             ; preds = %.loopexit2628.i, %.lr.ph2810.i
  %.1613212809.i = phi ptr [ %.91314.lcssa.i, %.lr.ph2810.i ], [ %.201325.i, %.loopexit2628.i ] ; 7 uses
  %.213362808.i = phi i32 [ %.11335.lcssa.i, %.lr.ph2810.i ], [ %i.ano, %.loopexit2628.i ] ; 2 uses
  %.1723122807.i = phi <8 x float> [ %.102305.lcssa.i, %.lr.ph2810.i ], [ %.212316.i, %.loopexit2628.i ] ; 5 uses
  %.1623412806.i = phi <8 x float> [ %.92334.lcssa.i, %.lr.ph2810.i ], [ %.202345.i, %.loopexit2628.i ] ; 5 uses
  %.1623642805.i = phi <8 x float> [ %.92357.lcssa.i, %.lr.ph2810.i ], [ %.202368.i, %.loopexit2628.i ] ; 5 uses
  %.1623852804.i = phi <8 x float> [ %.92378.lcssa.i, %.lr.ph2810.i ], [ %.202389.i, %.loopexit2628.i ] ; 5 uses
  %i.alg = sdiv i32 %.213362808.i, %i.ec
  %i.alh = sext i32 %i.alg to i64
  %.reass2818.i = mul i64 %factor.op.mul2817.i, %i.alh
  %gep2820.i = getelementptr i8, ptr %invariant.gep2819.i, i64 %.reass2818.i ; 2 uses
  br i1 %i.fc, label %.preheader2629.i, label %.loopexit2630.i

.preheader2629.i:                                 ; preds = %bb.t
  br i1 %i.abq, label %.lr.ph2784.i, label %.loopexit2628.i

.lr.ph2784.i:                                     ; preds = %.preheader2629.i, %.lr.ph2784.i
  %.1713222783.i = phi ptr [ %i.amj, %.lr.ph2784.i ], [ %.1613212809.i, %.preheader2629.i ] ; 5 uses
  %.014352782.i = phi ptr [ %i.ami, %.lr.ph2784.i ], [ %gep2820.i, %.preheader2629.i ] ; 5 uses
  %.014382781.i = phi i32 [ %i.amk, %.lr.ph2784.i ], [ 0, %.preheader2629.i ]
  %.1823132780.i = phi <8 x float> [ %i.als, %.lr.ph2784.i ], [ %.1723122807.i, %.preheader2629.i ]
  %.1723422779.i = phi <8 x float> [ %i.alx, %.lr.ph2784.i ], [ %.1623412806.i, %.preheader2629.i ]
  %.1723652778.i = phi <8 x float> [ %i.amc, %.lr.ph2784.i ], [ %.1623642805.i, %.preheader2629.i ]
  %.1723862777.i = phi <8 x float> [ %i.amh, %.lr.ph2784.i ], [ %.1623852804.i, %.preheader2629.i ]
  %i.ali = load <8 x float>, ptr %.1713222783.i, align 32, !tbaa !45
  %i.alj = getelementptr inbounds nuw i8, ptr %.1713222783.i, i64 32
  %i.alk = load <8 x float>, ptr %i.alj, align 32, !tbaa !45
  %i.all = getelementptr inbounds nuw i8, ptr %.1713222783.i, i64 64
  %i.alm = load <8 x float>, ptr %i.all, align 32, !tbaa !45
  %i.aln = getelementptr inbounds nuw i8, ptr %.1713222783.i, i64 96
  %i.alo = load <8 x float>, ptr %i.aln, align 32, !tbaa !45
  %i.alp = load float, ptr %.014352782.i, align 4, !tbaa !48
  %i.alq = insertelement <8 x float> poison, float %i.alp, i64 0
  %i.alr = shufflevector <8 x float> %i.alq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.als = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ali, <8 x float> nofpclass(nan inf) %i.alr, <8 x float> nofpclass(nan inf) %.1823132780.i) ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.014352782.i, i64 4
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !48
  %i.alv = insertelement <8 x float> poison, float %i.alu, i64 0
  %i.alw = shufflevector <8 x float> %i.alv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alk, <8 x float> nofpclass(nan inf) %i.alw, <8 x float> nofpclass(nan inf) %.1723422779.i) ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.014352782.i, i64 8
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !48
  %i.ama = insertelement <8 x float> poison, float %i.alz, i64 0
  %i.amb = shufflevector <8 x float> %i.ama, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alm, <8 x float> nofpclass(nan inf) %i.amb, <8 x float> nofpclass(nan inf) %.1723652778.i) ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.014352782.i, i64 12
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !48
  %i.amf = insertelement <8 x float> poison, float %i.ame, i64 0
  %i.amg = shufflevector <8 x float> %i.amf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alo, <8 x float> nofpclass(nan inf) %i.amg, <8 x float> nofpclass(nan inf) %.1723862777.i) ; 2 uses
  %i.ami = getelementptr inbounds [4 x i8], ptr %.014352782.i, i64 %i.abt
  %i.amj = getelementptr inbounds nuw i8, ptr %.1713222783.i, i64 128
  %i.amk = add nuw nsw i32 %.014382781.i, 1       ; 2 uses
  %exitcond3772.not.i = icmp eq i32 %i.amk, %i.abp
  br i1 %exitcond3772.not.i, label %.loopexit2630.loopexit.i, label %.lr.ph2784.i, !llvm.loop !217

.loopexit2630.loopexit.i:                         ; preds = %.lr.ph2784.i
  %scevgep3770.i = getelementptr i8, ptr %.1613212809.i, i64 128
  %scevgep3771.i = getelementptr i8, ptr %scevgep3770.i, i64 %i.acd
  br label %.loopexit2628.i

.loopexit2630.i:                                  ; preds = %bb.t
  br i1 %i.fd, label %.preheader2627.i, label %.loopexit2628.i

.preheader2627.i:                                 ; preds = %.loopexit2630.i
  br i1 %i.abq, label %.lr.ph2798.i, label %.loopexit2628.i

.lr.ph2798.i:                                     ; preds = %.preheader2627.i, %.lr.ph2798.i
  %.1913242797.i = phi ptr [ %i.anm, %.lr.ph2798.i ], [ %.1613212809.i, %.preheader2627.i ] ; 5 uses
  %.214372796.i = phi ptr [ %i.anl, %.lr.ph2798.i ], [ %gep2820.i, %.preheader2627.i ] ; 5 uses
  %.014392795.i = phi i32 [ %i.ann, %.lr.ph2798.i ], [ 0, %.preheader2627.i ]
  %.2023152794.i = phi <8 x float> [ %i.amv, %.lr.ph2798.i ], [ %.1723122807.i, %.preheader2627.i ]
  %.1923442793.i = phi <8 x float> [ %i.ana, %.lr.ph2798.i ], [ %.1623412806.i, %.preheader2627.i ]
  %.1923672792.i = phi <8 x float> [ %i.anf, %.lr.ph2798.i ], [ %.1623642805.i, %.preheader2627.i ]
  %.1923882791.i = phi <8 x float> [ %i.ank, %.lr.ph2798.i ], [ %.1623852804.i, %.preheader2627.i ]
  %i.aml = load <8 x float>, ptr %.1913242797.i, align 32, !tbaa !45
  %i.amm = getelementptr inbounds nuw i8, ptr %.1913242797.i, i64 32
  %i.amn = load <8 x float>, ptr %i.amm, align 32, !tbaa !45
  %i.amo = getelementptr inbounds nuw i8, ptr %.1913242797.i, i64 64
  %i.amp = load <8 x float>, ptr %i.amo, align 32, !tbaa !45
  %i.amq = getelementptr inbounds nuw i8, ptr %.1913242797.i, i64 96
  %i.amr = load <8 x float>, ptr %i.amq, align 32, !tbaa !45
  %i.ams = load float, ptr %.214372796.i, align 4, !tbaa !48
  %i.amt = insertelement <8 x float> poison, float %i.ams, i64 0
  %i.amu = shufflevector <8 x float> %i.amt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %i.amu, <8 x float> nofpclass(nan inf) %.2023152794.i) ; 2 uses
  %i.amw = getelementptr inbounds [4 x i8], ptr %.214372796.i, i64 %i.abv
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !48
  %i.amy = insertelement <8 x float> poison, float %i.amx, i64 0
  %i.amz = shufflevector <8 x float> %i.amy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ana = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amn, <8 x float> nofpclass(nan inf) %i.amz, <8 x float> nofpclass(nan inf) %.1923442793.i) ; 2 uses
  %i.anb = getelementptr inbounds [4 x i8], ptr %.214372796.i, i64 %i.abx
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !48
  %i.and = insertelement <8 x float> poison, float %i.anc, i64 0
  %i.ane = shufflevector <8 x float> %i.and, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amp, <8 x float> nofpclass(nan inf) %i.ane, <8 x float> nofpclass(nan inf) %.1923672792.i) ; 2 uses
  %i.ang = getelementptr inbounds [4 x i8], ptr %.214372796.i, i64 %i.abz
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !48
  %i.ani = insertelement <8 x float> poison, float %i.anh, i64 0
  %i.anj = shufflevector <8 x float> %i.ani, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ank = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amr, <8 x float> nofpclass(nan inf) %i.anj, <8 x float> nofpclass(nan inf) %.1923882791.i) ; 2 uses
  %i.anl = getelementptr inbounds [4 x i8], ptr %.214372796.i, i64 %i.aca
  %i.anm = getelementptr inbounds nuw i8, ptr %.1913242797.i, i64 128
  %i.ann = add nuw nsw i32 %.014392795.i, 1       ; 2 uses
  %exitcond3775.not.i = icmp eq i32 %i.ann, %i.abp
  br i1 %exitcond3775.not.i, label %.loopexit2628.loopexit.i, label %.lr.ph2798.i, !llvm.loop !218

.loopexit2628.loopexit.i:                         ; preds = %.lr.ph2798.i
  %scevgep3773.i = getelementptr i8, ptr %.1613212809.i, i64 128
  %scevgep3774.i = getelementptr i8, ptr %scevgep3773.i, i64 %i.acd
end_hunk_5
begin_hunk_6_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
.loopexit2616.i:                                  ; preds = %bb.ai
  br i1 %i.axv, label %bb.aj, label %.loopexit2614.i

bb.aj:                                            ; preds = %.loopexit2616.i
  br i1 %i.bbb, label %.lr.ph2981.preheader.i, label %.loopexit2613.i

.lr.ph2981.preheader.i:                           ; preds = %bb.aj
  %i.bww = getelementptr inbounds [4 x i8], ptr %gep3017.i, i64 %i.bbg
  br label %.lr.ph2981.i

.lr.ph2981.i:                                     ; preds = %.lr.ph2981.i, %.lr.ph2981.preheader.i
  %.014142979.i = phi i32 [ %i.bzb, %.lr.ph2981.i ], [ 0, %.lr.ph2981.preheader.i ]
  %.014152978.i = phi ptr [ %i.byz, %.lr.ph2981.i ], [ %i.bww, %.lr.ph2981.preheader.i ] ; 5 uses
  %.214192977.i = phi ptr [ %i.byy, %.lr.ph2981.i ], [ %gep3017.i, %.lr.ph2981.preheader.i ] ; 5 uses
  %.1214622976.i = phi ptr [ %i.bza, %.lr.ph2981.i ], [ %.914593006.i, %.lr.ph2981.preheader.i ] ; 9 uses
  %.1324192975.i = phi <4 x float> [ %i.byi, %.lr.ph2981.i ], [ %.1024163004.i, %.lr.ph2981.preheader.i ]
  %.1224442974.i = phi <4 x float> [ %i.byn, %.lr.ph2981.i ], [ %.924413003.i, %.lr.ph2981.preheader.i ]
  %.1224672973.i = phi <4 x float> [ %i.bys, %.lr.ph2981.i ], [ %.924643002.i, %.lr.ph2981.preheader.i ]
  %.1224882972.i = phi <4 x float> [ %i.byx, %.lr.ph2981.i ], [ %.924853001.i, %.lr.ph2981.preheader.i ]
  %i.bwx = load <4 x float>, ptr %.1214622976.i, align 16, !tbaa !45
  %i.bwy = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 16
  %i.bwz = load <4 x float>, ptr %i.bwy, align 16, !tbaa !45
  %i.bxa = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 32
  %i.bxb = load <4 x float>, ptr %i.bxa, align 16, !tbaa !45
  %i.bxc = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 48
  %i.bxd = load <4 x float>, ptr %i.bxc, align 16, !tbaa !45
  %i.bxe = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 64
  %i.bxf = load <4 x float>, ptr %i.bxe, align 16, !tbaa !45
  %i.bxg = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 80
  %i.bxh = load <4 x float>, ptr %i.bxg, align 16, !tbaa !45
  %i.bxi = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 96
  %i.bxj = load <4 x float>, ptr %i.bxi, align 16, !tbaa !45
  %i.bxk = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 112
  %i.bxl = load <4 x float>, ptr %i.bxk, align 16, !tbaa !45
  %i.bxm = load float, ptr %.214192977.i, align 4, !tbaa !48
  %i.bxn = insertelement <4 x float> poison, float %i.bxm, i64 0
  %i.bxo = shufflevector <4 x float> %i.bxn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwx, <4 x float> nofpclass(nan inf) %i.bxo, <4 x float> nofpclass(nan inf) %.1324192975.i)
  %i.bxq = getelementptr inbounds nuw i8, ptr %.214192977.i, i64 4
  %i.bxr = load float, ptr %i.bxq, align 4, !tbaa !48
  %i.bxs = insertelement <4 x float> poison, float %i.bxr, i64 0
  %i.bxt = shufflevector <4 x float> %i.bxs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwz, <4 x float> nofpclass(nan inf) %i.bxt, <4 x float> nofpclass(nan inf) %.1224442974.i)
  %i.bxv = getelementptr inbounds nuw i8, ptr %.214192977.i, i64 8
  %i.bxw = load float, ptr %i.bxv, align 4, !tbaa !48
  %i.bxx = insertelement <4 x float> poison, float %i.bxw, i64 0
  %i.bxy = shufflevector <4 x float> %i.bxx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxb, <4 x float> nofpclass(nan inf) %i.bxy, <4 x float> nofpclass(nan inf) %.1224672973.i)
  %i.bya = getelementptr inbounds nuw i8, ptr %.214192977.i, i64 12
  %i.byb = load float, ptr %i.bya, align 4, !tbaa !48
  %i.byc = insertelement <4 x float> poison, float %i.byb, i64 0
  %i.byd = shufflevector <4 x float> %i.byc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxd, <4 x float> nofpclass(nan inf) %i.byd, <4 x float> nofpclass(nan inf) %.1224882972.i)
  %i.byf = load float, ptr %.014152978.i, align 4, !tbaa !48
  %i.byg = insertelement <4 x float> poison, float %i.byf, i64 0
  %i.byh = shufflevector <4 x float> %i.byg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxf, <4 x float> nofpclass(nan inf) %i.byh, <4 x float> nofpclass(nan inf) %i.bxp) ; 2 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %.014152978.i, i64 4
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !48
  %i.byl = insertelement <4 x float> poison, float %i.byk, i64 0
  %i.bym = shufflevector <4 x float> %i.byl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxh, <4 x float> nofpclass(nan inf) %i.bym, <4 x float> nofpclass(nan inf) %i.bxu) ; 2 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %.014152978.i, i64 8
  %i.byp = load float, ptr %i.byo, align 4, !tbaa !48
  %i.byq = insertelement <4 x float> poison, float %i.byp, i64 0
  %i.byr = shufflevector <4 x float> %i.byq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bys = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxj, <4 x float> nofpclass(nan inf) %i.byr, <4 x float> nofpclass(nan inf) %i.bxz) ; 2 uses
  %i.byt = getelementptr inbounds nuw i8, ptr %.014152978.i, i64 12
  %i.byu = load float, ptr %i.byt, align 4, !tbaa !48
  %i.byv = insertelement <4 x float> poison, float %i.byu, i64 0
  %i.byw = shufflevector <4 x float> %i.byv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxl, <4 x float> nofpclass(nan inf) %i.byw, <4 x float> nofpclass(nan inf) %i.bye) ; 2 uses
  %i.byy = getelementptr inbounds [4 x i8], ptr %.214192977.i, i64 %i.bbi
  %i.byz = getelementptr inbounds [4 x i8], ptr %.014152978.i, i64 %i.bbi
  %i.bza = getelementptr inbounds nuw i8, ptr %.1214622976.i, i64 128
  %i.bzb = add nuw nsw i32 %.014142979.i, 1       ; 2 uses
  %exitcond3812.not.i = icmp eq i32 %i.bzb, %i.bba
  br i1 %exitcond3812.not.i, label %.loopexit2614.loopexit.i, label %.lr.ph2981.i, !llvm.loop !235

.loopexit2614.loopexit.i:                         ; preds = %.lr.ph2981.i
  %scevgep3810.i = getelementptr i8, ptr %.914593006.i, i64 128
  %scevgep3811.i = getelementptr i8, ptr %scevgep3810.i, i64 %i.bby
  br label %.loopexit2613.i

.loopexit2614.i:                                  ; preds = %.loopexit2616.i
  br i1 %i.axw, label %.preheader2612.i, label %.loopexit2613.i

.preheader2612.i:                                 ; preds = %.loopexit2614.i
  br i1 %i.bbb, label %.lr.ph2995.i, label %.loopexit2613.i

.lr.ph2995.i:                                     ; preds = %.preheader2612.i, %.lr.ph2995.i
  %.014132994.i = phi i32 [ %i.cbg, %.lr.ph2995.i ], [ 0, %.preheader2612.i ]
  %.414212993.i = phi ptr [ %i.cbe, %.lr.ph2995.i ], [ %gep3017.i, %.preheader2612.i ] ; 9 uses
  %.1414642992.i = phi ptr [ %i.cbf, %.lr.ph2995.i ], [ %.914593006.i, %.preheader2612.i ] ; 9 uses
  %.1524212991.i = phi <4 x float> [ %i.cao, %.lr.ph2995.i ], [ %.1024163004.i, %.preheader2612.i ]
  %.1424462990.i = phi <4 x float> [ %i.cat, %.lr.ph2995.i ], [ %.924413003.i, %.preheader2612.i ]
  %.1424692989.i = phi <4 x float> [ %i.cay, %.lr.ph2995.i ], [ %.924643002.i, %.preheader2612.i ]
  %.1424902988.i = phi <4 x float> [ %i.cbd, %.lr.ph2995.i ], [ %.924853001.i, %.preheader2612.i ]
  %i.bzc = load <4 x float>, ptr %.1414642992.i, align 16, !tbaa !45
  %i.bzd = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 16
  %i.bze = load <4 x float>, ptr %i.bzd, align 16, !tbaa !45
  %i.bzf = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 32
  %i.bzg = load <4 x float>, ptr %i.bzf, align 16, !tbaa !45
  %i.bzh = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 48
  %i.bzi = load <4 x float>, ptr %i.bzh, align 16, !tbaa !45
  %i.bzj = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 64
  %i.bzk = load <4 x float>, ptr %i.bzj, align 16, !tbaa !45
  %i.bzl = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 80
  %i.bzm = load <4 x float>, ptr %i.bzl, align 16, !tbaa !45
  %i.bzn = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 96
  %i.bzo = load <4 x float>, ptr %i.bzn, align 16, !tbaa !45
  %i.bzp = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 112
  %i.bzq = load <4 x float>, ptr %i.bzp, align 16, !tbaa !45
  %i.bzr = load float, ptr %.414212993.i, align 4, !tbaa !48
  %i.bzs = insertelement <4 x float> poison, float %i.bzr, i64 0
  %i.bzt = shufflevector <4 x float> %i.bzs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzc, <4 x float> nofpclass(nan inf) %i.bzt, <4 x float> nofpclass(nan inf) %.1524212991.i)
  %i.bzv = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbg
  %i.bzw = load float, ptr %i.bzv, align 4, !tbaa !48
  %i.bzx = insertelement <4 x float> poison, float %i.bzw, i64 0
  %i.bzy = shufflevector <4 x float> %i.bzx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bze, <4 x float> nofpclass(nan inf) %i.bzy, <4 x float> nofpclass(nan inf) %.1424462990.i)
  %i.caa = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbk
  %i.cab = load float, ptr %i.caa, align 4, !tbaa !48
  %i.cac = insertelement <4 x float> poison, float %i.cab, i64 0
  %i.cad = shufflevector <4 x float> %i.cac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cae = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzg, <4 x float> nofpclass(nan inf) %i.cad, <4 x float> nofpclass(nan inf) %.1424692989.i)
  %i.caf = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbm
  %i.cag = load float, ptr %i.caf, align 4, !tbaa !48
  %i.cah = insertelement <4 x float> poison, float %i.cag, i64 0
  %i.cai = shufflevector <4 x float> %i.cah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.caj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzi, <4 x float> nofpclass(nan inf) %i.cai, <4 x float> nofpclass(nan inf) %.1424902988.i)
  %i.cak = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbo
  %i.cal = load float, ptr %i.cak, align 4, !tbaa !48
  %i.cam = insertelement <4 x float> poison, float %i.cal, i64 0
  %i.can = shufflevector <4 x float> %i.cam, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzk, <4 x float> nofpclass(nan inf) %i.can, <4 x float> nofpclass(nan inf) %i.bzu) ; 2 uses
  %i.cap = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbq
  %i.caq = load float, ptr %i.cap, align 4, !tbaa !48
  %i.car = insertelement <4 x float> poison, float %i.caq, i64 0
  %i.cas = shufflevector <4 x float> %i.car, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cat = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzm, <4 x float> nofpclass(nan inf) %i.cas, <4 x float> nofpclass(nan inf) %i.bzz) ; 2 uses
  %i.cau = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbs
  %i.cav = load float, ptr %i.cau, align 4, !tbaa !48
  %i.caw = insertelement <4 x float> poison, float %i.cav, i64 0
  %i.cax = shufflevector <4 x float> %i.caw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cay = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzo, <4 x float> nofpclass(nan inf) %i.cax, <4 x float> nofpclass(nan inf) %i.cae) ; 2 uses
  %i.caz = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbu
  %i.cba = load float, ptr %i.caz, align 4, !tbaa !48
  %i.cbb = insertelement <4 x float> poison, float %i.cba, i64 0
  %i.cbc = shufflevector <4 x float> %i.cbb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cbd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzq, <4 x float> nofpclass(nan inf) %i.cbc, <4 x float> nofpclass(nan inf) %i.caj) ; 2 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %.414212993.i, i64 %i.bbv
  %i.cbf = getelementptr inbounds nuw i8, ptr %.1414642992.i, i64 128
  %i.cbg = add nuw nsw i32 %.014132994.i, 1       ; 2 uses
  %exitcond3815.not.i = icmp eq i32 %i.cbg, %i.bba
  br i1 %exitcond3815.not.i, label %.loopexit2613.loopexit.i, label %.lr.ph2995.i, !llvm.loop !236

.loopexit2613.loopexit.i:                         ; preds = %.lr.ph2995.i
  %scevgep3813.i = getelementptr i8, ptr %.914593006.i, i64 128
  %scevgep3814.i = getelementptr i8, ptr %scevgep3813.i, i64 %i.bby
  br label %.loopexit2613.i

.loopexit2613.i:                                  ; preds = %.loopexit2613.loopexit.i, %.preheader2612.i, %.loopexit2614.i, %.loopexit2614.loopexit.i, %bb.aj, %.loopexit2616.loopexit.i, %.preheader2615.i
  %.152491.i = phi nsz <4 x float> [ %.924853001.i, %.loopexit2614.i ], [ %.924853001.i, %.preheader2612.i ], [ %i.cbd, %.loopexit2613.loopexit.i ], [ %.924853001.i, %bb.aj ], [ %i.byx, %.loopexit2614.loopexit.i ], [ %i.bws, %.loopexit2616.loopexit.i ], [ %.924853001.i, %.preheader2615.i ] ; 2 uses
  %.152470.i = phi nsz <4 x float> [ %.924643002.i, %.loopexit2614.i ], [ %.924643002.i, %.preheader2612.i ], [ %i.cay, %.loopexit2613.loopexit.i ], [ %.924643002.i, %bb.aj ], [ %i.bys, %.loopexit2614.loopexit.i ], [ %i.bwn, %.loopexit2616.loopexit.i ], [ %.924643002.i, %.preheader2615.i ] ; 2 uses
  %.152447.i = phi nsz <4 x float> [ %.924413003.i, %.loopexit2614.i ], [ %.924413003.i, %.preheader2612.i ], [ %i.cat, %.loopexit2613.loopexit.i ], [ %.924413003.i, %bb.aj ], [ %i.byn, %.loopexit2614.loopexit.i ], [ %i.bwi, %.loopexit2616.loopexit.i ], [ %.924413003.i, %.preheader2615.i ] ; 2 uses
  %.162422.i = phi nsz <4 x float> [ %.1024163004.i, %.loopexit2614.i ], [ %.1024163004.i, %.preheader2612.i ], [ %i.cao, %.loopexit2613.loopexit.i ], [ %.1024163004.i, %bb.aj ], [ %i.byi, %.loopexit2614.loopexit.i ], [ %i.bwd, %.loopexit2616.loopexit.i ], [ %.1024163004.i, %.preheader2615.i ] ; 2 uses
  %.151465.i = phi ptr [ %.914593006.i, %.loopexit2614.i ], [ %.914593006.i, %.preheader2612.i ], [ %scevgep3814.i, %.loopexit2613.loopexit.i ], [ %.914593006.i, %bb.aj ], [ %scevgep3811.i, %.loopexit2614.loopexit.i ], [ %scevgep3808.i, %.loopexit2616.loopexit.i ], [ %.914593006.i, %.preheader2615.i ] ; 2 uses
  %i.cbh = add nuw nsw i32 %.114763005.i, 8       ; 3 uses
  %i.cbi = or disjoint i32 %i.cbh, 7
  %i.cbj = icmp slt i32 %i.cbi, %i.awr
  br i1 %i.cbj, label %bb.ai, label %.preheader2625.i, !llvm.loop !237

.preheader2624.i:                                 ; preds = %.loopexit2609.i, %.preheader2625.i
  %.162492.lcssa.i = phi <4 x float> [ %.92485.lcssa.i, %.preheader2625.i ], [ %.202496.i, %.loopexit2609.i ]
  %.162471.lcssa.i = phi <4 x float> [ %.92464.lcssa.i, %.preheader2625.i ], [ %.202475.i, %.loopexit2609.i ]
  %.162448.lcssa.i = phi <4 x float> [ %.92441.lcssa.i, %.preheader2625.i ], [ %.202452.i, %.loopexit2609.i ] ; 3 uses
  %.172423.lcssa.i = phi <4 x float> [ %.102416.lcssa.i, %.preheader2625.i ], [ %.212427.i, %.loopexit2609.i ] ; 3 uses
  %.21477.lcssa.i = phi i32 [ %.11476.lcssa.i, %.preheader2625.i ], [ %i.cfz, %.loopexit2609.i ] ; 5 uses
  %.161466.lcssa.i = phi ptr [ %.91459.lcssa.i, %.preheader2625.i ], [ %.201470.i, %.loopexit2609.i ] ; 3 uses
  %i.cbk = or disjoint i32 %.21477.lcssa.i, 1
  %i.cbl = icmp slt i32 %i.cbk, %i.awr
  br i1 %i.cbl, label %.lr.ph3077.i, label %.preheader2623.i

.lr.ph3077.i:                                     ; preds = %.preheader2624.i
  %i.cbm = load ptr, ptr %4, align 8, !tbaa !19
  %i.cbn = load i32, ptr %i.ag, align 4, !tbaa !55
  %i.cbo = sext i32 %i.cbn to i64
  %i.cbp = load i64, ptr %i.ad, align 8, !tbaa !44
  %factor.op.mul3082.i = mul i64 %i.cbp, %i.cbo
  %i.cbq = mul nsw i64 %indvars.iv3834.i, %i.ayl
  %invariant.gep3084.i = getelementptr [4 x i8], ptr %i.cbm, i64 %i.cbq
  %i.cbr = load i32, ptr %i.e, align 4
  %i.cbs = sext i32 %i.cbr to i64                 ; 3 uses
  %i.cbt = load i32, ptr %i.b, align 4
  %i.cbu = sext i32 %i.cbt to i64                 ; 2 uses
  br i1 %i.axy, label %.lr.ph3068.us.preheader.i, label %.lr.ph3077.split.preheader.i

.lr.ph3077.split.preheader.i:                     ; preds = %.lr.ph3077.i
  %i.cbv = add nsw i32 %.21477.lcssa.i, 2
  %i.cbw = sub i32 %i.ayg, %.21477.lcssa.i
  %i.cbx = and i32 %i.cbw, -2
  %i.cby = add i32 %i.cbv, %i.cbx
  br label %.preheader2623.i

.lr.ph3068.us.preheader.i:                        ; preds = %.lr.ph3077.i
  %i.cbz = zext i32 %.21477.lcssa.i to i64
  br label %.lr.ph3068.us.i

.lr.ph3068.us.i:                                  ; preds = %._crit_edge3069.us.i, %.lr.ph3068.us.preheader.i
  %indvars.iv3825.i = phi i64 [ %i.cbz, %.lr.ph3068.us.preheader.i ], [ %indvars.iv.next3826.i, %._crit_edge3069.us.i ] ; 2 uses
  %.2114713076.us.i = phi ptr [ %.161466.lcssa.i, %.lr.ph3068.us.preheader.i ], [ %scevgep3823.i, %._crit_edge3069.us.i ] ; 3 uses
  %.2224283074.us.i = phi <4 x float> [ %.172423.lcssa.i, %.lr.ph3068.us.preheader.i ], [ %.lcssa714, %._crit_edge3069.us.i ] ; 2 uses
  %.2124533073.us.i = phi <4 x float> [ %.162448.lcssa.i, %.lr.ph3068.us.preheader.i ], [ %.lcssa713, %._crit_edge3069.us.i ] ; 2 uses
  %.reass3083.us.i = mul i64 %factor.op.mul3082.i, %indvars.iv3825.i
  %gep3085.us.i = getelementptr i8, ptr %invariant.gep3084.i, i64 %.reass3083.us.i ; 2 uses
  br i1 %i.aym, label %.epil.preheader769, label %.lr.ph3068.us.i.new

.lr.ph3068.us.i.new:                              ; preds = %.lr.ph3068.us.i, %.lr.ph3068.us.i.new
  %.014073065.us.i = phi ptr [ %i.cda, %.lr.ph3068.us.i.new ], [ %gep3085.us.i, %.lr.ph3068.us.i ] ; 3 uses
  %.2214723064.us.i = phi ptr [ %i.cdb, %.lr.ph3068.us.i.new ], [ %.2114713076.us.i, %.lr.ph3068.us.i ] ; 5 uses
  %.2324293063.us.i = phi <4 x float> [ %i.ccu, %.lr.ph3068.us.i.new ], [ %.2224283074.us.i, %.lr.ph3068.us.i ]
  %.2224543062.us.i = phi <4 x float> [ %i.ccz, %.lr.ph3068.us.i.new ], [ %.2124533073.us.i, %.lr.ph3068.us.i ]
  %niter777 = phi i32 [ %niter777.next.1, %.lr.ph3068.us.i.new ], [ 0, %.lr.ph3068.us.i ]
  %i.cca = load <4 x float>, ptr %.2214723064.us.i, align 16, !tbaa !45
  %i.ccb = getelementptr inbounds nuw i8, ptr %.2214723064.us.i, i64 16
  %i.ccc = load <4 x float>, ptr %i.ccb, align 16, !tbaa !45
  %i.ccd = load float, ptr %.014073065.us.i, align 4, !tbaa !48
  %i.cce = insertelement <4 x float> poison, float %i.ccd, i64 0
  %i.ccf = shufflevector <4 x float> %i.cce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cca, <4 x float> nofpclass(nan inf) %i.ccf, <4 x float> nofpclass(nan inf) %.2324293063.us.i)
  %i.cch = getelementptr inbounds [4 x i8], ptr %.014073065.us.i, i64 %i.cbs
  %i.cci = load float, ptr %i.cch, align 4, !tbaa !48
  %i.ccj = insertelement <4 x float> poison, float %i.cci, i64 0
  %i.cck = shufflevector <4 x float> %i.ccj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccc, <4 x float> nofpclass(nan inf) %i.cck, <4 x float> nofpclass(nan inf) %.2224543062.us.i)
  %i.ccm = getelementptr inbounds [4 x i8], ptr %.014073065.us.i, i64 %i.cbu ; 3 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %.2214723064.us.i, i64 32
  %i.cco = load <4 x float>, ptr %i.ccn, align 16, !tbaa !45
  %i.ccp = getelementptr inbounds nuw i8, ptr %.2214723064.us.i, i64 48
  %i.ccq = load <4 x float>, ptr %i.ccp, align 16, !tbaa !45
  %i.ccr = load float, ptr %i.ccm, align 4, !tbaa !48
  %i.ccs = insertelement <4 x float> poison, float %i.ccr, i64 0
  %i.cct = shufflevector <4 x float> %i.ccs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cco, <4 x float> nofpclass(nan inf) %i.cct, <4 x float> nofpclass(nan inf) %i.ccg) ; 3 uses
  %i.ccv = getelementptr inbounds [4 x i8], ptr %i.ccm, i64 %i.cbs
  %i.ccw = load float, ptr %i.ccv, align 4, !tbaa !48
  %i.ccx = insertelement <4 x float> poison, float %i.ccw, i64 0
  %i.ccy = shufflevector <4 x float> %i.ccx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccq, <4 x float> nofpclass(nan inf) %i.ccy, <4 x float> nofpclass(nan inf) %i.ccl) ; 3 uses
  %i.cda = getelementptr inbounds [4 x i8], ptr %i.ccm, i64 %i.cbu ; 2 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %.2214723064.us.i, i64 64 ; 2 uses
  %niter777.next.1 = add nuw nsw i32 %niter777, 2 ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %._crit_edge3069.us.i.unr-lcssa, label %.lr.ph3068.us.i.new, !llvm.loop !238

._crit_edge3069.us.i.unr-lcssa:                   ; preds = %.lr.ph3068.us.i.new
  br i1 %lcmp.mod772.not, label %._crit_edge3069.us.i, label %.epil.preheader769

.epil.preheader769:                               ; preds = %._crit_edge3069.us.i.unr-lcssa, %.lr.ph3068.us.i
  %.014073065.us.i.epil.init = phi ptr [ %gep3085.us.i, %.lr.ph3068.us.i ], [ %i.cda, %._crit_edge3069.us.i.unr-lcssa ] ; 2 uses
  %.2214723064.us.i.epil.init = phi ptr [ %.2114713076.us.i, %.lr.ph3068.us.i ], [ %i.cdb, %._crit_edge3069.us.i.unr-lcssa ] ; 2 uses
  %.2324293063.us.i.epil.init = phi <4 x float> [ %.2224283074.us.i, %.lr.ph3068.us.i ], [ %i.ccu, %._crit_edge3069.us.i.unr-lcssa ]
  %.2224543062.us.i.epil.init = phi <4 x float> [ %.2124533073.us.i, %.lr.ph3068.us.i ], [ %i.ccz, %._crit_edge3069.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod775)
  %i.cdc = load <4 x float>, ptr %.2214723064.us.i.epil.init, align 16, !tbaa !45
  %i.cdd = getelementptr inbounds nuw i8, ptr %.2214723064.us.i.epil.init, i64 16
  %i.cde = load <4 x float>, ptr %i.cdd, align 16, !tbaa !45
  %i.cdf = load float, ptr %.014073065.us.i.epil.init, align 4, !tbaa !48
  %i.cdg = insertelement <4 x float> poison, float %i.cdf, i64 0
  %i.cdh = shufflevector <4 x float> %i.cdg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cdi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdc, <4 x float> nofpclass(nan inf) %i.cdh, <4 x float> nofpclass(nan inf) %.2324293063.us.i.epil.init)
  %i.cdj = getelementptr inbounds [4 x i8], ptr %.014073065.us.i.epil.init, i64 %i.cbs
  %i.cdk = load float, ptr %i.cdj, align 4, !tbaa !48
  %i.cdl = insertelement <4 x float> poison, float %i.cdk, i64 0
  %i.cdm = shufflevector <4 x float> %i.cdl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cdn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cde, <4 x float> nofpclass(nan inf) %i.cdm, <4 x float> nofpclass(nan inf) %.2224543062.us.i.epil.init)
  br label %._crit_edge3069.us.i

._crit_edge3069.us.i:                             ; preds = %._crit_edge3069.us.i.unr-lcssa, %.epil.preheader769
  %.lcssa714 = phi <4 x float> [ %i.ccu, %._crit_edge3069.us.i.unr-lcssa ], [ %i.cdi, %.epil.preheader769 ] ; 2 uses
  %.lcssa713 = phi <4 x float> [ %i.ccz, %._crit_edge3069.us.i.unr-lcssa ], [ %i.cdn, %.epil.preheader769 ] ; 2 uses
  %scevgep3822.i = getelementptr i8, ptr %.2114713076.us.i, i64 32
  %scevgep3823.i = getelementptr i8, ptr %scevgep3822.i, i64 %i.ayj ; 2 uses
  %indvars.iv.next3826.i = add nuw nsw i64 %indvars.iv3825.i, 2 ; 2 uses
  %i.cdo = trunc i64 %indvars.iv.next3826.i to i32 ; 2 uses
  %i.cdp = or i32 %i.cdo, 1
  %i.cdq = icmp slt i32 %i.cdp, %i.awr
  br i1 %i.cdq, label %.lr.ph3068.us.i, label %.preheader2623.i, !llvm.loop !239

bb.ak:                                            ; preds = %.loopexit2609.i, %.lr.ph3051.i
  %.1614663050.i = phi ptr [ %.91459.lcssa.i, %.lr.ph3051.i ], [ %.201470.i, %.loopexit2609.i ] ; 7 uses
  %.214773049.i = phi i32 [ %.11476.lcssa.i, %.lr.ph3051.i ], [ %i.cfz, %.loopexit2609.i ] ; 2 uses
  %.1724233048.i = phi <4 x float> [ %.102416.lcssa.i, %.lr.ph3051.i ], [ %.212427.i, %.loopexit2609.i ] ; 5 uses
  %.1624483047.i = phi <4 x float> [ %.92441.lcssa.i, %.lr.ph3051.i ], [ %.202452.i, %.loopexit2609.i ] ; 5 uses
  %.1624713046.i = phi <4 x float> [ %.92464.lcssa.i, %.lr.ph3051.i ], [ %.202475.i, %.loopexit2609.i ] ; 5 uses
  %.1624923045.i = phi <4 x float> [ %.92485.lcssa.i, %.lr.ph3051.i ], [ %.202496.i, %.loopexit2609.i ] ; 5 uses
  %i.cdr = sdiv i32 %.214773049.i, %i.awp
  %i.cds = sext i32 %i.cdr to i64
  %.reass3059.i = mul i64 %factor.op.mul3058.i, %i.cds
  %gep3061.i = getelementptr i8, ptr %invariant.gep3060.i, i64 %.reass3059.i ; 2 uses
  br i1 %i.axv, label %.preheader2610.i, label %.loopexit2611.i

.preheader2610.i:                                 ; preds = %bb.ak
  br i1 %i.bub, label %.lr.ph3025.i, label %.loopexit2609.i

.lr.ph3025.i:                                     ; preds = %.preheader2610.i, %.lr.ph3025.i
  %.014093024.i = phi i32 [ %i.cev, %.lr.ph3025.i ], [ 0, %.preheader2610.i ]
  %.014103023.i = phi ptr [ %i.cet, %.lr.ph3025.i ], [ %gep3061.i, %.preheader2610.i ] ; 5 uses
  %.1714673022.i = phi ptr [ %i.ceu, %.lr.ph3025.i ], [ %.1614663050.i, %.preheader2610.i ] ; 5 uses
  %.1824243021.i = phi <4 x float> [ %i.ced, %.lr.ph3025.i ], [ %.1724233048.i, %.preheader2610.i ]
  %.1724493020.i = phi <4 x float> [ %i.cei, %.lr.ph3025.i ], [ %.1624483047.i, %.preheader2610.i ]
  %.1724723019.i = phi <4 x float> [ %i.cen, %.lr.ph3025.i ], [ %.1624713046.i, %.preheader2610.i ]
  %.1724933018.i = phi <4 x float> [ %i.ces, %.lr.ph3025.i ], [ %.1624923045.i, %.preheader2610.i ]
  %i.cdt = load <4 x float>, ptr %.1714673022.i, align 16, !tbaa !45
  %i.cdu = getelementptr inbounds nuw i8, ptr %.1714673022.i, i64 16
  %i.cdv = load <4 x float>, ptr %i.cdu, align 16, !tbaa !45
  %i.cdw = getelementptr inbounds nuw i8, ptr %.1714673022.i, i64 32
  %i.cdx = load <4 x float>, ptr %i.cdw, align 16, !tbaa !45
  %i.cdy = getelementptr inbounds nuw i8, ptr %.1714673022.i, i64 48
  %i.cdz = load <4 x float>, ptr %i.cdy, align 16, !tbaa !45
  %i.cea = load float, ptr %.014103023.i, align 4, !tbaa !48
  %i.ceb = insertelement <4 x float> poison, float %i.cea, i64 0
  %i.cec = shufflevector <4 x float> %i.ceb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ced = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdt, <4 x float> nofpclass(nan inf) %i.cec, <4 x float> nofpclass(nan inf) %.1824243021.i) ; 2 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %.014103023.i, i64 4
  %i.cef = load float, ptr %i.cee, align 4, !tbaa !48
  %i.ceg = insertelement <4 x float> poison, float %i.cef, i64 0
  %i.ceh = shufflevector <4 x float> %i.ceg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdv, <4 x float> nofpclass(nan inf) %i.ceh, <4 x float> nofpclass(nan inf) %.1724493020.i) ; 2 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %.014103023.i, i64 8
  %i.cek = load float, ptr %i.cej, align 4, !tbaa !48
  %i.cel = insertelement <4 x float> poison, float %i.cek, i64 0
  %i.cem = shufflevector <4 x float> %i.cel, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cen = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdx, <4 x float> nofpclass(nan inf) %i.cem, <4 x float> nofpclass(nan inf) %.1724723019.i) ; 2 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %.014103023.i, i64 12
  %i.cep = load float, ptr %i.ceo, align 4, !tbaa !48
  %i.ceq = insertelement <4 x float> poison, float %i.cep, i64 0
  %i.cer = shufflevector <4 x float> %i.ceq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ces = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdz, <4 x float> nofpclass(nan inf) %i.cer, <4 x float> nofpclass(nan inf) %.1724933018.i) ; 2 uses
  %i.cet = getelementptr inbounds [4 x i8], ptr %.014103023.i, i64 %i.bue
  %i.ceu = getelementptr inbounds nuw i8, ptr %.1714673022.i, i64 64
  %i.cev = add nuw nsw i32 %.014093024.i, 1       ; 2 uses
  %exitcond3818.not.i = icmp eq i32 %i.cev, %i.bua
  br i1 %exitcond3818.not.i, label %.loopexit2611.loopexit.i, label %.lr.ph3025.i, !llvm.loop !240

.loopexit2611.loopexit.i:                         ; preds = %.lr.ph3025.i
  %scevgep3816.i = getelementptr i8, ptr %.1614663050.i, i64 64
  %scevgep3817.i = getelementptr i8, ptr %scevgep3816.i, i64 %i.buo
  br label %.loopexit2609.i

.loopexit2611.i:                                  ; preds = %bb.ak
  br i1 %i.axw, label %.preheader2608.i, label %.loopexit2609.i

.preheader2608.i:                                 ; preds = %.loopexit2611.i
  br i1 %i.bub, label %.lr.ph3039.i, label %.loopexit2609.i

.lr.ph3039.i:                                     ; preds = %.preheader2608.i, %.lr.ph3039.i
  %.014083038.i = phi i32 [ %i.cfy, %.lr.ph3039.i ], [ 0, %.preheader2608.i ]
  %.214123037.i = phi ptr [ %i.cfw, %.lr.ph3039.i ], [ %gep3061.i, %.preheader2608.i ] ; 5 uses
  %.1914693036.i = phi ptr [ %i.cfx, %.lr.ph3039.i ], [ %.1614663050.i, %.preheader2608.i ] ; 5 uses
  %.2024263035.i = phi <4 x float> [ %i.cfg, %.lr.ph3039.i ], [ %.1724233048.i, %.preheader2608.i ]
  %.1924513034.i = phi <4 x float> [ %i.cfl, %.lr.ph3039.i ], [ %.1624483047.i, %.preheader2608.i ]
  %.1924743033.i = phi <4 x float> [ %i.cfq, %.lr.ph3039.i ], [ %.1624713046.i, %.preheader2608.i ]
  %.1924953032.i = phi <4 x float> [ %i.cfv, %.lr.ph3039.i ], [ %.1624923045.i, %.preheader2608.i ]
  %i.cew = load <4 x float>, ptr %.1914693036.i, align 16, !tbaa !45
  %i.cex = getelementptr inbounds nuw i8, ptr %.1914693036.i, i64 16
  %i.cey = load <4 x float>, ptr %i.cex, align 16, !tbaa !45
  %i.cez = getelementptr inbounds nuw i8, ptr %.1914693036.i, i64 32
  %i.cfa = load <4 x float>, ptr %i.cez, align 16, !tbaa !45
  %i.cfb = getelementptr inbounds nuw i8, ptr %.1914693036.i, i64 48
  %i.cfc = load <4 x float>, ptr %i.cfb, align 16, !tbaa !45
  %i.cfd = load float, ptr %.214123037.i, align 4, !tbaa !48
  %i.cfe = insertelement <4 x float> poison, float %i.cfd, i64 0
  %i.cff = shufflevector <4 x float> %i.cfe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cew, <4 x float> nofpclass(nan inf) %i.cff, <4 x float> nofpclass(nan inf) %.2024263035.i) ; 2 uses
  %i.cfh = getelementptr inbounds [4 x i8], ptr %.214123037.i, i64 %i.bug
  %i.cfi = load float, ptr %i.cfh, align 4, !tbaa !48
  %i.cfj = insertelement <4 x float> poison, float %i.cfi, i64 0
  %i.cfk = shufflevector <4 x float> %i.cfj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cey, <4 x float> nofpclass(nan inf) %i.cfk, <4 x float> nofpclass(nan inf) %.1924513034.i) ; 2 uses
  %i.cfm = getelementptr inbounds [4 x i8], ptr %.214123037.i, i64 %i.bui
  %i.cfn = load float, ptr %i.cfm, align 4, !tbaa !48
  %i.cfo = insertelement <4 x float> poison, float %i.cfn, i64 0
  %i.cfp = shufflevector <4 x float> %i.cfo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cfa, <4 x float> nofpclass(nan inf) %i.cfp, <4 x float> nofpclass(nan inf) %.1924743033.i) ; 2 uses
  %i.cfr = getelementptr inbounds [4 x i8], ptr %.214123037.i, i64 %i.buk
  %i.cfs = load float, ptr %i.cfr, align 4, !tbaa !48
  %i.cft = insertelement <4 x float> poison, float %i.cfs, i64 0
  %i.cfu = shufflevector <4 x float> %i.cft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cfc, <4 x float> nofpclass(nan inf) %i.cfu, <4 x float> nofpclass(nan inf) %.1924953032.i) ; 2 uses
  %i.cfw = getelementptr inbounds [4 x i8], ptr %.214123037.i, i64 %i.bul
  %i.cfx = getelementptr inbounds nuw i8, ptr %.1914693036.i, i64 64
  %i.cfy = add nuw nsw i32 %.014083038.i, 1       ; 2 uses
  %exitcond3821.not.i = icmp eq i32 %i.cfy, %i.bua
  br i1 %exitcond3821.not.i, label %.loopexit2609.loopexit.i, label %.lr.ph3039.i, !llvm.loop !241

.loopexit2609.loopexit.i:                         ; preds = %.lr.ph3039.i
  %scevgep3819.i = getelementptr i8, ptr %.1614663050.i, i64 64
  %scevgep3820.i = getelementptr i8, ptr %scevgep3819.i, i64 %i.buo
end_hunk_6
begin_hunk_7_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.rk = shufflevector <16 x float> %i.qr, <16 x float> %i.qs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rl = shufflevector <16 x float> %i.qt, <16 x float> %i.qu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rm = shufflevector <16 x float> %i.qv, <16 x float> %i.qw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rn = bitcast <16 x float> %i.qx to <16 x i32>
  %i.ro = lshr <16 x i32> %i.rn, splat (i32 16)   ; 2 uses
  %i.rp = shufflevector <16 x i32> %i.ro, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rq = shufflevector <16 x i32> %i.ro, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.rp, <8 x i32> %i.rq)
  %i.rs = bitcast <16 x i16> %i.rr to <4 x i64>
  %i.rt = shufflevector <4 x i64> %i.rs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.rt, ptr %.111691606.us.i, align 32, !tbaa !45
  %i.ru = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 32
  %i.rv = bitcast <16 x float> %i.qy to <16 x i32>
  %i.rw = lshr <16 x i32> %i.rv, splat (i32 16)   ; 2 uses
  %i.rx = shufflevector <16 x i32> %i.rw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ry = shufflevector <16 x i32> %i.rw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.rx, <8 x i32> %i.ry)
  %i.sa = bitcast <16 x i16> %i.rz to <4 x i64>
  %i.sb = shufflevector <4 x i64> %i.sa, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.sb, ptr %i.ru, align 32, !tbaa !45
  %i.sc = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 64
  %i.sd = bitcast <16 x float> %i.qz to <16 x i32>
  %i.se = lshr <16 x i32> %i.sd, splat (i32 16)   ; 2 uses
  %i.sf = shufflevector <16 x i32> %i.se, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sg = shufflevector <16 x i32> %i.se, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sh = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.sf, <8 x i32> %i.sg)
  %i.si = bitcast <16 x i16> %i.sh to <4 x i64>
  %i.sj = shufflevector <4 x i64> %i.si, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.sj, ptr %i.sc, align 32, !tbaa !45
  %i.sk = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 96
  %i.sl = bitcast <16 x float> %i.ra to <16 x i32>
  %i.sm = lshr <16 x i32> %i.sl, splat (i32 16)   ; 2 uses
  %i.sn = shufflevector <16 x i32> %i.sm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.so = shufflevector <16 x i32> %i.sm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sp = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.sn, <8 x i32> %i.so)
  %i.sq = bitcast <16 x i16> %i.sp to <4 x i64>
  %i.sr = shufflevector <4 x i64> %i.sq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.sr, ptr %i.sk, align 32, !tbaa !45
  %i.ss = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 128
  %i.st = bitcast <16 x float> %i.rb to <16 x i32>
  %i.su = lshr <16 x i32> %i.st, splat (i32 16)   ; 2 uses
  %i.sv = shufflevector <16 x i32> %i.su, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sw = shufflevector <16 x i32> %i.su, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sx = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.sv, <8 x i32> %i.sw)
  %i.sy = bitcast <16 x i16> %i.sx to <4 x i64>
  %i.sz = shufflevector <4 x i64> %i.sy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.sz, ptr %i.ss, align 32, !tbaa !45
  %i.ta = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 160
  %i.tb = bitcast <16 x float> %i.rc to <16 x i32>
  %i.tc = lshr <16 x i32> %i.tb, splat (i32 16)   ; 2 uses
  %i.td = shufflevector <16 x i32> %i.tc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.te = shufflevector <16 x i32> %i.tc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.td, <8 x i32> %i.te)
  %i.tg = bitcast <16 x i16> %i.tf to <4 x i64>
  %i.th = shufflevector <4 x i64> %i.tg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.th, ptr %i.ta, align 32, !tbaa !45
  %i.ti = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 192
  %i.tj = bitcast <16 x float> %i.rd to <16 x i32>
  %i.tk = lshr <16 x i32> %i.tj, splat (i32 16)   ; 2 uses
  %i.tl = shufflevector <16 x i32> %i.tk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tm = shufflevector <16 x i32> %i.tk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tn = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.tl, <8 x i32> %i.tm)
  %i.to = bitcast <16 x i16> %i.tn to <4 x i64>
  %i.tp = shufflevector <4 x i64> %i.to, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.tp, ptr %i.ti, align 32, !tbaa !45
  %i.tq = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 224
  %i.tr = bitcast <16 x float> %i.re to <16 x i32>
  %i.ts = lshr <16 x i32> %i.tr, splat (i32 16)   ; 2 uses
  %i.tt = shufflevector <16 x i32> %i.ts, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tu = shufflevector <16 x i32> %i.ts, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tv = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.tt, <8 x i32> %i.tu)
  %i.tw = bitcast <16 x i16> %i.tv to <4 x i64>
  %i.tx = shufflevector <4 x i64> %i.tw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.tx, ptr %i.tq, align 32, !tbaa !45
  %i.ty = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 256
  %i.tz = bitcast <16 x float> %i.rf to <16 x i32>
  %i.ua = lshr <16 x i32> %i.tz, splat (i32 16)   ; 2 uses
  %i.ub = shufflevector <16 x i32> %i.ua, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uc = shufflevector <16 x i32> %i.ua, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ud = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ub, <8 x i32> %i.uc)
  %i.ue = bitcast <16 x i16> %i.ud to <4 x i64>
  %i.uf = shufflevector <4 x i64> %i.ue, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.uf, ptr %i.ty, align 32, !tbaa !45
  %i.ug = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 288
  %i.uh = bitcast <16 x float> %i.rg to <16 x i32>
  %i.ui = lshr <16 x i32> %i.uh, splat (i32 16)   ; 2 uses
  %i.uj = shufflevector <16 x i32> %i.ui, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uk = shufflevector <16 x i32> %i.ui, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ul = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.uj, <8 x i32> %i.uk)
  %i.um = bitcast <16 x i16> %i.ul to <4 x i64>
  %i.un = shufflevector <4 x i64> %i.um, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.un, ptr %i.ug, align 32, !tbaa !45
  %i.uo = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 320
  %i.up = bitcast <16 x float> %i.rh to <16 x i32>
  %i.uq = lshr <16 x i32> %i.up, splat (i32 16)   ; 2 uses
  %i.ur = shufflevector <16 x i32> %i.uq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.us = shufflevector <16 x i32> %i.uq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ut = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ur, <8 x i32> %i.us)
  %i.uu = bitcast <16 x i16> %i.ut to <4 x i64>
  %i.uv = shufflevector <4 x i64> %i.uu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.uv, ptr %i.uo, align 32, !tbaa !45
  %i.uw = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 352
  %i.ux = bitcast <16 x float> %i.ri to <16 x i32>
  %i.uy = lshr <16 x i32> %i.ux, splat (i32 16)   ; 2 uses
  %i.uz = shufflevector <16 x i32> %i.uy, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.va = shufflevector <16 x i32> %i.uy, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.uz, <8 x i32> %i.va)
  %i.vc = bitcast <16 x i16> %i.vb to <4 x i64>
  %i.vd = shufflevector <4 x i64> %i.vc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.vd, ptr %i.uw, align 32, !tbaa !45
  %i.ve = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 384
  %i.vf = bitcast <16 x float> %i.rj to <16 x i32>
  %i.vg = lshr <16 x i32> %i.vf, splat (i32 16)   ; 2 uses
  %i.vh = shufflevector <16 x i32> %i.vg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vi = shufflevector <16 x i32> %i.vg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.vh, <8 x i32> %i.vi)
  %i.vk = bitcast <16 x i16> %i.vj to <4 x i64>
  %i.vl = shufflevector <4 x i64> %i.vk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.vl, ptr %i.ve, align 32, !tbaa !45
  %i.vm = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 416
  %i.vn = bitcast <16 x float> %i.rk to <16 x i32>
  %i.vo = lshr <16 x i32> %i.vn, splat (i32 16)   ; 2 uses
  %i.vp = shufflevector <16 x i32> %i.vo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vq = shufflevector <16 x i32> %i.vo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.vp, <8 x i32> %i.vq)
  %i.vs = bitcast <16 x i16> %i.vr to <4 x i64>
  %i.vt = shufflevector <4 x i64> %i.vs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.vt, ptr %i.vm, align 32, !tbaa !45
  %i.vu = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 448
  %i.vv = bitcast <16 x float> %i.rl to <16 x i32>
  %i.vw = lshr <16 x i32> %i.vv, splat (i32 16)   ; 2 uses
  %i.vx = shufflevector <16 x i32> %i.vw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vy = shufflevector <16 x i32> %i.vw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.vx, <8 x i32> %i.vy)
  %i.wa = bitcast <16 x i16> %i.vz to <4 x i64>
  %i.wb = shufflevector <4 x i64> %i.wa, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.wb, ptr %i.vu, align 32, !tbaa !45
  %i.wc = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 480
  %i.wd = bitcast <16 x float> %i.rm to <16 x i32>
  %i.we = lshr <16 x i32> %i.wd, splat (i32 16)   ; 2 uses
  %i.wf = shufflevector <16 x i32> %i.we, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wg = shufflevector <16 x i32> %i.we, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wh = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.wf, <8 x i32> %i.wg)
  %i.wi = bitcast <16 x i16> %i.wh to <4 x i64>
  %i.wj = shufflevector <4 x i64> %i.wi, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.wj, ptr %i.wc, align 32, !tbaa !45
  %i.wk = getelementptr inbounds nuw i8, ptr %.111691606.us.i, i64 512 ; 3 uses
  %indvars.iv.next2186.i = add nuw nsw i64 %indvars.iv2185.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next2186.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.az, !llvm.loop !303

._crit_edge.us.i:                                 ; preds = %bb.az
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.010961624.us.i, i64 %i.ih ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.011011623.us.i, i64 %i.ih
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.011031622.us.i, i64 %i.ih
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.011191621.us.i, i64 %i.ih
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.011201620.us.i, i64 %i.ih
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.011261619.us.i, i64 %i.ih
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.011271618.us.i, i64 %i.ih
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.011291617.us.i, i64 %i.ih
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.011301616.us.i, i64 %i.ih
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %.011321615.us.i, i64 %i.ih
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.011331614.us.i, i64 %i.ih
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.011591613.us.i, i64 %i.ih
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.011641612.us.i, i64 %i.ih
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.011651611.us.i, i64 %i.ih
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.011661610.us.i, i64 %i.ih
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.011671609.us.i, i64 %i.ih
  %i.xb = add nuw nsw i32 %.011791607.us.i, 16    ; 2 uses
  %i.xc = or disjoint i32 %i.xb, 15
  %i.xd = icmp slt i32 %i.xc, %i.l
  br i1 %i.xd, label %.preheader1601.us.i, label %._crit_edge1625.i, !llvm.loop !304

._crit_edge1625.i:                                ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01179.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.iz, %._crit_edge.us.i ] ; 4 uses
  %.01168.lcssa.i = phi ptr [ %i.lm, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.wk, %._crit_edge.us.i ] ; 3 uses
  %.01096.lcssa.i = phi ptr [ %i.lf, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.wl, %._crit_edge.us.i ] ; 3 uses
  %i.xe = or disjoint i32 %.01179.lcssa.i, 7
  %i.xf = icmp slt i32 %i.xe, %i.l
  br i1 %i.xf, label %.preheader1600.lr.ph.i, label %.preheader1604.i

._crit_edge1625.thread.i:                         ; preds = %.preheader1601.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.lb, i64 %i.iw
  %scevgep2184.i = getelementptr i8, ptr %scevgep.i, i64 %i.la ; 2 uses
  br i1 %i.jd, label %.preheader1600.preheader.i, label %.preheader1604.i

.preheader1600.lr.ph.i:                           ; preds = %._crit_edge1625.i
  br i1 %i.if, label %.preheader1600.us.i, label %.preheader1600.preheader.i

.preheader1600.preheader.i:                       ; preds = %.preheader1600.lr.ph.i, %._crit_edge1625.thread.i
  %.01179.lcssa24542462.i = phi i32 [ %.01179.lcssa.i, %.preheader1600.lr.ph.i ], [ %i.iz, %._crit_edge1625.thread.i ] ; 2 uses
  %.01168.lcssa24552461.i = phi ptr [ %.01168.lcssa.i, %.preheader1600.lr.ph.i ], [ %i.lm, %._crit_edge1625.thread.i ]
  %.01096.lcssa24562460.i = phi ptr [ %.01096.lcssa.i, %.preheader1600.lr.ph.i ], [ %scevgep2184.i, %._crit_edge1625.thread.i ]
  %i.xg = sub i32 %i.ja, %.01179.lcssa24542462.i  ; 2 uses
  %i.xh = lshr i32 %i.xg, 1
  %i.xi = and i32 %i.xh, 2147483644
  %narrow2442.i = add nuw i32 %i.xi, 4
  %i.xj = zext i32 %narrow2442.i to i64
  %i.xk = mul nsw i64 %i.xj, %i.im
  %scevgep2188.i = getelementptr i8, ptr %.01096.lcssa24562460.i, i64 %i.xk
  %i.xl = add nsw i32 %.01179.lcssa24542462.i, 8
  %i.xm = and i32 %i.xg, -8
  %i.xn = add i32 %i.xl, %i.xm
  br label %.preheader1604.i

.preheader1600.us.i:                              ; preds = %.preheader1600.lr.ph.i, %._crit_edge.us1642.i
  %.110971638.us.i = phi ptr [ %i.aaq, %._crit_edge.us1642.i ], [ %.01096.lcssa.i, %.preheader1600.lr.ph.i ] ; 2 uses
  %.211701637.us.i = phi ptr [ %i.aap, %._crit_edge.us1642.i ], [ %.01168.lcssa.i, %.preheader1600.lr.ph.i ]
  %.111801636.us.i = phi i32 [ %i.aar, %._crit_edge.us1642.i ], [ %.01179.lcssa.i, %.preheader1600.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1600.us.i
  %indvars.iv2190.i = phi i64 [ 0, %.preheader1600.us.i ], [ %indvars.iv.next2191.i, %bb.ba ] ; 2 uses
  %.311711635.us.i = phi ptr [ %.211701637.us.i, %.preheader1600.us.i ], [ %i.aap, %bb.ba ] ; 9 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.110971638.us.i, i64 %indvars.iv2190.i ; 2 uses
  %i.xp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xo, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.xq = bitcast <16 x float> %i.xp to <16 x i32>
  %i.xr = lshr <16 x i32> %i.xq, splat (i32 16)   ; 2 uses
  %i.xs = shufflevector <16 x i32> %i.xr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xt = shufflevector <16 x i32> %i.xr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xu = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.xs, <8 x i32> %i.xt)
  %i.xv = bitcast <16 x i16> %i.xu to <4 x i64>
  %i.xw = shufflevector <4 x i64> %i.xv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.xw, ptr %.311711635.us.i, align 32, !tbaa !45
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.ik ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 32
  %i.xz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xx, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.ya = bitcast <16 x float> %i.xz to <16 x i32>
  %i.yb = lshr <16 x i32> %i.ya, splat (i32 16)   ; 2 uses
  %i.yc = shufflevector <16 x i32> %i.yb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yd = shufflevector <16 x i32> %i.yb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ye = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yc, <8 x i32> %i.yd)
  %i.yf = bitcast <16 x i16> %i.ye to <4 x i64>
  %i.yg = shufflevector <4 x i64> %i.yf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.yg, ptr %i.xy, align 32, !tbaa !45
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.ik ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 64
  %i.yj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yh, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.yk = bitcast <16 x float> %i.yj to <16 x i32>
  %i.yl = lshr <16 x i32> %i.yk, splat (i32 16)   ; 2 uses
  %i.ym = shufflevector <16 x i32> %i.yl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yn = shufflevector <16 x i32> %i.yl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ym, <8 x i32> %i.yn)
  %i.yp = bitcast <16 x i16> %i.yo to <4 x i64>
  %i.yq = shufflevector <4 x i64> %i.yp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.yq, ptr %i.yi, align 32, !tbaa !45
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.ik ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 96
  %i.yt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yr, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.yu = bitcast <16 x float> %i.yt to <16 x i32>
  %i.yv = lshr <16 x i32> %i.yu, splat (i32 16)   ; 2 uses
  %i.yw = shufflevector <16 x i32> %i.yv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yx = shufflevector <16 x i32> %i.yv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yy = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yw, <8 x i32> %i.yx)
  %i.yz = bitcast <16 x i16> %i.yy to <4 x i64>
  %i.za = shufflevector <4 x i64> %i.yz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.za, ptr %i.ys, align 32, !tbaa !45
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.ik ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 128
  %i.zd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zb, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.ze = bitcast <16 x float> %i.zd to <16 x i32>
  %i.zf = lshr <16 x i32> %i.ze, splat (i32 16)   ; 2 uses
  %i.zg = shufflevector <16 x i32> %i.zf, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zh = shufflevector <16 x i32> %i.zf, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zi = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.zg, <8 x i32> %i.zh)
  %i.zj = bitcast <16 x i16> %i.zi to <4 x i64>
  %i.zk = shufflevector <4 x i64> %i.zj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.zk, ptr %i.zc, align 32, !tbaa !45
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ik ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 160
  %i.zn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zl, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.zo = bitcast <16 x float> %i.zn to <16 x i32>
  %i.zp = lshr <16 x i32> %i.zo, splat (i32 16)   ; 2 uses
  %i.zq = shufflevector <16 x i32> %i.zp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zr = shufflevector <16 x i32> %i.zp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zs = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.zq, <8 x i32> %i.zr)
  %i.zt = bitcast <16 x i16> %i.zs to <4 x i64>
  %i.zu = shufflevector <4 x i64> %i.zt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.zu, ptr %i.zm, align 32, !tbaa !45
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.ik ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 192
  %i.zx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zv, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.zy = bitcast <16 x float> %i.zx to <16 x i32>
  %i.zz = lshr <16 x i32> %i.zy, splat (i32 16)   ; 2 uses
  %i.aaa = shufflevector <16 x i32> %i.zz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aab = shufflevector <16 x i32> %i.zz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aac = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aaa, <8 x i32> %i.aab)
  %i.aad = bitcast <16 x i16> %i.aac to <4 x i64>
  %i.aae = shufflevector <4 x i64> %i.aad, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aae, ptr %i.zw, align 32, !tbaa !45
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.ik
  %i.aag = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 224
  %i.aah = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aaf, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.aai = bitcast <16 x float> %i.aah to <16 x i32>
  %i.aaj = lshr <16 x i32> %i.aai, splat (i32 16) ; 2 uses
  %i.aak = shufflevector <16 x i32> %i.aaj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aal = shufflevector <16 x i32> %i.aaj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aam = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aak, <8 x i32> %i.aal)
  %i.aan = bitcast <16 x i16> %i.aam to <4 x i64>
  %i.aao = shufflevector <4 x i64> %i.aan, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aao, ptr %i.aag, align 32, !tbaa !45
  %i.aap = getelementptr inbounds nuw i8, ptr %.311711635.us.i, i64 256 ; 3 uses
  %indvars.iv.next2191.i = add nuw nsw i64 %indvars.iv2190.i, 1 ; 2 uses
  %exitcond2194.not.i = icmp eq i64 %indvars.iv.next2191.i, %wide.trip.count.i
  br i1 %exitcond2194.not.i, label %._crit_edge.us1642.i, label %bb.ba, !llvm.loop !305

._crit_edge.us1642.i:                             ; preds = %bb.ba
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.110971638.us.i, i64 %i.im ; 2 uses
  %i.aar = add nuw nsw i32 %.111801636.us.i, 8    ; 3 uses
  %i.aas = or disjoint i32 %i.aar, 7
  %i.aat = icmp slt i32 %i.aas, %i.l
  br i1 %i.aat, label %.preheader1600.us.i, label %.preheader1604.i, !llvm.loop !306

.preheader1604.i:                                 ; preds = %._crit_edge.us1642.i, %.preheader1600.preheader.i, %._crit_edge1625.thread.i, %._crit_edge1625.i
  %.11180.lcssa.i = phi i32 [ %.01179.lcssa.i, %._crit_edge1625.i ], [ %i.iz, %._crit_edge1625.thread.i ], [ %i.xn, %.preheader1600.preheader.i ], [ %i.aar, %._crit_edge.us1642.i ] ; 3 uses
  %.21170.lcssa.i = phi ptr [ %.01168.lcssa.i, %._crit_edge1625.i ], [ %i.lm, %._crit_edge1625.thread.i ], [ %.01168.lcssa24552461.i, %.preheader1600.preheader.i ], [ %i.aap, %._crit_edge.us1642.i ] ; 2 uses
  %.11097.lcssa.i = phi ptr [ %.01096.lcssa.i, %._crit_edge1625.i ], [ %scevgep2184.i, %._crit_edge1625.thread.i ], [ %scevgep2188.i, %.preheader1600.preheader.i ], [ %i.aaq, %._crit_edge.us1642.i ] ; 2 uses
  %i.aau = or disjoint i32 %.11180.lcssa.i, 3
  %i.aav = icmp slt i32 %i.aau, %i.l
  br i1 %i.aav, label %.preheader1599.lr.ph.i, label %.preheader1603.i

.preheader1599.lr.ph.i:                           ; preds = %.preheader1604.i
  br i1 %i.if, label %.preheader1599.us.i, label %._crit_edge1683.split.i

.preheader1599.us.i:                              ; preds = %.preheader1599.lr.ph.i, %._crit_edge.us1658.i
  %.210981654.us.i = phi ptr [ %i.ack, %._crit_edge.us1658.i ], [ %.11097.lcssa.i, %.preheader1599.lr.ph.i ] ; 2 uses
  %.511731653.us.i = phi ptr [ %i.acj, %._crit_edge.us1658.i ], [ %.21170.lcssa.i, %.preheader1599.lr.ph.i ]
  %.211811652.us.i = phi i32 [ %i.acl, %._crit_edge.us1658.i ], [ %.11180.lcssa.i, %.preheader1599.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1599.us.i
  %indvars.iv2197.i = phi i64 [ 0, %.preheader1599.us.i ], [ %indvars.iv.next2198.i, %bb.bb ] ; 2 uses
  %.611741651.us.i = phi ptr [ %.511731653.us.i, %.preheader1599.us.i ], [ %i.acj, %bb.bb ] ; 5 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.210981654.us.i, i64 %indvars.iv2197.i ; 2 uses
  %i.aax = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aaw, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.aay = bitcast <16 x float> %i.aax to <16 x i32>
  %i.aaz = lshr <16 x i32> %i.aay, splat (i32 16) ; 2 uses
  %i.aba = shufflevector <16 x i32> %i.aaz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abb = shufflevector <16 x i32> %i.aaz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abc = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aba, <8 x i32> %i.abb)
  %i.abd = bitcast <16 x i16> %i.abc to <4 x i64>
  %i.abe = shufflevector <4 x i64> %i.abd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.abe, ptr %.611741651.us.i, align 32, !tbaa !45
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.ik ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.611741651.us.i, i64 32
  %i.abh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.abf, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.abi = bitcast <16 x float> %i.abh to <16 x i32>
  %i.abj = lshr <16 x i32> %i.abi, splat (i32 16) ; 2 uses
  %i.abk = shufflevector <16 x i32> %i.abj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abl = shufflevector <16 x i32> %i.abj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abm = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.abk, <8 x i32> %i.abl)
  %i.abn = bitcast <16 x i16> %i.abm to <4 x i64>
  %i.abo = shufflevector <4 x i64> %i.abn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.abo, ptr %i.abg, align 32, !tbaa !45
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.ik ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.611741651.us.i, i64 64
  %i.abr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.abp, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.abs = bitcast <16 x float> %i.abr to <16 x i32>
  %i.abt = lshr <16 x i32> %i.abs, splat (i32 16) ; 2 uses
  %i.abu = shufflevector <16 x i32> %i.abt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abv = shufflevector <16 x i32> %i.abt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.abu, <8 x i32> %i.abv)
  %i.abx = bitcast <16 x i16> %i.abw to <4 x i64>
  %i.aby = shufflevector <4 x i64> %i.abx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aby, ptr %i.abq, align 32, !tbaa !45
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.ik
  %i.aca = getelementptr inbounds nuw i8, ptr %.611741651.us.i, i64 96
  %i.acb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.abz, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.acc = bitcast <16 x float> %i.acb to <16 x i32>
  %i.acd = lshr <16 x i32> %i.acc, splat (i32 16) ; 2 uses
  %i.ace = shufflevector <16 x i32> %i.acd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acf = shufflevector <16 x i32> %i.acd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ace, <8 x i32> %i.acf)
  %i.ach = bitcast <16 x i16> %i.acg to <4 x i64>
  %i.aci = shufflevector <4 x i64> %i.ach, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aci, ptr %i.aca, align 32, !tbaa !45
  %i.acj = getelementptr inbounds nuw i8, ptr %.611741651.us.i, i64 128 ; 3 uses
  %indvars.iv.next2198.i = add nuw nsw i64 %indvars.iv2197.i, 1 ; 2 uses
  %exitcond2201.not.i = icmp eq i64 %indvars.iv.next2198.i, %wide.trip.count.i
  br i1 %exitcond2201.not.i, label %._crit_edge.us1658.i, label %bb.bb, !llvm.loop !307

._crit_edge.us1658.i:                             ; preds = %bb.bb
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %.210981654.us.i, i64 %i.io ; 2 uses
  %i.acl = add nuw nsw i32 %.211811652.us.i, 4    ; 3 uses
  %i.acm = or disjoint i32 %i.acl, 3
  %i.acn = icmp slt i32 %i.acm, %i.l
  br i1 %i.acn, label %.preheader1599.us.i, label %.preheader1603.i, !llvm.loop !308

.preheader1603.i:                                 ; preds = %._crit_edge.us1658.i, %.preheader1604.i
  %.21181.lcssa.i = phi i32 [ %.11180.lcssa.i, %.preheader1604.i ], [ %i.acl, %._crit_edge.us1658.i ] ; 3 uses
  %.51173.lcssa.i = phi ptr [ %.21170.lcssa.i, %.preheader1604.i ], [ %i.acj, %._crit_edge.us1658.i ] ; 2 uses
  %.21098.lcssa.i = phi ptr [ %.11097.lcssa.i, %.preheader1604.i ], [ %i.ack, %._crit_edge.us1658.i ] ; 2 uses
  %i.aco = or disjoint i32 %.21181.lcssa.i, 1
  %i.acp = icmp slt i32 %i.aco, %i.l
  br i1 %i.acp, label %.preheader1598.lr.ph.i, label %.preheader1602.i

.preheader1598.lr.ph.i:                           ; preds = %.preheader1603.i
  br i1 %i.if, label %.preheader1598.us.i, label %._crit_edge1683.split.i

.preheader1598.us.i:                              ; preds = %.preheader1598.lr.ph.i, %._crit_edge.us1674.i
  %.310991670.us.i = phi ptr [ %i.aez, %._crit_edge.us1674.i ], [ %.21098.lcssa.i, %.preheader1598.lr.ph.i ] ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ajz = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !379
  %i.aka = load i64, ptr %i.jl, align 8, !tbaa !20, !noalias !379
  %i.akb = zext nneg i32 %i.ajy to i64
  %i.akc = mul i64 %i.aka, %i.akb
  %i.akd = load i64, ptr %i.jm, align 8, !tbaa !44, !noalias !379
  %i.ake = mul i64 %i.akc, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ake ; 4 uses
  br i1 %i.jt, label %.preheader1592.lr.ph.i, label %.preheader1595.i

.preheader1592.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.ju, label %.preheader1592.us.i, label %.preheader1595.thread.i

.preheader1592.us.i:                              ; preds = %.preheader1592.lr.ph.i, %._crit_edge1688.us.i
  %.012341699.us.i = phi ptr [ %i.aoo, %._crit_edge1688.us.i ], [ %i.ait, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012381698.us.i = phi ptr [ %i.aop, %._crit_edge1688.us.i ], [ %i.aix, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012401697.us.i = phi ptr [ %i.aoq, %._crit_edge1688.us.i ], [ %i.ajb, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012421696.us.i = phi ptr [ %i.aor, %._crit_edge1688.us.i ], [ %i.ajf, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012441695.us.i = phi ptr [ %i.aos, %._crit_edge1688.us.i ], [ %i.ajj, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012461694.us.i = phi ptr [ %i.aot, %._crit_edge1688.us.i ], [ %i.ajn, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012491693.us.i = phi ptr [ %i.aou, %._crit_edge1688.us.i ], [ %i.ajr, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012511692.us.i = phi ptr [ %i.aov, %._crit_edge1688.us.i ], [ %i.aju, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012531691.us.i = phi ptr [ %i.aon, %._crit_edge1688.us.i ], [ %i.akf, %.preheader1592.lr.ph.i ]
  %.012651690.us.i = phi i32 [ %i.aow, %._crit_edge1688.us.i ], [ 0, %.preheader1592.lr.ph.i ]
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.preheader1592.us.i
  %indvars.iv2243.i = phi i64 [ 0, %.preheader1592.us.i ], [ %indvars.iv.next2244.i, %bb.bc ] ; 9 uses
  %.112541687.us.i = phi ptr [ %.012531691.us.i, %.preheader1592.us.i ], [ %i.aon, %bb.bc ] ; 9 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.012341699.us.i, i64 %indvars.iv2243.i
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.012381698.us.i, i64 %indvars.iv2243.i
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.012401697.us.i, i64 %indvars.iv2243.i
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %.012421696.us.i, i64 %indvars.iv2243.i
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %.012441695.us.i, i64 %indvars.iv2243.i
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %.012461694.us.i, i64 %indvars.iv2243.i
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %.012491693.us.i, i64 %indvars.iv2243.i
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %.012511692.us.i, i64 %indvars.iv2243.i
  %i.ako = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akg, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akh, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aki, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akj, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aks = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akk, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akl, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aku = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akm, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akn, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akw = shufflevector <16 x float> %i.ako, <16 x float> %i.akp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.akx = shufflevector <16 x float> %i.ako, <16 x float> %i.akp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aky = shufflevector <16 x float> %i.akq, <16 x float> %i.akr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.akz = shufflevector <16 x float> %i.akq, <16 x float> %i.akr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ala = shufflevector <16 x float> %i.aks, <16 x float> %i.akt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.alb = shufflevector <16 x float> %i.aks, <16 x float> %i.akt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.alc = shufflevector <16 x float> %i.aku, <16 x float> %i.akv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ald = shufflevector <16 x float> %i.aku, <16 x float> %i.akv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ale = shufflevector <16 x float> %i.akw, <16 x float> %i.aky, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alf = shufflevector <16 x float> %i.akw, <16 x float> %i.aky, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alg = shufflevector <16 x float> %i.akx, <16 x float> %i.akz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alh = shufflevector <16 x float> %i.akx, <16 x float> %i.akz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ali = shufflevector <16 x float> %i.ala, <16 x float> %i.alc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alj = shufflevector <16 x float> %i.ala, <16 x float> %i.alc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alk = shufflevector <16 x float> %i.alb, <16 x float> %i.ald, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.all = shufflevector <16 x float> %i.alb, <16 x float> %i.ald, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alm = shufflevector <16 x float> %i.ale, <16 x float> %i.ali, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aln = shufflevector <16 x float> %i.alf, <16 x float> %i.alj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alo = shufflevector <16 x float> %i.alg, <16 x float> %i.alk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alp = shufflevector <16 x float> %i.alh, <16 x float> %i.all, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alq = shufflevector <16 x float> %i.ale, <16 x float> %i.ali, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alr = shufflevector <16 x float> %i.alf, <16 x float> %i.alj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.als = shufflevector <16 x float> %i.alg, <16 x float> %i.alk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alt = shufflevector <16 x float> %i.alh, <16 x float> %i.all, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alu = shufflevector <16 x float> %i.alm, <16 x float> %i.aln, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alv = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alw = shufflevector <16 x float> %i.alq, <16 x float> %i.alr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alx = shufflevector <16 x float> %i.als, <16 x float> %i.alt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aly = shufflevector <16 x float> %i.alm, <16 x float> %i.aln, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.alz = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ama = shufflevector <16 x float> %i.alq, <16 x float> %i.alr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amb = shufflevector <16 x float> %i.als, <16 x float> %i.alt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amc = bitcast <16 x float> %i.alu to <16 x i32>
  %i.amd = lshr <16 x i32> %i.amc, splat (i32 16) ; 2 uses
  %i.ame = shufflevector <16 x i32> %i.amd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amf = shufflevector <16 x i32> %i.amd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ame, <8 x i32> %i.amf)
  %i.amh = bitcast <16 x i16> %i.amg to <4 x i64>
  %i.ami = shufflevector <4 x i64> %i.amh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ami, ptr %.112541687.us.i, align 1, !tbaa !45
  %i.amj = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 32
  %i.amk = bitcast <16 x float> %i.alv to <16 x i32>
  %i.aml = lshr <16 x i32> %i.amk, splat (i32 16) ; 2 uses
  %i.amm = shufflevector <16 x i32> %i.aml, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amn = shufflevector <16 x i32> %i.aml, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amm, <8 x i32> %i.amn)
  %i.amp = bitcast <16 x i16> %i.amo to <4 x i64>
  %i.amq = shufflevector <4 x i64> %i.amp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amq, ptr %i.amj, align 1, !tbaa !45
  %i.amr = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 64
  %i.ams = bitcast <16 x float> %i.alw to <16 x i32>
  %i.amt = lshr <16 x i32> %i.ams, splat (i32 16) ; 2 uses
  %i.amu = shufflevector <16 x i32> %i.amt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amv = shufflevector <16 x i32> %i.amt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amu, <8 x i32> %i.amv)
  %i.amx = bitcast <16 x i16> %i.amw to <4 x i64>
  %i.amy = shufflevector <4 x i64> %i.amx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amy, ptr %i.amr, align 1, !tbaa !45
  %i.amz = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 96
  %i.ana = bitcast <16 x float> %i.alx to <16 x i32>
  %i.anb = lshr <16 x i32> %i.ana, splat (i32 16) ; 2 uses
  %i.anc = shufflevector <16 x i32> %i.anb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.and = shufflevector <16 x i32> %i.anb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ane = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.anc, <8 x i32> %i.and)
  %i.anf = bitcast <16 x i16> %i.ane to <4 x i64>
  %i.ang = shufflevector <4 x i64> %i.anf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ang, ptr %i.amz, align 1, !tbaa !45
  %i.anh = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 128
  %i.ani = bitcast <16 x float> %i.aly to <16 x i32>
  %i.anj = lshr <16 x i32> %i.ani, splat (i32 16) ; 2 uses
  %i.ank = shufflevector <16 x i32> %i.anj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anl = shufflevector <16 x i32> %i.anj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anm = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ank, <8 x i32> %i.anl)
  %i.ann = bitcast <16 x i16> %i.anm to <4 x i64>
  %i.ano = shufflevector <4 x i64> %i.ann, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ano, ptr %i.anh, align 1, !tbaa !45
  %i.anp = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 160
  %i.anq = bitcast <16 x float> %i.alz to <16 x i32>
  %i.anr = lshr <16 x i32> %i.anq, splat (i32 16) ; 2 uses
  %i.ans = shufflevector <16 x i32> %i.anr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ant = shufflevector <16 x i32> %i.anr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anu = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ans, <8 x i32> %i.ant)
  %i.anv = bitcast <16 x i16> %i.anu to <4 x i64>
  %i.anw = shufflevector <4 x i64> %i.anv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.anw, ptr %i.anp, align 1, !tbaa !45
  %i.anx = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 192
  %i.any = bitcast <16 x float> %i.ama to <16 x i32>
  %i.anz = lshr <16 x i32> %i.any, splat (i32 16) ; 2 uses
  %i.aoa = shufflevector <16 x i32> %i.anz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aob = shufflevector <16 x i32> %i.anz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoc = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aoa, <8 x i32> %i.aob)
  %i.aod = bitcast <16 x i16> %i.aoc to <4 x i64>
  %i.aoe = shufflevector <4 x i64> %i.aod, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aoe, ptr %i.anx, align 1, !tbaa !45
  %i.aof = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 224
  %i.aog = bitcast <16 x float> %i.amb to <16 x i32>
  %i.aoh = lshr <16 x i32> %i.aog, splat (i32 16) ; 2 uses
  %i.aoi = shufflevector <16 x i32> %i.aoh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aoj = shufflevector <16 x i32> %i.aoh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aok = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aoi, <8 x i32> %i.aoj)
  %i.aol = bitcast <16 x i16> %i.aok to <4 x i64>
  %i.aom = shufflevector <4 x i64> %i.aol, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aom, ptr %i.aof, align 1, !tbaa !45
  %i.aon = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 256 ; 3 uses
  %indvars.iv.next2244.i = add nuw nsw i64 %indvars.iv2243.i, 1 ; 2 uses
  %exitcond2247.not.i = icmp eq i64 %indvars.iv.next2244.i, %wide.trip.count2246.i
  br i1 %exitcond2247.not.i, label %._crit_edge1688.us.i, label %bb.bc, !llvm.loop !316

._crit_edge1688.us.i:                             ; preds = %bb.bc
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.012341699.us.i, i64 %i.jw ; 2 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.012381698.us.i, i64 %i.jw ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %.012401697.us.i, i64 %i.jw ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.012421696.us.i, i64 %i.jw ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.012441695.us.i, i64 %i.jw ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %.012461694.us.i, i64 %i.jw ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.012491693.us.i, i64 %i.jw ; 2 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.012511692.us.i, i64 %i.jw ; 2 uses
  %i.aow = add nuw nsw i32 %.012651690.us.i, 16   ; 2 uses
  %i.aox = or disjoint i32 %i.aow, 15
  %i.aoy = icmp slt i32 %i.aox, %i.l
  br i1 %i.aoy, label %.preheader1592.us.i, label %.preheader1595.i, !llvm.loop !317

.preheader1595.i:                                 ; preds = %._crit_edge1688.us.i, %_ZN4ncnn3MatD2Ev.exit1302.i
  %.01265.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.kp, %._crit_edge1688.us.i ] ; 4 uses
  %.01253.lcssa.i = phi ptr [ %i.akf, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aon, %._crit_edge1688.us.i ] ; 3 uses
  %.01251.lcssa.i = phi ptr [ %i.aju, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aov, %._crit_edge1688.us.i ]
  %.01249.lcssa.i = phi ptr [ %i.ajr, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aou, %._crit_edge1688.us.i ]
  %.01246.lcssa.i = phi ptr [ %i.ajn, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aot, %._crit_edge1688.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.ajj, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aos, %._crit_edge1688.us.i ]
  %.01242.lcssa.i = phi ptr [ %i.ajf, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aor, %._crit_edge1688.us.i ]
  %.01240.lcssa.i = phi ptr [ %i.ajb, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aoq, %._crit_edge1688.us.i ]
  %.01238.lcssa.i = phi ptr [ %i.aix, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aop, %._crit_edge1688.us.i ]
  %.01234.lcssa.i = phi ptr [ %i.ait, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aoo, %._crit_edge1688.us.i ] ; 3 uses
  %i.aoz = or disjoint i32 %.01265.lcssa.i, 7
  %i.apa = icmp slt i32 %i.aoz, %i.l
  br i1 %i.apa, label %.preheader1591.lr.ph.i, label %._crit_edge1734.i

.preheader1595.thread.i:                          ; preds = %.preheader1592.lr.ph.i
  %scevgep2217.i = getelementptr i8, ptr %i.aip, i64 %i.kl
  %scevgep2220.i = getelementptr i8, ptr %scevgep2217.i, i64 %i.aio ; 2 uses
  br i1 %i.kv, label %.preheader1591.preheader.i, label %._crit_edge1734.i

.preheader1591.lr.ph.i:                           ; preds = %.preheader1595.i
  br i1 %i.ju, label %.preheader1591.us.i, label %.preheader1591.preheader.i

.preheader1591.preheader.i:                       ; preds = %.preheader1591.lr.ph.i, %.preheader1595.thread.i
  %.01265.lcssa24892511.i = phi i32 [ %.01265.lcssa.i, %.preheader1591.lr.ph.i ], [ %i.kp, %.preheader1595.thread.i ] ; 2 uses
  %.01253.lcssa24902510.i = phi ptr [ %.01253.lcssa.i, %.preheader1591.lr.ph.i ], [ %i.akf, %.preheader1595.thread.i ]
  %.01234.lcssa24982509.i = phi ptr [ %.01234.lcssa.i, %.preheader1591.lr.ph.i ], [ %scevgep2220.i, %.preheader1595.thread.i ]
  %i.apb = sub i32 %i.kq, %.01265.lcssa24892511.i ; 2 uses
  %i.apc = lshr i32 %i.apb, 1
  %i.apd = and i32 %i.apc, 2147483644
  %narrow2444.i = add nuw i32 %i.apd, 4
  %i.ape = zext i32 %narrow2444.i to i64
  %i.apf = mul nsw i64 %i.ape, %i.jy
  %scevgep2248.i = getelementptr i8, ptr %.01234.lcssa24982509.i, i64 %i.apf
  %i.apg = add nsw i32 %.01265.lcssa24892511.i, 8
  %i.aph = and i32 %i.apb, -8
  %i.api = add i32 %i.apg, %i.aph
  br label %._crit_edge1734.i

.preheader1591.us.i:                              ; preds = %.preheader1591.lr.ph.i, %._crit_edge1722.us.i
  %.112351733.us.i = phi ptr [ %i.ast, %._crit_edge1722.us.i ], [ %.01234.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112391732.us.i = phi ptr [ %i.asu, %._crit_edge1722.us.i ], [ %.01238.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112411731.us.i = phi ptr [ %i.asv, %._crit_edge1722.us.i ], [ %.01240.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112431730.us.i = phi ptr [ %i.asw, %._crit_edge1722.us.i ], [ %.01242.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112451729.us.i = phi ptr [ %i.asx, %._crit_edge1722.us.i ], [ %.01244.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112471728.us.i = phi ptr [ %i.asy, %._crit_edge1722.us.i ], [ %.01246.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112501727.us.i = phi ptr [ %i.asz, %._crit_edge1722.us.i ], [ %.01249.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.112521726.us.i = phi ptr [ %i.ata, %._crit_edge1722.us.i ], [ %.01251.lcssa.i, %.preheader1591.lr.ph.i ] ; 2 uses
  %.212551725.us.i = phi ptr [ %i.ass, %._crit_edge1722.us.i ], [ %.01253.lcssa.i, %.preheader1591.lr.ph.i ]
  %.112661724.us.i = phi i32 [ %i.atb, %._crit_edge1722.us.i ], [ %.01265.lcssa.i, %.preheader1591.lr.ph.i ]
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader1591.us.i
  %indvars.iv2249.i = phi i64 [ 0, %.preheader1591.us.i ], [ %indvars.iv.next2250.i, %bb.bd ] ; 9 uses
  %.312561720.us.i = phi ptr [ %.212551725.us.i, %.preheader1591.us.i ], [ %i.ass, %bb.bd ] ; 9 uses
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.112351733.us.i, i64 %indvars.iv2249.i
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.112391732.us.i, i64 %indvars.iv2249.i
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.112411731.us.i, i64 %indvars.iv2249.i
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.112431730.us.i, i64 %indvars.iv2249.i
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.112451729.us.i, i64 %indvars.iv2249.i
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.112471728.us.i, i64 %indvars.iv2249.i
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.112501727.us.i, i64 %indvars.iv2249.i
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.112521726.us.i, i64 %indvars.iv2249.i
  %i.apr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apj, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aps = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apk, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apl, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apm, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apn, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apo, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.app, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apq, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.apz = shufflevector <8 x float> %i.apr, <8 x float> %i.aps, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aqa = shufflevector <8 x float> %i.apr, <8 x float> %i.aps, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aqb = shufflevector <8 x float> %i.apt, <8 x float> %i.apu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aqc = shufflevector <8 x float> %i.apt, <8 x float> %i.apu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aqd = shufflevector <8 x float> %i.apv, <8 x float> %i.apw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aqe = shufflevector <8 x float> %i.apv, <8 x float> %i.apw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aqf = shufflevector <8 x float> %i.apx, <8 x float> %i.apy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aqg = shufflevector <8 x float> %i.apx, <8 x float> %i.apy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aqh = shufflevector <8 x float> %i.apz, <8 x float> %i.aqb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aqi = shufflevector <8 x float> %i.apz, <8 x float> %i.aqb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aqj = shufflevector <8 x float> %i.aqa, <8 x float> %i.aqc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aqk = shufflevector <8 x float> %i.aqa, <8 x float> %i.aqc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aql = shufflevector <8 x float> %i.aqd, <8 x float> %i.aqf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aqm = shufflevector <8 x float> %i.aqd, <8 x float> %i.aqf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aqn = shufflevector <8 x float> %i.aqe, <8 x float> %i.aqg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aqo = shufflevector <8 x float> %i.aqe, <8 x float> %i.aqg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aqp = shufflevector <8 x float> %i.aqh, <8 x float> %i.aql, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aqq = shufflevector <8 x float> %i.aqi, <8 x float> %i.aqm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aqr = shufflevector <8 x float> %i.aqj, <8 x float> %i.aqn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aqs = shufflevector <8 x float> %i.aqk, <8 x float> %i.aqo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aqt = shufflevector <8 x float> %i.aqh, <8 x float> %i.aql, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aqu = shufflevector <8 x float> %i.aqi, <8 x float> %i.aqm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aqv = shufflevector <8 x float> %i.aqj, <8 x float> %i.aqn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aqw = shufflevector <8 x float> %i.aqk, <8 x float> %i.aqo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aqx = bitcast <8 x float> %i.aqp to <8 x i32>
  %i.aqy = lshr <8 x i32> %i.aqx, splat (i32 16)  ; 2 uses
  %i.aqz = shufflevector <8 x i32> %i.aqy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ara = shufflevector <8 x i32> %i.aqy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.arb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aqz, <4 x i32> %i.ara)
  store <8 x i16> %i.arb, ptr %.312561720.us.i, align 16, !tbaa !45
  %i.arc = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 16
  %i.ard = bitcast <8 x float> %i.aqq to <8 x i32>
  %i.are = lshr <8 x i32> %i.ard, splat (i32 16)  ; 2 uses
  %i.arf = shufflevector <8 x i32> %i.are, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arg = shufflevector <8 x i32> %i.are, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.arh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.arf, <4 x i32> %i.arg)
  store <8 x i16> %i.arh, ptr %i.arc, align 16, !tbaa !45
  %i.ari = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 32
  %i.arj = bitcast <8 x float> %i.aqr to <8 x i32>
  %i.ark = lshr <8 x i32> %i.arj, splat (i32 16)  ; 2 uses
  %i.arl = shufflevector <8 x i32> %i.ark, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arm = shufflevector <8 x i32> %i.ark, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.arn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.arl, <4 x i32> %i.arm)
  store <8 x i16> %i.arn, ptr %i.ari, align 16, !tbaa !45
  %i.aro = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 48
  %i.arp = bitcast <8 x float> %i.aqs to <8 x i32>
  %i.arq = lshr <8 x i32> %i.arp, splat (i32 16)  ; 2 uses
  %i.arr = shufflevector <8 x i32> %i.arq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ars = shufflevector <8 x i32> %i.arq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.art = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.arr, <4 x i32> %i.ars)
  store <8 x i16> %i.art, ptr %i.aro, align 16, !tbaa !45
  %i.aru = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 64
  %i.arv = bitcast <8 x float> %i.aqt to <8 x i32>
  %i.arw = lshr <8 x i32> %i.arv, splat (i32 16)  ; 2 uses
  %i.arx = shufflevector <8 x i32> %i.arw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ary = shufflevector <8 x i32> %i.arw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.arz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.arx, <4 x i32> %i.ary)
  store <8 x i16> %i.arz, ptr %i.aru, align 16, !tbaa !45
  %i.asa = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 80
  %i.asb = bitcast <8 x float> %i.aqu to <8 x i32>
  %i.asc = lshr <8 x i32> %i.asb, splat (i32 16)  ; 2 uses
  %i.asd = shufflevector <8 x i32> %i.asc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ase = shufflevector <8 x i32> %i.asc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.asf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.asd, <4 x i32> %i.ase)
  store <8 x i16> %i.asf, ptr %i.asa, align 16, !tbaa !45
  %i.asg = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 96
  %i.ash = bitcast <8 x float> %i.aqv to <8 x i32>
  %i.asi = lshr <8 x i32> %i.ash, splat (i32 16)  ; 2 uses
  %i.asj = shufflevector <8 x i32> %i.asi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ask = shufflevector <8 x i32> %i.asi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.asl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.asj, <4 x i32> %i.ask)
  store <8 x i16> %i.asl, ptr %i.asg, align 16, !tbaa !45
  %i.asm = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 112
  %i.asn = bitcast <8 x float> %i.aqw to <8 x i32>
  %i.aso = lshr <8 x i32> %i.asn, splat (i32 16)  ; 2 uses
  %i.asp = shufflevector <8 x i32> %i.aso, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.asq = shufflevector <8 x i32> %i.aso, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.asr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.asp, <4 x i32> %i.asq)
  store <8 x i16> %i.asr, ptr %i.asm, align 16, !tbaa !45
  %i.ass = getelementptr inbounds nuw i8, ptr %.312561720.us.i, i64 128 ; 3 uses
  %indvars.iv.next2250.i = add nuw nsw i64 %indvars.iv2249.i, 1 ; 2 uses
  %exitcond2253.not.i = icmp eq i64 %indvars.iv.next2250.i, %wide.trip.count2246.i
  br i1 %exitcond2253.not.i, label %._crit_edge1722.us.i, label %bb.bd, !llvm.loop !318

._crit_edge1722.us.i:                             ; preds = %bb.bd
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112351733.us.i, i64 %i.jy ; 2 uses
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.112391732.us.i, i64 %i.jy
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.112411731.us.i, i64 %i.jy
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.112431730.us.i, i64 %i.jy
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.112451729.us.i, i64 %i.jy
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %.112471728.us.i, i64 %i.jy
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %.112501727.us.i, i64 %i.jy
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %.112521726.us.i, i64 %i.jy
  %i.atb = add nuw nsw i32 %.112661724.us.i, 8    ; 3 uses
  %i.atc = or disjoint i32 %i.atb, 7
  %i.atd = icmp slt i32 %i.atc, %i.l
  br i1 %i.atd, label %.preheader1591.us.i, label %._crit_edge1734.i, !llvm.loop !319

._crit_edge1734.i:                                ; preds = %._crit_edge1722.us.i, %.preheader1591.preheader.i, %.preheader1595.thread.i, %.preheader1595.i
  %.11266.lcssa.i = phi i32 [ %.01265.lcssa.i, %.preheader1595.i ], [ %i.kp, %.preheader1595.thread.i ], [ %i.api, %.preheader1591.preheader.i ], [ %i.atb, %._crit_edge1722.us.i ] ; 3 uses
  %.21255.lcssa.i = phi ptr [ %.01253.lcssa.i, %.preheader1595.i ], [ %i.akf, %.preheader1595.thread.i ], [ %.01253.lcssa24902510.i, %.preheader1591.preheader.i ], [ %i.ass, %._crit_edge1722.us.i ] ; 2 uses
  %.11235.lcssa.i = phi ptr [ %.01234.lcssa.i, %.preheader1595.i ], [ %scevgep2220.i, %.preheader1595.thread.i ], [ %scevgep2248.i, %.preheader1591.preheader.i ], [ %i.ast, %._crit_edge1722.us.i ] ; 2 uses
  %i.ate = or disjoint i32 %.11266.lcssa.i, 3
  %i.atf = icmp slt i32 %i.ate, %i.l
  br i1 %i.atf, label %.preheader1590.lr.ph.i, label %.preheader1594.i

.preheader1590.lr.ph.i:                           ; preds = %._crit_edge1734.i
  br i1 %i.ju, label %.preheader1590.us.i, label %._crit_edge1779.split.i

.preheader1590.us.i:                              ; preds = %.preheader1590.lr.ph.i, %._crit_edge1746.us.i
  %.212361750.us.i = phi ptr [ %i.aum, %._crit_edge1746.us.i ], [ %.11235.lcssa.i, %.preheader1590.lr.ph.i ] ; 2 uses
  %.412571749.us.i = phi ptr [ %i.aul, %._crit_edge1746.us.i ], [ %.21255.lcssa.i, %.preheader1590.lr.ph.i ]
  %.212671748.us.i = phi i32 [ %i.aun, %._crit_edge1746.us.i ], [ %.11266.lcssa.i, %.preheader1590.lr.ph.i ]
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1590.us.i
  %indvars.iv2256.i = phi i64 [ 0, %.preheader1590.us.i ], [ %indvars.iv.next2257.i, %bb.be ] ; 2 uses
  %.512581744.us.i = phi ptr [ %.412571749.us.i, %.preheader1590.us.i ], [ %i.aul, %bb.be ] ; 5 uses
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %.212361750.us.i, i64 %indvars.iv2256.i ; 2 uses
  %i.ath = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.atg, <8 x i32> %i.ka, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ati = bitcast <8 x float> %i.ath to <8 x i32>
  %i.atj = lshr <8 x i32> %i.ati, splat (i32 16)  ; 2 uses
  %i.atk = shufflevector <8 x i32> %i.atj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.atl = shufflevector <8 x i32> %i.atj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.atm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.atk, <4 x i32> %i.atl)
  store <8 x i16> %i.atm, ptr %.512581744.us.i, align 16, !tbaa !45
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.kb ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.512581744.us.i, i64 16
  %i.atp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.atn, <8 x i32> %i.ka, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.atq = bitcast <8 x float> %i.atp to <8 x i32>
  %i.atr = lshr <8 x i32> %i.atq, splat (i32 16)  ; 2 uses
  %i.ats = shufflevector <8 x i32> %i.atr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.att = shufflevector <8 x i32> %i.atr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.atu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ats, <4 x i32> %i.att)
  store <8 x i16> %i.atu, ptr %i.ato, align 16, !tbaa !45
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %i.kb ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %.512581744.us.i, i64 32
  %i.atx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.atv, <8 x i32> %i.ka, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aty = bitcast <8 x float> %i.atx to <8 x i32>
  %i.atz = lshr <8 x i32> %i.aty, splat (i32 16)  ; 2 uses
  %i.aua = shufflevector <8 x i32> %i.atz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aub = shufflevector <8 x i32> %i.atz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.auc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aua, <4 x i32> %i.aub)
  store <8 x i16> %i.auc, ptr %i.atw, align 16, !tbaa !45
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %i.kb
  %i.aue = getelementptr inbounds nuw i8, ptr %.512581744.us.i, i64 48
  %i.auf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aud, <8 x i32> %i.ka, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aug = bitcast <8 x float> %i.auf to <8 x i32>
  %i.auh = lshr <8 x i32> %i.aug, splat (i32 16)  ; 2 uses
  %i.aui = shufflevector <8 x i32> %i.auh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.auj = shufflevector <8 x i32> %i.auh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.auk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aui, <4 x i32> %i.auj)
  store <8 x i16> %i.auk, ptr %i.aue, align 16, !tbaa !45
  %i.aul = getelementptr inbounds nuw i8, ptr %.512581744.us.i, i64 64 ; 3 uses
  %indvars.iv.next2257.i = add nuw nsw i64 %indvars.iv2256.i, 1 ; 2 uses
  %exitcond2260.not.i = icmp eq i64 %indvars.iv.next2257.i, %wide.trip.count2246.i
  br i1 %exitcond2260.not.i, label %._crit_edge1746.us.i, label %bb.be, !llvm.loop !320

._crit_edge1746.us.i:                             ; preds = %bb.be
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %.212361750.us.i, i64 %i.kd ; 2 uses
  %i.aun = add nuw nsw i32 %.212671748.us.i, 4    ; 3 uses
  %i.auo = or disjoint i32 %i.aun, 3
  %i.aup = icmp slt i32 %i.auo, %i.l
  br i1 %i.aup, label %.preheader1590.us.i, label %.preheader1594.i, !llvm.loop !321
end_hunk_8
begin_hunk_9_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %lcmp.mod567.not = icmp eq i64 %xtraiter565, 0
  %lcmp.mod569 = trunc i32 %i.d to i1
  %xtraiter573 = and i64 %wide.trip.count2338.i, 1
  %i.baf = icmp eq i64 %i.bad, 0
  %unroll_iter578 = and i64 %wide.trip.count2338.i, 2147483646
  %lcmp.mod575.not = icmp eq i64 %xtraiter573, 0
  %lcmp.mod577 = trunc i32 %i.d to i1
  %xtraiter581 = and i64 %wide.trip.count2338.i, 1
  %i.bag = icmp eq i64 %i.bad, 0
  %unroll_iter586 = and i64 %wide.trip.count2338.i, 2147483646
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  %lcmp.mod585 = trunc i32 %i.d to i1
  %min.iters.check336 = icmp ult i32 %i.d, 4
  %min.iters.check338 = icmp ult i32 %i.d, 16
  %i.bah = and i64 %wide.trip.count2338.i, 12
  %n.vec340 = and i64 %wide.trip.count2338.i, 2147483632 ; 5 uses
  %i.bai = shl nuw nsw i64 %n.vec340, 3
  %cmp.n351 = icmp eq i64 %n.vec340, %wide.trip.count2338.i
  %min.epilog.iters.check356 = icmp eq i64 %i.bah, 0
  %n.vec358 = and i64 %wide.trip.count2338.i, 2147483644 ; 4 uses
  %i.baj = shl nuw nsw i64 %n.vec358, 3
  %cmp.n369 = icmp eq i64 %n.vec358, %wide.trip.count2338.i
  %min.iters.check = icmp ult i32 %i.d, 4
  %min.iters.check324 = icmp ult i32 %i.d, 16
  %i.bak = and i64 %wide.trip.count2338.i, 12
  %n.vec = and i64 %wide.trip.count2338.i, 2147483632 ; 5 uses
  %i.bal = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2338.i
  %min.epilog.iters.check = icmp eq i64 %i.bak, 0
  %n.vec326 = and i64 %wide.trip.count2338.i, 2147483644 ; 4 uses
  %i.bam = shl nuw nsw i64 %n.vec326, 2
  %cmp.n333 = icmp eq i64 %n.vec326, %wide.trip.count2338.i
  br label %_ZN4ncnn3MatD2Ev.exit1300.i

_ZN4ncnn3MatD2Ev.exit1301.i:                      ; preds = %._crit_edge1865.split.i, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i
  %indvars.iv2325.i = phi i64 [ %i.aie, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2326.i, %._crit_edge1865.split.i ] ; 2 uses
  %i.ban = phi i32 [ %i.agn, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bmd, %._crit_edge1865.split.i ]
  %i.bao = phi <4 x i32> [ %i.aia, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bmc, %._crit_edge1865.split.i ] ; 2 uses
  %i.bap = sext <4 x i32> %i.bao to <4 x i64>
  %i.baq = shl nsw <4 x i64> %i.bap, splat (i64 2) ; 4 uses
  %i.bar = load ptr, ptr %i.m, align 8, !tbaa !19 ; 5 uses
  %i.bas = trunc i64 %indvars.iv2325.i to i32     ; 6 uses
  %i.bat = mul i32 %i.ahw, %i.bas
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds [4 x i8], ptr %i.bar, i64 %i.bau ; 2 uses
  %i.baw = add i32 %i.bas, 1
  %i.bax = mul i32 %i.baw, %i.ahw
  %i.bay = sext i32 %i.bax to i64
  %i.baz = getelementptr inbounds [4 x i8], ptr %i.bar, i64 %i.bay ; 2 uses
  %i.bba = add i32 %i.bas, 2
  %i.bbb = mul i32 %i.bba, %i.ahw
  %i.bbc = sext i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds [4 x i8], ptr %i.bar, i64 %i.bbc ; 2 uses
  %i.bbe = mul i32 %i.ban, %i.ahw
  %i.bbf = sext i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds [4 x i8], ptr %i.bar, i64 %i.bbf ; 2 uses
  %i.bbh = lshr i32 %i.bas, 4
  %i.bbi = lshr i32 %i.bas, 3
  %i.bbj = and i32 %i.bbi, 1
  %i.bbk = add nuw nsw i32 %i.bbj, %i.bbh
  %i.bbl = lshr i32 %i.bas, 2
  %i.bbm = and i32 %i.bbl, 1
  %i.bbn = add nuw nsw i32 %i.bbk, %i.bbm
  %i.bbo = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !380
  %i.bbp = load i64, ptr %i.ags, align 8, !tbaa !20, !noalias !380
  %i.bbq = zext nneg i32 %i.bbn to i64
  %i.bbr = mul i64 %i.bbp, %i.bbq
  %i.bbs = load i64, ptr %i.agt, align 8, !tbaa !44, !noalias !380
  %i.bbt = mul i64 %i.bbr, %i.bbs
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbt ; 4 uses
  br i1 %i.ahd, label %.preheader1583.lr.ph.i, label %.preheader1586.i

.preheader1583.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1301.i
  br i1 %i.ahe, label %.preheader1583.us.i, label %.preheader1586.thread.i

.preheader1583.us.i:                              ; preds = %.preheader1583.lr.ph.i, %._crit_edge1784.us.i
  %.011951791.us.i = phi i32 [ %i.bdz, %._crit_edge1784.us.i ], [ 0, %.preheader1583.lr.ph.i ]
  %.012001790.us.i = phi ptr [ %i.bdu, %._crit_edge1784.us.i ], [ %i.bbu, %.preheader1583.lr.ph.i ]
  %.012111789.us.i = phi ptr [ %i.bdy, %._crit_edge1784.us.i ], [ %i.bbg, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012141788.us.i = phi ptr [ %i.bdx, %._crit_edge1784.us.i ], [ %i.bbd, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012171787.us.i = phi ptr [ %i.bdw, %._crit_edge1784.us.i ], [ %i.baz, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012201786.us.i = phi ptr [ %i.bdv, %._crit_edge1784.us.i ], [ %i.bav, %.preheader1583.lr.ph.i ] ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader1583.us.i
  %indvars.iv2293.i = phi i64 [ 0, %.preheader1583.us.i ], [ %indvars.iv.next2294.i, %bb.bg ] ; 5 uses
  %.112011782.us.i = phi ptr [ %.012001790.us.i, %.preheader1583.us.i ], [ %i.bdu, %bb.bg ] ; 5 uses
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %.012201786.us.i, i64 %indvars.iv2293.i
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %.012171787.us.i, i64 %indvars.iv2293.i
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %.012141788.us.i, i64 %indvars.iv2293.i
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.012111789.us.i, i64 %indvars.iv2293.i
  %i.bbz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbv, <16 x i32> %i.ahc, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bca = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbw, <16 x i32> %i.ahc, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbx, <16 x i32> %i.ahc, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bby, <16 x i32> %i.ahc, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcd = shufflevector <16 x float> %i.bbz, <16 x float> %i.bca, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bce = shufflevector <16 x float> %i.bbz, <16 x float> %i.bca, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcf = shufflevector <16 x float> %i.bcb, <16 x float> %i.bcc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bcg = shufflevector <16 x float> %i.bcb, <16 x float> %i.bcc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bch = shufflevector <16 x float> %i.bcd, <16 x float> %i.bcf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bci = shufflevector <16 x float> %i.bce, <16 x float> %i.bcg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bcj = shufflevector <16 x float> %i.bcd, <16 x float> %i.bcf, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bck = shufflevector <16 x float> %i.bce, <16 x float> %i.bcg, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bcl = shufflevector <16 x float> %i.bch, <16 x float> %i.bci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcm = shufflevector <16 x float> %i.bcj, <16 x float> %i.bck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcn = shufflevector <16 x float> %i.bch, <16 x float> %i.bci, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bco = shufflevector <16 x float> %i.bcj, <16 x float> %i.bck, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcp = bitcast <16 x float> %i.bcl to <16 x i32>
  %i.bcq = lshr <16 x i32> %i.bcp, splat (i32 16) ; 2 uses
  %i.bcr = shufflevector <16 x i32> %i.bcq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcs = shufflevector <16 x i32> %i.bcq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bct = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bcr, <8 x i32> %i.bcs)
  %i.bcu = bitcast <16 x i16> %i.bct to <4 x i64>
  %i.bcv = shufflevector <4 x i64> %i.bcu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bcv, ptr %.112011782.us.i, align 1, !tbaa !45
  %i.bcw = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 32
  %i.bcx = bitcast <16 x float> %i.bcm to <16 x i32>
  %i.bcy = lshr <16 x i32> %i.bcx, splat (i32 16) ; 2 uses
  %i.bcz = shufflevector <16 x i32> %i.bcy, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bda = shufflevector <16 x i32> %i.bcy, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bcz, <8 x i32> %i.bda)
  %i.bdc = bitcast <16 x i16> %i.bdb to <4 x i64>
  %i.bdd = shufflevector <4 x i64> %i.bdc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdd, ptr %i.bcw, align 1, !tbaa !45
  %i.bde = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 64
  %i.bdf = bitcast <16 x float> %i.bcn to <16 x i32>
  %i.bdg = lshr <16 x i32> %i.bdf, splat (i32 16) ; 2 uses
  %i.bdh = shufflevector <16 x i32> %i.bdg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdi = shufflevector <16 x i32> %i.bdg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdh, <8 x i32> %i.bdi)
  %i.bdk = bitcast <16 x i16> %i.bdj to <4 x i64>
  %i.bdl = shufflevector <4 x i64> %i.bdk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdl, ptr %i.bde, align 1, !tbaa !45
  %i.bdm = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 96
  %i.bdn = bitcast <16 x float> %i.bco to <16 x i32>
  %i.bdo = lshr <16 x i32> %i.bdn, splat (i32 16) ; 2 uses
  %i.bdp = shufflevector <16 x i32> %i.bdo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdq = shufflevector <16 x i32> %i.bdo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdp, <8 x i32> %i.bdq)
  %i.bds = bitcast <16 x i16> %i.bdr to <4 x i64>
  %i.bdt = shufflevector <4 x i64> %i.bds, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdt, ptr %i.bdm, align 1, !tbaa !45
  %i.bdu = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 128 ; 3 uses
  %indvars.iv.next2294.i = add nuw nsw i64 %indvars.iv2293.i, 1 ; 2 uses
  %exitcond2297.not.i = icmp eq i64 %indvars.iv.next2294.i, %wide.trip.count2296.i
  br i1 %exitcond2297.not.i, label %._crit_edge1784.us.i, label %bb.bg, !llvm.loop !330

._crit_edge1784.us.i:                             ; preds = %bb.bg
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %.012201786.us.i, i64 %i.ahg ; 2 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %.012171787.us.i, i64 %i.ahg ; 2 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.012141788.us.i, i64 %i.ahg ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.012111789.us.i, i64 %i.ahg ; 2 uses
  %i.bdz = add nuw nsw i32 %.011951791.us.i, 16   ; 2 uses
  %i.bea = or disjoint i32 %i.bdz, 15
  %i.beb = icmp slt i32 %i.bea, %i.l
  br i1 %i.beb, label %.preheader1583.us.i, label %.preheader1586.i, !llvm.loop !331

.preheader1586.i:                                 ; preds = %._crit_edge1784.us.i, %_ZN4ncnn3MatD2Ev.exit1301.i
  %.01220.lcssa.i = phi ptr [ %i.bav, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bdv, %._crit_edge1784.us.i ] ; 3 uses
  %.01217.lcssa.i = phi ptr [ %i.baz, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bdw, %._crit_edge1784.us.i ] ; 3 uses
  %.01214.lcssa.i = phi ptr [ %i.bbd, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bdx, %._crit_edge1784.us.i ] ; 3 uses
  %.01211.lcssa.i = phi ptr [ %i.bbg, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bdy, %._crit_edge1784.us.i ] ; 3 uses
  %.01200.lcssa.i = phi ptr [ %i.bbu, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bdu, %._crit_edge1784.us.i ] ; 3 uses
  %.01195.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.aic, %._crit_edge1784.us.i ] ; 4 uses
  %i.bec = or disjoint i32 %.01195.lcssa.i, 7
  %i.bed = icmp slt i32 %i.bec, %i.l
  br i1 %i.bed, label %.preheader1582.lr.ph.i, label %.preheader1585.i

.preheader1586.thread.i:                          ; preds = %.preheader1583.lr.ph.i
  %scevgep2280.i = getelementptr i8, ptr %i.bar, i64 %i.ahv ; 4 uses
  %i.bee = extractelement <4 x i64> %i.baq, i64 0
  %scevgep2283.i = getelementptr i8, ptr %scevgep2280.i, i64 %i.bee ; 2 uses
  %i.bef = extractelement <4 x i64> %i.baq, i64 1
  %scevgep2286.i = getelementptr i8, ptr %scevgep2280.i, i64 %i.bef ; 2 uses
  %i.beg = extractelement <4 x i64> %i.baq, i64 2
  %scevgep2289.i = getelementptr i8, ptr %scevgep2280.i, i64 %i.beg ; 2 uses
  %i.beh = extractelement <4 x i64> %i.baq, i64 3
  %scevgep2292.i = getelementptr i8, ptr %scevgep2280.i, i64 %i.beh ; 2 uses
  br i1 %i.aih, label %.preheader1582.preheader.i, label %.preheader1585.i

.preheader1582.lr.ph.i:                           ; preds = %.preheader1586.i
  br i1 %i.ahe, label %.preheader1582.us.i, label %.preheader1582.preheader.i

.preheader1582.preheader.i:                       ; preds = %.preheader1582.lr.ph.i, %.preheader1586.thread.i
  %.01220.lcssa25342551.i = phi ptr [ %.01220.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2283.i, %.preheader1586.thread.i ]
  %.01217.lcssa25352550.i = phi ptr [ %.01217.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2286.i, %.preheader1586.thread.i ]
  %.01214.lcssa25362549.i = phi ptr [ %.01214.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2289.i, %.preheader1586.thread.i ]
  %.01211.lcssa25372548.i = phi ptr [ %.01211.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2292.i, %.preheader1586.thread.i ]
  %.01200.lcssa25382547.i = phi ptr [ %.01200.lcssa.i, %.preheader1582.lr.ph.i ], [ %i.bbu, %.preheader1586.thread.i ]
  %.01195.lcssa25392546.i = phi i32 [ %.01195.lcssa.i, %.preheader1582.lr.ph.i ], [ %i.aic, %.preheader1586.thread.i ] ; 2 uses
  %i.bei = sub i32 %i.aid, %.01195.lcssa25392546.i ; 2 uses
  %i.bej = lshr i32 %i.bei, 1
  %i.bek = and i32 %i.bej, 2147483644
  %narrow2446.i = add nuw i32 %i.bek, 4
  %i.bel = zext i32 %narrow2446.i to i64
  %i.bem = mul nsw i64 %i.bel, %i.ahi             ; 4 uses
  %scevgep2298.i = getelementptr i8, ptr %.01220.lcssa25342551.i, i64 %i.bem
  %scevgep2299.i = getelementptr i8, ptr %.01217.lcssa25352550.i, i64 %i.bem
  %scevgep2300.i = getelementptr i8, ptr %.01214.lcssa25362549.i, i64 %i.bem
  %scevgep2301.i = getelementptr i8, ptr %.01211.lcssa25372548.i, i64 %i.bem
  %i.ben = add nsw i32 %.01195.lcssa25392546.i, 8
  %i.beo = and i32 %i.bei, -8
  %i.bep = add i32 %i.ben, %i.beo
  br label %.preheader1585.i

.preheader1582.us.i:                              ; preds = %.preheader1582.lr.ph.i, %._crit_edge1806.us.i
  %.111961813.us.i = phi i32 [ %i.bgi, %._crit_edge1806.us.i ], [ %.01195.lcssa.i, %.preheader1582.lr.ph.i ]
  %.212021812.us.i = phi ptr [ %i.bgd, %._crit_edge1806.us.i ], [ %.01200.lcssa.i, %.preheader1582.lr.ph.i ]
  %.112121811.us.i = phi ptr [ %i.bgh, %._crit_edge1806.us.i ], [ %.01211.lcssa.i, %.preheader1582.lr.ph.i ] ; 2 uses
  %.112151810.us.i = phi ptr [ %i.bgg, %._crit_edge1806.us.i ], [ %.01214.lcssa.i, %.preheader1582.lr.ph.i ] ; 2 uses
  %.112181809.us.i = phi ptr [ %i.bgf, %._crit_edge1806.us.i ], [ %.01217.lcssa.i, %.preheader1582.lr.ph.i ] ; 2 uses
  %.112211808.us.i = phi ptr [ %i.bge, %._crit_edge1806.us.i ], [ %.01220.lcssa.i, %.preheader1582.lr.ph.i ] ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.preheader1582.us.i
  %indvars.iv2302.i = phi i64 [ 0, %.preheader1582.us.i ], [ %indvars.iv.next2303.i, %bb.bh ] ; 5 uses
  %.312031804.us.i = phi ptr [ %.212021812.us.i, %.preheader1582.us.i ], [ %i.bgd, %bb.bh ] ; 5 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %.112211808.us.i, i64 %indvars.iv2302.i
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.112181809.us.i, i64 %indvars.iv2302.i
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %.112151810.us.i, i64 %indvars.iv2302.i
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %.112121811.us.i, i64 %indvars.iv2302.i
  %i.beu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.beq, <8 x i32> %i.agz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bev = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ber, <8 x i32> %i.agz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bew = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bes, <8 x i32> %i.agz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bex = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bet, <8 x i32> %i.agz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bey = shufflevector <8 x float> %i.beu, <8 x float> %i.bev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bez = shufflevector <8 x float> %i.beu, <8 x float> %i.bev, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bfa = shufflevector <8 x float> %i.bew, <8 x float> %i.bex, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bfb = shufflevector <8 x float> %i.bew, <8 x float> %i.bex, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bfc = shufflevector <8 x float> %i.bey, <8 x float> %i.bfa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.bfd = shufflevector <8 x float> %i.bez, <8 x float> %i.bfb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.bfe = shufflevector <8 x float> %i.bey, <8 x float> %i.bfa, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.bff = shufflevector <8 x float> %i.bez, <8 x float> %i.bfb, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.bfg = bitcast <8 x float> %i.bfc to <8 x i32>
  %i.bfh = lshr <8 x i32> %i.bfg, splat (i32 16)  ; 2 uses
  %i.bfi = shufflevector <8 x i32> %i.bfh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfj = shufflevector <8 x i32> %i.bfh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bfk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bfi, <4 x i32> %i.bfj)
  store <8 x i16> %i.bfk, ptr %.312031804.us.i, align 1, !tbaa !45
  %i.bfl = getelementptr inbounds nuw i8, ptr %.312031804.us.i, i64 16
  %i.bfm = bitcast <8 x float> %i.bfd to <8 x i32>
  %i.bfn = lshr <8 x i32> %i.bfm, splat (i32 16)  ; 2 uses
  %i.bfo = shufflevector <8 x i32> %i.bfn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfp = shufflevector <8 x i32> %i.bfn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bfq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bfo, <4 x i32> %i.bfp)
  store <8 x i16> %i.bfq, ptr %i.bfl, align 1, !tbaa !45
  %i.bfr = getelementptr inbounds nuw i8, ptr %.312031804.us.i, i64 32
  %i.bfs = bitcast <8 x float> %i.bfe to <8 x i32>
  %i.bft = lshr <8 x i32> %i.bfs, splat (i32 16)  ; 2 uses
  %i.bfu = shufflevector <8 x i32> %i.bft, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfv = shufflevector <8 x i32> %i.bft, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bfw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bfu, <4 x i32> %i.bfv)
  store <8 x i16> %i.bfw, ptr %i.bfr, align 1, !tbaa !45
  %i.bfx = getelementptr inbounds nuw i8, ptr %.312031804.us.i, i64 48
  %i.bfy = bitcast <8 x float> %i.bff to <8 x i32>
  %i.bfz = lshr <8 x i32> %i.bfy, splat (i32 16)  ; 2 uses
  %i.bga = shufflevector <8 x i32> %i.bfz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgb = shufflevector <8 x i32> %i.bfz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bga, <4 x i32> %i.bgb)
  store <8 x i16> %i.bgc, ptr %i.bfx, align 1, !tbaa !45
  %i.bgd = getelementptr inbounds nuw i8, ptr %.312031804.us.i, i64 64 ; 3 uses
  %indvars.iv.next2303.i = add nuw nsw i64 %indvars.iv2302.i, 1 ; 2 uses
  %exitcond2306.not.i = icmp eq i64 %indvars.iv.next2303.i, %wide.trip.count2296.i
  br i1 %exitcond2306.not.i, label %._crit_edge1806.us.i, label %bb.bh, !llvm.loop !332

._crit_edge1806.us.i:                             ; preds = %bb.bh
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %.112211808.us.i, i64 %i.ahi ; 2 uses
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %.112181809.us.i, i64 %i.ahi ; 2 uses
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %.112151810.us.i, i64 %i.ahi ; 2 uses
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %.112121811.us.i, i64 %i.ahi ; 2 uses
  %i.bgi = add nuw nsw i32 %.111961813.us.i, 8    ; 3 uses
  %i.bgj = or disjoint i32 %i.bgi, 7
  %i.bgk = icmp slt i32 %i.bgj, %i.l
  br i1 %i.bgk, label %.preheader1582.us.i, label %.preheader1585.i, !llvm.loop !333

.preheader1585.i:                                 ; preds = %._crit_edge1806.us.i, %.preheader1582.preheader.i, %.preheader1586.thread.i, %.preheader1586.i
  %.11221.lcssa.i = phi ptr [ %.01220.lcssa.i, %.preheader1586.i ], [ %scevgep2283.i, %.preheader1586.thread.i ], [ %scevgep2298.i, %.preheader1582.preheader.i ], [ %i.bge, %._crit_edge1806.us.i ] ; 2 uses
  %.11218.lcssa.i = phi ptr [ %.01217.lcssa.i, %.preheader1586.i ], [ %scevgep2286.i, %.preheader1586.thread.i ], [ %scevgep2299.i, %.preheader1582.preheader.i ], [ %i.bgf, %._crit_edge1806.us.i ]
  %.11215.lcssa.i = phi ptr [ %.01214.lcssa.i, %.preheader1586.i ], [ %scevgep2289.i, %.preheader1586.thread.i ], [ %scevgep2300.i, %.preheader1582.preheader.i ], [ %i.bgg, %._crit_edge1806.us.i ]
  %.11212.lcssa.i = phi ptr [ %.01211.lcssa.i, %.preheader1586.i ], [ %scevgep2292.i, %.preheader1586.thread.i ], [ %scevgep2301.i, %.preheader1582.preheader.i ], [ %i.bgh, %._crit_edge1806.us.i ]
  %.21202.lcssa.i = phi ptr [ %.01200.lcssa.i, %.preheader1586.i ], [ %i.bbu, %.preheader1586.thread.i ], [ %.01200.lcssa25382547.i, %.preheader1582.preheader.i ], [ %i.bgd, %._crit_edge1806.us.i ] ; 2 uses
  %.11196.lcssa.i = phi i32 [ %.01195.lcssa.i, %.preheader1586.i ], [ %i.aic, %.preheader1586.thread.i ], [ %i.bep, %.preheader1582.preheader.i ], [ %i.bgi, %._crit_edge1806.us.i ] ; 3 uses
  %i.bgl = or disjoint i32 %.11196.lcssa.i, 3
  %i.bgm = icmp slt i32 %i.bgl, %i.l
  br i1 %i.bgm, label %.preheader1581.lr.ph.i, label %._crit_edge1836.i

.preheader1581.lr.ph.i:                           ; preds = %.preheader1585.i
  br i1 %i.ahe, label %.preheader1581.us.i, label %._crit_edge1865.split.i

.preheader1581.us.i:                              ; preds = %.preheader1581.lr.ph.i, %._crit_edge1828.us.i
  %.211971835.us.i = phi i32 [ %i.bib, %._crit_edge1828.us.i ], [ %.11196.lcssa.i, %.preheader1581.lr.ph.i ]
  %.412041834.us.i = phi ptr [ %i.bhw, %._crit_edge1828.us.i ], [ %.21202.lcssa.i, %.preheader1581.lr.ph.i ]
  %.212131833.us.i = phi ptr [ %i.bia, %._crit_edge1828.us.i ], [ %.11212.lcssa.i, %.preheader1581.lr.ph.i ] ; 2 uses
  %.212161832.us.i = phi ptr [ %i.bhz, %._crit_edge1828.us.i ], [ %.11215.lcssa.i, %.preheader1581.lr.ph.i ] ; 2 uses
  %.212191831.us.i = phi ptr [ %i.bhy, %._crit_edge1828.us.i ], [ %.11218.lcssa.i, %.preheader1581.lr.ph.i ] ; 2 uses
  %.212221830.us.i = phi ptr [ %i.bhx, %._crit_edge1828.us.i ], [ %.11221.lcssa.i, %.preheader1581.lr.ph.i ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader1581.us.i
  %indvars.iv2308.i = phi i64 [ 0, %.preheader1581.us.i ], [ %indvars.iv.next2309.i, %bb.bi ] ; 5 uses
  %.512051826.us.i = phi ptr [ %.412041834.us.i, %.preheader1581.us.i ], [ %i.bhw, %bb.bi ] ; 3 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %.212221830.us.i, i64 %indvars.iv2308.i
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %.212191831.us.i, i64 %indvars.iv2308.i
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %.212161832.us.i, i64 %indvars.iv2308.i
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %.212131833.us.i, i64 %indvars.iv2308.i
  %i.bgr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bgn, <4 x i32> %i.agw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bgs = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bgo, <4 x i32> %i.agw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bgt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bgp, <4 x i32> %i.agw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bgu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bgq, <4 x i32> %i.agw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bgv = shufflevector <4 x float> %i.bgr, <4 x float> %i.bgs, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bgw = shufflevector <4 x float> %i.bgt, <4 x float> %i.bgu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bgx = shufflevector <4 x float> %i.bgr, <4 x float> %i.bgs, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bgy = shufflevector <4 x float> %i.bgt, <4 x float> %i.bgu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bgz = shufflevector <4 x float> %i.bgv, <4 x float> %i.bgw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bha = shufflevector <4 x float> %i.bgw, <4 x float> %i.bgv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bhb = shufflevector <4 x float> %i.bgx, <4 x float> %i.bgy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bhc = shufflevector <4 x float> %i.bgy, <4 x float> %i.bgx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bhd = bitcast <4 x float> %i.bgz to <4 x i32>
  %i.bhe = lshr <4 x i32> %i.bhd, splat (i32 16)
  %i.bhf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bhe, <4 x i32> poison)
  %i.bhg = bitcast <8 x i16> %i.bhf to <2 x i64>
  %i.bhh = bitcast <4 x float> %i.bha to <4 x i32>
  %i.bhi = lshr <4 x i32> %i.bhh, splat (i32 16)
  %i.bhj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bhi, <4 x i32> poison)
  %i.bhk = bitcast <8 x i16> %i.bhj to <2 x i64>
  %i.bhl = shufflevector <2 x i64> %i.bhg, <2 x i64> %i.bhk, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bhl, ptr %.512051826.us.i, align 1, !tbaa !45
  %i.bhm = getelementptr inbounds nuw i8, ptr %.512051826.us.i, i64 16
  %i.bhn = bitcast <4 x float> %i.bhb to <4 x i32>
  %i.bho = lshr <4 x i32> %i.bhn, splat (i32 16)
  %i.bhp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bho, <4 x i32> poison)
  %i.bhq = bitcast <8 x i16> %i.bhp to <2 x i64>
  %i.bhr = bitcast <4 x float> %i.bhc to <4 x i32>
  %i.bhs = lshr <4 x i32> %i.bhr, splat (i32 16)
  %i.bht = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bhs, <4 x i32> poison)
  %i.bhu = bitcast <8 x i16> %i.bht to <2 x i64>
  %i.bhv = shufflevector <2 x i64> %i.bhq, <2 x i64> %i.bhu, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bhv, ptr %i.bhm, align 1, !tbaa !45
  %i.bhw = getelementptr inbounds nuw i8, ptr %.512051826.us.i, i64 32 ; 3 uses
  %indvars.iv.next2309.i = add nuw nsw i64 %indvars.iv2308.i, 1 ; 2 uses
  %exitcond2312.not.i = icmp eq i64 %indvars.iv.next2309.i, %wide.trip.count2296.i
  br i1 %exitcond2312.not.i, label %._crit_edge1828.us.i, label %bb.bi, !llvm.loop !334

._crit_edge1828.us.i:                             ; preds = %bb.bi
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %.212221830.us.i, i64 %i.ahk ; 2 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %.212191831.us.i, i64 %i.ahk
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %.212161832.us.i, i64 %i.ahk
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %.212131833.us.i, i64 %i.ahk
  %i.bib = add nuw nsw i32 %.211971835.us.i, 4    ; 3 uses
  %i.bic = or disjoint i32 %i.bib, 3
  %i.bid = icmp slt i32 %i.bic, %i.l
  br i1 %i.bid, label %.preheader1581.us.i, label %._crit_edge1836.i, !llvm.loop !335

._crit_edge1836.i:                                ; preds = %._crit_edge1828.us.i, %.preheader1585.i
  %.21222.lcssa.i = phi ptr [ %.11221.lcssa.i, %.preheader1585.i ], [ %i.bhx, %._crit_edge1828.us.i ] ; 2 uses
  %.41204.lcssa.i = phi ptr [ %.21202.lcssa.i, %.preheader1585.i ], [ %i.bhw, %._crit_edge1828.us.i ] ; 2 uses
  %.21197.lcssa.i = phi i32 [ %.11196.lcssa.i, %.preheader1585.i ], [ %i.bib, %._crit_edge1828.us.i ] ; 3 uses
  %i.bie = or disjoint i32 %.21197.lcssa.i, 1
  %i.bif = icmp slt i32 %i.bie, %i.l
  br i1 %i.bif, label %.preheader1580.lr.ph.i, label %.preheader1584.i

.preheader1580.lr.ph.i:                           ; preds = %._crit_edge1836.i
  br i1 %i.ahe, label %.preheader1580.us.i, label %._crit_edge1865.split.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1848.us.i
  %.311981852.us.i = phi i32 [ %i.bke, %._crit_edge1848.us.i ], [ %.21197.lcssa.i, %.preheader1580.lr.ph.i ]
  %.612061851.us.i = phi ptr [ %.lcssa490, %._crit_edge1848.us.i ], [ %.41204.lcssa.i, %.preheader1580.lr.ph.i ] ; 2 uses
  %.312231850.us.i = phi ptr [ %i.bkd, %._crit_edge1848.us.i ], [ %.21222.lcssa.i, %.preheader1580.lr.ph.i ] ; 4 uses
  br i1 %i.ail, label %.epil.preheader548, label %.preheader1580.us.i.new

.preheader1580.us.i.new:                          ; preds = %.preheader1580.us.i, %.preheader1580.us.i.new
  %indvars.iv2314.i = phi i64 [ %indvars.iv.next2315.i.1, %.preheader1580.us.i.new ], [ 0, %.preheader1580.us.i ] ; 3 uses
  %.712071846.us.i = phi ptr [ %i.bjm, %.preheader1580.us.i.new ], [ %.612061851.us.i, %.preheader1580.us.i ] ; 5 uses
  %niter555 = phi i64 [ %niter555.next.1, %.preheader1580.us.i.new ], [ 0, %.preheader1580.us.i ]
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %.312231850.us.i, i64 %indvars.iv2314.i ; 2 uses
  %i.bih = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.big, <4 x i32> %i.ahm, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bii = bitcast <4 x float> %i.bih to <4 x i32>
  %i.bij = lshr <4 x i32> %i.bii, splat (i32 16)
  %i.bik = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bij, <4 x i32> poison)
  %i.bil = bitcast <8 x i16> %i.bik to <2 x i64>
  %i.bim = extractelement <2 x i64> %i.bil, i64 0
  store i64 %i.bim, ptr %.712071846.us.i, align 1, !tbaa !45
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %i.big, i64 %i.ahn
  %i.bio = getelementptr inbounds nuw i8, ptr %.712071846.us.i, i64 8
  %i.bip = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bin, <4 x i32> %i.ahm, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.biq = bitcast <4 x float> %i.bip to <4 x i32>
  %i.bir = lshr <4 x i32> %i.biq, splat (i32 16)
  %i.bis = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bir, <4 x i32> poison)
  %i.bit = bitcast <8 x i16> %i.bis to <2 x i64>
  %i.biu = extractelement <2 x i64> %i.bit, i64 0
  store i64 %i.biu, ptr %i.bio, align 1, !tbaa !45
  %i.biv = getelementptr inbounds nuw i8, ptr %.712071846.us.i, i64 16
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.312231850.us.i, i64 %indvars.iv2314.i
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 4 ; 2 uses
  %i.biy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bix, <4 x i32> %i.ahm, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.biz = bitcast <4 x float> %i.biy to <4 x i32>
  %i.bja = lshr <4 x i32> %i.biz, splat (i32 16)
  %i.bjb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bja, <4 x i32> poison)
  %i.bjc = bitcast <8 x i16> %i.bjb to <2 x i64>
  %i.bjd = extractelement <2 x i64> %i.bjc, i64 0
  store i64 %i.bjd, ptr %i.biv, align 1, !tbaa !45
end_hunk_9
begin_hunk_10_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %lcmp.mod591.not = icmp eq i64 %xtraiter589, 0
  %lcmp.mod593 = trunc i32 %i.d to i1
  %xtraiter597 = and i64 %wide.trip.count2377.i, 3 ; 3 uses
  %i.bns = icmp ult i64 %i.bnq, 3
  %unroll_iter602 = and i64 %wide.trip.count2377.i, 2147483644
  %lcmp.mod599.not = icmp eq i64 %xtraiter597, 0
  %lcmp.mod601 = icmp ne i64 %xtraiter597, 0
  %xtraiter605 = and i64 %wide.trip.count2377.i, 3 ; 3 uses
  %i.bnt = icmp ult i64 %i.bnq, 3
  %unroll_iter610 = and i64 %wide.trip.count2377.i, 2147483644
  %lcmp.mod607.not = icmp eq i64 %xtraiter605, 0
  %lcmp.mod609 = icmp ne i64 %xtraiter605, 0
  %min.iters.check403 = icmp ult i32 %i.d, 8
  %min.iters.check405 = icmp ult i32 %i.d, 32
  %i.bnu = and i64 %wide.trip.count2377.i, 24
  %n.vec407 = and i64 %wide.trip.count2377.i, 2147483616 ; 5 uses
  %i.bnv = shl nuw nsw i64 %n.vec407, 2
  %cmp.n420 = icmp eq i64 %n.vec407, %wide.trip.count2377.i
  %min.epilog.iters.check425 = icmp eq i64 %i.bnu, 0
  %n.vec427 = and i64 %wide.trip.count2377.i, 2147483640 ; 4 uses
  %i.bnw = shl nuw nsw i64 %n.vec427, 2
  %cmp.n436 = icmp eq i64 %n.vec427, %wide.trip.count2377.i
  %min.iters.check372 = icmp ult i32 %i.d, 8
  %min.iters.check374 = icmp ult i32 %i.d, 64
  %i.bnx = and i64 %wide.trip.count2377.i, 56
  %n.vec376 = and i64 %wide.trip.count2377.i, 2147483584 ; 5 uses
  %i.bny = shl nuw nsw i64 %n.vec376, 1
  %cmp.n386 = icmp eq i64 %n.vec376, %wide.trip.count2377.i
  %min.epilog.iters.check391 = icmp eq i64 %i.bnx, 0
  %n.vec393 = and i64 %wide.trip.count2377.i, 2147483640 ; 4 uses
  %i.bnz = shl nuw nsw i64 %n.vec393, 1
  %cmp.n400 = icmp eq i64 %n.vec393, %wide.trip.count2377.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1300.i:                      ; preds = %._crit_edge1942.split.i, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i
  %indvars.iv2367.i = phi i64 [ %i.azz, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2368.i, %._crit_edge1942.split.i ] ; 2 uses
  %indvars.iv2332.i = phi i32 [ %i.azv, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2333.i, %._crit_edge1942.split.i ] ; 2 uses
  %indvars.iv2329.i = phi i32 [ %i.azt, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2330.i, %._crit_edge1942.split.i ] ; 2 uses
  %i.boa = phi i32 [ %i.ayo, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %i.byq, %._crit_edge1942.split.i ]
  %i.bob = sext i32 %indvars.iv2329.i to i64
  %i.boc = shl nsw i64 %i.bob, 2
  %i.bod = sext i32 %indvars.iv2332.i to i64
  %i.boe = shl nsw i64 %i.bod, 2
  %i.bof = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  %i.bog = trunc nsw i64 %indvars.iv2367.i to i32 ; 2 uses
  %i.boh = mul i32 %i.ayq, %i.bog
  %i.boi = sext i32 %i.boh to i64
  %i.boj = getelementptr inbounds [4 x i8], ptr %i.bof, i64 %i.boi ; 2 uses
  %i.bok = mul i32 %i.boa, %i.ayq
  %i.bol = sext i32 %i.bok to i64
  %i.bom = getelementptr inbounds [4 x i8], ptr %i.bof, i64 %i.bol ; 2 uses
  %i.bon = insertelement <4 x i32> poison, i32 %i.bog, i64 0
  %i.boo = shufflevector <4 x i32> %i.bon, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bop = lshr <4 x i32> %i.boo, <i32 3, i32 2, i32 1, i32 4>
  %i.boq = and <4 x i32> %i.bop, <i32 1, i32 1, i32 1, i32 -1>
  %i.bor = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.boq)
  %i.bos = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !381
  %i.bot = load i64, ptr %i.ayr, align 8, !tbaa !20, !noalias !381
  %i.bou = zext nneg i32 %i.bor to i64
  %i.bov = mul i64 %i.bot, %i.bou
  %i.bow = load i64, ptr %i.ays, align 8, !tbaa !44, !noalias !381
  %i.box = mul i64 %i.bov, %i.bow
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bos, i64 %i.box ; 4 uses
  br i1 %i.azc, label %.preheader1573.lr.ph.i, label %.preheader1577.i

.preheader1573.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1300.i
  br i1 %i.azd, label %.preheader1573.us.i, label %.preheader1577.thread.i

.preheader1573.us.i:                              ; preds = %.preheader1573.lr.ph.i, %._crit_edge1870.us.i
  %.011351875.us.i = phi i32 [ %i.brj, %._crit_edge1870.us.i ], [ 0, %.preheader1573.lr.ph.i ]
  %.011401874.us.i = phi ptr [ %.lcssa460, %._crit_edge1870.us.i ], [ %i.boy, %.preheader1573.lr.ph.i ] ; 2 uses
  %.011511873.us.i = phi ptr [ %i.bri, %._crit_edge1870.us.i ], [ %i.bom, %.preheader1573.lr.ph.i ] ; 4 uses
  %.011551872.us.i = phi ptr [ %i.brh, %._crit_edge1870.us.i ], [ %i.boj, %.preheader1573.lr.ph.i ] ; 4 uses
  br i1 %i.bae, label %.epil.preheader564, label %.preheader1573.us.i.new

.preheader1573.us.i.new:                          ; preds = %.preheader1573.us.i, %.preheader1573.us.i.new
  %indvars.iv2335.i = phi i64 [ %indvars.iv.next2336.i.1, %.preheader1573.us.i.new ], [ 0, %.preheader1573.us.i ] ; 4 uses
  %.111411868.us.i = phi ptr [ %i.bqm, %.preheader1573.us.i.new ], [ %.011401874.us.i, %.preheader1573.us.i ] ; 5 uses
  %niter571 = phi i64 [ %niter571.next.1, %.preheader1573.us.i.new ], [ 0, %.preheader1573.us.i ]
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv2335.i
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv2335.i
  %i.bpb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.boz, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bpc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bpa, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bpd = bitcast <16 x float> %i.bpb to <16 x i32>
  %i.bpe = lshr <16 x i32> %i.bpd, splat (i32 16) ; 2 uses
  %i.bpf = shufflevector <16 x i32> %i.bpe, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpg = shufflevector <16 x i32> %i.bpe, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bph = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bpf, <8 x i32> %i.bpg)
  %i.bpi = bitcast <16 x i16> %i.bph to <4 x i64>
  %i.bpj = shufflevector <4 x i64> %i.bpi, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bpj, ptr %.111411868.us.i, align 1, !tbaa !45
  %i.bpk = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 32
  %i.bpl = bitcast <16 x float> %i.bpc to <16 x i32>
  %i.bpm = lshr <16 x i32> %i.bpl, splat (i32 16) ; 2 uses
  %i.bpn = shufflevector <16 x i32> %i.bpm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpo = shufflevector <16 x i32> %i.bpm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpp = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bpn, <8 x i32> %i.bpo)
  %i.bpq = bitcast <16 x i16> %i.bpp to <4 x i64>
  %i.bpr = shufflevector <4 x i64> %i.bpq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bpr, ptr %i.bpk, align 1, !tbaa !45
  %i.bps = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 64
  %indvars.iv.next2336.i = or disjoint i64 %indvars.iv2335.i, 1 ; 2 uses
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv.next2336.i
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv.next2336.i
  %i.bpv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bpt, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bpw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bpu, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bpx = bitcast <16 x float> %i.bpv to <16 x i32>
  %i.bpy = lshr <16 x i32> %i.bpx, splat (i32 16) ; 2 uses
  %i.bpz = shufflevector <16 x i32> %i.bpy, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqa = shufflevector <16 x i32> %i.bpy, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bpz, <8 x i32> %i.bqa)
  %i.bqc = bitcast <16 x i16> %i.bqb to <4 x i64>
  %i.bqd = shufflevector <4 x i64> %i.bqc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bqd, ptr %i.bps, align 1, !tbaa !45
  %i.bqe = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 96
  %i.bqf = bitcast <16 x float> %i.bpw to <16 x i32>
  %i.bqg = lshr <16 x i32> %i.bqf, splat (i32 16) ; 2 uses
  %i.bqh = shufflevector <16 x i32> %i.bqg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqi = shufflevector <16 x i32> %i.bqg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bqh, <8 x i32> %i.bqi)
  %i.bqk = bitcast <16 x i16> %i.bqj to <4 x i64>
  %i.bql = shufflevector <4 x i64> %i.bqk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bql, ptr %i.bqe, align 1, !tbaa !45
  %i.bqm = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 128 ; 3 uses
  %indvars.iv.next2336.i.1 = add nuw nsw i64 %indvars.iv2335.i, 2 ; 2 uses
  %niter571.next.1 = add i64 %niter571, 2         ; 2 uses
  %niter571.ncmp.1 = icmp eq i64 %niter571.next.1, %unroll_iter570
  br i1 %niter571.ncmp.1, label %._crit_edge1870.us.i.unr-lcssa, label %.preheader1573.us.i.new, !llvm.loop !344

._crit_edge1870.us.i.unr-lcssa:                   ; preds = %.preheader1573.us.i.new
  br i1 %lcmp.mod567.not, label %._crit_edge1870.us.i, label %.epil.preheader564

.epil.preheader564:                               ; preds = %._crit_edge1870.us.i.unr-lcssa, %.preheader1573.us.i
  %indvars.iv2335.i.epil.init = phi i64 [ 0, %.preheader1573.us.i ], [ %indvars.iv.next2336.i.1, %._crit_edge1870.us.i.unr-lcssa ] ; 2 uses
  %.111411868.us.i.epil.init = phi ptr [ %.011401874.us.i, %.preheader1573.us.i ], [ %i.bqm, %._crit_edge1870.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod569)
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv2335.i.epil.init
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv2335.i.epil.init
  %i.bqp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bqn, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bqq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bqo, <16 x i32> %i.azb, <16 x i1> splat (i1 true), i32 4)
  %i.bqr = bitcast <16 x float> %i.bqp to <16 x i32>
  %i.bqs = lshr <16 x i32> %i.bqr, splat (i32 16) ; 2 uses
  %i.bqt = shufflevector <16 x i32> %i.bqs, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqu = shufflevector <16 x i32> %i.bqs, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqv = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bqt, <8 x i32> %i.bqu)
  %i.bqw = bitcast <16 x i16> %i.bqv to <4 x i64>
  %i.bqx = shufflevector <4 x i64> %i.bqw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bqx, ptr %.111411868.us.i.epil.init, align 1, !tbaa !45
  %i.bqy = getelementptr inbounds nuw i8, ptr %.111411868.us.i.epil.init, i64 32
  %i.bqz = bitcast <16 x float> %i.bqq to <16 x i32>
  %i.bra = lshr <16 x i32> %i.bqz, splat (i32 16) ; 2 uses
  %i.brb = shufflevector <16 x i32> %i.bra, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brc = shufflevector <16 x i32> %i.bra, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.brd = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.brb, <8 x i32> %i.brc)
  %i.bre = bitcast <16 x i16> %i.brd to <4 x i64>
  %i.brf = shufflevector <4 x i64> %i.bre, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.brf, ptr %i.bqy, align 1, !tbaa !45
  %i.brg = getelementptr inbounds nuw i8, ptr %.111411868.us.i.epil.init, i64 64
  br label %._crit_edge1870.us.i

._crit_edge1870.us.i:                             ; preds = %._crit_edge1870.us.i.unr-lcssa, %.epil.preheader564
  %.lcssa460 = phi ptr [ %i.bqm, %._crit_edge1870.us.i.unr-lcssa ], [ %i.brg, %.epil.preheader564 ] ; 2 uses
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %i.azf ; 2 uses
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %i.azf ; 2 uses
  %i.brj = add nuw nsw i32 %.011351875.us.i, 16   ; 2 uses
  %i.brk = or disjoint i32 %i.brj, 15
  %i.brl = icmp slt i32 %i.brk, %i.l
  br i1 %i.brl, label %.preheader1573.us.i, label %.preheader1577.i, !llvm.loop !345

.preheader1577.i:                                 ; preds = %._crit_edge1870.us.i, %_ZN4ncnn3MatD2Ev.exit1300.i
  %.01155.lcssa.i = phi ptr [ %i.boj, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.brh, %._crit_edge1870.us.i ] ; 3 uses
  %.01151.lcssa.i = phi ptr [ %i.bom, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.bri, %._crit_edge1870.us.i ] ; 3 uses
  %.01140.lcssa.i = phi ptr [ %i.boy, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %.lcssa460, %._crit_edge1870.us.i ] ; 3 uses
  %.01135.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.azx, %._crit_edge1870.us.i ] ; 4 uses
  %i.brm = or disjoint i32 %.01135.lcssa.i, 7
  %i.brn = icmp slt i32 %i.brm, %i.l
  br i1 %i.brn, label %.preheader1572.lr.ph.i, label %.preheader1576.i

.preheader1577.thread.i:                          ; preds = %.preheader1573.lr.ph.i
  %scevgep2328.i = getelementptr i8, ptr %i.bof, i64 %i.azs ; 2 uses
  %scevgep2331.i = getelementptr i8, ptr %scevgep2328.i, i64 %i.boc ; 2 uses
  %scevgep2334.i = getelementptr i8, ptr %scevgep2328.i, i64 %i.boe ; 2 uses
  br i1 %i.bac, label %.preheader1572.preheader.i, label %.preheader1576.i

.preheader1572.lr.ph.i:                           ; preds = %.preheader1577.i
  br i1 %i.azd, label %.preheader1572.us.i, label %.preheader1572.preheader.i

.preheader1572.preheader.i:                       ; preds = %.preheader1572.lr.ph.i, %.preheader1577.thread.i
  %.01155.lcssa25722583.i = phi ptr [ %.01155.lcssa.i, %.preheader1572.lr.ph.i ], [ %scevgep2331.i, %.preheader1577.thread.i ]
  %.01151.lcssa25732582.i = phi ptr [ %.01151.lcssa.i, %.preheader1572.lr.ph.i ], [ %scevgep2334.i, %.preheader1577.thread.i ]
  %.01140.lcssa25742581.i = phi ptr [ %.01140.lcssa.i, %.preheader1572.lr.ph.i ], [ %i.boy, %.preheader1577.thread.i ]
  %.01135.lcssa25752580.i = phi i32 [ %.01135.lcssa.i, %.preheader1572.lr.ph.i ], [ %i.azx, %.preheader1577.thread.i ] ; 2 uses
  %i.bro = sub i32 %i.azy, %.01135.lcssa25752580.i ; 2 uses
  %i.brp = lshr i32 %i.bro, 1
  %i.brq = and i32 %i.brp, 2147483644
  %narrow2448.i = add nuw i32 %i.brq, 4
  %i.brr = zext i32 %narrow2448.i to i64
  %i.brs = mul nsw i64 %i.brr, %i.azh             ; 2 uses
  %scevgep2340.i = getelementptr i8, ptr %.01155.lcssa25722583.i, i64 %i.brs
  %scevgep2341.i = getelementptr i8, ptr %.01151.lcssa25732582.i, i64 %i.brs
  %i.brt = add nsw i32 %.01135.lcssa25752580.i, 8
  %i.bru = and i32 %i.bro, -8
  %i.brv = add i32 %i.brt, %i.bru
  br label %.preheader1576.i

.preheader1572.us.i:                              ; preds = %.preheader1572.lr.ph.i, %._crit_edge1886.us.i
  %.111361891.us.i = phi i32 [ %i.btu, %._crit_edge1886.us.i ], [ %.01135.lcssa.i, %.preheader1572.lr.ph.i ]
  %.211421890.us.i = phi ptr [ %.lcssa463, %._crit_edge1886.us.i ], [ %.01140.lcssa.i, %.preheader1572.lr.ph.i ] ; 2 uses
  %.111521889.us.i = phi ptr [ %i.btt, %._crit_edge1886.us.i ], [ %.01151.lcssa.i, %.preheader1572.lr.ph.i ] ; 4 uses
  %.111561888.us.i = phi ptr [ %i.bts, %._crit_edge1886.us.i ], [ %.01155.lcssa.i, %.preheader1572.lr.ph.i ] ; 4 uses
  br i1 %i.baf, label %.epil.preheader572, label %.preheader1572.us.i.new

.preheader1572.us.i.new:                          ; preds = %.preheader1572.us.i, %.preheader1572.us.i.new
  %indvars.iv2342.i = phi i64 [ %indvars.iv.next2343.i.1, %.preheader1572.us.i.new ], [ 0, %.preheader1572.us.i ] ; 4 uses
  %.311431884.us.i = phi ptr [ %i.btb, %.preheader1572.us.i.new ], [ %.211421890.us.i, %.preheader1572.us.i ] ; 5 uses
  %niter579 = phi i64 [ %niter579.next.1, %.preheader1572.us.i.new ], [ 0, %.preheader1572.us.i ]
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %.111561888.us.i, i64 %indvars.iv2342.i
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %.111521889.us.i, i64 %indvars.iv2342.i
  %i.bry = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.brw, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.brz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.brx, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bsa = bitcast <8 x float> %i.bry to <8 x i32>
  %i.bsb = lshr <8 x i32> %i.bsa, splat (i32 16)  ; 2 uses
  %i.bsc = shufflevector <8 x i32> %i.bsb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsd = shufflevector <8 x i32> %i.bsb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bse = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bsc, <4 x i32> %i.bsd)
  store <8 x i16> %i.bse, ptr %.311431884.us.i, align 1, !tbaa !45
  %i.bsf = getelementptr inbounds nuw i8, ptr %.311431884.us.i, i64 16
  %i.bsg = bitcast <8 x float> %i.brz to <8 x i32>
  %i.bsh = lshr <8 x i32> %i.bsg, splat (i32 16)  ; 2 uses
  %i.bsi = shufflevector <8 x i32> %i.bsh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsj = shufflevector <8 x i32> %i.bsh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bsi, <4 x i32> %i.bsj)
  store <8 x i16> %i.bsk, ptr %i.bsf, align 1, !tbaa !45
  %i.bsl = getelementptr inbounds nuw i8, ptr %.311431884.us.i, i64 32
  %indvars.iv.next2343.i = or disjoint i64 %indvars.iv2342.i, 1 ; 2 uses
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %.111561888.us.i, i64 %indvars.iv.next2343.i
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %.111521889.us.i, i64 %indvars.iv.next2343.i
  %i.bso = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsm, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bsp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsn, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bsq = bitcast <8 x float> %i.bso to <8 x i32>
  %i.bsr = lshr <8 x i32> %i.bsq, splat (i32 16)  ; 2 uses
  %i.bss = shufflevector <8 x i32> %i.bsr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bst = shufflevector <8 x i32> %i.bsr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bss, <4 x i32> %i.bst)
  store <8 x i16> %i.bsu, ptr %i.bsl, align 1, !tbaa !45
  %i.bsv = getelementptr inbounds nuw i8, ptr %.311431884.us.i, i64 48
  %i.bsw = bitcast <8 x float> %i.bsp to <8 x i32>
  %i.bsx = lshr <8 x i32> %i.bsw, splat (i32 16)  ; 2 uses
  %i.bsy = shufflevector <8 x i32> %i.bsx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsz = shufflevector <8 x i32> %i.bsx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bta = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bsy, <4 x i32> %i.bsz)
  store <8 x i16> %i.bta, ptr %i.bsv, align 1, !tbaa !45
  %i.btb = getelementptr inbounds nuw i8, ptr %.311431884.us.i, i64 64 ; 3 uses
  %indvars.iv.next2343.i.1 = add nuw nsw i64 %indvars.iv2342.i, 2 ; 2 uses
  %niter579.next.1 = add i64 %niter579, 2         ; 2 uses
  %niter579.ncmp.1 = icmp eq i64 %niter579.next.1, %unroll_iter578
  br i1 %niter579.ncmp.1, label %._crit_edge1886.us.i.unr-lcssa, label %.preheader1572.us.i.new, !llvm.loop !346

._crit_edge1886.us.i.unr-lcssa:                   ; preds = %.preheader1572.us.i.new
  br i1 %lcmp.mod575.not, label %._crit_edge1886.us.i, label %.epil.preheader572

.epil.preheader572:                               ; preds = %._crit_edge1886.us.i.unr-lcssa, %.preheader1572.us.i
  %indvars.iv2342.i.epil.init = phi i64 [ 0, %.preheader1572.us.i ], [ %indvars.iv.next2343.i.1, %._crit_edge1886.us.i.unr-lcssa ] ; 2 uses
  %.311431884.us.i.epil.init = phi ptr [ %.211421890.us.i, %.preheader1572.us.i ], [ %i.btb, %._crit_edge1886.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod577)
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %.111561888.us.i, i64 %indvars.iv2342.i.epil.init
  %i.btd = getelementptr inbounds nuw [4 x i8], ptr %.111521889.us.i, i64 %indvars.iv2342.i.epil.init
  %i.bte = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.btc, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.btf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.btd, <8 x i32> %i.ayy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.btg = bitcast <8 x float> %i.bte to <8 x i32>
  %i.bth = lshr <8 x i32> %i.btg, splat (i32 16)  ; 2 uses
  %i.bti = shufflevector <8 x i32> %i.bth, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btj = shufflevector <8 x i32> %i.bth, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.btk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bti, <4 x i32> %i.btj)
  store <8 x i16> %i.btk, ptr %.311431884.us.i.epil.init, align 1, !tbaa !45
  %i.btl = getelementptr inbounds nuw i8, ptr %.311431884.us.i.epil.init, i64 16
  %i.btm = bitcast <8 x float> %i.btf to <8 x i32>
  %i.btn = lshr <8 x i32> %i.btm, splat (i32 16)  ; 2 uses
  %i.bto = shufflevector <8 x i32> %i.btn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btp = shufflevector <8 x i32> %i.btn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.btq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bto, <4 x i32> %i.btp)
  store <8 x i16> %i.btq, ptr %i.btl, align 1, !tbaa !45
  %i.btr = getelementptr inbounds nuw i8, ptr %.311431884.us.i.epil.init, i64 32
  br label %._crit_edge1886.us.i

._crit_edge1886.us.i:                             ; preds = %._crit_edge1886.us.i.unr-lcssa, %.epil.preheader572
  %.lcssa463 = phi ptr [ %i.btb, %._crit_edge1886.us.i.unr-lcssa ], [ %i.btr, %.epil.preheader572 ] ; 2 uses
  %i.bts = getelementptr inbounds nuw [4 x i8], ptr %.111561888.us.i, i64 %i.azh ; 2 uses
  %i.btt = getelementptr inbounds nuw [4 x i8], ptr %.111521889.us.i, i64 %i.azh ; 2 uses
  %i.btu = add nuw nsw i32 %.111361891.us.i, 8    ; 3 uses
  %i.btv = or disjoint i32 %i.btu, 7
  %i.btw = icmp slt i32 %i.btv, %i.l
  br i1 %i.btw, label %.preheader1572.us.i, label %.preheader1576.i, !llvm.loop !347

.preheader1576.i:                                 ; preds = %._crit_edge1886.us.i, %.preheader1572.preheader.i, %.preheader1577.thread.i, %.preheader1577.i
  %.11156.lcssa.i = phi ptr [ %.01155.lcssa.i, %.preheader1577.i ], [ %scevgep2331.i, %.preheader1577.thread.i ], [ %scevgep2340.i, %.preheader1572.preheader.i ], [ %i.bts, %._crit_edge1886.us.i ] ; 2 uses
  %.11152.lcssa.i = phi ptr [ %.01151.lcssa.i, %.preheader1577.i ], [ %scevgep2334.i, %.preheader1577.thread.i ], [ %scevgep2341.i, %.preheader1572.preheader.i ], [ %i.btt, %._crit_edge1886.us.i ] ; 2 uses
  %.21142.lcssa.i = phi ptr [ %.01140.lcssa.i, %.preheader1577.i ], [ %i.boy, %.preheader1577.thread.i ], [ %.01140.lcssa25742581.i, %.preheader1572.preheader.i ], [ %.lcssa463, %._crit_edge1886.us.i ] ; 2 uses
  %.11136.lcssa.i = phi i32 [ %.01135.lcssa.i, %.preheader1577.i ], [ %i.azx, %.preheader1577.thread.i ], [ %i.brv, %.preheader1572.preheader.i ], [ %i.btu, %._crit_edge1886.us.i ] ; 3 uses
  %i.btx = or disjoint i32 %.11136.lcssa.i, 3
  %i.bty = icmp slt i32 %i.btx, %i.l
  br i1 %i.bty, label %.preheader1571.lr.ph.i, label %.preheader1575.i

.preheader1571.lr.ph.i:                           ; preds = %.preheader1576.i
  br i1 %i.azd, label %.preheader1571.us.i, label %._crit_edge1942.split.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1902.us.i
  %.211371907.us.i = phi i32 [ %i.bvr, %._crit_edge1902.us.i ], [ %.11136.lcssa.i, %.preheader1571.lr.ph.i ]
  %.411441906.us.i = phi ptr [ %.lcssa467, %._crit_edge1902.us.i ], [ %.21142.lcssa.i, %.preheader1571.lr.ph.i ] ; 2 uses
  %.211531905.us.i = phi ptr [ %i.bvq, %._crit_edge1902.us.i ], [ %.11152.lcssa.i, %.preheader1571.lr.ph.i ] ; 4 uses
  %.211571904.us.i = phi ptr [ %i.bvp, %._crit_edge1902.us.i ], [ %.11156.lcssa.i, %.preheader1571.lr.ph.i ] ; 4 uses
  br i1 %i.bag, label %.epil.preheader580, label %.preheader1571.us.i.new

.preheader1571.us.i.new:                          ; preds = %.preheader1571.us.i, %.preheader1571.us.i.new
  %indvars.iv2349.i = phi i64 [ %indvars.iv.next2350.i.1, %.preheader1571.us.i.new ], [ 0, %.preheader1571.us.i ] ; 4 uses
  %.511451900.us.i = phi ptr [ %i.bva, %.preheader1571.us.i.new ], [ %.411441906.us.i, %.preheader1571.us.i ] ; 3 uses
  %niter587 = phi i64 [ %niter587.next.1, %.preheader1571.us.i.new ], [ 0, %.preheader1571.us.i ]
  %i.btz = getelementptr inbounds nuw [4 x i8], ptr %.211571904.us.i, i64 %indvars.iv2349.i
  %i.bua = getelementptr inbounds nuw [4 x i8], ptr %.211531905.us.i, i64 %indvars.iv2349.i
  %i.bub = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.btz, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.buc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bua, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bud = bitcast <4 x float> %i.bub to <4 x i32>
  %i.bue = lshr <4 x i32> %i.bud, splat (i32 16)
  %i.buf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bue, <4 x i32> poison)
  %i.bug = bitcast <8 x i16> %i.buf to <2 x i64>
  %i.buh = bitcast <4 x float> %i.buc to <4 x i32>
  %i.bui = lshr <4 x i32> %i.buh, splat (i32 16)
  %i.buj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bui, <4 x i32> poison)
  %i.buk = bitcast <8 x i16> %i.buj to <2 x i64>
  %i.bul = shufflevector <2 x i64> %i.bug, <2 x i64> %i.buk, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bul, ptr %.511451900.us.i, align 1, !tbaa !45
  %i.bum = getelementptr inbounds nuw i8, ptr %.511451900.us.i, i64 16
  %indvars.iv.next2350.i = or disjoint i64 %indvars.iv2349.i, 1 ; 2 uses
  %i.bun = getelementptr inbounds nuw [4 x i8], ptr %.211571904.us.i, i64 %indvars.iv.next2350.i
  %i.buo = getelementptr inbounds nuw [4 x i8], ptr %.211531905.us.i, i64 %indvars.iv.next2350.i
  %i.bup = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bun, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.buq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.buo, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bur = bitcast <4 x float> %i.bup to <4 x i32>
  %i.bus = lshr <4 x i32> %i.bur, splat (i32 16)
  %i.but = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bus, <4 x i32> poison)
  %i.buu = bitcast <8 x i16> %i.but to <2 x i64>
  %i.buv = bitcast <4 x float> %i.buq to <4 x i32>
  %i.buw = lshr <4 x i32> %i.buv, splat (i32 16)
  %i.bux = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.buw, <4 x i32> poison)
  %i.buy = bitcast <8 x i16> %i.bux to <2 x i64>
  %i.buz = shufflevector <2 x i64> %i.buu, <2 x i64> %i.buy, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.buz, ptr %i.bum, align 1, !tbaa !45
  %i.bva = getelementptr inbounds nuw i8, ptr %.511451900.us.i, i64 32 ; 3 uses
  %indvars.iv.next2350.i.1 = add nuw nsw i64 %indvars.iv2349.i, 2 ; 2 uses
  %niter587.next.1 = add i64 %niter587, 2         ; 2 uses
  %niter587.ncmp.1 = icmp eq i64 %niter587.next.1, %unroll_iter586
  br i1 %niter587.ncmp.1, label %._crit_edge1902.us.i.unr-lcssa, label %.preheader1571.us.i.new, !llvm.loop !348

._crit_edge1902.us.i.unr-lcssa:                   ; preds = %.preheader1571.us.i.new
  br i1 %lcmp.mod583.not, label %._crit_edge1902.us.i, label %.epil.preheader580

.epil.preheader580:                               ; preds = %._crit_edge1902.us.i.unr-lcssa, %.preheader1571.us.i
  %indvars.iv2349.i.epil.init = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2350.i.1, %._crit_edge1902.us.i.unr-lcssa ] ; 2 uses
  %.511451900.us.i.epil.init = phi ptr [ %.411441906.us.i, %.preheader1571.us.i ], [ %i.bva, %._crit_edge1902.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %.211571904.us.i, i64 %indvars.iv2349.i.epil.init
  %i.bvc = getelementptr inbounds nuw [4 x i8], ptr %.211531905.us.i, i64 %indvars.iv2349.i.epil.init
  %i.bvd = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bvb, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bve = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bvc, <4 x i32> %i.ayv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bvf = bitcast <4 x float> %i.bvd to <4 x i32>
  %i.bvg = lshr <4 x i32> %i.bvf, splat (i32 16)
  %i.bvh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvg, <4 x i32> poison)
  %i.bvi = bitcast <8 x i16> %i.bvh to <2 x i64>
  %i.bvj = bitcast <4 x float> %i.bve to <4 x i32>
  %i.bvk = lshr <4 x i32> %i.bvj, splat (i32 16)
  %i.bvl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvk, <4 x i32> poison)
  %i.bvm = bitcast <8 x i16> %i.bvl to <2 x i64>
  %i.bvn = shufflevector <2 x i64> %i.bvi, <2 x i64> %i.bvm, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bvn, ptr %.511451900.us.i.epil.init, align 1, !tbaa !45
  %i.bvo = getelementptr inbounds nuw i8, ptr %.511451900.us.i.epil.init, i64 16
  br label %._crit_edge1902.us.i

._crit_edge1902.us.i:                             ; preds = %._crit_edge1902.us.i.unr-lcssa, %.epil.preheader580
  %.lcssa467 = phi ptr [ %i.bva, %._crit_edge1902.us.i.unr-lcssa ], [ %i.bvo, %.epil.preheader580 ] ; 2 uses
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %.211571904.us.i, i64 %i.azj ; 2 uses
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %.211531905.us.i, i64 %i.azj ; 2 uses
  %i.bvr = add nuw nsw i32 %.211371907.us.i, 4    ; 3 uses
  %i.bvs = or disjoint i32 %i.bvr, 3
  %i.bvt = icmp slt i32 %i.bvs, %i.l
  br i1 %i.bvt, label %.preheader1571.us.i, label %.preheader1575.i, !llvm.loop !349

.preheader1575.i:                                 ; preds = %._crit_edge1902.us.i, %.preheader1576.i
  %.21157.lcssa.i = phi ptr [ %.11156.lcssa.i, %.preheader1576.i ], [ %i.bvp, %._crit_edge1902.us.i ] ; 2 uses
  %.21153.lcssa.i = phi ptr [ %.11152.lcssa.i, %.preheader1576.i ], [ %i.bvq, %._crit_edge1902.us.i ] ; 2 uses
  %.41144.lcssa.i = phi ptr [ %.21142.lcssa.i, %.preheader1576.i ], [ %.lcssa467, %._crit_edge1902.us.i ] ; 2 uses
  %.21137.lcssa.i = phi i32 [ %.11136.lcssa.i, %.preheader1576.i ], [ %i.bvr, %._crit_edge1902.us.i ] ; 3 uses
  %i.bvu = or disjoint i32 %.21137.lcssa.i, 1
  %i.bvv = icmp slt i32 %i.bvu, %i.l
  br i1 %i.bvv, label %.preheader1570.lr.ph.i, label %.preheader1574.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1575.i
  br i1 %i.azd, label %iter.check353, label %._crit_edge1942.split.i

iter.check353:                                    ; preds = %.preheader1570.lr.ph.i, %._crit_edge1922.us.i
  %.311381927.us.i = phi i32 [ %i.bxl, %._crit_edge1922.us.i ], [ %.21137.lcssa.i, %.preheader1570.lr.ph.i ]
  %.611461926.us.i = phi ptr [ %.lcssa270, %._crit_edge1922.us.i ], [ %.41144.lcssa.i, %.preheader1570.lr.ph.i ] ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %wide.load325 = load <16 x i32>, ptr %i.bxs, align 4, !tbaa !48
  %i.bxt = shufflevector <16 x i32> %wide.load, <16 x i32> %wide.load325, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bxu = lshr <32 x i32> %i.bxt, splat (i32 16)
  %interleaved.vec = trunc nuw <32 x i32> %i.bxu to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !70
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bxv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bxv, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1938.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bxw = getelementptr i8, ptr %.911491940.i, i64 %i.bam ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index327 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 4 uses
  %i.bxx = shl i64 %index327, 2
  %next.gep328 = getelementptr i8, ptr %.911491940.i, i64 %i.bxx
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %.31158.lcssa.i, i64 %index327
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %index327
  %wide.load329 = load <4 x i32>, ptr %i.bxy, align 4, !tbaa !48
  %wide.load330 = load <4 x i32>, ptr %i.bxz, align 4, !tbaa !48
  %i.bya = shufflevector <4 x i32> %wide.load329, <4 x i32> %wide.load330, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.byb = lshr <8 x i32> %i.bya, splat (i32 16)
  %interleaved.vec331 = trunc nuw <8 x i32> %i.byb to <8 x i16>
  store <8 x i16> %interleaved.vec331, ptr %next.gep328, align 2, !tbaa !70
  %index.next332 = add nuw i64 %index327, 4       ; 2 uses
  %i.byc = icmp eq i64 %index.next332, %n.vec326
  br i1 %i.byc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !355

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n333, label %._crit_edge1938.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2361.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec326, %vec.epilog.middle.block ]
  %.1011501936.i.ph = phi ptr [ %.911491940.i, %iter.check ], [ %i.bxp, %vec.epilog.iter.check ], [ %i.bxw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1938.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa274 = phi ptr [ %i.bxw, %vec.epilog.middle.block ], [ %i.bxp, %middle.block ], [ %i.byn, %vec.epilog.scalar.ph ]
  %i.byd = add nuw nsw i32 %.411391941.i, 1       ; 2 uses
  %exitcond2366.not.i = icmp eq i32 %i.byd, %i.l
  br i1 %exitcond2366.not.i, label %._crit_edge1942.split.i, label %iter.check, !llvm.loop !356

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2361.i = phi i64 [ %indvars.iv.next2362.i, %vec.epilog.scalar.ph ], [ %indvars.iv2361.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.1011501936.i = phi ptr [ %i.byn, %vec.epilog.scalar.ph ], [ %.1011501936.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %.31158.lcssa.i, i64 %indvars.iv2361.i
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %indvars.iv2361.i
  %i.byg = load i32, ptr %i.bye, align 4, !tbaa !48
  %i.byh = lshr i32 %i.byg, 16
  %i.byi = trunc nuw i32 %i.byh to i16
  store i16 %i.byi, ptr %.1011501936.i, align 2, !tbaa !70
  %i.byj = load i32, ptr %i.byf, align 4, !tbaa !48
  %i.byk = lshr i32 %i.byj, 16
  %i.byl = trunc nuw i32 %i.byk to i16
  %i.bym = getelementptr inbounds nuw i8, ptr %.1011501936.i, i64 2
  store i16 %i.byl, ptr %i.bym, align 2, !tbaa !70
  %i.byn = getelementptr inbounds nuw i8, ptr %.1011501936.i, i64 4 ; 2 uses
  %indvars.iv.next2362.i = add nuw nsw i64 %indvars.iv2361.i, 1 ; 2 uses
  %exitcond2365.not.i = icmp eq i64 %indvars.iv.next2362.i, %wide.trip.count2338.i
  br i1 %exitcond2365.not.i, label %._crit_edge1938.i, label %vec.epilog.scalar.ph, !llvm.loop !357

._crit_edge1942.split.i:                          ; preds = %._crit_edge1938.i, %.preheader1574.i, %.preheader1570.lr.ph.i, %.preheader1571.lr.ph.i
  %indvars.iv.next2368.i = add nuw nsw i64 %indvars.iv2367.i, 2 ; 3 uses
  %i.byo = or disjoint i64 %indvars.iv.next2368.i, 1 ; 2 uses
  %i.byp = icmp slt i64 %i.byo, %i.baa
  %indvars.iv.next2330.i = add i32 %indvars.iv2329.i, %i.azu
  %indvars.iv.next2333.i = add i32 %indvars.iv2332.i, %i.azu
  %i.byq = trunc nsw i64 %i.byo to i32
  br i1 %i.byp, label %_ZN4ncnn3MatD2Ev.exit1300.i, label %.preheader1568.loopexit.i, !llvm.loop !358

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge2006.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv2403.i = phi i64 [ %i.bnn, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2404.i, %._crit_edge2006.split.i ] ; 2 uses
  %indvars.iv2371.i = phi i32 [ %i.bnj, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2372.i, %._crit_edge2006.split.i ] ; 2 uses
  %i.byr = sext i32 %indvars.iv2371.i to i64
  %i.bys = shl nsw i64 %i.byr, 2
  %i.byt = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %i.byu = trunc nsw i64 %indvars.iv2403.i to i32 ; 3 uses
  %i.byv = mul i32 %i.bmg, %i.byu
  %i.byw = sext i32 %i.byv to i64
  %i.byx = getelementptr inbounds [4 x i8], ptr %i.byt, i64 %i.byw ; 2 uses
  %i.byy = lshr i32 %i.byu, 4
  %i.byz = insertelement <4 x i32> poison, i32 %i.byu, i64 0
  %i.bza = shufflevector <4 x i32> %i.byz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bzb = lshr <4 x i32> %i.bza, <i32 0, i32 3, i32 2, i32 1>
  %i.bzc = and <4 x i32> %i.bzb, splat (i32 1)
  %i.bzd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bzc)
  %op.rdx = add nuw nsw i32 %i.bzd, %i.byy
  %i.bze = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !382
  %i.bzf = load i64, ptr %i.bmh, align 8, !tbaa !20, !noalias !382
  %i.bzg = zext nneg i32 %op.rdx to i64
  %i.bzh = load i64, ptr %i.bmi, align 8, !tbaa !44, !noalias !382
  %i.bzi = mul i64 %i.bzh, %i.bzf
  %i.bzj = mul i64 %i.bzi, %i.bzg
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bze, i64 %i.bzj ; 4 uses
  br i1 %i.bms, label %.preheader1563.lr.ph.i, label %.preheader1567.i

.preheader1563.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.bmt, label %.preheader1563.us.i, label %.preheader1567.thread.i

.preheader1563.us.i:                              ; preds = %.preheader1563.lr.ph.i, %._crit_edge1947.us.i
  %.011051951.us.i = phi i32 [ %i.car, %._crit_edge1947.us.i ], [ 0, %.preheader1563.lr.ph.i ]
  %.011101950.us.i = phi ptr [ %.lcssa, %._crit_edge1947.us.i ], [ %i.bzk, %.preheader1563.lr.ph.i ] ; 2 uses
  %.011151949.us.i = phi ptr [ %i.caq, %._crit_edge1947.us.i ], [ %i.byx, %.preheader1563.lr.ph.i ] ; 4 uses
  br i1 %i.bnr, label %.epil.preheader588, label %.preheader1563.us.i.new

.preheader1563.us.i.new:                          ; preds = %.preheader1563.us.i, %.preheader1563.us.i.new
  %indvars.iv2374.i = phi i64 [ %indvars.iv.next2375.i.1, %.preheader1563.us.i.new ], [ 0, %.preheader1563.us.i ] ; 3 uses
  %.111111945.us.i = phi ptr [ %i.caf, %.preheader1563.us.i.new ], [ %.011101950.us.i, %.preheader1563.us.i ] ; 3 uses
  %niter595 = phi i64 [ %niter595.next.1, %.preheader1563.us.i.new ], [ 0, %.preheader1563.us.i ]
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %.011151949.us.i, i64 %indvars.iv2374.i
  %i.bzm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bzl, <16 x i32> %i.bmr, <16 x i1> splat (i1 true), i32 4)
  %i.bzn = bitcast <16 x float> %i.bzm to <16 x i32>
  %i.bzo = lshr <16 x i32> %i.bzn, splat (i32 16) ; 2 uses
  %i.bzp = shufflevector <16 x i32> %i.bzo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzq = shufflevector <16 x i32> %i.bzo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bzp, <8 x i32> %i.bzq)
  %i.bzs = bitcast <16 x i16> %i.bzr to <4 x i64>
  %i.bzt = shufflevector <4 x i64> %i.bzs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bzt, ptr %.111111945.us.i, align 1, !tbaa !45
  %i.bzu = getelementptr inbounds nuw i8, ptr %.111111945.us.i, i64 32
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %.011151949.us.i, i64 %indvars.iv2374.i
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 4
  %i.bzx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bzw, <16 x i32> %i.bmr, <16 x i1> splat (i1 true), i32 4)
  %i.bzy = bitcast <16 x float> %i.bzx to <16 x i32>
  %i.bzz = lshr <16 x i32> %i.bzy, splat (i32 16) ; 2 uses
  %i.caa = shufflevector <16 x i32> %i.bzz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cab = shufflevector <16 x i32> %i.bzz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cac = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.caa, <8 x i32> %i.cab)
  %i.cad = bitcast <16 x i16> %i.cac to <4 x i64>
  %i.cae = shufflevector <4 x i64> %i.cad, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cae, ptr %i.bzu, align 1, !tbaa !45
  %i.caf = getelementptr inbounds nuw i8, ptr %.111111945.us.i, i64 64 ; 3 uses
  %indvars.iv.next2375.i.1 = add nuw nsw i64 %indvars.iv2374.i, 2 ; 2 uses
  %niter595.next.1 = add i64 %niter595, 2         ; 2 uses
  %niter595.ncmp.1 = icmp eq i64 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge1947.us.i.unr-lcssa, label %.preheader1563.us.i.new, !llvm.loop !361

._crit_edge1947.us.i.unr-lcssa:                   ; preds = %.preheader1563.us.i.new
  br i1 %lcmp.mod591.not, label %._crit_edge1947.us.i, label %.epil.preheader588

.epil.preheader588:                               ; preds = %._crit_edge1947.us.i.unr-lcssa, %.preheader1563.us.i
  %indvars.iv2374.i.epil.init = phi i64 [ 0, %.preheader1563.us.i ], [ %indvars.iv.next2375.i.1, %._crit_edge1947.us.i.unr-lcssa ]
  %.111111945.us.i.epil.init = phi ptr [ %.011101950.us.i, %.preheader1563.us.i ], [ %i.caf, %._crit_edge1947.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod593)
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %.011151949.us.i, i64 %indvars.iv2374.i.epil.init
  %i.cah = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cag, <16 x i32> %i.bmr, <16 x i1> splat (i1 true), i32 4)
  %i.cai = bitcast <16 x float> %i.cah to <16 x i32>
  %i.caj = lshr <16 x i32> %i.cai, splat (i32 16) ; 2 uses
  %i.cak = shufflevector <16 x i32> %i.caj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cal = shufflevector <16 x i32> %i.caj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cam = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cak, <8 x i32> %i.cal)
  %i.can = bitcast <16 x i16> %i.cam to <4 x i64>
  %i.cao = shufflevector <4 x i64> %i.can, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cao, ptr %.111111945.us.i.epil.init, align 1, !tbaa !45
  %i.cap = getelementptr inbounds nuw i8, ptr %.111111945.us.i.epil.init, i64 32
  br label %._crit_edge1947.us.i

._crit_edge1947.us.i:                             ; preds = %._crit_edge1947.us.i.unr-lcssa, %.epil.preheader588
  %.lcssa = phi ptr [ %i.caf, %._crit_edge1947.us.i.unr-lcssa ], [ %i.cap, %.epil.preheader588 ] ; 2 uses
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %.011151949.us.i, i64 %i.bmv ; 2 uses
  %i.car = add nuw nsw i32 %.011051951.us.i, 16   ; 2 uses
  %i.cas = or disjoint i32 %i.car, 15
  %i.cat = icmp slt i32 %i.cas, %i.l
  br i1 %i.cat, label %.preheader1563.us.i, label %.preheader1567.i, !llvm.loop !362

.preheader1567.i:                                 ; preds = %._crit_edge1947.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.01115.lcssa.i = phi ptr [ %i.byx, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.caq, %._crit_edge1947.us.i ] ; 3 uses
  %.01110.lcssa.i = phi ptr [ %i.bzk, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1947.us.i ] ; 3 uses
  %.01105.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bnl, %._crit_edge1947.us.i ] ; 4 uses
  %i.cau = or disjoint i32 %.01105.lcssa.i, 7
  %i.cav = icmp slt i32 %i.cau, %i.l
  br i1 %i.cav, label %.preheader1562.lr.ph.i, label %.preheader1566.i

.preheader1567.thread.i:                          ; preds = %.preheader1563.lr.ph.i
  %scevgep2370.i = getelementptr i8, ptr %i.byt, i64 %i.bni
  %scevgep2373.i = getelementptr i8, ptr %scevgep2370.i, i64 %i.bys ; 2 uses
  br i1 %i.bnp, label %.preheader1562.preheader.i, label %.preheader1566.i

.preheader1562.lr.ph.i:                           ; preds = %.preheader1567.i
  br i1 %i.bmt, label %.preheader1562.us.i, label %.preheader1562.preheader.i

.preheader1562.preheader.i:                       ; preds = %.preheader1562.lr.ph.i, %.preheader1567.thread.i
  %.01115.lcssa26082616.i = phi ptr [ %.01115.lcssa.i, %.preheader1562.lr.ph.i ], [ %scevgep2373.i, %.preheader1567.thread.i ]
  %.01110.lcssa26092615.i = phi ptr [ %.01110.lcssa.i, %.preheader1562.lr.ph.i ], [ %i.bzk, %.preheader1567.thread.i ]
  %.01105.lcssa26102614.i = phi i32 [ %.01105.lcssa.i, %.preheader1562.lr.ph.i ], [ %i.bnl, %.preheader1567.thread.i ] ; 2 uses
  %i.caw = sub i32 %i.bnm, %.01105.lcssa26102614.i ; 2 uses
  %i.cax = lshr i32 %i.caw, 1
  %i.cay = and i32 %i.cax, 2147483644
  %narrow2450.i = add nuw i32 %i.cay, 4
  %i.caz = zext i32 %narrow2450.i to i64
  %i.cba = mul nsw i64 %i.caz, %i.bmx
  %scevgep2379.i = getelementptr i8, ptr %.01115.lcssa26082616.i, i64 %i.cba
  %i.cbb = add nsw i32 %.01105.lcssa26102614.i, 8
  %i.cbc = and i32 %i.caw, -8
  %i.cbd = add i32 %i.cbb, %i.cbc
  br label %.preheader1566.i

.preheader1562.us.i:                              ; preds = %.preheader1562.lr.ph.i, %._crit_edge1960.us.i
  %.111061964.us.i = phi i32 [ %i.ccw, %._crit_edge1960.us.i ], [ %.01105.lcssa.i, %.preheader1562.lr.ph.i ]
  %.211121963.us.i = phi ptr [ %.lcssa450, %._crit_edge1960.us.i ], [ %.01110.lcssa.i, %.preheader1562.lr.ph.i ] ; 2 uses
  %.111161962.us.i = phi ptr [ %i.ccv, %._crit_edge1960.us.i ], [ %.01115.lcssa.i, %.preheader1562.lr.ph.i ] ; 6 uses
  br i1 %i.bns, label %.epil.preheader596, label %.preheader1562.us.i.new

.preheader1562.us.i.new:                          ; preds = %.preheader1562.us.i, %.preheader1562.us.i.new
  %indvars.iv2380.i = phi i64 [ %indvars.iv.next2381.i.3, %.preheader1562.us.i.new ], [ 0, %.preheader1562.us.i ] ; 5 uses
  %.311131958.us.i = phi ptr [ %i.ccm, %.preheader1562.us.i.new ], [ %.211121963.us.i, %.preheader1562.us.i ] ; 5 uses
  %niter603 = phi i64 [ %niter603.next.3, %.preheader1562.us.i.new ], [ 0, %.preheader1562.us.i ]
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %indvars.iv2380.i
  %i.cbf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.cbe, <8 x i32> %i.bmo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbg = bitcast <8 x float> %i.cbf to <8 x i32>
  %i.cbh = lshr <8 x i32> %i.cbg, splat (i32 16)  ; 2 uses
  %i.cbi = shufflevector <8 x i32> %i.cbh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cbj = shufflevector <8 x i32> %i.cbh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cbk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbi, <4 x i32> %i.cbj)
  store <8 x i16> %i.cbk, ptr %.311131958.us.i, align 1, !tbaa !45
  %i.cbl = getelementptr inbounds nuw i8, ptr %.311131958.us.i, i64 16
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %indvars.iv2380.i
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 4
  %i.cbo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.cbn, <8 x i32> %i.bmo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbp = bitcast <8 x float> %i.cbo to <8 x i32>
  %i.cbq = lshr <8 x i32> %i.cbp, splat (i32 16)  ; 2 uses
  %i.cbr = shufflevector <8 x i32> %i.cbq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cbs = shufflevector <8 x i32> %i.cbq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cbt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbr, <4 x i32> %i.cbs)
  store <8 x i16> %i.cbt, ptr %i.cbl, align 1, !tbaa !45
  %i.cbu = getelementptr inbounds nuw i8, ptr %.311131958.us.i, i64 32
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %indvars.iv2380.i
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 8
  %i.cbx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.cbw, <8 x i32> %i.bmo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cby = bitcast <8 x float> %i.cbx to <8 x i32>
  %i.cbz = lshr <8 x i32> %i.cby, splat (i32 16)  ; 2 uses
  %i.cca = shufflevector <8 x i32> %i.cbz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ccb = shufflevector <8 x i32> %i.cbz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ccc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cca, <4 x i32> %i.ccb)
  store <8 x i16> %i.ccc, ptr %i.cbu, align 1, !tbaa !45
  %i.ccd = getelementptr inbounds nuw i8, ptr %.311131958.us.i, i64 48
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %indvars.iv2380.i
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 12
  %i.ccg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ccf, <8 x i32> %i.bmo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cch = bitcast <8 x float> %i.ccg to <8 x i32>
  %i.cci = lshr <8 x i32> %i.cch, splat (i32 16)  ; 2 uses
  %i.ccj = shufflevector <8 x i32> %i.cci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cck = shufflevector <8 x i32> %i.cci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ccl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ccj, <4 x i32> %i.cck)
  store <8 x i16> %i.ccl, ptr %i.ccd, align 1, !tbaa !45
  %i.ccm = getelementptr inbounds nuw i8, ptr %.311131958.us.i, i64 64 ; 3 uses
  %indvars.iv.next2381.i.3 = add nuw nsw i64 %indvars.iv2380.i, 4 ; 2 uses
  %niter603.next.3 = add i64 %niter603, 4         ; 2 uses
  %niter603.ncmp.3 = icmp eq i64 %niter603.next.3, %unroll_iter602
  br i1 %niter603.ncmp.3, label %._crit_edge1960.us.i.unr-lcssa, label %.preheader1562.us.i.new, !llvm.loop !363

._crit_edge1960.us.i.unr-lcssa:                   ; preds = %.preheader1562.us.i.new
  br i1 %lcmp.mod599.not, label %._crit_edge1960.us.i, label %.epil.preheader596

.epil.preheader596:                               ; preds = %._crit_edge1960.us.i.unr-lcssa, %.preheader1562.us.i
  %indvars.iv2380.i.epil.init = phi i64 [ 0, %.preheader1562.us.i ], [ %indvars.iv.next2381.i.3, %._crit_edge1960.us.i.unr-lcssa ]
  %.311131958.us.i.epil.init = phi ptr [ %.211121963.us.i, %.preheader1562.us.i ], [ %i.ccm, %._crit_edge1960.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod601)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader596
  %indvars.iv2380.i.epil = phi i64 [ %indvars.iv2380.i.epil.init, %.epil.preheader596 ], [ %indvars.iv.next2381.i.epil, %bb.bk ] ; 2 uses
  %.311131958.us.i.epil = phi ptr [ %.311131958.us.i.epil.init, %.epil.preheader596 ], [ %i.ccu, %bb.bk ] ; 2 uses
  %epil.iter598 = phi i64 [ 0, %.epil.preheader596 ], [ %epil.iter598.next, %bb.bk ]
  %i.ccn = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %indvars.iv2380.i.epil
  %i.cco = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ccn, <8 x i32> %i.bmo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ccp = bitcast <8 x float> %i.cco to <8 x i32>
  %i.ccq = lshr <8 x i32> %i.ccp, splat (i32 16)  ; 2 uses
  %i.ccr = shufflevector <8 x i32> %i.ccq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ccs = shufflevector <8 x i32> %i.ccq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cct = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ccr, <4 x i32> %i.ccs)
  store <8 x i16> %i.cct, ptr %.311131958.us.i.epil, align 1, !tbaa !45
  %i.ccu = getelementptr inbounds nuw i8, ptr %.311131958.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2381.i.epil = add nuw nsw i64 %indvars.iv2380.i.epil, 1
  %epil.iter598.next = add i64 %epil.iter598, 1   ; 2 uses
  %epil.iter598.cmp.not = icmp eq i64 %epil.iter598.next, %xtraiter597
  br i1 %epil.iter598.cmp.not, label %._crit_edge1960.us.i, label %bb.bk, !llvm.loop !364

._crit_edge1960.us.i:                             ; preds = %bb.bk, %._crit_edge1960.us.i.unr-lcssa
  %.lcssa450 = phi ptr [ %i.ccm, %._crit_edge1960.us.i.unr-lcssa ], [ %i.ccu, %bb.bk ] ; 2 uses
  %i.ccv = getelementptr inbounds nuw [4 x i8], ptr %.111161962.us.i, i64 %i.bmx ; 2 uses
  %i.ccw = add nuw nsw i32 %.111061964.us.i, 8    ; 3 uses
  %i.ccx = or disjoint i32 %i.ccw, 7
  %i.ccy = icmp slt i32 %i.ccx, %i.l
  br i1 %i.ccy, label %.preheader1562.us.i, label %.preheader1566.i, !llvm.loop !365

.preheader1566.i:                                 ; preds = %._crit_edge1960.us.i, %.preheader1562.preheader.i, %.preheader1567.thread.i, %.preheader1567.i
  %.11116.lcssa.i = phi ptr [ %.01115.lcssa.i, %.preheader1567.i ], [ %scevgep2373.i, %.preheader1567.thread.i ], [ %scevgep2379.i, %.preheader1562.preheader.i ], [ %i.ccv, %._crit_edge1960.us.i ] ; 2 uses
  %.21112.lcssa.i = phi ptr [ %.01110.lcssa.i, %.preheader1567.i ], [ %i.bzk, %.preheader1567.thread.i ], [ %.01110.lcssa26092615.i, %.preheader1562.preheader.i ], [ %.lcssa450, %._crit_edge1960.us.i ] ; 2 uses
  %.11106.lcssa.i = phi i32 [ %.01105.lcssa.i, %.preheader1567.i ], [ %i.bnl, %.preheader1567.thread.i ], [ %i.cbd, %.preheader1562.preheader.i ], [ %i.ccw, %._crit_edge1960.us.i ] ; 3 uses
  %i.ccz = or disjoint i32 %.11106.lcssa.i, 3
  %i.cda = icmp slt i32 %i.ccz, %i.l
  br i1 %i.cda, label %.preheader1561.lr.ph.i, label %.preheader1565.i

.preheader1561.lr.ph.i:                           ; preds = %.preheader1566.i
  br i1 %i.bmt, label %.preheader1561.us.i, label %._crit_edge2006.split.i

.preheader1561.us.i:                              ; preds = %.preheader1561.lr.ph.i, %._crit_edge1973.us.i
  %.211071977.us.i = phi i32 [ %i.cet, %._crit_edge1973.us.i ], [ %.11106.lcssa.i, %.preheader1561.lr.ph.i ]
  %.411141976.us.i = phi ptr [ %.lcssa453, %._crit_edge1973.us.i ], [ %.21112.lcssa.i, %.preheader1561.lr.ph.i ] ; 2 uses
  %.211171975.us.i = phi ptr [ %i.ces, %._crit_edge1973.us.i ], [ %.11116.lcssa.i, %.preheader1561.lr.ph.i ] ; 6 uses
  br i1 %i.bnt, label %.epil.preheader604, label %.preheader1561.us.i.new

.preheader1561.us.i.new:                          ; preds = %.preheader1561.us.i, %.preheader1561.us.i.new
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ] ; 5 uses
  %.51971.us.i = phi ptr [ %i.cej, %.preheader1561.us.i.new ], [ %.411141976.us.i, %.preheader1561.us.i ] ; 5 uses
  %niter611 = phi i64 [ %niter611.next.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ]
  %i.cdb = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %indvars.iv2386.i
  %i.cdc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cdb, <4 x i32> %i.bml, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cdd = bitcast <4 x float> %i.cdc to <4 x i32>
  %i.cde = lshr <4 x i32> %i.cdd, splat (i32 16)
  %i.cdf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cde, <4 x i32> poison)
  %i.cdg = bitcast <8 x i16> %i.cdf to <2 x i64>
  %i.cdh = extractelement <2 x i64> %i.cdg, i64 0
  store i64 %i.cdh, ptr %.51971.us.i, align 1, !tbaa !45
  %i.cdi = getelementptr inbounds nuw i8, ptr %.51971.us.i, i64 8
  %i.cdj = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %indvars.iv2386.i
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 4
  %i.cdl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cdk, <4 x i32> %i.bml, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cdm = bitcast <4 x float> %i.cdl to <4 x i32>
  %i.cdn = lshr <4 x i32> %i.cdm, splat (i32 16)
  %i.cdo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cdn, <4 x i32> poison)
  %i.cdp = bitcast <8 x i16> %i.cdo to <2 x i64>
  %i.cdq = extractelement <2 x i64> %i.cdp, i64 0
  store i64 %i.cdq, ptr %i.cdi, align 1, !tbaa !45
  %i.cdr = getelementptr inbounds nuw i8, ptr %.51971.us.i, i64 16
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %indvars.iv2386.i
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  %i.cdu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cdt, <4 x i32> %i.bml, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cdv = bitcast <4 x float> %i.cdu to <4 x i32>
  %i.cdw = lshr <4 x i32> %i.cdv, splat (i32 16)
  %i.cdx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cdw, <4 x i32> poison)
  %i.cdy = bitcast <8 x i16> %i.cdx to <2 x i64>
  %i.cdz = extractelement <2 x i64> %i.cdy, i64 0
  store i64 %i.cdz, ptr %i.cdr, align 1, !tbaa !45
  %i.cea = getelementptr inbounds nuw i8, ptr %.51971.us.i, i64 24
  %i.ceb = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %indvars.iv2386.i
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 12
  %i.ced = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cec, <4 x i32> %i.bml, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cee = bitcast <4 x float> %i.ced to <4 x i32>
  %i.cef = lshr <4 x i32> %i.cee, splat (i32 16)
  %i.ceg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cef, <4 x i32> poison)
  %i.ceh = bitcast <8 x i16> %i.ceg to <2 x i64>
  %i.cei = extractelement <2 x i64> %i.ceh, i64 0
  store i64 %i.cei, ptr %i.cea, align 1, !tbaa !45
  %i.cej = getelementptr inbounds nuw i8, ptr %.51971.us.i, i64 32 ; 3 uses
  %indvars.iv.next2387.i.3 = add nuw nsw i64 %indvars.iv2386.i, 4 ; 2 uses
  %niter611.next.3 = add i64 %niter611, 4         ; 2 uses
  %niter611.ncmp.3 = icmp eq i64 %niter611.next.3, %unroll_iter610
  br i1 %niter611.ncmp.3, label %._crit_edge1973.us.i.unr-lcssa, label %.preheader1561.us.i.new, !llvm.loop !366

._crit_edge1973.us.i.unr-lcssa:                   ; preds = %.preheader1561.us.i.new
  br i1 %lcmp.mod607.not, label %._crit_edge1973.us.i, label %.epil.preheader604

.epil.preheader604:                               ; preds = %._crit_edge1973.us.i.unr-lcssa, %.preheader1561.us.i
  %indvars.iv2386.i.epil.init = phi i64 [ 0, %.preheader1561.us.i ], [ %indvars.iv.next2387.i.3, %._crit_edge1973.us.i.unr-lcssa ]
  %.51971.us.i.epil.init = phi ptr [ %.411141976.us.i, %.preheader1561.us.i ], [ %i.cej, %._crit_edge1973.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod609)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader604
  %indvars.iv2386.i.epil = phi i64 [ %indvars.iv2386.i.epil.init, %.epil.preheader604 ], [ %indvars.iv.next2387.i.epil, %bb.bl ] ; 2 uses
  %.51971.us.i.epil = phi ptr [ %.51971.us.i.epil.init, %.epil.preheader604 ], [ %i.cer, %bb.bl ] ; 2 uses
  %epil.iter606 = phi i64 [ 0, %.epil.preheader604 ], [ %epil.iter606.next, %bb.bl ]
  %i.cek = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %indvars.iv2386.i.epil
  %i.cel = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cek, <4 x i32> %i.bml, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cem = bitcast <4 x float> %i.cel to <4 x i32>
  %i.cen = lshr <4 x i32> %i.cem, splat (i32 16)
  %i.ceo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cen, <4 x i32> poison)
  %i.cep = bitcast <8 x i16> %i.ceo to <2 x i64>
  %i.ceq = extractelement <2 x i64> %i.cep, i64 0
  store i64 %i.ceq, ptr %.51971.us.i.epil, align 1, !tbaa !45
  %i.cer = getelementptr inbounds nuw i8, ptr %.51971.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2387.i.epil = add nuw nsw i64 %indvars.iv2386.i.epil, 1
  %epil.iter606.next = add i64 %epil.iter606, 1   ; 2 uses
  %epil.iter606.cmp.not = icmp eq i64 %epil.iter606.next, %xtraiter605
  br i1 %epil.iter606.cmp.not, label %._crit_edge1973.us.i, label %bb.bl, !llvm.loop !367

._crit_edge1973.us.i:                             ; preds = %bb.bl, %._crit_edge1973.us.i.unr-lcssa
  %.lcssa453 = phi ptr [ %i.cej, %._crit_edge1973.us.i.unr-lcssa ], [ %i.cer, %bb.bl ] ; 2 uses
  %i.ces = getelementptr inbounds nuw [4 x i8], ptr %.211171975.us.i, i64 %i.bmz ; 2 uses
  %i.cet = add nuw nsw i32 %.211071977.us.i, 4    ; 3 uses
  %i.ceu = or disjoint i32 %i.cet, 3
  %i.cev = icmp slt i32 %i.ceu, %i.l
  br i1 %i.cev, label %.preheader1561.us.i, label %.preheader1565.i, !llvm.loop !368

.preheader1565.i:                                 ; preds = %._crit_edge1973.us.i, %.preheader1566.i
  %.21117.lcssa.i = phi ptr [ %.11116.lcssa.i, %.preheader1566.i ], [ %i.ces, %._crit_edge1973.us.i ] ; 2 uses
  %.41114.lcssa.i = phi ptr [ %.21112.lcssa.i, %.preheader1566.i ], [ %.lcssa453, %._crit_edge1973.us.i ] ; 2 uses
  %.21107.lcssa.i = phi i32 [ %.11106.lcssa.i, %.preheader1566.i ], [ %i.cet, %._crit_edge1973.us.i ] ; 3 uses
  %i.cew = or disjoint i32 %.21107.lcssa.i, 1
  %i.cex = icmp slt i32 %i.cew, %i.l
  br i1 %i.cex, label %.preheader1560.lr.ph.i, label %.preheader1564.i
end_hunk_11
begin_hunk_12_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.zy = load <16 x float>, ptr %i.zx, align 64, !tbaa !45
  %i.zz = getelementptr inbounds nuw i8, ptr %.12672849, i64 320
  %i.aaa = load <16 x float>, ptr %i.zz, align 64, !tbaa !45
  %i.aab = getelementptr inbounds nuw i8, ptr %.12672849, i64 384
  %i.aac = load <16 x float>, ptr %i.aab, align 64, !tbaa !45
  %i.aad = getelementptr inbounds nuw i8, ptr %.12672849, i64 448
  %i.aae = load <16 x float>, ptr %i.aad, align 64, !tbaa !45
  %i.aaf = load float, ptr %.2708848, align 4, !tbaa !48
  %i.aag = insertelement <16 x float> poison, float %i.aaf, i64 0
  %i.aah = shufflevector <16 x float> %i.aag, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zq, <16 x float> nofpclass(nan inf) %i.aah, <16 x float> nofpclass(nan inf) %.13853)
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2708848, i64 4
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !48
  %i.aal = insertelement <16 x float> poison, float %i.aak, i64 0
  %i.aam = shufflevector <16 x float> %i.aal, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aan = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zs, <16 x float> nofpclass(nan inf) %i.aam, <16 x float> nofpclass(nan inf) %.12607852)
  %i.aao = getelementptr inbounds nuw i8, ptr %.2708848, i64 8
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !48
  %i.aaq = insertelement <16 x float> poison, float %i.aap, i64 0
  %i.aar = shufflevector <16 x float> %i.aaq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aas = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zu, <16 x float> nofpclass(nan inf) %i.aar, <16 x float> nofpclass(nan inf) %.12630851)
  %i.aat = getelementptr inbounds nuw i8, ptr %.2708848, i64 12
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !48
  %i.aav = insertelement <16 x float> poison, float %i.aau, i64 0
  %i.aaw = shufflevector <16 x float> %i.aav, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zw, <16 x float> nofpclass(nan inf) %i.aaw, <16 x float> nofpclass(nan inf) %.12651850)
  %i.aay = load float, ptr %.0712846, align 4, !tbaa !48
  %i.aaz = insertelement <16 x float> poison, float %i.aay, i64 0
  %i.aba = shufflevector <16 x float> %i.aaz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.aba, <16 x float> nofpclass(nan inf) %i.aai) ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.0712846, i64 4
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !48
  %i.abe = insertelement <16 x float> poison, float %i.abd, i64 0
  %i.abf = shufflevector <16 x float> %i.abe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aaa, <16 x float> nofpclass(nan inf) %i.abf, <16 x float> nofpclass(nan inf) %i.aan) ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0712846, i64 8
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !48
  %i.abj = insertelement <16 x float> poison, float %i.abi, i64 0
  %i.abk = shufflevector <16 x float> %i.abj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aac, <16 x float> nofpclass(nan inf) %i.abk, <16 x float> nofpclass(nan inf) %i.aas) ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.0712846, i64 12
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !48
  %i.abo = insertelement <16 x float> poison, float %i.abn, i64 0
  %i.abp = shufflevector <16 x float> %i.abo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.abp, <16 x float> nofpclass(nan inf) %i.aax) ; 2 uses
  %i.abr = getelementptr inbounds [4 x i8], ptr %.2708848, i64 %i.zp
  %i.abs = getelementptr inbounds [4 x i8], ptr %.0712846, i64 %i.zp
  %i.abt = getelementptr inbounds nuw i8, ptr %.12672849, i64 512
  %i.abu = add nuw nsw i32 %.0711847, 1           ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.abu, %i.zi
  br i1 %exitcond1065.not, label %.loopexit749.loopexit, label %bb.o, !llvm.loop !392

.loopexit749.loopexit:                            ; preds = %bb.o
  %scevgep1063 = getelementptr i8, ptr %.9669875, i64 512
  %i.abv = add nsw i32 %i.zi, -1
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = shl nuw nsw i64 %i.abw, 9
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.abx
  br label %.loopexit748

.loopexit749:                                     ; preds = %.loopexit751
  br i1 %i.as, label %.preheader747, label %.loopexit748

.preheader747:                                    ; preds = %.loopexit749
  %i.aby = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.abz = icmp sgt i32 %i.aby, 0
  br i1 %i.abz, label %.lr.ph868, label %.loopexit748

.lr.ph868:                                        ; preds = %.preheader747
  %i.aca = load i32, ptr %10, align 4, !tbaa !58  ; 7 uses
  %i.acb = sext i32 %i.aca to i64
  %i.acc = shl nsw i32 %i.aca, 1
  %i.acd = sext i32 %i.acc to i64
  %i.ace = mul nsw i32 %i.aca, 3
  %i.acf = sext i32 %i.ace to i64
  %i.acg = shl nsw i32 %i.aca, 2
  %i.ach = sext i32 %i.acg to i64
  %i.aci = mul nsw i32 %i.aca, 5
  %i.acj = sext i32 %i.aci to i64
  %i.ack = mul nsw i32 %i.aca, 6
  %i.acl = sext i32 %i.ack to i64
  %i.acm = mul nsw i32 %i.aca, 7
  %i.acn = sext i32 %i.acm to i64
  %i.aco = load i32, ptr %9, align 4, !tbaa !58
  %i.acp = sext i32 %i.aco to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph868, %bb.p
  %.15867 = phi <16 x float> [ %.10879, %.lr.ph868 ], [ %i.aec, %bb.p ]
  %.14609866 = phi <16 x float> [ %.9604878, %.lr.ph868 ], [ %i.aeh, %bb.p ]
  %.14632865 = phi <16 x float> [ %.9627877, %.lr.ph868 ], [ %i.aem, %bb.p ]
  %.14653864 = phi <16 x float> [ %.9648876, %.lr.ph868 ], [ %i.aer, %bb.p ]
  %.14674863 = phi ptr [ %.9669875, %.lr.ph868 ], [ %i.aet, %bb.p ] ; 9 uses
  %.0698862 = phi i32 [ 0, %.lr.ph868 ], [ %i.aeu, %bb.p ]
  %.4710861 = phi ptr [ %gep890, %.lr.ph868 ], [ %i.aes, %bb.p ] ; 9 uses
  %i.acq = load <16 x float>, ptr %.14674863, align 64, !tbaa !45
  %i.acr = getelementptr inbounds nuw i8, ptr %.14674863, i64 64
  %i.acs = load <16 x float>, ptr %i.acr, align 64, !tbaa !45
  %i.act = getelementptr inbounds nuw i8, ptr %.14674863, i64 128
  %i.acu = load <16 x float>, ptr %i.act, align 64, !tbaa !45
  %i.acv = getelementptr inbounds nuw i8, ptr %.14674863, i64 192
  %i.acw = load <16 x float>, ptr %i.acv, align 64, !tbaa !45
  %i.acx = getelementptr inbounds nuw i8, ptr %.14674863, i64 256
  %i.acy = load <16 x float>, ptr %i.acx, align 64, !tbaa !45
  %i.acz = getelementptr inbounds nuw i8, ptr %.14674863, i64 320
  %i.ada = load <16 x float>, ptr %i.acz, align 64, !tbaa !45
  %i.adb = getelementptr inbounds nuw i8, ptr %.14674863, i64 384
  %i.adc = load <16 x float>, ptr %i.adb, align 64, !tbaa !45
  %i.add = getelementptr inbounds nuw i8, ptr %.14674863, i64 448
  %i.ade = load <16 x float>, ptr %i.add, align 64, !tbaa !45
  %i.adf = load float, ptr %.4710861, align 4, !tbaa !48
  %i.adg = insertelement <16 x float> poison, float %i.adf, i64 0
  %i.adh = shufflevector <16 x float> %i.adg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acq, <16 x float> nofpclass(nan inf) %i.adh, <16 x float> nofpclass(nan inf) %.15867)
  %i.adj = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acb
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !48
  %i.adl = insertelement <16 x float> poison, float %i.adk, i64 0
  %i.adm = shufflevector <16 x float> %i.adl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acs, <16 x float> nofpclass(nan inf) %i.adm, <16 x float> nofpclass(nan inf) %.14609866)
  %i.ado = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acd
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !48
  %i.adq = insertelement <16 x float> poison, float %i.adp, i64 0
  %i.adr = shufflevector <16 x float> %i.adq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ads = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acu, <16 x float> nofpclass(nan inf) %i.adr, <16 x float> nofpclass(nan inf) %.14632865)
  %i.adt = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acf
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !48
  %i.adv = insertelement <16 x float> poison, float %i.adu, i64 0
  %i.adw = shufflevector <16 x float> %i.adv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acw, <16 x float> nofpclass(nan inf) %i.adw, <16 x float> nofpclass(nan inf) %.14653864)
  %i.ady = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.ach
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !48
  %i.aea = insertelement <16 x float> poison, float %i.adz, i64 0
  %i.aeb = shufflevector <16 x float> %i.aea, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acy, <16 x float> nofpclass(nan inf) %i.aeb, <16 x float> nofpclass(nan inf) %i.adi) ; 2 uses
  %i.aed = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acj
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !48
  %i.aef = insertelement <16 x float> poison, float %i.aee, i64 0
  %i.aeg = shufflevector <16 x float> %i.aef, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ada, <16 x float> nofpclass(nan inf) %i.aeg, <16 x float> nofpclass(nan inf) %i.adn) ; 2 uses
  %i.aei = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acl
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !48
  %i.aek = insertelement <16 x float> poison, float %i.aej, i64 0
  %i.ael = shufflevector <16 x float> %i.aek, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aem = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adc, <16 x float> nofpclass(nan inf) %i.ael, <16 x float> nofpclass(nan inf) %i.ads) ; 2 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acn
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !48
  %i.aep = insertelement <16 x float> poison, float %i.aeo, i64 0
  %i.aeq = shufflevector <16 x float> %i.aep, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aer = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ade, <16 x float> nofpclass(nan inf) %i.aeq, <16 x float> nofpclass(nan inf) %i.adx) ; 2 uses
  %i.aes = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acp
  %i.aet = getelementptr inbounds nuw i8, ptr %.14674863, i64 512
  %i.aeu = add nuw nsw i32 %.0698862, 1           ; 2 uses
  %exitcond1068.not = icmp eq i32 %i.aeu, %i.aby
  br i1 %exitcond1068.not, label %.loopexit748.loopexit, label %bb.p, !llvm.loop !393

.loopexit748.loopexit:                            ; preds = %bb.p
  %scevgep1066 = getelementptr i8, ptr %.9669875, i64 512
  %i.aev = add nsw i32 %i.aby, -1
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = shl nuw nsw i64 %i.aew, 9
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.aex
  br label %.loopexit748

.loopexit748:                                     ; preds = %.preheader750, %.loopexit751.loopexit, %bb.n, %.loopexit749.loopexit, %.loopexit748.loopexit, %.preheader747, %.loopexit749
  %.15675 = phi ptr [ %.9669875, %.loopexit749 ], [ %.9669875, %.preheader747 ], [ %scevgep1067, %.loopexit748.loopexit ], [ %.9669875, %bb.n ], [ %scevgep1064, %.loopexit749.loopexit ], [ %scevgep1061, %.loopexit751.loopexit ], [ %.9669875, %.preheader750 ] ; 2 uses
  %.15654 = phi nsz <16 x float> [ %.9648876, %.loopexit749 ], [ %.9648876, %.preheader747 ], [ %i.aer, %.loopexit748.loopexit ], [ %.9648876, %bb.n ], [ %i.abq, %.loopexit749.loopexit ], [ %i.zb, %.loopexit751.loopexit ], [ %.9648876, %.preheader750 ] ; 2 uses
  %.15633 = phi nsz <16 x float> [ %.9627877, %.loopexit749 ], [ %.9627877, %.preheader747 ], [ %i.aem, %.loopexit748.loopexit ], [ %.9627877, %bb.n ], [ %i.abl, %.loopexit749.loopexit ], [ %i.yw, %.loopexit751.loopexit ], [ %.9627877, %.preheader750 ] ; 2 uses
  %.15610 = phi nsz <16 x float> [ %.9604878, %.loopexit749 ], [ %.9604878, %.preheader747 ], [ %i.aeh, %.loopexit748.loopexit ], [ %.9604878, %bb.n ], [ %i.abg, %.loopexit749.loopexit ], [ %i.yr, %.loopexit751.loopexit ], [ %.9604878, %.preheader750 ] ; 2 uses
  %.16 = phi nsz <16 x float> [ %.10879, %.loopexit749 ], [ %.10879, %.preheader747 ], [ %i.aec, %.loopexit748.loopexit ], [ %.10879, %bb.n ], [ %i.abb, %.loopexit749.loopexit ], [ %i.ym, %.loopexit751.loopexit ], [ %.10879, %.preheader750 ] ; 2 uses
  %i.aey = add nuw nsw i32 %.1686874, 8           ; 3 uses
  %i.aez = or disjoint i32 %i.aey, 7
  %i.afa = icmp slt i32 %i.aez, %i.ab
  br i1 %i.afa, label %bb.l, label %.preheader760, !llvm.loop !394

.preheader759:                                    ; preds = %.loopexit, %.preheader760
  %.2687.lcssa = phi i32 [ %.1686.lcssa, %.preheader760 ], [ %i.akt, %.loopexit ] ; 5 uses
  %.16676.lcssa = phi ptr [ %.9669.lcssa, %.preheader760 ], [ %.20680, %.loopexit ] ; 3 uses
  %.16655.lcssa = phi <16 x float> [ %.9648.lcssa, %.preheader760 ], [ %.20659, %.loopexit ]
  %.16634.lcssa = phi <16 x float> [ %.9627.lcssa, %.preheader760 ], [ %.20638, %.loopexit ]
  %.16611.lcssa = phi <16 x float> [ %.9604.lcssa, %.preheader760 ], [ %.20615, %.loopexit ] ; 3 uses
  %.17.lcssa = phi <16 x float> [ %.10.lcssa, %.preheader760 ], [ %.21, %.loopexit ] ; 3 uses
  %i.afb = or disjoint i32 %.2687.lcssa, 1
  %i.afc = icmp slt i32 %i.afb, %i.ab
  br i1 %i.afc, label %.lr.ph948, label %.preheader758

.lr.ph948:                                        ; preds = %.preheader759
  %i.afd = load ptr, ptr %3, align 8, !tbaa !19
  %i.afe = load i32, ptr %i.s, align 4, !tbaa !55
  %i.aff = sext i32 %i.afe to i64
  %i.afg = load i64, ptr %i.t, align 8, !tbaa !44
  %factor.op.mul953 = mul i64 %i.afg, %i.aff
  %i.afh = load i32, ptr %7, align 4, !tbaa !58
  %i.afi = mul nsw i32 %i.afh, %.0585979
  %i.afj = sext i32 %i.afi to i64
  %invariant.gep955 = getelementptr [4 x i8], ptr %i.afd, i64 %i.afj
  %i.afk = load i32, ptr %8, align 4, !tbaa !58   ; 6 uses
  %i.afl = icmp sgt i32 %i.afk, 0
  br i1 %i.afl, label %.lr.ph948.split.us, label %.lr.ph948.split.preheader

.lr.ph948.split.preheader:                        ; preds = %.lr.ph948
  %i.afm = add nsw i32 %.2687.lcssa, 2
  %i.afn = sub i32 %i.ax, %.2687.lcssa
  %i.afo = and i32 %i.afn, -2
  %i.afp = add i32 %i.afm, %i.afo
  br label %.preheader758

.lr.ph948.split.us:                               ; preds = %.lr.ph948
  %i.afq = load i32, ptr %10, align 4, !tbaa !58
  %i.afr = sext i32 %i.afq to i64                 ; 3 uses
  %i.afs = load i32, ptr %9, align 4, !tbaa !58
  %i.aft = sext i32 %i.afs to i64                 ; 2 uses
  %i.afu = add nsw i32 %i.afk, -1
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = shl nuw nsw i64 %i.afv, 7
  %i.afx = zext i32 %.2687.lcssa to i64
  %xtraiter = and i32 %i.afk, 1
  %i.afy = icmp eq i32 %i.afk, 1
  %unroll_iter = and i32 %i.afk, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1266 = trunc i32 %i.afk to i1
  br label %.lr.ph940.us

.lr.ph940.us:                                     ; preds = %._crit_edge.us, %.lr.ph948.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.afx, %.lr.ph948.split.us ] ; 2 uses
  %.22947.us = phi <16 x float> [ %.lcssa1262, %._crit_edge.us ], [ %.17.lcssa, %.lr.ph948.split.us ] ; 2 uses
  %.21616946.us = phi <16 x float> [ %.lcssa1261, %._crit_edge.us ], [ %.16611.lcssa, %.lr.ph948.split.us ] ; 2 uses
  %.21681945.us = phi ptr [ %scevgep1076, %._crit_edge.us ], [ %.16676.lcssa, %.lr.ph948.split.us ] ; 3 uses
  %.reass954.us = mul i64 %factor.op.mul953, %indvars.iv
  %gep956.us = getelementptr i8, ptr %invariant.gep955, i64 %.reass954.us ; 2 uses
  br i1 %i.afy, label %.epil.preheader, label %.lr.ph940.us.new

.lr.ph940.us.new:                                 ; preds = %.lr.ph940.us, %.lr.ph940.us.new
  %.0582938.us = phi ptr [ %i.agz, %.lr.ph940.us.new ], [ %gep956.us, %.lr.ph940.us ] ; 3 uses
  %.23937.us = phi <16 x float> [ %i.agt, %.lr.ph940.us.new ], [ %.22947.us, %.lr.ph940.us ]
  %.22617936.us = phi <16 x float> [ %i.agy, %.lr.ph940.us.new ], [ %.21616946.us, %.lr.ph940.us ]
  %.22682935.us = phi ptr [ %i.aha, %.lr.ph940.us.new ], [ %.21681945.us, %.lr.ph940.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph940.us.new ], [ 0, %.lr.ph940.us ]
  %i.afz = load <16 x float>, ptr %.22682935.us, align 64, !tbaa !45
  %i.aga = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 64
  %i.agb = load <16 x float>, ptr %i.aga, align 64, !tbaa !45
  %i.agc = load float, ptr %.0582938.us, align 4, !tbaa !48
  %i.agd = insertelement <16 x float> poison, float %i.agc, i64 0
  %i.age = shufflevector <16 x float> %i.agd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afz, <16 x float> nofpclass(nan inf) %i.age, <16 x float> nofpclass(nan inf) %.23937.us)
  %i.agg = getelementptr inbounds [4 x i8], ptr %.0582938.us, i64 %i.afr
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !48
  %i.agi = insertelement <16 x float> poison, float %i.agh, i64 0
  %i.agj = shufflevector <16 x float> %i.agi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.agb, <16 x float> nofpclass(nan inf) %i.agj, <16 x float> nofpclass(nan inf) %.22617936.us)
  %i.agl = getelementptr inbounds [4 x i8], ptr %.0582938.us, i64 %i.aft ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 128
  %i.agn = load <16 x float>, ptr %i.agm, align 64, !tbaa !45
  %i.ago = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 192
  %i.agp = load <16 x float>, ptr %i.ago, align 64, !tbaa !45
  %i.agq = load float, ptr %i.agl, align 4, !tbaa !48
  %i.agr = insertelement <16 x float> poison, float %i.agq, i64 0
  %i.ags = shufflevector <16 x float> %i.agr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.agn, <16 x float> nofpclass(nan inf) %i.ags, <16 x float> nofpclass(nan inf) %i.agf) ; 3 uses
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %i.afr
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !48
  %i.agw = insertelement <16 x float> poison, float %i.agv, i64 0
  %i.agx = shufflevector <16 x float> %i.agw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.agp, <16 x float> nofpclass(nan inf) %i.agx, <16 x float> nofpclass(nan inf) %i.agk) ; 3 uses
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %i.aft ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 256 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph940.us.new, !llvm.loop !395

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph940.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph940.us
  %.0582938.us.epil.init = phi ptr [ %gep956.us, %.lr.ph940.us ], [ %i.agz, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.23937.us.epil.init = phi <16 x float> [ %.22947.us, %.lr.ph940.us ], [ %i.agt, %._crit_edge.us.unr-lcssa ]
  %.22617936.us.epil.init = phi <16 x float> [ %.21616946.us, %.lr.ph940.us ], [ %i.agy, %._crit_edge.us.unr-lcssa ]
  %.22682935.us.epil.init = phi ptr [ %.21681945.us, %.lr.ph940.us ], [ %i.aha, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1266)
  %i.ahb = load <16 x float>, ptr %.22682935.us.epil.init, align 64, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.22682935.us.epil.init, i64 64
  %i.ahd = load <16 x float>, ptr %i.ahc, align 64, !tbaa !45
  %i.ahe = load float, ptr %.0582938.us.epil.init, align 4, !tbaa !48
  %i.ahf = insertelement <16 x float> poison, float %i.ahe, i64 0
  %i.ahg = shufflevector <16 x float> %i.ahf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahb, <16 x float> nofpclass(nan inf) %i.ahg, <16 x float> nofpclass(nan inf) %.23937.us.epil.init)
  %i.ahi = getelementptr inbounds [4 x i8], ptr %.0582938.us.epil.init, i64 %i.afr
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !48
  %i.ahk = insertelement <16 x float> poison, float %i.ahj, i64 0
  %i.ahl = shufflevector <16 x float> %i.ahk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahd, <16 x float> nofpclass(nan inf) %i.ahl, <16 x float> nofpclass(nan inf) %.22617936.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa1262 = phi <16 x float> [ %i.agt, %._crit_edge.us.unr-lcssa ], [ %i.ahh, %.epil.preheader ] ; 2 uses
  %.lcssa1261 = phi <16 x float> [ %i.agy, %._crit_edge.us.unr-lcssa ], [ %i.ahm, %.epil.preheader ] ; 2 uses
  %scevgep1075 = getelementptr i8, ptr %.21681945.us, i64 128
  %scevgep1076 = getelementptr i8, ptr %scevgep1075, i64 %i.afw ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ahn = trunc i64 %indvars.iv.next to i32
  %i.aho = or i32 %i.ahn, 1
  %i.ahp = icmp slt i32 %i.aho, %i.ab
  br i1 %i.ahp, label %.lr.ph940.us, label %.preheader758.loopexit, !llvm.loop !396

bb.q:                                             ; preds = %.lr.ph924, %.loopexit
  %.17923 = phi <16 x float> [ %.10.lcssa, %.lr.ph924 ], [ %.21, %.loopexit ] ; 5 uses
  %.16611922 = phi <16 x float> [ %.9604.lcssa, %.lr.ph924 ], [ %.20615, %.loopexit ] ; 5 uses
  %.16634921 = phi <16 x float> [ %.9627.lcssa, %.lr.ph924 ], [ %.20638, %.loopexit ] ; 5 uses
  %.16655920 = phi <16 x float> [ %.9648.lcssa, %.lr.ph924 ], [ %.20659, %.loopexit ] ; 5 uses
  %.16676919 = phi ptr [ %.9669.lcssa, %.lr.ph924 ], [ %.20680, %.loopexit ] ; 7 uses
  %.2687918 = phi i32 [ %.1686.lcssa, %.lr.ph924 ], [ %i.akt, %.loopexit ] ; 2 uses
  %i.ahq = sdiv i32 %.2687918, %i.z
  %i.ahr = sext i32 %i.ahq to i64
  %.reass932 = mul i64 %factor.op.mul931, %i.ahr
  %gep934 = getelementptr i8, ptr %invariant.gep933, i64 %.reass932 ; 2 uses
  br i1 %i.ar, label %.preheader745, label %.loopexit746

.preheader745:                                    ; preds = %bb.q
  %i.ahs = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.aht = icmp sgt i32 %i.ahs, 0
  br i1 %i.aht, label %.lr.ph898, label %.loopexit

.lr.ph898:                                        ; preds = %.preheader745
  %i.ahu = load i32, ptr %9, align 4, !tbaa !58
  %i.ahv = shl nsw i32 %i.ahu, 2
  %i.ahw = sext i32 %i.ahv to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph898, %bb.r
  %.0586897 = phi i32 [ 0, %.lr.ph898 ], [ %i.aiz, %bb.r ]
  %.0587896 = phi ptr [ %gep934, %.lr.ph898 ], [ %i.aix, %bb.r ] ; 5 uses
  %.18895 = phi <16 x float> [ %.17923, %.lr.ph898 ], [ %i.aih, %bb.r ]
  %.17612894 = phi <16 x float> [ %.16611922, %.lr.ph898 ], [ %i.aim, %bb.r ]
  %.17635893 = phi <16 x float> [ %.16634921, %.lr.ph898 ], [ %i.air, %bb.r ]
  %.17656892 = phi <16 x float> [ %.16655920, %.lr.ph898 ], [ %i.aiw, %bb.r ]
  %.17677891 = phi ptr [ %.16676919, %.lr.ph898 ], [ %i.aiy, %bb.r ] ; 5 uses
  %i.ahx = load <16 x float>, ptr %.17677891, align 64, !tbaa !45
  %i.ahy = getelementptr inbounds nuw i8, ptr %.17677891, i64 64
  %i.ahz = load <16 x float>, ptr %i.ahy, align 64, !tbaa !45
  %i.aia = getelementptr inbounds nuw i8, ptr %.17677891, i64 128
  %i.aib = load <16 x float>, ptr %i.aia, align 64, !tbaa !45
  %i.aic = getelementptr inbounds nuw i8, ptr %.17677891, i64 192
  %i.aid = load <16 x float>, ptr %i.aic, align 64, !tbaa !45
  %i.aie = load float, ptr %.0587896, align 4, !tbaa !48
  %i.aif = insertelement <16 x float> poison, float %i.aie, i64 0
  %i.aig = shufflevector <16 x float> %i.aif, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aih = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahx, <16 x float> nofpclass(nan inf) %i.aig, <16 x float> nofpclass(nan inf) %.18895) ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.0587896, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !48
  %i.aik = insertelement <16 x float> poison, float %i.aij, i64 0
  %i.ail = shufflevector <16 x float> %i.aik, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aim = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahz, <16 x float> nofpclass(nan inf) %i.ail, <16 x float> nofpclass(nan inf) %.17612894) ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.0587896, i64 8
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !48
  %i.aip = insertelement <16 x float> poison, float %i.aio, i64 0
  %i.aiq = shufflevector <16 x float> %i.aip, <16 x float> poison, <16 x i32> zeroinitializer
  %i.air = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aib, <16 x float> nofpclass(nan inf) %i.aiq, <16 x float> nofpclass(nan inf) %.17635893) ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.0587896, i64 12
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !48
  %i.aiu = insertelement <16 x float> poison, float %i.ait, i64 0
  %i.aiv = shufflevector <16 x float> %i.aiu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aiw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aid, <16 x float> nofpclass(nan inf) %i.aiv, <16 x float> nofpclass(nan inf) %.17656892) ; 2 uses
  %i.aix = getelementptr inbounds [4 x i8], ptr %.0587896, i64 %i.ahw
  %i.aiy = getelementptr inbounds nuw i8, ptr %.17677891, i64 256
  %i.aiz = add nuw nsw i32 %.0586897, 1           ; 2 uses
  %exitcond1071.not = icmp eq i32 %i.aiz, %i.ahs
  br i1 %exitcond1071.not, label %.loopexit746.loopexit, label %bb.r, !llvm.loop !397

.loopexit746.loopexit:                            ; preds = %bb.r
  %scevgep1069 = getelementptr i8, ptr %.16676919, i64 256
  %i.aja = add nsw i32 %i.ahs, -1
  %i.ajb = zext nneg i32 %i.aja to i64
  %i.ajc = shl nuw nsw i64 %i.ajb, 8
  %scevgep1070 = getelementptr i8, ptr %scevgep1069, i64 %i.ajc
  br label %.loopexit

.loopexit746:                                     ; preds = %bb.q
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit746
  %i.ajd = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.aje = icmp sgt i32 %i.ajd, 0
  br i1 %i.aje, label %.lr.ph912, label %.loopexit

.lr.ph912:                                        ; preds = %.preheader
  %i.ajf = load i32, ptr %10, align 4, !tbaa !58  ; 3 uses
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = shl nsw i32 %i.ajf, 1
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = mul nsw i32 %i.ajf, 3
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = load i32, ptr %9, align 4, !tbaa !58
  %i.ajm = sext i32 %i.ajl to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph912, %bb.s
  %.0583911 = phi i32 [ 0, %.lr.ph912 ], [ %i.akp, %bb.s ]
  %.2589910 = phi ptr [ %gep934, %.lr.ph912 ], [ %i.akn, %bb.s ] ; 5 uses
  %.20909 = phi <16 x float> [ %.17923, %.lr.ph912 ], [ %i.ajx, %bb.s ]
  %.19614908 = phi <16 x float> [ %.16611922, %.lr.ph912 ], [ %i.akc, %bb.s ]
  %.19637907 = phi <16 x float> [ %.16634921, %.lr.ph912 ], [ %i.akh, %bb.s ]
  %.19658906 = phi <16 x float> [ %.16655920, %.lr.ph912 ], [ %i.akm, %bb.s ]
end_hunk_12
begin_hunk_13_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.anr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alz, <8 x float> nofpclass(nan inf) %i.anq, <8 x float> nofpclass(nan inf) %.1227463125)
  %i.ans = bitcast <8 x i32> %i.ani to <8 x float>
  %i.ant = shufflevector <8 x float> %i.ans, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.anu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amf, <8 x float> nofpclass(nan inf) %i.ant, <8 x float> nofpclass(nan inf) %.1227673124)
  %i.anv = bitcast <8 x i32> %i.ani to <8 x float>
  %i.anw = shufflevector <8 x float> %i.anv, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.anx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %i.anw, <8 x float> nofpclass(nan inf) %i.anl) ; 2 uses
  %i.any = bitcast <8 x i32> %i.ani to <8 x float>
  %i.anz = shufflevector <8 x float> %i.any, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.aoa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amr, <8 x float> nofpclass(nan inf) %i.anz, <8 x float> nofpclass(nan inf) %i.ano) ; 2 uses
  %i.aob = bitcast <8 x i32> %i.ani to <8 x float>
  %i.aoc = shufflevector <8 x float> %i.aob, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.aod = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amx, <8 x float> nofpclass(nan inf) %i.aoc, <8 x float> nofpclass(nan inf) %i.anr) ; 2 uses
  %i.aoe = bitcast <8 x i32> %i.ani to <8 x float>
  %i.aof = shufflevector <8 x float> %i.aoe, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.aog = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.and, <8 x float> nofpclass(nan inf) %i.aof, <8 x float> nofpclass(nan inf) %i.anu) ; 2 uses
  %i.aoh = getelementptr inbounds [2 x i8], ptr %.214343130, i64 %i.ga
  %i.aoi = getelementptr inbounds [2 x i8], ptr %.014383129, i64 %i.ga
  %i.aoj = getelementptr inbounds nuw i8, ptr %.1213233131, i64 128
  %i.aok = add nuw nsw i32 %.014393128, 1         ; 2 uses
  %exitcond4158.not = icmp eq i32 %i.aok, %i.fs
  br i1 %exitcond4158.not, label %.loopexit3025.loopexit, label %.lr.ph3132, !llvm.loop !414

.loopexit3025.loopexit:                           ; preds = %.lr.ph3132
  %scevgep4156 = getelementptr i8, ptr %.913203157, i64 128
  %scevgep4157 = getelementptr i8, ptr %scevgep4156, i64 %i.gq
  br label %.loopexit3024

.loopexit3025:                                    ; preds = %.loopexit3027
  br i1 %i.cf, label %.preheader3023, label %.loopexit3024

.preheader3023:                                   ; preds = %.loopexit3025
  br i1 %i.ft, label %.lr.ph3146, label %.loopexit3024

.lr.ph3146:                                       ; preds = %.preheader3023, %.lr.ph3146
  %.1413253145 = phi ptr [ %i.ass, %.lr.ph3146 ], [ %.913203157, %.preheader3023 ] ; 9 uses
  %.414363144 = phi ptr [ %i.asr, %.lr.ph3146 ], [ %gep3168, %.preheader3023 ] ; 9 uses
  %.014403143 = phi i32 [ %i.ast, %.lr.ph3146 ], [ 0, %.preheader3023 ]
  %.1527013142 = phi <8 x float> [ %i.ars, %.lr.ph3146 ], [ %.1026963155, %.preheader3023 ]
  %.1427253141 = phi <8 x float> [ %i.asa, %.lr.ph3146 ], [ %.927203154, %.preheader3023 ]
  %.1427483140 = phi <8 x float> [ %i.asi, %.lr.ph3146 ], [ %.927433153, %.preheader3023 ]
  %.1427693139 = phi <8 x float> [ %i.asq, %.lr.ph3146 ], [ %.927643152, %.preheader3023 ]
  %i.aol = load <8 x i16>, ptr %.1413253145, align 16, !tbaa !45 ; 2 uses
  %i.aom = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aol, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aon = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aol, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aoo = shufflevector <8 x i16> %i.aom, <8 x i16> %i.aon, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aop = bitcast <16 x i16> %i.aoo to <8 x float>
  %i.aoq = getelementptr inbounds nuw i8, ptr %.1413253145, i64 16
  %i.aor = load <8 x i16>, ptr %i.aoq, align 16, !tbaa !45 ; 2 uses
  %i.aos = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aor, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aot = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aor, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aou = shufflevector <8 x i16> %i.aos, <8 x i16> %i.aot, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aov = bitcast <16 x i16> %i.aou to <8 x float>
  %i.aow = getelementptr inbounds nuw i8, ptr %.1413253145, i64 32
  %i.aox = load <8 x i16>, ptr %i.aow, align 16, !tbaa !45 ; 2 uses
  %i.aoy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aox, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apa = shufflevector <8 x i16> %i.aoy, <8 x i16> %i.aoz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apb = bitcast <16 x i16> %i.apa to <8 x float>
  %i.apc = getelementptr inbounds nuw i8, ptr %.1413253145, i64 48
  %i.apd = load <8 x i16>, ptr %i.apc, align 16, !tbaa !45 ; 2 uses
  %i.ape = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apg = shufflevector <8 x i16> %i.ape, <8 x i16> %i.apf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aph = bitcast <16 x i16> %i.apg to <8 x float>
  %i.api = getelementptr inbounds nuw i8, ptr %.1413253145, i64 64
  %i.apj = load <8 x i16>, ptr %i.api, align 16, !tbaa !45 ; 2 uses
  %i.apk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apm = shufflevector <8 x i16> %i.apk, <8 x i16> %i.apl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apn = bitcast <16 x i16> %i.apm to <8 x float>
  %i.apo = getelementptr inbounds nuw i8, ptr %.1413253145, i64 80
  %i.app = load <8 x i16>, ptr %i.apo, align 16, !tbaa !45 ; 2 uses
  %i.apq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.app, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.app, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aps = shufflevector <8 x i16> %i.apq, <8 x i16> %i.apr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apt = bitcast <16 x i16> %i.aps to <8 x float>
  %i.apu = getelementptr inbounds nuw i8, ptr %.1413253145, i64 96
  %i.apv = load <8 x i16>, ptr %i.apu, align 16, !tbaa !45 ; 2 uses
  %i.apw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apy = shufflevector <8 x i16> %i.apw, <8 x i16> %i.apx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apz = bitcast <16 x i16> %i.apy to <8 x float>
  %i.aqa = getelementptr inbounds nuw i8, ptr %.1413253145, i64 112
  %i.aqb = load <8 x i16>, ptr %i.aqa, align 16, !tbaa !45 ; 2 uses
  %i.aqc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aqb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aqb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aqe = shufflevector <8 x i16> %i.aqc, <8 x i16> %i.aqd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqf = bitcast <16 x i16> %i.aqe to <8 x float>
  %i.aqg = load i16, ptr %.414363144, align 2, !tbaa !70
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = shl nuw i32 %i.aqh, 16
  %i.aqj = insertelement <8 x i32> poison, i32 %i.aqi, i64 0
  %i.aqk = bitcast <8 x i32> %i.aqj to <8 x float>
  %i.aql = shufflevector <8 x float> %i.aqk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aop, <8 x float> nofpclass(nan inf) %i.aql, <8 x float> nofpclass(nan inf) %.1527013142)
  %i.aqn = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.fy
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !70
  %i.aqp = zext i16 %i.aqo to i32
  %i.aqq = shl nuw i32 %i.aqp, 16
  %i.aqr = insertelement <8 x i32> poison, i32 %i.aqq, i64 0
  %i.aqs = bitcast <8 x i32> %i.aqr to <8 x float>
  %i.aqt = shufflevector <8 x float> %i.aqs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aov, <8 x float> nofpclass(nan inf) %i.aqt, <8 x float> nofpclass(nan inf) %.1427253141)
  %i.aqv = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gc
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !70
  %i.aqx = zext i16 %i.aqw to i32
  %i.aqy = shl nuw i32 %i.aqx, 16
  %i.aqz = insertelement <8 x i32> poison, i32 %i.aqy, i64 0
  %i.ara = bitcast <8 x i32> %i.aqz to <8 x float>
  %i.arb = shufflevector <8 x float> %i.ara, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apb, <8 x float> nofpclass(nan inf) %i.arb, <8 x float> nofpclass(nan inf) %.1427483140)
  %i.ard = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.ge
  %i.are = load i16, ptr %i.ard, align 2, !tbaa !70
  %i.arf = zext i16 %i.are to i32
  %i.arg = shl nuw i32 %i.arf, 16
  %i.arh = insertelement <8 x i32> poison, i32 %i.arg, i64 0
  %i.ari = bitcast <8 x i32> %i.arh to <8 x float>
  %i.arj = shufflevector <8 x float> %i.ari, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ark = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aph, <8 x float> nofpclass(nan inf) %i.arj, <8 x float> nofpclass(nan inf) %.1427693139)
  %i.arl = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gg
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !70
  %i.arn = zext i16 %i.arm to i32
  %i.aro = shl nuw i32 %i.arn, 16
  %i.arp = insertelement <8 x i32> poison, i32 %i.aro, i64 0
  %i.arq = bitcast <8 x i32> %i.arp to <8 x float>
  %i.arr = shufflevector <8 x float> %i.arq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ars = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apn, <8 x float> nofpclass(nan inf) %i.arr, <8 x float> nofpclass(nan inf) %i.aqm) ; 2 uses
  %i.art = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gi
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !70
  %i.arv = zext i16 %i.aru to i32
  %i.arw = shl nuw i32 %i.arv, 16
  %i.arx = insertelement <8 x i32> poison, i32 %i.arw, i64 0
  %i.ary = bitcast <8 x i32> %i.arx to <8 x float>
  %i.arz = shufflevector <8 x float> %i.ary, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apt, <8 x float> nofpclass(nan inf) %i.arz, <8 x float> nofpclass(nan inf) %i.aqu) ; 2 uses
  %i.asb = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gk
  %i.asc = load i16, ptr %i.asb, align 2, !tbaa !70
  %i.asd = zext i16 %i.asc to i32
  %i.ase = shl nuw i32 %i.asd, 16
  %i.asf = insertelement <8 x i32> poison, i32 %i.ase, i64 0
  %i.asg = bitcast <8 x i32> %i.asf to <8 x float>
  %i.ash = shufflevector <8 x float> %i.asg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apz, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) %i.arc) ; 2 uses
  %i.asj = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gm
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !70
  %i.asl = zext i16 %i.ask to i32
  %i.asm = shl nuw i32 %i.asl, 16
  %i.asn = insertelement <8 x i32> poison, i32 %i.asm, i64 0
  %i.aso = bitcast <8 x i32> %i.asn to <8 x float>
  %i.asp = shufflevector <8 x float> %i.aso, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqf, <8 x float> nofpclass(nan inf) %i.asp, <8 x float> nofpclass(nan inf) %i.ark) ; 2 uses
  %i.asr = getelementptr inbounds [2 x i8], ptr %.414363144, i64 %i.gn
  %i.ass = getelementptr inbounds nuw i8, ptr %.1413253145, i64 128
  %i.ast = add nuw nsw i32 %.014403143, 1         ; 2 uses
  %exitcond4161.not = icmp eq i32 %i.ast, %i.fs
  br i1 %exitcond4161.not, label %.loopexit3024.loopexit, label %.lr.ph3146, !llvm.loop !415

.loopexit3024.loopexit:                           ; preds = %.lr.ph3146
  %scevgep4159 = getelementptr i8, ptr %.913203157, i64 128
  %scevgep4160 = getelementptr i8, ptr %scevgep4159, i64 %i.gq
  br label %.loopexit3024

.loopexit3024:                                    ; preds = %.preheader3026, %.loopexit3027.loopexit, %bb.j, %.loopexit3025.loopexit, %.loopexit3024.loopexit, %.preheader3023, %.loopexit3025
  %.152770 = phi nsz <8 x float> [ %.927643152, %.loopexit3025 ], [ %.927643152, %.preheader3023 ], [ %i.asq, %.loopexit3024.loopexit ], [ %.927643152, %bb.j ], [ %i.aog, %.loopexit3025.loopexit ], [ %i.ale, %.loopexit3027.loopexit ], [ %.927643152, %.preheader3026 ] ; 2 uses
  %.152749 = phi nsz <8 x float> [ %.927433153, %.loopexit3025 ], [ %.927433153, %.preheader3023 ], [ %i.asi, %.loopexit3024.loopexit ], [ %.927433153, %bb.j ], [ %i.aod, %.loopexit3025.loopexit ], [ %i.alb, %.loopexit3027.loopexit ], [ %.927433153, %.preheader3026 ] ; 2 uses
  %.152726 = phi nsz <8 x float> [ %.927203154, %.loopexit3025 ], [ %.927203154, %.preheader3023 ], [ %i.asa, %.loopexit3024.loopexit ], [ %.927203154, %bb.j ], [ %i.aoa, %.loopexit3025.loopexit ], [ %i.aky, %.loopexit3027.loopexit ], [ %.927203154, %.preheader3026 ] ; 2 uses
  %.162702 = phi nsz <8 x float> [ %.1026963155, %.loopexit3025 ], [ %.1026963155, %.preheader3023 ], [ %i.ars, %.loopexit3024.loopexit ], [ %.1026963155, %bb.j ], [ %i.anx, %.loopexit3025.loopexit ], [ %i.akv, %.loopexit3027.loopexit ], [ %.1026963155, %.preheader3026 ] ; 2 uses
  %.151326 = phi ptr [ %.913203157, %.loopexit3025 ], [ %.913203157, %.preheader3023 ], [ %scevgep4160, %.loopexit3024.loopexit ], [ %.913203157, %bb.j ], [ %scevgep4157, %.loopexit3025.loopexit ], [ %scevgep4154, %.loopexit3027.loopexit ], [ %.913203157, %.preheader3026 ] ; 2 uses
  %i.asu = add nuw nsw i32 %.113413156, 8         ; 3 uses
  %i.asv = or disjoint i32 %i.asu, 7
  %i.asw = icmp slt i32 %i.asv, %i.bh
  br i1 %i.asw, label %bb.i, label %.preheader3036, !llvm.loop !416

.preheader3035:                                   ; preds = %.loopexit3020, %.preheader3036
  %.162771.lcssa = phi <8 x float> [ %.92764.lcssa, %.preheader3036 ], [ %.202775, %.loopexit3020 ]
  %.162750.lcssa = phi <8 x float> [ %.92743.lcssa, %.preheader3036 ], [ %.202754, %.loopexit3020 ]
  %.162727.lcssa = phi <8 x float> [ %.92720.lcssa, %.preheader3036 ], [ %.202731, %.loopexit3020 ] ; 3 uses
  %.172703.lcssa = phi <8 x float> [ %.102696.lcssa, %.preheader3036 ], [ %.212707, %.loopexit3020 ] ; 3 uses
  %.21342.lcssa = phi i32 [ %.11341.lcssa, %.preheader3036 ], [ %i.ayp, %.loopexit3020 ] ; 5 uses
  %.161327.lcssa = phi ptr [ %.91320.lcssa, %.preheader3036 ], [ %.201331, %.loopexit3020 ] ; 3 uses
  %i.asx = or disjoint i32 %.21342.lcssa, 1
  %i.asy = icmp slt i32 %i.asx, %i.bh
  br i1 %i.asy, label %.lr.ph3226, label %.preheader3034

.lr.ph3226:                                       ; preds = %.preheader3035
  %i.asz = load ptr, ptr %0, align 8, !tbaa !19
  %i.ata = load i32, ptr %i.p, align 4, !tbaa !55
  %i.atb = sext i32 %i.ata to i64
  %i.atc = load i64, ptr %i.am, align 8, !tbaa !44
  %factor.op.mul3231 = mul i64 %i.atc, %i.atb
  %i.atd = mul nsw i64 %indvars.iv4178, %i.dc
  %invariant.gep3233 = getelementptr [2 x i8], ptr %i.asz, i64 %i.atd
  %i.ate = load i32, ptr %i.e, align 4
  %i.atf = sext i32 %i.ate to i64
  %i.atg = load i32, ptr %i.b, align 4
  %i.ath = sext i32 %i.atg to i64
  br i1 %i.ch, label %.lr.ph3218.us.preheader, label %.lr.ph3226.split.preheader

.lr.ph3226.split.preheader:                       ; preds = %.lr.ph3226
  %i.ati = add nsw i32 %.21342.lcssa, 2
  %i.atj = sub i32 %i.cx, %.21342.lcssa
  %i.atk = and i32 %i.atj, -2
  %i.atl = add i32 %i.ati, %i.atk
  br label %.preheader3034

.lr.ph3218.us.preheader:                          ; preds = %.lr.ph3226
  %i.atm = zext i32 %.21342.lcssa to i64
  br label %.lr.ph3218.us

.lr.ph3218.us:                                    ; preds = %.lr.ph3218.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.atm, %.lr.ph3218.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.2113323225.us = phi ptr [ %.161327.lcssa, %.lr.ph3218.us.preheader ], [ %scevgep4169, %._crit_edge.us ] ; 2 uses
  %.2227083223.us = phi <8 x float> [ %.172703.lcssa, %.lr.ph3218.us.preheader ], [ %i.aue, %._crit_edge.us ]
  %.2127323222.us = phi <8 x float> [ %.162727.lcssa, %.lr.ph3218.us.preheader ], [ %i.aum, %._crit_edge.us ]
  %.reass3232.us = mul i64 %factor.op.mul3231, %indvars.iv
  %gep3234.us = getelementptr i8, ptr %invariant.gep3233, i64 %.reass3232.us
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3218.us, %bb.k
  %.2213333217.us = phi ptr [ %.2113323225.us, %.lr.ph3218.us ], [ %i.auo, %bb.k ] ; 3 uses
  %.014463216.us = phi ptr [ %gep3234.us, %.lr.ph3218.us ], [ %i.aun, %bb.k ] ; 3 uses
  %.014473215.us = phi i32 [ 0, %.lr.ph3218.us ], [ %i.aup, %bb.k ]
  %.2327093214.us = phi <8 x float> [ %.2227083223.us, %.lr.ph3218.us ], [ %i.aue, %bb.k ]
  %.2227333213.us = phi <8 x float> [ %.2127323222.us, %.lr.ph3218.us ], [ %i.aum, %bb.k ]
  %i.atn = load <8 x i16>, ptr %.2213333217.us, align 16, !tbaa !45 ; 2 uses
  %i.ato = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.atn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.atn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.atq = shufflevector <8 x i16> %i.ato, <8 x i16> %i.atp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atr = bitcast <16 x i16> %i.atq to <8 x float>
  %i.ats = getelementptr inbounds nuw i8, ptr %.2213333217.us, i64 16
  %i.att = load <8 x i16>, ptr %i.ats, align 16, !tbaa !45 ; 2 uses
  %i.atu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.att, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.att, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.atw = shufflevector <8 x i16> %i.atu, <8 x i16> %i.atv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atx = bitcast <16 x i16> %i.atw to <8 x float>
  %i.aty = load i16, ptr %.014463216.us, align 2, !tbaa !70
  %i.atz = zext i16 %i.aty to i32
  %i.aua = shl nuw i32 %i.atz, 16
  %i.aub = insertelement <8 x i32> poison, i32 %i.aua, i64 0
  %i.auc = bitcast <8 x i32> %i.aub to <8 x float>
  %i.aud = shufflevector <8 x float> %i.auc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aue = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atr, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) %.2327093214.us) ; 3 uses
  %i.auf = getelementptr inbounds [2 x i8], ptr %.014463216.us, i64 %i.atf
  %i.aug = load i16, ptr %i.auf, align 2, !tbaa !70
  %i.auh = zext i16 %i.aug to i32
  %i.aui = shl nuw i32 %i.auh, 16
  %i.auj = insertelement <8 x i32> poison, i32 %i.aui, i64 0
  %i.auk = bitcast <8 x i32> %i.auj to <8 x float>
  %i.aul = shufflevector <8 x float> %i.auk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aum = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atx, <8 x float> nofpclass(nan inf) %i.aul, <8 x float> nofpclass(nan inf) %.2227333213.us) ; 3 uses
  %i.aun = getelementptr inbounds [2 x i8], ptr %.014463216.us, i64 %i.ath
  %i.auo = getelementptr inbounds nuw i8, ptr %.2213333217.us, i64 32
  %i.aup = add nuw nsw i32 %.014473215.us, 1      ; 2 uses
  %exitcond4170.not = icmp eq i32 %i.aup, %i.cg
  br i1 %exitcond4170.not, label %._crit_edge.us, label %bb.k, !llvm.loop !417

._crit_edge.us:                                   ; preds = %bb.k
  %scevgep4168 = getelementptr i8, ptr %.2113323225.us, i64 32
  %scevgep4169 = getelementptr i8, ptr %scevgep4168, i64 %i.da ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.auq = trunc i64 %indvars.iv.next to i32
  %i.aur = or i32 %i.auq, 1
  %i.aus = icmp slt i32 %i.aur, %i.bh
  br i1 %i.aus, label %.lr.ph3218.us, label %.preheader3034.loopexit, !llvm.loop !418

bb.l:                                             ; preds = %.lr.ph3202, %.loopexit3020
  %.1613273201 = phi ptr [ %.91320.lcssa, %.lr.ph3202 ], [ %.201331, %.loopexit3020 ] ; 7 uses
  %.213423200 = phi i32 [ %.11341.lcssa, %.lr.ph3202 ], [ %i.ayp, %.loopexit3020 ] ; 2 uses
  %.1727033199 = phi <8 x float> [ %.102696.lcssa, %.lr.ph3202 ], [ %.212707, %.loopexit3020 ] ; 5 uses
  %.1627273198 = phi <8 x float> [ %.92720.lcssa, %.lr.ph3202 ], [ %.202731, %.loopexit3020 ] ; 5 uses
  %.1627503197 = phi <8 x float> [ %.92743.lcssa, %.lr.ph3202 ], [ %.202754, %.loopexit3020 ] ; 5 uses
  %.1627713196 = phi <8 x float> [ %.92764.lcssa, %.lr.ph3202 ], [ %.202775, %.loopexit3020 ] ; 5 uses
  %i.aut = sdiv i32 %.213423200, %i.bf
  %i.auu = sext i32 %i.aut to i64
  %.reass3210 = mul i64 %factor.op.mul3209, %i.auu
  %gep3212 = getelementptr i8, ptr %invariant.gep3211, i64 %.reass3210 ; 2 uses
  br i1 %i.ce, label %.preheader3021, label %.loopexit3022

.preheader3021:                                   ; preds = %bb.l
  br i1 %i.aht, label %.lr.ph3176, label %.loopexit3020

.lr.ph3176:                                       ; preds = %.preheader3021, %.lr.ph3176
  %.1713283175 = phi ptr [ %i.awi, %.lr.ph3176 ], [ %.1613273201, %.preheader3021 ] ; 5 uses
  %.014413174 = phi ptr [ %i.awh, %.lr.ph3176 ], [ %gep3212, %.preheader3021 ] ; 2 uses
  %.014443173 = phi i32 [ %i.awj, %.lr.ph3176 ], [ 0, %.preheader3021 ]
  %.1827043172 = phi <8 x float> [ %i.avx, %.lr.ph3176 ], [ %.1727033199, %.preheader3021 ]
  %.1727283171 = phi <8 x float> [ %i.awa, %.lr.ph3176 ], [ %.1627273198, %.preheader3021 ]
  %.1727513170 = phi <8 x float> [ %i.awd, %.lr.ph3176 ], [ %.1627503197, %.preheader3021 ]
  %.1727723169 = phi <8 x float> [ %i.awg, %.lr.ph3176 ], [ %.1627713196, %.preheader3021 ]
  %i.auv = load <8 x i16>, ptr %.1713283175, align 16, !tbaa !45 ; 2 uses
  %i.auw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aux = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.auv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.auy = shufflevector <8 x i16> %i.auw, <8 x i16> %i.aux, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auz = bitcast <16 x i16> %i.auy to <8 x float>
  %i.ava = getelementptr inbounds nuw i8, ptr %.1713283175, i64 16
  %i.avb = load <8 x i16>, ptr %i.ava, align 16, !tbaa !45 ; 2 uses
  %i.avc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ave = shufflevector <8 x i16> %i.avc, <8 x i16> %i.avd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avf = bitcast <16 x i16> %i.ave to <8 x float>
  %i.avg = getelementptr inbounds nuw i8, ptr %.1713283175, i64 32
  %i.avh = load <8 x i16>, ptr %i.avg, align 16, !tbaa !45 ; 2 uses
  %i.avi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avk = shufflevector <8 x i16> %i.avi, <8 x i16> %i.avj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avl = bitcast <16 x i16> %i.avk to <8 x float>
  %i.avm = getelementptr inbounds nuw i8, ptr %.1713283175, i64 48
  %i.avn = load <8 x i16>, ptr %i.avm, align 16, !tbaa !45 ; 2 uses
  %i.avo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avq = shufflevector <8 x i16> %i.avo, <8 x i16> %i.avp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avr = bitcast <16 x i16> %i.avq to <8 x float>
  %i.avs = load <4 x i16>, ptr %.014413174, align 2, !tbaa !70
  %i.avt = zext <4 x i16> %i.avs to <4 x i32>
  %i.avu = shl nuw <4 x i32> %i.avt, splat (i32 16) ; 4 uses
  %i.avv = bitcast <4 x i32> %i.avu to <4 x float>
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <8 x i32> zeroinitializer
  %i.avx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auz, <8 x float> nofpclass(nan inf) %i.avw, <8 x float> nofpclass(nan inf) %.1827043172) ; 2 uses
  %i.avy = bitcast <4 x i32> %i.avu to <4 x float>
  %i.avz = shufflevector <4 x float> %i.avy, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.awa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avf, <8 x float> nofpclass(nan inf) %i.avz, <8 x float> nofpclass(nan inf) %.1727283171) ; 2 uses
  %i.awb = bitcast <4 x i32> %i.avu to <4 x float>
  %i.awc = shufflevector <4 x float> %i.awb, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.awd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avl, <8 x float> nofpclass(nan inf) %i.awc, <8 x float> nofpclass(nan inf) %.1727513170) ; 2 uses
  %i.awe = bitcast <4 x i32> %i.avu to <4 x float>
  %i.awf = shufflevector <4 x float> %i.awe, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.awg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avr, <8 x float> nofpclass(nan inf) %i.awf, <8 x float> nofpclass(nan inf) %.1727723169) ; 2 uses
  %i.awh = getelementptr inbounds [2 x i8], ptr %.014413174, i64 %i.ahw
  %i.awi = getelementptr inbounds nuw i8, ptr %.1713283175, i64 64
  %i.awj = add nuw nsw i32 %.014443173, 1         ; 2 uses
  %exitcond4164.not = icmp eq i32 %i.awj, %i.ahs
  br i1 %exitcond4164.not, label %.loopexit3022.loopexit, label %.lr.ph3176, !llvm.loop !419

.loopexit3022.loopexit:                           ; preds = %.lr.ph3176
  %scevgep4162 = getelementptr i8, ptr %.1613273201, i64 64
  %scevgep4163 = getelementptr i8, ptr %scevgep4162, i64 %i.aig
  br label %.loopexit3020

.loopexit3022:                                    ; preds = %bb.l
  br i1 %i.cf, label %.preheader3019, label %.loopexit3020

.preheader3019:                                   ; preds = %.loopexit3022
  br i1 %i.aht, label %.lr.ph3190, label %.loopexit3020

.lr.ph3190:                                       ; preds = %.preheader3019, %.lr.ph3190
  %.1913303189 = phi ptr [ %i.ayn, %.lr.ph3190 ], [ %.1613273201, %.preheader3019 ] ; 5 uses
  %.214433188 = phi ptr [ %i.aym, %.lr.ph3190 ], [ %gep3212, %.preheader3019 ] ; 5 uses
  %.014453187 = phi i32 [ %i.ayo, %.lr.ph3190 ], [ 0, %.preheader3019 ]
  %.2027063186 = phi <8 x float> [ %i.axn, %.lr.ph3190 ], [ %.1727033199, %.preheader3019 ]
  %.1927303185 = phi <8 x float> [ %i.axv, %.lr.ph3190 ], [ %.1627273198, %.preheader3019 ]
  %.1927533184 = phi <8 x float> [ %i.ayd, %.lr.ph3190 ], [ %.1627503197, %.preheader3019 ]
  %.1927743183 = phi <8 x float> [ %i.ayl, %.lr.ph3190 ], [ %.1627713196, %.preheader3019 ]
  %i.awk = load <8 x i16>, ptr %.1913303189, align 16, !tbaa !45 ; 2 uses
  %i.awl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awn = shufflevector <8 x i16> %i.awl, <8 x i16> %i.awm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awo = bitcast <16 x i16> %i.awn to <8 x float>
  %i.awp = getelementptr inbounds nuw i8, ptr %.1913303189, i64 16
  %i.awq = load <8 x i16>, ptr %i.awp, align 16, !tbaa !45 ; 2 uses
  %i.awr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aws = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awt = shufflevector <8 x i16> %i.awr, <8 x i16> %i.aws, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awu = bitcast <16 x i16> %i.awt to <8 x float>
  %i.awv = getelementptr inbounds nuw i8, ptr %.1913303189, i64 32
  %i.aww = load <8 x i16>, ptr %i.awv, align 16, !tbaa !45 ; 2 uses
  %i.awx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aww, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aww, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awz = shufflevector <8 x i16> %i.awx, <8 x i16> %i.awy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axa = bitcast <16 x i16> %i.awz to <8 x float>
  %i.axb = getelementptr inbounds nuw i8, ptr %.1913303189, i64 48
  %i.axc = load <8 x i16>, ptr %i.axb, align 16, !tbaa !45 ; 2 uses
  %i.axd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.axc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.axe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.axc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.axf = shufflevector <8 x i16> %i.axd, <8 x i16> %i.axe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axg = bitcast <16 x i16> %i.axf to <8 x float>
  %i.axh = load i16, ptr %.214433188, align 2, !tbaa !70
  %i.axi = zext i16 %i.axh to i32
  %i.axj = shl nuw i32 %i.axi, 16
  %i.axk = insertelement <8 x i32> poison, i32 %i.axj, i64 0
  %i.axl = bitcast <8 x i32> %i.axk to <8 x float>
  %i.axm = shufflevector <8 x float> %i.axl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awo, <8 x float> nofpclass(nan inf) %i.axm, <8 x float> nofpclass(nan inf) %.2027063186) ; 2 uses
  %i.axo = getelementptr inbounds [2 x i8], ptr %.214433188, i64 %i.ahy
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !70
  %i.axq = zext i16 %i.axp to i32
  %i.axr = shl nuw i32 %i.axq, 16
  %i.axs = insertelement <8 x i32> poison, i32 %i.axr, i64 0
  %i.axt = bitcast <8 x i32> %i.axs to <8 x float>
  %i.axu = shufflevector <8 x float> %i.axt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awu, <8 x float> nofpclass(nan inf) %i.axu, <8 x float> nofpclass(nan inf) %.1927303185) ; 2 uses
  %i.axw = getelementptr inbounds [2 x i8], ptr %.214433188, i64 %i.aia
  %i.axx = load i16, ptr %i.axw, align 2, !tbaa !70
  %i.axy = zext i16 %i.axx to i32
  %i.axz = shl nuw i32 %i.axy, 16
  %i.aya = insertelement <8 x i32> poison, i32 %i.axz, i64 0
  %i.ayb = bitcast <8 x i32> %i.aya to <8 x float>
  %i.ayc = shufflevector <8 x float> %i.ayb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ayd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axa, <8 x float> nofpclass(nan inf) %i.ayc, <8 x float> nofpclass(nan inf) %.1927533184) ; 2 uses
  %i.aye = getelementptr inbounds [2 x i8], ptr %.214433188, i64 %i.aic
  %i.ayf = load i16, ptr %i.aye, align 2, !tbaa !70
end_hunk_13
begin_hunk_14_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.cve = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctm, <4 x float> nofpclass(nan inf) %i.cvd, <4 x float> nofpclass(nan inf) %.1228423365)
  %i.cvf = bitcast <8 x i32> %i.cuv to <8 x float>
  %i.cvg = shufflevector <8 x float> %i.cvf, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cvh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cts, <4 x float> nofpclass(nan inf) %i.cvg, <4 x float> nofpclass(nan inf) %.1228703364)
  %i.cvi = bitcast <8 x i32> %i.cuv to <8 x float>
  %i.cvj = shufflevector <8 x float> %i.cvi, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cvk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cty, <4 x float> nofpclass(nan inf) %i.cvj, <4 x float> nofpclass(nan inf) %i.cuy) ; 2 uses
  %i.cvl = bitcast <8 x i32> %i.cuv to <8 x float>
  %i.cvm = shufflevector <8 x float> %i.cvl, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.cvn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cue, <4 x float> nofpclass(nan inf) %i.cvm, <4 x float> nofpclass(nan inf) %i.cvb) ; 2 uses
  %i.cvo = bitcast <8 x i32> %i.cuv to <8 x float>
  %i.cvp = shufflevector <8 x float> %i.cvo, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cvq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cuk, <4 x float> nofpclass(nan inf) %i.cvp, <4 x float> nofpclass(nan inf) %i.cve) ; 2 uses
  %i.cvr = bitcast <8 x i32> %i.cuv to <8 x float>
  %i.cvs = shufflevector <8 x float> %i.cvr, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cvt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cuq, <4 x float> nofpclass(nan inf) %i.cvs, <4 x float> nofpclass(nan inf) %i.cvh) ; 2 uses
  %i.cvu = getelementptr inbounds [2 x i8], ptr %.214253369, i64 %i.bnn
  %i.cvv = getelementptr inbounds [2 x i8], ptr %.014213370, i64 %i.bnn
  %i.cvw = getelementptr inbounds nuw i8, ptr %.1214683368, i64 64
  %i.cvx = add nuw nsw i32 %.014203371, 1         ; 2 uses
  %exitcond4204.not = icmp eq i32 %i.cvx, %i.bnf
  br i1 %exitcond4204.not, label %.loopexit3006.loopexit, label %.lr.ph3373, !llvm.loop !436

.loopexit3006.loopexit:                           ; preds = %.lr.ph3373
  %scevgep4202 = getelementptr i8, ptr %.914653398, i64 64
  %scevgep4203 = getelementptr i8, ptr %scevgep4202, i64 %i.bod
  br label %.loopexit3005

.loopexit3006:                                    ; preds = %.loopexit3008
  br i1 %i.bka, label %.preheader3004, label %.loopexit3005

.preheader3004:                                   ; preds = %.loopexit3006
  br i1 %i.bng, label %.lr.ph3387, label %.loopexit3005

.lr.ph3387:                                       ; preds = %.preheader3004, %.lr.ph3387
  %.014193386 = phi i32 [ %i.dag, %.lr.ph3387 ], [ 0, %.preheader3004 ]
  %.414273385 = phi ptr [ %i.dae, %.lr.ph3387 ], [ %gep3409, %.preheader3004 ] ; 9 uses
  %.1414703384 = phi ptr [ %i.daf, %.lr.ph3387 ], [ %.914653398, %.preheader3004 ] ; 9 uses
  %.1527963383 = phi <4 x float> [ %i.czf, %.lr.ph3387 ], [ %.1027913396, %.preheader3004 ]
  %.1428213382 = phi <4 x float> [ %i.czn, %.lr.ph3387 ], [ %.928163395, %.preheader3004 ]
  %.1428443381 = phi <4 x float> [ %i.czv, %.lr.ph3387 ], [ %.928393394, %.preheader3004 ]
  %.1428723380 = phi <4 x float> [ %i.dad, %.lr.ph3387 ], [ %.928673393, %.preheader3004 ]
  %i.cvy = load i64, ptr %.1414703384, align 1, !tbaa !45
  %i.cvz = insertelement <2 x i64> poison, i64 %i.cvy, i64 0
  %i.cwa = bitcast <2 x i64> %i.cvz to <8 x i16>
  %i.cwb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwc = bitcast <8 x i16> %i.cwb to <4 x float>
  %i.cwd = getelementptr inbounds nuw i8, ptr %.1414703384, i64 8
  %i.cwe = load i64, ptr %i.cwd, align 1, !tbaa !45
  %i.cwf = insertelement <2 x i64> poison, i64 %i.cwe, i64 0
  %i.cwg = bitcast <2 x i64> %i.cwf to <8 x i16>
  %i.cwh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwi = bitcast <8 x i16> %i.cwh to <4 x float>
  %i.cwj = getelementptr inbounds nuw i8, ptr %.1414703384, i64 16
  %i.cwk = load i64, ptr %i.cwj, align 1, !tbaa !45
  %i.cwl = insertelement <2 x i64> poison, i64 %i.cwk, i64 0
  %i.cwm = bitcast <2 x i64> %i.cwl to <8 x i16>
  %i.cwn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwo = bitcast <8 x i16> %i.cwn to <4 x float>
  %i.cwp = getelementptr inbounds nuw i8, ptr %.1414703384, i64 24
  %i.cwq = load i64, ptr %i.cwp, align 1, !tbaa !45
  %i.cwr = insertelement <2 x i64> poison, i64 %i.cwq, i64 0
  %i.cws = bitcast <2 x i64> %i.cwr to <8 x i16>
  %i.cwt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cws, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwu = bitcast <8 x i16> %i.cwt to <4 x float>
  %i.cwv = getelementptr inbounds nuw i8, ptr %.1414703384, i64 32
  %i.cww = load i64, ptr %i.cwv, align 1, !tbaa !45
  %i.cwx = insertelement <2 x i64> poison, i64 %i.cww, i64 0
  %i.cwy = bitcast <2 x i64> %i.cwx to <8 x i16>
  %i.cwz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxa = bitcast <8 x i16> %i.cwz to <4 x float>
  %i.cxb = getelementptr inbounds nuw i8, ptr %.1414703384, i64 40
  %i.cxc = load i64, ptr %i.cxb, align 1, !tbaa !45
  %i.cxd = insertelement <2 x i64> poison, i64 %i.cxc, i64 0
  %i.cxe = bitcast <2 x i64> %i.cxd to <8 x i16>
  %i.cxf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxg = bitcast <8 x i16> %i.cxf to <4 x float>
  %i.cxh = getelementptr inbounds nuw i8, ptr %.1414703384, i64 48
  %i.cxi = load i64, ptr %i.cxh, align 1, !tbaa !45
  %i.cxj = insertelement <2 x i64> poison, i64 %i.cxi, i64 0
  %i.cxk = bitcast <2 x i64> %i.cxj to <8 x i16>
  %i.cxl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxm = bitcast <8 x i16> %i.cxl to <4 x float>
  %i.cxn = getelementptr inbounds nuw i8, ptr %.1414703384, i64 56
  %i.cxo = load i64, ptr %i.cxn, align 1, !tbaa !45
  %i.cxp = insertelement <2 x i64> poison, i64 %i.cxo, i64 0
  %i.cxq = bitcast <2 x i64> %i.cxp to <8 x i16>
  %i.cxr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxs = bitcast <8 x i16> %i.cxr to <4 x float>
  %i.cxt = load i16, ptr %.414273385, align 2, !tbaa !70
  %i.cxu = zext i16 %i.cxt to i32
  %i.cxv = shl nuw i32 %i.cxu, 16
  %i.cxw = insertelement <4 x i32> poison, i32 %i.cxv, i64 0
  %i.cxx = bitcast <4 x i32> %i.cxw to <4 x float>
  %i.cxy = shufflevector <4 x float> %i.cxx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cxz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwc, <4 x float> nofpclass(nan inf) %i.cxy, <4 x float> nofpclass(nan inf) %.1527963383)
  %i.cya = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnl
  %i.cyb = load i16, ptr %i.cya, align 2, !tbaa !70
  %i.cyc = zext i16 %i.cyb to i32
  %i.cyd = shl nuw i32 %i.cyc, 16
  %i.cye = insertelement <4 x i32> poison, i32 %i.cyd, i64 0
  %i.cyf = bitcast <4 x i32> %i.cye to <4 x float>
  %i.cyg = shufflevector <4 x float> %i.cyf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cyh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwi, <4 x float> nofpclass(nan inf) %i.cyg, <4 x float> nofpclass(nan inf) %.1428213382)
  %i.cyi = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnp
  %i.cyj = load i16, ptr %i.cyi, align 2, !tbaa !70
  %i.cyk = zext i16 %i.cyj to i32
  %i.cyl = shl nuw i32 %i.cyk, 16
  %i.cym = insertelement <4 x i32> poison, i32 %i.cyl, i64 0
  %i.cyn = bitcast <4 x i32> %i.cym to <4 x float>
  %i.cyo = shufflevector <4 x float> %i.cyn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cyp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwo, <4 x float> nofpclass(nan inf) %i.cyo, <4 x float> nofpclass(nan inf) %.1428443381)
  %i.cyq = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnr
  %i.cyr = load i16, ptr %i.cyq, align 2, !tbaa !70
  %i.cys = zext i16 %i.cyr to i32
  %i.cyt = shl nuw i32 %i.cys, 16
  %i.cyu = insertelement <4 x i32> poison, i32 %i.cyt, i64 0
  %i.cyv = bitcast <4 x i32> %i.cyu to <4 x float>
  %i.cyw = shufflevector <4 x float> %i.cyv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cyx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwu, <4 x float> nofpclass(nan inf) %i.cyw, <4 x float> nofpclass(nan inf) %.1428723380)
  %i.cyy = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnt
  %i.cyz = load i16, ptr %i.cyy, align 2, !tbaa !70
  %i.cza = zext i16 %i.cyz to i32
  %i.czb = shl nuw i32 %i.cza, 16
  %i.czc = insertelement <4 x i32> poison, i32 %i.czb, i64 0
  %i.czd = bitcast <4 x i32> %i.czc to <4 x float>
  %i.cze = shufflevector <4 x float> %i.czd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxa, <4 x float> nofpclass(nan inf) %i.cze, <4 x float> nofpclass(nan inf) %i.cxz) ; 2 uses
  %i.czg = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnv
  %i.czh = load i16, ptr %i.czg, align 2, !tbaa !70
  %i.czi = zext i16 %i.czh to i32
  %i.czj = shl nuw i32 %i.czi, 16
  %i.czk = insertelement <4 x i32> poison, i32 %i.czj, i64 0
  %i.czl = bitcast <4 x i32> %i.czk to <4 x float>
  %i.czm = shufflevector <4 x float> %i.czl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxg, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) %i.cyh) ; 2 uses
  %i.czo = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnx
  %i.czp = load i16, ptr %i.czo, align 2, !tbaa !70
  %i.czq = zext i16 %i.czp to i32
  %i.czr = shl nuw i32 %i.czq, 16
  %i.czs = insertelement <4 x i32> poison, i32 %i.czr, i64 0
  %i.czt = bitcast <4 x i32> %i.czs to <4 x float>
  %i.czu = shufflevector <4 x float> %i.czt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxm, <4 x float> nofpclass(nan inf) %i.czu, <4 x float> nofpclass(nan inf) %i.cyp) ; 2 uses
  %i.czw = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.bnz
  %i.czx = load i16, ptr %i.czw, align 2, !tbaa !70
  %i.czy = zext i16 %i.czx to i32
  %i.czz = shl nuw i32 %i.czy, 16
  %i.daa = insertelement <4 x i32> poison, i32 %i.czz, i64 0
  %i.dab = bitcast <4 x i32> %i.daa to <4 x float>
  %i.dac = shufflevector <4 x float> %i.dab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dad = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxs, <4 x float> nofpclass(nan inf) %i.dac, <4 x float> nofpclass(nan inf) %i.cyx) ; 2 uses
  %i.dae = getelementptr inbounds [2 x i8], ptr %.414273385, i64 %i.boa
  %i.daf = getelementptr inbounds nuw i8, ptr %.1414703384, i64 64
  %i.dag = add nuw nsw i32 %.014193386, 1         ; 2 uses
  %exitcond4207.not = icmp eq i32 %i.dag, %i.bnf
  br i1 %exitcond4207.not, label %.loopexit3005.loopexit, label %.lr.ph3387, !llvm.loop !437

.loopexit3005.loopexit:                           ; preds = %.lr.ph3387
  %scevgep4205 = getelementptr i8, ptr %.914653398, i64 64
  %scevgep4206 = getelementptr i8, ptr %scevgep4205, i64 %i.bod
  br label %.loopexit3005

.loopexit3005:                                    ; preds = %.preheader3007, %.loopexit3008.loopexit, %bb.aa, %.loopexit3006.loopexit, %.loopexit3005.loopexit, %.preheader3004, %.loopexit3006
  %.152873 = phi nsz <4 x float> [ %.928673393, %.loopexit3006 ], [ %.928673393, %.preheader3004 ], [ %i.dad, %.loopexit3005.loopexit ], [ %.928673393, %bb.aa ], [ %i.cvt, %.loopexit3006.loopexit ], [ %i.csr, %.loopexit3008.loopexit ], [ %.928673393, %.preheader3007 ] ; 2 uses
  %.152845 = phi nsz <4 x float> [ %.928393394, %.loopexit3006 ], [ %.928393394, %.preheader3004 ], [ %i.czv, %.loopexit3005.loopexit ], [ %.928393394, %bb.aa ], [ %i.cvq, %.loopexit3006.loopexit ], [ %i.cso, %.loopexit3008.loopexit ], [ %.928393394, %.preheader3007 ] ; 2 uses
  %.152822 = phi nsz <4 x float> [ %.928163395, %.loopexit3006 ], [ %.928163395, %.preheader3004 ], [ %i.czn, %.loopexit3005.loopexit ], [ %.928163395, %bb.aa ], [ %i.cvn, %.loopexit3006.loopexit ], [ %i.csl, %.loopexit3008.loopexit ], [ %.928163395, %.preheader3007 ] ; 2 uses
  %.162797 = phi nsz <4 x float> [ %.1027913396, %.loopexit3006 ], [ %.1027913396, %.preheader3004 ], [ %i.czf, %.loopexit3005.loopexit ], [ %.1027913396, %bb.aa ], [ %i.cvk, %.loopexit3006.loopexit ], [ %i.csi, %.loopexit3008.loopexit ], [ %.1027913396, %.preheader3007 ] ; 2 uses
  %.151471 = phi ptr [ %.914653398, %.loopexit3006 ], [ %.914653398, %.preheader3004 ], [ %scevgep4206, %.loopexit3005.loopexit ], [ %.914653398, %bb.aa ], [ %scevgep4203, %.loopexit3006.loopexit ], [ %scevgep4200, %.loopexit3008.loopexit ], [ %.914653398, %.preheader3007 ] ; 2 uses
  %i.dah = add nuw nsw i32 %.114823397, 8         ; 3 uses
  %i.dai = or disjoint i32 %i.dah, 7
  %i.daj = icmp slt i32 %i.dai, %i.biw
  br i1 %i.daj, label %bb.z, label %.preheader3017, !llvm.loop !438

.preheader3016:                                   ; preds = %.loopexit3001, %.preheader3017
  %.162874.lcssa = phi <4 x float> [ %.92867.lcssa, %.preheader3017 ], [ %.202878, %.loopexit3001 ]
  %.162846.lcssa = phi <4 x float> [ %.92839.lcssa, %.preheader3017 ], [ %.202850, %.loopexit3001 ]
  %.162823.lcssa = phi <4 x float> [ %.92816.lcssa, %.preheader3017 ], [ %.202827, %.loopexit3001 ] ; 3 uses
  %.172798.lcssa = phi <4 x float> [ %.102791.lcssa, %.preheader3017 ], [ %.212802, %.loopexit3001 ] ; 3 uses
  %.21483.lcssa = phi i32 [ %.11482.lcssa, %.preheader3017 ], [ %i.dgc, %.loopexit3001 ] ; 5 uses
  %.161472.lcssa = phi ptr [ %.91465.lcssa, %.preheader3017 ], [ %.201476, %.loopexit3001 ] ; 3 uses
  %i.dak = or disjoint i32 %.21483.lcssa, 1
  %i.dal = icmp slt i32 %i.dak, %i.biw
  br i1 %i.dal, label %.lr.ph3469, label %.preheader3015

.lr.ph3469:                                       ; preds = %.preheader3016
  %i.dam = load ptr, ptr %0, align 8, !tbaa !19
  %i.dan = load i32, ptr %i.p, align 4, !tbaa !55
  %i.dao = sext i32 %i.dan to i64
  %i.dap = load i64, ptr %i.az, align 8, !tbaa !44
  %factor.op.mul3474 = mul i64 %i.dap, %i.dao
  %i.daq = mul nsw i64 %indvars.iv4226, %i.bkp
  %invariant.gep3476 = getelementptr [2 x i8], ptr %i.dam, i64 %i.daq
  %i.dar = load i32, ptr %i.e, align 4
  %i.das = sext i32 %i.dar to i64
  %i.dat = load i32, ptr %i.b, align 4
  %i.dau = sext i32 %i.dat to i64
  br i1 %i.bkc, label %.lr.ph3460.us.preheader, label %.lr.ph3469.split.preheader

.lr.ph3469.split.preheader:                       ; preds = %.lr.ph3469
  %i.dav = add nsw i32 %.21483.lcssa, 2
  %i.daw = sub i32 %i.bkk, %.21483.lcssa
  %i.dax = and i32 %i.daw, -2
  %i.day = add i32 %i.dav, %i.dax
  br label %.preheader3015

.lr.ph3460.us.preheader:                          ; preds = %.lr.ph3469
  %i.daz = zext i32 %.21483.lcssa to i64
  br label %.lr.ph3460.us

.lr.ph3460.us:                                    ; preds = %.lr.ph3460.us.preheader, %._crit_edge3461.us
  %indvars.iv4217 = phi i64 [ %i.daz, %.lr.ph3460.us.preheader ], [ %indvars.iv.next4218, %._crit_edge3461.us ] ; 2 uses
  %.2114773468.us = phi ptr [ %.161472.lcssa, %.lr.ph3460.us.preheader ], [ %scevgep4215, %._crit_edge3461.us ] ; 2 uses
  %.2228033466.us = phi <4 x float> [ %.172798.lcssa, %.lr.ph3460.us.preheader ], [ %i.dbr, %._crit_edge3461.us ]
  %.2128283465.us = phi <4 x float> [ %.162823.lcssa, %.lr.ph3460.us.preheader ], [ %i.dbz, %._crit_edge3461.us ]
  %.reass3475.us = mul i64 %factor.op.mul3474, %indvars.iv4217
  %gep3477.us = getelementptr i8, ptr %invariant.gep3476, i64 %.reass3475.us
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph3460.us, %bb.ab
  %.014123458.us = phi i32 [ 0, %.lr.ph3460.us ], [ %i.dcc, %bb.ab ]
  %.014133457.us = phi ptr [ %gep3477.us, %.lr.ph3460.us ], [ %i.dca, %bb.ab ] ; 3 uses
  %.2214783456.us = phi ptr [ %.2114773468.us, %.lr.ph3460.us ], [ %i.dcb, %bb.ab ] ; 3 uses
  %.2328043455.us = phi <4 x float> [ %.2228033466.us, %.lr.ph3460.us ], [ %i.dbr, %bb.ab ]
  %.2228293454.us = phi <4 x float> [ %.2128283465.us, %.lr.ph3460.us ], [ %i.dbz, %bb.ab ]
  %i.dba = load i64, ptr %.2214783456.us, align 1, !tbaa !45
  %i.dbb = insertelement <2 x i64> poison, i64 %i.dba, i64 0
  %i.dbc = bitcast <2 x i64> %i.dbb to <8 x i16>
  %i.dbd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbe = bitcast <8 x i16> %i.dbd to <4 x float>
  %i.dbf = getelementptr inbounds nuw i8, ptr %.2214783456.us, i64 8
  %i.dbg = load i64, ptr %i.dbf, align 1, !tbaa !45
  %i.dbh = insertelement <2 x i64> poison, i64 %i.dbg, i64 0
  %i.dbi = bitcast <2 x i64> %i.dbh to <8 x i16>
  %i.dbj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbk = bitcast <8 x i16> %i.dbj to <4 x float>
  %i.dbl = load i16, ptr %.014133457.us, align 2, !tbaa !70
  %i.dbm = zext i16 %i.dbl to i32
  %i.dbn = shl nuw i32 %i.dbm, 16
  %i.dbo = insertelement <4 x i32> poison, i32 %i.dbn, i64 0
  %i.dbp = bitcast <4 x i32> %i.dbo to <4 x float>
  %i.dbq = shufflevector <4 x float> %i.dbp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbe, <4 x float> nofpclass(nan inf) %i.dbq, <4 x float> nofpclass(nan inf) %.2328043455.us) ; 3 uses
  %i.dbs = getelementptr inbounds [2 x i8], ptr %.014133457.us, i64 %i.das
  %i.dbt = load i16, ptr %i.dbs, align 2, !tbaa !70
  %i.dbu = zext i16 %i.dbt to i32
  %i.dbv = shl nuw i32 %i.dbu, 16
  %i.dbw = insertelement <4 x i32> poison, i32 %i.dbv, i64 0
  %i.dbx = bitcast <4 x i32> %i.dbw to <4 x float>
  %i.dby = shufflevector <4 x float> %i.dbx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbk, <4 x float> nofpclass(nan inf) %i.dby, <4 x float> nofpclass(nan inf) %.2228293454.us) ; 3 uses
  %i.dca = getelementptr inbounds [2 x i8], ptr %.014133457.us, i64 %i.dau
  %i.dcb = getelementptr inbounds nuw i8, ptr %.2214783456.us, i64 16
  %i.dcc = add nuw nsw i32 %.014123458.us, 1      ; 2 uses
  %exitcond4216.not = icmp eq i32 %i.dcc, %i.bkb
  br i1 %exitcond4216.not, label %._crit_edge3461.us, label %bb.ab, !llvm.loop !439

._crit_edge3461.us:                               ; preds = %bb.ab
  %scevgep4214 = getelementptr i8, ptr %.2114773468.us, i64 16
  %scevgep4215 = getelementptr i8, ptr %scevgep4214, i64 %i.bkn ; 2 uses
  %indvars.iv.next4218 = add nuw nsw i64 %indvars.iv4217, 2 ; 3 uses
  %i.dcd = trunc i64 %indvars.iv.next4218 to i32
  %i.dce = or i32 %i.dcd, 1
  %i.dcf = icmp slt i32 %i.dce, %i.biw
  br i1 %i.dcf, label %.lr.ph3460.us, label %.preheader3015.loopexit, !llvm.loop !440

bb.ac:                                            ; preds = %.lr.ph3443, %.loopexit3001
  %.1614723442 = phi ptr [ %.91465.lcssa, %.lr.ph3443 ], [ %.201476, %.loopexit3001 ] ; 7 uses
  %.214833441 = phi i32 [ %.11482.lcssa, %.lr.ph3443 ], [ %i.dgc, %.loopexit3001 ] ; 2 uses
  %.1727983440 = phi <4 x float> [ %.102791.lcssa, %.lr.ph3443 ], [ %.212802, %.loopexit3001 ] ; 5 uses
  %.1628233439 = phi <4 x float> [ %.92816.lcssa, %.lr.ph3443 ], [ %.202827, %.loopexit3001 ] ; 5 uses
  %.1628463438 = phi <4 x float> [ %.92839.lcssa, %.lr.ph3443 ], [ %.202850, %.loopexit3001 ] ; 5 uses
  %.1628743437 = phi <4 x float> [ %.92867.lcssa, %.lr.ph3443 ], [ %.202878, %.loopexit3001 ] ; 5 uses
  %i.dcg = sdiv i32 %.214833441, %i.biu
  %i.dch = sext i32 %i.dcg to i64
  %.reass3451 = mul i64 %factor.op.mul3450, %i.dch
  %gep3453 = getelementptr i8, ptr %invariant.gep3452, i64 %.reass3451 ; 2 uses
  br i1 %i.bjz, label %.preheader3002, label %.loopexit3003

.preheader3002:                                   ; preds = %bb.ac
  br i1 %i.cpg, label %.lr.ph3417, label %.loopexit3001

.lr.ph3417:                                       ; preds = %.preheader3002, %.lr.ph3417
  %.014153416 = phi i32 [ %i.ddw, %.lr.ph3417 ], [ 0, %.preheader3002 ]
  %.014163415 = phi ptr [ %i.ddu, %.lr.ph3417 ], [ %gep3453, %.preheader3002 ] ; 2 uses
  %.1714733414 = phi ptr [ %i.ddv, %.lr.ph3417 ], [ %.1614723442, %.preheader3002 ] ; 5 uses
  %.1827993413 = phi <4 x float> [ %i.ddk, %.lr.ph3417 ], [ %.1727983440, %.preheader3002 ]
  %.1728243412 = phi <4 x float> [ %i.ddn, %.lr.ph3417 ], [ %.1628233439, %.preheader3002 ]
  %.1728473411 = phi <4 x float> [ %i.ddq, %.lr.ph3417 ], [ %.1628463438, %.preheader3002 ]
  %.1728753410 = phi <4 x float> [ %i.ddt, %.lr.ph3417 ], [ %.1628743437, %.preheader3002 ]
  %i.dci = load i64, ptr %.1714733414, align 1, !tbaa !45
  %i.dcj = insertelement <2 x i64> poison, i64 %i.dci, i64 0
  %i.dck = bitcast <2 x i64> %i.dcj to <8 x i16>
  %i.dcl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcm = bitcast <8 x i16> %i.dcl to <4 x float>
  %i.dcn = getelementptr inbounds nuw i8, ptr %.1714733414, i64 8
  %i.dco = load i64, ptr %i.dcn, align 1, !tbaa !45
  %i.dcp = insertelement <2 x i64> poison, i64 %i.dco, i64 0
  %i.dcq = bitcast <2 x i64> %i.dcp to <8 x i16>
  %i.dcr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcs = bitcast <8 x i16> %i.dcr to <4 x float>
  %i.dct = getelementptr inbounds nuw i8, ptr %.1714733414, i64 16
  %i.dcu = load i64, ptr %i.dct, align 1, !tbaa !45
  %i.dcv = insertelement <2 x i64> poison, i64 %i.dcu, i64 0
  %i.dcw = bitcast <2 x i64> %i.dcv to <8 x i16>
  %i.dcx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcy = bitcast <8 x i16> %i.dcx to <4 x float>
  %i.dcz = getelementptr inbounds nuw i8, ptr %.1714733414, i64 24
  %i.dda = load i64, ptr %i.dcz, align 1, !tbaa !45
  %i.ddb = insertelement <2 x i64> poison, i64 %i.dda, i64 0
  %i.ddc = bitcast <2 x i64> %i.ddb to <8 x i16>
  %i.ddd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dde = bitcast <8 x i16> %i.ddd to <4 x float>
  %i.ddf = load <4 x i16>, ptr %.014163415, align 2, !tbaa !70
  %i.ddg = zext <4 x i16> %i.ddf to <4 x i32>
  %i.ddh = shl nuw <4 x i32> %i.ddg, splat (i32 16) ; 4 uses
  %i.ddi = bitcast <4 x i32> %i.ddh to <4 x float>
  %i.ddj = shufflevector <4 x float> %i.ddi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcm, <4 x float> nofpclass(nan inf) %i.ddj, <4 x float> nofpclass(nan inf) %.1827993413) ; 2 uses
  %i.ddl = bitcast <4 x i32> %i.ddh to <4 x float>
  %i.ddm = shufflevector <4 x float> %i.ddl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ddn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcs, <4 x float> nofpclass(nan inf) %i.ddm, <4 x float> nofpclass(nan inf) %.1728243412) ; 2 uses
  %i.ddo = bitcast <4 x i32> %i.ddh to <4 x float>
  %i.ddp = shufflevector <4 x float> %i.ddo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ddq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcy, <4 x float> nofpclass(nan inf) %i.ddp, <4 x float> nofpclass(nan inf) %.1728473411) ; 2 uses
  %i.ddr = bitcast <4 x i32> %i.ddh to <4 x float>
  %i.dds = shufflevector <4 x float> %i.ddr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ddt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dde, <4 x float> nofpclass(nan inf) %i.dds, <4 x float> nofpclass(nan inf) %.1728753410) ; 2 uses
  %i.ddu = getelementptr inbounds [2 x i8], ptr %.014163415, i64 %i.cpj
  %i.ddv = getelementptr inbounds nuw i8, ptr %.1714733414, i64 32
  %i.ddw = add nuw nsw i32 %.014153416, 1         ; 2 uses
  %exitcond4210.not = icmp eq i32 %i.ddw, %i.cpf
  br i1 %exitcond4210.not, label %.loopexit3003.loopexit, label %.lr.ph3417, !llvm.loop !441

.loopexit3003.loopexit:                           ; preds = %.lr.ph3417
  %scevgep4208 = getelementptr i8, ptr %.1614723442, i64 32
  %scevgep4209 = getelementptr i8, ptr %scevgep4208, i64 %i.cpt
  br label %.loopexit3001

.loopexit3003:                                    ; preds = %bb.ac
  br i1 %i.bka, label %.preheader3000, label %.loopexit3001

.preheader3000:                                   ; preds = %.loopexit3003
  br i1 %i.cpg, label %.lr.ph3431, label %.loopexit3001

.lr.ph3431:                                       ; preds = %.preheader3000, %.lr.ph3431
  %.014143430 = phi i32 [ %i.dgb, %.lr.ph3431 ], [ 0, %.preheader3000 ]
  %.214183429 = phi ptr [ %i.dfz, %.lr.ph3431 ], [ %gep3453, %.preheader3000 ] ; 5 uses
  %.1914753428 = phi ptr [ %i.dga, %.lr.ph3431 ], [ %.1614723442, %.preheader3000 ] ; 5 uses
  %.2028013427 = phi <4 x float> [ %i.dfa, %.lr.ph3431 ], [ %.1727983440, %.preheader3000 ]
  %.1928263426 = phi <4 x float> [ %i.dfi, %.lr.ph3431 ], [ %.1628233439, %.preheader3000 ]
  %.1928493425 = phi <4 x float> [ %i.dfq, %.lr.ph3431 ], [ %.1628463438, %.preheader3000 ]
  %.1928773424 = phi <4 x float> [ %i.dfy, %.lr.ph3431 ], [ %.1628743437, %.preheader3000 ]
  %i.ddx = load i64, ptr %.1914753428, align 1, !tbaa !45
  %i.ddy = insertelement <2 x i64> poison, i64 %i.ddx, i64 0
  %i.ddz = bitcast <2 x i64> %i.ddy to <8 x i16>
  %i.dea = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.deb = bitcast <8 x i16> %i.dea to <4 x float>
  %i.dec = getelementptr inbounds nuw i8, ptr %.1914753428, i64 8
  %i.ded = load i64, ptr %i.dec, align 1, !tbaa !45
  %i.dee = insertelement <2 x i64> poison, i64 %i.ded, i64 0
  %i.def = bitcast <2 x i64> %i.dee to <8 x i16>
  %i.deg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.def, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.deh = bitcast <8 x i16> %i.deg to <4 x float>
  %i.dei = getelementptr inbounds nuw i8, ptr %.1914753428, i64 16
  %i.dej = load i64, ptr %i.dei, align 1, !tbaa !45
  %i.dek = insertelement <2 x i64> poison, i64 %i.dej, i64 0
  %i.del = bitcast <2 x i64> %i.dek to <8 x i16>
  %i.dem = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.del, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.den = bitcast <8 x i16> %i.dem to <4 x float>
  %i.deo = getelementptr inbounds nuw i8, ptr %.1914753428, i64 24
  %i.dep = load i64, ptr %i.deo, align 1, !tbaa !45
  %i.deq = insertelement <2 x i64> poison, i64 %i.dep, i64 0
  %i.der = bitcast <2 x i64> %i.deq to <8 x i16>
  %i.des = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.der, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.det = bitcast <8 x i16> %i.des to <4 x float>
  %i.deu = load i16, ptr %.214183429, align 2, !tbaa !70
  %i.dev = zext i16 %i.deu to i32
  %i.dew = shl nuw i32 %i.dev, 16
  %i.dex = insertelement <4 x i32> poison, i32 %i.dew, i64 0
  %i.dey = bitcast <4 x i32> %i.dex to <4 x float>
  %i.dez = shufflevector <4 x float> %i.dey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.deb, <4 x float> nofpclass(nan inf) %i.dez, <4 x float> nofpclass(nan inf) %.2028013427) ; 2 uses
  %i.dfb = getelementptr inbounds [2 x i8], ptr %.214183429, i64 %i.cpl
  %i.dfc = load i16, ptr %i.dfb, align 2, !tbaa !70
  %i.dfd = zext i16 %i.dfc to i32
  %i.dfe = shl nuw i32 %i.dfd, 16
  %i.dff = insertelement <4 x i32> poison, i32 %i.dfe, i64 0
  %i.dfg = bitcast <4 x i32> %i.dff to <4 x float>
  %i.dfh = shufflevector <4 x float> %i.dfg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.deh, <4 x float> nofpclass(nan inf) %i.dfh, <4 x float> nofpclass(nan inf) %.1928263426) ; 2 uses
  %i.dfj = getelementptr inbounds [2 x i8], ptr %.214183429, i64 %i.cpn
  %i.dfk = load i16, ptr %i.dfj, align 2, !tbaa !70
  %i.dfl = zext i16 %i.dfk to i32
  %i.dfm = shl nuw i32 %i.dfl, 16
  %i.dfn = insertelement <4 x i32> poison, i32 %i.dfm, i64 0
  %i.dfo = bitcast <4 x i32> %i.dfn to <4 x float>
  %i.dfp = shufflevector <4 x float> %i.dfo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.den, <4 x float> nofpclass(nan inf) %i.dfp, <4 x float> nofpclass(nan inf) %.1928493425) ; 2 uses
  %i.dfr = getelementptr inbounds [2 x i8], ptr %.214183429, i64 %i.cpp
  %i.dfs = load i16, ptr %i.dfr, align 2, !tbaa !70
end_hunk_14
begin_hunk_15_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a

.preheader2986:                                   ; preds = %bb.as
  br i1 %i.egq, label %.lr.ph3629.preheader, label %.loopexit2985

.lr.ph3629.preheader:                             ; preds = %.preheader2986
  br i1 %i.ehf, label %.lr.ph3629.epil.preheader, label %.lr.ph3629

.lr.ph3629:                                       ; preds = %.lr.ph3629.preheader, %.lr.ph3629
  %.012933627 = phi ptr [ %i.eiu, %.lr.ph3629 ], [ %gep3657, %.lr.ph3629.preheader ] ; 2 uses
  %.1713883626 = phi ptr [ %i.eiv, %.lr.ph3629 ], [ %.1613873645, %.lr.ph3629.preheader ] ; 5 uses
  %.129213625 = phi <4 x float> [ %i.eis, %.lr.ph3629 ], [ %.029203644, %.lr.ph3629.preheader ]
  %.129263624 = phi <4 x float> [ %i.eit, %.lr.ph3629 ], [ %.029253643, %.lr.ph3629.preheader ]
  %niter4896 = phi i32 [ %niter4896.next.1, %.lr.ph3629 ], [ 0, %.lr.ph3629.preheader ]
  %i.ehi = load i64, ptr %.012933627, align 1, !tbaa !45
  %i.ehj = insertelement <2 x i64> poison, i64 %i.ehi, i64 0
  %i.ehk = bitcast <2 x i64> %i.ehj to <8 x i16>
  %i.ehl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehm = bitcast <8 x i16> %i.ehl to <4 x float> ; 2 uses
  %i.ehn = load i64, ptr %.1713883626, align 1, !tbaa !45
  %i.eho = insertelement <2 x i64> poison, i64 %i.ehn, i64 0
  %i.ehp = bitcast <2 x i64> %i.eho to <8 x i16>
  %i.ehq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehr = bitcast <8 x i16> %i.ehq to <4 x float>
  %i.ehs = getelementptr inbounds nuw i8, ptr %.1713883626, i64 8
  %i.eht = load i64, ptr %i.ehs, align 1, !tbaa !45
  %i.ehu = insertelement <2 x i64> poison, i64 %i.eht, i64 0
  %i.ehv = bitcast <2 x i64> %i.ehu to <8 x i16>
  %i.ehw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehx = bitcast <8 x i16> %i.ehw to <4 x float>
  %i.ehy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehm, <4 x float> nofpclass(nan inf) %i.ehr, <4 x float> nofpclass(nan inf) %.129213625)
  %i.ehz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehm, <4 x float> nofpclass(nan inf) %i.ehx, <4 x float> nofpclass(nan inf) %.129263624)
  %i.eia = getelementptr inbounds [2 x i8], ptr %.012933627, i64 %i.egt ; 2 uses
  %i.eib = getelementptr inbounds nuw i8, ptr %.1713883626, i64 16
  %i.eic = load i64, ptr %i.eia, align 1, !tbaa !45
  %i.eid = insertelement <2 x i64> poison, i64 %i.eic, i64 0
  %i.eie = bitcast <2 x i64> %i.eid to <8 x i16>
  %i.eif = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eig = bitcast <8 x i16> %i.eif to <4 x float> ; 2 uses
  %i.eih = load i64, ptr %i.eib, align 1, !tbaa !45
  %i.eii = insertelement <2 x i64> poison, i64 %i.eih, i64 0
  %i.eij = bitcast <2 x i64> %i.eii to <8 x i16>
  %i.eik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eil = bitcast <8 x i16> %i.eik to <4 x float>
  %i.eim = getelementptr inbounds nuw i8, ptr %.1713883626, i64 24
  %i.ein = load i64, ptr %i.eim, align 1, !tbaa !45
  %i.eio = insertelement <2 x i64> poison, i64 %i.ein, i64 0
  %i.eip = bitcast <2 x i64> %i.eio to <8 x i16>
  %i.eiq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eir = bitcast <8 x i16> %i.eiq to <4 x float>
  %i.eis = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eig, <4 x float> nofpclass(nan inf) %i.eil, <4 x float> nofpclass(nan inf) %i.ehy) ; 3 uses
  %i.eit = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eig, <4 x float> nofpclass(nan inf) %i.eir, <4 x float> nofpclass(nan inf) %i.ehz) ; 3 uses
  %i.eiu = getelementptr inbounds [2 x i8], ptr %i.eia, i64 %i.egt ; 2 uses
  %i.eiv = getelementptr inbounds nuw i8, ptr %.1713883626, i64 32 ; 2 uses
  %niter4896.next.1 = add nuw nsw i32 %niter4896, 2 ; 2 uses
  %niter4896.ncmp.1 = icmp eq i32 %niter4896.next.1, %unroll_iter4895
  br i1 %niter4896.ncmp.1, label %.loopexit2987.loopexit.unr-lcssa, label %.lr.ph3629, !llvm.loop !459

.loopexit2987.loopexit.unr-lcssa:                 ; preds = %.lr.ph3629
  br i1 %lcmp.mod4891.not, label %.loopexit2987.loopexit, label %.lr.ph3629.epil.preheader

.lr.ph3629.epil.preheader:                        ; preds = %.loopexit2987.loopexit.unr-lcssa, %.lr.ph3629.preheader
  %.012933627.epil.init = phi ptr [ %gep3657, %.lr.ph3629.preheader ], [ %i.eiu, %.loopexit2987.loopexit.unr-lcssa ]
  %.1713883626.epil.init = phi ptr [ %.1613873645, %.lr.ph3629.preheader ], [ %i.eiv, %.loopexit2987.loopexit.unr-lcssa ] ; 2 uses
  %.129213625.epil.init = phi <4 x float> [ %.029203644, %.lr.ph3629.preheader ], [ %i.eis, %.loopexit2987.loopexit.unr-lcssa ]
  %.129263624.epil.init = phi <4 x float> [ %.029253643, %.lr.ph3629.preheader ], [ %i.eit, %.loopexit2987.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4894)
  %i.eiw = load i64, ptr %.012933627.epil.init, align 1, !tbaa !45
  %i.eix = insertelement <2 x i64> poison, i64 %i.eiw, i64 0
  %i.eiy = bitcast <2 x i64> %i.eix to <8 x i16>
  %i.eiz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eja = bitcast <8 x i16> %i.eiz to <4 x float> ; 2 uses
  %i.ejb = load i64, ptr %.1713883626.epil.init, align 1, !tbaa !45
  %i.ejc = insertelement <2 x i64> poison, i64 %i.ejb, i64 0
  %i.ejd = bitcast <2 x i64> %i.ejc to <8 x i16>
  %i.eje = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejf = bitcast <8 x i16> %i.eje to <4 x float>
  %i.ejg = getelementptr inbounds nuw i8, ptr %.1713883626.epil.init, i64 8
  %i.ejh = load i64, ptr %i.ejg, align 1, !tbaa !45
  %i.eji = insertelement <2 x i64> poison, i64 %i.ejh, i64 0
  %i.ejj = bitcast <2 x i64> %i.eji to <8 x i16>
  %i.ejk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejl = bitcast <8 x i16> %i.ejk to <4 x float>
  %i.ejm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eja, <4 x float> nofpclass(nan inf) %i.ejf, <4 x float> nofpclass(nan inf) %.129213625.epil.init)
  %i.ejn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eja, <4 x float> nofpclass(nan inf) %i.ejl, <4 x float> nofpclass(nan inf) %.129263624.epil.init)
  br label %.loopexit2987.loopexit

.loopexit2987.loopexit:                           ; preds = %.loopexit2987.loopexit.unr-lcssa, %.lr.ph3629.epil.preheader
  %.lcssa4795 = phi <4 x float> [ %i.eis, %.loopexit2987.loopexit.unr-lcssa ], [ %i.ejm, %.lr.ph3629.epil.preheader ]
  %.lcssa4794 = phi <4 x float> [ %i.eit, %.loopexit2987.loopexit.unr-lcssa ], [ %i.ejn, %.lr.ph3629.epil.preheader ]
  %scevgep4257 = getelementptr i8, ptr %.1613873645, i64 16
  %scevgep4258 = getelementptr i8, ptr %scevgep4257, i64 %i.ehe
  br label %.loopexit2985

.loopexit2987:                                    ; preds = %bb.as
  br i1 %brmerge3916, label %.loopexit2985, label %.lr.ph3639

.lr.ph3639:                                       ; preds = %.loopexit2987, %.lr.ph3639
  %.012913638 = phi i32 [ %i.eku, %.lr.ph3639 ], [ 0, %.loopexit2987 ]
  %.212953637 = phi ptr [ %i.eks, %.lr.ph3639 ], [ %gep3657, %.loopexit2987 ] ; 5 uses
  %.1913903636 = phi ptr [ %i.ekt, %.lr.ph3639 ], [ %.1613873645, %.loopexit2987 ] ; 3 uses
  %.329233635 = phi <4 x float> [ %i.ekq, %.lr.ph3639 ], [ %.029203644, %.loopexit2987 ]
  %.329283634 = phi <4 x float> [ %i.ekr, %.lr.ph3639 ], [ %.029253643, %.loopexit2987 ]
  %i.ejo = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egx
  %i.ejp = load i16, ptr %i.ejo, align 2, !tbaa !70
  %i.ejq = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egz
  %i.ejr = load i16, ptr %i.ejq, align 2, !tbaa !70
  %i.ejs = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.eha
  %i.ejt = load i16, ptr %i.ejs, align 2, !tbaa !70
  %i.eju = load i16, ptr %.212953637, align 2, !tbaa !70
  %i.ejv = zext i16 %i.ejp to i32
  %i.ejw = zext i16 %i.ejr to i32
  %i.ejx = zext i16 %i.ejt to i32
  %i.ejy = zext i16 %i.eju to i32
  %i.ejz = insertelement <4 x i32> poison, i32 %i.ejy, i64 0
  %i.eka = insertelement <4 x i32> %i.ejz, i32 %i.ejx, i64 1
  %i.ekb = insertelement <4 x i32> %i.eka, i32 %i.ejw, i64 2
  %i.ekc = insertelement <4 x i32> %i.ekb, i32 %i.ejv, i64 3
  %i.ekd = shl nuw <4 x i32> %i.ekc, splat (i32 16)
  %i.eke = bitcast <4 x i32> %i.ekd to <4 x float> ; 2 uses
  %i.ekf = load i64, ptr %.1913903636, align 1, !tbaa !45
  %i.ekg = insertelement <2 x i64> poison, i64 %i.ekf, i64 0
  %i.ekh = bitcast <2 x i64> %i.ekg to <8 x i16>
  %i.eki = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekj = bitcast <8 x i16> %i.eki to <4 x float>
  %i.ekk = getelementptr inbounds nuw i8, ptr %.1913903636, i64 8
  %i.ekl = load i64, ptr %i.ekk, align 1, !tbaa !45
  %i.ekm = insertelement <2 x i64> poison, i64 %i.ekl, i64 0
  %i.ekn = bitcast <2 x i64> %i.ekm to <8 x i16>
  %i.eko = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekp = bitcast <8 x i16> %i.eko to <4 x float>
  %i.ekq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eke, <4 x float> nofpclass(nan inf) %i.ekj, <4 x float> nofpclass(nan inf) %.329233635) ; 2 uses
  %i.ekr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eke, <4 x float> nofpclass(nan inf) %i.ekp, <4 x float> nofpclass(nan inf) %.329283634) ; 2 uses
  %i.eks = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.ehb
  %i.ekt = getelementptr inbounds nuw i8, ptr %.1913903636, i64 16
  %i.eku = add nuw nsw i32 %.012913638, 1         ; 2 uses
  %exitcond4262.not = icmp eq i32 %i.eku, %i.egp
  br i1 %exitcond4262.not, label %.loopexit2985.loopexit, label %.lr.ph3639, !llvm.loop !460

.loopexit2985.loopexit:                           ; preds = %.lr.ph3639
  %scevgep4260 = getelementptr i8, ptr %.1613873645, i64 16
  %scevgep4261 = getelementptr i8, ptr %scevgep4260, i64 %i.ehe
  br label %.loopexit2985

.loopexit2985:                                    ; preds = %.preheader2986, %.loopexit2987.loopexit, %.loopexit2985.loopexit, %.loopexit2987
  %.42929 = phi nsz <4 x float> [ %.029253643, %.loopexit2987 ], [ %i.ekr, %.loopexit2985.loopexit ], [ %.lcssa4794, %.loopexit2987.loopexit ], [ %.029253643, %.preheader2986 ] ; 2 uses
  %.42924 = phi nsz <4 x float> [ %.029203644, %.loopexit2987 ], [ %i.ekq, %.loopexit2985.loopexit ], [ %.lcssa4795, %.loopexit2987.loopexit ], [ %.029203644, %.preheader2986 ] ; 2 uses
  %.201391 = phi ptr [ %.1613873645, %.loopexit2987 ], [ %scevgep4261, %.loopexit2985.loopexit ], [ %scevgep4258, %.loopexit2987.loopexit ], [ %.1613873645, %.preheader2986 ] ; 2 uses
  %i.ekv = add nuw nsw i32 %.213683646, 4         ; 3 uses
  %i.ekw = or disjoint i32 %i.ekv, 3
  %i.ekx = icmp slt i32 %i.ekw, %i.bhv
  br i1 %i.ekx, label %bb.as, label %._crit_edge3649, !llvm.loop !461

._crit_edge3649:                                  ; preds = %.loopexit2985, %._crit_edge3615
  %.02925.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3615 ], [ %.42929, %.loopexit2985 ] ; 4 uses
  %.02920.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3615 ], [ %.42924, %.loopexit2985 ] ; 4 uses
  %.161387.lcssa = phi ptr [ %.91380.lcssa, %._crit_edge3615 ], [ %.201391, %.loopexit2985 ] ; 3 uses
  %.21368.lcssa = phi i32 [ %.11367.lcssa, %._crit_edge3615 ], [ %i.ekv, %.loopexit2985 ] ; 5 uses
  %i.eky = shufflevector <4 x float> %i.eau, <4 x float> %i.eba, <2 x i32> <i32 3, i32 7>
  %i.ekz = shufflevector <4 x float> %i.eau, <4 x float> %i.eba, <2 x i32> <i32 1, i32 5>
  %i.ela = fadd fast <2 x float> %i.eky, %i.ekz
  %i.elb = fadd fast <2 x float> %i.ela, %i.dqx
  %i.elc = shufflevector <4 x float> %i.eau, <4 x float> %i.eba, <2 x i32> <i32 2, i32 6>
  %i.eld = shufflevector <4 x float> %i.eau, <4 x float> %i.eba, <2 x i32> <i32 0, i32 4>
  %i.ele = fadd fast <2 x float> %i.elc, %i.eld
  %i.elf = fadd fast <2 x float> %i.elb, %i.ele
  %i.elg = shufflevector <4 x float> %i.egd, <4 x float> %i.egg, <2 x i32> <i32 3, i32 7>
  %i.elh = shufflevector <4 x float> %i.egd, <4 x float> %i.egg, <2 x i32> <i32 1, i32 5>
  %i.eli = fadd fast <2 x float> %i.elg, %i.elh
  %i.elj = fadd fast <2 x float> %i.elf, %i.eli
  %i.elk = shufflevector <4 x float> %i.egd, <4 x float> %i.egg, <2 x i32> <i32 2, i32 6>
  %i.ell = shufflevector <4 x float> %i.egd, <4 x float> %i.egg, <2 x i32> <i32 0, i32 4>
  %i.elm = fadd fast <2 x float> %i.elk, %i.ell
  %i.eln = fadd fast <2 x float> %i.elj, %i.elm
  %i.elo = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 3, i32 7>
  %i.elp = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 1, i32 5>
  %i.elq = fadd fast <2 x float> %i.elo, %i.elp
  %i.elr = fadd fast <2 x float> %i.eln, %i.elq
  %i.els = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 2, i32 6>
  %i.elt = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 0, i32 4>
  %i.elu = fadd fast <2 x float> %i.els, %i.elt
  %i.elv = fadd fast <2 x float> %i.elr, %i.elu   ; 3 uses
  %i.elw = or disjoint i32 %.21368.lcssa, 1
  %i.elx = icmp slt i32 %i.elw, %i.bhv
  br i1 %i.elx, label %.lr.ph3674, label %.preheader2999

.lr.ph3674:                                       ; preds = %._crit_edge3649
  %i.ely = load ptr, ptr %0, align 8, !tbaa !19
  %i.elz = load i32, ptr %i.p, align 4, !tbaa !55
  %i.ema = sext i32 %i.elz to i64
  %i.emb = load i64, ptr %i.bif, align 8, !tbaa !44
  %factor.op.mul3679 = mul i64 %i.emb, %i.ema
  %i.emc = mul nsw i64 %indvars.iv4275, %i.dqu
  %invariant.gep3681 = getelementptr [2 x i8], ptr %i.ely, i64 %i.emc
  %i.emd = load i32, ptr %i.e, align 4
  %i.eme = sext i32 %i.emd to i64
  %i.emf = load i32, ptr %i.b, align 4
  %i.emg = sext i32 %i.emf to i64
  br i1 %i.dqp, label %.lr.ph3664.us.preheader, label %.lr.ph3674.split.preheader

.lr.ph3674.split.preheader:                       ; preds = %.lr.ph3674
  %i.emh = add nsw i32 %.21368.lcssa, 2
  %i.emi = sub i32 %i.bir, %.21368.lcssa
  %i.emj = and i32 %i.emi, -2
  %i.emk = add i32 %i.emh, %i.emj
  br label %.preheader2999

.lr.ph3664.us.preheader:                          ; preds = %.lr.ph3674
  %i.eml = zext i32 %.21368.lcssa to i64
  br label %.lr.ph3664.us

.lr.ph3664.us:                                    ; preds = %.lr.ph3664.us.preheader, %._crit_edge3665.us
  %indvars.iv4266 = phi i64 [ %i.eml, %.lr.ph3664.us.preheader ], [ %indvars.iv.next4267, %._crit_edge3665.us ] ; 2 uses
  %.2113923671.us = phi ptr [ %.161387.lcssa, %.lr.ph3664.us.preheader ], [ %scevgep4264, %._crit_edge3665.us ] ; 2 uses
  %i.emm = phi <2 x float> [ %i.elv, %.lr.ph3664.us.preheader ], [ %i.enl, %._crit_edge3665.us ]
  %.reass3680.us = mul i64 %factor.op.mul3679, %indvars.iv4266
  %gep3682.us = getelementptr i8, ptr %invariant.gep3681, i64 %.reass3680.us
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph3664.us, %bb.at
  %.012893662.us = phi i32 [ 0, %.lr.ph3664.us ], [ %i.eno, %bb.at ]
  %.012903661.us = phi ptr [ %gep3682.us, %.lr.ph3664.us ], [ %i.enm, %bb.at ] ; 3 uses
  %.2213933660.us = phi ptr [ %.2113923671.us, %.lr.ph3664.us ], [ %i.enn, %bb.at ] ; 3 uses
  %i.emn = phi <2 x float> [ %i.emm, %.lr.ph3664.us ], [ %i.enl, %bb.at ]
  %i.emo = load i16, ptr %.012903661.us, align 2, !tbaa !70
  %i.emp = getelementptr inbounds [2 x i8], ptr %.012903661.us, i64 %i.eme
  %i.emq = load i16, ptr %i.emp, align 2, !tbaa !70
  %i.emr = getelementptr inbounds nuw i8, ptr %.2213933660.us, i64 4
  %i.ems = load <2 x i16>, ptr %.2213933660.us, align 2, !tbaa !70
  %i.emt = zext <2 x i16> %i.ems to <2 x i32>
  %i.emu = shl nuw <2 x i32> %i.emt, splat (i32 16)
  %i.emv = bitcast <2 x i32> %i.emu to <2 x float>
  %i.emw = zext i16 %i.emo to i32
  %i.emx = zext i16 %i.emq to i32
  %i.emy = insertelement <2 x i32> poison, i32 %i.emx, i64 0
  %i.emz = insertelement <2 x i32> %i.emy, i32 %i.emw, i64 1
  %i.ena = shl nuw <2 x i32> %i.emz, splat (i32 16)
  %i.enb = bitcast <2 x i32> %i.ena to <2 x float> ; 2 uses
  %i.enc = shufflevector <2 x float> %i.enb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.end = fmul fast <2 x float> %i.enc, %i.emv
  %i.ene = fadd fast <2 x float> %i.emn, %i.end
  %i.enf = load <2 x i16>, ptr %i.emr, align 2, !tbaa !70
  %i.eng = zext <2 x i16> %i.enf to <2 x i32>
  %i.enh = shl nuw <2 x i32> %i.eng, splat (i32 16)
  %i.eni = bitcast <2 x i32> %i.enh to <2 x float>
  %i.enj = shufflevector <2 x float> %i.enb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.enk = fmul fast <2 x float> %i.enj, %i.eni
  %i.enl = fadd fast <2 x float> %i.enk, %i.ene   ; 3 uses
  %i.enm = getelementptr inbounds [2 x i8], ptr %.012903661.us, i64 %i.emg
  %i.enn = getelementptr inbounds nuw i8, ptr %.2213933660.us, i64 8
  %i.eno = add nuw nsw i32 %.012893662.us, 1      ; 2 uses
  %exitcond4265.not = icmp eq i32 %i.eno, %i.dqo
  br i1 %exitcond4265.not, label %._crit_edge3665.us, label %bb.at, !llvm.loop !462

._crit_edge3665.us:                               ; preds = %bb.at
  %scevgep4263 = getelementptr i8, ptr %.2113923671.us, i64 8
  %scevgep4264 = getelementptr i8, ptr %scevgep4263, i64 %i.dqs ; 2 uses
  %indvars.iv.next4267 = add nuw nsw i64 %indvars.iv4266, 2 ; 3 uses
  %i.enp = trunc i64 %indvars.iv.next4267 to i32
  %i.enq = or i32 %i.enp, 1
  %i.enr = icmp slt i32 %i.enq, %i.bhv
  br i1 %i.enr, label %.lr.ph3664.us, label %.preheader2999.loopexit, !llvm.loop !463

.preheader2999.loopexit:                          ; preds = %._crit_edge3665.us
  %i.ens = trunc nuw i64 %indvars.iv.next4267 to i32
  br label %.preheader2999

.preheader2999:                                   ; preds = %.lr.ph3674.split.preheader, %.preheader2999.loopexit, %._crit_edge3649
  %.211392.lcssa = phi ptr [ %.161387.lcssa, %._crit_edge3649 ], [ %scevgep4264, %.preheader2999.loopexit ], [ %.161387.lcssa, %.lr.ph3674.split.preheader ]
  %.31369.lcssa = phi i32 [ %.21368.lcssa, %._crit_edge3649 ], [ %i.ens, %.preheader2999.loopexit ], [ %i.emk, %.lr.ph3674.split.preheader ] ; 2 uses
  %i.ent = phi <2 x float> [ %i.elv, %._crit_edge3649 ], [ %i.enl, %.preheader2999.loopexit ], [ %i.elv, %.lr.ph3674.split.preheader ] ; 3 uses
  %i.enu = icmp slt i32 %.31369.lcssa, %i.bhv
  br i1 %i.enu, label %.lr.ph3702, label %._crit_edge3703

.lr.ph3702:                                       ; preds = %.preheader2999
  %i.env = load ptr, ptr %0, align 8, !tbaa !19
  %i.enw = load i32, ptr %i.p, align 4, !tbaa !55
  %i.enx = sext i32 %i.enw to i64
  %i.eny = load i64, ptr %i.bif, align 8, !tbaa !44
  %factor.op.mul3706 = mul i64 %i.eny, %i.enx
  %i.enz = mul nsw i64 %indvars.iv4275, %i.dqu
  %invariant.gep3708 = getelementptr [2 x i8], ptr %i.env, i64 %i.enz
  %i.eoa = load i32, ptr %i.b, align 4
  %i.eob = sext i32 %i.eoa to i64                 ; 2 uses
  br i1 %i.dqp, label %.lr.ph3693.us.preheader, label %._crit_edge3703

.lr.ph3693.us.preheader:                          ; preds = %.lr.ph3702
  %i.eoc = zext i32 %.31369.lcssa to i64
  br label %.lr.ph3693.us

.lr.ph3693.us:                                    ; preds = %.lr.ph3693.us.preheader, %._crit_edge3694.us
  %indvars.iv4272 = phi i64 [ %i.eoc, %.lr.ph3693.us.preheader ], [ %indvars.iv.next4273, %._crit_edge3694.us ] ; 2 uses
  %.2313943700.us = phi ptr [ %.211392.lcssa, %.lr.ph3693.us.preheader ], [ %scevgep4270, %._crit_edge3694.us ] ; 3 uses
  %i.eod = phi <2 x float> [ %i.ent, %.lr.ph3693.us.preheader ], [ %.lcssa4798, %._crit_edge3694.us ] ; 2 uses
  %.reass3707.us = mul i64 %factor.op.mul3706, %indvars.iv4272
  %gep3709.us = getelementptr i8, ptr %invariant.gep3708, i64 %.reass3707.us ; 2 uses
  br i1 %i.dqv, label %.epil.preheader4897, label %.lr.ph3693.us.new

.lr.ph3693.us.new:                                ; preds = %.lr.ph3693.us, %.lr.ph3693.us.new
  %.012883690.us = phi ptr [ %i.epf, %.lr.ph3693.us.new ], [ %gep3709.us, %.lr.ph3693.us ] ; 2 uses
  %.2413953689.us = phi ptr [ %i.epg, %.lr.ph3693.us.new ], [ %.2313943700.us, %.lr.ph3693.us ] ; 3 uses
  %i.eoe = phi <2 x float> [ %i.epe, %.lr.ph3693.us.new ], [ %i.eod, %.lr.ph3693.us ]
  %niter4903 = phi i32 [ %niter4903.next.1, %.lr.ph3693.us.new ], [ 0, %.lr.ph3693.us ]
  %i.eof = load i16, ptr %.012883690.us, align 2, !tbaa !70
  %i.eog = zext i16 %i.eof to i32
  %i.eoh = shl nuw i32 %i.eog, 16
  %i.eoi = load <2 x i16>, ptr %.2413953689.us, align 2, !tbaa !70
  %i.eoj = zext <2 x i16> %i.eoi to <2 x i32>
  %i.eok = shl nuw <2 x i32> %i.eoj, splat (i32 16)
  %i.eol = bitcast <2 x i32> %i.eok to <2 x float>
  %i.eom = insertelement <2 x i32> poison, i32 %i.eoh, i64 0
  %i.eon = bitcast <2 x i32> %i.eom to <2 x float>
  %i.eoo = shufflevector <2 x float> %i.eon, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eop = fmul fast <2 x float> %i.eoo, %i.eol
  %i.eoq = fadd fast <2 x float> %i.eop, %i.eoe
  %i.eor = getelementptr inbounds [2 x i8], ptr %.012883690.us, i64 %i.eob ; 2 uses
  %i.eos = getelementptr inbounds nuw i8, ptr %.2413953689.us, i64 4
  %i.eot = load i16, ptr %i.eor, align 2, !tbaa !70
  %i.eou = zext i16 %i.eot to i32
  %i.eov = shl nuw i32 %i.eou, 16
  %i.eow = load <2 x i16>, ptr %i.eos, align 2, !tbaa !70
  %i.eox = zext <2 x i16> %i.eow to <2 x i32>
  %i.eoy = shl nuw <2 x i32> %i.eox, splat (i32 16)
  %i.eoz = bitcast <2 x i32> %i.eoy to <2 x float>
  %i.epa = insertelement <2 x i32> poison, i32 %i.eov, i64 0
  %i.epb = bitcast <2 x i32> %i.epa to <2 x float>
  %i.epc = shufflevector <2 x float> %i.epb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epd = fmul fast <2 x float> %i.epc, %i.eoz
  %i.epe = fadd fast <2 x float> %i.epd, %i.eoq   ; 3 uses
  %i.epf = getelementptr inbounds [2 x i8], ptr %i.eor, i64 %i.eob ; 2 uses
  %i.epg = getelementptr inbounds nuw i8, ptr %.2413953689.us, i64 8 ; 2 uses
  %niter4903.next.1 = add nuw nsw i32 %niter4903, 2 ; 2 uses
  %niter4903.ncmp.1 = icmp eq i32 %niter4903.next.1, %unroll_iter4902
  br i1 %niter4903.ncmp.1, label %._crit_edge3694.us.unr-lcssa, label %.lr.ph3693.us.new, !llvm.loop !464

._crit_edge3694.us.unr-lcssa:                     ; preds = %.lr.ph3693.us.new
  br i1 %lcmp.mod4899.not, label %._crit_edge3694.us, label %.epil.preheader4897

.epil.preheader4897:                              ; preds = %._crit_edge3694.us.unr-lcssa, %.lr.ph3693.us
  %.012883690.us.epil.init = phi ptr [ %gep3709.us, %.lr.ph3693.us ], [ %i.epf, %._crit_edge3694.us.unr-lcssa ]
  %.2413953689.us.epil.init = phi ptr [ %.2313943700.us, %.lr.ph3693.us ], [ %i.epg, %._crit_edge3694.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.eod, %.lr.ph3693.us ], [ %i.epe, %._crit_edge3694.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4901)
  %i.eph = load i16, ptr %.012883690.us.epil.init, align 2, !tbaa !70
  %i.epi = zext i16 %i.eph to i32
  %i.epj = shl nuw i32 %i.epi, 16
  %i.epk = load <2 x i16>, ptr %.2413953689.us.epil.init, align 2, !tbaa !70
  %i.epl = zext <2 x i16> %i.epk to <2 x i32>
  %i.epm = shl nuw <2 x i32> %i.epl, splat (i32 16)
  %i.epn = bitcast <2 x i32> %i.epm to <2 x float>
  %i.epo = insertelement <2 x i32> poison, i32 %i.epj, i64 0
  %i.epp = bitcast <2 x i32> %i.epo to <2 x float>
  %i.epq = shufflevector <2 x float> %i.epp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epr = fmul fast <2 x float> %i.epq, %i.epn
  %i.eps = fadd fast <2 x float> %i.epr, %.epil.init
  br label %._crit_edge3694.us

._crit_edge3694.us:                               ; preds = %._crit_edge3694.us.unr-lcssa, %.epil.preheader4897
  %.lcssa4798 = phi <2 x float> [ %i.epe, %._crit_edge3694.us.unr-lcssa ], [ %i.eps, %.epil.preheader4897 ] ; 2 uses
  %scevgep4269 = getelementptr i8, ptr %.2313943700.us, i64 4
  %scevgep4270 = getelementptr i8, ptr %scevgep4269, i64 %i.dqt
  %indvars.iv.next4273 = add nuw nsw i64 %indvars.iv4272, 1 ; 2 uses
  %i.ept = trunc nuw i64 %indvars.iv.next4273 to i32
  %i.epu = icmp sgt i32 %i.bhv, %i.ept
  br i1 %i.epu, label %.lr.ph3693.us, label %._crit_edge3703, !llvm.loop !465

._crit_edge3703:                                  ; preds = %._crit_edge3694.us, %.lr.ph3702, %.preheader2999
  %i.epv = phi <2 x float> [ %i.ent, %.preheader2999 ], [ %i.ent, %.lr.ph3702 ], [ %.lcssa4798, %._crit_edge3694.us ] ; 12 uses
  switch i32 %i.bik, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952
    i32 6, label %bb.au
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943: ; preds = %._crit_edge3703
  %i.epw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.epv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946: ; preds = %._crit_edge3703
  %i.epx = load ptr, ptr %8, align 8, !tbaa !19
  %i.epy = load float, ptr %i.epx, align 4, !tbaa !48
  %i.epz = fcmp fast ogt <2 x float> %i.epv, zeroinitializer
  %i.eqa = insertelement <2 x float> poison, float %i.epy, i64 0
  %i.eqb = shufflevector <2 x float> %i.eqa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqc = select <2 x i1> %i.epz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eqb
  %i.eqd = fmul fast <2 x float> %i.eqc, %i.epv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940: ; preds = %._crit_edge3703
  %i.eqe = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.eqf = load float, ptr %i.eqe, align 4, !tbaa !48 ; 2 uses
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.eqe, i64 4
  %i.eqh = load float, ptr %i.eqg, align 4, !tbaa !48 ; 3 uses
  %i.eqi = extractelement <2 x float> %i.epv, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqi, float %i.eqf) ; 2 uses
  %i.eqj = fcmp fast ogt float %spec.select, %i.eqh
  %.126812942 = select i1 %i.eqj, float %i.eqh, float %spec.select
  %i.eqk = extractelement <2 x float> %i.epv, i64 1
  %.02682 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqk, float %i.eqf)
end_hunk_15
begin_hunk_16_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a

._crit_edge3810:                                  ; preds = %.loopexit2973, %._crit_edge3772
  %.02851.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge3772 ], [ %.62857, %.loopexit2973 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.01272.lcssa, %._crit_edge3772 ], [ %.15, %.loopexit2973 ] ; 2 uses
  %.11268.lcssa = phi i32 [ %.01267.lcssa, %._crit_edge3772 ], [ %i.ffu, %.loopexit2973 ] ; 3 uses
  %i.ffx = shufflevector <8 x float> %.02851.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ffy = shufflevector <8 x float> %.02851.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ffz = fadd fast <4 x float> %i.ffx, %i.ffy   ; 2 uses
  %i.fga = or disjoint i32 %.11268.lcssa, 3
  %i.fgb = icmp slt i32 %i.fga, %i.o
  br i1 %i.fgb, label %.lr.ph3837, label %._crit_edge3838

.lr.ph3837:                                       ; preds = %._crit_edge3810
  %i.fgc = load ptr, ptr %0, align 8, !tbaa !19
  %i.fgd = load i32, ptr %i.p, align 4, !tbaa !55
  %i.fge = sext i32 %i.fgd to i64
  %i.fgf = load i64, ptr %i.doz, align 8, !tbaa !44
  %factor.op.mul3842 = mul i64 %i.fgf, %i.fge
  %i.fgg = trunc nuw nsw i64 %indvars.iv4324 to i32
  %.reass3900 = mul i32 %factor.op.mul3895, %i.fgg
  %i.fgh = sext i32 %.reass3900 to i64
  %invariant.gep3844 = getelementptr [2 x i8], ptr %i.fgc, i64 %i.fgh
  %i.fgi = load i32, ptr %i.a, align 4            ; 6 uses
  %i.fgj = icmp slt i32 %i.fgi, 1                 ; 2 uses
  %i.fgk = load i32, ptr %i.b, align 4            ; 2 uses
  %i.fgl = shl nsw i32 %i.fgk, 2
  %i.fgm = sext i32 %i.fgl to i64                 ; 2 uses
  %i.fgn = load i32, ptr %i.e, align 4            ; 3 uses
  %i.fgo = mul nsw i32 %i.fgn, 3
  %i.fgp = sext i32 %i.fgo to i64
  %i.fgq = shl nsw i32 %i.fgn, 1
  %i.fgr = sext i32 %i.fgq to i64
  %i.fgs = sext i32 %i.fgn to i64
  %i.fgt = sext i32 %i.fgk to i64
  %i.fgu = add i32 %i.fgi, -1                     ; 2 uses
  %i.fgv = zext i32 %i.fgu to i64
  %i.fgw = shl nuw nsw i64 %i.fgv, 3              ; 2 uses
  %brmerge3931 = select i1 %i.dpf, i1 true, i1 %i.fgj
  %brmerge3934 = select i1 %i.dpd, i1 true, i1 %i.fgj
  %xtraiter4904 = and i32 %i.fgi, 1
  %i.fgx = icmp eq i32 %i.fgu, 0
  %unroll_iter4908 = and i32 %i.fgi, 2147483646
  %lcmp.mod4905.not = icmp eq i32 %xtraiter4904, 0
  %lcmp.mod4907 = trunc i32 %i.fgi to i1
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph3837, %.loopexit
  %.212693835 = phi i32 [ %.11268.lcssa, %.lr.ph3837 ], [ %i.fjl, %.loopexit ] ; 2 uses
  %.163834 = phi ptr [ %.9.lcssa, %.lr.ph3837 ], [ %.20, %.loopexit ] ; 6 uses
  %.027763833 = phi <4 x float> [ zeroinitializer, %.lr.ph3837 ], [ %.42780, %.loopexit ] ; 4 uses
  %i.fgy = sdiv i32 %.212693835, %i.l
  %i.fgz = sext i32 %i.fgy to i64
  %.reass3843 = mul i64 %factor.op.mul3842, %i.fgz
  %gep3845 = getelementptr i8, ptr %invariant.gep3844, i64 %.reass3843 ; 3 uses
  br i1 %brmerge3931, label %.loopexit2971, label %.lr.ph3822.preheader

.lr.ph3822.preheader:                             ; preds = %bb.bg
  br i1 %i.fgx, label %.lr.ph3822.epil.preheader, label %.lr.ph3822

.lr.ph3822:                                       ; preds = %.lr.ph3822.preheader, %.lr.ph3822
  %.012453820 = phi ptr [ %i.fhy, %.lr.ph3822 ], [ %gep3845, %.lr.ph3822.preheader ] ; 2 uses
  %.173819 = phi ptr [ %i.fhz, %.lr.ph3822 ], [ %.163834, %.lr.ph3822.preheader ] ; 3 uses
  %.127773818 = phi <4 x float> [ %i.fhx, %.lr.ph3822 ], [ %.027763833, %.lr.ph3822.preheader ]
  %niter4909 = phi i32 [ %niter4909.next.1, %.lr.ph3822 ], [ 0, %.lr.ph3822.preheader ]
  %i.fha = load i64, ptr %.012453820, align 1, !tbaa !45
  %i.fhb = insertelement <2 x i64> poison, i64 %i.fha, i64 0
  %i.fhc = bitcast <2 x i64> %i.fhb to <8 x i16>
  %i.fhd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhe = bitcast <8 x i16> %i.fhd to <4 x float>
  %i.fhf = load i64, ptr %.173819, align 1, !tbaa !45
  %i.fhg = insertelement <2 x i64> poison, i64 %i.fhf, i64 0
  %i.fhh = bitcast <2 x i64> %i.fhg to <8 x i16>
  %i.fhi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhj = bitcast <8 x i16> %i.fhi to <4 x float>
  %i.fhk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhe, <4 x float> nofpclass(nan inf) %i.fhj, <4 x float> nofpclass(nan inf) %.127773818)
  %i.fhl = getelementptr inbounds [2 x i8], ptr %.012453820, i64 %i.fgm ; 2 uses
  %i.fhm = getelementptr inbounds nuw i8, ptr %.173819, i64 8
  %i.fhn = load i64, ptr %i.fhl, align 1, !tbaa !45
  %i.fho = insertelement <2 x i64> poison, i64 %i.fhn, i64 0
  %i.fhp = bitcast <2 x i64> %i.fho to <8 x i16>
  %i.fhq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhr = bitcast <8 x i16> %i.fhq to <4 x float>
  %i.fhs = load i64, ptr %i.fhm, align 1, !tbaa !45
  %i.fht = insertelement <2 x i64> poison, i64 %i.fhs, i64 0
  %i.fhu = bitcast <2 x i64> %i.fht to <8 x i16>
  %i.fhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhw = bitcast <8 x i16> %i.fhv to <4 x float>
  %i.fhx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhr, <4 x float> nofpclass(nan inf) %i.fhw, <4 x float> nofpclass(nan inf) %i.fhk) ; 3 uses
  %i.fhy = getelementptr inbounds [2 x i8], ptr %i.fhl, i64 %i.fgm ; 2 uses
  %i.fhz = getelementptr inbounds nuw i8, ptr %.173819, i64 16 ; 2 uses
  %niter4909.next.1 = add nuw nsw i32 %niter4909, 2 ; 2 uses
  %niter4909.ncmp.1 = icmp eq i32 %niter4909.next.1, %unroll_iter4908
  br i1 %niter4909.ncmp.1, label %.loopexit2971.thread.unr-lcssa, label %.lr.ph3822, !llvm.loop !477

.loopexit2971.thread.unr-lcssa:                   ; preds = %.lr.ph3822
  br i1 %lcmp.mod4905.not, label %.loopexit2971.thread, label %.lr.ph3822.epil.preheader

.lr.ph3822.epil.preheader:                        ; preds = %.loopexit2971.thread.unr-lcssa, %.lr.ph3822.preheader
  %.012453820.epil.init = phi ptr [ %gep3845, %.lr.ph3822.preheader ], [ %i.fhy, %.loopexit2971.thread.unr-lcssa ]
  %.173819.epil.init = phi ptr [ %.163834, %.lr.ph3822.preheader ], [ %i.fhz, %.loopexit2971.thread.unr-lcssa ]
  %.127773818.epil.init = phi <4 x float> [ %.027763833, %.lr.ph3822.preheader ], [ %i.fhx, %.loopexit2971.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4907)
  %i.fia = load i64, ptr %.012453820.epil.init, align 1, !tbaa !45
  %i.fib = insertelement <2 x i64> poison, i64 %i.fia, i64 0
  %i.fic = bitcast <2 x i64> %i.fib to <8 x i16>
  %i.fid = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fie = bitcast <8 x i16> %i.fid to <4 x float>
  %i.fif = load i64, ptr %.173819.epil.init, align 1, !tbaa !45
  %i.fig = insertelement <2 x i64> poison, i64 %i.fif, i64 0
  %i.fih = bitcast <2 x i64> %i.fig to <8 x i16>
  %i.fii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fij = bitcast <8 x i16> %i.fii to <4 x float>
  %i.fik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fie, <4 x float> nofpclass(nan inf) %i.fij, <4 x float> nofpclass(nan inf) %.127773818.epil.init)
  br label %.loopexit2971.thread

.loopexit2971.thread:                             ; preds = %.loopexit2971.thread.unr-lcssa, %.lr.ph3822.epil.preheader
  %.lcssa4772 = phi <4 x float> [ %i.fhx, %.loopexit2971.thread.unr-lcssa ], [ %i.fik, %.lr.ph3822.epil.preheader ]
  %scevgep4306 = getelementptr i8, ptr %.163834, i64 8
  %scevgep4307 = getelementptr i8, ptr %scevgep4306, i64 %i.fgw
  br label %.loopexit

.loopexit2971:                                    ; preds = %bb.bg
  br i1 %brmerge3934, label %.loopexit, label %.lr.ph3830

.lr.ph3830:                                       ; preds = %.loopexit2971, %.lr.ph3830
  %.012433829 = phi i32 [ %i.fjk, %.lr.ph3830 ], [ 0, %.loopexit2971 ]
  %.23828 = phi ptr [ %i.fji, %.lr.ph3830 ], [ %gep3845, %.loopexit2971 ] ; 5 uses
  %.193827 = phi ptr [ %i.fjj, %.lr.ph3830 ], [ %.163834, %.loopexit2971 ] ; 2 uses
  %.327793826 = phi <4 x float> [ %i.fjh, %.lr.ph3830 ], [ %.027763833, %.loopexit2971 ]
  %i.fil = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgp
  %i.fim = load i16, ptr %i.fil, align 2, !tbaa !70
  %i.fin = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgr
  %i.fio = load i16, ptr %i.fin, align 2, !tbaa !70
  %i.fip = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgs
  %i.fiq = load i16, ptr %i.fip, align 2, !tbaa !70
  %i.fir = load i16, ptr %.23828, align 2, !tbaa !70
  %i.fis = zext i16 %i.fim to i32
  %i.fit = zext i16 %i.fio to i32
  %i.fiu = zext i16 %i.fiq to i32
  %i.fiv = zext i16 %i.fir to i32
  %i.fiw = insertelement <4 x i32> poison, i32 %i.fiv, i64 0
  %i.fix = insertelement <4 x i32> %i.fiw, i32 %i.fiu, i64 1
  %i.fiy = insertelement <4 x i32> %i.fix, i32 %i.fit, i64 2
  %i.fiz = insertelement <4 x i32> %i.fiy, i32 %i.fis, i64 3
  %i.fja = shl nuw <4 x i32> %i.fiz, splat (i32 16)
  %i.fjb = bitcast <4 x i32> %i.fja to <4 x float>
  %i.fjc = load i64, ptr %.193827, align 1, !tbaa !45
  %i.fjd = insertelement <2 x i64> poison, i64 %i.fjc, i64 0
  %i.fje = bitcast <2 x i64> %i.fjd to <8 x i16>
  %i.fjf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fje, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fjg = bitcast <8 x i16> %i.fjf to <4 x float>
  %i.fjh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fjb, <4 x float> nofpclass(nan inf) %i.fjg, <4 x float> nofpclass(nan inf) %.327793826) ; 2 uses
  %i.fji = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgt
  %i.fjj = getelementptr inbounds nuw i8, ptr %.193827, i64 8
  %i.fjk = add nuw nsw i32 %.012433829, 1         ; 2 uses
  %exitcond4311.not = icmp eq i32 %i.fjk, %i.fgi
  br i1 %exitcond4311.not, label %.loopexit.loopexit, label %.lr.ph3830, !llvm.loop !478

.loopexit.loopexit:                               ; preds = %.lr.ph3830
  %scevgep4309 = getelementptr i8, ptr %.163834, i64 8
  %scevgep4310 = getelementptr i8, ptr %scevgep4309, i64 %i.fgw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2971.thread, %.loopexit.loopexit, %.loopexit2971
  %.42780 = phi nsz <4 x float> [ %.027763833, %.loopexit2971 ], [ %i.fjh, %.loopexit.loopexit ], [ %.lcssa4772, %.loopexit2971.thread ] ; 2 uses
  %.20 = phi ptr [ %.163834, %.loopexit2971 ], [ %scevgep4310, %.loopexit.loopexit ], [ %scevgep4307, %.loopexit2971.thread ] ; 2 uses
  %i.fjl = add nuw nsw i32 %.212693835, 4         ; 3 uses
  %i.fjm = or disjoint i32 %i.fjl, 3
  %i.fjn = icmp slt i32 %i.fjm, %i.o
  br i1 %i.fjn, label %bb.bg, label %._crit_edge3838, !llvm.loop !479

._crit_edge3838:                                  ; preds = %.loopexit, %._crit_edge3810
  %.02776.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3810 ], [ %.42780, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge3810 ], [ %.20, %.loopexit ] ; 3 uses
  %.21269.lcssa = phi i32 [ %.11268.lcssa, %._crit_edge3810 ], [ %i.fjl, %.loopexit ] ; 5 uses
  %i.fjo = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.fjp = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.fjq = fadd fast <4 x float> %i.fjo, %i.fjp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fbq, <4 x float> %i.fjq)
  %op.rdx4763 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01279, <8 x float> %i.fbr)
  %op.rdx4764 = fadd fast float %op.rdx, %op.rdx4763 ; 3 uses
  %i.fjr = or disjoint i32 %.21269.lcssa, 1
  %i.fjs = icmp slt i32 %i.fjr, %i.o
  br i1 %i.fjs, label %.lr.ph3859, label %.preheader2983

.lr.ph3859:                                       ; preds = %._crit_edge3838
  %i.fjt = load ptr, ptr %0, align 8, !tbaa !19
  %i.fju = load i32, ptr %i.p, align 4, !tbaa !55
  %i.fjv = sext i32 %i.fju to i64
  %i.fjw = load i64, ptr %i.doz, align 8, !tbaa !44
  %factor.op.mul3863 = mul i64 %i.fjw, %i.fjv
  %i.fjx = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3865 = getelementptr [2 x i8], ptr %i.fjt, i64 %i.fjx
  %i.fjy = load i32, ptr %i.e, align 4
  %i.fjz = sext i32 %i.fjy to i64
  %i.fka = load i32, ptr %i.b, align 4
  %i.fkb = sext i32 %i.fka to i64
  br i1 %i.etb, label %.lr.ph3851.us.preheader, label %.lr.ph3859.split.preheader

.lr.ph3859.split.preheader:                       ; preds = %.lr.ph3859
  %i.fkc = add nsw i32 %.21269.lcssa, 2
  %i.fkd = sub i32 %i.dpn, %.21269.lcssa
  %i.fke = and i32 %i.fkd, -2
  %i.fkf = add i32 %i.fkc, %i.fke
  br label %.preheader2983

.lr.ph3851.us.preheader:                          ; preds = %.lr.ph3859
  %i.fkg = zext i32 %.21269.lcssa to i64
  br label %.lr.ph3851.us

.lr.ph3851.us:                                    ; preds = %.lr.ph3851.us.preheader, %._crit_edge3852.us
  %indvars.iv4315 = phi i64 [ %i.fkg, %.lr.ph3851.us.preheader ], [ %indvars.iv.next4316, %._crit_edge3852.us ] ; 2 uses
  %.213856.us = phi ptr [ %.16.lcssa, %.lr.ph3851.us.preheader ], [ %scevgep4313, %._crit_edge3852.us ] ; 2 uses
  %.112803855.us = phi float [ %op.rdx4764, %.lr.ph3851.us.preheader ], [ %i.flc, %._crit_edge3852.us ]
  %.reass3864.us = mul i64 %factor.op.mul3863, %indvars.iv4315
  %gep3866.us = getelementptr i8, ptr %invariant.gep3865, i64 %.reass3864.us
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph3851.us, %bb.bh
  %.012413849.us = phi i32 [ 0, %.lr.ph3851.us ], [ %i.flf, %bb.bh ]
  %.012423848.us = phi ptr [ %gep3866.us, %.lr.ph3851.us ], [ %i.fld, %bb.bh ] ; 3 uses
  %.223847.us = phi ptr [ %.213856.us, %.lr.ph3851.us ], [ %i.fle, %bb.bh ] ; 3 uses
  %.212813846.us = phi float [ %.112803855.us, %.lr.ph3851.us ], [ %i.flc, %bb.bh ]
  %i.fkh = load i16, ptr %.012423848.us, align 2, !tbaa !70
  %i.fki = zext i16 %i.fkh to i32
  %i.fkj = shl nuw i32 %i.fki, 16
  %i.fkk = bitcast i32 %i.fkj to float
  %i.fkl = load i16, ptr %.223847.us, align 2, !tbaa !70
  %i.fkm = zext i16 %i.fkl to i32
  %i.fkn = shl nuw i32 %i.fkm, 16
  %i.fko = bitcast i32 %i.fkn to float
  %i.fkp = fmul fast float %i.fko, %i.fkk
  %i.fkq = fadd fast float %.212813846.us, %i.fkp
  %i.fkr = getelementptr inbounds [2 x i8], ptr %.012423848.us, i64 %i.fjz
  %i.fks = load i16, ptr %i.fkr, align 2, !tbaa !70
  %i.fkt = zext i16 %i.fks to i32
  %i.fku = shl nuw i32 %i.fkt, 16
  %i.fkv = bitcast i32 %i.fku to float
  %i.fkw = getelementptr inbounds nuw i8, ptr %.223847.us, i64 2
  %i.fkx = load i16, ptr %i.fkw, align 2, !tbaa !70
  %i.fky = zext i16 %i.fkx to i32
  %i.fkz = shl nuw i32 %i.fky, 16
  %i.fla = bitcast i32 %i.fkz to float
  %i.flb = fmul fast float %i.fla, %i.fkv
  %i.flc = fadd fast float %i.flb, %i.fkq         ; 3 uses
  %i.fld = getelementptr inbounds [2 x i8], ptr %.012423848.us, i64 %i.fkb
  %i.fle = getelementptr inbounds nuw i8, ptr %.223847.us, i64 4
  %i.flf = add nuw nsw i32 %.012413849.us, 1      ; 2 uses
  %exitcond4314.not = icmp eq i32 %i.flf, %i.eta
  br i1 %exitcond4314.not, label %._crit_edge3852.us, label %bb.bh, !llvm.loop !480

._crit_edge3852.us:                               ; preds = %bb.bh
  %scevgep4312 = getelementptr i8, ptr %.213856.us, i64 4
  %scevgep4313 = getelementptr i8, ptr %scevgep4312, i64 %i.ete ; 2 uses
  %indvars.iv.next4316 = add nuw nsw i64 %indvars.iv4315, 2 ; 3 uses
  %i.flg = trunc i64 %indvars.iv.next4316 to i32
  %i.flh = or i32 %i.flg, 1
  %i.fli = icmp slt i32 %i.flh, %i.o
  br i1 %i.fli, label %.lr.ph3851.us, label %.preheader2983.loopexit, !llvm.loop !481

.preheader2983.loopexit:                          ; preds = %._crit_edge3852.us
  %i.flj = trunc nuw i64 %indvars.iv.next4316 to i32
  br label %.preheader2983

.preheader2983:                                   ; preds = %.lr.ph3859.split.preheader, %.preheader2983.loopexit, %._crit_edge3838
  %.11280.lcssa = phi float [ %op.rdx4764, %._crit_edge3838 ], [ %i.flc, %.preheader2983.loopexit ], [ %op.rdx4764, %.lr.ph3859.split.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge3838 ], [ %scevgep4313, %.preheader2983.loopexit ], [ %.16.lcssa, %.lr.ph3859.split.preheader ]
  %.31270.lcssa = phi i32 [ %.21269.lcssa, %._crit_edge3838 ], [ %i.flj, %.preheader2983.loopexit ], [ %i.fkf, %.lr.ph3859.split.preheader ] ; 2 uses
  %i.flk = icmp slt i32 %.31270.lcssa, %i.o
  br i1 %i.flk, label %.lr.ph3882, label %._crit_edge3883

.lr.ph3882:                                       ; preds = %.preheader2983
  %i.fll = load ptr, ptr %0, align 8, !tbaa !19
  %i.flm = load i32, ptr %i.p, align 4, !tbaa !55
  %i.fln = sext i32 %i.flm to i64
  %i.flo = load i64, ptr %i.doz, align 8, !tbaa !44
  %factor.op.mul3885 = mul i64 %i.flo, %i.fln
  %i.flp = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3887 = getelementptr [2 x i8], ptr %i.fll, i64 %i.flp
  %i.flq = load i32, ptr %i.b, align 4
  %i.flr = sext i32 %i.flq to i64                 ; 2 uses
  br i1 %i.etb, label %.lr.ph3875.us.preheader, label %._crit_edge3883

.lr.ph3875.us.preheader:                          ; preds = %.lr.ph3882
  %i.fls = zext i32 %.31270.lcssa to i64
  br label %.lr.ph3875.us

.lr.ph3875.us:                                    ; preds = %.lr.ph3875.us.preheader, %._crit_edge3876.us
  %indvars.iv4321 = phi i64 [ %i.fls, %.lr.ph3875.us.preheader ], [ %indvars.iv.next4322, %._crit_edge3876.us ] ; 2 uses
  %.233880.us = phi ptr [ %.21.lcssa, %.lr.ph3875.us.preheader ], [ %scevgep4319, %._crit_edge3876.us ] ; 3 uses
  %.312823879.us = phi float [ %.11280.lcssa, %.lr.ph3875.us.preheader ], [ %.lcssa4776, %._crit_edge3876.us ] ; 2 uses
  %.reass3886.us = mul i64 %factor.op.mul3885, %indvars.iv4321
  %gep3888.us = getelementptr i8, ptr %invariant.gep3887, i64 %.reass3886.us ; 2 uses
  br i1 %i.eth, label %.epil.preheader4910, label %.lr.ph3875.us.new

.lr.ph3875.us.new:                                ; preds = %.lr.ph3875.us, %.lr.ph3875.us.new
  %.012403872.us = phi ptr [ %i.fmp, %.lr.ph3875.us.new ], [ %gep3888.us, %.lr.ph3875.us ] ; 2 uses
  %.243871.us = phi ptr [ %i.fmq, %.lr.ph3875.us.new ], [ %.233880.us, %.lr.ph3875.us ] ; 3 uses
  %.412833870.us = phi float [ %i.fmo, %.lr.ph3875.us.new ], [ %.312823879.us, %.lr.ph3875.us ]
  %niter4916 = phi i32 [ %niter4916.next.1, %.lr.ph3875.us.new ], [ 0, %.lr.ph3875.us ]
  %i.flt = load i16, ptr %.012403872.us, align 2, !tbaa !70
  %i.flu = zext i16 %i.flt to i32
  %i.flv = shl nuw i32 %i.flu, 16
  %i.flw = bitcast i32 %i.flv to float
  %i.flx = load i16, ptr %.243871.us, align 2, !tbaa !70
  %i.fly = zext i16 %i.flx to i32
  %i.flz = shl nuw i32 %i.fly, 16
  %i.fma = bitcast i32 %i.flz to float
  %i.fmb = fmul fast float %i.fma, %i.flw
  %i.fmc = fadd fast float %i.fmb, %.412833870.us
  %i.fmd = getelementptr inbounds [2 x i8], ptr %.012403872.us, i64 %i.flr ; 2 uses
  %i.fme = getelementptr inbounds nuw i8, ptr %.243871.us, i64 2
  %i.fmf = load i16, ptr %i.fmd, align 2, !tbaa !70
  %i.fmg = zext i16 %i.fmf to i32
  %i.fmh = shl nuw i32 %i.fmg, 16
  %i.fmi = bitcast i32 %i.fmh to float
  %i.fmj = load i16, ptr %i.fme, align 2, !tbaa !70
  %i.fmk = zext i16 %i.fmj to i32
  %i.fml = shl nuw i32 %i.fmk, 16
  %i.fmm = bitcast i32 %i.fml to float
  %i.fmn = fmul fast float %i.fmm, %i.fmi
  %i.fmo = fadd fast float %i.fmn, %i.fmc         ; 3 uses
  %i.fmp = getelementptr inbounds [2 x i8], ptr %i.fmd, i64 %i.flr ; 2 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %.243871.us, i64 4 ; 2 uses
  %niter4916.next.1 = add nuw nsw i32 %niter4916, 2 ; 2 uses
  %niter4916.ncmp.1 = icmp eq i32 %niter4916.next.1, %unroll_iter4915
  br i1 %niter4916.ncmp.1, label %._crit_edge3876.us.unr-lcssa, label %.lr.ph3875.us.new, !llvm.loop !482

._crit_edge3876.us.unr-lcssa:                     ; preds = %.lr.ph3875.us.new
  br i1 %lcmp.mod4912.not, label %._crit_edge3876.us, label %.epil.preheader4910

.epil.preheader4910:                              ; preds = %._crit_edge3876.us.unr-lcssa, %.lr.ph3875.us
  %.012403872.us.epil.init = phi ptr [ %gep3888.us, %.lr.ph3875.us ], [ %i.fmp, %._crit_edge3876.us.unr-lcssa ]
  %.243871.us.epil.init = phi ptr [ %.233880.us, %.lr.ph3875.us ], [ %i.fmq, %._crit_edge3876.us.unr-lcssa ]
  %.412833870.us.epil.init = phi float [ %.312823879.us, %.lr.ph3875.us ], [ %i.fmo, %._crit_edge3876.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4914)
  %i.fmr = load i16, ptr %.012403872.us.epil.init, align 2, !tbaa !70
  %i.fms = zext i16 %i.fmr to i32
  %i.fmt = shl nuw i32 %i.fms, 16
  %i.fmu = bitcast i32 %i.fmt to float
  %i.fmv = load i16, ptr %.243871.us.epil.init, align 2, !tbaa !70
  %i.fmw = zext i16 %i.fmv to i32
  %i.fmx = shl nuw i32 %i.fmw, 16
  %i.fmy = bitcast i32 %i.fmx to float
  %i.fmz = fmul fast float %i.fmy, %i.fmu
  %i.fna = fadd fast float %i.fmz, %.412833870.us.epil.init
  br label %._crit_edge3876.us

._crit_edge3876.us:                               ; preds = %._crit_edge3876.us.unr-lcssa, %.epil.preheader4910
  %.lcssa4776 = phi float [ %i.fmo, %._crit_edge3876.us.unr-lcssa ], [ %i.fna, %.epil.preheader4910 ] ; 2 uses
  %scevgep4318 = getelementptr i8, ptr %.233880.us, i64 2
  %scevgep4319 = getelementptr i8, ptr %scevgep4318, i64 %i.etf
  %indvars.iv.next4322 = add nuw nsw i64 %indvars.iv4321, 1 ; 2 uses
  %i.fnb = trunc nuw i64 %indvars.iv.next4322 to i32
  %i.fnc = icmp sgt i32 %i.o, %i.fnb
  br i1 %i.fnc, label %.lr.ph3875.us, label %._crit_edge3883, !llvm.loop !483

._crit_edge3883:                                  ; preds = %._crit_edge3876.us, %.lr.ph3882, %.preheader2983
  %.31282.lcssa = phi float [ %.11280.lcssa, %.preheader2983 ], [ %.11280.lcssa, %.lr.ph3882 ], [ %.lcssa4776, %._crit_edge3876.us ] ; 13 uses
  switch i32 %i.dpg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bi
    i32 2, label %bb.bj
    i32 3, label %bb.bk
    i32 4, label %bb.bl
    i32 5, label %bb.bm
    i32 6, label %bb.bn
  ]

bb.bi:                                            ; preds = %._crit_edge3883
  %i.fnd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31282.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bj:                                            ; preds = %._crit_edge3883
  %i.fne = load ptr, ptr %8, align 8, !tbaa !19
  %i.fnf = load float, ptr %i.fne, align 4, !tbaa !48
  %i.fng = fcmp fast ogt float %.31282.lcssa, 0.000000e+00
  %i.fnh = select fast i1 %i.fng, float 1.000000e+00, float %i.fnf
  %i.fni = fmul fast float %i.fnh, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge3883
  %i.fnj = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.fnk = load float, ptr %i.fnj, align 4, !tbaa !48
  %i.fnl = getelementptr inbounds nuw i8, ptr %i.fnj, i64 4
  %i.fnm = load float, ptr %i.fnl, align 4, !tbaa !48
  %spec.select2965 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31282.lcssa, float %i.fnk)
  %spec.select2966 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2965, float %i.fnm)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge3883
  %.sroa.speculated2426 = call nnan ninf nsz float @llvm.minnum.f32(float %.31282.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2426, float f0xC2B0C0A5)
  %i.fnn = fneg fast float %.sroa.speculated
  %i.fno = call fast float @llvm.exp.f32(float %i.fnn)
  %i.fnp = fadd fast float %i.fno, 1.000000e+00
  %i.fnq = fdiv fast float 1.000000e+00, %i.fnp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %._crit_edge3883
  %i.fnr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31282.lcssa)
  %i.fns = fadd fast float %i.fnr, 1.000000e+00
end_hunk_16
begin_hunk_17_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.05481086 = phi i32 [ 0, %.lr.ph1087 ], [ %i.bfd, %bb.p ]
  %.41085 = phi ptr [ %gep1109, %.lr.ph1087 ], [ %i.bfb, %bb.p ] ; 9 uses
  %.141084 = phi ptr [ %.91097, %.lr.ph1087 ], [ %i.bfc, %bb.p ] ; 9 uses
  %.145941083 = phi <16 x float> [ %.95891096, %.lr.ph1087 ], [ %i.bfa, %bb.p ]
  %.146151082 = phi <16 x float> [ %.96101095, %.lr.ph1087 ], [ %i.bes, %bb.p ]
  %.146361081 = phi <16 x float> [ %.96311094, %.lr.ph1087 ], [ %i.bek, %bb.p ]
  %.159481080 = phi <16 x float> [ %.109431093, %.lr.ph1087 ], [ %i.bec, %bb.p ]
  %i.azp = load <16 x i16>, ptr %.141084, align 32, !tbaa !45 ; 2 uses
  %i.azq = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.azp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.azr = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.azp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.azs = shufflevector <16 x i16> %i.azq, <16 x i16> %i.azr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.azt = shufflevector <16 x i16> %i.azq, <16 x i16> %i.azr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azu = bitcast <16 x i16> %i.azs to <8 x i32>
  %i.azv = bitcast <16 x i16> %i.azt to <8 x i32>
  %i.azw = shufflevector <8 x i32> %i.azu, <8 x i32> %i.azv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azx = bitcast <16 x i32> %i.azw to <16 x float>
  %i.azy = getelementptr inbounds nuw i8, ptr %.141084, i64 32
  %i.azz = load <16 x i16>, ptr %i.azy, align 32, !tbaa !45 ; 2 uses
  %i.baa = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.azz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bab = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.azz, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bac = shufflevector <16 x i16> %i.baa, <16 x i16> %i.bab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bad = shufflevector <16 x i16> %i.baa, <16 x i16> %i.bab, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bae = bitcast <16 x i16> %i.bac to <8 x i32>
  %i.baf = bitcast <16 x i16> %i.bad to <8 x i32>
  %i.bag = shufflevector <8 x i32> %i.bae, <8 x i32> %i.baf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bah = bitcast <16 x i32> %i.bag to <16 x float>
  %i.bai = getelementptr inbounds nuw i8, ptr %.141084, i64 64
  %i.baj = load <16 x i16>, ptr %i.bai, align 32, !tbaa !45 ; 2 uses
  %i.bak = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.baj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bal = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.baj, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bam = shufflevector <16 x i16> %i.bak, <16 x i16> %i.bal, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ban = shufflevector <16 x i16> %i.bak, <16 x i16> %i.bal, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bao = bitcast <16 x i16> %i.bam to <8 x i32>
  %i.bap = bitcast <16 x i16> %i.ban to <8 x i32>
  %i.baq = shufflevector <8 x i32> %i.bao, <8 x i32> %i.bap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bar = bitcast <16 x i32> %i.baq to <16 x float>
  %i.bas = getelementptr inbounds nuw i8, ptr %.141084, i64 96
  %i.bat = load <16 x i16>, ptr %i.bas, align 32, !tbaa !45 ; 2 uses
  %i.bau = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bat, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bav = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bat, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.baw = shufflevector <16 x i16> %i.bau, <16 x i16> %i.bav, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bax = shufflevector <16 x i16> %i.bau, <16 x i16> %i.bav, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bay = bitcast <16 x i16> %i.baw to <8 x i32>
  %i.baz = bitcast <16 x i16> %i.bax to <8 x i32>
  %i.bba = shufflevector <8 x i32> %i.bay, <8 x i32> %i.baz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbb = bitcast <16 x i32> %i.bba to <16 x float>
  %i.bbc = getelementptr inbounds nuw i8, ptr %.141084, i64 128
  %i.bbd = load <16 x i16>, ptr %i.bbc, align 32, !tbaa !45 ; 2 uses
  %i.bbe = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bbf = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbd, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbg = shufflevector <16 x i16> %i.bbe, <16 x i16> %i.bbf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bbh = shufflevector <16 x i16> %i.bbe, <16 x i16> %i.bbf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbi = bitcast <16 x i16> %i.bbg to <8 x i32>
  %i.bbj = bitcast <16 x i16> %i.bbh to <8 x i32>
  %i.bbk = shufflevector <8 x i32> %i.bbi, <8 x i32> %i.bbj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbl = bitcast <16 x i32> %i.bbk to <16 x float>
  %i.bbm = getelementptr inbounds nuw i8, ptr %.141084, i64 160
  %i.bbn = load <16 x i16>, ptr %i.bbm, align 32, !tbaa !45 ; 2 uses
  %i.bbo = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bbp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbq = shufflevector <16 x i16> %i.bbo, <16 x i16> %i.bbp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bbr = shufflevector <16 x i16> %i.bbo, <16 x i16> %i.bbp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbs = bitcast <16 x i16> %i.bbq to <8 x i32>
  %i.bbt = bitcast <16 x i16> %i.bbr to <8 x i32>
  %i.bbu = shufflevector <8 x i32> %i.bbs, <8 x i32> %i.bbt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbv = bitcast <16 x i32> %i.bbu to <16 x float>
  %i.bbw = getelementptr inbounds nuw i8, ptr %.141084, i64 192
  %i.bbx = load <16 x i16>, ptr %i.bbw, align 32, !tbaa !45 ; 2 uses
  %i.bby = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bbz = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbx, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bca = shufflevector <16 x i16> %i.bby, <16 x i16> %i.bbz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bcb = shufflevector <16 x i16> %i.bby, <16 x i16> %i.bbz, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bcc = bitcast <16 x i16> %i.bca to <8 x i32>
  %i.bcd = bitcast <16 x i16> %i.bcb to <8 x i32>
  %i.bce = shufflevector <8 x i32> %i.bcc, <8 x i32> %i.bcd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcf = bitcast <16 x i32> %i.bce to <16 x float>
  %i.bcg = getelementptr inbounds nuw i8, ptr %.141084, i64 224
  %i.bch = load <16 x i16>, ptr %i.bcg, align 32, !tbaa !45 ; 2 uses
  %i.bci = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bch, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bcj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bch, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bck = shufflevector <16 x i16> %i.bci, <16 x i16> %i.bcj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bcl = shufflevector <16 x i16> %i.bci, <16 x i16> %i.bcj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bcm = bitcast <16 x i16> %i.bck to <8 x i32>
  %i.bcn = bitcast <16 x i16> %i.bcl to <8 x i32>
  %i.bco = shufflevector <8 x i32> %i.bcm, <8 x i32> %i.bcn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcp = bitcast <16 x i32> %i.bco to <16 x float>
  %i.bcq = load i16, ptr %.41085, align 2, !tbaa !70
  %i.bcr = zext i16 %i.bcq to i32
  %i.bcs = shl nuw i32 %i.bcr, 16
  %i.bct = insertelement <16 x i32> poison, i32 %i.bcs, i64 0
  %i.bcu = bitcast <16 x i32> %i.bct to <16 x float>
  %i.bcv = shufflevector <16 x float> %i.bcu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bcw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azx, <16 x float> nofpclass(nan inf) %i.bcv, <16 x float> nofpclass(nan inf) %.159481080)
  %i.bcx = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.aza
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !70
  %i.bcz = zext i16 %i.bcy to i32
  %i.bda = shl nuw i32 %i.bcz, 16
  %i.bdb = insertelement <16 x i32> poison, i32 %i.bda, i64 0
  %i.bdc = bitcast <16 x i32> %i.bdb to <16 x float>
  %i.bdd = shufflevector <16 x float> %i.bdc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bde = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bah, <16 x float> nofpclass(nan inf) %i.bdd, <16 x float> nofpclass(nan inf) %.146361081)
  %i.bdf = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azc
  %i.bdg = load i16, ptr %i.bdf, align 2, !tbaa !70
  %i.bdh = zext i16 %i.bdg to i32
  %i.bdi = shl nuw i32 %i.bdh, 16
  %i.bdj = insertelement <16 x i32> poison, i32 %i.bdi, i64 0
  %i.bdk = bitcast <16 x i32> %i.bdj to <16 x float>
  %i.bdl = shufflevector <16 x float> %i.bdk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bdm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bar, <16 x float> nofpclass(nan inf) %i.bdl, <16 x float> nofpclass(nan inf) %.146151082)
  %i.bdn = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.aze
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !70
  %i.bdp = zext i16 %i.bdo to i32
  %i.bdq = shl nuw i32 %i.bdp, 16
  %i.bdr = insertelement <16 x i32> poison, i32 %i.bdq, i64 0
  %i.bds = bitcast <16 x i32> %i.bdr to <16 x float>
  %i.bdt = shufflevector <16 x float> %i.bds, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bdu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbb, <16 x float> nofpclass(nan inf) %i.bdt, <16 x float> nofpclass(nan inf) %.145941083)
  %i.bdv = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azg
  %i.bdw = load i16, ptr %i.bdv, align 2, !tbaa !70
  %i.bdx = zext i16 %i.bdw to i32
  %i.bdy = shl nuw i32 %i.bdx, 16
  %i.bdz = insertelement <16 x i32> poison, i32 %i.bdy, i64 0
  %i.bea = bitcast <16 x i32> %i.bdz to <16 x float>
  %i.beb = shufflevector <16 x float> %i.bea, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbl, <16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.bcw) ; 2 uses
  %i.bed = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azi
  %i.bee = load i16, ptr %i.bed, align 2, !tbaa !70
  %i.bef = zext i16 %i.bee to i32
  %i.beg = shl nuw i32 %i.bef, 16
  %i.beh = insertelement <16 x i32> poison, i32 %i.beg, i64 0
  %i.bei = bitcast <16 x i32> %i.beh to <16 x float>
  %i.bej = shufflevector <16 x float> %i.bei, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbv, <16 x float> nofpclass(nan inf) %i.bej, <16 x float> nofpclass(nan inf) %i.bde) ; 2 uses
  %i.bel = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azk
  %i.bem = load i16, ptr %i.bel, align 2, !tbaa !70
  %i.ben = zext i16 %i.bem to i32
  %i.beo = shl nuw i32 %i.ben, 16
  %i.bep = insertelement <16 x i32> poison, i32 %i.beo, i64 0
  %i.beq = bitcast <16 x i32> %i.bep to <16 x float>
  %i.ber = shufflevector <16 x float> %i.beq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bes = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bcf, <16 x float> nofpclass(nan inf) %i.ber, <16 x float> nofpclass(nan inf) %i.bdm) ; 2 uses
  %i.bet = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azm
  %i.beu = load i16, ptr %i.bet, align 2, !tbaa !70
  %i.bev = zext i16 %i.beu to i32
  %i.bew = shl nuw i32 %i.bev, 16
  %i.bex = insertelement <16 x i32> poison, i32 %i.bew, i64 0
  %i.bey = bitcast <16 x i32> %i.bex to <16 x float>
  %i.bez = shufflevector <16 x float> %i.bey, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bfa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bcp, <16 x float> nofpclass(nan inf) %i.bez, <16 x float> nofpclass(nan inf) %i.bdu) ; 2 uses
  %i.bfb = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azo
  %i.bfc = getelementptr inbounds nuw i8, ptr %.141084, i64 256
  %i.bfd = add nuw nsw i32 %.05481086, 1          ; 2 uses
  %exitcond1287.not = icmp eq i32 %i.bfd, %i.ayx
  br i1 %exitcond1287.not, label %.loopexit967.loopexit, label %bb.p, !llvm.loop !499

.loopexit967.loopexit:                            ; preds = %bb.p
  %scevgep1285 = getelementptr i8, ptr %.91097, i64 256
  %i.bfe = add nsw i32 %i.ayx, -1
  %i.bff = zext nneg i32 %i.bfe to i64
  %i.bfg = shl nuw nsw i64 %i.bff, 8
  %scevgep1286 = getelementptr i8, ptr %scevgep1285, i64 %i.bfg
  br label %.loopexit967

.loopexit967:                                     ; preds = %.preheader969, %.loopexit970.loopexit, %bb.n, %.loopexit968.loopexit, %.loopexit967.loopexit, %.preheader966, %.loopexit968
  %.16949 = phi nsz <16 x float> [ %.109431093, %.loopexit968 ], [ %.109431093, %.preheader966 ], [ %i.bec, %.loopexit967.loopexit ], [ %.109431093, %bb.n ], [ %i.ayg, %.loopexit968.loopexit ], [ %i.ato, %.loopexit970.loopexit ], [ %.109431093, %.preheader969 ] ; 2 uses
  %.15637 = phi nsz <16 x float> [ %.96311094, %.loopexit968 ], [ %.96311094, %.preheader966 ], [ %i.bek, %.loopexit967.loopexit ], [ %.96311094, %bb.n ], [ %i.ayj, %.loopexit968.loopexit ], [ %i.atr, %.loopexit970.loopexit ], [ %.96311094, %.preheader969 ] ; 2 uses
  %.15616 = phi nsz <16 x float> [ %.96101095, %.loopexit968 ], [ %.96101095, %.preheader966 ], [ %i.bes, %.loopexit967.loopexit ], [ %.96101095, %bb.n ], [ %i.aym, %.loopexit968.loopexit ], [ %i.atu, %.loopexit970.loopexit ], [ %.96101095, %.preheader969 ] ; 2 uses
  %.15595 = phi nsz <16 x float> [ %.95891096, %.loopexit968 ], [ %.95891096, %.preheader966 ], [ %i.bfa, %.loopexit967.loopexit ], [ %.95891096, %bb.n ], [ %i.ayp, %.loopexit968.loopexit ], [ %i.atx, %.loopexit970.loopexit ], [ %.95891096, %.preheader969 ] ; 2 uses
  %.15 = phi ptr [ %.91097, %.loopexit968 ], [ %.91097, %.preheader966 ], [ %scevgep1286, %.loopexit967.loopexit ], [ %.91097, %bb.n ], [ %scevgep1283, %.loopexit968.loopexit ], [ %scevgep1280, %.loopexit970.loopexit ], [ %.91097, %.preheader969 ] ; 2 uses
  %i.bfh = add nuw nsw i32 %.15691098, 8          ; 3 uses
  %i.bfi = or disjoint i32 %i.bfh, 7
  %i.bfj = icmp slt i32 %i.bfi, %i.ab
  br i1 %i.bfj, label %bb.l, label %.preheader979, !llvm.loop !500

.preheader978:                                    ; preds = %.loopexit, %.preheader979
  %.17950.lcssa = phi <16 x float> [ %.10943.lcssa, %.preheader979 ], [ %.21954, %.loopexit ] ; 3 uses
  %.16638.lcssa = phi <16 x float> [ %.9631.lcssa, %.preheader979 ], [ %.20642, %.loopexit ] ; 3 uses
  %.16617.lcssa = phi <16 x float> [ %.9610.lcssa, %.preheader979 ], [ %.20621, %.loopexit ]
  %.16596.lcssa = phi <16 x float> [ %.9589.lcssa, %.preheader979 ], [ %.20600, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader979 ], [ %.20, %.loopexit ] ; 3 uses
  %.2570.lcssa = phi i32 [ %.1569.lcssa, %.preheader979 ], [ %i.bns, %.loopexit ] ; 5 uses
  %i.bfk = or disjoint i32 %.2570.lcssa, 1
  %i.bfl = icmp slt i32 %i.bfk, %i.ab
  br i1 %i.bfl, label %.lr.ph1167, label %.preheader977

.lr.ph1167:                                       ; preds = %.preheader978
  %i.bfm = load ptr, ptr %3, align 8, !tbaa !19
  %i.bfn = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bfo = sext i32 %i.bfn to i64
  %i.bfp = load i64, ptr %i.t, align 8, !tbaa !44
  %factor.op.mul1172 = mul i64 %i.bfp, %i.bfo
  %i.bfq = load i32, ptr %7, align 4, !tbaa !58
  %i.bfr = mul nsw i32 %i.bfq, %.06451199
  %i.bfs = sext i32 %i.bfr to i64
  %invariant.gep1174 = getelementptr [2 x i8], ptr %i.bfm, i64 %i.bfs
  %i.bft = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.bfu = icmp sgt i32 %i.bft, 0
  br i1 %i.bfu, label %.lr.ph1167.split.us, label %.lr.ph1167.split.preheader

.lr.ph1167.split.preheader:                       ; preds = %.lr.ph1167
  %i.bfv = add nsw i32 %.2570.lcssa, 2
  %i.bfw = sub i32 %i.ax, %.2570.lcssa
  %i.bfx = and i32 %i.bfw, -2
  %i.bfy = add i32 %i.bfv, %i.bfx
  br label %.preheader977

.lr.ph1167.split.us:                              ; preds = %.lr.ph1167
  %i.bfz = load i32, ptr %10, align 4, !tbaa !58
  %i.bga = sext i32 %i.bfz to i64
  %i.bgb = load i32, ptr %9, align 4, !tbaa !58
  %i.bgc = sext i32 %i.bgb to i64
  %i.bgd = add nsw i32 %i.bft, -1
  %i.bge = zext nneg i32 %i.bgd to i64
  %i.bgf = shl nuw nsw i64 %i.bge, 6
  %i.bgg = zext i32 %.2570.lcssa to i64
  br label %.lr.ph1159.us

.lr.ph1159.us:                                    ; preds = %._crit_edge.us, %.lr.ph1167.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.bgg, %.lr.ph1167.split.us ] ; 2 uses
  %.211165.us = phi ptr [ %scevgep1295, %._crit_edge.us ], [ %.16.lcssa, %.lr.ph1167.split.us ] ; 2 uses
  %.216431164.us = phi <16 x float> [ %i.bho, %._crit_edge.us ], [ %.16638.lcssa, %.lr.ph1167.split.us ]
  %.229551163.us = phi <16 x float> [ %i.bhg, %._crit_edge.us ], [ %.17950.lcssa, %.lr.ph1167.split.us ]
  %.reass1173.us = mul i64 %factor.op.mul1172, %indvars.iv
  %gep1175.us = getelementptr i8, ptr %invariant.gep1174, i64 %.reass1173.us
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1159.us, %bb.q
  %.05431158.us = phi i32 [ 0, %.lr.ph1159.us ], [ %i.bhr, %bb.q ]
  %.05441157.us = phi ptr [ %gep1175.us, %.lr.ph1159.us ], [ %i.bhp, %bb.q ] ; 3 uses
  %.221156.us = phi ptr [ %.211165.us, %.lr.ph1159.us ], [ %i.bhq, %bb.q ] ; 3 uses
  %.226441155.us = phi <16 x float> [ %.216431164.us, %.lr.ph1159.us ], [ %i.bho, %bb.q ]
  %.239561154.us = phi <16 x float> [ %.229551163.us, %.lr.ph1159.us ], [ %i.bhg, %bb.q ]
  %i.bgh = load <16 x i16>, ptr %.221156.us, align 32, !tbaa !45 ; 2 uses
  %i.bgi = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bgh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bgj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bgh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bgk = shufflevector <16 x i16> %i.bgi, <16 x i16> %i.bgj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bgl = shufflevector <16 x i16> %i.bgi, <16 x i16> %i.bgj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgm = bitcast <16 x i16> %i.bgk to <8 x i32>
  %i.bgn = bitcast <16 x i16> %i.bgl to <8 x i32>
  %i.bgo = shufflevector <8 x i32> %i.bgm, <8 x i32> %i.bgn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgp = bitcast <16 x i32> %i.bgo to <16 x float>
  %i.bgq = getelementptr inbounds nuw i8, ptr %.221156.us, i64 32
  %i.bgr = load <16 x i16>, ptr %i.bgq, align 32, !tbaa !45 ; 2 uses
  %i.bgs = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bgr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bgt = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bgr, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bgu = shufflevector <16 x i16> %i.bgs, <16 x i16> %i.bgt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bgv = shufflevector <16 x i16> %i.bgs, <16 x i16> %i.bgt, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgw = bitcast <16 x i16> %i.bgu to <8 x i32>
  %i.bgx = bitcast <16 x i16> %i.bgv to <8 x i32>
  %i.bgy = shufflevector <8 x i32> %i.bgw, <8 x i32> %i.bgx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgz = bitcast <16 x i32> %i.bgy to <16 x float>
  %i.bha = load i16, ptr %.05441157.us, align 2, !tbaa !70
  %i.bhb = zext i16 %i.bha to i32
  %i.bhc = shl nuw i32 %i.bhb, 16
  %i.bhd = insertelement <16 x i32> poison, i32 %i.bhc, i64 0
  %i.bhe = bitcast <16 x i32> %i.bhd to <16 x float>
  %i.bhf = shufflevector <16 x float> %i.bhe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bhg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgp, <16 x float> nofpclass(nan inf) %i.bhf, <16 x float> nofpclass(nan inf) %.239561154.us) ; 3 uses
  %i.bhh = getelementptr inbounds [2 x i8], ptr %.05441157.us, i64 %i.bga
  %i.bhi = load i16, ptr %i.bhh, align 2, !tbaa !70
  %i.bhj = zext i16 %i.bhi to i32
  %i.bhk = shl nuw i32 %i.bhj, 16
  %i.bhl = insertelement <16 x i32> poison, i32 %i.bhk, i64 0
  %i.bhm = bitcast <16 x i32> %i.bhl to <16 x float>
  %i.bhn = shufflevector <16 x float> %i.bhm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bho = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgz, <16 x float> nofpclass(nan inf) %i.bhn, <16 x float> nofpclass(nan inf) %.226441155.us) ; 3 uses
  %i.bhp = getelementptr inbounds [2 x i8], ptr %.05441157.us, i64 %i.bgc
  %i.bhq = getelementptr inbounds nuw i8, ptr %.221156.us, i64 64
  %i.bhr = add nuw nsw i32 %.05431158.us, 1       ; 2 uses
  %exitcond1296.not = icmp eq i32 %i.bhr, %i.bft
  br i1 %exitcond1296.not, label %._crit_edge.us, label %bb.q, !llvm.loop !501

._crit_edge.us:                                   ; preds = %bb.q
  %scevgep1294 = getelementptr i8, ptr %.211165.us, i64 64
  %scevgep1295 = getelementptr i8, ptr %scevgep1294, i64 %i.bgf ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bhs = trunc i64 %indvars.iv.next to i32
  %i.bht = or i32 %i.bhs, 1
  %i.bhu = icmp slt i32 %i.bht, %i.ab
  br i1 %i.bhu, label %.lr.ph1159.us, label %.preheader977.loopexit, !llvm.loop !502

bb.r:                                             ; preds = %.lr.ph1143, %.loopexit
  %.25701142 = phi i32 [ %.1569.lcssa, %.lr.ph1143 ], [ %i.bns, %.loopexit ] ; 2 uses
  %.161141 = phi ptr [ %.9.lcssa, %.lr.ph1143 ], [ %.20, %.loopexit ] ; 7 uses
  %.165961140 = phi <16 x float> [ %.9589.lcssa, %.lr.ph1143 ], [ %.20600, %.loopexit ] ; 5 uses
  %.166171139 = phi <16 x float> [ %.9610.lcssa, %.lr.ph1143 ], [ %.20621, %.loopexit ] ; 5 uses
  %.166381138 = phi <16 x float> [ %.9631.lcssa, %.lr.ph1143 ], [ %.20642, %.loopexit ] ; 5 uses
  %.179501137 = phi <16 x float> [ %.10943.lcssa, %.lr.ph1143 ], [ %.21954, %.loopexit ] ; 5 uses
  %i.bhv = sdiv i32 %.25701142, %i.z
  %i.bhw = sext i32 %i.bhv to i64
  %.reass1151 = mul i64 %factor.op.mul1150, %i.bhw
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %.reass1151 ; 2 uses
  br i1 %i.ar, label %.preheader964, label %.loopexit965

.preheader964:                                    ; preds = %bb.r
  %i.bhx = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.bhy = icmp sgt i32 %i.bhx, 0
  br i1 %i.bhy, label %.lr.ph1117, label %.loopexit

.lr.ph1117:                                       ; preds = %.preheader964
  %i.bhz = load i32, ptr %9, align 4, !tbaa !58
  %i.bia = shl nsw i32 %i.bhz, 2
  %i.bib = sext i32 %i.bia to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1117, %bb.s
  %.05461116 = phi i32 [ 0, %.lr.ph1117 ], [ %i.bkg, %bb.s ]
  %.05471115 = phi ptr [ %gep1153, %.lr.ph1117 ], [ %i.bke, %bb.s ] ; 2 uses
  %.171114 = phi ptr [ %.161141, %.lr.ph1117 ], [ %i.bkf, %bb.s ] ; 5 uses
  %.175971113 = phi <16 x float> [ %.165961140, %.lr.ph1117 ], [ %i.bkd, %bb.s ]
  %.176181112 = phi <16 x float> [ %.166171139, %.lr.ph1117 ], [ %i.bka, %bb.s ]
  %.176391111 = phi <16 x float> [ %.166381138, %.lr.ph1117 ], [ %i.bjx, %bb.s ]
  %.189511110 = phi <16 x float> [ %.179501137, %.lr.ph1117 ], [ %i.bju, %bb.s ]
  %i.bic = load <16 x i16>, ptr %.171114, align 32, !tbaa !45 ; 2 uses
  %i.bid = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bic, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bie = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bic, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bif = shufflevector <16 x i16> %i.bid, <16 x i16> %i.bie, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.big = shufflevector <16 x i16> %i.bid, <16 x i16> %i.bie, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bih = bitcast <16 x i16> %i.bif to <8 x i32>
  %i.bii = bitcast <16 x i16> %i.big to <8 x i32>
  %i.bij = shufflevector <8 x i32> %i.bih, <8 x i32> %i.bii, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bik = bitcast <16 x i32> %i.bij to <16 x float>
  %i.bil = getelementptr inbounds nuw i8, ptr %.171114, i64 32
  %i.bim = load <16 x i16>, ptr %i.bil, align 32, !tbaa !45 ; 2 uses
  %i.bin = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bim, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bio = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bim, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bip = shufflevector <16 x i16> %i.bin, <16 x i16> %i.bio, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.biq = shufflevector <16 x i16> %i.bin, <16 x i16> %i.bio, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bir = bitcast <16 x i16> %i.bip to <8 x i32>
  %i.bis = bitcast <16 x i16> %i.biq to <8 x i32>
  %i.bit = shufflevector <8 x i32> %i.bir, <8 x i32> %i.bis, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.biu = bitcast <16 x i32> %i.bit to <16 x float>
  %i.biv = getelementptr inbounds nuw i8, ptr %.171114, i64 64
  %i.biw = load <16 x i16>, ptr %i.biv, align 32, !tbaa !45 ; 2 uses
  %i.bix = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.biw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.biy = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.biw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.biz = shufflevector <16 x i16> %i.bix, <16 x i16> %i.biy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bja = shufflevector <16 x i16> %i.bix, <16 x i16> %i.biy, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bjb = bitcast <16 x i16> %i.biz to <8 x i32>
  %i.bjc = bitcast <16 x i16> %i.bja to <8 x i32>
  %i.bjd = shufflevector <8 x i32> %i.bjb, <8 x i32> %i.bjc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bje = bitcast <16 x i32> %i.bjd to <16 x float>
  %i.bjf = getelementptr inbounds nuw i8, ptr %.171114, i64 96
  %i.bjg = load <16 x i16>, ptr %i.bjf, align 32, !tbaa !45 ; 2 uses
  %i.bjh = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bjg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bji = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bjg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bjj = shufflevector <16 x i16> %i.bjh, <16 x i16> %i.bji, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bjk = shufflevector <16 x i16> %i.bjh, <16 x i16> %i.bji, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bjl = bitcast <16 x i16> %i.bjj to <8 x i32>
  %i.bjm = bitcast <16 x i16> %i.bjk to <8 x i32>
  %i.bjn = shufflevector <8 x i32> %i.bjl, <8 x i32> %i.bjm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjo = bitcast <16 x i32> %i.bjn to <16 x float>
  %i.bjp = load <4 x i16>, ptr %.05471115, align 2, !tbaa !70
  %i.bjq = zext <4 x i16> %i.bjp to <4 x i32>
  %i.bjr = shl nuw <4 x i32> %i.bjq, splat (i32 16) ; 4 uses
  %i.bjs = bitcast <4 x i32> %i.bjr to <4 x float>
  %i.bjt = shufflevector <4 x float> %i.bjs, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bju = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bik, <16 x float> nofpclass(nan inf) %i.bjt, <16 x float> nofpclass(nan inf) %.189511110) ; 2 uses
  %i.bjv = bitcast <4 x i32> %i.bjr to <4 x float>
  %i.bjw = shufflevector <4 x float> %i.bjv, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bjx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.biu, <16 x float> nofpclass(nan inf) %i.bjw, <16 x float> nofpclass(nan inf) %.176391111) ; 2 uses
  %i.bjy = bitcast <4 x i32> %i.bjr to <4 x float>
  %i.bjz = shufflevector <4 x float> %i.bjy, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bka = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bje, <16 x float> nofpclass(nan inf) %i.bjz, <16 x float> nofpclass(nan inf) %.176181112) ; 2 uses
  %i.bkb = bitcast <4 x i32> %i.bjr to <4 x float>
  %i.bkc = shufflevector <4 x float> %i.bkb, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.bkd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bjo, <16 x float> nofpclass(nan inf) %i.bkc, <16 x float> nofpclass(nan inf) %.175971113) ; 2 uses
  %i.bke = getelementptr inbounds [2 x i8], ptr %.05471115, i64 %i.bib
  %i.bkf = getelementptr inbounds nuw i8, ptr %.171114, i64 128
  %i.bkg = add nuw nsw i32 %.05461116, 1          ; 2 uses
  %exitcond1290.not = icmp eq i32 %i.bkg, %i.bhx
  br i1 %exitcond1290.not, label %.loopexit965.loopexit, label %bb.s, !llvm.loop !503

.loopexit965.loopexit:                            ; preds = %bb.s
  %scevgep1288 = getelementptr i8, ptr %.161141, i64 128
  %i.bkh = add nsw i32 %i.bhx, -1
  %i.bki = zext nneg i32 %i.bkh to i64
  %i.bkj = shl nuw nsw i64 %i.bki, 7
  %scevgep1289 = getelementptr i8, ptr %scevgep1288, i64 %i.bkj
  br label %.loopexit

.loopexit965:                                     ; preds = %bb.r
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit965
  %i.bkk = load i32, ptr %8, align 4, !tbaa !58   ; 3 uses
  %i.bkl = icmp sgt i32 %i.bkk, 0
  br i1 %i.bkl, label %.lr.ph1131, label %.loopexit

.lr.ph1131:                                       ; preds = %.preheader
  %i.bkm = load i32, ptr %10, align 4, !tbaa !58  ; 3 uses
  %i.bkn = sext i32 %i.bkm to i64
  %i.bko = shl nsw i32 %i.bkm, 1
  %i.bkp = sext i32 %i.bko to i64
  %i.bkq = mul nsw i32 %i.bkm, 3
  %i.bkr = sext i32 %i.bkq to i64
  %i.bks = load i32, ptr %9, align 4, !tbaa !58
  %i.bkt = sext i32 %i.bks to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph1131, %bb.t
end_hunk_17
