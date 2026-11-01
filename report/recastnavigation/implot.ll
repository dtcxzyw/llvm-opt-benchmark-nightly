Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot7EndPlotEv:bb.a
  %i.lh = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 396 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %19, i64 24
  br label %bb.by

bb.bl:                                            ; preds = %.preheader1071, %bb.bx
  %indvars.iv1139 = phi i64 [ 0, %.preheader1071 ], [ %indvars.iv.next1140, %bb.bx ] ; 2 uses
  %.06151089 = phi i32 [ 0, %.preheader1071 ], [ %.1616, %bb.bx ] ; 3 uses
  %.06171088 = phi i32 [ 0, %.preheader1071 ], [ %.1618, %bb.bx ] ; 3 uses
  %i.ln = getelementptr [376 x i8], ptr %i.q, i64 %indvars.iv1139 ; 8 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 1516
  %i.lp = load i8, ptr %i.lo, align 4, !tbaa !299, !range !263, !noundef !264
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.lr = getelementptr i8, ptr %i.ln, i64 1248   ; 3 uses
  %i.ls = getelementptr i8, ptr %i.ln, i64 1156
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !300 ; 2 uses
  %i.lu = and i32 %i.lt, 256                      ; 2 uses
  %.not1061 = icmp eq i32 %i.lu, 0                ; 3 uses
  %.v640 = select i1 %.not1061, i32 %.06171088, i32 %.06151089
  %.v640.fr = freeze i32 %.v640
  %i.lv = icmp slt i32 %.v640.fr, 1               ; 2 uses
  %i.lw = and i32 %i.lt, 4
  %.not.i669 = icmp eq i32 %i.lw, 0
  br i1 %.not.i669, label %.preheader1070, label %bb.bw

.preheader1070:                                   ; preds = %bb.bm
  %i.lx = load i32, ptr %i.lr, align 8, !tbaa !267 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph1085, label %._crit_edge1086

.lr.ph1085:                                       ; preds = %.preheader1070
  %i.lz = getelementptr i8, ptr %i.ln, i64 1256   ; 2 uses
  %i.ma = getelementptr i8, ptr %i.ln, i64 1456   ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ln, i64 1492   ; 2 uses
  br i1 %i.lv, label %.lr.ph1085.split.us, label %.lr.ph1085.split

.lr.ph1085.split.us:                              ; preds = %.lr.ph1085, %bb.bq
  %i.mc = phi i32 [ %i.nb, %bb.bq ], [ %i.lx, %.lr.ph1085 ] ; 3 uses
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %bb.bq ], [ 0, %.lr.ph1085 ] ; 2 uses
  %i.md = load ptr, ptr %i.lz, align 8, !tbaa !273
  %i.me = getelementptr inbounds nuw [40 x i8], ptr %i.md, i64 %indvars.iv1136 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 28
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !435
  %.not641.us = icmp eq i32 %i.mg, 0
  br i1 %.not641.us, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %.lr.ph1085.split.us
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !430 ; 2 uses
  %i.mj = load float, ptr %i.hh, align 4, !tbaa !373
  %i.mk = fcmp olt float %i.mi, %i.mj
  br i1 %i.mk, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ml = load float, ptr %i.hi, align 4, !tbaa !374
  %i.mm = fcmp ogt float %i.mi, %i.ml
  br i1 %i.mm, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.mn = load float, ptr %i.ma, align 8, !tbaa !346 ; 2 uses
  %i.mo = load float, ptr %i.mh, align 8, !tbaa !430 ; 2 uses
  store float %i.mn, ptr %14, align 4, !tbaa !172
  store float %i.mo, ptr %i.hj, align 4, !tbaa !173
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !439, !range !263, !noundef !264
  %i.mr = trunc nuw i8 %i.mq to i1                ; 2 uses
  %.in.us.v = select i1 %i.mr, i64 304, i64 312
  %.in.us = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.us.v
  %i.ms = load float, ptr %.in.us, align 4, !tbaa !41 ; 2 uses
  %.1118 = select i1 %i.mr, ptr %i.hm, ptr %i.hl
  %i.mt = load float, ptr %.1118, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.mu = fneg float %i.ms
  %i.mv = select i1 %.not1061, float %i.ms, float %i.mu
  %i.mw = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mx = insertelement <2 x float> %i.mw, float %i.mo, i64 1
  %i.my = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mv, i64 0
  %i.mz = fadd <2 x float> %i.mx, %i.my
  store <2 x float> %i.mz, ptr %15, align 8
  %i.na = load i32, ptr %i.mb, align 4, !tbaa !337
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.na, float noundef %i.mt) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.pre1212 = load i32, ptr %i.lr, align 8, !tbaa !267
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %.lr.ph1085.split.us
  %i.nb = phi i32 [ %.pre1212, %bb.bp ], [ %i.mc, %bb.bo ], [ %i.mc, %bb.bn ], [ %i.mc, %.lr.ph1085.split.us ] ; 2 uses
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next1137, %i.nc
  br i1 %i.nd, label %.lr.ph1085.split.us, label %._crit_edge1086, !llvm.loop !611

._crit_edge1086:                                  ; preds = %bb.bu, %bb.bq, %.preheader1070
  %or.cond8 = select i1 %i.lv, i1 %i.af, i1 false
  br i1 %or.cond8, label %bb.bw, label %bb.bv

