Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3PrepareContacts_Mesh:bb.a
.lr.ph4863.us:                                    ; preds = %bb.av
  %i.mw = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.mx = ptrtoint ptr %i.mm to i64               ; 3 uses
  %.sroa.2357.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.er, i64 208 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.er, i64 200 ; 2 uses
  %i.mz = fadd float %.0547.us, %.0548.us         ; 3 uses
  %.sroa.09.0.vec.extract.i672.us = extractelement <2 x float> %.sroa.0430.0.us, i64 0
  %.sroa.09.0.vec.extract.i656.us = extractelement <2 x float> %.sroa.0446.0.us, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i652.us = extractelement <2 x float> %.sroa.0446.0.us, i64 1 ; 2 uses
  %.sroa.07.0.vec.extract.i676.us = extractelement <2 x float> %.sroa.0434.0.us, i64 0
  %.sroa.07.4.vec.extract.i678.us = extractelement <2 x float> %.sroa.0434.0.us, i64 1
  %wide.trip.count10069 = zext nneg i32 %i.ir to i64
  %i.na = extractelement <2 x float> %i.gw, i64 1
  %i.nb = insertelement <2 x float> poison, float %.sroa.39.0.us, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ne = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nf = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.ng = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nh = insertelement <2 x float> %i.ng, float %.sroa.391025.0.us, i64 0
  %i.ni = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nj = insertelement <2 x float> %i.ni, float %.sroa.15959.0.us, i64 0
  %i.nk = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nl = insertelement <2 x float> %i.nk, float %.sroa.27992.0.us, i64 0
  %i.nm = shufflevector <2 x float> %i.im, <2 x float> %i.gw, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.nn = insertelement <8 x float> %i.nm, float %.sroa.39.0.us, i64 2
  %i.no = insertelement <8 x float> %i.nn, float %.sroa.391025.0.us, i64 5
  %i.np = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nq = shufflevector <4 x float> %i.jh, <4 x float> %i.np, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.nr = insertelement <8 x float> %i.nq, float %.sroa.15.0.us, i64 2
  %i.ns = insertelement <8 x float> %i.nr, float %i.jb, i64 3
  %i.nt = insertelement <8 x float> %i.ns, float %.sroa.15959.0.us, i64 5
  %i.nu = shufflevector <2 x float> %i.in, <2 x float> %i.io, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nv = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nw = shufflevector <4 x float> %i.nu, <4 x float> %i.nv, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.nx = insertelement <8 x float> %i.nw, float %.sroa.27.0.us, i64 2
  %i.ny = insertelement <8 x float> %i.nx, float %i.jd, i64 3
  %i.nz = insertelement <8 x float> %i.ny, float %.sroa.27992.0.us, i64 5
  %i.oa = insertelement <4 x float> poison, float %.sroa.5432.0.us, i64 0
  %i.ob = insertelement <4 x float> %i.oa, float %.sroa.5448.0.us, i64 1
  %i.oc = shufflevector <2 x float> %.sroa.0430.0.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  br label %.lr.ph4863.split.us

.lr.ph4863.split.us:                              ; preds = %.lr.ph4863.us, %b3Invert2.exit.us
  %indvars.iv10066 = phi i64 [ 0, %.lr.ph4863.us ], [ %indvars.iv.next10067, %b3Invert2.exit.us ] ; 5 uses
  %i.od = load ptr, ptr %i.mw, align 8, !tbaa !119 ; 3 uses
  %i.oe = getelementptr inbounds nuw [268 x i8], ptr %i.od, i64 %indvars.iv10066 ; 10 uses
  %i.of = mul nuw nsw i64 %indvars.iv10066, 268
  %i.og = ptrtoint ptr %i.od to i64, !nosanitize !10 ; 3 uses
  %i.oh = add i64 %i.of, %i.og, !nosanitize !10   ; 3 uses
  %i.oi = icmp ne ptr %i.od, null, !nosanitize !10 ; 2 uses
  %i.oj = icmp eq i64 %i.oh, 0
  %i.ok = xor i1 %i.oi, %i.oj
  %i.ol = icmp uge i64 %i.oh, %i.og, !nosanitize !10
  %i.om = and i1 %i.ok, %i.ol, !nosanitize !10
  br i1 %i.om, label %bb.aw, label %.split5577.us, !prof !11, !nosanitize !10

bb.aw:                                            ; preds = %.lr.ph4863.split.us
  %i.on = getelementptr inbounds nuw [308 x i8], ptr %i.mm, i64 %indvars.iv10066 ; 41 uses
  %i.oo = mul nuw nsw i64 %indvars.iv10066, 308
  %i.op = add i64 %i.oo, %i.mx, !nosanitize !10   ; 3 uses
  %i.oq = icmp eq i64 %i.op, 0
  %i.or = xor i1 %i.bt, %i.oq
  %i.os = icmp uge i64 %i.op, %i.mx, !nosanitize !10
  %i.ot = and i1 %i.or, %i.os, !nosanitize !10
  br i1 %i.ot, label %bb.ax, label %.split5581.us, !prof !11, !nosanitize !10

bb.ax:                                            ; preds = %bb.aw
  %i.ou = ptrtoint ptr %i.oe to i64, !nosanitize !10 ; 5 uses
  %i.ov = and i64 %i.ou, 3, !nosanitize !10
  %i.ow = icmp eq i64 %i.ov, 0, !nosanitize !10
  %i.ox = and i1 %i.oi, %i.ow
  br i1 %i.ox, label %bb.ay, label %.split5585.us, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 264
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !121 ; 8 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oe, i64 224
  %.sroa.0379.0.copyload.us = load <2 x float>, ptr %i.pa, align 4, !tbaa !107 ; 15 uses
  %.sroa.12.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oe, i64 232
  %.sroa.12.0.copyload.us = load float, ptr %.sroa.12.0..sroa_idx.us, align 4, !tbaa !107 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 0 ; 5 uses
  %i.pb = tail call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i.us)
  %or.cond.i.us = fcmp ogt float %i.pb, 5.000000e-01
  br i1 %or.cond.i.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !122
  store float %.sroa.12.0.copyload.us, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  %.sroa.017.4.vec.extract.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1
  %i.pc = fneg float %.sroa.017.4.vec.extract.i.us
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %.sroa.017.4.vec.extract21.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1
  store float %.sroa.017.4.vec.extract21.i.us, ptr %.sroa.014.i, align 8, !tbaa !122
  %i.pd = fneg float %.sroa.017.0.vec.extract.i.us
  store float %i.pd, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.05.0.in.i.us = phi ptr [ %.sroa.014.i, %bb.ba ], [ %.sroa.0.i, %bb.az ]
  %.sroa.5.0.i.us = phi float [ 0.000000e+00, %bb.ba ], [ %i.pc, %bb.az ] ; 3 uses
  %.sroa.05.0.i.us = load <2 x float>, ptr %.sroa.05.0.in.i.us, align 8, !tbaa !107 ; 3 uses
  %i.pe = fmul <2 x float> %.sroa.05.0.i.us, %.sroa.05.0.i.us ; 2 uses
  %shift = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.pe, %shift
  %i.pf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.pg = fmul float %.sroa.5.0.i.us, %.sroa.5.0.i.us
  %i.ph = fadd float %i.pg, %i.pf                 ; 2 uses
  %i.pi = fcmp ogt float %i.ph, f0x057A0000
  br i1 %i.pi, label %bb.bc, label %b3Perp.exit.us

