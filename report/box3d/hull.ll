Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateHull:bb.a
  %i.tt = load i32, ptr %i.pl, align 4, !tbaa !64 ; 2 uses
  %i.tu = add nsw i32 %i.tt, 1
  %i.tv = sext i32 %i.tt to i64
  %i.tw = getelementptr inbounds [48 x i8], ptr %i.ts, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  store i32 -1, ptr %i.tx, align 8, !tbaa !65
  br label %b3HullBuilder_NewEdge.exit144.thread.i.i

b3HullBuilder_NewEdge.exit.i.i:                   ; preds = %bb.ao
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !55 ; 6 uses
  store ptr %i.tz, ptr %i.pj, align 8, !tbaa !63
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  store i32 -1, ptr %i.ua, align 8, !tbaa !65
  %.not.i142.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i142.i.i, label %b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i, label %b3HullBuilder_NewEdge.exit144.i.i

b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i: ; preds = %b3HullBuilder_NewEdge.exit.i.i
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !41
  %.pre136.i = load i32, ptr %i.pl, align 4, !tbaa !64
  br label %b3HullBuilder_NewEdge.exit144.thread.i.i

b3HullBuilder_NewEdge.exit144.thread.i.i:         ; preds = %b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i, %b3HullBuilder_NewEdge.exit.thread.i.i
  %i.ub = phi i32 [ %i.tu, %b3HullBuilder_NewEdge.exit.thread.i.i ], [ %.pre136.i, %b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i ] ; 2 uses
  %i.uc = phi ptr [ %i.ts, %b3HullBuilder_NewEdge.exit.thread.i.i ], [ %.pre.i, %b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i ] ; 2 uses
  %.0.i189.i.i = phi ptr [ %i.tw, %b3HullBuilder_NewEdge.exit.thread.i.i ], [ %i.tr, %b3HullBuilder_NewEdge.exit.i.b3HullBuilder_NewEdge.exit144.thread.i_crit_edge.i ]
  %i.ud = add nsw i32 %i.ub, 1
  %i.ue = sext i32 %i.ub to i64
  %i.uf = getelementptr inbounds [48 x i8], ptr %i.uc, i64 %i.ue ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  store i32 -1, ptr %i.ug, align 8, !tbaa !65
  br label %bb.aq

b3HullBuilder_NewEdge.exit144.i.i:                ; preds = %b3HullBuilder_NewEdge.exit.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !55 ; 4 uses
  store ptr %i.ui, ptr %i.pj, align 8, !tbaa !63
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  store i32 -1, ptr %i.uj, align 8, !tbaa !65
  %.not.i145.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i145.i.i, label %b3HullBuilder_NewEdge.exit144.i._crit_edge.i, label %bb.ap

b3HullBuilder_NewEdge.exit144.i._crit_edge.i:     ; preds = %b3HullBuilder_NewEdge.exit144.i.i
  %.pre137.i = load ptr, ptr %i.ay, align 8, !tbaa !41
  %.pre138.i = load i32, ptr %i.pl, align 4, !tbaa !64
  br label %bb.aq

bb.ap:                                            ; preds = %b3HullBuilder_NewEdge.exit144.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !55
  store ptr %i.ul, ptr %i.pj, align 8, !tbaa !63
  br label %b3HullBuilder_NewEdge.exit147.i.i

bb.aq:                                            ; preds = %b3HullBuilder_NewEdge.exit144.i._crit_edge.i, %b3HullBuilder_NewEdge.exit144.thread.i.i
  %i.um = phi i32 [ %i.ud, %b3HullBuilder_NewEdge.exit144.thread.i.i ], [ %.pre138.i, %b3HullBuilder_NewEdge.exit144.i._crit_edge.i ] ; 2 uses
  %i.un = phi ptr [ %i.uc, %b3HullBuilder_NewEdge.exit144.thread.i.i ], [ %.pre137.i, %b3HullBuilder_NewEdge.exit144.i._crit_edge.i ]
  %.0.i143196.i.i = phi ptr [ %i.uf, %b3HullBuilder_NewEdge.exit144.thread.i.i ], [ %i.tz, %b3HullBuilder_NewEdge.exit144.i._crit_edge.i ]
  %.0.i188194.i.i = phi ptr [ %.0.i189.i.i, %b3HullBuilder_NewEdge.exit144.thread.i.i ], [ %i.tr, %b3HullBuilder_NewEdge.exit144.i._crit_edge.i ]
  %i.uo = add nsw i32 %i.um, 1
  store i32 %i.uo, ptr %i.pl, align 4, !tbaa !64
  %i.up = sext i32 %i.um to i64
  %i.uq = getelementptr inbounds [48 x i8], ptr %i.un, i64 %i.up
  br label %b3HullBuilder_NewEdge.exit147.i.i

b3HullBuilder_NewEdge.exit147.i.i:                ; preds = %bb.aq, %bb.ap
  %.0.i143195.i.i = phi ptr [ %i.tz, %bb.ap ], [ %.0.i143196.i.i, %bb.aq ] ; 7 uses
  %.0.i188193.i.i = phi ptr [ %i.tr, %bb.ap ], [ %.0.i188194.i.i, %bb.aq ] ; 8 uses
  %.0.i146.i.i = phi ptr [ %i.ui, %bb.ap ], [ %i.uq, %bb.aq ] ; 8 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0.i146.i.i, i64 40
  store i32 -1, ptr %i.ur, align 8, !tbaa !65
  %.sroa.081.0.copyload.i.i = load <2 x float>, ptr %i.qn, align 8, !tbaa !23 ; 3 uses
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.2.0..sroa_idx.i.i52.i, align 8, !tbaa !23 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.tb, i64 24 ; 2 uses
  %.sroa.079.0.copyload.i88.i = load <2 x float>, ptr %i.us, align 8, !tbaa !23 ; 2 uses
  %.sroa.480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tb, i64 32 ; 2 uses
  %.sroa.480.0.copyload.i.i = load float, ptr %.sroa.480.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tf, i64 24 ; 2 uses
  %.sroa.077.0.copyload.i.i = load <2 x float>, ptr %i.ut, align 8, !tbaa !23 ; 2 uses
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 32 ; 2 uses
  %.sroa.478.0.copyload.i.i = load float, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.uu = shufflevector <2 x float> %.sroa.077.0.copyload.i.i, <2 x float> %.sroa.079.0.copyload.i88.i, <2 x i32> <i32 0, i32 3>
  %i.uv = fsub <2 x float> %i.uu, %.sroa.081.0.copyload.i.i ; 3 uses
  %i.uw = shufflevector <2 x float> %.sroa.079.0.copyload.i88.i, <2 x float> %.sroa.077.0.copyload.i.i, <2 x i32> <i32 0, i32 3>
  %i.ux = fsub <2 x float> %i.uw, %.sroa.081.0.copyload.i.i ; 3 uses
  %i.uy = insertelement <2 x float> poison, float %.sroa.480.0.copyload.i.i, i64 0
  %i.uz = insertelement <2 x float> %i.uy, float %.sroa.478.0.copyload.i.i, i64 1
  %i.va = insertelement <2 x float> poison, float %.sroa.6.0.copyload.i.i, i64 0
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vc = fsub <2 x float> %i.uz, %i.vb           ; 2 uses
  %i.vd = fmul <2 x float> %i.vc, %i.uv
  %i.ve = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vf = fmul <2 x float> %i.ux, %i.ve
  %i.vg = fsub <2 x float> %i.vd, %i.vf           ; 3 uses
  %shift570 = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop571 = fmul <2 x float> %i.ux, %shift570
  %shift573 = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop574 = fmul <2 x float> %shift573, %i.uv
  %foldExtExtBinop576 = fsub <2 x float> %foldExtExtBinop571, %foldExtExtBinop574 ; 3 uses
  %i.vh = fmul <2 x float> %i.vg, %i.vg           ; 2 uses
  %shift578 = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop579 = fadd <2 x float> %shift578, %i.vh
  %foldExtExtBinop581 = fmul <2 x float> %foldExtExtBinop576, %foldExtExtBinop576
  %foldExtExtBinop583 = fadd <2 x float> %foldExtExtBinop581, %foldExtExtBinop579
  %i.vi = extractelement <2 x float> %foldExtExtBinop583, i64 0 ; 2 uses
  %i.vj = fcmp ogt float %i.vi, f0x057A0000
  br i1 %i.vj, label %bb.ar, label %b3HullBuilder_NewFace.exit.i

