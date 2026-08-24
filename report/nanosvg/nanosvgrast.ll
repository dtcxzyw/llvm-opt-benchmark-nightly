Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgRasterize:bb.a
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !32
  %i.mf = fadd float %i.mb, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !32
  %i.mj = fadd float %i.mf, %i.mi
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !32
  %i.mn = fadd float %i.mj, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 20
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !32
  %i.mr = fadd float %i.mn, %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !32
  %i.mv = fadd float %i.mr, %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 28
  %i.my = load float, ptr %i.mx, align 4, !tbaa !32
  %i.mz = fadd float %i.mv, %i.my                 ; 3 uses
  %indvars.iv.next319.i.7 = add nuw nsw i64 %indvars.iv318.i, 8 ; 2 uses
  %niter333.next.7 = add i64 %niter333, 8         ; 2 uses
  %niter333.ncmp.7 = icmp eq i64 %niter333.next.7, %unroll_iter332
  br i1 %niter333.ncmp.7, label %._crit_edge284.i.loopexit.unr-lcssa, label %.lr.ph283.i, !llvm.loop !171

._crit_edge284.i.loopexit.unr-lcssa:              ; preds = %.lr.ph283.i
  %lcmp.mod329.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod329.not, label %._crit_edge284.i, label %.lr.ph283.i.epil.preheader

.lr.ph283.i.epil.preheader:                       ; preds = %._crit_edge284.i.loopexit.unr-lcssa, %.lr.ph283.preheader.i
  %indvars.iv318.i.epil.init = phi i64 [ 0, %.lr.ph283.preheader.i ], [ %indvars.iv.next319.i.7, %._crit_edge284.i.loopexit.unr-lcssa ]
  %.0155282.i.epil.init = phi float [ 0.000000e+00, %.lr.ph283.preheader.i ], [ %i.mz, %._crit_edge284.i.loopexit.unr-lcssa ]
  %lcmp.mod331 = icmp ne i64 %xtraiter327, 0
  tail call void @llvm.assume(i1 %lcmp.mod331)
  br label %.lr.ph283.i.epil

.lr.ph283.i.epil:                                 ; preds = %.lr.ph283.i.epil, %.lr.ph283.i.epil.preheader
  %indvars.iv318.i.epil = phi i64 [ %indvars.iv318.i.epil.init, %.lr.ph283.i.epil.preheader ], [ %indvars.iv.next319.i.epil, %.lr.ph283.i.epil ] ; 2 uses
  %.0155282.i.epil = phi float [ %.0155282.i.epil.init, %.lr.ph283.i.epil.preheader ], [ %i.nc, %.lr.ph283.i.epil ]
  %epil.iter328 = phi i64 [ 0, %.lr.ph283.i.epil.preheader ], [ %epil.iter328.next, %.lr.ph283.i.epil ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i.epil
  %i.nb = load float, ptr %i.na, align 4, !tbaa !32
  %i.nc = fadd float %.0155282.i.epil, %i.nb      ; 2 uses
  %indvars.iv.next319.i.epil = add nuw nsw i64 %indvars.iv318.i.epil, 1
  %epil.iter328.next = add i64 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i64 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %._crit_edge284.i, label %.lr.ph283.i.epil, !llvm.loop !172

._crit_edge284.i:                                 ; preds = %._crit_edge284.i.loopexit.unr-lcssa, %.lr.ph283.i.epil, %nsvg__appendPathPoint.exit200.i
  %.0155.lcssa.i = phi float [ 0.000000e+00, %nsvg__appendPathPoint.exit200.i ], [ %i.mz, %._crit_edge284.i.loopexit.unr-lcssa ], [ %i.nc, %.lr.ph283.i.epil ] ; 2 uses
  %i.nd = and i8 %i.lr, 1
  %.not180.i = icmp eq i8 %i.nd, 0
  %i.ne = fmul float %.0155.lcssa.i, 2.000000e+00
  %.1156.i = select i1 %.not180.i, float %.0155.lcssa.i, float %i.ne ; 2 uses
  %i.nf = load float, ptr %i.bw, align 8, !tbaa !173
  %i.ng = tail call float @fmodf(float noundef %i.nf, float noundef %.1156.i) #30 ; 3 uses
  %i.nh = fcmp olt float %i.ng, 0.000000e+00
  %i.ni = fadd float %.1156.i, %i.ng
  %.0.i138 = select i1 %i.nh, float %i.ni, float %i.ng ; 3 uses
  %i.nj = load float, ptr %i.bv, align 4, !tbaa !32 ; 3 uses
  %i.nk = fcmp ogt float %.0.i138, %i.nj
  br i1 %i.nk, label %.lr.ph290.i, label %._crit_edge291.i

.lr.ph290.i:                                      ; preds = %._crit_edge284.i, %.lr.ph290.i
  %i.nl = phi float [ %i.nr, %.lr.ph290.i ], [ %i.nj, %._crit_edge284.i ]
  %.1288.i = phi float [ %i.nm, %.lr.ph290.i ], [ %.0.i138, %._crit_edge284.i ]
  %.0163287.i = phi i32 [ %i.no, %.lr.ph290.i ], [ 0, %._crit_edge284.i ]
  %i.nm = fsub float %.1288.i, %i.nl              ; 3 uses
  %i.nn = add nsw i32 %.0163287.i, 1
  %i.no = srem i32 %i.nn, %i.ls                   ; 3 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !32 ; 3 uses
  %i.ns = fcmp ogt float %i.nm, %i.nr
  br i1 %i.ns, label %.lr.ph290.i, label %._crit_edge291.i, !llvm.loop !174

._crit_edge291.i:                                 ; preds = %.lr.ph290.i, %._crit_edge284.i
  %.0163.lcssa.i = phi i32 [ 0, %._crit_edge284.i ], [ %i.no, %.lr.ph290.i ]
  %.1.lcssa.i = phi float [ %.0.i138, %._crit_edge284.i ], [ %i.nm, %.lr.ph290.i ]
  %.lcssa278.i = phi float [ %i.nj, %._crit_edge284.i ], [ %i.nr, %.lr.ph290.i ]
  %i.nt = load i32, ptr %i.at, align 8, !tbaa !169
  %i.nu = icmp sgt i32 %i.nt, 1
  br i1 %i.nu, label %.lr.ph304.preheader.i, label %._crit_edge305.i

.lr.ph304.preheader.i:                            ; preds = %._crit_edge291.i
  %i.nv = fsub float %.lcssa278.i, %.1.lcssa.i
  %i.nw = fmul float %4, %i.nv
  br label %.lr.ph304.i

.lr.ph304.i:                                      ; preds = %nsvg__appendPathPoint.exit219.i, %.lr.ph304.preheader.i
  %.sroa.13.i.sroa.0.0 = phi <5 x float> [ %.sroa.13.i.sroa.0.0.copyload, %.lr.ph304.preheader.i ], [ %.sroa.13.i.sroa.0.1, %nsvg__appendPathPoint.exit219.i ] ; 3 uses
  %.0157302.i = phi float [ %i.nw, %.lr.ph304.preheader.i ], [ %.1158.i, %nsvg__appendPathPoint.exit219.i ] ; 3 uses
  %.0159301.i = phi float [ 0.000000e+00, %.lr.ph304.preheader.i ], [ %.1160.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.0161300.i = phi i32 [ 1, %.lr.ph304.preheader.i ], [ %.1162.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.1164299.i = phi i32 [ %.0163.lcssa.i, %.lr.ph304.preheader.i ], [ %.2.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.1169298.i = phi i32 [ 1, %.lr.ph304.preheader.i ], [ %.2170.i, %nsvg__appendPathPoint.exit219.i ] ; 4 uses
  %i.nx = phi <2 x float> [ %i.lg, %.lr.ph304.preheader.i ], [ %i.ue, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %i.ny = load ptr, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128
  %i.nz = sext i32 %.1169298.i to i64
  %i.oa = getelementptr inbounds [32 x i8], ptr %i.ny, i64 %i.nz ; 4 uses
  %i.ob = load <2 x float>, ptr %i.oa, align 4, !tbaa !32 ; 3 uses
  %i.oc = fsub <2 x float> %i.ob, %i.nx           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.oc, %i.oc
  %i.od = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.oe = extractelement <2 x float> %i.oc, i64 0 ; 2 uses
  %i.of = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.oe, float %i.od)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.of) ; 2 uses
  %i.og = fadd float %.0159301.i, %sqrt.i         ; 2 uses
  %i.oh = fcmp ogt float %i.og, %.0157302.i
  br i1 %i.oh, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %.lr.ph304.i
  %i.oi = fsub float %.0157302.i, %.0159301.i
  %i.oj = fdiv float %i.oi, %sqrt.i
  %i.ok = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.ol, <2 x float> %i.nx) ; 6 uses
  %i.on = load i32, ptr %i.ao, align 8, !tbaa !146 ; 5 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.op = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 2 uses
  %i.oq = zext nneg i32 %i.on to i64
  %i.or = getelementptr [32 x i8], ptr %i.op, i64 %i.oq ; 3 uses
  %i.os = getelementptr i8, ptr %i.or, i64 -32
  %i.ot = load float, ptr %i.os, align 4, !tbaa !151
  %i.ou = getelementptr i8, ptr %i.or, i64 -28
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !152
  %i.ow = load float, ptr %i.ar, align 4, !tbaa !153 ; 2 uses
  %i.ox = extractelement <2 x float> %i.om, i64 0
  %i.oy = fsub float %i.ox, %i.ot                 ; 2 uses
  %i.oz = extractelement <2 x float> %i.om, i64 1
  %i.pa = fsub float %i.oz, %i.ov                 ; 2 uses
  %i.pb = fmul float %i.pa, %i.pa
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.oy, float %i.pb)
  %i.pd = fmul float %i.ow, %i.ow
  %i.pe = fcmp uge float %i.pc, %i.pd
  br i1 %i.pe, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pf = getelementptr i8, ptr %i.or, i64 -4     ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 4, !tbaa !148
  %i.ph = or i8 %i.pg, 1
  store i8 %i.ph, ptr %i.pf, align 4, !tbaa !148
  br label %nsvg__addPathPoint.exit208.i

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.pi = load i32, ptr %i.ap, align 4, !tbaa !147 ; 3 uses
  %.not29.i201.i = icmp slt i32 %i.on, %i.pi
  br i1 %.not29.i201.i, label %._crit_edge.i205.i, label %bb.ai

._crit_edge.i205.i:                               ; preds = %bb.ah
  %.pre.i207.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %._crit_edge30.i203.i

bb.ai:                                            ; preds = %bb.ah
  %i.pj = icmp sgt i32 %i.pi, 0
  %i.pk = shl nuw nsw i32 %i.pi, 1
  %spec.select.i202.i = select i1 %i.pj, i32 %i.pk, i32 64 ; 2 uses
  store i32 %spec.select.i202.i, ptr %i.ap, align 4, !tbaa !147
  %i.pl = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.pm = zext nneg i32 %spec.select.i202.i to i64
  %i.pn = shl nuw nsw i64 %i.pm, 5
  %i.po = tail call ptr @realloc(ptr noundef %i.pl, i64 noundef %i.pn) #32 ; 3 uses
  store ptr %i.po, ptr %i.aq, align 8, !tbaa !127
  %i.pp = icmp eq ptr %i.po, null
  %.pre323.i = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  br i1 %i.pp, label %nsvg__addPathPoint.exit208.i, label %._crit_edge30.i203.i

._crit_edge30.i203.i:                             ; preds = %bb.ai, %._crit_edge.i205.i
  %i.pq = phi i32 [ %i.on, %._crit_edge.i205.i ], [ %.pre323.i, %bb.ai ] ; 2 uses
  %i.pr = phi ptr [ %.pre.i207.i, %._crit_edge.i205.i ], [ %i.po, %bb.ai ] ; 2 uses
  %i.ps = sext i32 %i.pq to i64
  %i.pt = getelementptr inbounds [32 x i8], ptr %i.pr, i64 %i.ps ; 2 uses
  store <2 x float> %i.om, ptr %i.pt, align 4, !tbaa !32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  store i8 1, ptr %i.pu, align 4, !tbaa !148
  %i.pv = add nsw i32 %i.pq, 1                    ; 2 uses
  store i32 %i.pv, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit208.i

nsvg__addPathPoint.exit208.i:                     ; preds = %._crit_edge30.i203.i, %bb.ai, %bb.ag
  %.val184.i = phi ptr [ %i.op, %bb.ag ], [ null, %bb.ai ], [ %i.pr, %._crit_edge30.i203.i ] ; 5 uses
  %i.pw = phi i32 [ %i.on, %bb.ag ], [ %.pre323.i, %bb.ai ], [ %i.pv, %._crit_edge30.i203.i ] ; 6 uses
  %i.px = icmp sgt i32 %i.pw, 1
  %i.py = icmp ne i32 %.0161300.i, 0              ; 2 uses
  %or.cond.i = select i1 %i.px, i1 %i.py, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i.i, label %bb.aq

.lr.ph.preheader.i.i:                             ; preds = %nsvg__addPathPoint.exit208.i
  %i.pz = zext nneg i32 %i.pw to i64
  %i.qa = getelementptr [32 x i8], ptr %.val184.i, i64 %i.pz ; 3 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -32
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.phi.trans.insert15.i.i = getelementptr i8, ptr %i.qa, i64 -20
  %.pre16.i.i = load float, ptr %.phi.trans.insert15.i.i, align 4, !tbaa !175 ; 2 uses
  %.phi.trans.insert17.i.i = getelementptr i8, ptr %i.qa, i64 -24
  %.pre18.i.i = load float, ptr %.phi.trans.insert17.i.i, align 4, !tbaa !176 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i.i, label %.lr.ph7.split.i.i

.lr.ph7.split.us.i.i:                             ; preds = %.preheader.i.i, %bb.ak
  %i.qc = phi float [ %i.qh, %bb.ak ], [ %.pre18.i.i, %.preheader.i.i ] ; 2 uses
  %i.qd = phi float [ %i.qf, %bb.ak ], [ %.pre16.i.i, %.preheader.i.i ] ; 2 uses
  %.16.us.i.i = phi ptr [ %i.rf, %bb.ak ], [ %.val184.i, %.preheader.i.i ] ; 6 uses
  %.0644.us.i.i = phi i32 [ %i.rg, %bb.ak ], [ 0, %.preheader.i.i ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 12
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !175 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !176 ; 3 uses
  %i.qi = fneg float %i.qh
  %i.qj = fadd float %i.qd, %i.qf
  %i.qk = fmul float %i.qj, 5.000000e-01          ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 20 ; 2 uses
  store float %i.qk, ptr %i.ql, align 4, !tbaa !177
  %i.qm = fsub float %i.qi, %i.qc
  %i.qn = fmul float %i.qm, 5.000000e-01          ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 24 ; 2 uses
  store float %i.qn, ptr %i.qo, align 4, !tbaa !178
  %i.qp = fmul float %i.qn, %i.qn
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qp) ; 2 uses
  %i.qr = fcmp ogt float %i.qq, f0x358637BD
  br i1 %i.qr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph7.split.us.i.i
  %i.qs = fdiv float 1.000000e+00, %i.qq          ; 2 uses
  %i.qt = fcmp ogt float %i.qs, 6.000000e+02
  %.0.us.i.i = select i1 %i.qt, float 6.000000e+02, float %i.qs ; 2 uses
  %i.qu = fmul float %i.qk, %.0.us.i.i
  store float %i.qu, ptr %i.ql, align 4, !tbaa !177
  %i.qv = fmul float %i.qn, %.0.us.i.i
  store float %i.qv, ptr %i.qo, align 4, !tbaa !178
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph7.split.us.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 28 ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 4, !tbaa !148
  %i.qy = and i8 %i.qx, 1                         ; 3 uses
  %i.qz = fneg float %i.qf
  %i.ra = fmul float %i.qc, %i.qz
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.qh, float %i.qd, float %i.ra)
  %i.rc = fcmp ogt float %i.rb, 0.000000e+00
  %i.rd = or disjoint i8 %i.qy, 4
  %storemerge.us.i.i = select i1 %i.rc, i8 %i.rd, i8 %i.qy
  %i.re = shl nuw nsw i8 %i.qy, 1
  %spec.select.i211.i = or disjoint i8 %storemerge.us.i.i, %i.re
  store i8 %spec.select.i211.i, ptr %i.qw, align 4, !tbaa !148
  %i.rf = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 32
  %i.rg = add nuw nsw i32 %.0644.us.i.i, 1        ; 2 uses
  %exitcond12.not.i.i = icmp eq i32 %i.rg, %i.pw
  br i1 %exitcond12.not.i.i, label %nsvg__prepareStroke.exit.i, label %.lr.ph7.split.us.i.i, !llvm.loop !179

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.0613.i.i = phi ptr [ %19, %.lr.ph.i.i ], [ %.val184.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0622.i.i = phi ptr [ %.0613.i.i, %.lr.ph.i.i ], [ %i.qb, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0651.i.i = phi i32 [ %20, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.0622.i.i, i64 8
  %i.ri = load <2 x float>, ptr %.0613.i.i, align 4, !tbaa !32
  %i.rj = load <2 x float>, ptr %.0622.i.i, align 4, !tbaa !32
  %i.rk = fsub <2 x float> %i.ri, %i.rj           ; 5 uses
  %11 = extractelement <2 x float> %i.rk, i64 0   ; 2 uses
  %foldExtExtBinop319 = fmul <2 x float> %i.rk, %i.rk
  %i.rl = extractelement <2 x float> %foldExtExtBinop319, i64 1
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %i.rl)
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %12) ; 3 uses
  %13 = fcmp ogt float %sqrt.i.i.i, f0x358637BD
  %14 = fdiv nnan float 1.000000e+00, %sqrt.i.i.i
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %i.rk, %16
  %storemerge325 = select i1 %13, <2 x float> %17, <2 x float> %i.rk
  store <2 x float> %storemerge325, ptr %i.rh, align 4, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %.0622.i.i, i64 16
  store float %sqrt.i.i.i, ptr %18, align 4, !tbaa !180
  %19 = getelementptr inbounds nuw i8, ptr %.0613.i.i, i64 32
  %20 = add nuw nsw i32 %.0651.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %20, %i.pw
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !181

.lr.ph7.split.i.i:                                ; preds = %.preheader.i.i, %bb.ap
  %i.rm = phi float [ %i.rr, %bb.ap ], [ %.pre18.i.i, %.preheader.i.i ] ; 2 uses
  %i.rn = phi float [ %i.rp, %bb.ap ], [ %.pre16.i.i, %.preheader.i.i ] ; 2 uses
  %.16.i.i = phi ptr [ %i.ss, %bb.ap ], [ %.val184.i, %.preheader.i.i ] ; 6 uses
  %.0644.i.i = phi i32 [ %i.st, %bb.ap ], [ 0, %.preheader.i.i ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 12
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !175 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !176 ; 3 uses
  %i.rs = fneg float %i.rr
  %i.rt = fadd float %i.rn, %i.rp
  %i.ru = fmul float %i.rt, 5.000000e-01          ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 20 ; 2 uses
  store float %i.ru, ptr %i.rv, align 4, !tbaa !177
  %i.rw = fsub float %i.rs, %i.rm
  %i.rx = fmul float %i.rw, 5.000000e-01          ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 24 ; 2 uses
  store float %i.rx, ptr %i.ry, align 4, !tbaa !178
  %i.rz = fmul float %i.rx, %i.rx
  %i.sa = tail call float @llvm.fmuladd.f32(float %i.ru, float %i.ru, float %i.rz) ; 3 uses
  %i.sb = fcmp ogt float %i.sa, f0x358637BD
  br i1 %i.sb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph7.split.i.i
  %i.sc = fdiv float 1.000000e+00, %i.sa          ; 2 uses
  %i.sd = fcmp ogt float %i.sc, 6.000000e+02
  %.0.i.i = select i1 %i.sd, float 6.000000e+02, float %i.sc ; 2 uses
  %i.se = fmul float %i.ru, %.0.i.i
  store float %i.se, ptr %i.rv, align 4, !tbaa !177
  %i.sf = fmul float %i.rx, %.0.i.i
  store float %i.sf, ptr %i.ry, align 4, !tbaa !178
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph7.split.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 28 ; 3 uses
  %i.sh = load i8, ptr %i.sg, align 4, !tbaa !148
  %i.si = and i8 %i.sh, 1                         ; 3 uses
  %i.sj = fneg float %i.rp
  %i.sk = fmul float %i.rm, %i.sj
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.rr, float %i.rn, float %i.sk)
  %i.sm = fcmp ogt float %i.sl, 0.000000e+00
  %i.sn = or disjoint i8 %i.si, 4
  %storemerge.i.i = select i1 %i.sm, i8 %i.sn, i8 %i.si ; 2 uses
  store i8 %storemerge.i.i, ptr %i.sg, align 4, !tbaa !148
  %.not.i210.i = icmp eq i8 %i.si, 0
  br i1 %.not.i210.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.so = fmul float %i.ho, %i.sa
  %i.sp = fmul float %i.ho, %i.so
  %i.sq = fcmp olt float %i.sp, 1.000000e+00
  br i1 %i.sq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.sr = or disjoint i8 %storemerge.i.i, 2
  store i8 %i.sr, ptr %i.sg, align 4, !tbaa !148
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ss = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 32
  %i.st = add nuw nsw i32 %.0644.i.i, 1           ; 2 uses
  %exitcond11.not.i.i = icmp eq i32 %i.st, %i.pw
  br i1 %exitcond11.not.i.i, label %nsvg__prepareStroke.exit.i, label %.lr.ph7.split.i.i, !llvm.loop !179

nsvg__prepareStroke.exit.i:                       ; preds = %bb.ap, %bb.ak
  tail call fastcc void @nsvg__expandStroke(ptr noundef %0, ptr noundef %.val184.i, i32 noundef %i.pw, i32 noundef 0, i32 noundef %i.hq, i32 noundef %i.hs, float noundef %i.hk)
  br label %bb.aq

bb.aq:                                            ; preds = %nsvg__prepareStroke.exit.i, %nsvg__addPathPoint.exit208.i
  %i.su = xor i1 %i.py, true
  %i.sv = zext i1 %i.su to i32                    ; 2 uses
  %i.sw = add nsw i32 %.1164299.i, 1
  %i.sx = load i8, ptr %i.bu, align 4, !tbaa !72
  %i.sy = sext i8 %i.sx to i32
  %i.sz = srem i32 %i.sw, %i.sy                   ; 3 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ta
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !32
  %i.td = fmul float %4, %i.tc                    ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  %i.te = load i32, ptr %i.ap, align 4, !tbaa !147
  %.not.i212.i = icmp sgt i32 %i.te, 0
  br i1 %.not.i212.i, label %._crit_edge.i216.i, label %bb.ar

._crit_edge.i216.i:                               ; preds = %bb.aq
  %.pre.i218.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 64, ptr %i.ap, align 4, !tbaa !147
  %i.tf = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.tg = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef %i.tf, i64 noundef 2048) #32 ; 3 uses
  store ptr %i.tg, ptr %i.aq, align 8, !tbaa !127
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %nsvg__appendPathPoint.exit219.i, label %._crit_edge12.i214.i

