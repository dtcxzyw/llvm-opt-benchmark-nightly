Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@process:bb.a
  %niter292.ncmp.1.not = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1.not, label %precondition_v2.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

precondition_v2.exit.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %i.mf = and i64 %i.jz, 4
  %lcmp.mod289.not.not = icmp eq i64 %i.mf, 0
  br i1 %lcmp.mod289.not.not, label %.lr.ph.i.i.i.epil.preheader, label %precondition_v2.exit.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %precondition_v2.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.04247.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.me, %precondition_v2.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i64 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i.epil.init ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load <2 x float>, ptr %i.mh, align 4, !tbaa !16
  %i.mj = fdiv reassoc nsz arcp contract afn <2 x float> %i.mi, %i.jy
  %i.mk = fadd reassoc nsz arcp contract afn <2 x float> %i.mj, %i.jw ; 2 uses
  %i.ml = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.mk, zeroinitializer
  %i.mm = select <2 x i1> %i.ml, <2 x float> %i.mk, <2 x float> zeroinitializer ; 2 uses
  %i.mn = extractelement <2 x float> %i.mm, i64 0
  %i.mo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mn, float %i.jm)
  %i.mp = load <2 x float>, ptr %i.mg, align 4, !tbaa !16
  %i.mq = fdiv reassoc nsz arcp contract afn <2 x float> %i.mp, %i.fk
  %i.mr = fadd reassoc nsz arcp contract afn <2 x float> %i.mq, %i.jw ; 2 uses
  %i.ms = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.mr, zeroinitializer
  %i.mt = select <2 x i1> %i.ms, <2 x float> %i.mr, <2 x float> zeroinitializer
  %i.mu = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.mt, <2 x float> %i.jk)
  %i.mv = insertelement <4 x float> poison, float %i.mo, i64 2
  %i.mw = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.my = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, splat (float 2.000000e+00)
  %i.nb = fdiv reassoc nsz arcp contract afn <4 x float> %i.na, %i.ju
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i.epil.init
  store <4 x float> %i.nb, ptr %i.nc, align 16, !tbaa !42, !alias.scope !204, !nontemporal !207
  br label %precondition_v2.exit.i.i

precondition_v2.exit.i.i:                         ; preds = %.lr.ph.i.i.i.epil.preheader, %precondition_v2.exit.i.i.loopexit.unr-lcssa, %bb.m
  call void @llvm.x86.sse.sfence()
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !188
  br label %nlmeans_precondition.exit.i

nlmeans_precondition.exit.i:                      ; preds = %.preheader.i62.i.i, %middle.block253, %precondition_v2.exit.i.i, %bb.l
  %i.nd = phi ptr [ %.pre.i, %precondition_v2.exit.i.i ], [ %i.dh, %bb.l ], [ %i.dh, %middle.block253 ], [ %i.dh, %.preheader.i62.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_wavelets.boost, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store float %.0.i.i, ptr %6, align 8, !tbaa !208
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.am, ptr %i.ne, align 4, !tbaa !210
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.nf, align 8, !tbaa !16
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.dg, ptr %i.ng, align 8, !tbaa !211
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.0.i43.i, ptr %i.nh, align 4, !tbaa !212
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.aq, ptr %i.ni, align 8, !tbaa !213
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %.039.i.i, ptr %i.nj, align 4, !tbaa !214
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.nk, align 8, !tbaa !215
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 0, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.u, ptr %i.nm, align 8, !tbaa !216
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nn, i8 0, i64 24, i1 false)
  call void @nlmeans_denoise(ptr noundef %i.nd, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6) #18
  %i.no = load ptr, ptr %i.p, align 8, !tbaa !188
  call void @free(ptr noundef %i.no) #18
  %i.np = load i32, ptr %i.fy, align 4, !tbaa !192
  %.not.i45.i = icmp eq i32 %i.np, 0
  %i.nq = load i32, ptr %i.ga, align 4, !tbaa !193 ; 2 uses
  %i.nr = load i32, ptr %i.gc, align 4, !tbaa !194 ; 2 uses
  br i1 %.not.i45.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %nlmeans_precondition.exit.i
  call fastcc void @backtransform(ptr noundef %3, i32 noundef %i.nq, i32 noundef %i.nr, ptr noundef nonnull readonly %i.s, ptr noundef nonnull readonly %i.t)
  br label %nlmeans_backtransform.exit.i

bb.o:                                             ; preds = %nlmeans_precondition.exit.i
  %i.ns = load float, ptr %i.es, align 4, !tbaa !16
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, %i.fx
  %i.nu = load float, ptr %i.et, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.nw = load float, ptr %i.nv, align 8, !tbaa !217
  %i.nx = fpext reassoc nsz arcp contract afn float %i.nw to double
  %i.ny = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.am)
  %i.nz = fpext reassoc nsz arcp contract afn float %i.ny to double
  %i.oa = fmul reassoc nsz arcp contract afn double %i.nz, 5.000000e-01
  %i.ob = fsub reassoc nsz arcp contract afn double %i.nx, %i.oa
  %i.oc = fptrunc reassoc nsz arcp contract afn double %i.ob to float
  call fastcc void @backtransform_v2(ptr noundef %3, i32 noundef %i.nq, i32 noundef %i.nr, float noundef %i.nt, ptr noundef nonnull readonly %i.r, float noundef %i.nu, float noundef %i.oc, ptr noundef nonnull readonly %i.q)
  br label %nlmeans_backtransform.exit.i

nlmeans_backtransform.exit.i:                     ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %bb.p