bb.ar:                                            ; preds = %b3HullBuilder_NewEdge.exit147.i.i
  %i.vk = extractelement <2 x float> %foldExtExtBinop576, i64 0
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.vi) ; 2 uses
  %i.vl = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.vm = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vn = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = fmul <2 x float> %i.vn, %i.vo
  %i.vq = fmul float %i.vk, %i.vl
  %i.vr = fmul nnan float %sqrt.i.i.i, 5.000000e-01
  br label %b3HullBuilder_NewFace.exit.i

b3HullBuilder_NewFace.exit.i:                     ; preds = %bb.ar, %b3HullBuilder_NewEdge.exit147.i.i
  %.sink.i.i.i = phi float [ %i.vr, %bb.ar ], [ 0.000000e+00, %b3HullBuilder_NewEdge.exit147.i.i ]
  %.sroa.021.0.i.i.i = phi <2 x float> [ %i.vp, %bb.ar ], [ zeroinitializer, %b3HullBuilder_NewEdge.exit147.i.i ] ; 3 uses
  %.sroa.5.0.i.i.i = phi float [ %i.vq, %bb.ar ], [ 0.000000e+00, %b3HullBuilder_NewEdge.exit147.i.i ] ; 3 uses
  %.sroa.8.8.vec.insert73.i.i = insertelement <2 x float> poison, float %.sroa.5.0.i.i.i, i64 0
  %i.vs = fmul <2 x float> %.sroa.081.0.copyload.i.i, %.sroa.021.0.i.i.i ; 2 uses
  %shift585 = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop586 = fadd <2 x float> %i.vs, %shift585
  %i.vt = extractelement <2 x float> %foldExtExtBinop586, i64 0
  %i.vu = fmul float %.sroa.6.0.copyload.i.i, %.sroa.5.0.i.i.i
  %i.vv = fadd float %i.vu, %i.vt                 ; 2 uses
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %.sroa.8.8.vec.insert73.i.i, float %i.vv, i64 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 16 ; 2 uses
  store ptr %.0.i188193.i.i, ptr %i.vw, align 8, !tbaa !52
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 24
  store i32 0, ptr %i.vx, align 8, !tbaa !51
  %i.vy = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 28
  store float %.sink.i.i.i, ptr %i.vy, align 4, !tbaa !66
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 48
  %.sroa.019.0.copyload.i.i = load <2 x float>, ptr %i.us, align 8
  %.sroa.220.0.copyload.i.i = load float, ptr %.sroa.480.0..sroa_idx.i.i, align 8
  %.sroa.017.0.copyload.i.i = load <2 x float>, ptr %i.ut, align 8
  %.sroa.218.0.copyload.i.i = load float, ptr %.sroa.478.0..sroa_idx.i.i, align 8
  %i.wa = fadd float %.sroa.220.0.copyload.i.i, %.sroa.218.0.copyload.i.i
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.qn, align 8
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.2.0..sroa_idx.i.i52.i, align 8
  %i.wb = fadd float %i.wa, %.sroa.212.0.copyload.i.i
  %i.wc = fadd <2 x float> %.sroa.019.0.copyload.i.i, %.sroa.017.0.copyload.i.i
  %i.wd = fadd <2 x float> %i.wc, %.sroa.011.0.copyload.i.i
  %i.we = fmul <2 x float> %i.wd, splat (float f0x3EAAAAAB)
  %i.wf = fmul float %i.wb, f0x3EAAAAAB
  store <2 x float> %i.we, ptr %i.vz, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 56
  store float %i.wf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.wg = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 32
  store <2 x float> %.sroa.021.0.i.i.i, ptr %i.wg, align 8, !tbaa !23
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 40
  store <2 x float> %.sroa.8.12.vec.insert.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !23
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.iw, align 4
  %.sroa.2.0.copyload.i.i = load float, ptr %.sroa.2112.0..sroa_idx.i.i, align 4
  %i.wh = fmul <2 x float> %.sroa.021.0.i.i.i, %.sroa.0.0.copyload.i.i ; 2 uses
  %shift588 = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop589 = fadd <2 x float> %i.wh, %shift588
  %i.wi = extractelement <2 x float> %foldExtExtBinop589, i64 0
  %i.wj = fmul float %.sroa.5.0.i.i.i, %.sroa.2.0.copyload.i.i
  %i.wk = fadd float %i.wj, %i.wi
  %i.wl = fcmp ogt float %i.wk, %i.vv
  %i.wm = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 124
  %i.wn = zext i1 %i.wl to i8
  store i8 %i.wn, ptr %i.wm, align 4, !tbaa !67
  %i.wo = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 64 ; 3 uses
  store ptr %i.wo, ptr %i.wo, align 8, !tbaa !27
  %i.wp = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 72
  store ptr %i.wo, ptr %i.wp, align 8, !tbaa !28
  store ptr %.0.i146.i.i, ptr %.0.i188193.i.i, align 8, !tbaa !68
  %i.wq = getelementptr inbounds nuw i8, ptr %.0.i188193.i.i, i64 8
  store ptr %.0.i143195.i.i, ptr %i.wq, align 8, !tbaa !55
  %i.wr = getelementptr inbounds nuw i8, ptr %.0.i188193.i.i, i64 16
  store ptr %.037118.i, ptr %i.wr, align 8, !tbaa !58
  %i.ws = getelementptr inbounds nuw i8, ptr %.0.i188193.i.i, i64 24
  store ptr %.0.i86.i, ptr %i.ws, align 8, !tbaa !56
  %i.wt = getelementptr inbounds nuw i8, ptr %.0.i188193.i.i, i64 32
  store ptr null, ptr %i.wt, align 8, !tbaa !47
  store ptr %.0.i188193.i.i, ptr %.0.i143195.i.i, align 8, !tbaa !68
  %i.wu = getelementptr inbounds nuw i8, ptr %.0.i143195.i.i, i64 8
  store ptr %.0.i146.i.i, ptr %i.wu, align 8, !tbaa !55
  %i.wv = getelementptr inbounds nuw i8, ptr %.0.i143195.i.i, i64 16
  store ptr %i.tb, ptr %i.wv, align 8, !tbaa !58
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.i143195.i.i, i64 24
  store ptr %.0.i86.i, ptr %i.ww, align 8, !tbaa !56
  %i.wx = getelementptr inbounds nuw i8, ptr %.0.i143195.i.i, i64 32
  store ptr null, ptr %i.wx, align 8, !tbaa !47
  store ptr %.0.i143195.i.i, ptr %.0.i146.i.i, align 8, !tbaa !68
  %i.wy = getelementptr inbounds nuw i8, ptr %.0.i146.i.i, i64 8
  store ptr %.0.i188193.i.i, ptr %i.wy, align 8, !tbaa !55
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.i146.i.i, i64 16
  store ptr %i.tf, ptr %i.wz, align 8, !tbaa !58
  %i.xa = getelementptr inbounds nuw i8, ptr %.0.i146.i.i, i64 24
  store ptr %.0.i86.i, ptr %i.xa, align 8, !tbaa !56
  %i.xb = getelementptr inbounds nuw i8, ptr %.0.i146.i.i, i64 32
  store ptr null, ptr %i.xb, align 8, !tbaa !47
  %i.xc = load ptr, ptr %i.bh, align 8, !tbaa !185 ; 5 uses
  %i.xd = load i32, ptr %i.ph, align 4, !tbaa !204 ; 4 uses
  %i.xe = add nsw i32 %i.xd, 1                    ; 5 uses
  store i32 %i.xe, ptr %i.ph, align 4, !tbaa !204
  %i.xf = sext i32 %i.xd to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.xf
  store ptr %.0.i86.i, ptr %i.xg, align 8, !tbaa !57
  %i.xh = load ptr, ptr %i.tc, align 8, !tbaa !47 ; 2 uses
  %.07.i.i.i.i = load ptr, ptr %i.vw, align 8, !tbaa !196
  %i.xi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.xi, align 8, !tbaa !196 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store ptr %i.xh, ptr %i.xj, align 8, !tbaa !47
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  store ptr %.0.i.i.i.i, ptr %i.xk, align 8, !tbaa !47
  %indvars.iv.next.i.i56.i = add nuw nsw i64 %indvars.iv.i.i55.i, 1 ; 2 uses
  %i.xl = load i32, ptr %i.pg, align 4, !tbaa !197
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next.i.i56.i, %i.xm
  br i1 %i.xn, label %.lr.ph.i.i.i, label %._crit_edge.i15.i.i, !llvm.loop !145

