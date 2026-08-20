inline.NumInlined: 49
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 60
begin_hunk_0_@rnnoise_channels:bb.a
  %wide.load364 = load <2 x float>, ptr %i.lh, align 16, !tbaa !25
  %wide.load365 = load <2 x float>, ptr %i.li, align 8, !tbaa !25
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %interleaved.vec366 = shufflevector <2 x float> %wide.load364, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366, ptr %i.lj, align 16, !tbaa !25
  %interleaved.vec367 = shufflevector <2 x float> %wide.load365, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367, ptr %i.ll, align 16, !tbaa !25
  %index.next368 = or disjoint i64 %index363, 4   ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next368 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %wide.load364.1 = load <2 x float>, ptr %i.lm, align 16, !tbaa !25
  %wide.load365.1 = load <2 x float>, ptr %i.ln, align 8, !tbaa !25
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %interleaved.vec366.1 = shufflevector <2 x float> %wide.load364.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366.1, ptr %i.lo, align 16, !tbaa !25
  %interleaved.vec367.1 = shufflevector <2 x float> %wide.load365.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367.1, ptr %i.lq, align 16, !tbaa !25
  %index.next368.1 = add nuw nsw i64 %index363, 8 ; 2 uses
  %i.lr = icmp eq i64 %index.next368.1, 960
  br i1 %i.lr, label %forward_transform.exit.i.i.i, label %vector.body362, !llvm.loop !138

forward_transform.exit.i.i.i:                     ; preds = %vector.body362
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kb, i64 20488 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !139
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kb, i64 20472 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !77
  call void %i.lt(ptr noundef %i.lv, ptr noundef nonnull %9, ptr noundef nonnull %8, i64 noundef 8) #11, !inline_history !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3848) %10, ptr noundef nonnull align 16 dereferenceable(3848) %9, i64 3848, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.p, i8 0, i64 88, i1 false)
  br label %bb.d

..loopexit_crit_edge.i.i.i.i:                     ; preds = %bb.e
  store <2 x float> %i.mx, ptr %i.mg, align 4, !tbaa !25
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.d, %..loopexit_crit_edge.i.i.i.i
  %exitcond45.not.i.i.i.i = icmp eq i64 %indvars.iv.next43.i.i.i.i, 21
  br i1 %exitcond45.not.i.i.i.i, label %frame_analysis.exit.i.i, label %bb.d, !llvm.loop !141

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %forward_transform.exit.i.i.i
  %i.lw = phi i8 [ 0, %forward_transform.exit.i.i.i ], [ %i.ly, %.loopexit.i.i.i.i ]
  %indvars.iv42.i.i.i.i = phi i64 [ 0, %forward_transform.exit.i.i.i ], [ %indvars.iv.next43.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.next43.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i, 1 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i.i.i.i
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !142 ; 2 uses
  %i.lz = zext i8 %i.ly to i32
  %i.ma = zext i8 %i.lw to i32                    ; 2 uses
  %i.mb = sub nsw i32 %i.lz, %i.ma                ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.md = shl nuw nsw i32 %i.mb, 2                ; 2 uses
  %i.me = uitofp nneg i32 %i.md to float
  %i.mf = shl nuw nsw i32 %i.ma, 2
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv42.i.i.i.i ; 2 uses
  %i.mh = load <2 x float>, ptr %i.mg, align 4, !tbaa !25
  %i.mi = zext nneg i32 %i.mf to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.md to i64
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.mi
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.i21.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i22.i.i.i, %bb.e ] ; 3 uses
  %i.mj = phi <2 x float> [ %i.mh, %.lr.ph.i.i.i.i ], [ %i.mx, %bb.e ]
  %i.mk = trunc nuw nsw i64 %indvars.iv.i21.i.i.i to i32
  %i.ml = uitofp nneg i32 %i.mk to float
  %i.mm = fdiv nsz float %i.ml, %i.me             ; 2 uses
  %gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i21.i.i.i ; 2 uses
  %i.mn = load float, ptr %gep.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.mo = fmul nsz float %i.mn, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %gep.i.i.i.i, i64 4
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !145 ; 2 uses
  %i.mr = call nsz float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mo)
  %i.ms = fsub nsz float 1.000000e+00, %i.mm
  %i.mt = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.mm, i64 1
  %i.mv = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.mw, <2 x float> %i.mj) ; 2 uses
  %indvars.iv.next.i22.i.i.i = add nuw nsw i64 %indvars.iv.i21.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i = icmp eq i64 %indvars.iv.next.i22.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i23.i.i.i, label %..loopexit_crit_edge.i.i.i.i, label %bb.e, !llvm.loop !146

frame_analysis.exit.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.my = load float, ptr %i.p, align 16, !tbaa !25
  %i.mz = fmul nsz float %i.my, 2.000000e+00
  store float %i.mz, ptr %i.p, align 16, !tbaa !25
  %i.na = load float, ptr %i.bc, align 4, !tbaa !25
  %i.nb = fmul nsz float %i.na, 2.000000e+00
  store float %i.nb, ptr %i.bc, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.w, ptr noundef nonnull align 16 dereferenceable(88) %i.p, i64 88, i1 false), !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4560 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kb, i64 6480
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4992) %i.nc, ptr noundef nonnull align 16 dereferenceable(4992) %i.nd, i64 4992, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kb, i64 9552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.ne, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  %i.nf = getelementptr i8, ptr %i.ka, i64 %i.da
  %i.ng = getelementptr i8, ptr %i.nf, i64 4564
  %scevgep343 = getelementptr i8, ptr %i.ng, i64 %i.jy
  %i.nh = getelementptr i8, ptr %i.ka, i64 %i.da
  %i.ni = getelementptr i8, ptr %i.nh, i64 11472
  %scevgep344 = getelementptr i8, ptr %i.ni, i64 %i.jy
  %bound0345 = icmp ult ptr %scevgep341, %scevgep344
  %bound1346 = icmp ult ptr %scevgep343, %scevgep342
  %found.conflict347 = and i1 %bound0345, %bound1346
  br i1 %found.conflict347, label %scalar.ph348.prol, label %vector.body350

scalar.ph348.prol:                                ; preds = %vector.body350, %frame_analysis.exit.i.i
  %indvars.iv.i.i.i.ph.sroa.phi = phi ptr [ %indvars.iv.i.i.i.ph.sroa.gep, %frame_analysis.exit.i.i ], [ %indvars.iv.i.i.i.ph.sroa.gep402, %vector.body350 ]
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %frame_analysis.exit.i.i ], [ 861, %vector.body350 ] ; 2 uses
  %.idx.i.i.i.prol = shl nuw nsw i64 %indvars.iv.i.i.i.ph, 3
  %i.nj = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i.prol ; 3 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 -4
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !25
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !25
  %i.no = fadd nsz float %i.nl, %i.nn
  %i.np = load float, ptr %i.nj, align 4, !tbaa !25
  %i.nq = call nsz float @llvm.fmuladd.f32(float %i.no, float 5.000000e-01, float %i.np)
  %i.nr = fmul nsz float %i.nq, 5.000000e-01
  store float %i.nr, ptr %indvars.iv.i.i.i.ph.sroa.phi, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph348