bb.p:                                             ; preds = %nlmeans_backtransform.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %process_nlmeans.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oe = load float, ptr %i.od, align 4, !tbaa !124
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.og = load float, ptr %i.of, align 8, !tbaa !125 ; 3 uses
  %i.oh = fdiv reassoc nsz arcp contract afn float %i.oe, %i.og
  %i.oi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oh, float 1.000000e+00) ; 11 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !218
  %i.ol = sitofp reassoc nsz arcp contract afn i32 %i.ok to float
  %i.om = fmul reassoc nsz arcp contract afn float %i.og, %i.ol ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.oo = load i32, ptr %i.on, align 16, !tbaa !219
  %i.op = sitofp reassoc nsz arcp contract afn i32 %i.oo to float
  %i.oq = fmul reassoc nsz arcp contract afn float %i.og, %i.op ; 2 uses
  %i.or = fcmp reassoc nsz arcp contract afn ogt float %i.om, %i.oq
  %..i = select reassoc nsz arcp contract afn i1 %i.or, float %i.om, float %i.oq ; 2 uses
  %i.os = fmul reassoc nsz arcp contract afn float %..i, 2.000000e-01
  %i.ot = fcmp reassoc nsz arcp contract afn ogt float %i.os, 2.570000e+02
  %i.ou = fmul reassoc nsz arcp contract afn float %..i, 1.000000e-01
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, -5.000000e-01
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ov)
  %i.ox = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ow
  %i.oy = select i1 %i.ot, float f0x3E124925, float %i.ox ; 7 uses
  %.reass.i = fdiv reassoc nnan nsz arcp contract afn float 2.500000e+00, %i.oi
  %i.oz = fadd reassoc nnan nsz arcp contract afn float %.reass.i, -5.000000e-01
  %i.pa = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.oz)
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, -5.000000e-01
  %i.pc = fmul reassoc nsz arcp contract afn float %i.oy, %i.pb
  %i.pd = fcmp reassoc nsz arcp contract afn ogt float %i.pc, 1.000000e+00 ; 2 uses
  br i1 %i.pd, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass.1.i = fdiv reassoc nnan nsz arcp contract afn float 4.500000e+00, %i.oi
  %i.pe = fadd reassoc nnan nsz arcp contract afn float %.reass.1.i, -5.000000e-01
  %i.pf = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pe)
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, -5.000000e-01
  %i.ph = fmul reassoc nsz arcp contract afn float %i.oy, %i.pg
  %i.pi = fcmp reassoc nsz arcp contract afn ogt float %i.ph, 1.000000e+00
  br i1 %i.pi, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.reass.2.i = fdiv reassoc nnan nsz arcp contract afn float 8.500000e+00, %i.oi
  %i.pj = fadd reassoc nnan nsz arcp contract afn float %.reass.2.i, -5.000000e-01
  %i.pk = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pj)
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, -5.000000e-01
  %i.pm = fmul reassoc nsz arcp contract afn float %i.oy, %i.pl
  %i.pn = fcmp reassoc nsz arcp contract afn ogt float %i.pm, 1.000000e+00
  br i1 %i.pn, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass.3.i = fdiv reassoc nnan nsz arcp contract afn float 1.650000e+01, %i.oi
  %i.po = fadd reassoc nnan nsz arcp contract afn float %.reass.3.i, -5.000000e-01
  %i.pp = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.po)
  %i.pq = fadd reassoc nsz arcp contract afn float %i.pp, -5.000000e-01
  %i.pr = fmul reassoc nsz arcp contract afn float %i.oy, %i.pq
  %i.ps = fcmp reassoc nsz arcp contract afn ogt float %i.pr, 1.000000e+00
  br i1 %i.ps, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.reass.4.i = fdiv reassoc nnan nsz arcp contract afn float 3.250000e+01, %i.oi
  %i.pt = fadd reassoc nnan nsz arcp contract afn float %.reass.4.i, -5.000000e-01
  %i.pu = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pt)
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pu, -5.000000e-01
  %i.pw = fmul reassoc nsz arcp contract afn float %i.oy, %i.pv
  %i.px = fcmp reassoc nsz arcp contract afn ogt float %i.pw, 1.000000e+00
  br i1 %i.px, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.reass.5.i = fdiv reassoc nnan nsz arcp contract afn float 6.450000e+01, %i.oi
  %i.py = fadd reassoc nnan nsz arcp contract afn float %.reass.5.i, -5.000000e-01
  %i.pz = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.py)
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pz, -5.000000e-01
  %i.qb = fmul reassoc nsz arcp contract afn float %i.oy, %i.qa
  %i.qc = fcmp reassoc nsz arcp contract afn ogt float %i.qb, 1.000000e+00
  br i1 %i.qc, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.reass.6.i = fdiv reassoc nnan nsz arcp contract afn float 1.285000e+02, %i.oi
  %i.qd = fadd reassoc nnan nsz arcp contract afn float %.reass.6.i, -5.000000e-01
  %i.qe = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.qd)
  %i.qf = fadd reassoc nsz arcp contract afn float %i.qe, -5.000000e-01
  %i.qg = fmul reassoc nsz arcp contract afn float %i.oy, %i.qf
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, 1.000000e+00
  br i1 %i.qh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0178.lcssa.i = phi i32 [ 0, %bb.q ], [ 7, %bb.x ], [ 1, %bb.r ], [ 6, %bb.w ], [ 2, %bb.s ], [ 4, %bb.u ], [ 3, %bb.t ], [ 5, %bb.v ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !193 ; 9 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !194 ; 9 uses
  %i.qm = sext i32 %i.qj to i64                   ; 6 uses
  %i.qn = sext i32 %i.ql to i64                   ; 6 uses
  %i.qo = mul nsw i64 %i.qn, %i.qm                ; 4 uses
  %i.qp = shl nuw nsw i32 1, %.0178.lcssa.i       ; 2 uses
  %i.qq = icmp slt i32 %i.qj, %i.qp
  %i.qr = icmp slt i32 %i.ql, %i.qp
  %or.cond.i = select i1 %i.qq, i1 true, i1 %i.qr
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qs = shl i64 %i.qo, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %2, i64 %i.qs, i1 false)
  br label %process_nlmeans.exit

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr null, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store ptr null, ptr %i.g, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr null, ptr %i.h, align 8, !tbaa !188
  %i.qt = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %5, i32 noundef 4, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null) #18
  %.not.i23 = icmp eq i32 %i.qt, 0
  br i1 %.not.i23, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !133
  %i.qw = sext i32 %i.qv to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.qw, ptr noundef nonnull %4, ptr noundef %5) #18
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.qx = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.val.i24 = load ptr, ptr %i.qx, align 8, !tbaa !138 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.val.i24, i64 256
  %i.qz = load <2 x float>, ptr %i.qy, align 16, !tbaa !16 ; 3 uses
  %i.ra = extractelement <2 x float> %i.qz, i64 1 ; 2 uses
  %i.rb = extractelement <2 x float> %i.qz, i64 0 ; 2 uses
  %i.rc = fadd reassoc nsz arcp contract afn float %i.ra, %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %.val.i24, i64 264
  %i.re = load float, ptr %i.rd, align 8, !tbaa !16 ; 2 uses
  %i.rf = fadd reassoc nsz arcp contract afn float %i.rc, %i.re
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, f0x3EAAAAAB ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !186
  %.not.i.i25 = icmp eq i32 %i.ri, 0
  br i1 %.not.i.i25, label %.preheader.i.i, label %bb.ad

.preheader.i.i:                                   ; preds = %bb.ac
  %i.rj = getelementptr inbounds nuw i8, ptr %.val.i24, i64 272
  %i.rk = getelementptr inbounds nuw i8, ptr %.val.i24, i64 276
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !16
  %i.rm = load <2 x float>, ptr %i.rj, align 16, !tbaa !16
  %i.rn = fmul reassoc nsz arcp contract afn <2 x float> %i.rm, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i24, i64 280
  %i.rp = load <2 x float>, ptr %i.ro, align 8, !tbaa !16
  %i.rq = fmul reassoc nsz arcp contract afn <2 x float> %i.rp, <float 2.000000e+00, float 0.000000e+00>
  %i.rr = extractelement <2 x float> %i.rn, i64 0
  br label %compute_wb_factors.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.rs = fcmp reassoc nsz arcp contract afn une float %i.rg, 0.000000e+00
  br i1 %i.rs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.rt = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !189
  %.not31.i.i = icmp eq i32 %i.ru, 0
  %i.rv = insertelement <2 x float> poison, float %i.re, i64 0
  %i.rw = insertelement <2 x float> %i.rv, float %i.rg, i64 1
  br i1 %.not31.i.i, label %bb.af, label %compute_wb_factors.exit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.rx = fcmp reassoc nsz arcp contract afn oeq float %i.rg, 0.000000e+00
  %i.ry = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.rx, label %.preheader1.preheader.i.i, label %compute_wb_factors.exit.i

.preheader1.preheader.i.i:                        ; preds = %bb.af
  br label %compute_wb_factors.exit.i