.lr.ph29.i.i.i:                                   ; preds = %.lr.ph29.i.i.i, %.lr.ph29.preheader.i.i.i.new
  %indvars.iv32.i.i.i = phi i64 [ 0, %.lr.ph29.preheader.i.i.i.new ], [ %indvars.iv.next33.i.i.i.1, %.lr.ph29.i.i.i ] ; 3 uses
  %.02426.i.i.i = phi ptr [ %i.sv, %.lr.ph29.preheader.i.i.i.new ], [ %i.xy, %.lr.ph29.i.i.i ]
  %niter637 = phi i64 [ 0, %.lr.ph29.preheader.i.i.i.new ], [ %niter637.next.1, %.lr.ph29.i.i.i ]
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv32.i.i.i
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !57 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.02426.i.i.i, i64 16
  %.0912.i.i.i.i = load ptr, ptr %i.xq, align 8, !tbaa !196
  %i.xr = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i, i64 8
  %.09.i.i.i.i = load ptr, ptr %i.xr, align 8, !tbaa !196
  %i.xs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.09.i.1.i.i.i = load ptr, ptr %i.xs, align 8, !tbaa !196 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %.015.i.i.i.i = load ptr, ptr %i.xt, align 8, !tbaa !196 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.09.i.1.i.i.i, i64 32
  store ptr %.015.i.i.i.i, ptr %i.xu, align 8, !tbaa !47
  %i.xv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 32
  store ptr %.09.i.1.i.i.i, ptr %i.xv, align 8, !tbaa !47
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv32.i.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !57 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %.0912.i.i.i.i.1 = load ptr, ptr %i.xz, align 8, !tbaa !196
  %i.ya = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.1, i64 8
  %.09.i.i.i.i.1 = load ptr, ptr %i.ya, align 8, !tbaa !196
  %i.yb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.1, i64 8
  %.09.i.1.i.i.i.1 = load ptr, ptr %i.yb, align 8, !tbaa !196 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %.015.i.i.i.i.1 = load ptr, ptr %i.yc, align 8, !tbaa !196 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.09.i.1.i.i.i.1, i64 32
  store ptr %.015.i.i.i.i.1, ptr %i.yd, align 8, !tbaa !47
  %i.ye = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.1, i64 32
  store ptr %.09.i.1.i.i.i.1, ptr %i.ye, align 8, !tbaa !47
  %indvars.iv.next33.i.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i.i, 2 ; 2 uses
  %niter637.next.1 = add i64 %niter637, 2         ; 2 uses
  %niter637.ncmp.1 = icmp eq i64 %niter637.next.1, %unroll_iter636
  br i1 %niter637.ncmp.1, label %.lr.ph.i17.i.i.preheader.unr-lcssa, label %.lr.ph29.i.i.i, !llvm.loop !146

.lr.ph.i17.i.i.preheader.unr-lcssa:               ; preds = %.lr.ph29.i.i.i
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod634.not, label %.lr.ph.i17.i.i.preheader, label %.lr.ph29.i.i.i.epil.preheader