.lr.ph1085.split:                                 ; preds = %.lr.ph1085, %bb.bu
  %i.ne = phi i32 [ %i.oa, %bb.bu ], [ %i.lx, %.lr.ph1085 ] ; 3 uses
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %bb.bu ], [ 0, %.lr.ph1085 ] ; 2 uses
  %i.nf = load ptr, ptr %i.lz, align 8, !tbaa !273
  %i.ng = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %indvars.iv1133 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 28
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !435
  %.not641 = icmp eq i32 %i.ni, 0
  br i1 %.not641, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %.lr.ph1085.split
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !430 ; 2 uses
  %i.nl = load float, ptr %i.hh, align 4, !tbaa !373
  %i.nm = fcmp olt float %i.nk, %i.nl
  br i1 %i.nm, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nn = load float, ptr %i.hi, align 4, !tbaa !374
  %i.no = fcmp ogt float %i.nk, %i.nn
  br i1 %i.no, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.np = load float, ptr %i.ma, align 8, !tbaa !346 ; 2 uses
  %i.nq = load float, ptr %i.nj, align 8, !tbaa !430 ; 2 uses
  store float %i.np, ptr %14, align 4, !tbaa !172
  store float %i.nq, ptr %i.hj, align 4, !tbaa !173
  %i.nr = load float, ptr %i.hk, align 8, !tbaa !41 ; 2 uses
  %i.ns = load float, ptr %i.hl, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.nt = fneg float %i.nr
  %i.nu = select i1 %.not1061, float %i.nr, float %i.nt
  %i.nv = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %i.nq, i64 1
  %i.nx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nu, i64 0
  %i.ny = fadd <2 x float> %i.nw, %i.nx
  store <2 x float> %i.ny, ptr %15, align 8
  %i.nz = load i32, ptr %i.mb, align 4, !tbaa !337
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.nz, float noundef %i.ns) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.pre1211 = load i32, ptr %i.lr, align 8, !tbaa !267
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph1085.split, %bb.br, %bb.bs, %bb.bt
  %i.oa = phi i32 [ %i.ne, %.lr.ph1085.split ], [ %i.ne, %bb.br ], [ %i.ne, %bb.bs ], [ %.pre1211, %bb.bt ] ; 2 uses
  %indvars.iv.next1134 = add nuw nsw i64 %indvars.iv1133, 1 ; 2 uses
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next1134, %i.ob
  br i1 %i.oc, label %.lr.ph1085.split, label %._crit_edge1086, !llvm.loop !611

bb.bv:                                            ; preds = %._crit_edge1086
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.od = getelementptr i8, ptr %i.ln, i64 1456   ; 2 uses
  %i.oe = load float, ptr %i.od, align 8, !tbaa !346
  %i.of = load float, ptr %i.hh, align 4, !tbaa !373
  store float %i.oe, ptr %16, align 4, !tbaa !172
  store float %i.of, ptr %i.hn, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.og = load float, ptr %i.od, align 8, !tbaa !346
  %i.oh = load float, ptr %i.hi, align 4, !tbaa !374
  store float %i.og, ptr %17, align 4, !tbaa !172
  store float %i.oh, ptr %i.ho, align 4, !tbaa !173
  %i.oi = getelementptr i8, ptr %i.ln, i64 1492
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !337
  %i.ok = load float, ptr %i.hl, align 8, !tbaa !626
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.oj, float noundef %i.ok) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge1086, %bb.bm
  %.lobit1062 = lshr exact i32 %i.lu, 8           ; 2 uses
  %i.ol = xor i32 %.lobit1062, 1
  %i.om = add nsw i32 %i.ol, %.06171088
  %i.on = add nsw i32 %.lobit1062, %.06151089
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bl, %bb.bw
  %.1618 = phi i32 [ %i.om, %bb.bw ], [ %.06171088, %bb.bl ]
  %.1616 = phi i32 [ %i.on, %bb.bw ], [ %.06151089, %bb.bl ]
  %indvars.iv.next1140 = add nuw nsw i64 %indvars.iv1139, 1 ; 2 uses
  %exitcond1142.not = icmp eq i64 %indvars.iv.next1140, 3
  br i1 %exitcond1142.not, label %bb.bh, label %bb.bl, !llvm.loop !612

._crit_edge1096:                                  ; preds = %bb.cn, %_ZN6ImPlot16PushPlotClipRectEf.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %i.q, i64 2555
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !378, !range !263, !noundef !264
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.co, label %bb.cq