vector.body350:                                   ; preds = %frame_analysis.exit.i.i, %vector.body350
  %index351 = phi i64 [ %index.next357, %vector.body350 ], [ 0, %frame_analysis.exit.i.i ] ; 2 uses
  %i.ns = or disjoint i64 %index351, 1            ; 2 uses
  %i.nt = shl nuw nsw i64 %i.ns, 3
  %i.nu = getelementptr i8, ptr %i.nc, i64 %i.nt  ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %wide.vec352 = load <8 x float>, ptr %i.nv, align 4, !tbaa !25, !alias.scope !147
  %strided.vec353 = shufflevector <8 x float> %wide.vec352, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec354 = load <8 x float>, ptr %i.nu, align 4, !tbaa !25, !alias.scope !147 ; 2 uses
  %strided.vec355 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec356 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nw = fadd nsz <4 x float> %strided.vec353, %strided.vec356
  %i.nx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nw, <4 x float> splat (float 5.000000e-01), <4 x float> %strided.vec355)
  %i.ny = fmul nsz <4 x float> %i.nx, splat (float 5.000000e-01)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ns
  store <4 x float> %i.ny, ptr %i.nz, align 4, !tbaa !25, !alias.scope !150, !noalias !147
  %index.next357 = add nuw i64 %index351, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next357, 860
  br i1 %i.oa, label %scalar.ph348.prol, label %vector.body350, !llvm.loop !152

.unr-lcssa:                                       ; preds = %scalar.ph348
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kb, i64 4564
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !25
  %i.od = load float, ptr %i.nc, align 8, !tbaa !25
  %i.oe = call nsz float @llvm.fmuladd.f32(float %i.oc, float 5.000000e-01, float %i.od)
  %i.of = fmul nsz float %i.oe, 5.000000e-01      ; 2 uses
  store float %i.of, ptr %i.t, align 16, !tbaa !25
  %i.og = load <2 x float>, ptr %i.be, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.unr-lcssa
  %.0124.i.i.i.i.i.i = phi ptr [ %i.t, %.unr-lcssa ], [ %i.oq, %bb.f ] ; 5 uses
  %.0109123.i.i.i.i.i.i = phi ptr [ %i.bd, %.unr-lcssa ], [ %i.os, %bb.f ] ; 3 uses
  %.0112122.i.i.i.i.i.i = phi float [ %i.of, %.unr-lcssa ], [ %i.ou, %bb.f ]
  %.0115120.i.i.i.i.i.i = phi i32 [ 0, %.unr-lcssa ], [ %i.pn, %bb.f ] ; 2 uses
  %i.oh = phi <4 x float> [ zeroinitializer, %.unr-lcssa ], [ %i.pm, %bb.f ]
  %i.oi = phi <2 x float> [ %i.og, %.unr-lcssa ], [ %i.pp, %bb.f ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 4
  %i.ok = load float, ptr %.0124.i.i.i.i.i.i, align 4, !tbaa !25
  %i.ol = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 8
  %i.on = load float, ptr %i.oj, align 4, !tbaa !25
  %i.oo = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 12
  %i.op = load float, ptr %i.om, align 4, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 16
  %i.or = load float, ptr %i.oo, align 4, !tbaa !25
  %i.os = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 16
  %i.ot = load <4 x float>, ptr %.0109123.i.i.i.i.i.i, align 4, !tbaa !25 ; 5 uses
  %i.ou = load float, ptr %i.ol, align 4, !tbaa !25
  %i.ov = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = shufflevector <2 x float> %i.oi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> %i.ot, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.oz = insertelement <4 x float> %i.oy, float %.0112122.i.i.i.i.i.i, i64 0
  %i.pa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ow, <4 x float> %i.oz, <4 x float> %i.oh)
  %i.pb = insertelement <4 x float> poison, float %i.on, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.pe = shufflevector <4 x float> %i.ox, <4 x float> %i.pd, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.pf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pc, <4 x float> %i.pe, <4 x float> %i.pa)
  %i.pg = insertelement <4 x float> poison, float %i.op, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = shufflevector <4 x float> %i.pe, <4 x float> %i.ot, <4 x i32> <i32 1, i32 2, i32 3, i32 6>
  %i.pj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ph, <4 x float> %i.pi, <4 x float> %i.pf)
  %i.pk = insertelement <4 x float> poison, float %i.or, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pl, <4 x float> %i.ot, <4 x float> %i.pj) ; 3 uses
  %i.pn = add nuw nsw i32 %.0115120.i.i.i.i.i.i, 4
  %i.po = icmp samesign ult i32 %.0115120.i.i.i.i.i.i, 853
  %i.pp = shufflevector <4 x float> %i.ot, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.po, label %bb.f, label %.lr.ph48.i.i.i.i.i, !llvm.loop !153

.lr.ph48.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph48.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.4, %.lr.ph48.i.i.i.i.i ], [ 0, %bb.f ] ; 7 uses
  %.089.i.i.i.i.i.i = phi float [ %i.qn, %.lr.ph48.i.i.i.i.i ], [ 0.000000e+00, %bb.f ]
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i.i.i
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !25
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !25 ; 2 uses
  %i.pu = call nsz float @llvm.fmuladd.f32(float %i.pr, float %i.pt, float %.089.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !25
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.py = load float, ptr %i.px, align 4, !tbaa !25
  %i.pz = call nsz float @llvm.fmuladd.f32(float %i.pw, float %i.py, float %i.pu)
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !25
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !25
  %i.qe = call nsz float @llvm.fmuladd.f32(float %i.qb, float %i.qd, float %i.pz)
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !25
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !25
  %i.qj = call nsz float @llvm.fmuladd.f32(float %i.qg, float %i.qi, float %i.qe)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !25
  %i.qn = call nsz float @llvm.fmuladd.f32(float %i.pt, float %i.qm, float %i.qj) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.4, 860
  br i1 %exitcond.not.i.i.i.i.i.i.4, label %celt_autocorr.exit.i.i.i, label %.lr.ph48.i.i.i.i.i, !llvm.loop !154

celt_autocorr.exit.i.i.i:                         ; preds = %.lr.ph48.i.i.i.i.i
  %i.qo = load <4 x float>, ptr %i.bh, align 16, !tbaa !25 ; 6 uses
  %i.qp = load float, ptr %i.bg, align 4, !tbaa !25 ; 4 uses
  %i.qq = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qr = fmul nsz <4 x float> %i.qo, %i.qq       ; 4 uses
  %12 = extractelement <4 x float> %i.qr, i64 0
  %13 = call nsz float @llvm.fmuladd.f32(float %i.qp, float %i.qp, float %12)
  %i.qs = extractelement <4 x float> %i.qo, i64 2 ; 3 uses
  %i.qt = call nsz float @llvm.fmuladd.f32(float %i.qs, float %i.qs, float %13)
  %i.qu = extractelement <4 x float> %i.qo, i64 3 ; 2 uses
  %i.qv = call nsz float @llvm.fmuladd.f32(float %i.qu, float %i.qu, float %i.qt)
  %i.qw = extractelement <4 x float> %i.qr, i64 1
  %i.qx = call nsz float @llvm.fmuladd.f32(float %i.qs, float %i.qp, float %i.qw)
  %14 = shufflevector <4 x float> %i.pm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %15 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %16 = insertelement <2 x float> %15, float %i.qv, i64 0
  %17 = fadd nsz <2 x float> %14, %16             ; 2 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fmul nsz float %18, 1.000100e+00          ; 5 uses
  %20 = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %21 = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %22 = insertelement <2 x float> %21, float %i.qp, i64 1
  %23 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qy = insertelement <2 x float> %23, float %i.qx, i64 0
  %i.qz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %22, <2 x float> %i.qy)
  %i.ra = shufflevector <4 x float> %i.pm, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.rb = fadd nsz <2 x float> %i.ra, %i.qz       ; 3 uses
  %i.rc = fmul nsz <2 x float> %i.rb, <float -8.000000e-03, float -1.600000e-02> ; 2 uses
  %i.rd = extractelement <2 x float> %i.rc, i64 0
  %i.re = extractelement <2 x float> %i.rb, i64 0
  %i.rf = call nsz float @llvm.fmuladd.f32(float %i.rd, float 8.000000e-03, float %i.re) ; 4 uses
  %i.rg = extractelement <2 x float> %i.rc, i64 1
  %i.rh = extractelement <2 x float> %i.rb, i64 1
  %i.ri = call nsz float @llvm.fmuladd.f32(float %i.rg, float 1.600000e-02, float %i.rh) ; 3 uses
  %24 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rj = insertelement <2 x float> %24, float %i.qn, i64 1 ; 2 uses
  %i.rk = fmul nsz <2 x float> %i.rj, <float -2.400000e-02, float -3.200000e-02>
  %i.rl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> <float 2.400000e-02, float 3.200000e-02>, <2 x float> %i.rj) ; 3 uses
  %i.rm = fcmp nsz une float %19, 0.000000e+00
  br i1 %i.rm, label %._crit_edge60.i.i.i.i, label %vector.ph320