bb.bc:                                            ; preds = %bb.bb
  %sqrt.i.us = tail call float @llvm.sqrt.f32(float %i.ph)
  %i.pj = fdiv float 1.000000e+00, %sqrt.i.us     ; 2 uses
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %.sroa.05.0.i.us, %i.pl
  %i.pn = fmul float %.sroa.5.0.i.us, %i.pj
  br label %b3Perp.exit.us

b3Perp.exit.us:                                   ; preds = %bb.bc, %bb.bb
  %.sroa.07.0.i.i.us = phi <2 x float> [ %i.pm, %bb.bc ], [ zeroinitializer, %bb.bb ] ; 10 uses
  %.sroa.5.0.i.i.us = phi float [ %i.pn, %bb.bc ], [ 0.000000e+00, %bb.bb ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.09.4.vec.extract13.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.po = fmul float %.sroa.12.0.copyload.us, %.sroa.09.4.vec.extract13.i.us
  %.sroa.0.4.vec.extract8.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1 ; 3 uses
  %i.pp = fmul float %.sroa.0.4.vec.extract8.i.us, %.sroa.5.0.i.i.us
  %i.pq = fsub float %i.po, %i.pp                 ; 5 uses
  %i.pr = fmul float %.sroa.017.0.vec.extract.i.us, %.sroa.5.0.i.i.us
  %.sroa.09.0.vec.extract.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 2 uses
  %i.ps = fmul float %.sroa.12.0.copyload.us, %.sroa.09.0.vec.extract.i.us
  %i.pt = fsub float %i.pr, %i.ps                 ; 7 uses
  %i.pu = fmul float %.sroa.0.4.vec.extract8.i.us, %.sroa.09.0.vec.extract.i.us
  %i.pv = fmul float %.sroa.017.0.vec.extract.i.us, %.sroa.09.4.vec.extract13.i.us
  %i.pw = fsub float %i.pu, %i.pv                 ; 7 uses
  %i.px = ptrtoint ptr %i.on to i64, !nosanitize !10 ; 7 uses
  %i.py = and i64 %i.px, 3, !nosanitize !10
  %i.pz = icmp eq i64 %i.py, 0, !nosanitize !10
  %i.qa = and i1 %i.bt, %i.pz
  br i1 %i.qa, label %bb.bd, label %.split5594.us, !prof !11, !nosanitize !10

bb.bd:                                            ; preds = %b3Perp.exit.us
  %.sroa.016.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.pq, i64 0
  %.sroa.016.4.vec.insert.i.us = insertelement <2 x float> %.sroa.016.0.vec.insert.i.us, float %i.pt, i64 1
  %i.qb = getelementptr inbounds nuw i8, ptr %i.on, i64 192 ; 2 uses
  store i32 %i.oz, ptr %i.qb, align 4, !tbaa !127
  %i.qc = getelementptr inbounds nuw i8, ptr %i.on, i64 196
  store <2 x float> %.sroa.0379.0.copyload.us, ptr %i.qc, align 4, !tbaa !107
  %.sroa.12.0..sroa_idx388.us = getelementptr inbounds nuw i8, ptr %i.on, i64 204
  store float %.sroa.12.0.copyload.us, ptr %.sroa.12.0..sroa_idx388.us, align 4, !tbaa !107
  %i.qd = getelementptr inbounds nuw i8, ptr %i.on, i64 208
  store <2 x float> %.sroa.07.0.i.i.us, ptr %i.qd, align 4, !tbaa !107
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 216
  store float %.sroa.5.0.i.i.us, ptr %.sroa.8.0..sroa_idx.us, align 4, !tbaa !107
  %i.qe = getelementptr inbounds nuw i8, ptr %i.on, i64 220
  store <2 x float> %.sroa.016.4.vec.insert.i.us, ptr %i.qe, align 4, !tbaa !107
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 228
  store float %i.pw, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !107
  %i.qf = getelementptr inbounds nuw i8, ptr %i.on, i64 300
  %.sroa.2357.0.copyload.us = load float, ptr %.sroa.2357.0..sroa_idx.us, align 8
  %i.qg = fmul float %.sroa.5.0.i.i.us, %.sroa.2357.0.copyload.us
  %.sroa.0356.0.copyload.us = load <2 x float>, ptr %i.my, align 8 ; 2 uses
  %foldExtExtBinop14052 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0356.0.copyload.us
  %foldExtExtBinop14054 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0356.0.copyload.us
  %shift14056 = shufflevector <2 x float> %foldExtExtBinop14054, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14057 = fadd <2 x float> %foldExtExtBinop14052, %shift14056
  %i.qh = extractelement <2 x float> %foldExtExtBinop14057, i64 0
  %i.qi = fadd float %i.qg, %i.qh
  store float %i.qi, ptr %i.qf, align 4, !tbaa !194
  %i.qj = getelementptr inbounds nuw i8, ptr %i.on, i64 304
  %.sroa.2353.0.copyload.us = load float, ptr %.sroa.2357.0..sroa_idx.us, align 8
  %i.qk = fmul float %i.pw, %.sroa.2353.0.copyload.us
  %.sroa.0352.0.copyload.us = load <2 x float>, ptr %i.my, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i594.us = extractelement <2 x float> %.sroa.0352.0.copyload.us, i64 0
  %i.ql = fmul float %i.pq, %.sroa.03.0.vec.extract.i594.us
  %.sroa.03.4.vec.extract.i596.us = extractelement <2 x float> %.sroa.0352.0.copyload.us, i64 1
  %i.qm = fmul float %i.pt, %.sroa.03.4.vec.extract.i596.us
  %i.qn = fadd float %i.ql, %i.qm
  %i.qo = fadd float %i.qk, %i.qn
  store float %i.qo, ptr %i.qj, align 4, !tbaa !195
  %i.qp = icmp sgt i32 %i.oz, 0                   ; 2 uses
  br i1 %i.qp, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.bd
  %wide.trip.count = zext nneg i32 %i.oz to i64
  %i.qq = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.qr = insertelement <8 x float> %i.qq, float %.0548.us, i64 6
  %i.qs = insertelement <8 x float> %i.qr, float %.0547.us, i64 7
  %i.qt = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> %.sroa.0430.0.us, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.qu = insertelement <4 x float> %i.qt, float %.sroa.09.0.vec.extract.i656.us, i64 3
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.bg ] ; 6 uses
  %.sroa.11.04852.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %3, %bb.bg ]
  %.sroa.0345.04851.us.a = phi <2 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %i.vm, %bb.bg ]
  %.sroa.10.04850.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %7, %bb.bg ]
  %.sroa.0341.04849.us = phi <2 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %5, %bb.bg ]
  %.05504848.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.vn, %bb.bg ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %.split5615.us, label %bb.be, !prof !89, !nosanitize !10