compute_wb_factors.exit.i:                        ; preds = %.preheader1.preheader.i.i, %bb.af, %bb.ae, %.preheader.i.i
  %i.sa = phi float [ %i.rl, %.preheader.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i ], [ %i.rg, %bb.af ], [ %i.ra, %bb.ae ] ; 4 uses
  %i.sb = phi float [ %i.rr, %.preheader.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i ], [ %i.rg, %bb.af ], [ %i.rb, %bb.ae ] ; 4 uses
  %i.sc = phi <2 x float> [ %i.rn, %.preheader.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i ], [ %i.rz, %bb.af ], [ %i.qz, %bb.ae ] ; 2 uses
  %i.sd = phi <2 x float> [ %i.rq, %.preheader.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i ], [ %i.rz, %bb.af ], [ %i.rw, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.sf = load float, ptr %i.se, align 4, !tbaa !190 ; 2 uses
  %i.sg = fpext reassoc nsz arcp contract afn float %i.sf to double ; 2 uses
  %i.sh = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sj = fdiv reassoc nsz arcp contract afn <2 x float> %i.si, %i.sc
  %i.sk = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.sj)
  %i.sl = fpext <2 x float> %i.sk to <2 x double>
  %i.sm = fmul reassoc nsz arcp contract afn <2 x double> %i.sl, splat (double 1.000000e-01)
  %i.sn = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sp = fadd reassoc nsz arcp contract afn <2 x double> %i.sm, %i.so ; 2 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.sp, zeroinitializer
  %i.sr = fptrunc <2 x double> %i.sp to <2 x float>
  %i.ss = select <2 x i1> %i.sq, <2 x float> %i.sr, <2 x float> zeroinitializer ; 5 uses
  %i.st = extractelement <2 x float> %i.sd, i64 0 ; 2 uses
  %i.su = fdiv reassoc nsz arcp contract afn float %i.oi, %i.st
  %i.sv = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.su)
  %i.sw = fpext reassoc nsz arcp contract afn float %i.sv to double
  %i.sx = fmul reassoc nsz arcp contract afn double %i.sw, 1.000000e-01
  %i.sy = fadd reassoc nsz arcp contract afn double %i.sx, %i.sg ; 2 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt double %i.sy, 0.000000e+00
  %i.ta = fptrunc reassoc nsz arcp contract afn double %i.sy to float
  %i.tb = select i1 %i.sz, float %i.ta, float 0.000000e+00 ; 5 uses
  %i.tc = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.td = insertelement <4 x float> %i.tc, float 0.000000e+00, i64 3
  %i.te = insertelement <4 x float> %i.td, float %i.tb, i64 2 ; 2 uses
  store <4 x float> %i.te, ptr %i.j, align 16, !tbaa !16
  %i.tf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sf
  %i.tg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.tf) ; 3 uses
  %i.th = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sb
  %i.ti = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sa
  %i.tj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.st
  %i.tk = fadd reassoc nsz arcp contract afn float %i.ti, %i.tj
  %i.tl = fadd reassoc nsz arcp contract afn float %i.tk, %i.th
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, f0x3FDDB3D7 ; 2 uses
  %i.tn = fmul reassoc nsz arcp contract afn float %i.sb, %i.sb
  %foldExtExtBinop265 = fmul reassoc nsz arcp contract afn <2 x float> %i.sd, %i.sd
  %i.to = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.tp = fmul reassoc nsz arcp contract afn float %i.sa, %i.sa ; 2 uses
  %i.tq = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.tr = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ts = insertelement <2 x float> poison, float %i.sa, i64 0
  %i.tt = insertelement <2 x float> %i.ts, float %i.sb, i64 1
  %i.tu = fdiv reassoc nsz arcp contract afn <2 x float> %i.tr, %i.tt ; 6 uses
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tn, %i.to ; 3 uses
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tp, 2.500000e-01
  %reass.mul.i.i = fmul reassoc nsz arcp contract afn float %i.tv, 6.250000e-02
  %i.tx = fmul reassoc nsz arcp contract afn float %i.tv, 2.500000e-01
  %i.ty = fadd reassoc nsz arcp contract afn float %reass.mul.i.i, %i.tw
  %i.tz = insertelement <2 x float> poison, float %i.ty, i64 0
  %i.ua = insertelement <2 x float> %i.tz, float %i.tx, i64 1
  %i.ub = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ua) ; 3 uses
  %i.uc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.tm, i64 1
  %i.ud = shufflevector <2 x float> %i.ub, <2 x float> %i.sd, <2 x i32> <i32 1, i32 2>
  %i.ue = fdiv reassoc nsz arcp contract afn <2 x float> %i.uc, %i.ud ; 6 uses
  %i.uf = fdiv reassoc nsz arcp contract afn <2 x float> <float 2.500000e-01, float 0.000000e+00>, %i.ub ; 7 uses
  %i.ug = fdiv reassoc nsz arcp contract afn <2 x float> <float -5.000000e-01, float 5.000000e-01>, %i.ub ; 7 uses
  %i.uh = extractelement <2 x float> %i.uf, i64 0 ; 3 uses
  %shift267 = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop268 = fmul reassoc nsz arcp contract afn <2 x float> %i.uf, %shift267 ; 2 uses
  %i.ui = extractelement <2 x float> %foldExtExtBinop268, i64 0
  %i.uj = extractelement <2 x float> %i.ug, i64 0 ; 3 uses
  %i.uk = extractelement <2 x float> %i.ue, i64 0 ; 2 uses
  %foldExtExtBinop270 = fmul reassoc nsz arcp contract afn <2 x float> %i.ug, %i.ue
  %foldExtExtBinop272 = fsub reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop268, %foldExtExtBinop270
  %i.ul = extractelement <2 x float> %foldExtExtBinop272, i64 0 ; 4 uses
  %i.um = extractelement <2 x float> %i.ug, i64 1 ; 2 uses
  %i.un = fsub reassoc nsz arcp contract afn float %i.uk, %i.um
  %i.uo = fmul reassoc nsz arcp contract afn float %i.un, %i.uh ; 4 uses
  %i.up = fmul reassoc nsz arcp contract afn float %i.uj, %i.um
  %i.uq = fsub reassoc nsz arcp contract afn float %i.up, %i.ui ; 4 uses
  %i.ur = extractelement <2 x float> %i.tu, i64 1 ; 3 uses
  %i.us = fmul reassoc nsz arcp contract afn float %i.ul, %i.ur
  %i.ut = extractelement <2 x float> %i.tu, i64 0 ; 2 uses
  %i.uu = fmul reassoc nsz arcp contract afn float %i.uo, %i.ut
  %i.uv = extractelement <2 x float> %i.ue, i64 1 ; 4 uses
  %i.uw = fmul reassoc nsz arcp contract afn float %i.uq, %i.uv
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, %i.uu
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, %i.us ; 2 uses
  %i.uz = fcmp reassoc nsz arcp contract afn oeq float %i.uy, 0.000000e+00
  br i1 %i.uz, label %bb.ag, label %invert_matrix.exit218.i