.lr.ph29.i.i.i.epil.preheader:                    ; preds = %.lr.ph.i17.i.i.preheader.unr-lcssa, %.lr.ph29.preheader.i.i.i
  %indvars.iv32.i.i.i.epil.init = phi i64 [ 0, %.lr.ph29.preheader.i.i.i ], [ %indvars.iv.next33.i.i.i.1, %.lr.ph.i17.i.i.preheader.unr-lcssa ]
  %.02426.i.i.i.epil.init = phi ptr [ %i.sv, %.lr.ph29.preheader.i.i.i ], [ %i.xy, %.lr.ph.i17.i.i.preheader.unr-lcssa ]
  %lcmp.mod635 = trunc i32 %i.xe to i1
  call void @llvm.assume(i1 %lcmp.mod635)
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv32.i.i.i.epil.init
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !57
  %i.yh = getelementptr inbounds nuw i8, ptr %.02426.i.i.i.epil.init, i64 16
  %.0912.i.i.i.i.epil = load ptr, ptr %i.yh, align 8, !tbaa !196
  %i.yi = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.epil, i64 8
  %.09.i.i.i.i.epil = load ptr, ptr %i.yi, align 8, !tbaa !196
  %i.yj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.epil, i64 8
  %.09.i.1.i.i.i.epil = load ptr, ptr %i.yj, align 8, !tbaa !196 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %.015.i.i.i.i.epil = load ptr, ptr %i.yk, align 8, !tbaa !196 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.09.i.1.i.i.i.epil, i64 32
  store ptr %.015.i.i.i.i.epil, ptr %i.yl, align 8, !tbaa !47
  %i.ym = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.epil, i64 32
  store ptr %.09.i.1.i.i.i.epil, ptr %i.ym, align 8, !tbaa !47
  br label %.lr.ph.i17.i.i.preheader

.lr.ph.i17.i.i.preheader:                         ; preds = %.lr.ph.i17.i.i.preheader.unr-lcssa, %.lr.ph29.i.i.i.epil.preheader
  br label %.lr.ph.i17.i.i

.preheader74.i.i.i:                               ; preds = %bb.aw
  %i.yn = icmp sgt i32 %i.zi, 0
  br i1 %i.yn, label %.lr.ph79.i.i.i, label %b3HullBuilder_MergeFaces.exit.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i.preheader, %bb.aw
  %i.yo = phi i32 [ %i.zi, %bb.aw ], [ %i.xe, %.lr.ph.i17.i.i.preheader ] ; 2 uses
  %indvars.iv.i18.i.i = phi i64 [ %indvars.iv.next.i19.i.i, %bb.aw ], [ 0, %.lr.ph.i17.i.i.preheader ] ; 2 uses
  %4 = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i18.i.i
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !57 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !51
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %.lr.ph.i17.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 124 ; 2 uses
  %i.yv = load i8, ptr %i.yu, align 4, !tbaa !67, !range !53, !noundef !54
  %i.yw = trunc nuw i8 %i.yv to i1
  br i1 %i.yw, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.yu, align 4, !tbaa !67
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !52 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.038.i.i.i = phi float [ 0.000000e+00, %bb.at ], [ %.139.i.i.i, %bb.au ] ; 2 uses
  %.037.i.i.i = phi ptr [ null, %bb.at ], [ %.1.i.i58.i, %bb.au ]
  %.036.i.i.i = phi ptr [ %i.yy, %bb.at ], [ %i.zh, %bb.au ] ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !47
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !56
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 28
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !66 ; 2 uses
  %i.zf = fcmp ogt float %i.ze, %.038.i.i.i       ; 2 uses
  %.139.i.i.i = select i1 %i.zf, float %i.ze, float %.038.i.i.i
  %.1.i.i58.i = select i1 %i.zf, ptr %.036.i.i.i, ptr %.037.i.i.i ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !55 ; 2 uses
  %.not.i20.i.i = icmp eq ptr %i.zh, %i.yy
  br i1 %.not.i20.i.i, label %bb.av, label %bb.au, !llvm.loop !147

bb.av:                                            ; preds = %bb.au
  call fastcc void @b3HullBuilder_ConnectFaces(ptr noundef nonnull %3, ptr noundef %.1.i.i58.i)
  %.pre.i21.i.i.a = load i32, ptr %i.ph, align 4, !tbaa !204
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as, %.lr.ph.i17.i.i
  %i.zi = phi i32 [ %.pre.i21.i.i.a, %bb.av ], [ %i.yo, %bb.as ], [ %i.yo, %.lr.ph.i17.i.i ] ; 5 uses
  %indvars.iv.next.i19.i.i = add nuw nsw i64 %indvars.iv.i18.i.i, 1 ; 2 uses
  %i.zj = sext i32 %i.zi to i64
  %i.zk = icmp slt i64 %indvars.iv.next.i19.i.i, %i.zj
  br i1 %i.zk, label %.lr.ph.i17.i.i, label %.preheader74.i.i.i, !llvm.loop !148

.preheader72.i.i.i:                               ; preds = %b3HullBuilder_MergeConcave.exit.thread.i.i.i
  %i.zl = icmp sgt i32 %i.aay, 0
  br i1 %i.zl, label %.lr.ph81.i.i.i, label %b3HullBuilder_MergeFaces.exit.i.i

.lr.ph79.i.i.i:                                   ; preds = %.preheader74.i.i.i, %b3HullBuilder_MergeConcave.exit.thread.i.i.i
  %i.zm = phi i32 [ %i.aay, %b3HullBuilder_MergeConcave.exit.thread.i.i.i ], [ %i.zi, %.preheader74.i.i.i ]
  %indvars.iv85.i.i.i = phi i64 [ %indvars.iv.next86.i.i.i, %b3HullBuilder_MergeConcave.exit.thread.i.i.i ], [ 0, %.preheader74.i.i.i ] ; 2 uses
  %i.zn = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %indvars.iv85.i.i.i
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !57 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !51
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %.preheader73.i.i.i, label %b3HullBuilder_MergeConcave.exit.thread.i.i.i

.preheader73.i.i.i:                               ; preds = %.lr.ph79.i.i.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  br label %bb.ax