bb.be:                                            ; preds = %.lr.ph.us
  %i.qv = getelementptr inbounds nuw [48 x i8], ptr %i.on, i64 %indvars.iv ; 10 uses
  %i.qw = mul nuw nsw i64 %indvars.iv, 48
  %i.qx = add i64 %i.qw, %i.px, !nosanitize !10   ; 2 uses
  %.not591.us = icmp ult i64 %i.qx, %i.px, !nosanitize !10
  br i1 %.not591.us, label %.split5618.us, label %bb.bf, !prof !89, !nosanitize !10

bb.bf:                                            ; preds = %bb.be
  %i.qy = mul nuw nsw i64 %indvars.iv, 56
  %i.qz = add i64 %i.qy, %i.ou, !nosanitize !10   ; 2 uses
  %.not592.us = icmp ult i64 %i.qz, %i.ou, !nosanitize !10
  br i1 %.not592.us, label %.split5622.us, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %i.ra = getelementptr inbounds nuw [56 x i8], ptr %i.oe, i64 %indvars.iv ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qv, ptr noundef nonnull align 4 dereferenceable(12) %i.ra, i64 12, i1 false), !tbaa.struct !128
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qv, i64 12 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rb, ptr noundef nonnull align 4 dereferenceable(12) %i.rc, i64 12, i1 false), !tbaa.struct !128
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.re = load float, ptr %i.rd, align 4, !tbaa !130 ; 2 uses
  %.sroa.0314.0.copyload.us = load <2 x float>, ptr %i.rb, align 4 ; 9 uses
  %.sroa.2315.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.qv, i64 20
  %.sroa.2315.0.copyload.us = load float, ptr %.sroa.2315.0..sroa_idx.us, align 4 ; 5 uses
  %.sroa.0312.0.copyload.us = load <2 x float>, ptr %i.qv, align 4 ; 11 uses
  %.sroa.2313.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %.sroa.2313.0.copyload.us = load float, ptr %.sroa.2313.0..sroa_idx.us, align 4 ; 5 uses
  %.sroa.0.0.vec.extract.i608.us = extractelement <2 x float> %.sroa.0312.0.copyload.us, i64 0
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.rg = fsub float %.sroa.2315.0.copyload.us, %.sroa.2313.0.copyload.us
  %i.rh = fmul float %.sroa.12.0.copyload.us, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.rk = load float, ptr %i.ri, align 4, !tbaa !131
  %i.rl = fmul float %i.v, %i.rk
  store float %i.rl, ptr %i.rj, align 4, !tbaa !133
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qv, i64 36
  store float 0.000000e+00, ptr %i.rm, align 4, !tbaa !134
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %i.ro = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0379.0.copyload.us, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.rp = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rr = insertelement <8 x float> %i.rq, float %.sroa.12.0.copyload.us, i64 0
  %i.rs = insertelement <8 x float> %i.rr, float %.sroa.2315.0.copyload.us, i64 1
  %i.rt = insertelement <8 x float> %i.rs, float %.sroa.2313.0.copyload.us, i64 4
  %i.ru = shufflevector <8 x float> %i.rt, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 6, i32 7>
  %i.rv = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> %.sroa.0379.0.copyload.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rx = shufflevector <8 x float> %i.rw, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.ry = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> %.sroa.0314.0.copyload.us, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rz = shufflevector <8 x float> %i.ry, <8 x float> %i.rx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.sa = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.sb = shufflevector <8 x float> %i.sa, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.sc = insertelement <8 x float> %i.sb, float %.sroa.2315.0.copyload.us, i64 0
  %i.sd = insertelement <8 x float> %i.sc, float %.sroa.12.0.copyload.us, i64 1
  %i.se = insertelement <8 x float> %i.sd, float %.sroa.2313.0.copyload.us, i64 3
  %i.sf = shufflevector <8 x float> %i.se, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.sg = fmul <8 x float> %i.rz, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qv, i64 28
  %i.si = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.sj = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.sl = fsub <4 x float> %i.si, %i.sk
  %foldExtExtBinop14059 = fsub <2 x float> %.sroa.0314.0.copyload.us, %.sroa.0312.0.copyload.us
  %foldExtExtBinop14061 = fmul <2 x float> %.sroa.0379.0.copyload.us, %foldExtExtBinop14059
  %i.sm = extractelement <2 x float> %foldExtExtBinop14061, i64 1
  %i.sn = fmul <4 x float> %i.qu, %i.sl           ; 4 uses
  %i.so = extractelement <4 x float> %i.sn, i64 0
  %i.sp = fadd float %i.so, %i.sm
  %i.sq = fadd float %i.rh, %i.sp
  %i.sr = fsub float %i.re, %i.sq
  store float %i.sr, ptr %i.rf, align 4, !tbaa !135
  %i.ss = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.st = shufflevector <4 x float> %i.ro, <4 x float> %i.ss, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.su = shufflevector <8 x float> %i.st, <8 x float> %i.qs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.sv = fmul <8 x float> %i.su, %i.ru
  %i.sw = fsub <8 x float> %i.sv, %i.sg           ; 4 uses
  %i.sx = shufflevector <8 x float> %i.sw, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.sy = fmul <8 x float> %i.nt, %i.sx
  %i.sz = shufflevector <8 x float> %i.sw, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.ta = fmul <8 x float> %i.nz, %i.sz
  %i.tb = fadd <8 x float> %i.sy, %i.ta
  %i.tc = shufflevector <8 x float> %i.sw, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.td = fmul <8 x float> %i.no, %i.tc
  %i.te = fadd <8 x float> %i.td, %i.tb
  %i.tf = fmul <8 x float> %i.sw, %i.te           ; 6 uses
  %i.tg = extractelement <8 x float> %i.tf, i64 3
  %i.th = extractelement <8 x float> %i.tf, i64 4
  %i.ti = fadd float %i.tg, %i.th
  %i.tj = extractelement <8 x float> %i.tf, i64 5
  %i.tk = fadd float %i.tj, %i.ti
  %i.tl = fadd float %i.mz, %i.tk
  %i.tm = extractelement <8 x float> %i.tf, i64 0
  %i.tn = extractelement <8 x float> %i.tf, i64 1
  %i.to = fadd float %i.tm, %i.tn
  %i.tp = extractelement <8 x float> %i.tf, i64 2
  %i.tq = fadd float %i.tp, %i.to
  %i.tr = fadd float %i.tq, %i.tl                 ; 2 uses
  %i.ts = fcmp ogt float %i.tr, 0.000000e+00
  %i.tt = fdiv float 1.000000e+00, %i.tr
  %i.tu = select i1 %i.ts, float %i.tt, float 0.000000e+00
  store float %i.tu, ptr %i.rn, align 4, !tbaa !136
  %shift14063 = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop14064 = fsub <4 x float> %i.sn, %shift14063
  %i.tv = extractelement <4 x float> %foldExtExtBinop14064, i64 1
  %i.tw = fadd float %.sroa.5436.0.us, %i.tv
  %i.tx = fmul float %.sroa.09.4.vec.extract13.i652.us, %.sroa.0.0.vec.extract.i608.us
  %i.ty = extractelement <4 x float> %i.sn, i64 3
  %i.tz = fsub float %i.ty, %i.tx
  %i.ua = fadd float %.sroa.5452.0.us, %i.tz
  %i.ub = fsub float %i.tw, %i.ua
  %i.uc = fmul float %.sroa.12.0.copyload.us, %i.ub
  %i.ud = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ue = shufflevector <4 x float> %i.ud, <4 x float> %i.oc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uf = insertelement <4 x float> %i.ue, float %.sroa.09.4.vec.extract13.i652.us, i64 3
  %i.ug = insertelement <4 x float> %i.ob, float %.sroa.2315.0.copyload.us, i64 2
  %i.uh = insertelement <4 x float> %i.ug, float %.sroa.2313.0.copyload.us, i64 3 ; 2 uses
  %i.ui = fmul <4 x float> %i.uf, %i.uh
  %i.uj = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.uk = insertelement <4 x float> %i.uj, float %.sroa.09.0.vec.extract.i672.us, i64 2
  %i.ul = insertelement <4 x float> %i.uk, float %.sroa.09.0.vec.extract.i656.us, i64 3
  %i.um = fmul <4 x float> %i.uh, %i.ul
  %i.un = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.uo = fsub <4 x float> %i.ui, %i.un           ; 3 uses
  %i.up = extractelement <4 x float> %i.uo, i64 2
  %i.uq = fadd float %.sroa.07.0.vec.extract.i676.us, %i.up
  %i.ur = extractelement <4 x float> %i.uo, i64 0
  %i.us = fadd float %.sroa.07.4.vec.extract.i678.us, %i.ur
  %i.ut = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.uu = fadd <2 x float> %.sroa.0450.0.us, %i.ut ; 2 uses
  %i.uv = extractelement <2 x float> %i.uu, i64 0
  %i.uw = fsub float %i.uq, %i.uv
  %i.ux = fmul float %.sroa.017.0.vec.extract.i.us, %i.uw
  %i.uy = extractelement <2 x float> %i.uu, i64 1
  %i.uz = fsub float %i.us, %i.uy
  %i.va = fmul float %.sroa.0.4.vec.extract8.i.us, %i.uz
  %i.vb = fadd float %i.ux, %i.va
  %i.vc = fadd float %i.uc, %i.vb
  store float %i.vc, ptr %i.sh, align 4, !tbaa !137
  %i.vd = fmul float %i.z, %i.re
  %i.ve = fsub float 2.000000e+00, %i.vd          ; 3 uses
  %i.vf = fcmp olt float %i.ve, 1.000000e-10
  %i.vg = fcmp ogt float %i.ve, 1.000000e+00
  %i.vh = select i1 %i.vg, float 1.000000e+00, float %i.ve
  %i.vi = select i1 %i.vf, float 1.000000e-10, float %i.vh ; 4 uses
  %i.vj = insertelement <2 x float> poison, float %i.vi, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vl = fmul <2 x float> %.sroa.0312.0.copyload.us, %i.vk
  %i.vm = fadd <2 x float> %.sroa.0345.04851.us.a, %i.vl ; 2 uses
  %2 = fmul float %.sroa.2313.0.copyload.us, %i.vi
  %3 = fadd float %.sroa.11.04852.us, %2          ; 2 uses
  %4 = fmul <2 x float> %.sroa.0314.0.copyload.us, %i.vk
  %5 = fadd <2 x float> %.sroa.0341.04849.us, %4  ; 2 uses
  %6 = fmul float %.sroa.2315.0.copyload.us, %i.vi
  %7 = fadd float %.sroa.10.04850.us, %6          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vn = fadd float %.05504848.us, %i.vi         ; 2 uses
  %exitcond10059.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond10059.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !185