._crit_edge12.i214.i:                             ; preds = %bb.ar
  %.pre13.i215.i = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.ti = sext i32 %.pre13.i215.i to i64
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge12.i214.i, %._crit_edge.i216.i
  %i.tj = phi i64 [ 0, %._crit_edge.i216.i ], [ %i.ti, %._crit_edge12.i214.i ]
  %i.tk = phi ptr [ %.pre.i218.i, %._crit_edge.i216.i ], [ %i.tg, %._crit_edge12.i214.i ]
  %i.tl = getelementptr inbounds [32 x i8], ptr %i.tk, i64 %i.tj ; 4 uses
  store <2 x float> %i.om, ptr %i.tl, align 4, !tbaa !32
  %.sroa.5262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store <5 x float> %.sroa.13.i.sroa.0.0, ptr %.sroa.5262.0..sroa_idx.i, align 4
  %.sroa.6263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 28
  store i8 1, ptr %.sroa.6263.0..sroa_idx.i, align 4, !tbaa !8
  %.sroa.7264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7264.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.i, i64 3, i1 false)
  %i.tm = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.tn = add nsw i32 %i.tm, 1
  store i32 %i.tn, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__appendPathPoint.exit219.i

bb.at:                                            ; preds = %.lr.ph304.i
  %.sroa.13.0..sroa_idx242.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %.sroa.13.i.sroa.0.0.copyload349 = load <5 x float>, ptr %.sroa.13.0..sroa_idx242.i, align 4 ; 2 uses
  %.sroa.13246.0..sroa_idx247.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 28
  %.sroa.13246.0.copyload248.i = load i8, ptr %.sroa.13246.0..sroa_idx247.i, align 4, !tbaa !8
  %.sroa.14.0..sroa_idx255.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 29 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx255.i, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7269.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7269.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx255.i, i64 3, i1 false)
  %i.to = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  %i.tp = load i32, ptr %i.ap, align 4, !tbaa !147 ; 3 uses
  %.not.i220.i = icmp slt i32 %i.to, %i.tp
  br i1 %.not.i220.i, label %._crit_edge.i224.i, label %bb.au

._crit_edge.i224.i:                               ; preds = %bb.at
  %.pre.i226.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.tq = icmp sgt i32 %i.tp, 0
  %i.tr = shl nuw nsw i32 %i.tp, 1
  %spec.select.i221.i = select i1 %i.tq, i32 %i.tr, i32 64 ; 2 uses
  store i32 %spec.select.i221.i, ptr %i.ap, align 4, !tbaa !147
  %i.ts = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.tt = zext nneg i32 %spec.select.i221.i to i64
  %i.tu = shl nuw nsw i64 %i.tt, 5
  %i.tv = tail call ptr @realloc(ptr noundef %i.ts, i64 noundef %i.tu) #32 ; 3 uses
  store ptr %i.tv, ptr %i.aq, align 8, !tbaa !127
  %i.tw = icmp eq ptr %i.tv, null
  br i1 %i.tw, label %nsvg__appendPathPoint.exit227.i, label %._crit_edge12.i222.i

._crit_edge12.i222.i:                             ; preds = %bb.au
  %.pre13.i223.i = load i32, ptr %i.ao, align 8, !tbaa !146
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge12.i222.i, %._crit_edge.i224.i
  %i.tx = phi i32 [ %i.to, %._crit_edge.i224.i ], [ %.pre13.i223.i, %._crit_edge12.i222.i ]
  %i.ty = phi ptr [ %.pre.i226.i, %._crit_edge.i224.i ], [ %i.tv, %._crit_edge12.i222.i ]
  %i.tz = sext i32 %i.tx to i64
  %i.ua = getelementptr inbounds [32 x i8], ptr %i.ty, i64 %i.tz ; 4 uses
  store <2 x float> %i.ob, ptr %i.ua, align 4, !tbaa !32
  %.sroa.5267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store <5 x float> %.sroa.13.i.sroa.0.0.copyload349, ptr %.sroa.5267.0..sroa_idx.i, align 4
  %.sroa.6268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 28
  store i8 %.sroa.13246.0.copyload248.i, ptr %.sroa.6268.0..sroa_idx.i, align 4, !tbaa !8
  %.sroa.7269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7269.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7269.i, i64 3, i1 false), !tbaa.struct !170
  %i.ub = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.uc = add nsw i32 %i.ub, 1
  store i32 %i.uc, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__appendPathPoint.exit227.i

nsvg__appendPathPoint.exit227.i:                  ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7269.i)
  %i.ud = add nsw i32 %.1169298.i, 1
  br label %nsvg__appendPathPoint.exit219.i

nsvg__appendPathPoint.exit219.i:                  ; preds = %nsvg__appendPathPoint.exit227.i, %bb.as, %bb.ar
  %.sroa.13.i.sroa.0.1 = phi <5 x float> [ %.sroa.13.i.sroa.0.0, %bb.as ], [ %.sroa.13.i.sroa.0.0, %bb.ar ], [ %.sroa.13.i.sroa.0.0.copyload349, %nsvg__appendPathPoint.exit227.i ]
  %.2170.i = phi i32 [ %.1169298.i, %bb.as ], [ %.1169298.i, %bb.ar ], [ %i.ud, %nsvg__appendPathPoint.exit227.i ] ; 2 uses
  %.2.i = phi i32 [ %i.sz, %bb.as ], [ %i.sz, %bb.ar ], [ %.1164299.i, %nsvg__appendPathPoint.exit227.i ]
  %.1162.i = phi i32 [ %i.sv, %bb.as ], [ %i.sv, %bb.ar ], [ %.0161300.i, %nsvg__appendPathPoint.exit227.i ] ; 2 uses
  %.1160.i = phi float [ 0.000000e+00, %bb.as ], [ 0.000000e+00, %bb.ar ], [ %i.og, %nsvg__appendPathPoint.exit227.i ]
  %.1158.i = phi float [ %i.td, %bb.as ], [ %i.td, %bb.ar ], [ %.0157302.i, %nsvg__appendPathPoint.exit227.i ]
  %i.ue = phi <2 x float> [ %i.om, %bb.as ], [ %i.om, %bb.ar ], [ %i.ob, %nsvg__appendPathPoint.exit227.i ]
  %i.uf = load i32, ptr %i.at, align 8, !tbaa !169
  %i.ug = icmp slt i32 %.2170.i, %i.uf
  br i1 %i.ug, label %.lr.ph304.i, label %._crit_edge305.loopexit.i, !llvm.loop !182

