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
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %indvars.iv1147 ; 11 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !629
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.or, i64 %i.ow ; 2 uses
  %i.oy = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.ox, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  %i.oz = load <2 x float>, ptr %i.li, align 4, !tbaa !41
  %i.pa = fmul <2 x float> %i.oz, splat (float 2.000000e+00)
  %i.pb = fadd <2 x float> %i.oy, %i.pa           ; 9 uses
  %i.pc = load <2 x float>, ptr %i.ot, align 4    ; 6 uses
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
  store <2 x float> %.sroa.0.0.copyload.i681, ptr %18, align 16
  store <2 x float> %i.qm, ptr %i.lj, align 8
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
  %i.qr = load <4 x float>, ptr %18, align 16     ; 7 uses
  %.sroa.0.0.vec.insert.i682 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %.sroa.0.4.vec.insert.i683 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i683, ptr %i.lk, align 8
  %bc = bitcast <4 x float> %i.qr to <2 x i64>
  %i.qs = extractelement <2 x i64> %bc, i64 1     ; 2 uses
  store i64 %i.qs, ptr %i.ll, align 16
  %.sroa.0.4.vec.insert.i686 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i686, ptr %i.lm, align 8
  %50 = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.qt = shufflevector <2 x float> %.sroa.0.0.copyload.i681, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qu = shufflevector <4 x float> %i.qt, <4 x float> %i.qr, <2 x i32> <i32 0, i32 6>
  %51 = shufflevector <4 x float> %i.qt, <4 x float> %i.qr, <2 x i32> <i32 1, i32 5>
  %52 = trunc i64 %i.qs to i32
  %53 = load float, ptr %50, align 4, !tbaa !173
  %54 = load float, ptr %i.ot, align 4, !tbaa !172
  %55 = insertelement <2 x float> poison, float %54, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qv = fsub <2 x float> %56, %i.qu             ; 2 uses
  %57 = insertelement <2 x float> poison, float %53, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qw = fsub <2 x float> %58, %51               ; 2 uses
  %i.qx = fmul <2 x float> %i.qw, %i.qw
  %i.qy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qv, <2 x float> %i.qv, <2 x float> %i.qx) ; 2 uses
  %i.qz = extractelement <2 x float> %i.qy, i64 0 ; 2 uses
  %i.ra = fcmp olt float %i.qz, f0x7F7FFFFF
  %.1 = select i1 %i.ra, float %i.qz, float f0x7F7FFFFF ; 2 uses
  %i.rb = extractelement <2 x float> %i.qy, i64 1 ; 2 uses
  %i.rc = fcmp olt float %i.rb, %.1               ; 2 uses
  %.1.1 = select i1 %i.rc, float %i.rb, float %.1 ; 2 uses
  %i.rd = bitcast i32 %52 to float
  %i.re = insertelement <2 x float> %.sroa.0.0.vec.insert.i682, float %i.rd, i64 0
  %i.rf = fsub <2 x float> %56, %i.re             ; 2 uses
  %i.rg = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.rh = fsub <2 x float> %58, %i.rg             ; 2 uses
  %i.ri = fmul <2 x float> %i.rh, %i.rh
  %i.rj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rf, <2 x float> %i.rf, <2 x float> %i.ri) ; 2 uses
  %i.rk = extractelement <2 x float> %i.rj, i64 0 ; 2 uses
  %i.rl = fcmp olt float %i.rk, %.1.1             ; 2 uses
  %.1.2 = select i1 %i.rl, float %i.rk, float %.1.1
  %i.rm = extractelement <2 x float> %i.rj, i64 1
  %i.rn = fcmp olt float %i.rm, %.1.2
  %i.ro = zext i1 %i.rc to i64
  %i.rp = select i1 %i.rl, i64 2, i64 %i.ro
  %i.rq = select i1 %i.rn, i64 3, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !633
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.ot, ptr noundef nonnull align 4 dereferenceable(8) %i.rr, i32 noundef %i.rt, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !633
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %i.lj, i32 noundef %i.rv, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.rw = load <2 x float>, ptr %i.li, align 4, !tbaa !41
  %i.rx = fadd <2 x float> %.sroa.0.0.copyload.i681, %i.rw
  store <2 x float> %i.rx, ptr %20, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ot, i64 20
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !634
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %i.rz, ptr noundef %i.ox, ptr noundef null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %i.sa = load i32, ptr %i.ld, align 8, !tbaa !625
  %i.sb = sext i32 %i.sa to i64
  %i.sc = icmp slt i64 %indvars.iv.next1148, %i.sb
  br i1 %i.sc, label %bb.by, label %._crit_edge1096, !llvm.loop !613

bb.co:                                            ; preds = %._crit_edge1096
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.se = load <2 x float>, ptr %i.sd, align 8, !tbaa !41
  %i.sf = load <2 x float>, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sg = fadd <2 x float> %i.se, %i.sf
  store <2 x float> %i.sg, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.sh = getelementptr inbounds nuw i8, ptr %i.q, i64 2528
  %i.si = load <2 x float>, ptr %i.sh, align 8, !tbaa !41
  %i.sj = fadd <2 x float> %i.sf, %i.si
  store <2 x float> %i.sj, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.sk = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 744
  %.val.i.i695 = load float, ptr %i.sl, align 4, !tbaa !46
  %i.sm = fcmp oeq float %.val.i.i695, -1.000000e+00
  br i1 %i.sm, label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 732
  %.sroa.0.0.copyload.i696 = load <2 x float>, ptr %i.sn, align 4
  %.sroa.3.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %i.sk, i64 740
  %.sroa.3.0.copyload.i698 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i697, align 4
  %i.so = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i696, 0
  %i.sp = insertvalue { <2 x float>, <2 x float> } %i.so, <2 x float> %.sroa.3.0.copyload.i698, 1
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700