bb.ax:                                            ; preds = %b3HullBuilder_MergeConcave.exit.i.i.i, %.preheader73.i.i.i
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !52 ; 2 uses
  %i.zv = load float, ptr %i.dg, align 4, !tbaa !192 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.012.i.i.i.i = phi ptr [ %i.zu, %bb.ax ], [ %i.aax, %bb.ba ] ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !47 ; 2 uses
  %i.zy = getelementptr i8, ptr %.012.i.i.i.i, i64 24
  %.012.val.i.i.i.i = load ptr, ptr %i.zy, align 8, !tbaa !56 ; 2 uses
  %i.zz = getelementptr i8, ptr %.012.val.i.i.i.i, i64 32
  %.012.val.val.i.i.i.i = load <2 x float>, ptr %i.zz, align 8
  %i.aaa = getelementptr i8, ptr %.012.val.i.i.i.i, i64 40
  %.012.val.val17.i.i.i.i = load <2 x float>, ptr %i.aaa, align 8 ; 2 uses
  %i.aab = getelementptr i8, ptr %i.zx, i64 24
  %.012.val16.val.i.i.i.i = load ptr, ptr %i.aab, align 8, !tbaa !56 ; 4 uses
  %i.aac = getelementptr i8, ptr %.012.val16.val.i.i.i.i, i64 48
  %.012.val16.val.val.i.i.i.i = load <2 x float>, ptr %i.aac, align 8
  %i.aad = getelementptr i8, ptr %.012.val16.val.i.i.i.i, i64 56
  %.012.val16.val.val20.i.i.i.i = load float, ptr %i.aad, align 8
  %.sroa.28.8.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.012.val.val17.i.i.i.i, i64 0
  %i.aae = fmul <2 x float> %.012.val.val.i.i.i.i, %.012.val16.val.val.i.i.i.i ; 2 uses
  %shift591 = shufflevector <2 x float> %i.aae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop592 = fadd <2 x float> %i.aae, %shift591
  %i.aaf = extractelement <2 x float> %foldExtExtBinop592, i64 0
  %i.aag = fmul float %.sroa.28.8.vec.extract.i.i.i.i.i.i, %.012.val16.val.val20.i.i.i.i
  %i.aah = fadd float %i.aag, %i.aaf
  %.sroa.28.12.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.012.val.val17.i.i.i.i, i64 1
  %i.aai = fsub float %i.aah, %.sroa.28.12.vec.extract.i.i.i.i.i.i
  %i.aaj = fcmp ogt float %i.aai, %i.zv
  br i1 %i.aaj, label %b3HullBuilder_MergeConcave.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aak = getelementptr i8, ptr %i.zx, i64 32
  %.val15.i.i.i.i = load ptr, ptr %i.aak, align 8, !tbaa !47
  %i.aal = getelementptr i8, ptr %.012.val16.val.i.i.i.i, i64 32
  %.val.val.i.i.i.i = load <2 x float>, ptr %i.aal, align 8
  %i.aam = getelementptr i8, ptr %.012.val16.val.i.i.i.i, i64 40
  %.val.val18.i.i.i.i = load <2 x float>, ptr %i.aam, align 8 ; 2 uses
  %i.aan = getelementptr i8, ptr %.val15.i.i.i.i, i64 24
  %.val15.val.i.i.i.i = load ptr, ptr %i.aan, align 8, !tbaa !56 ; 2 uses
  %i.aao = getelementptr i8, ptr %.val15.val.i.i.i.i, i64 48
  %.val15.val.val.i.i.i.i = load <2 x float>, ptr %i.aao, align 8
  %i.aap = getelementptr i8, ptr %.val15.val.i.i.i.i, i64 56
  %.val15.val.val19.i.i.i.i = load float, ptr %i.aap, align 8
  %.sroa.28.8.vec.extract.i.i21.i.i.i.i = extractelement <2 x float> %.val.val18.i.i.i.i, i64 0
  %i.aaq = fmul <2 x float> %.val.val.i.i.i.i, %.val15.val.val.i.i.i.i ; 2 uses
  %shift594 = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop595 = fadd <2 x float> %i.aaq, %shift594
  %i.aar = extractelement <2 x float> %foldExtExtBinop595, i64 0
  %i.aas = fmul float %.sroa.28.8.vec.extract.i.i21.i.i.i.i, %.val15.val.val19.i.i.i.i
  %i.aat = fadd float %i.aas, %i.aar
  %.sroa.28.12.vec.extract.i.i26.i.i.i.i = extractelement <2 x float> %.val.val18.i.i.i.i, i64 1
  %i.aau = fsub float %i.aat, %.sroa.28.12.vec.extract.i.i26.i.i.i.i
  %i.aav = fcmp ogt float %i.aau, %i.zv
  br i1 %i.aav, label %b3HullBuilder_MergeConcave.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.aaw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aax, %i.zu
  br i1 %.not.i.i.i.i, label %b3HullBuilder_MergeConcave.exit.thread.loopexit.i.i.i, label %bb.ay, !llvm.loop !149

b3HullBuilder_MergeConcave.exit.i.i.i:            ; preds = %bb.az, %bb.ay
  call fastcc void @b3HullBuilder_ConnectFaces(ptr noundef nonnull %3, ptr noundef nonnull %.012.i.i.i.i)
  br label %bb.ax, !llvm.loop !150

b3HullBuilder_MergeConcave.exit.thread.loopexit.i.i.i: ; preds = %bb.ba
  %.pre91.i.i.i = load i32, ptr %i.ph, align 4, !tbaa !204
  br label %b3HullBuilder_MergeConcave.exit.thread.i.i.i

b3HullBuilder_MergeConcave.exit.thread.i.i.i:     ; preds = %b3HullBuilder_MergeConcave.exit.thread.loopexit.i.i.i, %.lr.ph79.i.i.i
  %i.aay = phi i32 [ %.pre91.i.i.i, %b3HullBuilder_MergeConcave.exit.thread.loopexit.i.i.i ], [ %i.zm, %.lr.ph79.i.i.i ] ; 5 uses
  %indvars.iv.next86.i.i.i = add nuw nsw i64 %indvars.iv85.i.i.i, 1 ; 2 uses
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = icmp slt i64 %indvars.iv.next86.i.i.i, %i.aaz
  br i1 %i.aba, label %.lr.ph79.i.i.i, label %.preheader72.i.i.i, !llvm.loop !151