._crit_edge305.loopexit.i:                        ; preds = %nsvg__appendPathPoint.exit219.i
  %i.uh = icmp ne i32 %.1162.i, 0
  br label %._crit_edge305.i

._crit_edge305.i:                                 ; preds = %._crit_edge305.loopexit.i, %._crit_edge291.i
  %.0161.lcssa.i = phi i1 [ true, %._crit_edge291.i ], [ %i.uh, %._crit_edge305.loopexit.i ]
  %i.ui = load i32, ptr %i.ao, align 8, !tbaa !146 ; 7 uses
  %i.uj = icmp sgt i32 %i.ui, 1
  %or.cond3.i = select i1 %i.uj, i1 %.0161.lcssa.i, i1 false
  br i1 %or.cond3.i, label %.lr.ph.preheader.i165, label %bb.bk

.lr.ph.preheader.i165:                            ; preds = %._crit_edge305.i
  %.val182.i = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 6 uses
  %i.uk = zext nneg i32 %i.ui to i64
  %i.ul = getelementptr [32 x i8], ptr %.val182.i, i64 %i.uk ; 3 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 -32
  br label %.lr.ph.i166

.preheader.i173:                                  ; preds = %.lr.ph.i166
  %.phi.trans.insert15.i174 = getelementptr i8, ptr %i.ul, i64 -20
  %.pre16.i175 = load float, ptr %.phi.trans.insert15.i174, align 4, !tbaa !175 ; 2 uses
  %.phi.trans.insert17.i176 = getelementptr i8, ptr %i.ul, i64 -24
  %.pre18.i177 = load float, ptr %.phi.trans.insert17.i176, align 4, !tbaa !176 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i185, label %.lr.ph7.split.i178

.lr.ph7.split.us.i185:                            ; preds = %.preheader.i173, %bb.ax
  %i.un = phi float [ %i.us, %bb.ax ], [ %.pre18.i177, %.preheader.i173 ] ; 2 uses
  %i.uo = phi float [ %i.uq, %bb.ax ], [ %.pre16.i175, %.preheader.i173 ] ; 2 uses
  %.16.us.i186 = phi ptr [ %i.vq, %bb.ax ], [ %.val182.i, %.preheader.i173 ] ; 6 uses
  %.0644.us.i187 = phi i32 [ %i.vr, %bb.ax ], [ 0, %.preheader.i173 ]
  %i.up = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 12
  %i.uq = load float, ptr %i.up, align 4, !tbaa !175 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 8
  %i.us = load float, ptr %i.ur, align 4, !tbaa !176 ; 3 uses
  %i.ut = fneg float %i.us
  %i.uu = fadd float %i.uo, %i.uq
  %i.uv = fmul float %i.uu, 5.000000e-01          ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 20 ; 2 uses
  store float %i.uv, ptr %i.uw, align 4, !tbaa !177
  %i.ux = fsub float %i.ut, %i.un
  %i.uy = fmul float %i.ux, 5.000000e-01          ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 24 ; 2 uses
  store float %i.uy, ptr %i.uz, align 4, !tbaa !178
  %i.va = fmul float %i.uy, %i.uy
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.uv, float %i.va) ; 2 uses
  %i.vc = fcmp ogt float %i.vb, f0x358637BD
  br i1 %i.vc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph7.split.us.i185
  %i.vd = fdiv float 1.000000e+00, %i.vb          ; 2 uses
  %i.ve = fcmp ogt float %i.vd, 6.000000e+02
  %.0.us.i191 = select i1 %i.ve, float 6.000000e+02, float %i.vd ; 2 uses
  %i.vf = fmul float %i.uv, %.0.us.i191
  store float %i.vf, ptr %i.uw, align 4, !tbaa !177
  %i.vg = fmul float %i.uy, %.0.us.i191
  store float %i.vg, ptr %i.uz, align 4, !tbaa !178
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph7.split.us.i185
  %i.vh = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 28 ; 2 uses
  %i.vi = load i8, ptr %i.vh, align 4, !tbaa !148
  %i.vj = and i8 %i.vi, 1                         ; 3 uses
  %i.vk = fneg float %i.uq
  %i.vl = fmul float %i.un, %i.vk
  %i.vm = tail call float @llvm.fmuladd.f32(float %i.us, float %i.uo, float %i.vl)
  %i.vn = fcmp ogt float %i.vm, 0.000000e+00
  %i.vo = or disjoint i8 %i.vj, 4
  %storemerge.us.i188 = select i1 %i.vn, i8 %i.vo, i8 %i.vj
  %i.vp = shl nuw nsw i8 %i.vj, 1
  %spec.select.i189 = or disjoint i8 %storemerge.us.i188, %i.vp
  store i8 %spec.select.i189, ptr %i.vh, align 4, !tbaa !148
  %i.vq = getelementptr inbounds nuw i8, ptr %.16.us.i186, i64 32
  %i.vr = add nuw nsw i32 %.0644.us.i187, 1       ; 2 uses
  %exitcond12.not.i190 = icmp eq i32 %i.vr, %i.ui
  br i1 %exitcond12.not.i190, label %.sink.split.i, label %.lr.ph7.split.us.i185, !llvm.loop !179

.lr.ph.i166:                                      ; preds = %.lr.ph.i166, %.lr.ph.preheader.i165
  %.0613.i167 = phi ptr [ %29, %.lr.ph.i166 ], [ %.val182.i, %.lr.ph.preheader.i165 ] ; 3 uses
  %.0622.i168 = phi ptr [ %.0613.i167, %.lr.ph.i166 ], [ %i.um, %.lr.ph.preheader.i165 ] ; 3 uses
  %.0651.i169 = phi i32 [ %30, %.lr.ph.i166 ], [ 0, %.lr.ph.preheader.i165 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.0622.i168, i64 8
  %i.vt = load <2 x float>, ptr %.0613.i167, align 4, !tbaa !32
  %i.vu = load <2 x float>, ptr %.0622.i168, align 4, !tbaa !32
  %i.vv = fsub <2 x float> %i.vt, %i.vu           ; 5 uses
  %21 = extractelement <2 x float> %i.vv, i64 0   ; 2 uses
  %foldExtExtBinop321 = fmul <2 x float> %i.vv, %i.vv
  %i.vw = extractelement <2 x float> %foldExtExtBinop321, i64 1
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %i.vw)
  %sqrt.i.i170 = tail call float @llvm.sqrt.f32(float %22) ; 3 uses
  %23 = fcmp ogt float %sqrt.i.i170, f0x358637BD
  %24 = fdiv nnan float 1.000000e+00, %sqrt.i.i170
  %25 = insertelement <2 x float> poison, float %24, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %i.vv, %26
  %storemerge326 = select i1 %23, <2 x float> %27, <2 x float> %i.vv
  store <2 x float> %storemerge326, ptr %i.vs, align 4, !tbaa !32
  %28 = getelementptr inbounds nuw i8, ptr %.0622.i168, i64 16
  store float %sqrt.i.i170, ptr %28, align 4, !tbaa !180
  %29 = getelementptr inbounds nuw i8, ptr %.0613.i167, i64 32
  %30 = add nuw nsw i32 %.0651.i169, 1            ; 2 uses
  %exitcond.not.i172 = icmp eq i32 %30, %i.ui
  br i1 %exitcond.not.i172, label %.preheader.i173, label %.lr.ph.i166, !llvm.loop !181

.lr.ph7.split.i178:                               ; preds = %.preheader.i173, %bb.bc
  %i.vx = phi float [ %i.wc, %bb.bc ], [ %.pre18.i177, %.preheader.i173 ] ; 2 uses
  %i.vy = phi float [ %i.wa, %bb.bc ], [ %.pre16.i175, %.preheader.i173 ] ; 2 uses
  %.16.i179 = phi ptr [ %i.xd, %bb.bc ], [ %.val182.i, %.preheader.i173 ] ; 6 uses
  %.0644.i180 = phi i32 [ %i.xe, %bb.bc ], [ 0, %.preheader.i173 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.16.i179, i64 12
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !175 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.16.i179, i64 8
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !176 ; 3 uses
  %i.wd = fneg float %i.wc
  %i.we = fadd float %i.vy, %i.wa
  %i.wf = fmul float %i.we, 5.000000e-01          ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.16.i179, i64 20 ; 2 uses
  store float %i.wf, ptr %i.wg, align 4, !tbaa !177
  %i.wh = fsub float %i.wd, %i.vx
  %i.wi = fmul float %i.wh, 5.000000e-01          ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.16.i179, i64 24 ; 2 uses
  store float %i.wi, ptr %i.wj, align 4, !tbaa !178
  %i.wk = fmul float %i.wi, %i.wi
  %i.wl = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.wf, float %i.wk) ; 3 uses
  %i.wm = fcmp ogt float %i.wl, f0x358637BD
  br i1 %i.wm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph7.split.i178
  %i.wn = fdiv float 1.000000e+00, %i.wl          ; 2 uses
  %i.wo = fcmp ogt float %i.wn, 6.000000e+02
  %.0.i184 = select i1 %i.wo, float 6.000000e+02, float %i.wn ; 2 uses
  %i.wp = fmul float %i.wf, %.0.i184
  store float %i.wp, ptr %i.wg, align 4, !tbaa !177
  %i.wq = fmul float %i.wi, %.0.i184
  store float %i.wq, ptr %i.wj, align 4, !tbaa !178
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph7.split.i178
  %i.wr = getelementptr inbounds nuw i8, ptr %.16.i179, i64 28 ; 3 uses
  %i.ws = load i8, ptr %i.wr, align 4, !tbaa !148
  %i.wt = and i8 %i.ws, 1                         ; 3 uses
  %i.wu = fneg float %i.wa
  %i.wv = fmul float %i.vx, %i.wu
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.wc, float %i.vy, float %i.wv)
  %i.wx = fcmp ogt float %i.ww, 0.000000e+00
  %i.wy = or disjoint i8 %i.wt, 4
  %storemerge.i181 = select i1 %i.wx, i8 %i.wy, i8 %i.wt ; 2 uses
  store i8 %storemerge.i181, ptr %i.wr, align 4, !tbaa !148
  %.not.i182 = icmp eq i8 %i.wt, 0
  br i1 %.not.i182, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.wz = fmul float %i.ho, %i.wl
  %i.xa = fmul float %i.ho, %i.wz
  %i.xb = fcmp olt float %i.xa, 1.000000e+00
  br i1 %i.xb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.xc = or disjoint i8 %storemerge.i181, 2
  store i8 %i.xc, ptr %i.wr, align 4, !tbaa !148
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.xd = getelementptr inbounds nuw i8, ptr %.16.i179, i64 32
  %i.xe = add nuw nsw i32 %.0644.i180, 1          ; 2 uses
  %exitcond11.not.i183 = icmp eq i32 %i.xe, %i.ui
  br i1 %exitcond11.not.i183, label %.sink.split.i, label %.lr.ph7.split.i178, !llvm.loop !179

.lr.ph.preheader.i158:                            ; preds = %.thread.i..lr.ph.preheader.i158_crit_edge, %bb.y
  %.pre-phi = phi i64 [ %.pre237, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.jj, %bb.y ]
  %.val181.i = phi i32 [ %i.kc, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.je, %bb.y ] ; 5 uses
  %.0167272.i = phi i32 [ 1, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.jz, %bb.y ] ; 2 uses
  %i.xf = getelementptr [32 x i8], ptr %i.ji, i64 %.pre-phi ; 3 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 -32
  br label %.lr.ph.i159

.preheader.i161:                                  ; preds = %.lr.ph.i159
  %.phi.trans.insert15.i = getelementptr i8, ptr %i.xf, i64 -20
  %.pre16.i = load float, ptr %.phi.trans.insert15.i, align 4, !tbaa !175 ; 2 uses
  %.phi.trans.insert17.i = getelementptr i8, ptr %i.xf, i64 -24
  %.pre18.i = load float, ptr %.phi.trans.insert17.i, align 4, !tbaa !176 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i, label %.lr.ph7.split.i