._crit_edge.us:                                   ; preds = %bb.bg, %bb.bd
  %.0550.lcssa.us = phi float [ 0.000000e+00, %bb.bd ], [ %i.vn, %bb.bg ]
  %.sroa.0341.0.lcssa.us = phi <2 x float> [ zeroinitializer, %bb.bd ], [ %5, %bb.bg ] ; 2 uses
  %.sroa.10.0.lcssa.us = phi float [ 0.000000e+00, %bb.bd ], [ %7, %bb.bg ]
  %.sroa.0345.0.lcssa.us = phi <2 x float> [ zeroinitializer, %bb.bd ], [ %i.vm, %bb.bg ]
  %.sroa.11.0.lcssa.us = phi float [ 0.000000e+00, %bb.bd ], [ %3, %bb.bg ]
  %i.vo = fdiv float 1.000000e+00, %.0550.lcssa.us ; 3 uses
  %.sroa.0.0.vec.extract.i602.us = extractelement <2 x float> %.sroa.0341.0.lcssa.us, i64 0
  %i.vp = insertelement <2 x float> poison, float %i.vo, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vr = fmul <2 x float> %i.vq, %.sroa.0345.0.lcssa.us ; 11 uses
  %8 = fmul float %i.vo, %.sroa.11.0.lcssa.us     ; 9 uses
  %i.vs = fmul float %i.vo, %.sroa.0.0.vec.extract.i602.us ; 3 uses
  %.sroa.05.0.vec.insert.i603.us = insertelement <2 x float> poison, float %i.vs, i64 0
  %9 = shufflevector <2 x float> %.sroa.0341.0.lcssa.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %.sroa.10.0.lcssa.us, i64 1
  %i.vt = fmul <2 x float> %i.vq, %10             ; 6 uses
  %i.vu = shufflevector <2 x float> %.sroa.05.0.vec.insert.i603.us, <2 x float> %i.vt, <2 x i32> <i32 0, i32 2>
  %i.vv = getelementptr inbounds nuw i8, ptr %i.on, i64 232
  store <2 x float> %i.vr, ptr %i.vv, align 4, !tbaa !107
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 240
  store float %8, ptr %.sroa.11.0..sroa_idx.us, align 4, !tbaa !107
  %i.vw = getelementptr inbounds nuw i8, ptr %i.on, i64 244
  store <2 x float> %i.vu, ptr %i.vw, align 4, !tbaa !107
  %.sroa.10.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 252
  %i.vx = extractelement <2 x float> %i.vt, i64 1 ; 2 uses
  store float %i.vx, ptr %.sroa.10.0..sroa_idx.us, align 4, !tbaa !107
  br i1 %i.qp, label %.lr.ph4859.us.preheader, label %._crit_edge4860.us