invert_matrix.exit218.i:                          ; preds = %compute_wb_factors.exit.i
  %i.va = fmul reassoc nsz arcp contract afn <2 x float> %i.uf, %i.tu ; 2 uses
  %i.vb = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vc = fmul reassoc nsz arcp contract afn <2 x float> %i.ug, %i.vb
  %i.vd = fsub reassoc nsz arcp contract afn <2 x float> %i.va, %i.vc
  %i.ve = fsub reassoc nsz arcp contract afn float %i.ur, %i.uv
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ve, %i.uh
  %i.vg = fmul reassoc nsz arcp contract afn float %i.uj, %i.uv
  %i.vh = extractelement <2 x float> %i.va, i64 0
  %i.vi = fsub reassoc nsz arcp contract afn float %i.vg, %i.vh
  %i.vj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.uy ; 5 uses
  %i.vk = fmul reassoc nsz arcp contract afn float %i.vj, %i.ul
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vj, %i.vi
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vj, %i.uo
  %i.vn = shufflevector <2 x float> %i.tu, <2 x float> %i.ug, <2 x i32> <i32 0, i32 3>
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.ue, %i.vn
  %i.vp = shufflevector <2 x float> %i.tu, <2 x float> %i.uf, <2 x i32> <i32 3, i32 1>
  %i.vq = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vr = fmul reassoc nsz arcp contract afn <2 x float> %i.vp, %i.vq
  %i.vs = fsub reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vr
  %i.vt = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fmul reassoc nsz arcp contract afn <2 x float> %i.vu, %i.vs
  %i.vw = insertelement <4 x float> poison, float %i.vj, i64 0
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.acu = load <2 x float>, ptr %i.act, align 4, !tbaa !16
  %i.acv = fmul reassoc nsz arcp contract afn <2 x float> %i.acu, %i.acm
  %i.acw = fadd reassoc nsz arcp contract afn <2 x float> %i.acv, %i.ach ; 2 uses
  %i.acx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acw, zeroinitializer
  %i.acy = select <2 x i1> %i.acx, <2 x float> %i.acw, <2 x float> zeroinitializer ; 2 uses
  %i.acz = extractelement <2 x float> %i.acy, i64 0
  %i.ada = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acz, float %i.abx)
  %i.adb = load <2 x float>, ptr %i.acs, align 4, !tbaa !16
  %i.adc = fmul reassoc nsz arcp contract afn <2 x float> %i.adb, %i.acn
  %i.add = fadd reassoc nsz arcp contract afn <2 x float> %i.adc, %i.ach ; 2 uses
  %i.ade = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.add, zeroinitializer
  %i.adf = select <2 x i1> %i.ade, <2 x float> %i.add, <2 x float> zeroinitializer
  %i.adg = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.adf, <2 x float> %i.abv)
  %i.adh = insertelement <4 x float> poison, float %i.ada, i64 2
  %i.adi = shufflevector <2 x float> %i.acy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adj = shufflevector <4 x float> %i.adh, <4 x float> %i.adi, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.adk = shufflevector <2 x float> %i.adg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adl = shufflevector <4 x float> %i.adk, <4 x float> %i.adj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adm = fmul reassoc nsz arcp contract afn <4 x float> %i.adl, splat (float 2.000000e+00)
  %i.adn = fmul reassoc nsz arcp contract afn <4 x float> %i.adm, %i.aco
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.04247.i.i
  store <4 x float> %i.adn, ptr %i.ado, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.adp = or disjoint i64 %.04247.i.i, 4         ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adp ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load <2 x float>, ptr %i.adr, align 4, !tbaa !16
  %i.adt = fmul reassoc nsz arcp contract afn <2 x float> %i.ads, %i.acp
  %i.adu = fadd reassoc nsz arcp contract afn <2 x float> %i.adt, %i.ach ; 2 uses
  %i.adv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adu, zeroinitializer
  %i.adw = select <2 x i1> %i.adv, <2 x float> %i.adu, <2 x float> zeroinitializer ; 2 uses
  %i.adx = extractelement <2 x float> %i.adw, i64 0
  %i.ady = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adx, float %i.abx)
  %i.adz = load <2 x float>, ptr %i.adq, align 4, !tbaa !16
  %i.aea = fmul reassoc nsz arcp contract afn <2 x float> %i.adz, %i.acq
  %i.aeb = fadd reassoc nsz arcp contract afn <2 x float> %i.aea, %i.ach ; 2 uses
  %i.aec = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aeb, zeroinitializer
  %i.aed = select <2 x i1> %i.aec, <2 x float> %i.aeb, <2 x float> zeroinitializer
  %i.aee = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.aed, <2 x float> %i.abv)
  %i.aef = insertelement <4 x float> poison, float %i.ady, i64 2
  %i.aeg = shufflevector <2 x float> %i.adw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aeh = shufflevector <4 x float> %i.aef, <4 x float> %i.aeg, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.aei = shufflevector <2 x float> %i.aee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> %i.aeh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aek = fmul reassoc nsz arcp contract afn <4 x float> %i.aej, splat (float 2.000000e+00)
  %i.ael = fmul reassoc nsz arcp contract afn <4 x float> %i.aek, %i.acr
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %i.adp
  store <4 x float> %i.ael, ptr %i.aem, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.aen = add nuw i64 %.04247.i.i, 8             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %precondition.exit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.al:                                            ; preds = %bb.aj
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %bb.al
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.yf, %i.tg
  %i.aep = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tb
  %i.aeq = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aeo) ; 2 uses
  %i.aer = fmul reassoc nsz arcp contract afn float %i.aeq, %i.aep
  %i.aes = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ss
  %i.aet = insertelement <2 x float> poison, float %i.aeq, i64 0
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aev = fmul reassoc nsz arcp contract afn <2 x float> %i.aeu, %i.aes
  %i.aew = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xv
  %i.aex = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aey = insertelement <2 x float> %i.aex, float %.sroa.1362.0.i, i64 0
  %i.aez = insertelement <2 x float> poison, float %i.aew, i64 0 ; 2 uses
  %i.afa = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afb = insertelement <2 x float> %i.ug, float %.sroa.860.0.i, i64 0
  %i.afc = fmul reassoc nsz arcp contract afn <2 x float> %i.afb, %i.afa
  %i.afd = insertelement <2 x float> %i.uf, float %.sroa.058.0.i, i64 0
  %i.afe = fmul reassoc nsz arcp contract afn <2 x float> %i.afd, %i.afa
  %i.aff = insertelement <2 x float> poison, float %i.ym, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aer
  %i.afi = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aev
  %i.afj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xv
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i205.i
  %.02832.i.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %i.agu, %bb.am ] ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.i.i ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !16
  %i.afn = fadd reassoc nsz arcp contract afn float %i.afm, %i.ym ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt float %i.afn, 0.000000e+00
  %i.afp = select reassoc nsz arcp contract afn i1 %i.afo, float %i.afn, float 0.000000e+00
  %i.afq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afp, float %i.abx)
  %i.afr = fmul reassoc nsz arcp contract afn float %i.afq, 2.000000e+00
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afr, %i.afh ; 3 uses
  %i.aft = load <2 x float>, ptr %i.afk, align 4, !tbaa !16
  %i.afu = fadd reassoc nsz arcp contract afn <2 x float> %i.aft, %i.afg ; 2 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afu, zeroinitializer
  %i.afw = select <2 x i1> %i.afv, <2 x float> %i.afu, <2 x float> zeroinitializer
  %i.afx = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.afw, <2 x float> %i.abv)
  %i.afy = fmul reassoc nsz arcp contract afn <2 x float> %i.afx, splat (float 2.000000e+00)
  %i.afz = fmul reassoc nsz arcp contract afn <2 x float> %i.afy, %i.afi ; 4 uses
  %i.aga = shufflevector <2 x float> %i.afz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agb = fmul reassoc nsz arcp contract afn <2 x float> %i.aga, %i.afc
  %i.agc = fmul reassoc nsz arcp contract afn <2 x float> %i.afz, %i.afe
  %i.agd = fadd reassoc nsz arcp contract afn <2 x float> %i.agc, %i.agb
  %i.age = insertelement <2 x float> poison, float %i.afs, i64 0
  %i.agf = fmul reassoc nsz arcp contract afn <2 x float> %i.age, %i.aez
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = fmul reassoc nsz arcp contract afn <2 x float> %i.agg, %i.aey
  %i.agi = fadd reassoc nsz arcp contract afn <2 x float> %i.agd, %i.agh
  %i.agj = shufflevector <2 x float> %i.agi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agk = extractelement <2 x float> %i.afz, i64 1 ; 2 uses
  %i.agl = fmul reassoc nsz arcp contract afn float %i.uj, %i.agk
  %i.agm = extractelement <2 x float> %i.afz, i64 0 ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afs, %i.agm
  %i.agn = fmul reassoc nsz arcp contract afn float %i.uh, %reass.add
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agn, %i.agl
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.afj
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %i.agj, float %i.agp, i64 2
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agk, %i.agm
  %i.agr = fadd reassoc nsz arcp contract afn float %i.agq, %i.afs
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.ags, i64 3
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.02832.i.i
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.agt, align 16, !tbaa !42, !alias.scope !231, !nontemporal !207
  %i.agu = add nuw i64 %.02832.i.i, 4             ; 2 uses
  %i.agv = icmp ult i64 %i.agu, %i.abz
  br i1 %i.agv, label %bb.am, label %precondition.exit.sink.split.i

