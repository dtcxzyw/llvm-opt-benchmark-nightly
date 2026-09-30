Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
  %i.dz = xor i1 %i.dy, %i.dx
  %i.ea = and i1 %i.dw, %i.dz, !nosanitize !9
  br i1 %i.ea, label %bb.ai, label %.split492.us.i, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dy, label %.split495.us.i, label %bb.aj, !prof !97, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %.fr519.i, i64 %i.du
  %i.ec = ptrtoint ptr %i.eb to i64, !nosanitize !9 ; 2 uses
  %i.ed = and i64 %i.ec, 3, !nosanitize !9
  %i.ee = icmp eq i64 %i.ed, 0, !nosanitize !9
  br i1 %i.ee, label %.split516.i, label %.split499.i, !prof !10, !nosanitize !9

._crit_edge.i:                                    ; preds = %bb.ae
  %i.ef = and i64 %2, 4294967295
  %i.eg = and i64 %.sroa.3.0.extract.shift.i, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @290, i64 %i.ef, i64 %i.eg) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph.split.split.i:                             ; preds = %b3Solve3.exit.i
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41216, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i
  br i1 %exitcond.not.i42, label %b3PrepareJointsTask.exit, label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph.split.split.i
  %indvars.iv.i41216 = phi i64 [ %indvars.iv.next.i43, %.lr.ph.split.split.i ], [ %i.dm, %.lr.ph217.preheader ] ; 7 uses
  %i.eh = getelementptr inbounds [216 x i8], ptr %.fr.i, i64 %indvars.iv.i41216 ; 20 uses
  %i.ei = mul nsw i64 %indvars.iv.i41216, 216
  %i.ej = add i64 %i.ei, %i.cu, !nosanitize !9    ; 3 uses
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = icmp uge i64 %i.ej, %i.cu, !nosanitize !9
  %i.em = icmp slt i64 %indvars.iv.i41216, 0      ; 2 uses
  %i.en = xor i1 %i.em, %i.el
  %i.eo = and i1 %i.ek, %i.en, !nosanitize !9
  br i1 %i.eo, label %bb.ak, label %.split492.us.i, !prof !10, !nosanitize !9