.lr.ph4859.us.preheader:                          ; preds = %._crit_edge.us
  %i.vy = getelementptr inbounds nuw i8, ptr %i.on, i64 44
  %.sroa.2149.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %.sroa.2149.0.copyload.us = load float, ptr %.sroa.2149.0..sroa_idx.us, align 4
  %i.vz = fsub float %8, %.sroa.2149.0.copyload.us ; 2 uses
  %i.wa = fmul float %i.vz, %i.vz
  %.sroa.0148.0.copyload.us = load <2 x float>, ptr %i.on, align 4
  %i.wb = fsub <2 x float> %i.vr, %.sroa.0148.0.copyload.us ; 2 uses
  %i.wc = fmul <2 x float> %i.wb, %i.wb           ; 2 uses
  %shift14066 = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14067 = fadd <2 x float> %i.wc, %shift14066
  %i.wd = extractelement <2 x float> %foldExtExtBinop14067, i64 0
  %i.we = fadd float %i.wa, %i.wd
  %sqrt.i.i.us = tail call float @llvm.sqrt.f32(float %i.we)
  store float %sqrt.i.i.us, ptr %i.vy, align 4, !tbaa !138
  %exitcond10065.not = icmp eq i32 %i.oz, 1
  br i1 %exitcond10065.not, label %._crit_edge4860.us, label %.lr.ph4859.us.1

.lr.ph4859.us.1:                                  ; preds = %.lr.ph4859.us.preheader
  %.not590.us.1 = icmp ugt ptr %i.on, inttoptr (i64 -49 to ptr)
  br i1 %.not590.us.1, label %.split5668.us, label %bb.bh, !prof !89, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph4859.us.1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.wg = getelementptr inbounds nuw i8, ptr %i.on, i64 92
  %.sroa.2149.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.on, i64 56
  %.sroa.2149.0.copyload.us.1 = load float, ptr %.sroa.2149.0..sroa_idx.us.1, align 4
  %i.wh = fsub float %8, %.sroa.2149.0.copyload.us.1 ; 2 uses
  %i.wi = fmul float %i.wh, %i.wh
  %.sroa.0148.0.copyload.us.1 = load <2 x float>, ptr %i.wf, align 4
  %i.wj = fsub <2 x float> %i.vr, %.sroa.0148.0.copyload.us.1 ; 2 uses
  %i.wk = fmul <2 x float> %i.wj, %i.wj           ; 2 uses
  %shift14069 = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14070 = fadd <2 x float> %i.wk, %shift14069
  %i.wl = extractelement <2 x float> %foldExtExtBinop14070, i64 0
  %i.wm = fadd float %i.wi, %i.wl
  %sqrt.i.i.us.1 = tail call float @llvm.sqrt.f32(float %i.wm)
  store float %sqrt.i.i.us.1, ptr %i.wg, align 4, !tbaa !138
  %exitcond10065.1.not = icmp eq i32 %i.oz, 2
  br i1 %exitcond10065.1.not, label %._crit_edge4860.us, label %.lr.ph4859.us.2

.lr.ph4859.us.2:                                  ; preds = %bb.bh
  %.not590.us.2 = icmp ugt ptr %i.on, inttoptr (i64 -97 to ptr)
  br i1 %.not590.us.2, label %.split5668.us, label %bb.bi, !prof !89, !nosanitize !10

bb.bi:                                            ; preds = %.lr.ph4859.us.2
  %i.wn = getelementptr inbounds nuw i8, ptr %i.on, i64 96
  %i.wo = getelementptr inbounds nuw i8, ptr %i.on, i64 140
  %.sroa.2149.0..sroa_idx.us.2 = getelementptr inbounds nuw i8, ptr %i.on, i64 104
  %.sroa.2149.0.copyload.us.2 = load float, ptr %.sroa.2149.0..sroa_idx.us.2, align 4
  %i.wp = fsub float %8, %.sroa.2149.0.copyload.us.2 ; 2 uses
  %i.wq = fmul float %i.wp, %i.wp
  %.sroa.0148.0.copyload.us.2 = load <2 x float>, ptr %i.wn, align 4
  %i.wr = fsub <2 x float> %i.vr, %.sroa.0148.0.copyload.us.2 ; 2 uses
  %i.ws = fmul <2 x float> %i.wr, %i.wr           ; 2 uses
  %shift14072 = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14073 = fadd <2 x float> %i.ws, %shift14072
  %i.wt = extractelement <2 x float> %foldExtExtBinop14073, i64 0
  %i.wu = fadd float %i.wq, %i.wt
  %sqrt.i.i.us.2 = tail call float @llvm.sqrt.f32(float %i.wu)
  store float %sqrt.i.i.us.2, ptr %i.wo, align 4, !tbaa !138
  %exitcond10065.2.not = icmp eq i32 %i.oz, 3
  br i1 %exitcond10065.2.not, label %._crit_edge4860.us, label %.lr.ph4859.us.3

.lr.ph4859.us.3:                                  ; preds = %bb.bi
  %.not590.us.3 = icmp ugt ptr %i.on, inttoptr (i64 -145 to ptr)
  br i1 %.not590.us.3, label %.split5668.us, label %bb.bj, !prof !89, !nosanitize !10