precondition.exit.sink.split.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.agw = and i64 %i.aci, 4
  %lcmp.mod.not.not = icmp eq i64 %i.agw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %precondition.exit.sink.split.i

.lr.ph.i.i.epil.preheader:                        ; preds = %precondition.exit.sink.split.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.04247.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.aen, %precondition.exit.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i64 %i.ack to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.epil.init ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load <2 x float>, ptr %i.agy, align 4, !tbaa !16
  %i.aha = fdiv reassoc nsz arcp contract afn <2 x float> %i.agz, %i.yb
  %i.ahb = fadd reassoc nsz arcp contract afn <2 x float> %i.aha, %i.ach ; 2 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ahb, zeroinitializer
  %i.ahd = select <2 x i1> %i.ahc, <2 x float> %i.ahb, <2 x float> zeroinitializer ; 2 uses
  %i.ahe = extractelement <2 x float> %i.ahd, i64 0
  %i.ahf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahe, float %i.abx)
  %i.ahg = load <2 x float>, ptr %i.agx, align 4, !tbaa !16
  %i.ahh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahg, %i.xy
  %i.ahi = fadd reassoc nsz arcp contract afn <2 x float> %i.ahh, %i.ach ; 2 uses
  %i.ahj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ahi, zeroinitializer
  %i.ahk = select <2 x i1> %i.ahj, <2 x float> %i.ahi, <2 x float> zeroinitializer
  %i.ahl = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ahk, <2 x float> %i.abv)
  %i.ahm = insertelement <4 x float> poison, float %i.ahf, i64 2
  %i.ahn = shufflevector <2 x float> %i.ahd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aho = shufflevector <4 x float> %i.ahm, <4 x float> %i.ahn, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ahp = shufflevector <2 x float> %i.ahl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahq = shufflevector <4 x float> %i.ahp, <4 x float> %i.aho, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahr = fmul reassoc nsz arcp contract afn <4 x float> %i.ahq, splat (float 2.000000e+00)
  %i.ahs = fdiv reassoc nsz arcp contract afn <4 x float> %i.ahr, %i.acf
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.04247.i.i.epil.init
  store <4 x float> %i.ahs, ptr %i.aht, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  br label %precondition.exit.sink.split.i

precondition.exit.sink.split.i:                   ; preds = %bb.am, %.lr.ph.i.i.epil.preheader, %precondition.exit.sink.split.i.loopexit.unr-lcssa, %bb.al, %bb.ak
  call void @llvm.x86.sse.sfence()
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %precondition.exit.i

precondition.exit.i:                              ; preds = %.preheader.i202.i, %middle.block, %precondition.exit.sink.split.i, %bb.ai
  %i.ahu = phi ptr [ %i.yv, %bb.ai ], [ %.pre, %precondition.exit.sink.split.i ], [ %i.yv, %middle.block ], [ %i.yv, %.preheader.i202.i ] ; 3 uses
  %i.ahv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !235
  %.not.i206.i = icmp eq ptr %i.ahv, null
  br i1 %.not.i206.i, label %debug_dump_PFM.exit.i, label %bb.an

bb.an:                                            ; preds = %precondition.exit.i
  %i.ahw = load ptr, ptr %i.qx, align 8, !tbaa !138, !noalias !235
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 644
  %.val.i.i = load i32, ptr %i.ahx, align 4, !tbaa !139, !noalias !235
  %i.ahy = and i32 %.val.i.i, 2
  %.not5.i.i = icmp eq i32 %i.ahy, 0
  br i1 %.not5.i.i, label %debug_dump_PFM.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !235
  %i.ahz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.104, i32 noundef 0) #18, !noalias !235 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %i.ahu, i32 noundef %i.qj, i32 noundef %i.ql, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !235
  %.pre.i26 = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %debug_dump_PFM.exit.i

debug_dump_PFM.exit.i:                            ; preds = %bb.ao, %bb.an, %precondition.exit.i
  %i.aia = phi ptr [ %i.ahu, %precondition.exit.i ], [ %i.ahu, %bb.an ], [ %.pre.i26, %bb.ao ] ; 2 uses
  %i.aib = load ptr, ptr %i.h, align 8, !tbaa !188
  call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef %i.qm, i64 noundef %i.qn, i64 noundef 4) #18
  br i1 %i.pd, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %debug_dump_PFM.exit.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aid = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %i.aie = getelementptr inbounds nuw i8, ptr %i.w, <4 x i64> <i64 144, i64 172, i64 200, i64 116>
  %i.aif = uitofp reassoc nsz arcp contract afn i64 %i.qo to float
  %i.aig = fadd reassoc nsz arcp contract afn float %i.aif, -1.000000e+00 ; 2 uses
  %i.aih = zext nneg i32 %.0178.lcssa.i to i64    ; 2 uses
  %i.aii = insertelement <2 x float> poison, float %i.aig, i64 0
  %i.aij = shufflevector <2 x float> %i.aii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aik = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aij
  %i.ail = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aig
  br label %bb.ap