scalar.ph348:                                     ; preds = %scalar.ph348, %scalar.ph348.prol
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph348.prol ], [ %indvars.iv.next.i.i.i.1, %scalar.ph348 ] ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.rn = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i ; 3 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 -4
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !25
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !25
  %i.rs = fadd nsz float %i.rp, %i.rr
  %i.rt = load float, ptr %i.rn, align 4, !tbaa !25
  %i.ru = call nsz float @llvm.fmuladd.f32(float %i.rs, float 5.000000e-01, float %i.rt)
  %i.rv = fmul nsz float %i.ru, 5.000000e-01
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  store float %i.rv, ptr %i.rw, align 4, !tbaa !25
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.rx = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i.1 ; 3 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 -4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !25
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !25
  %i.sc = fadd nsz float %i.rz, %i.sb
  %i.sd = load float, ptr %i.rx, align 4, !tbaa !25
  %i.se = call nsz float @llvm.fmuladd.f32(float %i.sc, float 5.000000e-01, float %i.sd)
  %i.sf = fmul nsz float %i.se, 5.000000e-01
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 864
  br i1 %exitcond.not.i.i.i.1, label %.unr-lcssa, label %scalar.ph348, !llvm.loop !155

._crit_edge60.i.i.i.i:                            ; preds = %celt_autocorr.exit.i.i.i
  %i.sh = fneg nsz float %i.rf
  %i.si = fdiv nsz float %i.sh, %19               ; 5 uses
  %i.sj = fneg nsz float %i.si
  %i.sk = fmul nsz float %i.si, %i.sj
  %i.sl = call nsz float @llvm.fmuladd.f32(float %i.sk, float %19, float %19) ; 3 uses
  %i.sm = fmul nsz float %19, 1.000000e-03        ; 3 uses
  %i.sn = fcmp nsz uge float %i.sl, %i.sm
  %i.so = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.si, i64 0
  br i1 %i.sn, label %._crit_edge60.1.i.i.i.i, label %vector.ph320

._crit_edge60.1.i.i.i.i:                          ; preds = %._crit_edge60.i.i.i.i
  %i.sp = fmul nsz float %i.rf, %i.si
  %i.sq = fadd nsz float %i.ri, %i.sp
  %i.sr = fneg nsz float %i.sq
  %i.ss = fdiv nsz float %i.sr, %i.sl             ; 6 uses
  %i.st = fneg nsz float %i.ss
  %i.su = fmul nsz float %i.ss, %i.st
  %i.sv = insertelement <2 x float> poison, float %i.ss, i64 0
  %i.sw = insertelement <2 x float> %i.sv, float %i.su, i64 1
  %i.sx = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sy = insertelement <2 x float> %i.sx, float %i.sl, i64 1 ; 2 uses
  %i.sz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sw, <2 x float> %i.sy, <2 x float> %i.sy) ; 3 uses
  %i.ta = extractelement <2 x float> %i.sz, i64 1 ; 4 uses
  %i.tb = fcmp nsz uge float %i.ta, %i.sm
  %i.tc = insertelement <2 x float> %i.sz, float %i.ss, i64 1 ; 3 uses
  %i.td = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ss, i64 0
  br i1 %i.tb, label %._crit_edge60.2.i.i.i.i, label %vector.ph320

._crit_edge60.2.i.i.i.i:                          ; preds = %._crit_edge60.1.i.i.i.i
  %i.te = extractelement <2 x float> %i.sz, i64 0
  %i.tf = fmul nsz float %i.ri, %i.te
  %i.tg = call nsz float @llvm.fmuladd.f32(float %i.ss, float %i.rf, float %i.tf)
  %i.th = extractelement <2 x float> %i.rl, i64 0
  %i.ti = fadd nsz float %i.th, %i.tg
  %i.tj = fneg nsz float %i.ti
  %i.tk = fdiv nsz float %i.tj, %i.ta             ; 5 uses
  %i.tl = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tn = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.to = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tm, <2 x float> %i.tn, <2 x float> %i.tc) ; 5 uses
  %i.tp = fneg nsz float %i.tk
  %i.tq = fmul nsz float %i.tk, %i.tp
  %i.tr = call nsz float @llvm.fmuladd.f32(float %i.tq, float %i.ta, float %i.ta) ; 2 uses
  %i.ts = fcmp nsz uge float %i.tr, %i.sm
  %i.tt = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tu = insertelement <2 x float> %i.tt, float %i.tk, i64 1 ; 3 uses
  br i1 %i.ts, label %._crit_edge60.3.i.i.i.i, label %vector.ph320

._crit_edge60.3.i.i.i.i:                          ; preds = %._crit_edge60.2.i.i.i.i
  %foldExtExtBinop371.a = fmul nsz <2 x float> %i.rl, %i.to
  %i.tv = extractelement <2 x float> %foldExtExtBinop371.a, i64 0
  %i.tw = extractelement <2 x float> %i.to, i64 1
  %i.tx = call nsz float @llvm.fmuladd.f32(float %i.tw, float %i.ri, float %i.tv)
  %i.ty = call nsz float @llvm.fmuladd.f32(float %i.tk, float %i.rf, float %i.tx)
  %i.tz = extractelement <2 x float> %i.rl, i64 1
  %i.ua = fadd nsz float %i.tz, %i.ty
  %i.ub = fneg nsz float %i.ua
  %i.uc = fdiv nsz float %i.ub, %i.tr             ; 2 uses
  %i.ud = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uf = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ug = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.uf, <2 x float> %i.to)
  %i.uh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.tt, <2 x float> %i.tu)
  %i.ui = fmul nsz float %i.uc, f0x3F27F62A
  br label %vector.ph320