.lr.ph7.split.us.i:                               ; preds = %.preheader.i161, %bb.be
  %i.xh = phi float [ %i.xm, %bb.be ], [ %.pre18.i, %.preheader.i161 ] ; 2 uses
  %i.xi = phi float [ %i.xk, %bb.be ], [ %.pre16.i, %.preheader.i161 ] ; 2 uses
  %.16.us.i = phi ptr [ %i.yk, %bb.be ], [ %i.ji, %.preheader.i161 ] ; 6 uses
  %.0644.us.i = phi i32 [ %i.yl, %bb.be ], [ 0, %.preheader.i161 ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 12
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !175 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 8
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !176 ; 3 uses
  %i.xn = fneg float %i.xm
  %i.xo = fadd float %i.xi, %i.xk
  %i.xp = fmul float %i.xo, 5.000000e-01          ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 20 ; 2 uses
  store float %i.xp, ptr %i.xq, align 4, !tbaa !177
  %i.xr = fsub float %i.xn, %i.xh
  %i.xs = fmul float %i.xr, 5.000000e-01          ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 24 ; 2 uses
  store float %i.xs, ptr %i.xt, align 4, !tbaa !178
  %i.xu = fmul float %i.xs, %i.xs
  %i.xv = tail call float @llvm.fmuladd.f32(float %i.xp, float %i.xp, float %i.xu) ; 2 uses
  %i.xw = fcmp ogt float %i.xv, f0x358637BD
  br i1 %i.xw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph7.split.us.i
  %i.xx = fdiv float 1.000000e+00, %i.xv          ; 2 uses
  %i.xy = fcmp ogt float %i.xx, 6.000000e+02
  %.0.us.i = select i1 %i.xy, float 6.000000e+02, float %i.xx ; 2 uses
  %i.xz = fmul float %i.xp, %.0.us.i
  store float %i.xz, ptr %i.xq, align 4, !tbaa !177
  %i.ya = fmul float %i.xs, %.0.us.i
  store float %i.ya, ptr %i.xt, align 4, !tbaa !178
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph7.split.us.i
  %i.yb = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 28 ; 2 uses
  %i.yc = load i8, ptr %i.yb, align 4, !tbaa !148
  %i.yd = and i8 %i.yc, 1                         ; 3 uses
  %i.ye = fneg float %i.xk
  %i.yf = fmul float %i.xh, %i.ye
  %i.yg = tail call float @llvm.fmuladd.f32(float %i.xm, float %i.xi, float %i.yf)
  %i.yh = fcmp ogt float %i.yg, 0.000000e+00
  %i.yi = or disjoint i8 %i.yd, 4
  %storemerge.us.i = select i1 %i.yh, i8 %i.yi, i8 %i.yd
  %i.yj = shl nuw nsw i8 %i.yd, 1
  %spec.select.i = or disjoint i8 %storemerge.us.i, %i.yj
  store i8 %spec.select.i, ptr %i.yb, align 4, !tbaa !148
  %i.yk = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 32
  %i.yl = add nuw nsw i32 %.0644.us.i, 1          ; 2 uses
  %exitcond12.not.i = icmp eq i32 %i.yl, %.val181.i
  br i1 %exitcond12.not.i, label %.sink.split.i, label %.lr.ph7.split.us.i, !llvm.loop !179

.lr.ph.i159:                                      ; preds = %.lr.ph.i159, %.lr.ph.preheader.i158
  %.0613.i = phi ptr [ %39, %.lr.ph.i159 ], [ %i.ji, %.lr.ph.preheader.i158 ] ; 3 uses
  %.0622.i = phi ptr [ %.0613.i, %.lr.ph.i159 ], [ %i.xg, %.lr.ph.preheader.i158 ] ; 3 uses
  %.0651.i = phi i32 [ %40, %.lr.ph.i159 ], [ 0, %.lr.ph.preheader.i158 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.0622.i, i64 8
  %i.yn = load <2 x float>, ptr %.0613.i, align 4, !tbaa !32
  %i.yo = load <2 x float>, ptr %.0622.i, align 4, !tbaa !32
  %i.yp = fsub <2 x float> %i.yn, %i.yo           ; 5 uses
  %31 = extractelement <2 x float> %i.yp, i64 0   ; 2 uses
  %foldExtExtBinop323 = fmul <2 x float> %i.yp, %i.yp
  %i.yq = extractelement <2 x float> %foldExtExtBinop323, i64 1
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %i.yq)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %32) ; 3 uses
  %33 = fcmp ogt float %sqrt.i.i, f0x358637BD
  %34 = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %35 = insertelement <2 x float> poison, float %34, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %i.yp, %36
  %storemerge = select i1 %33, <2 x float> %37, <2 x float> %i.yp
  store <2 x float> %storemerge, ptr %i.ym, align 4, !tbaa !32
  %38 = getelementptr inbounds nuw i8, ptr %.0622.i, i64 16
  store float %sqrt.i.i, ptr %38, align 4, !tbaa !180
  %39 = getelementptr inbounds nuw i8, ptr %.0613.i, i64 32
  %40 = add nuw nsw i32 %.0651.i, 1               ; 2 uses
  %exitcond.not.i160 = icmp eq i32 %40, %.val181.i
  br i1 %exitcond.not.i160, label %.preheader.i161, label %.lr.ph.i159, !llvm.loop !181

.lr.ph7.split.i:                                  ; preds = %.preheader.i161, %bb.bj
  %i.yr = phi float [ %i.yw, %bb.bj ], [ %.pre18.i, %.preheader.i161 ] ; 2 uses
  %i.ys = phi float [ %i.yu, %bb.bj ], [ %.pre16.i, %.preheader.i161 ] ; 2 uses
  %.16.i = phi ptr [ %i.zx, %bb.bj ], [ %i.ji, %.preheader.i161 ] ; 6 uses
  %.0644.i = phi i32 [ %i.zy, %bb.bj ], [ 0, %.preheader.i161 ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.16.i, i64 12
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !175 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.16.i, i64 8
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !176 ; 3 uses
  %i.yx = fneg float %i.yw
  %i.yy = fadd float %i.ys, %i.yu
  %i.yz = fmul float %i.yy, 5.000000e-01          ; 4 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.16.i, i64 20 ; 2 uses
  store float %i.yz, ptr %i.za, align 4, !tbaa !177
  %i.zb = fsub float %i.yx, %i.yr
  %i.zc = fmul float %i.zb, 5.000000e-01          ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.16.i, i64 24 ; 2 uses
  store float %i.zc, ptr %i.zd, align 4, !tbaa !178
  %i.ze = fmul float %i.zc, %i.zc
  %i.zf = tail call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.ze) ; 3 uses
  %i.zg = fcmp ogt float %i.zf, f0x358637BD
  br i1 %i.zg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph7.split.i
  %i.zh = fdiv float 1.000000e+00, %i.zf          ; 2 uses
  %i.zi = fcmp ogt float %i.zh, 6.000000e+02
  %.0.i163 = select i1 %i.zi, float 6.000000e+02, float %i.zh ; 2 uses
  %i.zj = fmul float %i.yz, %.0.i163
  store float %i.zj, ptr %i.za, align 4, !tbaa !177
  %i.zk = fmul float %i.zc, %.0.i163
  store float %i.zk, ptr %i.zd, align 4, !tbaa !178
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph7.split.i
  %i.zl = getelementptr inbounds nuw i8, ptr %.16.i, i64 28 ; 3 uses
  %i.zm = load i8, ptr %i.zl, align 4, !tbaa !148
  %i.zn = and i8 %i.zm, 1                         ; 3 uses
  %i.zo = fneg float %i.yu
  %i.zp = fmul float %i.yr, %i.zo
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.yw, float %i.ys, float %i.zp)
  %i.zr = fcmp ogt float %i.zq, 0.000000e+00
  %i.zs = or disjoint i8 %i.zn, 4
  %storemerge.i = select i1 %i.zr, i8 %i.zs, i8 %i.zn ; 2 uses
  store i8 %storemerge.i, ptr %i.zl, align 4, !tbaa !148
  %.not.i162 = icmp eq i8 %i.zn, 0
  br i1 %.not.i162, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.zt = fmul float %i.ho, %i.zf
  %i.zu = fmul float %i.ho, %i.zt
  %i.zv = fcmp olt float %i.zu, 1.000000e+00
  br i1 %i.zv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.zw = or disjoint i8 %storemerge.i, 2
  store i8 %i.zw, ptr %i.zl, align 4, !tbaa !148
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.zx = getelementptr inbounds nuw i8, ptr %.16.i, i64 32
  %i.zy = add nuw nsw i32 %.0644.i, 1             ; 2 uses
  %exitcond11.not.i = icmp eq i32 %i.zy, %.val181.i
  br i1 %exitcond11.not.i, label %.sink.split.i, label %.lr.ph7.split.i, !llvm.loop !179

.sink.split.i:                                    ; preds = %bb.bj, %bb.be, %bb.bc, %bb.ax
  %i.zz = phi i32 [ %i.ui, %bb.ax ], [ %.val181.i, %bb.be ], [ %i.ui, %bb.bc ], [ %.val181.i, %bb.bj ]
  %i.aaa = phi ptr [ %.val182.i, %bb.ax ], [ %i.ji, %bb.be ], [ %.val182.i, %bb.bc ], [ %i.ji, %bb.bj ]
  %.sink359.i = phi i32 [ 0, %bb.ax ], [ %.0167272.i, %bb.be ], [ 0, %bb.bc ], [ %.0167272.i, %bb.bj ]
  tail call fastcc void @nsvg__expandStroke(ptr noundef nonnull %0, ptr noundef %i.aaa, i32 noundef %i.zz, i32 noundef %.sink359.i, i32 noundef %i.hq, i32 noundef %i.hs, float noundef %i.hk)
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %._crit_edge305.i, %._crit_edge.i134
  %i.aab = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 32
  %.0166.i = load ptr, ptr %i.aab, align 8, !tbaa !63 ; 2 uses
  %.not.i135 = icmp eq ptr %.0166.i, null
  br i1 %.not.i135, label %nsvg__flattenShapeStroke.exit, label %bb.u, !llvm.loop !183

nsvg__flattenShapeStroke.exit:                    ; preds = %bb.bk
  %.pre = load i32, ptr %i.an, align 8, !tbaa !145 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %i.aac = icmp sgt i32 %.pre, 0
  br i1 %i.aac, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %nsvg__flattenShapeStroke.exit
  %i.aad = load ptr, ptr %i.au, align 8, !tbaa !126 ; 3 uses
  %wide.trip.count228 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count228, 1
  %i.aae = icmp eq i32 %.pre, 1
  br i1 %i.aae, label %.epil.preheader334, label %.lr.ph207.new

.lr.ph207.new:                                    ; preds = %.lr.ph207
  %unroll_iter339 = and i64 %wide.trip.count228, 2147483646
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph207.new
  %indvars.iv225 = phi i64 [ 0, %.lr.ph207.new ], [ %indvars.iv.next226.1, %bb.bl ] ; 3 uses
  %niter340 = phi i64 [ 0, %.lr.ph207.new ], [ %niter340.next.1, %bb.bl ]
  %i.aaf = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %indvars.iv225 ; 2 uses
  %i.aag = load <4 x float>, ptr %i.aaf, align 8, !tbaa !32
  %i.aah = fadd <4 x float> %i.bc, %i.aag
  %i.aai = fmul <4 x float> %i.aah, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.aai, ptr %i.aaf, align 8, !tbaa !32
  %i.aaj = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %indvars.iv225
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32 ; 2 uses
  %i.aal = load <4 x float>, ptr %i.aak, align 8, !tbaa !32
  %i.aam = fadd <4 x float> %i.bc, %i.aal
  %i.aan = fmul <4 x float> %i.aam, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.aan, ptr %i.aak, align 8, !tbaa !32
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge208.thread302.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !184

._crit_edge208:                                   ; preds = %nsvg__flattenShapeStroke.exit
  %.not119 = icmp eq i32 %.pre, 0
  br i1 %.not119, label %bb.bm, label %._crit_edge208.thread302

._crit_edge208.thread302.loopexit.unr-lcssa:      ; preds = %bb.bl
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge208.thread302, label %.epil.preheader334

.epil.preheader334:                               ; preds = %._crit_edge208.thread302.loopexit.unr-lcssa, %.lr.ph207
  %indvars.iv225.epil.init = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next226.1, %._crit_edge208.thread302.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.aao = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %indvars.iv225.epil.init ; 2 uses
  %i.aap = load <4 x float>, ptr %i.aao, align 8, !tbaa !32
  %i.aaq = fadd <4 x float> %i.bc, %i.aap
  %i.aar = fmul <4 x float> %i.aaq, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.aar, ptr %i.aao, align 8, !tbaa !32
  br label %._crit_edge208.thread302

._crit_edge208.thread302:                         ; preds = %.epil.preheader334, %._crit_edge208.thread302.loopexit.unr-lcssa, %._crit_edge208
  %i.aas = load ptr, ptr %i.au, align 8, !tbaa !126
  %i.aat = sext i32 %.pre to i64
  tail call void @qsort(ptr noundef %i.aas, i64 noundef %i.aat, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge208.thread, %._crit_edge208.thread302, %._crit_edge208
  %i.aau = load float, ptr %i.bx, align 8, !tbaa !160
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.bo, float noundef %i.aau)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.bm, %._crit_edge205.thread
  %.sink = phi i8 [ %i.hh, %._crit_edge205.thread ], [ 0, %bb.bm ]
  call fastcc void @nsvg__rasterizeSortedEdges(ptr noundef nonnull %0, float noundef %2, float noundef %3, float noundef %4, ptr noundef %10, i8 noundef signext %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.g, %bb.r, %bb.s
  %i.aav = add nuw nsw i32 %.0210, 1              ; 2 uses
  %exitcond235.not = icmp eq i32 %i.aav, 3
  br i1 %exitcond235.not, label %.loopexit, label %bb.g, !llvm.loop !185

.loopexit:                                        ; preds = %.thread, %bb.f
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0110213, i64 328
  %.0110 = load ptr, ptr %i.aaw, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %.0110, null
  br i1 %.not, label %._crit_edge216, label %bb.f, !llvm.loop !186

._crit_edge216:                                   ; preds = %.loopexit, %._crit_edge
  %i.aax = icmp sgt i32 %6, 0                     ; 2 uses
  %or.cond.i145 = and i1 %i.aax, %i.m
  br i1 %or.cond.i145, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge216
  %i.aay = sext i32 %8 to i64
  %wide.trip.count.i151 = zext nneg i32 %7 to i64
  br label %.lr.ph.i152

.preheader.i:                                     ; preds = %._crit_edge.i155, %._crit_edge216
  br i1 %i.m, label %.lr.ph153.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph153.i:                                      ; preds = %.preheader.i
  %i.aaz = sub i32 3, %8
  %i.aba = sext i32 %i.aaz to i64                 ; 3 uses
  %i.abb = sub nsw i32 0, %8
  %i.abc = sext i32 %i.abb to i64                 ; 3 uses
  %i.abd = sub i32 1, %8
  %i.abe = sext i32 %i.abd to i64                 ; 3 uses
  %i.abf = sub i32 2, %8
  %i.abg = sext i32 %i.abf to i64                 ; 3 uses
  %i.abh = sext i32 %8 to i64                     ; 4 uses
  br i1 %i.aax, label %.lr.ph150.preheader.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph150.preheader.i:                            ; preds = %.lr.ph153.i
  %i.abi = zext nneg i32 %7 to i64                ; 2 uses
  %.not201.i = icmp eq i32 %6, 1                  ; 2 uses
  %i.abj = icmp samesign ugt i32 %6, 2
  %exitcond157.peel184.not.i = icmp eq i32 %6, 2
  br label %.lr.ph150.i

.lr.ph.i152:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i156, %._crit_edge.i155 ] ; 2 uses
  %i.abk = mul nsw i64 %indvars.iv.i153, %i.aay
  %i.abl = getelementptr inbounds i8, ptr %5, i64 %i.abk
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.lr.ph.i152
end_hunk_0
begin_hunk_1_@nsvg__createGradient:bb.a
  %i.og = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.of, <2 x float> %i.oe)
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.oi = fmul <4 x float> %i.oh, %i.np
  %i.oj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oc, <4 x float> %i.nr, <4 x float> %i.oi)
  store <4 x float> %i.oj, ptr %i.o, align 4, !tbaa !32
  store <2 x float> %i.nx, ptr %i.na, align 4, !tbaa !32
  %i.ok = getelementptr inbounds nuw i8, ptr %.013.i, i64 172
  %i.ol = load i8, ptr %i.ok, align 4, !tbaa !239
  %i.om = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 %i.ol, ptr %i.om, align 4, !tbaa !196
  %i.on = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.oo = sext i32 %i.j to i64
  %i.op = shl nsw i64 %i.oo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.on, ptr nonnull align 4 %i.h, i64 %i.op, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 %i.j, ptr %i.oq, align 4, !tbaa !199
  store i8 %i.al, ptr %4, align 1, !tbaa !8
  br label %nsvg__findGradientData.exit.thread