bb.bj:                                            ; preds = %.lr.ph4859.us.3
  %i.wv = getelementptr inbounds nuw i8, ptr %i.on, i64 144
  %i.ww = getelementptr inbounds nuw i8, ptr %i.on, i64 188
  %.sroa.2149.0..sroa_idx.us.3 = getelementptr inbounds nuw i8, ptr %i.on, i64 152
  %.sroa.2149.0.copyload.us.3 = load float, ptr %.sroa.2149.0..sroa_idx.us.3, align 4
  %i.wx = fsub float %8, %.sroa.2149.0.copyload.us.3 ; 2 uses
  %i.wy = fmul float %i.wx, %i.wx
  %.sroa.0148.0.copyload.us.3 = load <2 x float>, ptr %i.wv, align 4
  %i.wz = fsub <2 x float> %i.vr, %.sroa.0148.0.copyload.us.3 ; 2 uses
  %i.xa = fmul <2 x float> %i.wz, %i.wz           ; 2 uses
  %shift14075 = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14076 = fadd <2 x float> %i.xa, %shift14075
  %i.xb = extractelement <2 x float> %foldExtExtBinop14076, i64 0
  %i.xc = fadd float %i.wy, %i.xb
  %sqrt.i.i.us.3 = tail call float @llvm.sqrt.f32(float %i.xc)
  store float %sqrt.i.i.us.3, ptr %i.ww, align 4, !tbaa !138
  %exitcond10065.3.not = icmp eq i32 %i.oz, 4
  br i1 %exitcond10065.3.not, label %._crit_edge4860.us, label %.lr.ph4859.us.4

.lr.ph4859.us.4:                                  ; preds = %bb.bj
  %.not590.us.4 = icmp ugt ptr %i.on, inttoptr (i64 -193 to ptr)
  br i1 %.not590.us.4, label %.split5668.us, label %bb.bk, !prof !89, !nosanitize !10

bb.bk:                                            ; preds = %.lr.ph4859.us.4
  %i.xd = getelementptr inbounds nuw i8, ptr %i.on, i64 236
  %.sroa.2149.0..sroa_idx.us.4 = getelementptr inbounds nuw i8, ptr %i.on, i64 200
  %.sroa.2149.0.copyload.us.4 = load float, ptr %.sroa.2149.0..sroa_idx.us.4, align 4
  %i.xe = fsub float %8, %.sroa.2149.0.copyload.us.4 ; 2 uses
  %i.xf = fmul float %i.xe, %i.xe
  %.sroa.0148.0.copyload.us.4 = load <2 x float>, ptr %i.qb, align 4
  %i.xg = fsub <2 x float> %i.vr, %.sroa.0148.0.copyload.us.4 ; 2 uses
  %i.xh = fmul <2 x float> %i.xg, %i.xg           ; 2 uses
  %shift14078 = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14079 = fadd <2 x float> %i.xh, %shift14078
  %i.xi = extractelement <2 x float> %foldExtExtBinop14079, i64 0
  %i.xj = fadd float %i.xf, %i.xi
  %sqrt.i.i.us.4 = tail call float @llvm.sqrt.f32(float %i.xj)
  store float %sqrt.i.i.us.4, ptr %i.xd, align 4, !tbaa !138
  %exitcond10065.4.not = icmp eq i32 %i.oz, 5
  br i1 %exitcond10065.4.not, label %._crit_edge4860.us, label %.split5665.us