vector.ph320:                                     ; preds = %celt_autocorr.exit.i.i.i, %._crit_edge60.i.i.i.i, %._crit_edge60.1.i.i.i.i, %._crit_edge60.2.i.i.i.i, %._crit_edge60.3.i.i.i.i
  %.sroa.21.0.i.i.i = phi float [ %i.ui, %._crit_edge60.3.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.2.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.1.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.i.i.i.i ], [ 0.000000e+00, %celt_autocorr.exit.i.i.i ] ; 2 uses
  %i.uj = phi <2 x float> [ %i.ug, %._crit_edge60.3.i.i.i.i ], [ %i.to, %._crit_edge60.2.i.i.i.i ], [ %i.tc, %._crit_edge60.1.i.i.i.i ], [ %i.so, %._crit_edge60.i.i.i.i ], [ zeroinitializer, %celt_autocorr.exit.i.i.i ]
  %i.uk = phi <2 x float> [ %i.uh, %._crit_edge60.3.i.i.i.i ], [ %i.tu, %._crit_edge60.2.i.i.i.i ], [ %i.td, %._crit_edge60.1.i.i.i.i ], [ zeroinitializer, %._crit_edge60.i.i.i.i ], [ zeroinitializer, %celt_autocorr.exit.i.i.i ]
  %i.ul = fmul nsz float %.sroa.21.0.i.i.i, 8.000000e-01
  %i.um = fmul nsz <2 x float> %i.uk, <float f0x3F4F5C28, float f0x3F3A9FBD> ; 2 uses
  %i.un = extractelement <2 x float> %i.um, i64 1
  %i.uo = call nsz float @llvm.fmuladd.f32(float %i.un, float 8.000000e-01, float %.sroa.21.0.i.i.i)
  %i.up = fmul nsz <2 x float> %i.uj, <float f0x3F666666, float f0x3F4F5C28> ; 2 uses
  %i.uq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> splat (float 8.000000e-01), <2 x float> %i.um) ; 2 uses
  %i.ur = extractelement <2 x float> %i.up, i64 0
  %i.us = fadd nsz float %i.ur, 8.000000e-01
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.us, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat324 = shufflevector <2 x float> %i.uq, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat326 = shufflevector <2 x float> %i.uq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.uo, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.ul, i64 0
  %broadcast.splat330 = shufflevector <4 x float> %broadcast.splatinsert329, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph320
  %index332 = phi i64 [ 0, %vector.ph320 ], [ %index.next338, %vector.body331 ] ; 2 uses
  %vector.recur = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.ux, %vector.body331 ]
  %vector.recur333 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.uw, %vector.body331 ]
  %vector.recur334 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.uv, %vector.body331 ]
  %vector.recur335 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.uu, %vector.body331 ]
  %vector.recur336 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %wide.load337, %vector.body331 ]
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index332 ; 2 uses
  %wide.load337 = load <4 x float>, ptr %i.ut, align 16, !tbaa !25 ; 3 uses
  %i.uu = shufflevector <4 x float> %vector.recur336, <4 x float> %wide.load337, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.uv = shufflevector <4 x float> %vector.recur335, <4 x float> %i.uu, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.uw = shufflevector <4 x float> %vector.recur334, <4 x float> %i.uv, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ux = shufflevector <4 x float> %vector.recur333, <4 x float> %i.uw, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.uy = shufflevector <4 x float> %vector.recur, <4 x float> %i.ux, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.uz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.uu, <4 x float> %wide.load337)
  %i.va = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.uw, <4 x float> %i.va)
  %i.vc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.ux, <4 x float> %i.vb)
  %i.vd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.uy, <4 x float> %i.vc)
  store <4 x float> %i.vd, ptr %i.ut, align 16, !tbaa !25
  %index.next338 = add nuw i64 %index332, 4       ; 2 uses
  %i.ve = icmp eq i64 %index.next338, 864
  br i1 %i.ve, label %pitch_downsample.exit.i.i, label %vector.body331, !llvm.loop !156

pitch_downsample.exit.i.i:                        ; preds = %vector.body331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  %wide.vec313 = load <8 x float>, ptr %i.bi, align 16, !tbaa !25
  %strided.vec314 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315 = load <8 x float>, ptr %i.db, align 16, !tbaa !25
  %strided.vec316 = shufflevector <8 x float> %wide.vec315, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314, ptr %i.m, align 16, !tbaa !25
  store <4 x float> %strided.vec316, ptr %i.dc, align 16, !tbaa !25
  %wide.vec313.1 = load <8 x float>, ptr %i.dd, align 16, !tbaa !25
  %strided.vec314.1 = shufflevector <8 x float> %wide.vec313.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.1 = load <8 x float>, ptr %i.de, align 16, !tbaa !25
  %strided.vec316.1 = shufflevector <8 x float> %wide.vec315.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.1, ptr %i.df, align 16, !tbaa !25
  store <4 x float> %strided.vec316.1, ptr %i.dg, align 16, !tbaa !25
  %wide.vec313.2 = load <8 x float>, ptr %i.dh, align 16, !tbaa !25
  %strided.vec314.2 = shufflevector <8 x float> %wide.vec313.2, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.2 = load <8 x float>, ptr %i.di, align 16, !tbaa !25
  %strided.vec316.2 = shufflevector <8 x float> %wide.vec315.2, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.2, ptr %i.dj, align 16, !tbaa !25
  store <4 x float> %strided.vec316.2, ptr %i.dk, align 16, !tbaa !25
  %wide.vec313.3 = load <8 x float>, ptr %i.dl, align 16, !tbaa !25
  %strided.vec314.3 = shufflevector <8 x float> %wide.vec313.3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.3 = load <8 x float>, ptr %i.dm, align 16, !tbaa !25
  %strided.vec316.3 = shufflevector <8 x float> %wide.vec315.3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.3, ptr %i.dn, align 16, !tbaa !25
  store <4 x float> %strided.vec316.3, ptr %i.do, align 16, !tbaa !25
  %wide.vec313.4 = load <8 x float>, ptr %i.dp, align 16, !tbaa !25
  %strided.vec314.4 = shufflevector <8 x float> %wide.vec313.4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.4 = load <8 x float>, ptr %i.dq, align 16, !tbaa !25
  %strided.vec316.4 = shufflevector <8 x float> %wide.vec315.4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.4, ptr %i.dr, align 16, !tbaa !25
  store <4 x float> %strided.vec316.4, ptr %i.ds, align 16, !tbaa !25
  %wide.vec313.5 = load <8 x float>, ptr %i.dt, align 16, !tbaa !25
  %strided.vec314.5 = shufflevector <8 x float> %wide.vec313.5, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.5 = load <8 x float>, ptr %i.du, align 16, !tbaa !25
  %strided.vec316.5 = shufflevector <8 x float> %wide.vec315.5, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.5, ptr %i.dv, align 16, !tbaa !25
  store <4 x float> %strided.vec316.5, ptr %i.dw, align 16, !tbaa !25
  %wide.vec313.6 = load <8 x float>, ptr %i.dx, align 16, !tbaa !25
  %strided.vec314.6 = shufflevector <8 x float> %wide.vec313.6, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.6 = load <8 x float>, ptr %i.dy, align 16, !tbaa !25
  %strided.vec316.6 = shufflevector <8 x float> %wide.vec315.6, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.6, ptr %i.dz, align 16, !tbaa !25
  store <4 x float> %strided.vec316.6, ptr %i.ea, align 16, !tbaa !25
  %wide.vec313.7 = load <8 x float>, ptr %i.eb, align 16, !tbaa !25
  %strided.vec314.7 = shufflevector <8 x float> %wide.vec313.7, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.7 = load <8 x float>, ptr %i.ec, align 16, !tbaa !25
  %strided.vec316.7 = shufflevector <8 x float> %wide.vec315.7, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.7, ptr %i.ed, align 16, !tbaa !25
  store <4 x float> %strided.vec316.7, ptr %i.ee, align 16, !tbaa !25
  %wide.vec313.8 = load <8 x float>, ptr %i.ef, align 16, !tbaa !25
  %strided.vec314.8 = shufflevector <8 x float> %wide.vec313.8, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.8 = load <8 x float>, ptr %i.eg, align 16, !tbaa !25
  %strided.vec316.8 = shufflevector <8 x float> %wide.vec315.8, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.8, ptr %i.eh, align 16, !tbaa !25
  store <4 x float> %strided.vec316.8, ptr %i.ei, align 16, !tbaa !25
  %wide.vec313.9 = load <8 x float>, ptr %i.ej, align 16, !tbaa !25
  %strided.vec314.9 = shufflevector <8 x float> %wide.vec313.9, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.9 = load <8 x float>, ptr %i.ek, align 16, !tbaa !25
  %strided.vec316.9 = shufflevector <8 x float> %wide.vec315.9, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.9, ptr %i.el, align 16, !tbaa !25
  store <4 x float> %strided.vec316.9, ptr %i.em, align 16, !tbaa !25
  %wide.vec313.10 = load <8 x float>, ptr %i.en, align 16, !tbaa !25
  %strided.vec314.10 = shufflevector <8 x float> %wide.vec313.10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.10 = load <8 x float>, ptr %i.eo, align 16, !tbaa !25
  %strided.vec316.10 = shufflevector <8 x float> %wide.vec315.10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.10, ptr %i.ep, align 16, !tbaa !25
  store <4 x float> %strided.vec316.10, ptr %i.eq, align 16, !tbaa !25
  %wide.vec313.11 = load <8 x float>, ptr %i.er, align 16, !tbaa !25
  %strided.vec314.11 = shufflevector <8 x float> %wide.vec313.11, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.11 = load <8 x float>, ptr %i.es, align 16, !tbaa !25
  %strided.vec316.11 = shufflevector <8 x float> %wide.vec315.11, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.11, ptr %i.et, align 16, !tbaa !25
  store <4 x float> %strided.vec316.11, ptr %i.eu, align 16, !tbaa !25
  %wide.vec313.12 = load <8 x float>, ptr %i.ev, align 16, !tbaa !25
  %strided.vec314.12 = shufflevector <8 x float> %wide.vec313.12, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.12 = load <8 x float>, ptr %i.ew, align 16, !tbaa !25
  %strided.vec316.12 = shufflevector <8 x float> %wide.vec315.12, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.12, ptr %i.ex, align 16, !tbaa !25
  store <4 x float> %strided.vec316.12, ptr %i.ey, align 16, !tbaa !25
  %wide.vec313.13 = load <8 x float>, ptr %i.ez, align 16, !tbaa !25
  %strided.vec314.13 = shufflevector <8 x float> %wide.vec313.13, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.13 = load <8 x float>, ptr %i.fa, align 16, !tbaa !25
  %strided.vec316.13 = shufflevector <8 x float> %wide.vec315.13, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.13, ptr %i.fb, align 16, !tbaa !25
  store <4 x float> %strided.vec316.13, ptr %i.fc, align 16, !tbaa !25
  %wide.vec313.14 = load <8 x float>, ptr %i.fd, align 16, !tbaa !25
  %strided.vec314.14 = shufflevector <8 x float> %wide.vec313.14, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.14 = load <8 x float>, ptr %i.fe, align 16, !tbaa !25
  %strided.vec316.14 = shufflevector <8 x float> %wide.vec315.14, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.14, ptr %i.ff, align 16, !tbaa !25
  store <4 x float> %strided.vec316.14, ptr %i.fg, align 16, !tbaa !25