nsvg__findGradientData.exit.thread:               ; preds = %bb.b, %nsvg__findGradientData.exit, %nsvg__findGradientData.exit148, %.preheader.i, %bb.a, %.thread.thread, %bb.cf
  %.0 = phi ptr [ %i.o, %bb.cf ], [ null, %.thread.thread ], [ null, %nsvg__findGradientData.exit ], [ null, %bb.a ], [ null, %.preheader.i ], [ null, %nsvg__findGradientData.exit148 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__flattenCubicBez(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %9, 10
  br i1 %i.a, label %nsvg__addPathPoint.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1
  %i.e = insertelement <2 x float> poison, float %3, i64 0
  %i.f = insertelement <2 x float> %i.e, float %4, i64 1
  %i.g = insertelement <2 x float> poison, float %5, i64 0
  %i.h = insertelement <2 x float> %i.g, float %6, i64 1
  %i.i = insertelement <2 x float> poison, float %7, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = insertelement <2 x float> poison, float %8, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8290 = phi i32 [ %9, %.lr.ph ], [ %i.ct, %tailrecurse ]
  %.tr7585 = phi float [ %2, %.lr.ph ], [ %i.cr, %tailrecurse ] ; 2 uses
  %.tr7484 = phi float [ %1, %.lr.ph ], [ %i.cs, %tailrecurse ] ; 2 uses
  %i.m = phi <2 x float> [ %i.d, %.lr.ph ], [ %i.cq, %tailrecurse ]
  %i.n = phi <2 x float> [ %i.f, %.lr.ph ], [ %i.co, %tailrecurse ] ; 4 uses
  %i.o = phi <2 x float> [ %i.h, %.lr.ph ], [ %i.cm, %tailrecurse ] ; 5 uses
  %i.p = fsub float %7, %.tr7484                  ; 3 uses
  %i.q = fsub float %8, %.tr7585                  ; 3 uses
  %i.r = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.s = fsub <2 x float> %i.r, %i.j
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.u = fsub <2 x float> %i.t, %i.l
  %i.v = fneg float %i.p
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.u, %i.x
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.aa, <2 x float> %i.y) ; 3 uses
  %i.ac = fcmp olt <2 x float> %i.ab, zeroinitializer
  %i.ad = fneg <2 x float> %i.ab
  %i.ae = select <2 x i1> %i.ac, <2 x float> %i.ad, <2 x float> %i.ab ; 2 uses
  %shift = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ae, %shift ; 2 uses
  %foldExtExtBinop96 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.af = extractelement <2 x float> %foldExtExtBinop96, i64 0
  %i.ag = load float, ptr %i.b, align 8, !tbaa !316
  %i.ah = fmul float %i.q, %i.q
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.ah)
  %i.aj = fmul float %i.ai, %i.ag
  %i.ak = fcmp olt float %i.af, %i.aj
  br i1 %i.ak, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !146 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !127
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = getelementptr [32 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -32
  %i.at = load float, ptr %i.as, align 4, !tbaa !151
  %i.au = getelementptr i8, ptr %i.ar, i64 -28
  %i.av = load float, ptr %i.au, align 4, !tbaa !152
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !153 ; 2 uses
  %i.ay = fsub float %7, %i.at                    ; 2 uses
  %i.az = fsub float %8, %i.av                    ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ba)
  %i.bc = fmul float %i.ax, %i.ax
  %i.bd = fcmp uge float %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr i8, ptr %i.ar, i64 -4     ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !148
  %i.bg = trunc nuw nsw i32 %10 to i8
  %i.bh = or i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %i.be, align 4, !tbaa !148
  br label %nsvg__addPathPoint.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !147 ; 3 uses
  %.not29.i = icmp slt i32 %i.am, %i.bj
  br i1 %.not29.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !127
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp sgt i32 %i.bj, 0
  %i.bl = shl nuw nsw i32 %i.bj, 1
  %spec.select.i = select i1 %i.bk, i32 %i.bl, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.bi, align 4, !tbaa !147
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127
  %i.bo = zext nneg i32 %spec.select.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 5
  %i.bq = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bp) #32 ; 3 uses
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !127
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %nsvg__addPathPoint.exit, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.g
  %.pre31.i = load i32, ptr %i.al, align 8, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge30.i, %._crit_edge.i
  %i.bs = phi i32 [ %i.am, %._crit_edge.i ], [ %.pre31.i, %._crit_edge30.i ] ; 2 uses
  %i.bt = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bq, %._crit_edge30.i ]
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  store float %7, ptr %i.bv, align 4, !tbaa !151
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store float %8, ptr %i.bw, align 4, !tbaa !152
  %i.bx = trunc nuw nsw i32 %10 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !148
  %i.bz = add nsw i32 %i.bs, 1
  store i32 %i.bz, ptr %i.al, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit

tailrecurse:                                      ; preds = %bb.b
  %i.ca = fadd <2 x float> %i.m, %i.n
  %i.cb = fadd <2 x float> %i.n, %i.o
  %i.cc = extractelement <2 x float> %i.o, i64 1
  %i.cd = fadd float %8, %i.cc
  %i.ce = extractelement <2 x float> %i.o, i64 0
  %i.cf = fadd float %7, %i.ce
  %i.cg = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 3 uses
  %i.ch = fmul <2 x float> %i.cb, splat (float 5.000000e-01) ; 2 uses
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %i.cj = fmul <2 x float> %i.ci, splat (float 5.000000e-01) ; 3 uses
  %i.ck = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cd, i64 1
  %i.cm = fmul <2 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = fadd <2 x float> %i.ch, %i.cm
  %i.co = fmul <2 x float> %i.cn, splat (float 5.000000e-01) ; 2 uses
  %i.cp = fadd <2 x float> %i.cj, %i.co
  %i.cq = fmul <2 x float> %i.cp, splat (float 5.000000e-01) ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  %i.cs = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.ct = add nsw i32 %.tr8290, 1                 ; 3 uses
  %i.cu = extractelement <2 x float> %i.cj, i64 0
  %i.cv = extractelement <2 x float> %i.cj, i64 1
  %i.cw = extractelement <2 x float> %i.cg, i64 0
  %i.cx = extractelement <2 x float> %i.cg, i64 1
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %.tr7484, float noundef %.tr7585, float noundef %i.cw, float noundef %i.cx, float noundef %i.cu, float noundef %i.cv, float noundef %i.cs, float noundef %i.cr, i32 noundef %i.ct, i32 noundef 0)
  %exitcond = icmp eq i32 %i.ct, 11
  br i1 %exitcond, label %nsvg__addPathPoint.exit, label %bb.b

nsvg__addPathPoint.exit:                          ; preds = %tailrecurse, %bb.a, %bb.h, %bb.g, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__expandStroke(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -128, 128) %3, i32 noundef range(i32 -128, 128) %4, i32 noundef range(i32 -128, 128) %5, float noundef %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %struct.NSVGpoint, align 8          ; 20 uses
  %8 = alloca %struct.NSVGpoint, align 8          ; 21 uses
  %i.a = fmul float %6, 5.000000e-01              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !316
  %i.d = fadd float %i.a, %i.c
  %i.e = fdiv float %i.a, %i.d
  %i.f = tail call float @acosf(float noundef %i.e) #30
  %i.g = fmul float %i.f, 2.000000e+00
  %i.h = fdiv float f0x40490FDB, %i.g
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32
  %spec.store.select.i = tail call range(i32 2, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 2) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !152 ; 3 uses
  br i1 %.not, label %nsvg__normalize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr [32 x i8], ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -32      ; 2 uses
  %.080.val = load float, ptr %1, align 4, !tbaa !151
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !32 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %.080.val, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.l, i64 1
  %i.s = fsub <2 x float> %i.r, %i.p              ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.v) ; 3 uses
  %i.w = fcmp ogt float %sqrt.i.i, f0x358637BD
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.s, %i.z
  %i.ab = insertelement <2 x i1> poison, i1 %i.w, i64 0
  %i.ac = shufflevector <2 x i1> %i.ab, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.aa, <2 x float> %i.s ; 5 uses
  %i.ae = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.af, %i.ad
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 5.000000e-01), <2 x float> %i.p) ; 2 uses
  %i.ai = fneg <2 x float> %i.ad
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ak = insertelement <2 x float> poison, float %i.a, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.al, <2 x float> %i.ah) ; 3 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  %i.ao = fneg <2 x float> %i.ad
  %i.ap = shufflevector <2 x float> %i.ad, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.al, <2 x float> %i.ah) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 1
  store <2 x float> %i.am, ptr %7, align 8, !tbaa !32
  store <2 x float> %i.aq, ptr %8, align 8, !tbaa !32
  br label %bb.j

nsvg__normalize.exit:                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.at = add nsw i32 %2, -1                      ; 4 uses
  %i.au = load float, ptr %1, align 4, !tbaa !151 ; 2 uses
  %i.av = load <2 x float>, ptr %i.as, align 4, !tbaa !32
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.l, i64 1 ; 4 uses
  %i.ay = fsub <2 x float> %i.av, %i.ax           ; 5 uses
  %foldExtExtBinop392 = fmul <2 x float> %i.ay, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop392, i64 1
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bb) ; 2 uses
  %i.bc = fcmp ogt float %sqrt.i, f0x358637BD
  %i.bd = fdiv float 1.000000e+00, %sqrt.i
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.ay, %i.bf
  %i.bh = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.bi = shufflevector <2 x i1> %i.bh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bg, <2 x float> %i.ay ; 8 uses
  switch i32 %5, label %bb.j [
    i32 0, label %bb.c
    i32 2, label %bb.f
    i32 1, label %bb.i
  ]

bb.c:                                             ; preds = %nsvg__normalize.exit
  %i.bk = fneg <2 x float> %i.bj                  ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.bj, <2 x i32> <i32 1, i32 2>
  %i.bm = insertelement <2 x float> poison, float %i.a, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.ax) ; 4 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bn, <2 x float> %i.ax) ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 2 uses
  %i.bt = fcmp oeq float %i.bp, %i.bs
  br i1 %i.bt, label %nsvg__buttCap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !145 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !154 ; 3 uses
  %.not.i.i = icmp slt i32 %i.bv, %i.bx
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !126
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.by = icmp sgt i32 %i.bx, 0
  %i.bz = shl nuw nsw i32 %i.bx, 1
  %spec.select.i.i = select i1 %i.by, i32 %i.bz, i32 64 ; 2 uses
  store i32 %spec.select.i.i, ptr %i.bw, align 4, !tbaa !154
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !126
  %i.cc = zext nneg i32 %spec.select.i.i to i64
  %i.cd = shl nuw nsw i64 %i.cc, 5
  %i.ce = tail call ptr @realloc(ptr noundef %i.cb, i64 noundef %i.cd) #32 ; 3 uses
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !126
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %nsvg__buttCap.exit, label %._crit_edge36.i.i

._crit_edge36.i.i:                                ; preds = %bb.e
  %.pre37.i.i = load i32, ptr %i.bu, align 8, !tbaa !145
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge36.i.i, %._crit_edge.i.i
  %i.cg = phi i32 [ %i.bv, %._crit_edge.i.i ], [ %.pre37.i.i, %._crit_edge36.i.i ] ; 2 uses
  %i.ch = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ce, %._crit_edge36.i.i ]
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds [32 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = add nsw i32 %i.cg, 1
  store i32 %i.ck, ptr %i.bu, align 8, !tbaa !145
  %i.cl = fcmp olt float %i.bp, %i.bs             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.49.i.i = select i1 %i.cl, i32 1, i32 -1
  %i.cn = insertelement <4 x i1> poison, i1 %i.cl, i64 0
  %i.co = shufflevector <4 x i1> %i.cn, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.bo, <2 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <2 x float> %i.br, <2 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cr = select <4 x i1> %i.co, <4 x float> %i.cp, <4 x float> %i.cq
  store <4 x float> %i.cr, ptr %i.cj, align 8, !tbaa !32
  store i32 %.49.i.i, ptr %i.cm, align 8, !tbaa !155
  br label %nsvg__buttCap.exit

nsvg__buttCap.exit:                               ; preds = %bb.c, %bb.e, %.sink.split.i.i
  store <2 x float> %i.bo, ptr %7, align 8, !tbaa !32
  store <2 x float> %i.br, ptr %8, align 8, !tbaa !32
  br label %bb.j

bb.f:                                             ; preds = %nsvg__normalize.exit
  %i.cs = fneg <2 x float> %i.bj                  ; 3 uses
  %i.ct = insertelement <2 x float> poison, float %i.a, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cu, <2 x float> %i.ax) ; 2 uses
  %9 = shufflevector <2 x float> %i.cs, <2 x float> %i.bj, <2 x i32> <i32 1, i32 2>
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.cu, <2 x float> %i.cv) ; 4 uses
  %11 = shufflevector <2 x float> %i.bj, <2 x float> %i.cs, <2 x i32> <i32 1, i32 2>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.cu, <2 x float> %i.cv) ; 4 uses
  %i.cw = extractelement <2 x float> %10, i64 1   ; 2 uses
  %i.cx = extractelement <2 x float> %12, i64 1   ; 2 uses
  %i.cy = fcmp oeq float %i.cw, %i.cx
  br i1 %i.cy, label %nsvg__squareCap.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !145 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !154 ; 3 uses
  %.not.i.i105 = icmp slt i32 %i.da, %i.dc
  br i1 %.not.i.i105, label %._crit_edge.i.i115, label %bb.h