.lr.ph81.i.i.i:                                   ; preds = %.preheader72.i.i.i, %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i
  %i.abb = phi i32 [ %i.aco, %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i ], [ %i.aay, %.preheader72.i.i.i ]
  %indvars.iv88.i.i.i = phi i64 [ %indvars.iv.next89.i.i.i, %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i ], [ 0, %.preheader72.i.i.i ] ; 2 uses
  %i.abc = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %indvars.iv88.i.i.i
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !57 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !51
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %.preheader.i.i.i, label %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph81.i.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %b3HullBuilder_MergeCoplanar.exit.i.i.i, %.preheader.i.i.i
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !52 ; 2 uses
  %i.abk = load float, ptr %i.dg, align 4, !tbaa !192
  %i.abl = fneg float %i.abk                      ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %.012.i43.i.i.i = phi ptr [ %i.abj, %bb.bb ], [ %i.acn, %bb.be ] ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.012.i43.i.i.i, i64 32
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !47 ; 2 uses
  %i.abo = getelementptr i8, ptr %.012.i43.i.i.i, i64 24
  %.012.val.i44.i.i.i = load ptr, ptr %i.abo, align 8, !tbaa !56 ; 2 uses
  %i.abp = getelementptr i8, ptr %.012.val.i44.i.i.i, i64 32
  %.012.val.val.i45.i.i.i = load <2 x float>, ptr %i.abp, align 8
  %i.abq = getelementptr i8, ptr %.012.val.i44.i.i.i, i64 40
  %.012.val.val17.i46.i.i.i = load <2 x float>, ptr %i.abq, align 8 ; 2 uses
  %i.abr = getelementptr i8, ptr %i.abn, i64 24
  %.012.val16.val.i47.i.i.i = load ptr, ptr %i.abr, align 8, !tbaa !56 ; 4 uses
  %i.abs = getelementptr i8, ptr %.012.val16.val.i47.i.i.i, i64 48
  %.012.val16.val.val.i48.i.i.i = load <2 x float>, ptr %i.abs, align 8
  %i.abt = getelementptr i8, ptr %.012.val16.val.i47.i.i.i, i64 56
  %.012.val16.val.val20.i49.i.i.i = load float, ptr %i.abt, align 8
  %.sroa.28.8.vec.extract.i.i.i50.i.i.i = extractelement <2 x float> %.012.val.val17.i46.i.i.i, i64 0
  %i.abu = fmul <2 x float> %.012.val.val.i45.i.i.i, %.012.val16.val.val.i48.i.i.i ; 2 uses
  %shift597 = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop598 = fadd <2 x float> %i.abu, %shift597
  %i.abv = extractelement <2 x float> %foldExtExtBinop598, i64 0
  %i.abw = fmul float %.sroa.28.8.vec.extract.i.i.i50.i.i.i, %.012.val16.val.val20.i49.i.i.i
  %i.abx = fadd float %i.abw, %i.abv
  %.sroa.28.12.vec.extract.i.i.i55.i.i.i = extractelement <2 x float> %.012.val.val17.i46.i.i.i, i64 1
  %i.aby = fsub float %i.abx, %.sroa.28.12.vec.extract.i.i.i55.i.i.i
  %i.abz = fcmp olt float %i.aby, %i.abl
  br i1 %i.abz, label %bb.bd, label %b3HullBuilder_MergeCoplanar.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.aca = getelementptr i8, ptr %i.abn, i64 32
  %.val15.i57.i.i.i = load ptr, ptr %i.aca, align 8, !tbaa !47
  %i.acb = getelementptr i8, ptr %.012.val16.val.i47.i.i.i, i64 32
  %.val.val.i58.i.i.i = load <2 x float>, ptr %i.acb, align 8
  %i.acc = getelementptr i8, ptr %.012.val16.val.i47.i.i.i, i64 40
  %.val.val18.i59.i.i.i = load <2 x float>, ptr %i.acc, align 8 ; 2 uses
  %i.acd = getelementptr i8, ptr %.val15.i57.i.i.i, i64 24
  %.val15.val.i60.i.i.i = load ptr, ptr %i.acd, align 8, !tbaa !56 ; 2 uses
  %i.ace = getelementptr i8, ptr %.val15.val.i60.i.i.i, i64 48
  %.val15.val.val.i61.i.i.i = load <2 x float>, ptr %i.ace, align 8
  %i.acf = getelementptr i8, ptr %.val15.val.i60.i.i.i, i64 56
  %.val15.val.val19.i62.i.i.i = load float, ptr %i.acf, align 8
  %.sroa.28.8.vec.extract.i.i21.i63.i.i.i = extractelement <2 x float> %.val.val18.i59.i.i.i, i64 0
  %i.acg = fmul <2 x float> %.val.val.i58.i.i.i, %.val15.val.val.i61.i.i.i ; 2 uses
  %shift600 = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop601 = fadd <2 x float> %i.acg, %shift600
  %i.ach = extractelement <2 x float> %foldExtExtBinop601, i64 0
  %i.aci = fmul float %.sroa.28.8.vec.extract.i.i21.i63.i.i.i, %.val15.val.val19.i62.i.i.i
  %i.acj = fadd float %i.aci, %i.ach
  %.sroa.28.12.vec.extract.i.i26.i68.i.i.i = extractelement <2 x float> %.val.val18.i59.i.i.i, i64 1
  %i.ack = fsub float %i.acj, %.sroa.28.12.vec.extract.i.i26.i68.i.i.i
  %i.acl = fcmp olt float %i.ack, %i.abl
  br i1 %i.acl, label %bb.be, label %b3HullBuilder_MergeCoplanar.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.acm = getelementptr inbounds nuw i8, ptr %.012.i43.i.i.i, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !55 ; 2 uses
  %.not.i69.i.i.i = icmp eq ptr %i.acn, %i.abj
  br i1 %.not.i69.i.i.i, label %b3HullBuilder_MergeCoplanar.exit.thread.loopexit.i.i.i, label %bb.bc, !llvm.loop !152

b3HullBuilder_MergeCoplanar.exit.i.i.i:           ; preds = %bb.bd, %bb.bc
  call fastcc void @b3HullBuilder_ConnectFaces(ptr noundef nonnull %3, ptr noundef nonnull %.012.i43.i.i.i)
  br label %bb.bb, !llvm.loop !153

b3HullBuilder_MergeCoplanar.exit.thread.loopexit.i.i.i: ; preds = %bb.be
  %.pre92.i.i.i = load i32, ptr %i.ph, align 4, !tbaa !204
  br label %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i

b3HullBuilder_MergeCoplanar.exit.thread.i.i.i:    ; preds = %b3HullBuilder_MergeCoplanar.exit.thread.loopexit.i.i.i, %.lr.ph81.i.i.i
  %i.aco = phi i32 [ %.pre92.i.i.i, %b3HullBuilder_MergeCoplanar.exit.thread.loopexit.i.i.i ], [ %i.abb, %.lr.ph81.i.i.i ] ; 3 uses
  %indvars.iv.next89.i.i.i = add nuw nsw i64 %indvars.iv88.i.i.i, 1 ; 2 uses
  %i.acp = sext i32 %i.aco to i64
  %i.acq = icmp slt i64 %indvars.iv.next89.i.i.i, %i.acp
  br i1 %i.acq, label %.lr.ph81.i.i.i, label %b3HullBuilder_MergeFaces.exit.i.i, !llvm.loop !154

b3HullBuilder_MergeFaces.exit.i.i:                ; preds = %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i, %.preheader72.i.i.i, %.preheader74.i.i.i, %._crit_edge.i15.i.i, %b3HullBuilder_BuildHorizon.exit.i.i
  %i.acr = phi i32 [ %i.xe, %._crit_edge.i15.i.i ], [ 0, %b3HullBuilder_BuildHorizon.exit.i.i ], [ %i.aay, %.preheader72.i.i.i ], [ %i.zi, %.preheader74.i.i.i ], [ %i.aco, %b3HullBuilder_MergeCoplanar.exit.thread.i.i.i ]
end_hunk_0
begin_hunk_1_@b3HullMap_insert_raw:bb.a
bb.i:                                             ; preds = %.preheader, %bb.m
  %i.cz = phi i16 [ %.pre, %bb.m ], [ %i.l, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.ea, %bb.m ], [ %i.h, %.preheader ] ; 2 uses
  %i.da = and i16 %i.cz, -4096
  %i.db = icmp eq i16 %i.da, %i.e
  br i1 %i.db, label %bb.j, label %b3CompareHullData.exit.thread99

bb.j:                                             ; preds = %bb.i
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !96
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.0 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !107 ; 3 uses
  %i.df = icmp eq ptr %i.de, %2
  br i1 %i.df, label %b3CompareHullData.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 140
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !74 ; 2 uses
  %i.di = load i32, ptr %i.cy, align 4, !tbaa !74
  %.not.i = icmp eq i32 %i.dh, %i.di
  br i1 %.not.i, label %b3CompareHullData.exit, label %b3CompareHullData.exit.thread99, !prof !112