_ZN6ImPlotL17GetStyleColorVec4Ei.exit700:         ; preds = %bb.co, %bb.cp
  %.fca.1.insert.merged.i699 = phi { <2 x float>, <2 x float> } [ %i.sp, %bb.cp ], [ { <2 x float> splat (float 1.000000e+00), <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.co ] ; 2 uses
  %i.sq = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 0
  store <2 x float> %i.sq, ptr %23, align 16
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ss = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 1
  store <2 x float> %i.ss, ptr %i.sr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.st = load <4 x float>, ptr %23, align 16     ; 3 uses
  %.sroa.3.8.vec.insert.i.i = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.su = extractelement <4 x float> %i.st, i64 3
  %i.sv = fmul float %i.su, 2.500000e-01
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.sv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %5, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.sw, align 8
  %i.sx = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.sy = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %23) #32
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sx, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sy, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, %._crit_edge1096
  %i.sz = load i32, ptr %i.fh, align 4, !tbaa !326 ; 5 uses
  %i.ta = and i32 %i.sz, 256
  %.not1041 = icmp eq i32 %i.ta, 0
  br i1 %.not1041, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tb = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !368, !range !263, !noundef !264
  %i.td = trunc nuw i8 %i.tc to i1
  %.not9 = xor i1 %i.td, true
  %or.cond11 = or i1 %i.bt, %.not9
  %or.cond13 = or i1 %i.bu, %or.cond11
  br i1 %or.cond13, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.te = getelementptr inbounds nuw i8, ptr %i.q, i64 2554
  %i.tf = load i8, ptr %i.te, align 2, !tbaa !361, !range !263, !noundef !264
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.th = getelementptr inbounds nuw i8, ptr %i.q, i64 2392
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !441, !range !263, !noundef !264
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef -1) #32
  %i.tk = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.tl = load float, ptr %i.by, align 8, !tbaa !358
  store float %i.tl, ptr %24, align 4, !tbaa !172
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.tn = load <2 x float>, ptr %i.tk, align 8, !tbaa !41 ; 6 uses
  %i.to = fadd <2 x float> %i.tn, <float -5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.to, ptr %25, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.tp = extractelement <2 x float> %i.tn, i64 1 ; 2 uses
  store float %i.tp, ptr %i.tm, align 4, !tbaa !173
  %i.tq = fadd <2 x float> %i.tn, <float 5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.tq, ptr %26, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.tr = load float, ptr %i.ha, align 8, !tbaa !359
  store float %i.tr, ptr %27, align 4, !tbaa !172
  %i.ts = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.tp, ptr %i.ts, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.tt = load float, ptr %i.hh, align 4, !tbaa !373
  %i.tu = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.tt, ptr %i.tu, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.tv = fadd <2 x float> %i.tn, <float -0.000000e+00, float -5.000000e+00>
  store <2 x float> %i.tv, ptr %29, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.tw = extractelement <2 x float> %i.tn, i64 0 ; 2 uses
  store float %i.tw, ptr %28, align 4, !tbaa !172
  %i.tx = fadd <2 x float> %i.tn, <float -0.000000e+00, float 5.000000e+00>
  store <2 x float> %i.tx, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.ty = load float, ptr %i.hi, align 4, !tbaa !374
  store float %i.tw, ptr %31, align 4, !tbaa !172
  %i.tz = getelementptr inbounds nuw i8, ptr %31, i64 4
  store float %i.ty, ptr %i.tz, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ua = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 6 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 760
  %.val.i.i.i701 = load float, ptr %i.ub, align 4, !tbaa !46
  %i.uc = fcmp oeq float %.val.i.i.i701, -1.000000e+00
  br i1 %i.uc, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.ud = getelementptr i8, ptr %i.ua, i64 552
  %.val.i46.i = load float, ptr %i.ud, align 4, !tbaa !46
  %i.ue = fcmp oeq float %.val.i46.i, -1.000000e+00
  br i1 %i.ue, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.uf = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !1 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cx:                                            ; preds = %bb.cv
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ua, i64 540
  %.sroa.3.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 548
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cy:                                            ; preds = %bb.cu
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 748
  %.sroa.3.0..sroa_idx.i.i703 = getelementptr inbounds nuw i8, ptr %i.ua, i64 756
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

_ZN6ImPlotL16GetStyleColorU32Ei.exit706:          ; preds = %bb.cx, %bb.cw, %bb.cy
  %.sroa.0195.0.copyload.pn.i.pn.in = phi ptr [ %i.uh, %bb.cy ], [ %i.uf, %bb.cw ], [ %i.ug, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn.in = phi ptr [ %.sroa.3.0..sroa_idx.i.i703, %bb.cy ], [ %.sroa.4196.0..sroa_idx.i, %bb.cw ], [ %.sroa.3.0..sroa_idx.i17.i, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.4196.0.copyload.pn.i.pn.in, align 4
  %.sroa.0195.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.0195.0.copyload.pn.i.pn.in, align 4
  store <2 x float> %.sroa.0195.0.copyload.pn.i.pn, ptr %4, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.4196.0.copyload.pn.i.pn, ptr %i.ui, align 8
  %i.uj = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, i32 noundef %i.uj, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %27, i32 noundef %i.uj, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %29, i32 noundef %i.uj, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef %i.uj, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
end_hunk_0