._crit_edge.i.i115:                               ; preds = %bb.g
  %.phi.trans.insert.i.i116 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i117 = load ptr, ptr %.phi.trans.insert.i.i116, align 8, !tbaa !126
  br label %.sink.split.i.i109

bb.h:                                             ; preds = %bb.g
  %i.dd = icmp sgt i32 %i.dc, 0
  %i.de = shl nuw nsw i32 %i.dc, 1
  %spec.select.i.i106 = select i1 %i.dd, i32 %i.de, i32 64 ; 2 uses
  store i32 %spec.select.i.i106, ptr %i.db, align 4, !tbaa !154
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !126
  %i.dh = zext nneg i32 %spec.select.i.i106 to i64
  %i.di = shl nuw nsw i64 %i.dh, 5
  %i.dj = tail call ptr @realloc(ptr noundef %i.dg, i64 noundef %i.di) #32 ; 3 uses
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !126
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %nsvg__squareCap.exit, label %._crit_edge36.i.i107

._crit_edge36.i.i107:                             ; preds = %bb.h
  %.pre37.i.i108 = load i32, ptr %i.cz, align 8, !tbaa !145
  br label %.sink.split.i.i109

.sink.split.i.i109:                               ; preds = %._crit_edge36.i.i107, %._crit_edge.i.i115
  %i.dl = phi i32 [ %i.da, %._crit_edge.i.i115 ], [ %.pre37.i.i108, %._crit_edge36.i.i107 ] ; 2 uses
  %i.dm = phi ptr [ %.pre.i.i117, %._crit_edge.i.i115 ], [ %i.dj, %._crit_edge36.i.i107 ]
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [32 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = add nsw i32 %i.dl, 1
  store i32 %i.dp, ptr %i.cz, align 8, !tbaa !145
  %i.dq = fcmp olt float %i.cw, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.49.i.i114 = select i1 %i.dq, i32 1, i32 -1
  %i.ds = insertelement <4 x i1> poison, i1 %i.dq, i64 0
  %i.dt = shufflevector <4 x i1> %i.ds, <4 x i1> poison, <4 x i32> zeroinitializer
  %13 = shufflevector <2 x float> %10, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <2 x float> %12, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = select <4 x i1> %i.dt, <4 x float> %13, <4 x float> %14
  store <4 x float> %i.du, ptr %i.do, align 8, !tbaa !32
  store i32 %.49.i.i114, ptr %i.dr, align 8, !tbaa !155
  br label %nsvg__squareCap.exit

nsvg__squareCap.exit:                             ; preds = %bb.f, %bb.h, %.sink.split.i.i109
  store <2 x float> %10, ptr %7, align 8, !tbaa !32
  store <2 x float> %12, ptr %8, align 8, !tbaa !32
  br label %bb.j

bb.i:                                             ; preds = %nsvg__normalize.exit
  %i.dv = extractelement <2 x float> %i.bj, i64 0
  %i.dw = extractelement <2 x float> %i.bj, i64 1
  call fastcc void @nsvg__roundCap(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, float %i.au, float %i.l, float noundef %i.dv, float noundef %i.dw, float noundef %6, i32 noundef %spec.store.select.i, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %nsvg__buttCap.exit, %bb.i, %nsvg__squareCap.exit, %nsvg__normalize.exit, %bb.b
  %.0252 = phi i32 [ %2, %bb.b ], [ %i.at, %nsvg__normalize.exit ], [ %i.at, %nsvg__squareCap.exit ], [ %i.at, %bb.i ], [ %i.at, %nsvg__buttCap.exit ] ; 2 uses
  %.078250 = phi i32 [ 0, %bb.b ], [ 1, %nsvg__normalize.exit ], [ 1, %nsvg__squareCap.exit ], [ 1, %bb.i ], [ 1, %nsvg__buttCap.exit ] ; 2 uses
  %.080248 = phi ptr [ %1, %bb.b ], [ %i.as, %nsvg__normalize.exit ], [ %i.as, %nsvg__squareCap.exit ], [ %i.as, %bb.i ], [ %i.as, %nsvg__buttCap.exit ] ; 2 uses
  %.081246 = phi ptr [ %i.o, %bb.b ], [ %1, %nsvg__normalize.exit ], [ %1, %nsvg__squareCap.exit ], [ %1, %bb.i ], [ %1, %nsvg__buttCap.exit ] ; 2 uses
  %.sroa.530.0 = phi float [ %i.an, %bb.b ], [ 0.000000e+00, %nsvg__normalize.exit ], [ 0.000000e+00, %nsvg__squareCap.exit ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %nsvg__buttCap.exit ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.ar, %bb.b ], [ 0.000000e+00, %nsvg__normalize.exit ], [ 0.000000e+00, %nsvg__squareCap.exit ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %nsvg__buttCap.exit ] ; 2 uses
  %i.dx = phi <2 x float> [ %i.aq, %bb.b ], [ zeroinitializer, %nsvg__normalize.exit ], [ zeroinitializer, %nsvg__squareCap.exit ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %nsvg__buttCap.exit ] ; 2 uses
  %i.dy = phi <2 x float> [ %i.am, %bb.b ], [ zeroinitializer, %nsvg__normalize.exit ], [ zeroinitializer, %nsvg__squareCap.exit ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %nsvg__buttCap.exit ] ; 2 uses
  %i.dz = icmp slt i32 %.078250, %.0252
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ea = uitofp nneg i32 %spec.store.select.i to float
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 42 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 28 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 42 uses
  %i.eg = insertelement <2 x float> poison, float %i.a, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer ; 13 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %nsvg__roundJoin.exit
  %.079259 = phi i32 [ %.078250, %.lr.ph ], [ %i.vr, %nsvg__roundJoin.exit ]
  %.1258 = phi ptr [ %.080248, %.lr.ph ], [ %i.vq, %nsvg__roundJoin.exit ] ; 20 uses
  %.182257 = phi ptr [ %.081246, %.lr.ph ], [ %.1258, %nsvg__roundJoin.exit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1258, i64 28
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !148 ; 2 uses
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  %i.el = and i32 %i.ek, 1
  %.not85 = icmp eq i32 %i.el, 0
  br i1 %.not85, label %bb.ar, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %4, label %bb.s [
    i32 1, label %bb.m
    i32 2, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  %i.em = getelementptr i8, ptr %.182257, i64 8
  %.182.val = load float, ptr %i.em, align 4, !tbaa !176
  %i.en = getelementptr i8, ptr %.182257, i64 12
  %.182.val100 = load float, ptr %i.en, align 4, !tbaa !175
  %i.eo = fneg float %.182.val
  %i.ep = getelementptr inbounds nuw i8, ptr %.1258, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !175
  %i.er = getelementptr inbounds nuw i8, ptr %.1258, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !176
  %i.et = fneg float %i.es
  %i.eu = tail call float @atan2f(float noundef %i.eo, float noundef %.182.val100) #30 ; 2 uses
  %i.ev = tail call float @atan2f(float noundef %i.et, float noundef %i.eq) #30
  %i.ew = fsub float %i.ev, %i.eu                 ; 3 uses
  %i.ex = fcmp olt float %i.ew, f0x40490FDB
  %i.ey = fadd float %i.ew, f0x40C90FDB
  %.071.i = select i1 %i.ex, float %i.ey, float %i.ew ; 3 uses
  %i.ez = fcmp ogt float %.071.i, f0x40490FDB
  %i.fa = fadd float %.071.i, f0xC0C90FDB
  %.1.i = select i1 %i.ez, float %i.fa, float %.071.i ; 4 uses
  %i.fb = fcmp olt float %.1.i, 0.000000e+00
  %i.fc = fneg float %.1.i
  %i.fd = select i1 %i.fb, float %i.fc, float %.1.i
  %i.fe = fdiv float %i.fd, f0x40490FDB
  %i.ff = fmul float %i.fe, %i.ea
  %i.fg = tail call float @llvm.ceil.f32(float %i.ff)
  %i.fh = fptosi float %i.fg to i32
  %spec.store.select.i118 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 2)
  %.066.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i118, i32 %spec.store.select.i) ; 2 uses
  %i.fi = load <2 x float>, ptr %7, align 8, !tbaa !32
  %i.fj = load <2 x float>, ptr %8, align 8, !tbaa !32
  %i.fk = add nsw i32 %.066.i, -1
  %i.fl = uitofp nneg i32 %i.fk to float
  br label %bb.n

bb.n:                                             ; preds = %nsvg__addEdge.exit88.i, %bb.m
  %.05.i = phi i32 [ 0, %bb.m ], [ %i.hv, %nsvg__addEdge.exit88.i ] ; 2 uses
  %i.fm = phi <2 x float> [ %i.fj, %bb.m ], [ %i.fy, %nsvg__addEdge.exit88.i ] ; 3 uses
  %i.fn = phi <2 x float> [ %i.fi, %bb.m ], [ %i.fx, %nsvg__addEdge.exit88.i ] ; 3 uses
  %i.fo = uitofp nneg i32 %.05.i to float
  %i.fp = fdiv float %i.fo, %i.fl
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fp, float %.1.i, float %i.eu) ; 2 uses
  %i.fr = tail call float @cosf(float noundef %i.fq) #30
  %i.fs = tail call float @sinf(float noundef %i.fq) #30
  %i.ft = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fs, i64 1
  %i.fv = fmul <2 x float> %i.eh, %i.fu           ; 2 uses
  %i.fw = load <2 x float>, ptr %.1258, align 4, !tbaa !32 ; 2 uses
  %i.fx = fsub <2 x float> %i.fw, %i.fv           ; 5 uses
  %i.fy = fadd <2 x float> %i.fv, %i.fw           ; 5 uses
  %i.fz = extractelement <2 x float> %i.fx, i64 1 ; 2 uses
  %i.ga = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.gb = fcmp oeq float %i.fz, %i.ga
  br i1 %i.gb, label %nsvg__addEdge.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gc = load i32, ptr %i.ed, align 8, !tbaa !145 ; 2 uses
  %i.gd = load i32, ptr %i.ee, align 4, !tbaa !154 ; 3 uses
  %.not.i.i119 = icmp slt i32 %i.gc, %i.gd
  br i1 %.not.i.i119, label %._crit_edge.i.i129, label %bb.p

._crit_edge.i.i129:                               ; preds = %bb.o
  %.pre.i.i130 = load ptr, ptr %i.ef, align 8, !tbaa !126
  br label %.sink.split.i.i123

bb.p:                                             ; preds = %bb.o
  %i.ge = icmp sgt i32 %i.gd, 0
  %i.gf = shl nuw nsw i32 %i.gd, 1
  %spec.select.i.i120 = select i1 %i.ge, i32 %i.gf, i32 64 ; 2 uses
  store i32 %spec.select.i.i120, ptr %i.ee, align 4, !tbaa !154
  %i.gg = load ptr, ptr %i.ef, align 8, !tbaa !126
  %i.gh = zext nneg i32 %spec.select.i.i120 to i64
  %i.gi = shl nuw nsw i64 %i.gh, 5
  %i.gj = tail call ptr @realloc(ptr noundef %i.gg, i64 noundef %i.gi) #32 ; 3 uses
  store ptr %i.gj, ptr %i.ef, align 8, !tbaa !126
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %nsvg__addEdge.exit.i, label %._crit_edge36.i.i121

._crit_edge36.i.i121:                             ; preds = %bb.p
  %.pre37.i.i122 = load i32, ptr %i.ed, align 8, !tbaa !145
  br label %.sink.split.i.i123

.sink.split.i.i123:                               ; preds = %._crit_edge36.i.i121, %._crit_edge.i.i129
  %i.gl = phi i32 [ %i.gc, %._crit_edge.i.i129 ], [ %.pre37.i.i122, %._crit_edge36.i.i121 ] ; 2 uses
  %i.gm = phi ptr [ %.pre.i.i130, %._crit_edge.i.i129 ], [ %i.gj, %._crit_edge36.i.i121 ]
  %i.gn = sext i32 %i.gl to i64
  %i.go = getelementptr inbounds [32 x i8], ptr %i.gm, i64 %i.gn ; 2 uses
  %i.gp = add nsw i32 %i.gl, 1
  store i32 %i.gp, ptr %i.ed, align 8, !tbaa !145
  %i.gq = fcmp olt float %i.fz, %i.ga             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %.49.i.i128 = select i1 %i.gq, i32 1, i32 -1
  %i.gs = insertelement <4 x i1> poison, i1 %i.gq, i64 0
  %i.gt = shufflevector <4 x i1> %i.gs, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.gu = shufflevector <2 x float> %i.fx, <2 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gv = shufflevector <2 x float> %i.fn, <2 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gw = select <4 x i1> %i.gt, <4 x float> %i.gu, <4 x float> %i.gv
  store <4 x float> %i.gw, ptr %i.go, align 8, !tbaa !32
  store i32 %.49.i.i128, ptr %i.gr, align 8, !tbaa !155
  br label %nsvg__addEdge.exit.i

nsvg__addEdge.exit.i:                             ; preds = %.sink.split.i.i123, %bb.p, %bb.n
  %i.gx = extractelement <2 x float> %i.fy, i64 1 ; 2 uses
  %i.gy = extractelement <2 x float> %i.fm, i64 1 ; 2 uses
  %i.gz = fcmp oeq float %i.gy, %i.gx
  br i1 %i.gz, label %nsvg__addEdge.exit88.i, label %bb.q

bb.q:                                             ; preds = %nsvg__addEdge.exit.i
  %i.ha = load i32, ptr %i.ed, align 8, !tbaa !145 ; 2 uses
  %i.hb = load i32, ptr %i.ee, align 4, !tbaa !154 ; 3 uses
  %.not.i75.i = icmp slt i32 %i.ha, %i.hb
  br i1 %.not.i75.i, label %._crit_edge.i85.i, label %bb.r

._crit_edge.i85.i:                                ; preds = %bb.q
  %.pre.i87.i = load ptr, ptr %i.ef, align 8, !tbaa !126
  br label %.sink.split.i79.i

bb.r:                                             ; preds = %bb.q
  %i.hc = icmp sgt i32 %i.hb, 0
  %i.hd = shl nuw nsw i32 %i.hb, 1
  %spec.select.i76.i = select i1 %i.hc, i32 %i.hd, i32 64 ; 2 uses
  store i32 %spec.select.i76.i, ptr %i.ee, align 4, !tbaa !154
  %i.he = load ptr, ptr %i.ef, align 8, !tbaa !126
  %i.hf = zext nneg i32 %spec.select.i76.i to i64
  %i.hg = shl nuw nsw i64 %i.hf, 5
  %i.hh = tail call ptr @realloc(ptr noundef %i.he, i64 noundef %i.hg) #32 ; 3 uses
  store ptr %i.hh, ptr %i.ef, align 8, !tbaa !126
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %nsvg__addEdge.exit88.i, label %._crit_edge36.i77.i

._crit_edge36.i77.i:                              ; preds = %bb.r
  %.pre37.i78.i = load i32, ptr %i.ed, align 8, !tbaa !145
  br label %.sink.split.i79.i

.sink.split.i79.i:                                ; preds = %._crit_edge36.i77.i, %._crit_edge.i85.i
  %i.hj = phi i32 [ %i.ha, %._crit_edge.i85.i ], [ %.pre37.i78.i, %._crit_edge36.i77.i ] ; 2 uses
  %i.hk = phi ptr [ %.pre.i87.i, %._crit_edge.i85.i ], [ %i.hh, %._crit_edge36.i77.i ]
  %i.hl = sext i32 %i.hj to i64
  %i.hm = getelementptr inbounds [32 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = add nsw i32 %i.hj, 1
  store i32 %i.hn, ptr %i.ed, align 8, !tbaa !145
  %i.ho = fcmp olt float %i.gy, %i.gx             ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %.49.i84.i = select i1 %i.ho, i32 1, i32 -1
  %i.hq = insertelement <4 x i1> poison, i1 %i.ho, i64 0
  %i.hr = shufflevector <4 x i1> %i.hq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.hs = shufflevector <2 x float> %i.fm, <2 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ht = shufflevector <2 x float> %i.fy, <2 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hu = select <4 x i1> %i.hr, <4 x float> %i.hs, <4 x float> %i.ht
  store <4 x float> %i.hu, ptr %i.hm, align 8, !tbaa !32
  store i32 %.49.i84.i, ptr %i.hp, align 8, !tbaa !155
  br label %nsvg__addEdge.exit88.i
end_hunk_1
begin_hunk_2_@nsvg__expandStroke:bb.a
bb.bk:                                            ; preds = %bb.bj
  %i.aco = icmp sgt i32 %i.acn, 0
  %i.acp = shl nuw nsw i32 %i.acn, 1
  %spec.select.i.i207 = select i1 %i.aco, i32 %i.acp, i32 64 ; 2 uses
  store i32 %spec.select.i.i207, ptr %i.acm, align 4, !tbaa !154
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !126
  %i.acs = zext nneg i32 %spec.select.i.i207 to i64
  %i.act = shl nuw nsw i64 %i.acs, 5
  %i.acu = tail call ptr @realloc(ptr noundef %i.acr, i64 noundef %i.act) #32 ; 3 uses
  store ptr %i.acu, ptr %i.acq, align 8, !tbaa !126
  %i.acv = icmp eq ptr %i.acu, null
  br i1 %i.acv, label %nsvg__addEdge.exit.i216, label %._crit_edge36.i.i208

._crit_edge36.i.i208:                             ; preds = %bb.bk
  %.pre37.i.i209 = load i32, ptr %i.ack, align 8, !tbaa !145
  br label %.sink.split.i.i210

.sink.split.i.i210:                               ; preds = %._crit_edge36.i.i208, %._crit_edge.i.i217
  %i.acw = phi i32 [ %i.acl, %._crit_edge.i.i217 ], [ %.pre37.i.i209, %._crit_edge36.i.i208 ] ; 2 uses
  %i.acx = phi ptr [ %.pre.i.i219, %._crit_edge.i.i217 ], [ %i.acu, %._crit_edge36.i.i208 ]
  %i.acy = sext i32 %i.acw to i64
  %i.acz = getelementptr inbounds [32 x i8], ptr %i.acx, i64 %i.acy ; 2 uses
  %i.ada = add nsw i32 %i.acw, 1
  store i32 %i.ada, ptr %i.ack, align 8, !tbaa !145
  %i.adb = fcmp olt float %i.aci, %i.ach          ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %.49.i.i215 = select i1 %i.adb, i32 1, i32 -1
  %i.add = insertelement <4 x i1> poison, i1 %i.adb, i64 0
  %i.ade = shufflevector <4 x i1> %i.add, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.adf = shufflevector <2 x float> %i.acd, <2 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adg = shufflevector <2 x float> %i.acg, <2 x float> %i.acd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adh = select <4 x i1> %i.ade, <4 x float> %i.adf, <4 x float> %i.adg
  store <4 x float> %i.adh, ptr %i.acz, align 8, !tbaa !32
  store i32 %.49.i.i215, ptr %i.adc, align 8, !tbaa !155
  br label %nsvg__addEdge.exit.i216

nsvg__addEdge.exit.i216:                          ; preds = %.sink.split.i.i210, %bb.bk, %bb.bi
  %i.adi = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.adj = load <2 x float>, ptr %8, align 8, !tbaa !32 ; 2 uses
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !152 ; 2 uses
  %i.adl = fcmp oeq float %i.adk, %i.aci
  br i1 %i.adl, label %nsvg__addEdge.exit57.i, label %bb.bl

bb.bl:                                            ; preds = %nsvg__addEdge.exit.i216
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !145 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !154 ; 3 uses
  %.not.i44.i = icmp slt i32 %i.adn, %i.adp
  br i1 %.not.i44.i, label %._crit_edge.i54.i, label %bb.bm

._crit_edge.i54.i:                                ; preds = %bb.bl
  %.phi.trans.insert.i55.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i56.i = load ptr, ptr %.phi.trans.insert.i55.i, align 8, !tbaa !126
  br label %.sink.split.i48.i

bb.bm:                                            ; preds = %bb.bl
  %i.adq = icmp sgt i32 %i.adp, 0
  %i.adr = shl nuw nsw i32 %i.adp, 1
  %spec.select.i45.i = select i1 %i.adq, i32 %i.adr, i32 64 ; 2 uses
  store i32 %spec.select.i45.i, ptr %i.ado, align 4, !tbaa !154
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !126
  %i.adu = zext nneg i32 %spec.select.i45.i to i64
  %i.adv = shl nuw nsw i64 %i.adu, 5
  %i.adw = tail call ptr @realloc(ptr noundef %i.adt, i64 noundef %i.adv) #32 ; 3 uses
  store ptr %i.adw, ptr %i.ads, align 8, !tbaa !126
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %nsvg__addEdge.exit57.i, label %._crit_edge36.i46.i

._crit_edge36.i46.i:                              ; preds = %bb.bm
  %.pre37.i47.i = load i32, ptr %i.adm, align 8, !tbaa !145
  br label %.sink.split.i48.i

.sink.split.i48.i:                                ; preds = %._crit_edge36.i46.i, %._crit_edge.i54.i
  %i.ady = phi i32 [ %i.adn, %._crit_edge.i54.i ], [ %.pre37.i47.i, %._crit_edge36.i46.i ] ; 2 uses
  %i.adz = phi ptr [ %.pre.i56.i, %._crit_edge.i54.i ], [ %i.adw, %._crit_edge36.i46.i ]
  %i.aea = sext i32 %i.ady to i64
  %i.aeb = getelementptr inbounds [32 x i8], ptr %i.adz, i64 %i.aea ; 2 uses
  %i.aec = add nsw i32 %i.ady, 1
  store i32 %i.aec, ptr %i.adm, align 8, !tbaa !145
  %i.aed = fcmp olt float %i.adk, %i.aci          ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %.49.i53.i = select i1 %i.aed, i32 1, i32 -1
  %i.aef = insertelement <4 x i1> poison, i1 %i.aed, i64 0
  %i.aeg = shufflevector <4 x i1> %i.aef, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.aeh = shufflevector <2 x float> %i.adj, <2 x float> %i.acd, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aei = shufflevector <2 x float> %i.adj, <2 x float> %i.acd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aej = select <4 x i1> %i.aeg, <4 x float> %i.aeh, <4 x float> %i.aei
  %i.aek = shufflevector <4 x float> %i.aej, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.aek, ptr %i.aeb, align 8, !tbaa !32
  store i32 %.49.i53.i, ptr %i.aee, align 8, !tbaa !155
  br label %nsvg__addEdge.exit57.i

nsvg__addEdge.exit57.i:                           ; preds = %.sink.split.i48.i, %bb.bm, %nsvg__addEdge.exit.i216
  %i.ael = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aem = load <2 x float>, ptr %7, align 8, !tbaa !32 ; 2 uses
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !152 ; 2 uses
  %i.aeo = fcmp oeq float %i.ach, %i.aen
  br i1 %i.aeo, label %nsvg__addEdge.exit188, label %bb.bn

bb.bn:                                            ; preds = %nsvg__addEdge.exit57.i
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !145 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !154 ; 3 uses
  %.not.i58.i = icmp slt i32 %i.aeq, %i.aes
  br i1 %.not.i58.i, label %._crit_edge.i68.i, label %bb.bo

._crit_edge.i68.i:                                ; preds = %bb.bn
  %.phi.trans.insert.i69.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i70.i = load ptr, ptr %.phi.trans.insert.i69.i, align 8, !tbaa !126
  br label %.sink.split.i62.i

bb.bo:                                            ; preds = %bb.bn
  %i.aet = icmp sgt i32 %i.aes, 0
  %i.aeu = shl nuw nsw i32 %i.aes, 1
  %spec.select.i59.i = select i1 %i.aet, i32 %i.aeu, i32 64 ; 2 uses
  store i32 %spec.select.i59.i, ptr %i.aer, align 4, !tbaa !154
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !126
  %i.aex = zext nneg i32 %spec.select.i59.i to i64
  %i.aey = shl nuw nsw i64 %i.aex, 5
  %i.aez = tail call ptr @realloc(ptr noundef %i.aew, i64 noundef %i.aey) #32 ; 3 uses
  store ptr %i.aez, ptr %i.aev, align 8, !tbaa !126
  %i.afa = icmp eq ptr %i.aez, null
  br i1 %i.afa, label %nsvg__addEdge.exit188, label %._crit_edge36.i60.i

._crit_edge36.i60.i:                              ; preds = %bb.bo
  %.pre37.i61.i = load i32, ptr %i.aep, align 8, !tbaa !145
  br label %.sink.split.i62.i

.sink.split.i62.i:                                ; preds = %._crit_edge36.i60.i, %._crit_edge.i68.i
  %i.afb = phi i32 [ %i.aeq, %._crit_edge.i68.i ], [ %.pre37.i61.i, %._crit_edge36.i60.i ] ; 2 uses
  %i.afc = phi ptr [ %.pre.i70.i, %._crit_edge.i68.i ], [ %i.aez, %._crit_edge36.i60.i ]
  %i.afd = sext i32 %i.afb to i64
  %i.afe = getelementptr inbounds [32 x i8], ptr %i.afc, i64 %i.afd ; 2 uses
  %i.aff = add nsw i32 %i.afb, 1
  store i32 %i.aff, ptr %i.aep, align 8, !tbaa !145
  %i.afg = fcmp olt float %i.ach, %i.aen          ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %.49.i67.i = select i1 %i.afg, i32 1, i32 -1
  %i.afi = insertelement <4 x i1> poison, i1 %i.afg, i64 0
  %i.afj = shufflevector <4 x i1> %i.afi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.afk = shufflevector <2 x float> %i.aem, <2 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afl = shufflevector <2 x float> %i.acg, <2 x float> %i.aem, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afm = select <4 x i1> %i.afj, <4 x float> %i.afk, <4 x float> %i.afl
  %i.afn = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.afn, ptr %i.afe, align 8, !tbaa !32
  store i32 %.49.i67.i, ptr %i.afh, align 8, !tbaa !155
  br label %nsvg__addEdge.exit188

bb.bp:                                            ; preds = %nsvg__normalize.exit190
  %i.afo = fneg <2 x float> %i.yj                 ; 2 uses
  %i.afp = extractelement <2 x float> %i.xw, i64 0
  %i.afq = extractelement <2 x float> %i.xw, i64 1
  %i.afr = extractelement <2 x float> %i.afo, i64 0
  %i.afs = extractelement <2 x float> %i.afo, i64 1
  call fastcc void @nsvg__roundCap(ptr noundef %0, ptr noundef %8, ptr noundef %7, float %i.afp, float %i.afq, float noundef %i.afr, float noundef %i.afs, float noundef %6, i32 noundef %spec.store.select.i, i32 noundef 1)
  br label %nsvg__addEdge.exit188

nsvg__addEdge.exit188:                            ; preds = %.sink.split.i62.i, %bb.bo, %nsvg__addEdge.exit57.i, %.sink.split.i58.i, %bb.bh, %nsvg__addEdge.exit53.i, %bb.bp, %nsvg__normalize.exit190, %.sink.split.i179, %bb.ba, %nsvg__addEdge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__roundCap(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, float %.0.val, float %.4.val, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #3 {
bb.a:
  %i.a = fmul float %5, 5.000000e-01              ; 4 uses
  %i.b = fneg float %3                            ; 2 uses
  %i.c = icmp sgt i32 %6, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %6, -1                       ; 2 uses
  %i.e = uitofp nneg i32 %i.d to float            ; 2 uses
  %i.f = fneg float %4                            ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = fdiv ninf float 0.000000e+00, %i.e       ; 2 uses
  %i.k = tail call float @llvm.fabs.f32(float %i.j)
  %i.l = tail call float @cosf(float %i.j)
  %i.m = fmul float %i.a, %i.l
  %i.n = tail call float @sinf(float noundef %i.k) #30
  %i.o = fmul float %i.a, %i.n
  %i.p = insertelement <2 x float> poison, float %i.f, i64 0
  %i.q = insertelement <2 x float> %i.p, float %3, i64 1
  %i.r = insertelement <2 x float> poison, float %i.m, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %.0.val, i64 0
  %i.u = insertelement <2 x float> %i.t, float %.4.val, i64 1 ; 2 uses
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.u)
  %i.w = insertelement <2 x float> poison, float %i.b, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.f, i64 1
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.z, <2 x float> %i.v) ; 4 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %6, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %i.ac = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %3, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.b, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.f, i64 1
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %nsvg__addEdge.exit
  %.0651 = phi i32 [ %i.bx, %nsvg__addEdge.exit ], [ 1, %.peel.next.preheader ] ; 3 uses
  %i.ag = phi <2 x float> [ %i.bw, %nsvg__addEdge.exit ], [ zeroinitializer, %.peel.next.preheader ]
  %i.ah = phi <2 x float> [ %i.au, %nsvg__addEdge.exit ], [ %i.aa, %.peel.next.preheader ] ; 3 uses
  %i.ai = uitofp nneg i32 %.0651 to float
  %i.aj = fdiv float %i.ai, %i.e
  %i.ak = fmul float %i.aj, f0x40490FDB           ; 2 uses
  %i.al = tail call float @cosf(float noundef %i.ak) #30
  %i.am = fmul float %i.a, %i.al
  %i.an = tail call float @sinf(float noundef %i.ak) #30
  %i.ao = fmul float %i.a, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.aq, <2 x float> %i.u)
  %i.as = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.at, <2 x float> %i.ar) ; 5 uses
  %i.av = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.aw = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ax = fcmp oeq float %i.aw, %i.av
  br i1 %i.ax, label %nsvg__addEdge.exit, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !145 ; 2 uses
  %i.az = load i32, ptr %i.h, align 4, !tbaa !154 ; 3 uses
  %.not.i = icmp slt i32 %i.ay, %i.az
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !126
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = shl nuw nsw i32 %i.az, 1
  %spec.select.i = select i1 %i.ba, i32 %i.bb, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.h, align 4, !tbaa !154
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = tail call ptr @realloc(ptr noundef %i.bc, i64 noundef %i.be) #32 ; 3 uses
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !126
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %nsvg__addEdge.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.d
  %.pre37.i = load i32, ptr %i.g, align 8, !tbaa !145
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.bh = phi i32 [ %i.ay, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bf, %._crit_edge36.i ]
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = add nsw i32 %i.bh, 1
  store i32 %i.bl, ptr %i.g, align 8, !tbaa !145
  %i.bm = fcmp olt float %i.aw, %i.av             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.49.i = select i1 %i.bm, i32 1, i32 -1
  %i.bo = insertelement <4 x i1> poison, i1 %i.bm, i64 0
  %i.bp = shufflevector <4 x i1> %i.bo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ah, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.br = shufflevector <2 x float> %i.au, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = select <4 x i1> %i.bp, <4 x float> %i.bq, <4 x float> %i.br
  store <4 x float> %i.bs, ptr %i.bk, align 8, !tbaa !32
  store i32 %.49.i, ptr %i.bn, align 8, !tbaa !155
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %.peel.next, %bb.d, %.sink.split.i
  %i.bt = icmp eq i32 %.0651, %i.d
  %i.bu = insertelement <2 x i1> poison, i1 %i.bt, i64 0
  %i.bv = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.au, <2 x float> %i.ag ; 2 uses
  %i.bx = add nuw nsw i32 %.0651, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %6
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !319