end_hunk_0
begin_hunk_1_@rnnoise_channels:bb.a
  %indvars.iv42.i228.i.i = phi i64 [ 0, %compute_band_energy.exit.i.i ], [ %indvars.iv.next43.i229.i.i, %.loopexit.i230.i.i ] ; 2 uses
  %indvars.iv.next43.i229.i.i = add nuw nsw i64 %indvars.iv42.i228.i.i, 1 ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i229.i.i
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !142 ; 2 uses
  %i.aqx = zext i8 %i.aqw to i32
  %i.aqy = zext i8 %i.aqu to i32                  ; 2 uses
  %i.aqz = sub nsw i32 %i.aqx, %i.aqy             ; 2 uses
  %i.ara = icmp sgt i32 %i.aqz, 0
  br i1 %i.ara, label %.lr.ph.i232.i.i, label %.loopexit.i230.i.i

.lr.ph.i232.i.i:                                  ; preds = %bb.au
  %i.arb = shl nuw nsw i32 %i.aqz, 2              ; 2 uses
  %i.arc = uitofp nneg i32 %i.arb to float
  %i.ard = shl nuw nsw i32 %i.aqy, 2
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv42.i228.i.i ; 2 uses
  %i.arf = load <2 x float>, ptr %i.are, align 4, !tbaa !25
  %i.arg = zext nneg i32 %i.ard to i64
  %wide.trip.count.i235.i.i = zext nneg i32 %i.arb to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i232.i.i
  %indvars.iv.i236.i.i = phi i64 [ 0, %.lr.ph.i232.i.i ], [ %indvars.iv.next.i237.i.i, %bb.av ] ; 3 uses
  %i.arh = phi <2 x float> [ %i.arf, %.lr.ph.i232.i.i ], [ %i.asb, %bb.av ]
  %i.ari = trunc nuw nsw i64 %indvars.iv.i236.i.i to i32
  %i.arj = uitofp nneg i32 %i.ari to float
  %i.ark = fdiv nsz float %i.arj, %i.arc          ; 2 uses
  %i.arl = add nuw nsw i64 %indvars.iv.i236.i.i, %i.arg ; 2 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.arl ; 2 uses
  %i.arn = load float, ptr %i.arm, align 8, !tbaa !143
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.arl ; 2 uses
  %i.arp = load float, ptr %i.aro, align 8, !tbaa !143
  %i.arq = fmul nsz float %i.arn, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arm, i64 4
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !145
  %i.art = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.aru = load float, ptr %i.art, align 4, !tbaa !145
  %i.arv = call nsz float @llvm.fmuladd.f32(float %i.ars, float %i.aru, float %i.arq)
  %i.arw = fsub nsz float 1.000000e+00, %i.ark
  %i.arx = insertelement <2 x float> poison, float %i.arw, i64 0
  %i.ary = insertelement <2 x float> %i.arx, float %i.ark, i64 1
  %i.arz = insertelement <2 x float> poison, float %i.arv, i64 0
  %i.asa = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ary, <2 x float> %i.asa, <2 x float> %i.arh) ; 2 uses
  %indvars.iv.next.i237.i.i = add nuw nsw i64 %indvars.iv.i236.i.i, 1 ; 2 uses
  %exitcond.not.i238.i.i = icmp eq i64 %indvars.iv.next.i237.i.i, %wide.trip.count.i235.i.i
  br i1 %exitcond.not.i238.i.i, label %..loopexit_crit_edge.i239.i.i, label %bb.av, !llvm.loop !171

