Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
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
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @289, i64 %i.ef, i64 %i.eg) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @290, i64 %i.cu, i64 %.us-phi493.i) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @291, i64 %i.cw, i64 %.us-phi497.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.ew = ptrtoint ptr %i.ep to i64, !nosanitize !9 ; 2 uses
  %i.ex = and i64 %i.ew, 3, !nosanitize !9
  %i.ey = icmp eq i64 %i.ex, 0, !nosanitize !9
  br i1 %i.ey, label %bb.am, label %.split499.i, !prof !10, !nosanitize !9

.split499.i:                                      ; preds = %bb.al, %bb.aj, %bb.ag
  %.us-phi500.i = phi i64 [ 0, %bb.ag ], [ %i.ec, %bb.aj ], [ %i.ew, %bb.al ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @293, i64 %.us-phi500.i) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %.us-phi517.i) #12, !nosanitize !9
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
  %i.id = fmul <2 x float> %.sroa.5389.0.copyload.i, %i.ic ; 2 uses
  %shift632 = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop633 = fsub <2 x float> %i.id, %shift632 ; 2 uses
  %i.ie = extractelement <2 x float> %foldExtExtBinop633, i64 0
  %i.if = shufflevector <2 x float> %.sroa.5389.0.copyload.i, <2 x float> %.sroa.7391.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.ig = insertelement <2 x float> poison, float %.sroa.8392.0.copyload.i, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %.sroa.6390.0.copyload.i, i64 1
  %i.ii = fmul <2 x float> %i.if, %i.ih
  %i.ij = insertelement <2 x float> poison, float %.sroa.6390.0.copyload.i, i64 0
  %i.ik = insertelement <2 x float> %i.ij, float %.sroa.8392.0.copyload.i, i64 1
  %i.il = shufflevector <2 x float> %.sroa.7391.0.copyload.i, <2 x float> %.sroa.5389.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.im = fmul <2 x float> %i.ik, %i.il
  %i.in = fsub <2 x float> %i.ii, %i.im           ; 2 uses
  %i.io = fmul <2 x float> %.sroa.0387.0.copyload.i, %i.in ; 2 uses
  %shift635 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop636 = fadd <2 x float> %i.io, %shift635
  %i.ip = extractelement <2 x float> %foldExtExtBinop636, i64 0
  %i.iq = fmul float %.sroa.4388.0.copyload.i, %i.ie
  %i.ir = fadd float %i.iq, %i.ip                 ; 2 uses
  %i.is = tail call float @llvm.fabs.f32(float %i.ir)
  %i.it = fcmp ogt float %i.is, f0x057A0000
  br i1 %i.it, label %bb.aq, label %b3InvertMatrix.exit.i

bb.aq:                                            ; preds = %bb.ap
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0387.0.copyload.i, i64 0
  %i.iu = shufflevector <2 x float> %.sroa.0387.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.7391.0.copyload.i, i64 0
  %i.iv = shufflevector <2 x float> %.sroa.5389.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iw = fdiv float 1.000000e+00, %i.ir
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.iz = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = fmul <2 x float> %i.iz, %i.iy
  %i.jb = fmul float %.sroa.03.0.vec.extract.i.i.i.i, %.sroa.8392.0.copyload.i
  %i.jc = fmul float %.sroa.4388.0.copyload.i, %.sroa.0.0.vec.extract.i.i.i.i
  %i.jd = fmul <2 x float> %i.iu, %.sroa.7391.0.copyload.i ; 2 uses
  %shift638 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop639 = fsub <2 x float> %i.jd, %shift638
  %4 = shufflevector <2 x float> %foldExtExtBinop639, <2 x float> %foldExtExtBinop633, <2 x i32> <i32 0, i32 2>
  %i.je = fmul <2 x float> %4, %i.iy              ; 2 uses
  %i.jf = fmul <2 x float> %.sroa.0387.0.copyload.i, %i.iv ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jh = insertelement <2 x float> %i.jg, float %i.jb, i64 0
  %i.ji = insertelement <2 x float> %i.jf, float %i.jc, i64 0
  %i.jj = fsub <2 x float> %i.jh, %i.ji
  %i.jk = fmul <2 x float> %i.jj, %i.iy           ; 3 uses
  %i.jl = extractelement <2 x float> %i.jk, i64 1
  %i.jm = shufflevector <2 x float> %i.je, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  br label %b3InvertMatrix.exit.i