b3CompareHullData.exit:                           ; preds = %bb.k
  %i.dj = sext i32 %i.dh to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.de, ptr nonnull readonly %2, i64 %i.dj)
  %i.dk = icmp eq i32 %bcmp.i, 0
  br i1 %i.dk, label %b3CompareHullData.exit.thread, label %b3CompareHullData.exit.thread99, !prof !237

b3CompareHullData.exit.thread:                    ; preds = %bb.j, %b3CompareHullData.exit
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.0
  br i1 %5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %b3CompareHullData.exit.thread
  store ptr %2, ptr %i.dd, align 8, !tbaa !107
  %i.dm = load i32, ptr %3, align 4, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !236
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %b3CompareHullData.exit.thread
  store ptr %i.dd, ptr %0, align 8, !tbaa !110
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.g
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !101
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.ds, align 8, !tbaa !111
  br label %bb.o

b3CompareHullData.exit.thread99:                  ; preds = %bb.k, %b3CompareHullData.exit, %bb.i
  %i.dt = and i16 %i.cz, 2047                     ; 2 uses
  %i.du = icmp eq i16 %i.dt, 2047
  br i1 %i.du, label %.thread, label %bb.m

bb.m:                                             ; preds = %b3CompareHullData.exit.thread99
  %i.dv = zext nneg i16 %i.dt to i64              ; 2 uses
  %i.dw = add nuw nsw i64 %i.dv, 1
  %i.dx = mul nuw nsw i64 %i.dw, %i.dv
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = add i64 %i.dy, %i.h
  %i.ea = and i64 %i.dz, %i.g                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ea
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !104
  br label %bb.i

.thread:                                          ; preds = %b3CompareHullData.exit.thread99, %bb.h
  %i.eb = load i64, ptr %1, align 8, !tbaa !98
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  %i.ed = uitofp i64 %i.ec to double
  %i.ee = icmp ne i64 %i.g, 0
  %i.ef = zext i1 %i.ee to i64
  %i.eg = add i64 %i.g, %i.ef
  %i.eh = uitofp i64 %i.eg to double
  %i.ei = fmul nnan double %i.eh, 9.000000e-01
  %i.ej = fcmp olt double %i.ei, %i.ed
  br i1 %i.ej, label %.critedge86, label %bb.n, !prof !97

bb.n:                                             ; preds = %.thread
  %i.ek = add i64 %i.h, 1
  %i.el = and i64 %i.ek, %i.g                     ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !104
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n, %.lr.ph.i.1
  %indvars.iv.next163 = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.1 ], [ 2, %bb.n ] ; 5 uses
  %.011.i162 = phi i64 [ %i.ev, %.lr.ph.i.1 ], [ 1, %bb.n ]
  %i.ep = add i64 %.011.i162, %indvars.iv.next163 ; 2 uses
  %i.eq = add i64 %i.ep, %i.h
  %i.er = and i64 %i.eq, %i.g                     ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !104
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %.not.i87 = icmp eq i64 %indvars.iv.next163, 2046
  br i1 %.not.i87, label %.critedge86, label %.lr.ph.i.preheader.1, !prof !234

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %indvars.iv.next = or disjoint i64 %indvars.iv.next163, 1 ; 2 uses
  %i.ev = add i64 %i.ep, %indvars.iv.next         ; 2 uses
  %i.ew = add i64 %i.ev, %i.h
  %i.ex = and i64 %i.ew, %i.g                     ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !104
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %.loopexit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next163, 2
  br label %.lr.ph.i.preheader

.critedge86:                                      ; preds = %.lr.ph.i, %.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !238
  br label %bb.o

.loopexit.loopexit:                               ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.preheader
  %indvars.iv.next163.lcssa = phi i64 [ %indvars.iv.next163, %.lr.ph.i.preheader ], [ %indvars.iv.next, %.lr.ph.i.preheader.1 ]
  %.lcssa172 = phi i64 [ %i.er, %.lr.ph.i.preheader ], [ %i.ex, %.lr.ph.i.preheader.1 ]
  %i.fb = trunc nuw nsw i64 %indvars.iv.next163.lcssa to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.196.ph = phi i64 [ %i.el, %bb.n ], [ %.lcssa172, %.loopexit.loopexit ] ; 2 uses
  %.094.ph = phi i16 [ 1, %bb.n ], [ %i.fb, %.loopexit.loopexit ] ; 3 uses
  %i.fc = and i16 %i.l, 2047                      ; 3 uses
  %.not16.i = icmp ugt i16 %i.fc, %.094.ph
  br i1 %.not16.i, label %b3HullMap_find_insert_location_in_chain.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.loopexit, %.lr.ph.i88
  %i.fd = phi i16 [ %i.fm, %.lr.ph.i88 ], [ %i.fc, %.loopexit ]
  %i.fe = zext nneg i16 %i.fd to i64              ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 1
  %i.fg = mul nuw nsw i64 %i.ff, %i.fe
  %i.fh = lshr i64 %i.fg, 1
  %i.fi = add i64 %i.fh, %i.h
  %i.fj = and i64 %i.fi, %i.g                     ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !104
  %i.fm = and i16 %i.fl, 2047                     ; 3 uses
  %.not.i89 = icmp ugt i16 %i.fm, %.094.ph
  br i1 %.not.i89, label %b3HullMap_find_insert_location_in_chain.exit, label %.lr.ph.i88