compute_band_corr.exit.i.i:                       ; preds = %.loopexit.i230.i.i
  %i.asc = load float, ptr %i.j, align 16, !tbaa !25
  %i.asd = fmul nsz float %i.asc, 2.000000e+00
  store float %i.asd, ptr %i.j, align 16, !tbaa !25
  %i.ase = load float, ptr %i.bq, align 4, !tbaa !25
  %i.asf = fmul nsz float %i.ase, 2.000000e+00
  store float %i.asf, ptr %i.bq, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.x, ptr noundef nonnull align 16 dereferenceable(88) %i.j, i64 88, i1 false), !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  %i.asg = load <4 x float>, ptr %i.x, align 16, !tbaa !25
  %i.ash = load <4 x float>, ptr %i.w, align 16, !tbaa !25
  %i.asi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ash, <4 x float> %.sroa.0.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asj = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asi)
  %i.ask = fdiv nsz <4 x float> %i.asg, %i.asj
  store <4 x float> %i.ask, ptr %i.x, align 16, !tbaa !25
  %i.asl = load <4 x float>, ptr %i.br, align 16, !tbaa !25
  %i.asm = load <4 x float>, ptr %i.bs, align 16, !tbaa !25
  %i.asn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asm, <4 x float> %.sroa.5.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.aso = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asn)
  %i.asp = fdiv nsz <4 x float> %i.asl, %i.aso
  store <4 x float> %i.asp, ptr %i.br, align 16, !tbaa !25
  %i.asq = load <4 x float>, ptr %i.bt, align 16, !tbaa !25
  %i.asr = load <4 x float>, ptr %i.bu, align 16, !tbaa !25
  %i.ass = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asr, <4 x float> %.sroa.7.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.ast = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ass)
  %i.asu = fdiv nsz <4 x float> %i.asq, %i.ast
  store <4 x float> %i.asu, ptr %i.bt, align 16, !tbaa !25
  %i.asv = load <4 x float>, ptr %i.bv, align 16, !tbaa !25
  %i.asw = load <4 x float>, ptr %i.bw, align 16, !tbaa !25
  %i.asx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asw, <4 x float> %.sroa.9.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asy = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asx)
  %i.asz = fdiv nsz <4 x float> %i.asv, %i.asy
  store <4 x float> %i.asz, ptr %i.bv, align 16, !tbaa !25
  %i.ata = load <4 x float>, ptr %i.bx, align 16, !tbaa !25
  %i.atb = load <4 x float>, ptr %i.by, align 16, !tbaa !25
  %i.atc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atb, <4 x float> %.sroa.11.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.atd = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.atc)
  %i.ate = fdiv nsz <4 x float> %i.ata, %i.atd
  store <4 x float> %i.ate, ptr %i.bx, align 16, !tbaa !25
  %i.atf = load <2 x float>, ptr %i.bz, align 16, !tbaa !25
  %i.atg = load <2 x float>, ptr %i.ca, align 16, !tbaa !25
  %i.ath = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> %.sroa.13.0.copyload, <2 x float> splat (float 1.000000e-03))
  %i.ati = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ath)
  %i.atj = fdiv nsz <2 x float> %i.atf, %i.ati
  store <2 x float> %i.atj, ptr %i.bz, align 16, !tbaa !25
  store i64 0, ptr %i.cb, align 8
  call fastcc void @dct(ptr noundef %i.ad, ptr noundef %i.u, ptr noundef nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep326.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa !25
  %i.atk = load <2 x float>, ptr %scevgep326.i.i, align 8, !tbaa !25
  %i.atl = fpext <2 x float> %i.atk to <2 x double>
  %i.atm = fadd nsz <2 x double> %i.atl, <double -1.300000e+00, double -9.000000e-01>
  %i.atn = fptrunc <2 x double> %i.atm to <2 x float>
  store <2 x float> %i.atn, ptr %scevgep326.i.i, align 8, !tbaa !25
  %i.ato = add nsw i32 %storemerge166.i.i.i, -300
  %i.atp = sitofp nsz i32 %i.ato to double
  %i.atq = fmul nnan nsz double %i.atp, 1.000000e-02
  %i.atr = fptrunc nsz double %i.atq to float
  store float %i.atr, ptr %i.cc, align 16, !tbaa !25
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %i.ats = fcmp nsz olt float %i.aul, 4.000000e-02
  br i1 %i.ats, label %.critedge.i, label %bb.ay

bb.ax:                                            ; preds = %bb.ax, %compute_band_corr.exit.i.i
  %indvars.iv.i39.i = phi i64 [ 0, %compute_band_corr.exit.i.i ], [ %indvars.iv.next.i40.i, %bb.ax ] ; 3 uses
  %.0184279.i.i = phi float [ -2.000000e+00, %compute_band_corr.exit.i.i ], [ %.0184..i.i, %bb.ax ] ; 3 uses
  %.0185278.i.i = phi float [ -2.000000e+00, %compute_band_corr.exit.i.i ], [ %i.auk, %bb.ax ]
  %.0187277.i.i = phi float [ 0.000000e+00, %compute_band_corr.exit.i.i ], [ %i.aul, %bb.ax ]
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i39.i
  %i.atu = load float, ptr %i.att, align 4, !tbaa !25 ; 2 uses
  %i.atv = fadd nsz float %i.atu, f0x3C23D70A
  %i.atw = call nsz float @llvm.log10.f32(float %i.atv) ; 2 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i39.i
  %i.aty = fadd nsz float %.0184279.i.i, -7.000000e+00 ; 2 uses
  %i.atz = fpext nsz float %i.aty to double
  %i.aua = fpext nsz float %.0185278.i.i to double
  %i.aub = fadd nsz double %i.aua, -1.500000e+00  ; 4 uses
  %i.auc = fpext nsz float %i.atw to double       ; 2 uses
  %i.aud = fcmp nsz ule double %i.aub, %i.auc     ; 2 uses
  %..i.i = select nsz i1 %i.aud, double %i.auc, double %i.aub
  %i.aue = fcmp nsz olt double %..i.i, %i.atz
  %i.auf = fptrunc nsz double %i.aub to float     ; 2 uses
  %.mux.i.i = select i1 %i.aud, float %i.atw, float %i.auf
  %i.aug = select i1 %i.aue, float %i.aty, float %.mux.i.i ; 5 uses
  store float %i.aug, ptr %i.atx, align 4, !tbaa !25
  %i.auh = fcmp nsz ogt float %.0184279.i.i, %i.aug
  %.0184..i.i = select nsz i1 %i.auh, float %.0184279.i.i, float %i.aug
  %i.aui = fpext nsz float %i.aug to double
  %i.auj = fcmp nsz ogt double %i.aub, %i.aui
  %i.auk = select i1 %i.auj, float %i.auf, float %i.aug
  %i.aul = fadd nsz float %.0187277.i.i, %i.atu   ; 2 uses
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %indvars.iv.next.i40.i, 22
  br i1 %exitcond.not.i41.i, label %bb.aw, label %bb.ax, !llvm.loop !172

.critedge.i:                                      ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br label %.loopexit.i

bb.ay:                                            ; preds = %bb.aw
  store i64 0, ptr %i.cd, align 8
  call fastcc void @dct(ptr noundef %i.ad, ptr noundef nonnull %i.y, ptr noundef %i.r)
  %i.aum = getelementptr inbounds nuw i8, ptr %i.kb, i64 1920 ; 4 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.kb, i64 2624 ; 3 uses
  %i.auo = load i32, ptr %i.aun, align 16, !tbaa !173 ; 5 uses
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr [88 x i8], ptr %i.aum, i64 %i.aup ; 8 uses
  %i.aur = load <4 x float>, ptr %i.y, align 16, !tbaa !25 ; 3 uses
  %i.aus = fadd nsz <4 x float> %i.aur, <float -1.200000e+01, float -4.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 3 uses
  store <4 x float> %i.aus, ptr %i.auq, align 4, !tbaa !25
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 16
  %i.auu = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 4 uses
  store <4 x float> %i.auu, ptr %i.aut, align 4, !tbaa !25
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auq, i64 32
  %i.auw = load <4 x float>, ptr %i.cf, align 16, !tbaa !25
  store <4 x float> %i.auw, ptr %i.auv, align 4, !tbaa !25
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auq, i64 48
  %i.auy = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  store <4 x float> %i.auy, ptr %i.aux, align 4, !tbaa !25
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auq, i64 64
  %i.ava = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  store <4 x float> %i.ava, ptr %i.auz, align 4, !tbaa !25
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auq, i64 80
  %i.avc = load <2 x float>, ptr %i.ci, align 16, !tbaa !25
  store <2 x float> %i.avc, ptr %i.avb, align 4, !tbaa !25
  %i.avd = icmp slt i32 %i.auo, 1
  %i.ave = getelementptr i8, ptr %i.auq, i64 616
  %i.avf = zext nneg i32 %i.auo to i64
  %i.avg = getelementptr [88 x i8], ptr %i.aum, i64 %i.avf ; 2 uses
  %i.avh = getelementptr i8, ptr %i.avg, i64 -88
  %i.avi = select i1 %i.avd, ptr %i.ave, ptr %i.avh ; 3 uses
  %i.avj = icmp slt i32 %i.auo, 2
  %i.avk = getelementptr i8, ptr %i.auq, i64 528
  %i.avl = getelementptr i8, ptr %i.avg, i64 -176
  %i.avm = select i1 %i.avj, ptr %i.avk, ptr %i.avl ; 3 uses
  %i.avn = add nsw i32 %i.auo, 1                  ; 2 uses
  store i32 %i.avn, ptr %i.aun, align 16, !tbaa !173
  %i.avo = load <4 x float>, ptr %i.avm, align 4, !tbaa !25 ; 4 uses
  %i.avp = load <4 x float>, ptr %i.avi, align 4, !tbaa !25 ; 3 uses
  %i.avq = shufflevector <4 x float> %i.aus, <4 x float> %i.aur, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.avr = fadd nsz <4 x float> %i.avq, %i.avp
  %i.avs = fadd nsz <4 x float> %i.avr, %i.avo
  store <4 x float> %i.avs, ptr %i.y, align 16, !tbaa !25
  %i.avt = fsub nsz <4 x float> %i.avq, %i.avo
  store <4 x float> %i.avt, ptr %i.cj, align 8, !tbaa !25
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avi, i64 16
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avi, i64 20
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avm, i64 20
  %25 = shufflevector <4 x float> %i.auu, <4 x float> %i.avo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %26 = load <2 x float>, ptr %i.avu, align 4, !tbaa !25 ; 2 uses
  %27 = load float, ptr %i.avw, align 4, !tbaa !25
  %i.avy = load <2 x float>, ptr %i.avv, align 4, !tbaa !25 ; 2 uses
  %i.avz = load float, ptr %i.avx, align 4, !tbaa !25
  %28 = shufflevector <4 x float> %i.auu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %29 = insertelement <2 x float> %26, float %27, i64 1
  %30 = fadd nsz <2 x float> %28, %29
  %31 = insertelement <2 x float> %i.avy, float %i.avz, i64 1
  %32 = fadd nsz <2 x float> %30, %31
  store <2 x float> %32, ptr %i.ce, align 16, !tbaa !25
  %33 = shufflevector <2 x float> %i.avy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %34 = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avp, <4 x float> splat (float -2.000000e+00), <4 x float> %i.aus)
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %36 = fsub nsz <4 x float> %25, %35
  %37 = fadd nsz <4 x float> %25, %35
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %38, ptr %i.cl, align 8, !tbaa !25
  %i.awa = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awb = shufflevector <4 x float> %i.avp, <4 x float> %i.awa, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awc = shufflevector <4 x float> %i.aur, <4 x float> %i.auu, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awb, <4 x float> splat (float -2.000000e+00), <4 x float> %i.awc)
  %39 = shufflevector <4 x float> %i.avo, <4 x float> %33, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awe = fadd nsz <4 x float> %i.awd, %39
  store <4 x float> %i.awe, ptr %i.ck, align 8, !tbaa !25
  %i.awf = icmp eq i32 %i.avn, 8
  br i1 %i.awf, label %bb.az, label %.preheader246.i.i.preheader

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.aun, align 16, !tbaa !173
  br label %.preheader246.i.i.preheader