bb.by:                                            ; preds = %.lr.ph1095, %bb.cn
  %indvars.iv1147 = phi i64 [ 0, %.lr.ph1095 ], [ %indvars.iv.next1148, %bb.cn ] ; 2 uses
  %i.or = load ptr, ptr %i.lg, align 8, !tbaa !627
  %i.os = load ptr, ptr %i.lh, align 8, !tbaa !440
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %indvars.iv1147 ; 10 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !629
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.or, i64 %i.ow ; 2 uses
  %i.oy = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.ox, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  %i.oz = load <2 x float>, ptr %i.li, align 4, !tbaa !41
  %i.pa = fmul <2 x float> %i.oz, splat (float 2.000000e+00)
  %i.pb = fadd <2 x float> %i.oy, %i.pa           ; 9 uses
  %i.pc = load <2 x float>, ptr %i.ot, align 4, !tbaa !41 ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !630 ; 4 uses
  %i.pf = fcmp oeq float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pg = extractelement <2 x float> %i.pb, i64 0
  %i.ph = fmul float %i.pg, 5.000000e-01
  %.sroa.0971.0.vec.extract = extractelement <2 x float> %i.pc, i64 0
  %i.pi = fsub float %.sroa.0971.0.vec.extract, %i.ph
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.pj = fcmp ogt float %i.pe, 0.000000e+00
  br i1 %i.pj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %.sroa.0971.0.vec.extract977 = extractelement <2 x float> %i.pc, i64 0
  %i.pk = fadd float %.sroa.0971.0.vec.extract977, %i.pe
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.pl = extractelement <2 x float> %i.pb, i64 0
  %i.pm = fsub float %i.pl, %i.pe
  %.sroa.0971.0.vec.extract981 = extractelement <2 x float> %i.pc, i64 0
  %i.pn = fsub float %.sroa.0971.0.vec.extract981, %i.pm
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz
  %.sink = phi float [ %i.pk, %bb.cb ], [ %i.pn, %bb.cc ], [ %i.pi, %bb.bz ] ; 2 uses
  %.sroa.0971.0.vec.insert975 = insertelement <2 x float> poison, float %.sink, i64 0
  %i.po = getelementptr inbounds nuw i8, ptr %i.ot, i64 12 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !631 ; 4 uses
  %i.pq = fcmp oeq float %i.pp, 0.000000e+00
  br i1 %i.pq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pr = extractelement <2 x float> %i.pb, i64 1
  %i.ps = fmul float %i.pr, 5.000000e-01
  %.sroa.0971.4.vec.extract996 = extractelement <2 x float> %i.pc, i64 1
  %i.pt = fsub float %.sroa.0971.4.vec.extract996, %i.ps
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  %i.pu = fcmp ogt float %i.pp, 0.000000e+00
  br i1 %i.pu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %.sroa.0971.4.vec.extract992 = extractelement <2 x float> %i.pc, i64 1
  %i.pv = fadd float %.sroa.0971.4.vec.extract992, %i.pp
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.pw = extractelement <2 x float> %i.pb, i64 1
  %i.px = fsub float %i.pw, %i.pp
  %.sroa.0971.4.vec.extract = extractelement <2 x float> %i.pc, i64 1
  %i.py = fsub float %.sroa.0971.4.vec.extract, %i.px
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.ce
  %.sink1347 = phi float [ %i.pv, %bb.cg ], [ %i.py, %bb.ch ], [ %i.pt, %bb.ce ]
  %.sroa.0971.4.vec.insert990 = insertelement <2 x float> %.sroa.0971.0.vec.insert975, float %.sink1347, i64 1 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ot, i64 28
  %i.qa = load i8, ptr %i.pz, align 4, !tbaa !632, !range !263, !noundef !264
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %.val654 = load float, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %.val655 = load float, ptr %i.hh, align 4, !tbaa !173 ; 2 uses
  %.val656 = load float, ptr %i.ha, align 8, !tbaa !172 ; 2 uses
  %.val657 = load float, ptr %i.hi, align 4, !tbaa !173 ; 2 uses
  %i.qc = fcmp olt float %.sink, %.val654
  %.sroa.0.0.vec.insert.i677 = insertelement <2 x float> %.sroa.0971.4.vec.insert990, float %.val654, i64 0
  %.sroa.0.0.i = select i1 %i.qc, <2 x float> %.sroa.0.0.vec.insert.i677, <2 x float> %.sroa.0971.4.vec.insert990 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.qd = fcmp olt float %.sroa.0.4.vec.extract.i, %.val655
  %.sroa.0.4.vec.insert.i678 = insertelement <2 x float> %.sroa.0.0.i, float %.val655, i64 1
  %.sroa.0.1.i = select i1 %i.qd, <2 x float> %.sroa.0.4.vec.insert.i678, <2 x float> %.sroa.0.0.i ; 3 uses
  %i.qe = extractelement <2 x float> %i.pb, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.pb, %.sroa.0.1.i
  %i.qf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.qg = fcmp ogt float %i.qf, %.val656
  %i.qh = fsub float %.val656, %i.qe
  %.sroa.0.0.vec.insert16.i = insertelement <2 x float> %.sroa.0.1.i, float %i.qh, i64 0
  %.sroa.0.2.i = select i1 %i.qg, <2 x float> %.sroa.0.0.vec.insert16.i, <2 x float> %.sroa.0.1.i ; 3 uses
  %i.qi = extractelement <2 x float> %i.pb, i64 1
  %foldExtExtBinop1357 = fadd <2 x float> %i.pb, %.sroa.0.2.i
  %i.qj = extractelement <2 x float> %foldExtExtBinop1357, i64 1
  %i.qk = fcmp ogt float %i.qj, %.val657
  %i.ql = fsub float %.val657, %i.qi
  %.sroa.0.4.vec.insert21.i = insertelement <2 x float> %.sroa.0.2.i, float %i.ql, i64 1
  %.sroa.0.3.i = select i1 %i.qk, <2 x float> %.sroa.0.4.vec.insert21.i, <2 x float> %.sroa.0.2.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.copyload.i681 = phi <2 x float> [ %.sroa.0.3.i, %bb.cj ], [ %.sroa.0971.4.vec.insert990, %bb.ci ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.qm = fadd <2 x float> %i.pb, %.sroa.0.0.copyload.i681
  store <2 x float> %.sroa.0.0.copyload.i681, ptr %18, align 16, !tbaa !41
  store <2 x float> %i.qm, ptr %i.lj, align 8, !tbaa !41
  %i.qn = load float, ptr %i.pd, align 4, !tbaa !630
  %i.qo = fcmp une float %i.qn, 0.000000e+00
  br i1 %i.qo, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qp = load float, ptr %i.po, align 4, !tbaa !631
  %i.qq = fcmp une float %i.qp, 0.000000e+00
  br i1 %i.qq, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store <2 x float> %.sroa.0.0.copyload.i681, ptr %19, align 16
  %i.qr = load <4 x float>, ptr %18, align 16     ; 5 uses
  %.sroa.0.4.vec.insert.i683 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i683, ptr %i.lk, align 8
  %bc = bitcast <4 x float> %i.qr to <2 x i64>
  %i.qs = extractelement <2 x i64> %bc, i64 1     ; 2 uses
  store i64 %i.qs, ptr %i.ll, align 16
  %.sroa.0.4.vec.insert.i686 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i686, ptr %i.lm, align 8
  %50 = trunc i64 %i.qs to i32
  %51 = load <2 x float>, ptr %i.ot, align 4, !tbaa !41 ; 2 uses
  %52 = bitcast i32 %50 to float
  %53 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> zeroinitializer
  %54 = shufflevector <2 x float> %.sroa.0.0.copyload.i681, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %55 = shufflevector <4 x float> %54, <4 x float> %i.qr, <4 x i32> <i32 0, i32 6, i32 poison, i32 4>
  %56 = insertelement <4 x float> %55, float %52, i64 2
  %57 = fsub <4 x float> %53, %56                 ; 2 uses
  %58 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %59 = shufflevector <4 x float> %54, <4 x float> %i.qr, <4 x i32> <i32 1, i32 5, i32 7, i32 7>
  %60 = fsub <4 x float> %58, %59                 ; 2 uses
  %61 = fmul <4 x float> %60, %60
  %62 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %57, <4 x float> %57, <4 x float> %61) ; 4 uses
  %i.qt = extractelement <4 x float> %62, i64 0   ; 2 uses
  %i.qu = fcmp olt float %i.qt, f0x7F7FFFFF
  %.1 = select i1 %i.qu, float %i.qt, float f0x7F7FFFFF ; 2 uses
  %i.qv = extractelement <4 x float> %62, i64 1   ; 2 uses
  %i.qw = fcmp olt float %i.qv, %.1               ; 2 uses
  %.1.1 = select i1 %i.qw, float %i.qv, float %.1 ; 2 uses
  %i.qx = extractelement <4 x float> %62, i64 2   ; 2 uses
  %i.qy = fcmp olt float %i.qx, %.1.1             ; 2 uses
  %.1.2 = select i1 %i.qy, float %i.qx, float %.1.1
  %i.qz = extractelement <4 x float> %62, i64 3
  %i.ra = fcmp olt float %i.qz, %.1.2
  %i.rb = zext i1 %i.qw to i64
  %i.rc = select i1 %i.qy, i64 2, i64 %i.rb
  %i.rd = select i1 %i.ra, i64 3, i64 %i.rc
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !633
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.ot, ptr noundef nonnull align 4 dereferenceable(8) %i.re, i32 noundef %i.rg, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !633
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %i.lj, i32 noundef %i.ri, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.rj = load <2 x float>, ptr %i.li, align 4, !tbaa !41
  %i.rk = fadd <2 x float> %.sroa.0.0.copyload.i681, %i.rj
  store <2 x float> %i.rk, ptr %20, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ot, i64 20
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !634
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %i.rm, ptr noundef %i.ox, ptr noundef null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %i.rn = load i32, ptr %i.ld, align 8, !tbaa !625
  %i.ro = sext i32 %i.rn to i64
  %i.rp = icmp slt i64 %indvars.iv.next1148, %i.ro
  br i1 %i.rp, label %bb.by, label %._crit_edge1096, !llvm.loop !613