._crit_edge:                                      ; preds = %nsvg__addEdge.exit, %bb.b, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %bb.b ], [ %i.ab, %nsvg__addEdge.exit ] ; 2 uses
  %i.by = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.bw, %nsvg__addEdge.exit ] ; 4 uses
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.b ], [ %i.aa, %nsvg__addEdge.exit ] ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %nsvg__addEdge.exit95, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load <2 x float>, ptr %1, align 4, !tbaa !32 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !152 ; 2 uses
  %i.cd = fcmp oeq float %i.cc, %.063.lcssa
  br i1 %i.cd, label %nsvg__addEdge.exit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !145 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !154 ; 3 uses
  %.not.i68 = icmp slt i32 %i.cf, %i.ch
  br i1 %.not.i68, label %._crit_edge.i78, label %bb.g

._crit_edge.i78:                                  ; preds = %bb.f
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i80 = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !126
  br label %.sink.split.i72

bb.g:                                             ; preds = %bb.f
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = shl nuw nsw i32 %i.ch, 1
  %spec.select.i69 = select i1 %i.ci, i32 %i.cj, i32 64 ; 2 uses
  store i32 %spec.select.i69, ptr %i.cg, align 4, !tbaa !154
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !126
  %i.cm = zext nneg i32 %spec.select.i69 to i64
  %i.cn = shl nuw nsw i64 %i.cm, 5
  %i.co = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cn) #32 ; 3 uses
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !126
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %nsvg__addEdge.exit81, label %._crit_edge36.i70