.split492.us.i:                                   ; preds = %.lr.ph217, %bb.ah, %bb.af
  %.us-phi493.i = phi i64 [ %i.da, %bb.af ], [ %i.dv, %bb.ah ], [ %i.ej, %.lr.ph217 ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @291, i64 %i.cu, i64 %.us-phi493.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %.lr.ph217
  %i.ep = getelementptr inbounds [56 x i8], ptr %.fr519.i, i64 %indvars.iv.i41216 ; 8 uses
  %i.eq = mul nsw i64 %indvars.iv.i41216, 56
  %i.er = add i64 %i.eq, %i.cw, !nosanitize !9    ; 3 uses
  %i.es = icmp ne i64 %i.er, 0
  %i.et = icmp uge i64 %i.er, %i.cw, !nosanitize !9
  %i.eu = xor i1 %i.em, %i.et
  %i.ev = and i1 %i.es, %i.eu, !nosanitize !9
  br i1 %i.ev, label %bb.al, label %.split495.us.i, !prof !10, !nosanitize !9

.split495.us.i:                                   ; preds = %bb.ak, %bb.ai, %bb.ag
  %.us-phi497.i = phi i64 [ %i.dh, %bb.ag ], [ %i.cw, %bb.ai ], [ %i.er, %bb.ak ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @292, i64 %i.cw, i64 %.us-phi497.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.ew = ptrtoint ptr %i.ep to i64, !nosanitize !9 ; 2 uses
  %i.ex = and i64 %i.ew, 3, !nosanitize !9
  %i.ey = icmp eq i64 %i.ex, 0, !nosanitize !9
  br i1 %i.ey, label %bb.am, label %.split499.i, !prof !10, !nosanitize !9

.split499.i:                                      ; preds = %bb.al, %bb.aj, %bb.ag
  %.us-phi500.i = phi i64 [ 0, %bb.ag ], [ %i.ec, %bb.aj ], [ %i.ew, %bb.al ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %.us-phi500.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  %.sroa.0190.0.copyload.i = load <2 x float>, ptr %i.ep, align 4, !tbaa !146
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !146
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 2 uses
  %.sroa.0185.0.copyload.i = load <2 x float>, ptr %i.ez, align 4, !tbaa !146
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 20 ; 2 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !146
  %i.fa = ptrtoint ptr %i.eh to i64, !nosanitize !9 ; 2 uses
  %i.fb = and i64 %i.fa, 3, !nosanitize !9
  %i.fc = icmp eq i64 %i.fb, 0, !nosanitize !9
  br i1 %i.fc, label %bb.an, label %.split516.i, !prof !10, !nosanitize !9

.split516.i:                                      ; preds = %bb.am, %bb.aj
  %.us-phi517.i = phi i64 [ 0, %bb.aj ], [ %i.fa, %bb.am ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @295, i64 %.us-phi517.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 196
  %i.fe = load <2 x float>, ptr %i.fd, align 4, !tbaa !146
  %i.ff = fmul <2 x float> %i.do, %i.fe
  %i.fg = fadd <2 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = fdiv <2 x float> splat (float 1.000000e+00), %i.fg ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !372 ; 2 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eh, i64 204
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !373
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fn = phi float [ %i.fm, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.fo = fmul float %i.co, %i.fj                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.fq = fmul float %i.co, %i.fn                 ; 2 uses
  %.sroa.0178.0.copyload.i = load <2 x float>, ptr %i.fp, align 4
  %.sroa.2179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %.sroa.2179.0.copyload.i = load float, ptr %.sroa.2179.0..sroa_idx.i, align 4
  %i.fr = fmul float %i.fo, %.sroa.2179.0.copyload.i
  %i.fs = fmul float %.sroa.4231.0.copyload.i, %i.fq
  %i.ft = fadd float %i.fs, %i.fr
  %i.fu = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x float> %i.fv, %.sroa.0178.0.copyload.i
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x float> %.sroa.0230.0.copyload.i, %i.fy
  %i.ga = fadd <2 x float> %i.fz, %i.fw
  %i.gb = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %.sroa.0190.0.copyload.i, %i.gb
  %i.gd = fadd <2 x float> %i.gc, %i.ga
  %i.ge = extractelement <2 x float> %i.fh, i64 0
  %i.gf = fmul float %.sroa.6.0.copyload.i, %i.ge
  %i.gg = fadd float %i.gf, %i.ft
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eh, i64 144
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eh, i64 92
  %.sroa.7354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 160
  %.sroa.9356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 168
  %.sroa.10357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 172
  %.sroa.0156.0.copyload.i = load <2 x float>, ptr %i.gi, align 4 ; 2 uses
  %.sroa.2157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 100
  %.sroa.2157.0.copyload.i = load float, ptr %.sroa.2157.0..sroa_idx.i, align 4
  %i.gj = shufflevector <2 x float> %.sroa.0156.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %.sroa.4135.0.copyload.i = load <2 x float>, ptr %.sroa.4135.0..sroa_idx.i, align 4, !tbaa !146 ; 6 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.gk, align 4, !tbaa !146 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.gm = load <2 x float>, ptr %i.gl, align 4    ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %i.go = load <2 x float>, ptr %i.gn, align 4    ; 6 uses
  %i.gp = load <4 x float>, ptr %i.gh, align 4, !tbaa !146 ; 2 uses
  %i.gq = load <2 x float>, ptr %.sroa.7354.0..sroa_idx.i, align 4, !tbaa !146
  %.sroa.9356.0.copyload.i = load float, ptr %.sroa.9356.0..sroa_idx.i, align 4, !tbaa !146
  %i.gr = load <2 x float>, ptr %.sroa.10357.0..sroa_idx.i, align 4, !tbaa !146
  %i.gs = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.gp, <4 x float> %i.gs, <4 x i32> <i32 1, i32 5, i32 0, i32 3>
  %i.gu = shufflevector <2 x float> %.sroa.0156.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gv = fmul <4 x float> %i.gt, %i.gu
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gp, <4 x i32> <i32 0, i32 6, i32 7, i32 4>
  %i.gx = fmul <4 x float> %i.gw, %i.gj
  %i.gy = fadd <4 x float> %i.gx, %i.gv
  %i.gz = insertelement <4 x float> poison, float %.sroa.9356.0.copyload.i, i64 0
  %i.ha = shufflevector <2 x float> %i.gr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.hc = insertelement <4 x float> poison, float %.sroa.2157.0.copyload.i, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul <4 x float> %i.hb, %i.hd
  %i.hf = fadd <4 x float> %i.he, %i.gy
  %i.hg = fmul <4 x float> %i.dq, %i.hf
  %i.hh = shufflevector <2 x float> %.sroa.0185.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 0>
  %i.hi = insertelement <4 x float> %i.hh, float %.sroa.8.0.copyload.i, i64 1
  %i.hj = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hk = fmul <4 x float> %i.hi, %i.hj
  %i.hl = fadd <4 x float> %i.hk, %i.hg           ; 4 uses
  %i.hm = shufflevector <2 x float> %.sroa.0134.0.copyload.i, <2 x float> %.sroa.4135.0.copyload.i, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.hn = shufflevector <2 x float> %i.gm, <2 x float> %i.go, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ho = fmul <4 x float> %i.hm, %i.hn
  %i.hp = shufflevector <2 x float> %.sroa.0134.0.copyload.i, <2 x float> %.sroa.4135.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hq = shufflevector <2 x float> %i.gm, <2 x float> %i.go, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.hr = fmul <4 x float> %i.hp, %i.hq
  %i.hs = fsub <4 x float> %i.ho, %i.hr
  %i.ht = shufflevector <2 x float> %.sroa.4135.0.copyload.i, <2 x float> %.sroa.0134.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 3, i32 3>
  %i.hu = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hv = fmul <4 x float> %i.ht, %i.hu
  %i.hw = fadd <4 x float> %i.hs, %i.hv
  %i.hx = shufflevector <2 x float> %.sroa.4135.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hy = shufflevector <2 x float> %i.go, <2 x float> %i.gm, <4 x i32> <i32 0, i32 2, i32 3, i32 3>
  %i.hz = fmul <4 x float> %i.hx, %i.hy
  %i.ia = fadd <4 x float> %i.hz, %i.hw           ; 10 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.4135.0.copyload.i, %i.go
  %foldExtExtBinop619 = fmul <2 x float> %.sroa.0134.0.copyload.i, %i.gm
  %foldExtExtBinop621 = fmul <2 x float> %.sroa.0134.0.copyload.i, %i.gm
  %shift = shufflevector <2 x float> %foldExtExtBinop621, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %foldExtExtBinop619, %shift
  %foldExtExtBinop625 = fmul <2 x float> %.sroa.4135.0.copyload.i, %i.go
  %foldExtExtBinop627 = fadd <2 x float> %foldExtExtBinop625, %foldExtExtBinop623
  %shift629 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop630 = fsub <2 x float> %shift629, %foldExtExtBinop627 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eh, i64 108
  %.sroa.0387.0.copyload.i = load <2 x float>, ptr %i.ib, align 4, !tbaa !146 ; 4 uses
  %.sroa.4388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 116
  %.sroa.4388.0.copyload.i = load float, ptr %.sroa.4388.0..sroa_idx.i, align 4, !tbaa !146 ; 2 uses
  %.sroa.5389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 120
  %.sroa.5389.0.copyload.i = load <2 x float>, ptr %.sroa.5389.0..sroa_idx.i, align 4, !tbaa !146 ; 4 uses
  %.sroa.6390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %.sroa.6390.0.copyload.i = load float, ptr %.sroa.6390.0..sroa_idx.i, align 4, !tbaa !146 ; 2 uses
  %.sroa.7391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 132
  %.sroa.7391.0.copyload.i = load <2 x float>, ptr %.sroa.7391.0..sroa_idx.i, align 4, !tbaa !146 ; 5 uses
  %.sroa.8392.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 140
  %.sroa.8392.0.copyload.i = load float, ptr %.sroa.8392.0..sroa_idx.i, align 4, !tbaa !146 ; 3 uses
  %i.ic = shufflevector <2 x float> %.sroa.7391.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %4 = fmul <2 x float> %.sroa.5389.0.copyload.i, %i.ic ; 4 uses
  %shift632 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop633 = fsub <2 x float> %4, %shift632
  %5 = extractelement <2 x float> %foldExtExtBinop633, i64 0
  %6 = shufflevector <2 x float> %.sroa.5389.0.copyload.i, <2 x float> %.sroa.7391.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %7 = insertelement <2 x float> poison, float %.sroa.8392.0.copyload.i, i64 0
  %8 = insertelement <2 x float> %7, float %.sroa.6390.0.copyload.i, i64 1
  %9 = fmul <2 x float> %6, %8
  %10 = insertelement <2 x float> poison, float %.sroa.6390.0.copyload.i, i64 0
  %11 = insertelement <2 x float> %10, float %.sroa.8392.0.copyload.i, i64 1
  %12 = shufflevector <2 x float> %.sroa.7391.0.copyload.i, <2 x float> %.sroa.5389.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %13 = fmul <2 x float> %11, %12
  %foldExtExtBinop633.a = fsub <2 x float> %9, %13 ; 2 uses
  %14 = fmul <2 x float> %.sroa.0387.0.copyload.i, %foldExtExtBinop633.a ; 2 uses
  %shift635 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop636 = fadd <2 x float> %14, %shift635
  %i.id = extractelement <2 x float> %foldExtExtBinop636, i64 0
  %i.ie = fmul float %.sroa.4388.0.copyload.i, %5
  %i.if = fadd float %i.ie, %i.id                 ; 2 uses
  %i.ig = tail call float @llvm.fabs.f32(float %i.if)
  %i.ih = fcmp ogt float %i.ig, f0x057A0000
  br i1 %i.ih, label %bb.aq, label %b3InvertMatrix.exit.i

bb.aq:                                            ; preds = %bb.ap
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0387.0.copyload.i, i64 0
  %i.ii = shufflevector <2 x float> %.sroa.0387.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.7391.0.copyload.i, i64 0
  %i.ij = shufflevector <2 x float> %.sroa.5389.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ik = fdiv float 1.000000e+00, %i.if
  %i.il = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %15 = shufflevector <2 x float> %foldExtExtBinop633.a, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fmul <2 x float> %15, %i.im
  %i.io = fmul float %.sroa.03.0.vec.extract.i.i.i.i, %.sroa.8392.0.copyload.i
  %i.ip = fmul float %.sroa.4388.0.copyload.i, %.sroa.0.0.vec.extract.i.i.i.i
  %i.iq = fmul <2 x float> %i.ii, %.sroa.7391.0.copyload.i ; 2 uses
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %i.is = shufflevector <2 x float> %i.iq, <2 x float> %4, <2 x i32> <i32 1, i32 3>
  %i.it = fsub <2 x float> %i.ir, %i.is
  %i.iu = fmul <2 x float> %i.it, %i.im           ; 2 uses
  %i.iv = fmul <2 x float> %.sroa.0387.0.copyload.i, %i.ij ; 2 uses
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ix = insertelement <2 x float> %i.iw, float %i.io, i64 0
  %i.iy = insertelement <2 x float> %i.iv, float %i.ip, i64 0
  %i.iz = fsub <2 x float> %i.ix, %i.iy
  %i.ja = fmul <2 x float> %i.iz, %i.im           ; 3 uses
  %i.jb = extractelement <2 x float> %i.ja, i64 1
  %i.jc = shufflevector <2 x float> %i.iu, <2 x float> %i.ja, <2 x i32> <i32 1, i32 3>
  br label %b3InvertMatrix.exit.i

b3InvertMatrix.exit.i:                            ; preds = %bb.aq, %bb.ap
  %.sroa.16.0.i = phi float [ %i.jb, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.jd = phi <2 x float> [ %i.in, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 7 uses
  %i.je = phi <2 x float> [ %i.iu, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 9 uses
  %i.jf = phi <2 x float> [ %i.jc, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.ja, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 4 uses
  %i.jh = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.ji = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jj = fmul <4 x float> %i.jh, %i.ji
  %i.jk = fmul <4 x float> %i.hl, %i.ia
  %i.jl = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jm = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %i.jl, %i.jm
  %i.jo = fsub <4 x float> %i.jj, %i.jk
  %i.jp = fsub <4 x float> %i.jo, %i.jn           ; 2 uses
  %i.jq = fmul <4 x float> %i.ia, %i.jp
  %i.jr = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.js = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jt = fmul <4 x float> %i.jr, %i.js
  %i.ju = fsub <4 x float> %i.jq, %i.jt
  %i.jv = fmul <4 x float> %i.ju, splat (float 2.000000e+00)
  %i.jw = fadd <4 x float> %i.hl, %i.jv           ; 12 uses
  %i.jx = extractelement <4 x float> %i.jw, i64 2 ; 3 uses
  %i.jy = extractelement <4 x float> %i.jw, i64 0 ; 4 uses
  %i.jz = extractelement <4 x float> %i.jw, i64 1
  %i.ka = extractelement <2 x float> %i.jd, i64 0
  %i.kb = extractelement <2 x float> %i.jd, i64 1 ; 3 uses
  %i.kc = fmul float %i.jy, %i.kb
  %i.kd = extractelement <2 x float> %i.jg, i64 0 ; 3 uses
  %i.ke = fmul float %i.jz, %i.kd
  %i.kf = fmul float %i.jx, %i.kb
  %i.kg = fmul float %i.jy, %i.kd
  %i.kh = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ki = shufflevector <2 x float> %i.jd, <2 x float> %i.je, <2 x i32> <i32 0, i32 3>
  %i.kj = fmul <2 x float> %i.kh, %i.ki           ; 3 uses
  %i.kk = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kl = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.km = fmul <2 x float> %i.kl, %i.jf           ; 2 uses
  %i.kn = extractelement <2 x float> %i.kj, i64 0
  %i.ko = fmul float %i.jx, %i.kd
  %i.kp = fmul float %i.jx, %i.ka                 ; 2 uses
  %i.kq = fadd float %i.kp, %i.kg
  %i.kr = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ks = shufflevector <2 x float> %i.je, <2 x float> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.kt = fmul <2 x float> %i.kr, %i.ks           ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kk, <2 x float> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.kv = fadd <2 x float> %i.ku, %i.kj
  %i.kw = fadd <2 x float> %i.km, %i.kv           ; 5 uses
  %i.kx = fsub float %i.kp, %i.kc
  %i.ky = insertelement <2 x float> %i.kj, float %i.ke, i64 0
  %i.kz = fsub <2 x float> %i.kt, %i.ky           ; 2 uses
  %i.la = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lb = fsub <2 x float> %i.kz, %i.la
  %i.lc = fadd <2 x float> %i.kz, %i.la
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> %i.lb, <2 x i32> <i32 0, i32 3>
  %i.le = fmul <2 x float> %i.do, %i.ld
  %i.lf = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lg = fadd <2 x float> %i.lf, %i.le           ; 6 uses
  %i.lh = fsub float %i.ko, %i.kn
  %i.li = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.lj = fsub float %i.lh, %i.li
  %i.lk = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ll = fmul float %i.jy, %.sroa.16.0.i
  %i.lm = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ln = shufflevector <2 x float> %i.je, <2 x float> %i.jg, <2 x i32> <i32 0, i32 3>
  %i.lo = fmul <2 x float> %i.lm, %i.ln           ; 2 uses
  %i.lp = shufflevector <2 x float> %i.jd, <2 x float> %i.je, <2 x i32> <i32 0, i32 2>
  %i.lq = fmul <2 x float> %i.lm, %i.lp           ; 2 uses
  %i.lr = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.ls = fmul <2 x float> %i.lr, %i.je           ; 2 uses
  %shift638 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop639 = fsub <2 x float> %shift638, %i.lq
  %i.lt = extractelement <2 x float> %foldExtExtBinop639, i64 0
  %i.lu = extractelement <2 x float> %i.lo, i64 0
  %i.lv = fadd float %i.kq, %i.lu                 ; 4 uses
  %i.lw = fmul float %i.co, %i.lt
  %i.lx = fadd float %i.kb, %i.lw                 ; 5 uses
  %i.ly = fadd float %i.kx, %i.lv
  %i.lz = insertelement <2 x float> %i.lk, float %i.ly, i64 1
  %i.ma = fmul <2 x float> %i.do, %i.lz
  %i.mb = fadd <2 x float> %i.je, %i.ma           ; 6 uses
  %i.mc = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.md = insertelement <2 x float> %i.mc, float %i.ll, i64 0
  %i.me = fsub <2 x float> %i.md, %i.lo           ; 2 uses
  %i.mf = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mg = insertelement <2 x float> %i.mf, float %i.lv, i64 0 ; 2 uses
  %i.mh = fadd <2 x float> %i.me, %i.mg
  %i.mi = fsub <2 x float> %i.me, %i.mg
  %i.mj = shufflevector <2 x float> %i.mh, <2 x float> %i.mi, <2 x i32> <i32 1, i32 2>
  %i.mk = fmul <2 x float> %i.dr, %i.mj
  %i.ml = fadd <2 x float> %i.je, %i.mk           ; 5 uses
  %i.mm = fsub <2 x float> %i.lq, %i.ls
  %i.mn = fmul <2 x float> %i.do, %i.mm
  %i.mo = fadd <2 x float> %i.jg, %i.mn           ; 3 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 0 ; 3 uses
  %i.mq = extractelement <2 x float> %i.mo, i64 1 ; 3 uses
  %i.mr = fmul float %i.mp, %i.mq
  %foldExtExtBinop641 = fmul <2 x float> %i.mb, %i.ml
  %i.ms = extractelement <2 x float> %foldExtExtBinop641, i64 0
  %i.mt = fsub float %i.mr, %i.ms                 ; 2 uses
  %i.mu = shufflevector <2 x float> %i.lg, <2 x float> %i.mb, <2 x i32> <i32 0, i32 2>
  %i.mv = fmul <2 x float> %i.mu, %i.ml
  %i.mw = shufflevector <2 x float> %i.ml, <2 x float> %i.lg, <2 x i32> <i32 1, i32 2>
  %i.mx = fmul <2 x float> %i.mo, %i.mw
  %i.my = fsub <2 x float> %i.mv, %i.mx           ; 3 uses
  %i.mz = fmul float %i.lx, %i.mt
  %i.na = shufflevector <2 x float> %i.mb, <2 x float> %i.lg, <2 x i32> <i32 1, i32 3>
  %i.nb = fmul <2 x float> %i.na, %i.my           ; 2 uses
  %i.nc = extractelement <2 x float> %i.nb, i64 1
  %i.nd = fadd float %i.mz, %i.nc
  %i.ne = extractelement <2 x float> %i.nb, i64 0
  %i.nf = fadd float %i.ne, %i.nd                 ; 2 uses
  %i.ng = tail call float @llvm.fabs.f32(float %i.nf)
  %i.nh = fcmp ogt float %i.ng, f0x057A0000
  br i1 %i.nh, label %bb.ar, label %b3Solve3.exit.i

bb.ar:                                            ; preds = %b3InvertMatrix.exit.i
  %i.ni = extractelement <2 x float> %i.ml, i64 0 ; 2 uses
  %i.nj = extractelement <2 x float> %i.mb, i64 0
  %i.nk = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.lv, i64 3
  %i.nm = fmul <4 x float> %i.jw, %i.nl
  %i.nn = fmul float %i.jy, %i.li
  %i.no = insertelement <4 x float> %i.jw, float %i.nn, i64 3
  %i.np = fsub <4 x float> %i.nm, %i.no           ; 4 uses
  %i.nq = shufflevector <2 x float> %i.je, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nr = shufflevector <4 x float> %i.ds, <4 x float> %i.nq, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.ns = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nt = shufflevector <4 x float> %i.nr, <4 x float> %i.ns, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.nu = fmul <4 x float> %i.nt, %i.np           ; 4 uses
  %shift643 = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop644 = fadd <4 x float> %shift643, %i.nu
  %shift646 = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop647 = fadd <4 x float> %shift646, %foldExtExtBinop644
  %shift649 = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop650 = fadd <4 x float> %foldExtExtBinop647, %shift649
  %i.nv = extractelement <4 x float> %foldExtExtBinop650, i64 0 ; 3 uses
  %i.nw = fdiv float 1.000000e+00, %i.nf          ; 3 uses
  %i.nx = extractelement <2 x float> %i.mb, i64 1 ; 3 uses
  %i.ny = fmul float %i.nx, %i.ni
  %i.nz = extractelement <2 x float> %i.lg, i64 1 ; 2 uses
  %i.oa = fmul float %i.mq, %i.nz
  %i.ob = fmul float %i.lx, %i.mq
  %i.oc = extractelement <2 x float> %i.ml, i64 1 ; 2 uses
  %i.od = fmul float %i.nx, %i.oc
  %i.oe = fmul float %i.oc, %i.nz
  %i.of = fmul float %i.lx, %i.ni
  %i.og = fsub float %i.oe, %i.of
  %i.oh = fmul <2 x float> %i.mb, %i.nk
  %i.oi = fmul float %i.mp, %i.nx
  %i.oj = fmul float %i.lx, %i.nj
  %i.ok = fmul float %i.lx, %i.mp
  %foldExtExtBinop653 = fmul <2 x float> %i.nk, %i.lg
  %i.ol = extractelement <2 x float> %foldExtExtBinop653, i64 0
  %i.om = fsub float %i.ok, %i.ol
  %i.on = extractelement <2 x float> %i.my, i64 0
  %i.oo = fmul float %i.nv, %i.on
  %i.op = shufflevector <4 x float> %i.np, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.oq = fmul <2 x float> %i.op, %i.jd
  %i.or = shufflevector <4 x float> %i.np, <4 x float> poison, <2 x i32> zeroinitializer
  %i.os = shufflevector <2 x float> %i.jg, <2 x float> %i.lf, <2 x i32> <i32 0, i32 3>
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = fadd <2 x float> %i.oq, %i.ot
  %i.ov = shufflevector <4 x float> %i.np, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ow = fmul <2 x float> %i.ov, %i.je
  %i.ox = fadd <2 x float> %i.ou, %i.ow
  %i.oy = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oz = fmul <2 x float> %i.oy, %i.kw
  %i.pa = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.pb = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pc = insertelement <2 x float> %i.pb, float %i.lv, i64 1
  %i.pd = fmul <2 x float> %i.pa, %i.pc
  %i.pe = fsub <2 x float> %i.oz, %i.pd
  %i.pf = fmul <2 x float> %i.do, %i.pe
  %i.pg = fadd <2 x float> %i.ox, %i.pf           ; 4 uses
  %i.ph = fsub float %i.ny, %i.oa
  %i.pi = fsub float %i.ob, %i.od
  %i.pj = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pk = extractelement <2 x float> %i.pg, i64 1
  %i.pl = fmul float %i.pk, %i.mt
  %shift655 = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop656 = fmul <2 x float> %i.pg, %shift655
  %i.pm = extractelement <2 x float> %foldExtExtBinop656, i64 0
  %i.pn = fadd float %i.pl, %i.pm
  %i.po = fadd float %i.oo, %i.pn
  %i.pp = fmul float %i.po, %i.nw
  %.sroa.050.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pq = insertelement <2 x float> poison, float %i.pi, i64 0
end_hunk_0