._crit_edge4860.us:                               ; preds = %.lr.ph4859.us.preheader, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %._crit_edge.us
  %i.xk = shufflevector <2 x float> %.sroa.07.0.i.i.us, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.xl = insertelement <2 x float> %i.xk, float %.sroa.5.0.i.i.us, i64 1
  %i.xm = fmul <2 x float> %i.xl, %i.vr
  %i.xn = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xo = insertelement <2 x float> %i.xn, float %8, i64 1
  %i.xp = fmul <2 x float> %.sroa.07.0.i.i.us, %i.xo
  %i.xq = insertelement <2 x float> %.sroa.07.0.i.i.us, float %i.pq, i64 1 ; 3 uses
  %i.xr = insertelement <2 x float> poison, float %8, i64 0
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fmul <2 x float> %i.xq, %i.xs
  %i.xu = insertelement <2 x float> poison, float %.sroa.5.0.i.i.us, i64 0
  %i.xv = insertelement <2 x float> %i.xu, float %i.pw, i64 1
  %i.xw = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xx = fmul <2 x float> %i.xv, %i.xw
  %i.xy = extractelement <2 x float> %i.vr, i64 1 ; 2 uses
  %i.xz = fmul float %i.pw, %i.xy
  %i.ya = fmul float %i.pt, %8
  %i.yb = extractelement <2 x float> %i.vr, i64 0
  %i.yc = fmul float %i.pt, %i.yb
  %i.yd = fmul float %i.pq, %i.xy
  %i.ye = insertelement <2 x float> %i.xq, float %.sroa.5.0.i.i.us, i64 0
  %i.yf = fmul <2 x float> %i.ye, %i.vt
  %i.yg = fmul float %.sroa.09.4.vec.extract13.i.us, %i.vx
  %i.yh = insertelement <2 x float> %i.xk, float %i.pw, i64 0
  %i.yi = fmul <2 x float> %i.yh, %i.vt
  %i.yj = insertelement <2 x float> poison, float %i.pt, i64 0
  %i.yk = insertelement <2 x float> %i.yj, float %.sroa.5.0.i.i.us, i64 1
  %i.yl = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ym = insertelement <2 x float> %i.yl, float %i.vs, i64 1 ; 2 uses
  %i.yn = fmul <2 x float> %i.yk, %i.ym
  %i.yo = insertelement <2 x float> %i.xk, float %i.pt, i64 1
  %i.yp = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yq = fmul <2 x float> %i.yo, %i.yp
  %i.yr = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ys = fmul <2 x float> %i.xq, %i.yr
  %i.yt = fmul float %i.pw, %i.vs
  %i.yu = fsub <2 x float> %i.xm, %i.xp           ; 7 uses
  %i.yv = fsub float %i.xz, %i.ya                 ; 4 uses
  %i.yw = fsub <2 x float> %i.xt, %i.xx           ; 5 uses
  %i.yx = fsub float %i.yc, %i.yd                 ; 4 uses
  %i.yy = fsub <2 x float> %i.yi, %i.yn           ; 5 uses
  %i.yz = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.za = insertelement <2 x float> %i.yz, float %i.yt, i64 1
  %i.zb = fsub <2 x float> %i.yf, %i.za           ; 5 uses
  %i.zc = fsub <2 x float> %i.yq, %i.ys           ; 5 uses
  %i.zd = extractelement <2 x float> %i.yw, i64 0
  %i.ze = extractelement <2 x float> %i.yu, i64 0
  %i.zf = shufflevector <2 x float> %i.yw, <2 x float> %i.yu, <2 x i32> <i32 0, i32 3>
  %i.zg = fmul <2 x float> %i.gx, %i.zf
  %i.zh = shufflevector <2 x float> %i.yu, <2 x float> %i.yw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.zi = fmul <2 x float> %i.gy, %i.zh
  %i.zj = fadd <2 x float> %i.zg, %i.zi
  %i.zk = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zl = fmul <2 x float> %i.gw, %i.zk
  %i.zm = fadd <2 x float> %i.zl, %i.zj
  %i.zn = fmul <2 x float> %i.zh, %i.zm           ; 2 uses
  %i.zo = fmul float %.sroa.15959.0.us, %i.yv
  %i.zp = extractelement <2 x float> %i.yw, i64 1 ; 3 uses
  %i.zq = fmul float %.sroa.27992.0.us, %i.zp
  %i.zr = fadd float %i.zo, %i.zq
  %i.zs = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zt = insertelement <2 x float> %i.zs, float %i.yv, i64 1
  %i.zu = fmul <2 x float> %i.nj, %i.zt
  %i.zv = fmul <2 x float> %i.nl, %i.yw
  %i.zw = fadd <2 x float> %i.zu, %i.zv
  %i.zx = insertelement <2 x float> %i.yu, float %i.yx, i64 1
  %i.zy = fmul <2 x float> %i.nh, %i.zx
  %i.zz = fadd <2 x float> %i.zy, %i.zw           ; 2 uses
  %i.aaa = fmul float %i.jc, %i.yv
  %i.aab = fmul float %i.je, %i.zp
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = fmul float %i.na, %i.yx
  %i.aae = fadd float %i.aad, %i.aac              ; 2 uses
  %i.aaf = fmul float %.sroa.391025.0.us, %i.yx
  %i.aag = fadd float %i.aaf, %i.zr               ; 2 uses
  %i.aah = extractelement <2 x float> %i.zz, i64 1
  %i.aai = fmul float %i.yv, %i.aah
  %i.aaj = fmul float %i.zp, %i.aae
  %i.aak = fadd float %i.aai, %i.aaj
  %i.aal = fmul float %i.yx, %i.aag
  %i.aam = fadd float %i.aal, %i.aak
  %i.aan = fadd float %i.mz, %i.aam
  %i.aao = fmul <2 x float> %i.ip, %i.yy
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aaq = fmul <2 x float> %i.ip, %i.zb
  %i.aar = fadd <2 x float> %i.aaq, %i.aap
  %i.aas = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aat = fmul <2 x float> %i.io, %i.yy
  %i.aau = shufflevector <2 x float> %i.aat, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aav = fmul <2 x float> %i.ne, %i.zb
  %i.aaw = fadd <2 x float> %i.aav, %i.aau
  %i.aax = fmul <2 x float> %i.nd, %i.zc
  %i.aay = fadd <2 x float> %i.aax, %i.aaw        ; 2 uses
  %i.aaz = fmul <2 x float> %i.in, %i.aas
  %i.aba = fmul <2 x float> %i.io, %i.zb
  %i.abb = fadd <2 x float> %i.aba, %i.aaz
  %i.abc = fmul <2 x float> %i.im, %i.zc
  %i.abd = fadd <2 x float> %i.abc, %i.abb        ; 2 uses
  %i.abe = fmul <2 x float> %i.nc, %i.zc
  %i.abf = fadd <2 x float> %i.abe, %i.aar        ; 2 uses
  %shift14084 = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14085 = fmul <2 x float> %i.yy, %shift14084
  %foldExtExtBinop14087 = fmul <2 x float> %i.zb, %i.abd
  %shift14089 = shufflevector <2 x float> %foldExtExtBinop14087, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14090 = fadd <2 x float> %foldExtExtBinop14085, %shift14089
  %foldExtExtBinop14092 = fmul <2 x float> %i.zc, %i.abf
  %shift14094 = shufflevector <2 x float> %foldExtExtBinop14092, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14095 = fadd <2 x float> %shift14094, %foldExtExtBinop14090
  %i.abg = extractelement <2 x float> %foldExtExtBinop14095, i64 0
  %i.abh = fadd float %i.abg, %i.aan              ; 2 uses
  %i.abi = fmul <2 x float> %i.yu, %i.zz
  %i.abj = fmul float %i.zd, %i.aae
  %i.abk = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abl = fadd <2 x float> %i.zn, %i.abk
  %i.abm = insertelement <2 x float> %i.abl, float %i.abj, i64 1
  %i.abn = fadd <2 x float> %i.abi, %i.abm
  %i.abo = fmul float %i.ze, %i.aag
  %i.abp = insertelement <2 x float> %i.nf, float %i.abo, i64 1
  %i.abq = fadd <2 x float> %i.abp, %i.abn
  %i.abr = shufflevector <2 x float> %i.yy, <2 x float> %i.zb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.abs = fmul <2 x float> %i.abr, %i.aay
  %i.abt = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abu = fmul <2 x float> %i.abt, %i.abd
  %i.abv = fadd <2 x float> %i.abu, %i.abs
  %i.abw = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abx = fmul <2 x float> %i.abw, %i.abf
  %i.aby = fadd <2 x float> %i.abx, %i.abv
  %i.abz = fadd <2 x float> %i.aby, %i.abq        ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.on, i64 264
  %i.acb = insertelement <2 x float> %i.abz, float %i.abh, i64 0
  %i.acc = fmul <2 x float> %i.abz, %i.acb        ; 2 uses
  %shift14097 = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14098 = fsub <2 x float> %i.acc, %shift14097
  %i.acd = extractelement <2 x float> %foldExtExtBinop14098, i64 0 ; 2 uses
  %i.ace = tail call float @llvm.fabs.f32(float %i.acd)
  %i.acf = fcmp ogt float %i.ace, f0x057A0000
  br i1 %i.acf, label %bb.bl, label %b3Invert2.exit.us

bb.bl:                                            ; preds = %._crit_edge4860.us
  %i.acg = fdiv float 1.000000e+00, %i.acd        ; 3 uses
  %i.ach = fmul float %i.abh, %i.acg
  %i.aci = fneg float %i.acg
  %i.acj = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.ack = insertelement <2 x float> %i.acj, float %i.aci, i64 1
  %i.acl = fmul <2 x float> %i.abz, %i.ack        ; 2 uses
  %i.acm = insertelement <2 x float> %i.acl, float %i.ach, i64 0
  %i.acn = shufflevector <2 x float> %i.acl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b3Invert2.exit.us