.preheader.i:                                     ; preds = %variance_stabilizing_xform.exit.i, %debug_dump_PFM.exit.i
  %.0181.lcssa.i = phi ptr [ %i.aia, %debug_dump_PFM.exit.i ], [ %.018041.i, %variance_stabilizing_xform.exit.i ] ; 13 uses
  %i.aim = shl i64 %i.qo, 2                       ; 8 uses
  %.not46.i = icmp eq i64 %i.aim, 0
  br i1 %.not46.i, label %._crit_edge.i, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.preheader.i
  %i.ain = mul nsw i64 %i.qn, %i.qm
  %i.aio = shl i64 %i.ain, 4                      ; 2 uses
  %scevgep143 = getelementptr i8, ptr %3, i64 %i.aio
  %scevgep144 = getelementptr i8, ptr %.0181.lcssa.i, i64 %i.aio
  %bound0145 = icmp ult ptr %3, %scevgep144
  %bound1146 = icmp ult ptr %.0181.lcssa.i, %scevgep143
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck142
  %min.iters.check150 = icmp ult i64 %i.aim, 32
  br i1 %min.iters.check150, label %vec.epilog.vector.body.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %n.vec152 = and i64 %i.aim, -32                 ; 4 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next162, %vector.body153 ] ; 3 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %index154 ; 4 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = getelementptr inbounds nuw i8, ptr %i.aip, i64 64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 96
  %wide.load = load <8 x float>, ptr %i.aip, align 4, !tbaa !16, !alias.scope !238
  %wide.load155 = load <8 x float>, ptr %i.aiq, align 4, !tbaa !16, !alias.scope !238
  %wide.load156 = load <8 x float>, ptr %i.air, align 4, !tbaa !16, !alias.scope !238
  %wide.load157 = load <8 x float>, ptr %i.ais, align 4, !tbaa !16, !alias.scope !238
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index154 ; 5 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 64 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ait, i64 96 ; 2 uses
  %wide.load158 = load <8 x float>, ptr %i.ait, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load159 = load <8 x float>, ptr %i.aiu, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load160 = load <8 x float>, ptr %i.aiv, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load161 = load <8 x float>, ptr %i.aiw, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %i.aix = fadd reassoc nsz arcp contract afn <8 x float> %wide.load158, %wide.load
  %i.aiy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load159, %wide.load155
  %i.aiz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load160, %wide.load156
  %i.aja = fadd reassoc nsz arcp contract afn <8 x float> %wide.load161, %wide.load157
  store <8 x float> %i.aix, ptr %i.ait, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.aiy, ptr %i.aiu, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.aiz, ptr %i.aiv, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.aja, ptr %i.aiw, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %index.next162 = add nuw i64 %index154, 32      ; 2 uses
  %i.ajb = icmp eq i64 %index.next162, %n.vec152
  br i1 %i.ajb, label %middle.block163, label %vector.body153, !llvm.loop !243

middle.block163:                                  ; preds = %vector.body153
  %cmp.n164 = icmp eq i64 %i.aim, %n.vec152
  br i1 %cmp.n164, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block163
  %i.ajc = and i64 %i.qo, 7
  %min.epilog.iters.check = icmp eq i64 %i.ajc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.i.preheader, label %vec.epilog.vector.body.preheader, !prof !244

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index166.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec152, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph44.i.preheader:                             ; preds = %vector.memcheck142, %vec.epilog.iter.check
  %.043.i.ph = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.memcheck142 ] ; 3 uses
  %xtraiter286 = and i64 %i.aim, 4                ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i.prol
  %.043.i.prol = phi i64 [ %i.aji, %.lr.ph44.i.prol ], [ %.043.i.ph, %.lr.ph44.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.i.preheader ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %.043.i.prol
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !16
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.043.i.prol ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !16
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajg, %i.aje
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !16
  %i.aji = add nuw i64 %.043.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter286
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !245

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %.043.i.unr = phi i64 [ %.043.i.ph, %.lr.ph44.i.preheader ], [ %i.aji, %.lr.ph44.i.prol ]
  %i.ajj = sub i64 %.043.i.ph, %i.aim
  %i.ajk = icmp ugt i64 %i.ajj, -8
  br i1 %i.ajk, label %._crit_edge.i, label %.lr.ph44.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index166 = phi i64 [ %index.next169, %vec.epilog.vector.body ], [ %index166.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %index166
  %wide.load167 = load <4 x float>, ptr %i.ajl, align 4, !tbaa !16, !alias.scope !238
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index166 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.ajm, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %i.ajn = fadd reassoc nsz arcp contract afn <4 x float> %wide.load168, %wide.load167
  store <4 x float> %i.ajn, ptr %i.ajm, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.ajo = icmp eq i64 %index.next169, %i.aim
  br i1 %i.ajo, label %._crit_edge.i, label %vec.epilog.vector.body, !llvm.loop !247

bb.ap:                                            ; preds = %variance_stabilizing_xform.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %variance_stabilizing_xform.exit.i ] ; 3 uses
  %.018041.i = phi ptr [ %i.aib, %.lr.ph.i ], [ %.018140.i, %variance_stabilizing_xform.exit.i ] ; 4 uses
  %.018140.i = phi ptr [ %i.aia, %.lr.ph.i ], [ %.018041.i, %variance_stabilizing_xform.exit.i ] ; 2 uses
  %i.ajp = trunc nuw nsw i64 %indvars.iv.i to i32 ; 5 uses
  %i.ajq = uitofp nneg i32 %i.ajp to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.ajr = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.ajs = fmul reassoc nnan nsz arcp contract afn float %i.ajq, -2.000000e+00
  %i.ajt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3F05DD98, float %i.ajs)
  call void @eaw_dn_decompose(ptr noundef %.018041.i, ptr noundef %.018140.i, ptr noundef %i.ajr, ptr noundef nonnull %i.m, i32 noundef %i.ajp, float noundef %i.ajt, i32 noundef %i.qj, i32 noundef %i.ql) #18
  %i.aju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !248
  %.not.i207.i = icmp eq ptr %i.aju, null
  br i1 %.not.i207.i, label %debug_dump_PFM.exit214.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ajv = load ptr, ptr %i.qx, align 8, !tbaa !138, !noalias !249
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 644
  %.val.i208.i = load i32, ptr %i.ajw, align 4, !tbaa !139, !noalias !249
  %i.ajx = and i32 %.val.i208.i, 2
  %.not5.i209.i = icmp eq i32 %i.ajx, 0
  br i1 %.not5.i209.i, label %debug_dump_PFM.exit214.i, label %debug_dump_PFM.exit210.i

debug_dump_PFM.exit210.i:                         ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !249
  %i.ajy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.105, i32 noundef %i.ajp) #18, !noalias !249 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.d, ptr noundef %.018041.i, i32 noundef %i.qj, i32 noundef %i.ql, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !249
  %.pr.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !252
  %i.ajz = icmp eq ptr %.pr.pre.i, null
  br i1 %i.ajz, label %debug_dump_PFM.exit214.i, label %debug_dump_PFM.exit210.thread.i

debug_dump_PFM.exit210.thread.i:                  ; preds = %debug_dump_PFM.exit210.i
  %.pre104 = load ptr, ptr %i.qx, align 8, !tbaa !138, !noalias !252
  %.phi.trans.insert = getelementptr i8, ptr %.pre104, i64 644
  %.val.i212.i.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !139, !noalias !252
  %.pre106 = and i32 %.val.i212.i.pre, 2
  %i.aka = icmp eq i32 %.pre106, 0
  br i1 %i.aka, label %debug_dump_PFM.exit214.i, label %bb.ar