b3HullMap_find_insert_location_in_chain.exit:     ; preds = %.lr.ph.i88, %.loopexit
  %.pre-phi132 = phi i16 [ %i.fc, %.loopexit ], [ %i.fm, %.lr.ph.i88 ]
  %.010.lcssa.i = phi i64 [ %i.h, %.loopexit ], [ %i.fj, %.lr.ph.i88 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %.196.ph ; 3 uses
  store ptr %2, ptr %i.fp, align 8, !tbaa !107
  %i.fq = load i32, ptr %3, align 4, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !236
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.010.lcssa.i ; 2 uses
  %i.ft = or disjoint i16 %.pre-phi132, %i.e
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.196.ph ; 2 uses
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !104
  %i.fv = load i16, ptr %i.fs, align 2, !tbaa !104
  %i.fw = and i16 %i.fv, -2048
  %i.fx = or i16 %i.fw, %.094.ph
  store i16 %i.fx, ptr %i.fs, align 2, !tbaa !104
  store i64 %i.ec, ptr %1, align 8, !tbaa !98
  store ptr %i.fp, ptr %0, align 8, !tbaa !110
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fu, ptr %i.fy, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.g
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !101
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.gc, align 8, !tbaa !111
  br label %bb.o

bb.o:                                             ; preds = %.critedge86, %b3HullMap_find_insert_location_in_chain.exit, %.critedge, %bb.g, %b3HullMap_evict.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3HullMap_rehash(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %2 = alloca %struct.b3HullMap, align 8          ; 12 uses
  %3 = alloca %struct.b3HullMap_itr, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 0, ptr %2, align 8
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !94
  %i.c = mul i64 %i.b, 18
  %i.d = add i64 %i.c, 26
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #24 ; 2 uses
  %.not41.not = icmp eq ptr %i.e, null
  br i1 %.not41.not, label %.loopexit, label %.lr.ph45, !prof !240

.lr.ph45:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %bb.h
  %i.m = phi ptr [ %i.e, %.lr.ph45 ], [ %i.az, %bb.h ] ; 2 uses
  %i.n = phi i64 [ %i.b, %.lr.ph45 ], [ %i.aw, %bb.h ]
  %.02442 = phi i64 [ %1, %.lr.ph45 ], [ %i.r, %bb.h ] ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !96
  %i.o = shl i64 %i.n, 4
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 3 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !93
  %i.r = shl i64 %.02442, 1                       ; 3 uses
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.q, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.02442
  store i16 1, ptr %i.t, align 2, !tbaa !104
  %i.u = load i64, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %i.v = add i64 %i.u, 1
  %.not46 = icmp ult i64 %i.v, 2
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.w = phi i64 [ %i.ag, %bb.d ], [ %i.u, %bb.b ]
  %.039 = phi i64 [ %i.ah, %bb.d ], [ 0, %bb.b ]  ; 3 uses
  %4 = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.039
  %i.y = load i16, ptr %i.x, align 2, !tbaa !104
  %.not28 = icmp eq i16 %i.y, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.039 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call fastcc void @b3HullMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull %2, ptr noundef %i.ab, ptr noundef nonnull %i.ac, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.af = icmp eq ptr %i.ad, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.af, label %._crit_edge.loopexit, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.c
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !94
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge47, %.lr.ph
  %i.ag = phi i64 [ %.pre.a, %._crit_edge47 ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.ah = add nuw i64 %.039, 1                    ; 2 uses
  %i.ai = icmp ne i64 %i.ag, 0
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = icmp ult i64 %i.ah, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !239

._crit_edge.loopexit:                             ; preds = %bb.d, %bb.c
  %.pre48 = load i64, ptr %2, align 8, !tbaa !98
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.am = phi i64 [ %.pre48, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.an = load i64, ptr %0, align 8, !tbaa !98
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e, !prof !97

bb.e:                                             ; preds = %._crit_edge
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !94  ; 2 uses
  %.not29 = icmp eq i64 %i.ap, 0
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.ar = mul i64 %i.ap, 18
  %i.as = add i64 %i.ar, 26
  tail call void @b3Free(ptr noundef %i.aq, i64 noundef %i.as) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !241
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !96
  %.val31 = load i64, ptr %i.a, align 8, !tbaa !94
  %i.au = mul i64 %.val31, 18
  %i.av = add i64 %i.au, 26
  tail call void @b3Free(ptr noundef %i.at, i64 noundef %i.av) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.aw = add i64 %i.r, -1                        ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !94
  %i.ax = mul i64 %i.aw, 18
  %i.ay = add i64 %i.ax, 26
  %i.az = tail call ptr @b3Alloc(i64 noundef %i.ay) #24 ; 2 uses
  %.not.not = icmp eq ptr %i.az, null
  br i1 %.not.not, label %.loopexit, label %bb.b, !prof !242

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %.not38 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.not38
}

; Function Attrs: nounwind uwtable
define hidden void @b3HullMap_get_or_insert(ptr dead_on_unwind noalias nofree writable sret(%struct.b3HullMap_itr) align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call fastcc void @b3HullMap_insert_raw(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d, !prof !97

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  %i.i = shl i64 %i.h, 1
  %i.j = add i64 %i.i, 2
  %i.k = select i1 %.not, i64 8, i64 %i.j
  %i.l = tail call fastcc zeroext i1 @b3HullMap_rehash(ptr noundef nonnull %1, i64 noundef %i.k)
  br i1 %i.l, label %bb.b, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3HullMap_get(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3HullMap_itr) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 3 uses
  %i.e = and i64 %i.d, %i.b                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.e
  %i.i = load i16, ptr %i.h, align 2, !tbaa !104  ; 2 uses
  %i.j = and i16 %i.i, 2048
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !247
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.b, 48
  %i.l = trunc nuw i64 %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 140
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.o = phi i16 [ %i.i, %bb.c ], [ %.pre, %bb.g ] ; 2 uses
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.am, %bb.g ] ; 2 uses
  %i.p = xor i16 %i.o, %i.l
  %i.q = icmp ult i16 %i.p, 4096
  br i1 %i.q, label %bb.e, label %b3CompareHullData.exit.thread29

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.0 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 3 uses
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %b3CompareHullData.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74   ; 2 uses
  %i.x = load i32, ptr %i.n, align 4, !tbaa !74
  %.not.i = icmp eq i32 %i.w, %i.x
  br i1 %.not.i, label %b3CompareHullData.exit, label %b3CompareHullData.exit.thread29, !prof !112

b3CompareHullData.exit:                           ; preds = %bb.f
  %i.y = sext i32 %i.w to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %2, i64 %i.y)
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %b3CompareHullData.exit.thread, label %b3CompareHullData.exit.thread29, !prof !115

b3CompareHullData.exit.thread:                    ; preds = %bb.e, %b3CompareHullData.exit
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %.0
  store ptr %i.s, ptr %0, align 8, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.af, align 8, !tbaa !111
  br label %bb.h

b3CompareHullData.exit.thread29:                  ; preds = %bb.f, %b3CompareHullData.exit, %bb.d
  %i.ag = and i16 %i.o, 2047                      ; 2 uses
  %.not27 = icmp eq i16 %i.ag, 2047
  br i1 %.not27, label %.thread, label %bb.g

.thread:                                          ; preds = %b3CompareHullData.exit.thread29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !248
  br label %bb.h

bb.g:                                             ; preds = %b3CompareHullData.exit.thread29
  %i.ah = zext nneg i16 %i.ag to i64              ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = mul nuw nsw i64 %i.ai, %i.ah
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add i64 %i.ak, %i.e
  %i.am = and i64 %i.al, %i.d                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.am
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !104
  br label %bb.d

bb.h:                                             ; preds = %.thread, %b3CompareHullData.exit.thread, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @b3HullMap_erase_itr_raw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.b3HullMap_itr) align 8 captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !98
  %i.b = add i64 %i.a, -1
  store i64 %i.b, ptr %0, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = ashr exact i64 %i.i, 1                   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !104  ; 3 uses
  %i.m = and i16 %i.l, 4095
  %or.cond = icmp eq i16 %i.m, 4095
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %i.k, align 2, !tbaa !104
  br label %bb.h
end_hunk_1