bb.co:                                            ; preds = %._crit_edge1096
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.rq = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.rr = load <2 x float>, ptr %i.rq, align 8, !tbaa !41
  %i.rs = load <2 x float>, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.rt = fadd <2 x float> %i.rr, %i.rs
  store <2 x float> %i.rt, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.ru = getelementptr inbounds nuw i8, ptr %i.q, i64 2528
  %i.rv = load <2 x float>, ptr %i.ru, align 8, !tbaa !41
  %i.rw = fadd <2 x float> %i.rs, %i.rv
  store <2 x float> %i.rw, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.rx = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 744
  %.val.i.i695 = load float, ptr %i.ry, align 4, !tbaa !46
  %i.rz = fcmp oeq float %.val.i.i695, -1.000000e+00
  br i1 %i.rz, label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 732
  %.sroa.0.0.copyload.i696 = load <2 x float>, ptr %i.sa, align 4, !tbaa !41
  %.sroa.3.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %i.rx, i64 740
  %.sroa.3.0.copyload.i698 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i697, align 4, !tbaa !41
  %i.sb = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i696, 0
  %i.sc = insertvalue { <2 x float>, <2 x float> } %i.sb, <2 x float> %.sroa.3.0.copyload.i698, 1
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700

_ZN6ImPlotL17GetStyleColorVec4Ei.exit700:         ; preds = %bb.co, %bb.cp
  %.fca.1.insert.merged.i699 = phi { <2 x float>, <2 x float> } [ %i.sc, %bb.cp ], [ { <2 x float> splat (float 1.000000e+00), <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.co ] ; 2 uses
  %i.sd = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 0
  store <2 x float> %i.sd, ptr %23, align 16
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.sf = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 1
  store <2 x float> %i.sf, ptr %i.se, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.sg = load <4 x float>, ptr %23, align 16     ; 3 uses
  %.sroa.3.8.vec.insert.i.i = shufflevector <4 x float> %i.sg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sh = extractelement <4 x float> %i.sg, i64 3
  %i.si = fmul float %i.sh, 2.500000e-01
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.sg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.si, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %5, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.sj, align 8
  %i.sk = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.sl = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %23) #32
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sk, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sl, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, %._crit_edge1096
  %i.sm = load i32, ptr %i.fh, align 4, !tbaa !326 ; 5 uses
  %i.sn = and i32 %i.sm, 256
  %.not1041 = icmp eq i32 %i.sn, 0
  br i1 %.not1041, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.so = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.sp = load i8, ptr %i.so, align 8, !tbaa !368, !range !263, !noundef !264
  %i.sq = trunc nuw i8 %i.sp to i1
  %.not9 = xor i1 %i.sq, true
  %or.cond11 = or i1 %i.bt, %.not9
  %or.cond13 = or i1 %i.bu, %or.cond11
  br i1 %or.cond13, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sr = getelementptr inbounds nuw i8, ptr %i.q, i64 2554
  %i.ss = load i8, ptr %i.sr, align 2, !tbaa !361, !range !263, !noundef !264
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.su = getelementptr inbounds nuw i8, ptr %i.q, i64 2392
  %i.sv = load i8, ptr %i.su, align 8, !tbaa !441, !range !263, !noundef !264
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef -1) #32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.sy = load float, ptr %i.by, align 8, !tbaa !358
  store float %i.sy, ptr %24, align 4, !tbaa !172
  %i.sz = getelementptr inbounds nuw i8, ptr %24, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.ta = load <2 x float>, ptr %i.sx, align 8, !tbaa !41 ; 6 uses
  %i.tb = fadd <2 x float> %i.ta, <float -5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.tb, ptr %25, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.tc = extractelement <2 x float> %i.ta, i64 1 ; 2 uses
  store float %i.tc, ptr %i.sz, align 4, !tbaa !173
  %i.td = fadd <2 x float> %i.ta, <float 5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.td, ptr %26, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.te = load float, ptr %i.ha, align 8, !tbaa !359
  store float %i.te, ptr %27, align 4, !tbaa !172
  %i.tf = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.tc, ptr %i.tf, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.tg = load float, ptr %i.hh, align 4, !tbaa !373
  %i.th = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.tg, ptr %i.th, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.ti = fadd <2 x float> %i.ta, <float -0.000000e+00, float -5.000000e+00>
  store <2 x float> %i.ti, ptr %29, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.tj = extractelement <2 x float> %i.ta, i64 0 ; 2 uses
  store float %i.tj, ptr %28, align 4, !tbaa !172
  %i.tk = fadd <2 x float> %i.ta, <float -0.000000e+00, float 5.000000e+00>
  store <2 x float> %i.tk, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.tl = load float, ptr %i.hi, align 4, !tbaa !374
  store float %i.tj, ptr %31, align 4, !tbaa !172
  %i.tm = getelementptr inbounds nuw i8, ptr %31, i64 4
  store float %i.tl, ptr %i.tm, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.tn = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 6 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 760
  %.val.i.i.i701 = load float, ptr %i.to, align 4, !tbaa !46
  %i.tp = fcmp oeq float %.val.i.i.i701, -1.000000e+00
  br i1 %i.tp, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.tq = getelementptr i8, ptr %i.tn, i64 552
  %.val.i46.i = load float, ptr %i.tq, align 4, !tbaa !46
  %i.tr = fcmp oeq float %.val.i46.i, -1.000000e+00
  br i1 %i.tr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ts = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !1 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cx:                                            ; preds = %bb.cv
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 540
  %.sroa.3.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 548
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cy:                                            ; preds = %bb.cu
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 748
  %.sroa.3.0..sroa_idx.i.i703 = getelementptr inbounds nuw i8, ptr %i.tn, i64 756
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