b3InvertMatrix.exit.i:                            ; preds = %bb.aq, %bb.ap
  %.sroa.16.0.i = phi float [ %i.jl, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.jn = phi <2 x float> [ %i.ja, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 7 uses
  %i.jo = phi <2 x float> [ %i.je, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 9 uses
  %i.jp = phi <2 x float> [ %i.jm, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 2 uses
  %i.jq = phi <2 x float> [ %i.jk, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 4 uses
  %i.jr = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.js = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jt = fmul <4 x float> %i.jr, %i.js
  %i.ju = fmul <4 x float> %i.hl, %i.ia
  %i.jv = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jw = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fmul <4 x float> %i.jv, %i.jw
  %i.jy = fsub <4 x float> %i.jt, %i.ju
  %i.jz = fsub <4 x float> %i.jy, %i.jx           ; 2 uses
  %i.ka = fmul <4 x float> %i.ia, %i.jz
  %i.kb = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.kc = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.kd = fmul <4 x float> %i.kb, %i.kc
  %i.ke = fsub <4 x float> %i.ka, %i.kd
  %i.kf = fmul <4 x float> %i.ke, splat (float 2.000000e+00)
  %i.kg = fadd <4 x float> %i.hl, %i.kf           ; 12 uses
  %i.kh = extractelement <4 x float> %i.kg, i64 2 ; 3 uses
  %i.ki = extractelement <4 x float> %i.kg, i64 0 ; 4 uses
  %i.kj = extractelement <4 x float> %i.kg, i64 1
  %i.kk = extractelement <2 x float> %i.jn, i64 0
  %i.kl = extractelement <2 x float> %i.jn, i64 1 ; 3 uses
  %i.km = fmul float %i.ki, %i.kl
  %i.kn = extractelement <2 x float> %i.jq, i64 0 ; 3 uses
  %i.ko = fmul float %i.kj, %i.kn
  %i.kp = fmul float %i.kh, %i.kl
  %i.kq = fmul float %i.ki, %i.kn
  %i.kr = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ks = shufflevector <2 x float> %i.jn, <2 x float> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.kt = fmul <2 x float> %i.kr, %i.ks           ; 3 uses
  %i.ku = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kv = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kw = fmul <2 x float> %i.kv, %i.jp           ; 2 uses
  %i.kx = extractelement <2 x float> %i.kt, i64 0
  %i.ky = fmul float %i.kh, %i.kn
  %i.kz = fmul float %i.kh, %i.kk                 ; 2 uses
  %i.la = fadd float %i.kz, %i.kq
  %i.lb = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.lc = shufflevector <2 x float> %i.jo, <2 x float> %i.jn, <2 x i32> <i32 0, i32 3>
  %i.ld = fmul <2 x float> %i.lb, %i.lc           ; 2 uses
  %i.le = shufflevector <2 x float> %i.ku, <2 x float> %i.ld, <2 x i32> <i32 0, i32 2>
  %i.lf = fadd <2 x float> %i.le, %i.kt
  %i.lg = fadd <2 x float> %i.kw, %i.lf           ; 5 uses
  %i.lh = fsub float %i.kz, %i.km
  %i.li = insertelement <2 x float> %i.kt, float %i.ko, i64 0
  %i.lj = fsub <2 x float> %i.ld, %i.li           ; 2 uses
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ll = fsub <2 x float> %i.lj, %i.lk
  %i.lm = fadd <2 x float> %i.lj, %i.lk
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> %i.ll, <2 x i32> <i32 0, i32 3>
  %i.lo = fmul <2 x float> %i.do, %i.ln
  %i.lp = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %shift655 = fadd <2 x float> %i.lp, %i.lo       ; 6 uses
  %i.lq = fsub float %i.ky, %i.kx
  %i.lr = extractelement <2 x float> %i.lg, i64 0 ; 2 uses
  %i.ls = fsub float %i.lq, %i.lr
  %i.lt = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lu = fmul float %i.ki, %.sroa.16.0.i
  %i.lv = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.lw = shufflevector <2 x float> %i.jo, <2 x float> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.lx = fmul <2 x float> %i.lv, %i.lw           ; 2 uses
  %i.ly = shufflevector <2 x float> %i.jn, <2 x float> %i.jo, <2 x i32> <i32 0, i32 2>
  %i.lz = fmul <2 x float> %i.lv, %i.ly           ; 2 uses
  %i.ma = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.mb = fmul <2 x float> %i.ma, %i.jo           ; 2 uses
  %shift641 = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop642 = fsub <2 x float> %shift641, %i.lz
  %i.mc = extractelement <2 x float> %foldExtExtBinop642, i64 0
  %i.md = extractelement <2 x float> %i.lx, i64 0
  %i.me = fadd float %i.la, %i.md                 ; 4 uses
  %i.mf = fmul float %i.co, %i.mc
  %i.mg = fadd float %i.kl, %i.mf                 ; 5 uses
  %i.mh = fadd float %i.lh, %i.me
  %i.mi = insertelement <2 x float> %i.lt, float %i.mh, i64 1
  %i.mj = fmul <2 x float> %i.do, %i.mi
  %i.mk = fadd <2 x float> %i.jo, %i.mj           ; 6 uses
  %i.ml = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mm = insertelement <2 x float> %i.ml, float %i.lu, i64 0
  %i.mn = fsub <2 x float> %i.mm, %i.lx           ; 2 uses
  %i.mo = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mp = insertelement <2 x float> %i.mo, float %i.me, i64 0 ; 2 uses
  %i.mq = fadd <2 x float> %i.mn, %i.mp
  %i.mr = fsub <2 x float> %i.mn, %i.mp
  %i.ms = shufflevector <2 x float> %i.mq, <2 x float> %i.mr, <2 x i32> <i32 1, i32 2>
  %i.mt = fmul <2 x float> %i.dr, %i.ms
  %i.mu = fadd <2 x float> %i.jo, %i.mt           ; 5 uses
  %i.mv = fsub <2 x float> %i.lz, %i.mb
  %i.mw = fmul <2 x float> %i.do, %i.mv
  %i.mx = fadd <2 x float> %i.jq, %i.mw           ; 3 uses
  %i.my = extractelement <2 x float> %i.mx, i64 0 ; 3 uses
  %i.mz = extractelement <2 x float> %i.mx, i64 1 ; 3 uses
  %i.na = fmul float %i.my, %i.mz
  %foldExtExtBinop644 = fmul <2 x float> %i.mk, %i.mu
  %i.nb = extractelement <2 x float> %foldExtExtBinop644, i64 0
  %i.nc = fsub float %i.na, %i.nb                 ; 2 uses
  %i.nd = shufflevector <2 x float> %shift655, <2 x float> %i.mk, <2 x i32> <i32 0, i32 2>
  %i.ne = fmul <2 x float> %i.nd, %i.mu
  %i.nf = shufflevector <2 x float> %i.mu, <2 x float> %shift655, <2 x i32> <i32 1, i32 2>
  %i.ng = fmul <2 x float> %i.mx, %i.nf
  %i.nh = fsub <2 x float> %i.ne, %i.ng           ; 3 uses
  %i.ni = fmul float %i.mg, %i.nc
  %i.nj = shufflevector <2 x float> %i.mk, <2 x float> %shift655, <2 x i32> <i32 1, i32 3>
  %i.nk = fmul <2 x float> %i.nj, %i.nh           ; 2 uses
  %i.nl = extractelement <2 x float> %i.nk, i64 1
  %i.nm = fadd float %i.ni, %i.nl
  %i.nn = extractelement <2 x float> %i.nk, i64 0
  %i.no = fadd float %i.nn, %i.nm                 ; 2 uses
  %i.np = tail call float @llvm.fabs.f32(float %i.no)
  %i.nq = fcmp ogt float %i.np, f0x057A0000
  br i1 %i.nq, label %bb.ar, label %b3Solve3.exit.i

bb.ar:                                            ; preds = %b3InvertMatrix.exit.i
  %i.nr = extractelement <2 x float> %i.mu, i64 0 ; 2 uses
  %i.ns = extractelement <2 x float> %i.mk, i64 0
  %i.nt = shufflevector <2 x float> %shift655, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.me, i64 3
  %i.nv = fmul <4 x float> %i.kg, %i.nu
  %i.nw = fmul float %i.ki, %i.lr
  %i.nx = insertelement <4 x float> %i.kg, float %i.nw, i64 3
  %i.ny = fsub <4 x float> %i.nv, %i.nx           ; 4 uses
  %i.nz = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oa = shufflevector <4 x float> %i.ds, <4 x float> %i.nz, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.ob = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oc = shufflevector <4 x float> %i.oa, <4 x float> %i.ob, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.od = fmul <4 x float> %i.oc, %i.ny           ; 4 uses
  %shift646 = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop647 = fadd <4 x float> %shift646, %i.od
  %shift649 = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop650 = fadd <4 x float> %shift649, %foldExtExtBinop647
  %shift652 = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop653 = fadd <4 x float> %foldExtExtBinop650, %shift652
  %i.oe = extractelement <4 x float> %foldExtExtBinop653, i64 0 ; 3 uses
  %i.of = fdiv float 1.000000e+00, %i.no          ; 3 uses
  %i.og = extractelement <2 x float> %i.mk, i64 1 ; 3 uses
  %i.oh = fmul float %i.og, %i.nr
  %i.oi = extractelement <2 x float> %shift655, i64 1 ; 2 uses
  %i.oj = fmul float %i.mz, %i.oi
  %i.ok = fmul float %i.mg, %i.mz
  %i.ol = extractelement <2 x float> %i.mu, i64 1 ; 2 uses
  %i.om = fmul float %i.og, %i.ol
  %i.on = fmul float %i.ol, %i.oi
  %i.oo = fmul float %i.mg, %i.nr
  %i.op = fsub float %i.on, %i.oo
  %i.oq = fmul <2 x float> %i.mk, %i.nt
  %i.or = fmul float %i.my, %i.og
  %i.os = fmul float %i.mg, %i.ns
  %i.ot = fmul float %i.mg, %i.my
  %foldExtExtBinop656 = fmul <2 x float> %i.nt, %shift655
  %i.ou = extractelement <2 x float> %foldExtExtBinop656, i64 0
  %i.ov = fsub float %i.ot, %i.ou
  %i.ow = extractelement <2 x float> %i.nh, i64 0
  %i.ox = fmul float %i.oe, %i.ow
  %i.oy = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.oz = fmul <2 x float> %i.oy, %i.jn
  %i.pa = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> zeroinitializer
  %i.pb = shufflevector <2 x float> %i.jq, <2 x float> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.pc = fmul <2 x float> %i.pa, %i.pb
  %i.pd = fadd <2 x float> %i.oz, %i.pc
  %i.pe = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pf = fmul <2 x float> %i.pe, %i.jo
  %i.pg = fadd <2 x float> %i.pd, %i.pf
  %i.ph = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = fmul <2 x float> %i.ph, %i.lg
  %i.pj = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.pk = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pl = insertelement <2 x float> %i.pk, float %i.me, i64 1
  %i.pm = fmul <2 x float> %i.pj, %i.pl
  %i.pn = fsub <2 x float> %i.pi, %i.pm
  %i.po = fmul <2 x float> %i.do, %i.pn
  %i.pp = fadd <2 x float> %i.pg, %i.po           ; 4 uses
  %i.pq = fsub float %i.oh, %i.oj
  %i.pr = fsub float %i.ok, %i.om
  %i.ps = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pt = extractelement <2 x float> %i.pp, i64 1
  %i.pu = fmul float %i.pt, %i.nc
  %shift658 = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop659 = fmul <2 x float> %i.pp, %shift658
  %i.pv = extractelement <2 x float> %foldExtExtBinop659, i64 0
  %i.pw = fadd float %i.pu, %i.pv
  %i.px = fadd float %i.ox, %i.pw
  %i.py = fmul float %i.px, %i.of
  %.sroa.050.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.py, i64 0
  %i.pz = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.qa = insertelement <2 x float> %i.pz, float %i.pq, i64 1
  %i.qb = fmul <2 x float> %i.pp, %i.qa           ; 2 uses
end_hunk_0