._crit_edge36.i70:                                ; preds = %bb.g
  %.pre37.i71 = load i32, ptr %i.ce, align 8, !tbaa !145
  br label %.sink.split.i72

.sink.split.i72:                                  ; preds = %._crit_edge36.i70, %._crit_edge.i78
  %i.cq = phi i32 [ %i.cf, %._crit_edge.i78 ], [ %.pre37.i71, %._crit_edge36.i70 ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i80, %._crit_edge.i78 ], [ %i.co, %._crit_edge36.i70 ]
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = add nsw i32 %i.cq, 1
  store i32 %i.cu, ptr %i.ce, align 8, !tbaa !145
  %i.cv = fcmp olt float %i.cc, %.063.lcssa       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.49.i77 = select i1 %i.cv, i32 1, i32 -1
  %i.cx = insertelement <4 x i1> poison, i1 %i.cv, i64 0
  %i.cy = shufflevector <4 x i1> %i.cx, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cz = shufflevector <2 x float> %i.bz, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <2 x float> %i.cb, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = select <4 x i1> %i.cy, <4 x float> %i.cz, <4 x float> %i.da
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.dc, ptr %i.ct, align 8, !tbaa !32
  store i32 %.49.i77, ptr %i.cw, align 8, !tbaa !155
  br label %nsvg__addEdge.exit81

nsvg__addEdge.exit81:                             ; preds = %bb.e, %bb.g, %.sink.split.i72
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dd = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %9 = load float, ptr %8, align 4, !tbaa !152    ; 2 uses
  %i.de = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.df = fcmp oeq float %i.de, %9
  br i1 %i.df, label %nsvg__addEdge.exit95, label %bb.h

bb.h:                                             ; preds = %nsvg__addEdge.exit81
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !145 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154 ; 3 uses
  %.not.i82 = icmp slt i32 %i.dh, %i.dj
  br i1 %.not.i82, label %._crit_edge.i92, label %bb.i

._crit_edge.i92:                                  ; preds = %bb.h
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i94 = load ptr, ptr %.phi.trans.insert.i93, align 8, !tbaa !126
  br label %.sink.split.i86

bb.i:                                             ; preds = %bb.h
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = shl nuw nsw i32 %i.dj, 1
  %spec.select.i83 = select i1 %i.dk, i32 %i.dl, i32 64 ; 2 uses
  store i32 %spec.select.i83, ptr %i.di, align 4, !tbaa !154
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !126
  %i.do = zext nneg i32 %spec.select.i83 to i64
  %i.dp = shl nuw nsw i64 %i.do, 5
  %i.dq = tail call ptr @realloc(ptr noundef %i.dn, i64 noundef %i.dp) #32 ; 3 uses
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !126
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %nsvg__addEdge.exit95, label %._crit_edge36.i84

._crit_edge36.i84:                                ; preds = %bb.i
  %.pre37.i85 = load i32, ptr %i.dg, align 8, !tbaa !145
  br label %.sink.split.i86

.sink.split.i86:                                  ; preds = %._crit_edge36.i84, %._crit_edge.i92
  %i.ds = phi i32 [ %i.dh, %._crit_edge.i92 ], [ %.pre37.i85, %._crit_edge36.i84 ] ; 2 uses
  %i.dt = phi ptr [ %.pre.i94, %._crit_edge.i92 ], [ %i.dq, %._crit_edge36.i84 ]
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  %i.dw = add nsw i32 %i.ds, 1
  store i32 %i.dw, ptr %i.dg, align 8, !tbaa !145
  %i.dx = fcmp olt float %i.de, %9                ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.49.i91 = select i1 %i.dx, i32 1, i32 -1
  %10 = insertelement <4 x i1> poison, i1 %i.dx, i64 0
  %11 = shufflevector <4 x i1> %10, <4 x i1> poison, <4 x i32> zeroinitializer
  %12 = shufflevector <2 x float> %i.by, <2 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <2 x float> %i.dd, <2 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = select <4 x i1> %11, <4 x float> %12, <4 x float> %13
  store <4 x float> %14, ptr %i.dv, align 8, !tbaa !32
  store i32 %.49.i91, ptr %i.dy, align 8, !tbaa !155
  br label %nsvg__addEdge.exit95

nsvg__addEdge.exit95:                             ; preds = %.sink.split.i86, %bb.i, %nsvg__addEdge.exit81, %._crit_edge
  store <2 x float> %i.bz, ptr %1, align 4, !tbaa !32
  store <2 x float> %i.by, ptr %2, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{null}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = distinct !{null}
!22 = distinct !{!22, !10}
!23 = !{!24, !27, i64 39968}
!24 = !{!"NSVGparser", !6, i64 0, !5, i64 39936, !25, i64 39944, !5, i64 39952, !5, i64 39956, !26, i64 39960, !27, i64 39968, !28, i64 39976, !29, i64 39984, !30, i64 39992, !31, i64 40000, !31, i64 40004, !31, i64 40008, !31, i64 40012, !5, i64 40016, !5, i64 40020, !5, i64 40024, !31, i64 40028, !6, i64 40032, !6, i64 40033, !6, i64 40034}
!25 = !{!"p1 float", !20, i64 0}
!26 = !{!"p1 _ZTS8NSVGpath", !20, i64 0}
!27 = !{!"p1 _ZTS9NSVGimage", !20, i64 0}
!28 = !{!"p1 _ZTS20NSVGstyleDeclaration", !20, i64 0}
!29 = !{!"p1 _ZTS16NSVGgradientData", !20, i64 0}
!30 = !{!"p1 _ZTS9NSVGshape", !20, i64 0}
!31 = !{!"float", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!34, !31, i64 104}
!34 = !{!"NSVGattrib", !6, i64 0, !6, i64 64, !5, i64 88, !5, i64 92, !31, i64 96, !31, i64 100, !31, i64 104, !6, i64 108, !6, i64 172, !31, i64 236, !31, i64 240, !6, i64 244, !5, i64 276, !6, i64 280, !6, i64 281, !31, i64 284, !6, i64 288, !31, i64 292, !5, i64 296, !31, i64 300, !31, i64 304, !6, i64 308, !6, i64 309, !6, i64 310, !6, i64 311}
!35 = !{!34, !31, i64 300}
!36 = !{!34, !31, i64 236}
!37 = !{!34, !31, i64 284}
!38 = !{!34, !6, i64 308}
!39 = !{!34, !6, i64 310}
!40 = !{!34, !6, i64 311}
!41 = !{!24, !31, i64 40028}
!42 = !{!30, !30, i64 0}
!43 = !{!44, !6, i64 64}
!44 = !{!"NSVGshape", !6, i64 0, !45, i64 64, !45, i64 80, !31, i64 96, !31, i64 100, !31, i64 104, !6, i64 108, !6, i64 140, !6, i64 141, !6, i64 142, !31, i64 144, !6, i64 148, !6, i64 149, !6, i64 150, !6, i64 152, !6, i64 168, !6, i64 232, !6, i64 296, !26, i64 320, !30, i64 328}
!45 = !{!"NSVGpaint", !6, i64 0, !6, i64 8}
!46 = !{!44, !6, i64 80}
!47 = distinct !{!47, !10}
!48 = !{!49, !30, i64 8}
!49 = !{!"NSVGimage", !31, i64 0, !31, i64 4, !30, i64 8}
!50 = !{!44, !30, i64 328}
!51 = distinct !{!51, !10}
!52 = !{!24, !31, i64 40008}
!53 = !{!49, !31, i64 0}
!54 = !{!24, !31, i64 40000}
!55 = !{!24, !31, i64 40012}
!56 = !{!49, !31, i64 4}
!57 = !{!24, !31, i64 40004}
!58 = !{!24, !5, i64 39936}
!59 = !{!34, !31, i64 292}
!60 = !{!24, !5, i64 40024}
!61 = !{!24, !5, i64 40016}
!62 = !{!24, !5, i64 40020}
!63 = !{!26, !26, i64 0}
!64 = !{!65, !5, i64 8}
!65 = !{!"NSVGpath", !25, i64 0, !5, i64 8, !6, i64 12, !6, i64 16, !26, i64 32}
!66 = !{!65, !25, i64 0}
!67 = distinct !{!67, !10, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !10, !69, !68}
!71 = distinct !{!71, !10}
!72 = !{!44, !6, i64 140}
!73 = distinct !{!73, !10, !68, !69}
!74 = distinct !{!74, !10, !69, !68}
!75 = distinct !{!75, !10}
!76 = !{!24, !28, i64 39976}
!77 = !{!78, !28, i64 16}
!78 = !{!"NSVGstyleDeclaration", !19, i64 0, !19, i64 8, !28, i64 16}
!79 = !{!78, !19, i64 0}
!80 = !{!78, !19, i64 8}
!81 = distinct !{!81, !10}
!82 = !{!24, !26, i64 39960}
!83 = !{!65, !26, i64 32}
!84 = distinct !{!84, !10}
!85 = !{!24, !29, i64 39984}
!86 = !{!87, !29, i64 216}
!87 = !{!"NSVGgradientData", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 132, !6, i64 172, !6, i64 173, !6, i64 176, !5, i64 200, !88, i64 208, !29, i64 216}
!88 = !{!"p1 _ZTS16NSVGgradientStop", !20, i64 0}
!89 = !{!87, !88, i64 208}
!90 = distinct !{!90, !10}
!91 = !{!24, !25, i64 39944}
!92 = !{!24, !6, i64 40033}
!93 = !{!24, !6, i64 40034}
!94 = !{!24, !6, i64 40032}
!95 = distinct !{!95, !10}
!96 = !{!24, !5, i64 39952}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
!99 = !{!24, !5, i64 39956}
!100 = distinct !{!100, !10, !101}
!101 = !{!"llvm.loop.peeled.count", i32 1}
!102 = distinct !{!102, !10}
!103 = distinct !{!103, !10}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, !10}
!109 = !{!28, !28, i64 0}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10}
!113 = !{!44, !26, i64 320}
!114 = !{!45, !6, i64 0}
!115 = distinct !{!115, !10}
!116 = !{!65, !6, i64 12}
end_hunk_2