.preheader246.i.i.preheader:                      ; preds = %bb.az, %bb.ay
  br label %.preheader246.i.i

.preheader246.i.i:                                ; preds = %.preheader246.i.i.preheader, %bb.ba
  %indvars.iv345.i.i = phi i64 [ %indvars.iv.next346.i.i, %bb.ba ], [ 0, %.preheader246.i.i.preheader ] ; 3 uses
  %.0186287.i.i = phi float [ %i.bar, %bb.ba ], [ 0.000000e+00, %.preheader246.i.i.preheader ]
  %i.awg = getelementptr inbounds nuw [88 x i8], ptr %i.aum, i64 %indvars.iv345.i.i ; 22 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 28
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  %.phi.trans.insert349.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 32
  %.pre350.i.i = load float, ptr %.phi.trans.insert349.i.i, align 4, !tbaa !25
  %.phi.trans.insert351.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 36
  %.pre352.i.i = load float, ptr %.phi.trans.insert351.i.i, align 4, !tbaa !25
  %.phi.trans.insert353.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 40
  %.pre354.i.i = load float, ptr %.phi.trans.insert353.i.i, align 4, !tbaa !25
  %.phi.trans.insert355.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 44
  %.pre356.i.i = load float, ptr %.phi.trans.insert355.i.i, align 4, !tbaa !25
  %.phi.trans.insert357.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 48
  %.pre358.i.i = load float, ptr %.phi.trans.insert357.i.i, align 4, !tbaa !25
  %.phi.trans.insert359.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 52
  %.pre360.i.i = load float, ptr %.phi.trans.insert359.i.i, align 4, !tbaa !25
  %.phi.trans.insert361.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 56
  %.pre362.i.i = load float, ptr %.phi.trans.insert361.i.i, align 4, !tbaa !25
  %.phi.trans.insert363.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 60
  %.pre364.i.i = load float, ptr %.phi.trans.insert363.i.i, align 4, !tbaa !25
  %.phi.trans.insert365.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 64
  %.pre366.i.i = load float, ptr %.phi.trans.insert365.i.i, align 4, !tbaa !25
  %.phi.trans.insert367.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 68
  %.pre368.i.i = load float, ptr %.phi.trans.insert367.i.i, align 4, !tbaa !25
  %.phi.trans.insert369.i.i = getelementptr inbounds nuw i8, ptr %i.awg, i64 72
  %.pre370.i.i = load float, ptr %.phi.trans.insert369.i.i, align 4, !tbaa !25
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !25
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awg, i64 4
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !25
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awg, i64 8
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !25
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awg, i64 12
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !25
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !25
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awg, i64 20
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !25
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awg, i64 24
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !25
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awg, i64 76
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !25
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awg, i64 80
  %i.awx = load float, ptr %i.aww, align 4, !tbaa !25
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awg, i64 84
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !25
  br label %.preheader.i.i