bb.ar:                                            ; preds = %debug_dump_PFM.exit210.thread.i
  %i.akb = load ptr, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !252
  %i.akc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.106, i32 noundef %i.ajp) #18, !noalias !252 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.c, ptr noundef %i.akb, i32 noundef %i.qj, i32 noundef %i.ql, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !252
  br label %debug_dump_PFM.exit214.i

debug_dump_PFM.exit214.i:                         ; preds = %bb.aq, %bb.ar, %debug_dump_PFM.exit210.thread.i, %debug_dump_PFM.exit210.i, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_wavelets.boost, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  %i.akd = load float, ptr %i.m, align 16, !tbaa !16
  %i.ake = load <2 x float>, ptr %i.aic, align 4, !tbaa !16
  %7 = xor i64 %indvars.iv.i, -1
  %8 = add nsw i64 %7, %i.aih                     ; 2 uses
  %i.akf = load i32, ptr %i.xo, align 8, !tbaa !220
  %i.akg = icmp eq i32 %i.akf, 0
  br i1 %i.akg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %debug_dump_PFM.exit214.i
  %i.akh = getelementptr inbounds [4 x i8], <4 x ptr> %i.aie, i64 %8
  %i.aki = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.akh, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !16 ; 2 uses
  %i.akj = fmul reassoc nsz arcp contract afn <4 x float> %i.aki, %i.aki ; 2 uses
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.akl = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.akk, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.akm = fmul reassoc nsz arcp contract afn <4 x float> %i.akl, <float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 0.000000e+00>
  %i.akn = fmul reassoc nsz arcp contract afn <4 x float> %i.akj, %i.akm
  br label %variance_stabilizing_xform.exit.i

bb.at:                                            ; preds = %debug_dump_PFM.exit214.i
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.aid, i64 %8
  %i.akp = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.ako, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <8 x float> poison), !tbaa !16
  %i.akq = shufflevector <8 x float> %i.akp, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 7, i32 7, i32 11> ; 2 uses
  %i.akr = fmul reassoc nsz arcp contract afn <4 x float> %i.akq, %i.akq
  %i.aks = fmul reassoc nsz arcp contract afn <4 x float> %i.akr, <float 3.200000e+01, float 3.200000e+01, float 3.200000e+01, float 0.000000e+00>
  br label %variance_stabilizing_xform.exit.i

variance_stabilizing_xform.exit.i:                ; preds = %bb.at, %bb.as
  %i.akt = phi <4 x float> [ %i.akn, %bb.as ], [ %i.aks, %bb.at ]
  %i.aku = fmul reassoc nsz arcp contract afn <2 x float> %i.ake, %i.aik
  %i.akv = call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float f0x3F05DD98, i32 %i.ajp) ; 2 uses
  %i.akw = fmul reassoc nsz arcp contract afn float %i.akv, %i.akv ; 3 uses
  %i.akx = insertelement <2 x float> poison, float %i.akw, i64 0
  %i.aky = shufflevector <2 x float> %i.akx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akz = fsub reassoc nsz arcp contract afn <2 x float> %i.aku, %i.aky ; 2 uses
  %i.ala = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.akz, splat (float f0x358637BD)
  %i.alb = select <2 x i1> %i.ala, <2 x float> splat (float f0x358637BD), <2 x float> %i.akz
  %i.alc = fmul reassoc nsz arcp contract afn float %i.akd, %i.ail
  %i.ald = fsub reassoc nsz arcp contract afn float %i.alc, %i.akw ; 2 uses
  %i.ale = fcmp reassoc nsz arcp contract afn olt float %i.ald, f0x358637BD
  %i.alf = select reassoc nsz arcp contract afn i1 %i.ale, float f0x358637BD, float %i.ald
  %i.alg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.alf)
  %i.alh = insertelement <4 x float> poison, float %i.akw, i64 0
  %i.ali = shufflevector <4 x float> %i.alh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alj = fmul reassoc nsz arcp contract afn <4 x float> %i.akt, %i.ali
  %i.alk = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.alg, i64 0
  %i.all = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.alb)
  %i.alm = shufflevector <2 x float> %i.all, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aln = shufflevector <4 x float> %i.alk, <4 x float> %i.alm, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.alo = fdiv reassoc nsz arcp contract afn <4 x float> %i.alj, %i.aln
  store <4 x float> %i.alo, ptr %i.o, align 16, !tbaa !16
  %i.alp = load ptr, ptr %i.f, align 8, !tbaa !188
  call void @eaw_synthesize(ptr noundef %3, ptr noundef %3, ptr noundef %i.alp, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, i32 noundef %i.qj, i32 noundef %i.ql) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aih
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.ap

._crit_edge.i:                                    ; preds = %vec.epilog.vector.body, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block163, %.preheader.i
  %i.alq = load i32, ptr %i.yt, align 4, !tbaa !192
  %.not197.i = icmp eq i32 %i.alq, 0
  br i1 %.not197.i, label %bb.au, label %bb.av

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %.043.i = phi i64 [ %i.anm, %.lr.ph44.i ], [ %.043.i.unr, %.lr.ph44.i.prol.loopexit ] ; 10 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %.043.i
  %i.als = load float, ptr %i.alr, align 4, !tbaa !16
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.043.i ; 2 uses
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !16
  %i.alv = fadd reassoc nsz arcp contract afn float %i.alu, %i.als
  store float %i.alv, ptr %i.alt, align 4, !tbaa !16
  %i.alw = add nuw i64 %.043.i, 1                 ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.alw
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !16
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alw ; 2 uses
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !16
  %i.amb = fadd reassoc nsz arcp contract afn float %i.ama, %i.aly
  store float %i.amb, ptr %i.alz, align 4, !tbaa !16
  %i.amc = add nuw i64 %.043.i, 2                 ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !16
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amc ; 2 uses
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !16
  %i.amh = fadd reassoc nsz arcp contract afn float %i.amg, %i.ame
  store float %i.amh, ptr %i.amf, align 4, !tbaa !16
  %i.ami = add nuw i64 %.043.i, 3                 ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.ami
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !16
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ami ; 2 uses
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !16
  %i.amn = fadd reassoc nsz arcp contract afn float %i.amm, %i.amk
  store float %i.amn, ptr %i.aml, align 4, !tbaa !16
  %i.amo = add nuw i64 %.043.i, 4                 ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !16
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amo ; 2 uses
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !16
  %i.amt = fadd reassoc nsz arcp contract afn float %i.ams, %i.amq
  store float %i.amt, ptr %i.amr, align 4, !tbaa !16
  %i.amu = add nuw i64 %.043.i, 5                 ; 2 uses
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amu
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !16
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amu ; 2 uses
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !16
  %i.amz = fadd reassoc nsz arcp contract afn float %i.amy, %i.amw
  store float %i.amz, ptr %i.amx, align 4, !tbaa !16
  %i.ana = add nuw i64 %.043.i, 6                 ; 2 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.ana
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !16
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ana ; 2 uses
  %i.ane = load float, ptr %i.and, align 4, !tbaa !16
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ane, %i.anc
  store float %i.anf, ptr %i.and, align 4, !tbaa !16
  %i.ang = add nuw i64 %.043.i, 7                 ; 2 uses
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.ang
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !16
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ang ; 2 uses
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !16
  %i.anl = fadd reassoc nsz arcp contract afn float %i.ank, %i.ani
  store float %i.anl, ptr %i.anj, align 4, !tbaa !16
  %i.anm = add nuw i64 %.043.i, 8                 ; 2 uses
  %exitcond48.not.i.7 = icmp eq i64 %i.anm, %i.aim
  br i1 %exitcond48.not.i.7, label %._crit_edge.i, label %.lr.ph44.i, !llvm.loop !255