_ZN6ImPlotL16GetStyleColorU32Ei.exit706:          ; preds = %bb.cx, %bb.cw, %bb.cy
  %.sroa.0195.0.copyload.pn.i.pn.in = phi ptr [ %i.tu, %bb.cy ], [ %i.ts, %bb.cw ], [ %i.tt, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn.in = phi ptr [ %.sroa.3.0..sroa_idx.i.i703, %bb.cy ], [ %.sroa.4196.0..sroa_idx.i, %bb.cw ], [ %.sroa.3.0..sroa_idx.i17.i, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.4196.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  %.sroa.0195.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.0195.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.0195.0.copyload.pn.i.pn, ptr %4, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.4196.0.copyload.pn.i.pn, ptr %i.tv, align 8
  %i.tw = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, i32 noundef %i.tw, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %27, i32 noundef %i.tw, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %29, i32 noundef %i.tw, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef %i.tw, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
end_hunk_0
begin_hunk_1_@_ZN10ImPlotPlotC2Ev:.preheader.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2394
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fg, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.ff, align 2, !tbaa !316
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2393
  store i8 0, ptr %i.fh, align 1, !tbaa !757
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2392
  store i8 0, ptr %i.fi, align 8, !tbaa !444
  store <4 x i32> <i32 0, i32 0, i32 5, i32 5>, ptr %i.fc, align 8, !tbaa !29
  store i32 0, ptr %i.fd, align 8, !tbaa !41
  store i32 0, ptr %i.fe, align 4, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store i32 0, ptr %i.fb, align 8, !tbaa !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.fj, i8 0, i64 44, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2540
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 389
  store i8 0, ptr %i.fo, align 1, !tbaa !331
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 765
  store i8 0, ptr %i.fp, align 1, !tbaa !331
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1141
  store <4 x i8> zeroinitializer, ptr %i.fq, align 1, !tbaa !262
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, i8 0, i64 80, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.fr, align 1, !tbaa !262
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1893
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.fs, align 1, !tbaa !262
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2269
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ft, align 1, !tbaa !262
  store i32 0, ptr %i.fl, align 8, !tbaa !41
  store i32 0, ptr %i.fm, align 4, !tbaa !41
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2448
  store i32 0, ptr %i.fu, align 8, !tbaa !418
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2452
  store i32 3, ptr %i.fv, align 4, !tbaa !419
  store <4 x i32> <i32 0, i32 0, i32 10, i32 0>, ptr %i.fn, align 4, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i32 -1, ptr %i.fw, align 8, !tbaa !329
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i8 1, ptr %i.fx, align 4, !tbaa !385
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2549
  store i64 0, ptr %i.fy, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6ImPoolI13ImPlotSubplotE3AddEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !243  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !495
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.b, 1                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !240  ; 4 uses
  %.not = icmp slt i32 %i.b, %i.g
  br i1 %.not, label %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge, label %bb.c

._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !239
  br label %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.g, 2
  %i.i = add nsw i32 %i.h, %i.g
  br label %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 8, %bb.c ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.e) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 336
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) #32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %0, align 8, !tbaa !241
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !239
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !239
  store i32 %i.k, ptr %i.f, align 4, !tbaa !240
  %.pre = load i32, ptr %i.a, align 8, !tbaa !243
  %.pre7 = add nsw i32 %.pre, 1
  br label %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit

_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit:      ; preds = %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge, %bb.f
  %.pre-phi = phi i32 [ %i.e, %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge ], [ %.pre7, %bb.f ]
  %.pre5 = phi ptr [ %.pre5.pre, %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge ], [ %i.n, %bb.f ]
  store i32 %i.e, ptr %0, align 8, !tbaa !241
  %.pre8 = sext i32 %i.b to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 2 uses
  %i.w = sext i32 %i.b to i64                     ; 2 uses
  %i.x = getelementptr inbounds [336 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit
  %.pre-phi9 = phi i64 [ %i.w, %bb.g ], [ %.pre8, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ] ; 2 uses
  %i.z = phi ptr [ %i.v, %bb.g ], [ %.pre5, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ]
  %storemerge = phi i32 [ %i.y, %bb.g ], [ %.pre-phi, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !243
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds [336 x i8], ptr %i.z, i64 %.pre-phi9 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 114
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.ah, i8 0, i64 66, i1 false)
  store i32 0, ptr %i.ae, align 8, !tbaa !41
  store i32 0, ptr %i.af, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store i32 0, ptr %i.ac, align 8, !tbaa !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ai, i8 0, i64 44, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  store i32 0, ptr %i.ab, align 8, !tbaa !454
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !456
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !322
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i8 0, i64 96, i1 false)
  store <4 x i32> <i32 48, i32 0, i32 1, i32 5>, ptr %i.ad, align 8, !tbaa !29
  store i8 0, ptr %i.ag, align 2, !tbaa !758
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.an, i8 0, i64 10, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !242
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !242
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !239
  %i.as = getelementptr inbounds [336 x i8], ptr %i.ar, i64 %.pre-phi9
  ret ptr %i.as
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{ptr @_ZN6ImPlot12GetAutoColorEi, null}
!1 = distinct !{ptr @_ZN6ImPlot12GetAutoColorEi, null, ptr @_ZN6ImPlot12GetAutoColorEi, null}
!2 = distinct !{!2, !171}
!3 = distinct !{!3, !171}
!4 = distinct !{!4, !171}
!5 = distinct !{!5, !171}
!6 = distinct !{!6, !171}
!7 = distinct !{!7, !171}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{!13, !171}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"float", !22, i64 0}
!27 = !{!"_ZTS14ImPlotInputMap", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !26, i64 44}
!28 = !{!27, !23, i64 32}
!29 = !{!23, !23, i64 0}
!30 = !{!27, !23, i64 36}
!31 = !{!27, !23, i64 40}
!32 = !{!27, !26, i64 44}
!33 = !{!"any pointer", !22, i64 0}
!34 = !{!"p1 _ZTS13ImPlotContext", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTS6ImVec2", !26, i64 0, !26, i64 4}
!37 = !{!"bool", !22, i64 0}
!38 = !{!"_ZTS11ImPlotStyle", !26, i64 0, !23, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !36, i64 44, !36, i64 52, !36, i64 60, !36, i64 68, !36, i64 76, !36, i64 84, !36, i64 92, !36, i64 100, !36, i64 108, !36, i64 116, !36, i64 124, !36, i64 132, !36, i64 140, !36, i64 148, !36, i64 156, !36, i64 164, !22, i64 172, !23, i64 508, !37, i64 512, !37, i64 513, !37, i64 514}
!39 = !{!38, !26, i64 0}
!40 = !{!38, !23, i64 4}
!41 = !{!26, !26, i64 0}
!42 = !{!38, !26, i64 40}
!43 = !{!"p1 omnipotent char", !33, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTS6ImVec4", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!46 = !{!45, !26, i64 12}
!47 = !{!"p1 _ZTS12ImGuiContext", !33, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTS11ImFontAtlas", !33, i64 0}
!50 = !{!"p1 _ZTS6ImFont", !33, i64 0}
!51 = !{!"_ZTS16ImGuiMouseSource", !22, i64 0}
!52 = !{!"short", !22, i64 0}
!53 = !{!"p1 short", !33, i64 0}
!54 = !{!"_ZTS8ImVectorItE", !23, i64 0, !23, i64 4, !53, i64 8}
!55 = !{!"_ZTS7ImGuiIO", !23, i64 0, !23, i64 4, !36, i64 8, !36, i64 16, !26, i64 24, !26, i64 28, !43, i64 32, !43, i64 40, !33, i64 48, !49, i64 56, !50, i64 64, !37, i64 72, !37, i64 73, !37, i64 74, !37, i64 75, !37, i64 76, !37, i64 77, !37, i64 78, !37, i64 79, !37, i64 80, !37, i64 81, !37, i64 82, !37, i64 83, !37, i64 84, !37, i64 85, !37, i64 86, !37, i64 87, !37, i64 88, !37, i64 89, !26, i64 92, !26, i64 96, !26, i64 100, !26, i64 104, !26, i64 108, !26, i64 112, !37, i64 116, !37, i64 117, !37, i64 118, !37, i64 119, !37, i64 120, !37, i64 121, !37, i64 122, !37, i64 123, !37, i64 124, !37, i64 125, !37, i64 126, !43, i64 128, !43, i64 136, !33, i64 144, !33, i64 152, !33, i64 160, !37, i64 168, !37, i64 169, !37, i64 170, !37, i64 171, !37, i64 172, !37, i64 173, !37, i64 174, !26, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !36, i64 196, !47, i64 208, !36, i64 216, !22, i64 224, !26, i64 232, !26, i64 236, !51, i64 240, !37, i64 244, !37, i64 245, !37, i64 246, !37, i64 247, !23, i64 248, !22, i64 252, !37, i64 2732, !36, i64 2736, !22, i64 2744, !22, i64 2784, !22, i64 2824, !22, i64 2829, !22, i64 2834, !22, i64 2844, !22, i64 2854, !22, i64 2864, !22, i64 2904, !22, i64 2909, !37, i64 2914, !37, i64 2915, !22, i64 2916, !22, i64 2936, !22, i64 2956, !26, i64 2976, !37, i64 2980, !37, i64 2981, !52, i64 2982, !54, i64 2984, !26, i64 3000, !33, i64 3008, !33, i64 3016, !33, i64 3024}
!56 = !{!"any p2 pointer", !33, i64 0}
!57 = !{!"p2 _ZTS13ImTextureData", !56, i64 0}
!58 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !23, i64 0, !23, i64 4, !57, i64 8}
!59 = !{!"_ZTS15ImGuiPlatformIO", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !52, i64 56, !23, i64 60, !23, i64 64, !33, i64 72, !58, i64 80}
!60 = !{!"_ZTS8ImGuiDir", !22, i64 0}
!61 = !{!"_ZTS10ImGuiStyle", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !36, i64 20, !26, i64 28, !26, i64 32, !26, i64 36, !36, i64 40, !36, i64 48, !60, i64 56, !26, i64 60, !26, i64 64, !26, i64 68, !26, i64 72, !36, i64 76, !26, i64 84, !26, i64 88, !36, i64 92, !36, i64 100, !36, i64 108, !36, i64 116, !26, i64 124, !26, i64 128, !26, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !36, i64 184, !23, i64 192, !26, i64 196, !26, i64 200, !60, i64 204, !36, i64 208, !36, i64 216, !26, i64 224, !36, i64 228, !36, i64 236, !36, i64 244, !36, i64 252, !26, i64 260, !37, i64 264, !37, i64 265, !37, i64 266, !26, i64 268, !26, i64 272, !22, i64 276, !26, i64 1204, !26, i64 1208, !26, i64 1212, !23, i64 1216, !23, i64 1220, !26, i64 1224, !26, i64 1228}
!62 = !{!"p2 _ZTS11ImFontAtlas", !56, i64 0}
!63 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !23, i64 0, !23, i64 4, !62, i64 8}
!64 = !{!"p1 _ZTS11ImFontBaked", !33, i64 0}
!65 = !{!"p1 _ZTS6ImVec4", !33, i64 0}
!66 = !{!"p1 _ZTS6ImVec2", !33, i64 0}
!67 = !{!"_ZTS8ImVectorI6ImVec2E", !23, i64 0, !23, i64 4, !66, i64 8}
!68 = !{!"p2 _ZTS10ImDrawList", !56, i64 0}
!69 = !{!"_ZTS8ImVectorIP10ImDrawListE", !23, i64 0, !23, i64 4, !68, i64 8}
!70 = !{!"_ZTS20ImDrawListSharedData", !36, i64 0, !65, i64 8, !49, i64 16, !50, i64 24, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !23, i64 52, !45, i64 56, !67, i64 72, !69, i64 88, !47, i64 104, !22, i64 112, !26, i64 496, !22, i64 500}
!71 = !{!"double", !22, i64 0}
!72 = !{!"p1 _ZTS15ImGuiInputEvent", !33, i64 0}
!73 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !23, i64 0, !23, i64 4, !72, i64 8}
!74 = !{!"p2 _ZTS11ImGuiWindow", !56, i64 0}
!75 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !23, i64 0, !23, i64 4, !74, i64 8}
!76 = !{!"p1 _ZTS20ImGuiWindowStackData", !33, i64 0}
!77 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !23, i64 0, !23, i64 4, !76, i64 8}
!78 = !{!"p1 _ZTS16ImGuiStoragePair", !33, i64 0}
!79 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !23, i64 0, !23, i64 4, !78, i64 8}
!80 = !{!"_ZTS12ImGuiStorage", !79, i64 0}
!81 = !{!"p1 _ZTS11ImGuiWindow", !33, i64 0}
!82 = !{!"_ZTS16ImGuiInputSource", !22, i64 0}
!83 = !{!"_ZTS24ImGuiDeactivatedItemData", !23, i64 0, !23, i64 4, !37, i64 8, !37, i64 9}
!84 = !{!"_ZTS20ImGuiDataTypeStorage", !22, i64 0}
!85 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !22, i64 0}
!86 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !33, i64 0}
!87 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !23, i64 0, !23, i64 4, !86, i64 8}
!88 = !{!"_ZTS20ImGuiKeyRoutingTable", !22, i64 0, !87, i64 312, !87, i64 328}
!89 = !{!"long long", !22, i64 0}
!90 = !{!"_ZTS17ImGuiNextItemData", !23, i64 0, !23, i64 4, !23, i64 8, !89, i64 16, !26, i64 24, !23, i64 28, !23, i64 32, !37, i64 36, !22, i64 37, !84, i64 38, !23, i64 48}
!91 = !{!"_ZTS6ImRect", !36, i64 0, !36, i64 8}
!92 = !{!"_ZTS17ImGuiLastItemData", !23, i64 0, !23, i64 4, !23, i64 8, !91, i64 12, !91, i64 28, !91, i64 44, !91, i64 60, !23, i64 76}
!93 = !{!"_ZTS19ImGuiNextWindowData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !23, i64 56, !23, i64 60, !37, i64 64, !91, i64 68, !33, i64 88, !33, i64 96, !26, i64 104, !36, i64 108, !23, i64 116}
!94 = !{!"p1 _ZTS13ImGuiColorMod", !33, i64 0}
!95 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !23, i64 0, !23, i64 4, !94, i64 8}
!96 = !{!"p1 _ZTS13ImGuiStyleMod", !33, i64 0}
!97 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !23, i64 0, !23, i64 4, !96, i64 8}
!98 = !{!"p1 _ZTS15ImFontStackData", !33, i64 0}
!99 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !23, i64 0, !23, i64 4, !98, i64 8}
!100 = !{!"p1 _ZTS19ImGuiFocusScopeData", !33, i64 0}
!101 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !23, i64 0, !23, i64 4, !100, i64 8}
!102 = !{!"p1 int", !33, i64 0}
!103 = !{!"_ZTS8ImVectorIiE", !23, i64 0, !23, i64 4, !102, i64 8}
!104 = !{!"p1 _ZTS14ImGuiGroupData", !33, i64 0}
!105 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !23, i64 0, !23, i64 4, !104, i64 8}
!106 = !{!"p1 _ZTS14ImGuiPopupData", !33, i64 0}
!107 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !23, i64 0, !23, i64 4, !106, i64 8}
!108 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !33, i64 0}
!109 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !23, i64 0, !23, i64 4, !108, i64 8}
!110 = !{!"p2 _ZTS14ImGuiViewportP", !56, i64 0}
!111 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !23, i64 0, !23, i64 4, !110, i64 8}
!112 = !{!"_ZTS13ImGuiNavLayer", !22, i64 0}
!113 = !{!"_ZTS16ImGuiNavItemData", !81, i64 0, !23, i64 8, !23, i64 12, !91, i64 16, !23, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !89, i64 48}
!114 = !{!"_ZTS8ImGuiKey", !22, i64 0}
!115 = !{!"_ZTS12ImGuiPayload", !33, i64 0, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !22, i64 24, !37, i64 57, !37, i64 58}
!116 = !{!"_ZTS8ImVectorIhE", !23, i64 0, !23, i64 4, !43, i64 8}
!117 = !{!"p1 _ZTS20ImGuiListClipperData", !33, i64 0}
!118 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !23, i64 0, !23, i64 4, !117, i64 8}
!119 = !{!"p1 _ZTS10ImGuiTable", !33, i64 0}
!120 = !{!"p1 _ZTS18ImGuiTableTempData", !33, i64 0}
!121 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !23, i64 0, !23, i64 4, !120, i64 8}
!122 = !{!"_ZTS8ImVectorI10ImGuiTableE", !23, i64 0, !23, i64 4, !119, i64 8}
!123 = !{!"_ZTS6ImPoolI10ImGuiTableE", !122, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!124 = !{!"p1 float", !33, i64 0}
!125 = !{!"_ZTS8ImVectorIfE", !23, i64 0, !23, i64 4, !124, i64 8}
!126 = !{!"p1 _ZTS13ImDrawChannel", !33, i64 0}
!127 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !23, i64 0, !23, i64 4, !126, i64 8}
!128 = !{!"p1 _ZTS11ImGuiTabBar", !33, i64 0}
!129 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !23, i64 0, !23, i64 4, !128, i64 8}
!130 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !129, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!131 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !33, i64 0}
!132 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !23, i64 0, !23, i64 4, !131, i64 8}
!133 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !33, i64 0}
!134 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !23, i64 0, !23, i64 4, !133, i64 8}
!135 = !{!"_ZTS19ImGuiBoxSelectState", !23, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !23, i64 9, !36, i64 12, !36, i64 20, !36, i64 28, !81, i64 40, !37, i64 48, !91, i64 52, !91, i64 68, !91, i64 84}
!136 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !33, i64 0}
!137 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !23, i64 0, !23, i64 4, !136, i64 8}
!138 = !{!"p1 _ZTS21ImGuiMultiSelectState", !33, i64 0}
!139 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !23, i64 0, !23, i64 4, !138, i64 8}
!140 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !139, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!141 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !33, i64 0}
!142 = !{!"_ZTS8ImVectorIcE", !23, i64 0, !23, i64 4, !43, i64 8}
!143 = !{!"_ZTS19ImGuiInputTextState", !47, i64 0, !141, i64 8, !23, i64 16, !23, i64 20, !23, i64 24, !43, i64 32, !142, i64 40, !142, i64 56, !142, i64 72, !23, i64 88, !36, i64 92, !26, i64 100, !37, i64 104, !37, i64 105, !37, i64 106, !37, i64 107, !23, i64 108, !23, i64 112}
!144 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !23, i64 0, !142, i64 8}
!145 = !{!"p1 _ZTS11ImFontGlyph", !33, i64 0}
!146 = !{!"_ZTS8ImVectorI11ImFontGlyphE", !23, i64 0, !23, i64 4, !145, i64 8}
!147 = !{!"_ZTS11ImFontBaked", !125, i64 0, !26, i64 16, !26, i64 20, !26, i64 24, !54, i64 32, !146, i64 48, !23, i64 64, !26, i64 68, !26, i64 72, !23, i64 76, !23, i64 79, !23, i64 79, !23, i64 80, !23, i64 84, !50, i64 88, !33, i64 96}
!148 = !{!"_ZTS21ImGuiComboPreviewData", !91, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !26, i64 40, !23, i64 44}
!149 = !{!"_ZTS8ImVectorIjE", !23, i64 0, !23, i64 4, !102, i64 8}
!150 = !{!"_ZTS24ImGuiTypingSelectRequest", !23, i64 0, !23, i64 4, !43, i64 8, !37, i64 16, !37, i64 17, !22, i64 18}
!151 = !{!"_ZTS22ImGuiTypingSelectState", !150, i64 0, !22, i64 24, !23, i64 88, !23, i64 92, !26, i64 96, !37, i64 100}
!152 = !{!"_ZTS20ImGuiPlatformImeData", !37, i64 0, !37, i64 1, !36, i64 4, !26, i64 12, !23, i64 16}
!153 = !{!"_ZTS15ImGuiTextBuffer", !142, i64 0}
!154 = !{!"p1 _ZTS20ImGuiSettingsHandler", !33, i64 0}
!155 = !{!"_ZTS8ImVectorI20ImGuiSettingsHandlerE", !23, i64 0, !23, i64 4, !154, i64 8}
!156 = !{!"_ZTS13ImChunkStreamI19ImGuiWindowSettingsE", !142, i64 0}
!157 = !{!"_ZTS13ImChunkStreamI18ImGuiTableSettingsE", !142, i64 0}
end_hunk_1