compute_frame_features.exit.i:                    ; preds = %bb.ba
  %i.axa = fmul nsz float %i.bar, 1.250000e-01
  %i.axb = fpext nsz float %i.axa to double
  %i.axc = fadd nsz double %i.axb, -2.100000e+00
  %i.axd = fptrunc nsz double %i.axc to float
  store float %i.axd, ptr %i.cm, align 4, !tbaa !25
  %i.axe = icmp eq i32 %i.ki, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br i1 %i.axe, label %vector.ph280, label %.loopexit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader246.i.i
  %indvars.iv341.i.i = phi i64 [ 0, %.preheader246.i.i ], [ %indvars.iv.next342.i.i, %.preheader.i.i ] ; 3 uses
  %.0176285.i.i = phi float [ f0x58635FA9, %.preheader246.i.i ], [ %.1.i.i, %.preheader.i.i ] ; 2 uses
  %i.axf = getelementptr inbounds nuw [88 x i8], ptr %i.aum, i64 %indvars.iv341.i.i ; 22 uses
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !25
  %i.axh = fsub nsz float %i.awh, %i.axg          ; 2 uses
  %i.axi = fmul nsz float %i.axh, %i.axh
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axf, i64 4
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !25
  %i.axl = fsub nsz float %i.awj, %i.axk          ; 2 uses
  %i.axm = call nsz float @llvm.fmuladd.f32(float %i.axl, float %i.axl, float %i.axi)
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.axo = load float, ptr %i.axn, align 4, !tbaa !25
  %i.axp = fsub nsz float %i.awl, %i.axo          ; 2 uses
  %i.axq = call nsz float @llvm.fmuladd.f32(float %i.axp, float %i.axp, float %i.axm)
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axf, i64 12
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !25
  %i.axt = fsub nsz float %i.awn, %i.axs          ; 2 uses
  %i.axu = call nsz float @llvm.fmuladd.f32(float %i.axt, float %i.axt, float %i.axq)
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !25
  %i.axx = fsub nsz float %i.awp, %i.axw          ; 2 uses
  %i.axy = call nsz float @llvm.fmuladd.f32(float %i.axx, float %i.axx, float %i.axu)
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axf, i64 20
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !25
  %i.ayb = fsub nsz float %i.awr, %i.aya          ; 2 uses
  %i.ayc = call nsz float @llvm.fmuladd.f32(float %i.ayb, float %i.ayb, float %i.axy)
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !25
  %i.ayf = fsub nsz float %i.awt, %i.aye          ; 2 uses
  %i.ayg = call nsz float @llvm.fmuladd.f32(float %i.ayf, float %i.ayf, float %i.ayc)
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axf, i64 28
  %i.ayi = load float, ptr %i.ayh, align 4, !tbaa !25
  %i.ayj = fsub nsz float %.pre.i.i, %i.ayi       ; 2 uses
  %i.ayk = call nsz float @llvm.fmuladd.f32(float %i.ayj, float %i.ayj, float %i.ayg)
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axf, i64 32
  %i.aym = load float, ptr %i.ayl, align 4, !tbaa !25
  %i.ayn = fsub nsz float %.pre350.i.i, %i.aym    ; 2 uses
  %i.ayo = call nsz float @llvm.fmuladd.f32(float %i.ayn, float %i.ayn, float %i.ayk)
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axf, i64 36
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !25
  %i.ayr = fsub nsz float %.pre352.i.i, %i.ayq    ; 2 uses
  %i.ays = call nsz float @llvm.fmuladd.f32(float %i.ayr, float %i.ayr, float %i.ayo)
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axf, i64 40
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !25
  %i.ayv = fsub nsz float %.pre354.i.i, %i.ayu    ; 2 uses
  %i.ayw = call nsz float @llvm.fmuladd.f32(float %i.ayv, float %i.ayv, float %i.ays)
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axf, i64 44
  %i.ayy = load float, ptr %i.ayx, align 4, !tbaa !25
  %i.ayz = fsub nsz float %.pre356.i.i, %i.ayy    ; 2 uses
  %i.aza = call nsz float @llvm.fmuladd.f32(float %i.ayz, float %i.ayz, float %i.ayw)
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axf, i64 48
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !25
  %i.azd = fsub nsz float %.pre358.i.i, %i.azc    ; 2 uses
  %i.aze = call nsz float @llvm.fmuladd.f32(float %i.azd, float %i.azd, float %i.aza)
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axf, i64 52
  %i.azg = load float, ptr %i.azf, align 4, !tbaa !25
  %i.azh = fsub nsz float %.pre360.i.i, %i.azg    ; 2 uses
  %i.azi = call nsz float @llvm.fmuladd.f32(float %i.azh, float %i.azh, float %i.aze)
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axf, i64 56
  %i.azk = load float, ptr %i.azj, align 4, !tbaa !25
  %i.azl = fsub nsz float %.pre362.i.i, %i.azk    ; 2 uses
  %i.azm = call nsz float @llvm.fmuladd.f32(float %i.azl, float %i.azl, float %i.azi)
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axf, i64 60
  %i.azo = load float, ptr %i.azn, align 4, !tbaa !25
  %i.azp = fsub nsz float %.pre364.i.i, %i.azo    ; 2 uses
  %i.azq = call nsz float @llvm.fmuladd.f32(float %i.azp, float %i.azp, float %i.azm)
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axf, i64 64
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !25
  %i.azt = fsub nsz float %.pre366.i.i, %i.azs    ; 2 uses
  %i.azu = call nsz float @llvm.fmuladd.f32(float %i.azt, float %i.azt, float %i.azq)
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axf, i64 68
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !25
  %i.azx = fsub nsz float %.pre368.i.i, %i.azw    ; 2 uses
  %i.azy = call nsz float @llvm.fmuladd.f32(float %i.azx, float %i.azx, float %i.azu)
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axf, i64 72
  %i.baa = load float, ptr %i.azz, align 4, !tbaa !25
  %i.bab = fsub nsz float %.pre370.i.i, %i.baa    ; 2 uses
  %i.bac = call nsz float @llvm.fmuladd.f32(float %i.bab, float %i.bab, float %i.azy)
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axf, i64 76
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !25
  %i.baf = fsub nsz float %i.awv, %i.bae          ; 2 uses
  %i.bag = call nsz float @llvm.fmuladd.f32(float %i.baf, float %i.baf, float %i.bac)
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axf, i64 80
  %i.bai = load float, ptr %i.bah, align 4, !tbaa !25
  %i.baj = fsub nsz float %i.awx, %i.bai          ; 2 uses
  %i.bak = call nsz float @llvm.fmuladd.f32(float %i.baj, float %i.baj, float %i.bag)
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axf, i64 84
  %i.bam = load float, ptr %i.bal, align 4, !tbaa !25
  %i.ban = fsub nsz float %i.awz, %i.bam          ; 2 uses
  %i.bao = call nsz float @llvm.fmuladd.f32(float %i.ban, float %i.ban, float %i.bak) ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv341.i.i, %indvars.iv345.i.i
  %i.bap = fcmp nsz ule float %.0176285.i.i, %i.bao
  %i.baq = select i1 %.not.i.i, i1 true, i1 %i.bap
  %.1.i.i = select nsz i1 %i.baq, float %.0176285.i.i, float %i.bao ; 2 uses
  %indvars.iv.next342.i.i = add nuw nsw i64 %indvars.iv341.i.i, 1 ; 2 uses
  %exitcond344.not.i.i = icmp eq i64 %indvars.iv.next342.i.i, 8
  br i1 %exitcond344.not.i.i, label %bb.ba, label %.preheader.i.i, !llvm.loop !174

bb.ba:                                            ; preds = %.preheader.i.i
  %i.bar = fadd nsz float %.0186287.i.i, %.1.i.i  ; 2 uses
  %indvars.iv.next346.i.i = add nuw nsw i64 %indvars.iv345.i.i, 1 ; 2 uses
  %exitcond348.not.i.i = icmp eq i64 %indvars.iv.next346.i.i, 8
  br i1 %exitcond348.not.i.i, label %compute_frame_features.exit.i, label %.preheader246.i.i, !llvm.loop !175

vector.ph280:                                     ; preds = %compute_frame_features.exit.i
  %i.bas = getelementptr inbounds nuw i8, ptr %i.kb, i64 20408 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.bat = getelementptr inbounds nuw i8, ptr %i.kb, i64 20432 ; 6 uses
  %i.bau = load ptr, ptr %i.bat, align 16, !tbaa !66
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !83
  call fastcc void @compute_dense(ptr noundef %i.baw, ptr noundef %i.g, ptr noundef nonnull readonly %i.y)
  %i.bax = load ptr, ptr %i.bat, align 16, !tbaa !66
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 24
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !84
  %i.bba = load ptr, ptr %i.bas, align 8, !tbaa !72
  call fastcc void @compute_gru(ptr noundef readonly %i.ad, ptr noundef %i.baz, ptr noundef %i.bba, ptr noundef %i.g)
  %i.bbb = load ptr, ptr %i.bat, align 16, !tbaa !66
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 88
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !88
  %i.bbe = load ptr, ptr %i.bas, align 8, !tbaa !72
  call fastcc void @compute_dense(ptr noundef %i.bbd, ptr noundef nonnull %i.ab, ptr noundef %i.bbe)
  %i.bbf = load ptr, ptr %i.bat, align 16, !tbaa !66 ; 3 uses
  %i.bbg = load i32, ptr %i.bbf, align 8, !tbaa !92
end_hunk_1