b3Invert2.exit.us:                                ; preds = %bb.bl, %._crit_edge4860.us
  %.sroa.5.0.i805.us = phi <2 x float> [ %i.acn, %bb.bl ], [ zeroinitializer, %._crit_edge4860.us ]
  %.sroa.0.0.i.us = phi <2 x float> [ %i.acm, %bb.bl ], [ zeroinitializer, %._crit_edge4860.us ]
  store <2 x float> %.sroa.0.0.i.us, ptr %i.aca, align 4, !tbaa !107
  %.sroa.426.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 272
  store <2 x float> %.sroa.5.0.i805.us, ptr %.sroa.426.0..sroa_idx.us, align 4, !tbaa !107
  %i.aco = getelementptr inbounds nuw i8, ptr %i.on, i64 280
  %.sroa.224.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oe, i64 248 ; 2 uses
  %.sroa.224.0.copyload.us = load float, ptr %.sroa.224.0..sroa_idx.us, align 4
  %i.acp = fmul float %.sroa.5.0.i.i.us, %.sroa.224.0.copyload.us
  %i.acq = getelementptr inbounds nuw i8, ptr %i.oe, i64 240 ; 2 uses
  %.sroa.023.0.copyload.us = load <2 x float>, ptr %i.acq, align 4 ; 2 uses
  %foldExtExtBinop14100 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.023.0.copyload.us
  %foldExtExtBinop14102 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.023.0.copyload.us
  %shift14104 = shufflevector <2 x float> %foldExtExtBinop14102, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14105 = fadd <2 x float> %foldExtExtBinop14100, %shift14104
  %i.acr = extractelement <2 x float> %foldExtExtBinop14105, i64 0
  %i.acs = fadd float %i.acp, %i.acr
  %i.act = fmul float %i.v, %i.acs
  store float %i.act, ptr %i.aco, align 4, !tbaa !139
  %i.acu = getelementptr inbounds nuw i8, ptr %i.on, i64 284
  %.sroa.220.0.copyload.us = load float, ptr %.sroa.224.0..sroa_idx.us, align 4
  %i.acv = fmul float %i.pw, %.sroa.220.0.copyload.us
  %.sroa.019.0.copyload.us = load <2 x float>, ptr %i.acq, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i812.us = extractelement <2 x float> %.sroa.019.0.copyload.us, i64 0
  %i.acw = fmul float %i.pq, %.sroa.03.0.vec.extract.i812.us
  %.sroa.03.4.vec.extract.i814.us = extractelement <2 x float> %.sroa.019.0.copyload.us, i64 1
  %i.acx = fmul float %i.pt, %.sroa.03.4.vec.extract.i814.us
  %i.acy = fadd float %i.acw, %i.acx
  %i.acz = fadd float %i.acv, %i.acy
  %i.ada = fmul float %i.v, %i.acz
  store float %i.ada, ptr %i.acu, align 4, !tbaa !140
  %i.adb = getelementptr inbounds nuw i8, ptr %i.on, i64 256
  %i.adc = fmul <2 x float> %i.jp, %.sroa.0379.0.copyload.us ; 2 uses
  %shift14107 = shufflevector <2 x float> %i.adc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14108 = fadd <2 x float> %i.adc, %shift14107
  %i.add = extractelement <2 x float> %foldExtExtBinop14108, i64 0
  %i.ade = fmul float %i.ke, %.sroa.12.0.copyload.us
  %i.adf = fadd float %i.ade, %i.add
  %i.adg = fmul float %.sroa.12.0.copyload.us, %i.adf
  %i.adh = fmul <2 x float> %i.jn, %.sroa.0379.0.copyload.us
  %i.adi = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.adj = fmul <2 x float> %i.jo, %i.adi
  %i.adk = insertelement <2 x float> poison, float %.sroa.12.0.copyload.us, i64 0
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adm = fmul <2 x float> %i.jq, %i.adl
  %i.adn = fadd <2 x float> %i.adj, %i.adh
  %i.ado = fadd <2 x float> %i.adm, %i.adn
  %i.adp = fmul <2 x float> %.sroa.0379.0.copyload.us, %i.ado ; 2 uses
  %shift14110 = shufflevector <2 x float> %i.adp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14111 = fadd <2 x float> %i.adp, %shift14110
  %i.adq = extractelement <2 x float> %foldExtExtBinop14111, i64 0
  %i.adr = fadd float %i.adg, %i.adq              ; 2 uses
  %i.ads = fcmp ogt float %i.adr, 0.000000e+00
  %i.adt = fdiv float 1.000000e+00, %i.adr
  %i.adu = select i1 %i.ads, float %i.adt, float 0.000000e+00
  store float %i.adu, ptr %i.adb, align 4, !tbaa !141
  %i.adv = getelementptr inbounds nuw i8, ptr %i.oe, i64 236
  %i.adw = getelementptr inbounds nuw i8, ptr %i.on, i64 260
  %i.adx = load float, ptr %i.adv, align 4, !tbaa !142
  %i.ady = fmul float %i.v, %i.adx
  store float %i.ady, ptr %i.adw, align 4, !tbaa !143
  %i.adz = getelementptr inbounds nuw i8, ptr %i.on, i64 288
  %i.aea = getelementptr inbounds nuw i8, ptr %i.oe, i64 252
  %.sroa.01.0.copyload.us = load <2 x float>, ptr %i.aea, align 4
  %.sroa.22.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oe, i64 260
  %.sroa.22.0.copyload.us = load float, ptr %.sroa.22.0..sroa_idx.us, align 4
  %i.aeb = fmul <2 x float> %i.bv, %.sroa.01.0.copyload.us
  %i.aec = fmul float %i.v, %.sroa.22.0.copyload.us
  store <2 x float> %i.aeb, ptr %i.adz, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.on, i64 296
  store float %i.aec, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !107
  %indvars.iv.next10067 = add nuw nsw i64 %indvars.iv10066, 1 ; 2 uses
  %exitcond10070.not = icmp eq i64 %indvars.iv.next10067, %wide.trip.count10069
  br i1 %exitcond10070.not, label %._crit_edge4864.us, label %.lr.ph4863.split.us, !llvm.loop !186

._crit_edge4864.us:                               ; preds = %b3Invert2.exit.us, %bb.av
  %indvars.iv.next10072 = add nsw i64 %indvars.iv10071, 1 ; 2 uses
  %exitcond10074.not = icmp eq i64 %indvars.iv.next10072, %i.do
  br i1 %exitcond10074.not, label %.loopexit, label %.lr.ph4867.split.split.us, !llvm.loop !187

.split4870.us:                                    ; preds = %.lr.ph4867.split.split.us, %.lr.ph4867.split.us
  %.us-phi4872 = phi i64 [ %i.cz, %.lr.ph4867.split.us ], [ %i.dr, %.lr.ph4867.split.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @19, i64 %i.bl, i64 %.us-phi4872) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4874.us:                                    ; preds = %bb.ab, %bb.z
end_hunk_0