bb.au:                                            ; preds = %._crit_edge.i
  call fastcc void @backtransform(ptr noundef %3, i32 noundef %i.qj, i32 noundef %i.ql, ptr noundef %i.k, ptr noundef %i.l)
  br label %backtransform_Y0U0V0.exit.i

bb.av:                                            ; preds = %._crit_edge.i
  %i.ann = load i32, ptr %i.xo, align 8, !tbaa !220
  %i.ano = icmp eq i32 %i.ann, 0
  %i.anp = load float, ptr %i.ye, align 4, !tbaa !16
  %i.anq = fmul reassoc nsz arcp contract afn float %i.anp, %i.tg ; 2 uses
  %i.anr = load float, ptr %i.yl, align 8, !tbaa !16 ; 4 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ant = load float, ptr %i.ans, align 8, !tbaa !217
  %i.anu = fpext reassoc nsz arcp contract afn float %i.ant to double
  %i.anv = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.oi)
  %i.anw = fpext reassoc nsz arcp contract afn float %i.anv to double
  %i.anx = fmul reassoc nsz arcp contract afn double %i.anw, 5.000000e-01
  %i.any = fsub reassoc nsz arcp contract afn double %i.anu, %i.anx
  %i.anz = fptrunc reassoc nsz arcp contract afn double %i.any to float ; 3 uses
  br i1 %i.ano, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call fastcc void @backtransform_v2(ptr noundef %3, i32 noundef %i.qj, i32 noundef %i.ql, float noundef %i.anq, ptr noundef %i.j, float noundef %i.anr, float noundef %i.anz, ptr noundef %i.i)
  br label %backtransform_Y0U0V0.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.aoa = insertelement <2 x float> poison, float %i.anz, i64 0
  %i.aob = shufflevector <2 x float> %i.aoa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoc = fmul reassoc nsz arcp contract afn <2 x float> %i.xy, %i.aob ; 3 uses
  %i.aod = fmul reassoc nsz arcp contract afn float %i.yc, %i.anz ; 2 uses
  %i.aoe = fmul reassoc nsz arcp contract afn <2 x float> %i.ss, splat (float 5.000000e-01)
  %i.aof = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aoe
  %i.aog = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aof ; 5 uses
  %i.aoh = fmul reassoc nsz arcp contract afn float %i.tb, 5.000000e-01
  %i.aoi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aoh
  %i.aoj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aoi ; 6 uses
  %i.aok = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.anq)
  %i.aol = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ss
  %i.aom = fmul reassoc nsz arcp contract afn float %i.aok, 2.500000e-01 ; 2 uses
  %i.aon = insertelement <2 x float> poison, float %i.aom, i64 0
  %i.aoo = shufflevector <2 x float> %i.aon, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aop = fmul reassoc nsz arcp contract afn <2 x float> %i.aoo, %i.aol ; 3 uses
  %i.aoq = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tb
  %i.aor = fmul reassoc nsz arcp contract afn float %i.aom, %i.aoq ; 2 uses
  %i.aos = shl nsw i64 %i.qm, 2
  %i.aot = mul i64 %i.aos, %i.qn                  ; 3 uses
  %.not.i215.i = icmp eq i64 %i.aot, 0
  br i1 %.not.i215.i, label %backtransform_Y0U0V0.exit.i, label %.preheader49.preheader.i.preheader.i

.preheader49.preheader.i.preheader.i:             ; preds = %bb.ax
  %i.aou = fneg reassoc nsz arcp contract afn float %i.anr ; 2 uses
  %i.aov = fmul reassoc nsz arcp contract afn <2 x float> %i.xm, %i.xx ; 3 uses
  %i.aow = insertelement <2 x float> poison, float %.sroa.8.0.i, i64 0
  %i.aox = insertelement <2 x float> %i.aow, float %.sroa.22.0.i, i64 1
  %i.aoy = fmul reassoc nsz arcp contract afn <2 x float> %i.aox, %i.xx ; 3 uses
  %i.aoz = insertelement <4 x float> poison, float %.sroa.0.0.i, i64 0
  %i.apa = shufflevector <4 x float> %i.aoz, <4 x float> %i.xn, <2 x i32> <i32 0, i32 4>
  %i.apb = fmul reassoc nsz arcp contract afn <2 x float> %i.apa, %i.xx ; 3 uses
  %i.apc = extractelement <4 x float> %i.xn, i64 3
  %factor.op.fmul85 = fmul reassoc nsz arcp contract afn float %i.apc, %i.xv ; 2 uses
  %i.apd = extractelement <4 x float> %i.xn, i64 1
  %factor.op.fmul87 = fmul reassoc nsz arcp contract afn float %i.apd, %i.xv ; 2 uses
  %i.ape = extractelement <4 x float> %i.xn, i64 2
  %factor.op.fmul89 = fmul reassoc nsz arcp contract afn float %i.ape, %i.xv ; 2 uses
  %i.apf = add i64 %i.aot, -4                     ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.apf, 32
  br i1 %min.iters.check173, label %.preheader49.preheader.i.i.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.preheader49.preheader.i.preheader.i
  %i.apg = lshr exact i64 %i.apf, 2
  %i.aph = add nuw nsw i64 %i.apg, 1              ; 2 uses
  %i.api = and i64 %i.aph, 7                      ; 2 uses
  %i.apj = icmp eq i64 %i.api, 0
  %i.apk = select i1 %i.apj, i64 8, i64 %i.api
  %n.vec175 = sub nsw i64 %i.aph, %i.apk          ; 2 uses
  %i.apl = shl i64 %n.vec175, 2
  %broadcast.splatinsert176 = insertelement <8 x float> poison, float %i.aou, i64 0
  %broadcast.splat177 = shufflevector <8 x float> %broadcast.splatinsert176, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <2 x float> %i.aov, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat181 = shufflevector <2 x float> %i.apb, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <2 x float> %i.aoy, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat185 = shufflevector <2 x float> %i.aov, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat187 = shufflevector <2 x float> %i.aoy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat189 = shufflevector <2 x float> %i.apb, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert190 = insertelement <8 x float> poison, float %factor.op.fmul85, i64 0
  %broadcast.splat191 = shufflevector <8 x float> %broadcast.splatinsert190, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <8 x float> poison, float %factor.op.fmul87, i64 0
  %broadcast.splat193 = shufflevector <8 x float> %broadcast.splatinsert192, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> poison, float %factor.op.fmul89, i64 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat197 = shufflevector <2 x float> %i.aoc, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat199 = shufflevector <2 x float> %i.aop, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat201 = shufflevector <2 x float> %i.aoc, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat203 = shufflevector <2 x float> %i.aop, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert204 = insertelement <8 x float> poison, float %i.aod, i64 0
  %broadcast.splat205 = shufflevector <8 x float> %broadcast.splatinsert204, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_1
