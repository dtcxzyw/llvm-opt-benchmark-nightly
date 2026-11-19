Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a
  %i.ky = load i32, ptr %i.kx, align 64, !tbaa !104, !noalias !337
  %i.kz = uitofp reassoc nsz arcp contract afn i64 %i.kw to float
  %i.la = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kz
  %i.lb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.la)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.le = icmp ult i32 %i.ax, 3
  %i.lf = zext nneg i32 %i.ax to i64
  %switch.gep1477 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.26, i64 %i.lf
  %i.lg = zext nneg i32 %i.ax to i64
  %switch.gep1479 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.lg
  %i.lh = zext nneg i32 %i.ax to i64
  %switch.gep1481 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.28, i64 %i.lh
  %i.li = zext nneg i32 %i.ax to i64
  %switch.gep1483 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.29, i64 %i.li
  %i.lj = zext nneg i32 %i.ax to i64
  %switch.gep1485 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.lj
  %i.lk = zext nneg i32 %i.ax to i64
  %switch.gep1487 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.31, i64 %i.lk
  %i.ll = zext nneg i32 %i.ax to i64
  %switch.gep1489.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.32, i64 %i.ll
  %i.lm = zext nneg i32 %i.ax to i64
  %switch.gep1491.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.lm
  %i.ln = zext nneg i32 %i.ax to i64
  %switch.gep1493.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.34, i64 %i.ln
  br label %bb.u

bb.p:                                             ; preds = %convert_any_LMS_to_XYZ.exit297.i, %.lr.ph.i
  %.0264232.i = phi i64 [ 0, %.lr.ph.i ], [ %i.pj, %convert_any_LMS_to_XYZ.exit297.i ] ; 2 uses
  %.idx278.i = shl i64 %.0264232.i, 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx278.i ; 13 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !12, !noalias !337 ; 5 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt float %i.lq, f0x37800000 ; 2 uses
  br i1 %i.lr, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.p
  %i.ls = load float, ptr %i.lo, align 16, !tbaa !12, !noalias !337
  %i.lt = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lu = insertelement <2 x float> %i.lt, float %i.lq, i64 1
  %i.lv = fmul reassoc nsz arcp contract afn <2 x float> %i.lu, splat (float 6.553600e+04)
  store <2 x float> %i.lv, ptr %i.lo, align 16, !tbaa !12, !noalias !337
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.lx = load float, ptr %i.lw, align 8, !tbaa !12, !noalias !337
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, 6.553600e+04
  store float %i.ly, ptr %i.lw, align 8, !tbaa !12, !noalias !337
  br label %downscale_vector.exit.i

.split.us.preheader.i.i:                          ; preds = %bb.p
  %i.lz = fadd reassoc nsz arcp contract afn float %i.lq, f0x37800000 ; 2 uses
  %i.ma = load float, ptr %i.lo, align 16, !tbaa !12, !noalias !337
  %i.mb = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %i.lq, i64 1
  %i.md = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = fdiv reassoc nsz arcp contract afn <2 x float> %i.mc, %i.me
  store <2 x float> %i.mf, ptr %i.lo, align 16, !tbaa !12, !noalias !337
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.mh = load float, ptr %i.mg, align 8, !tbaa !12, !noalias !337
  %i.mi = fdiv reassoc nsz arcp contract afn float %i.mh, %i.lz
  store float %i.mi, ptr %i.mg, align 8, !tbaa !12, !noalias !337
  br label %downscale_vector.exit.i

downscale_vector.exit.i:                          ; preds = %.split.us.preheader.i.i, %.split.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !337
  call fastcc void @convert_any_XYZ_to_LMS(ptr noundef nonnull %i.lo, ptr noundef nonnull %i.e, i32 noundef %i.ax), !noalias !337
  %.sroa.0279.0.copyload.i = load float, ptr %i.e, align 16, !tbaa !12, !noalias !337 ; 2 uses
  switch i32 %i.ax, label %.preheader.preheader.i [
    i32 2, label %bb.q
    i32 0, label %bb.r
    i32 1, label %.thread205.i
    i32 3, label %.thread204.i
  ]

.preheader.preheader.i:                           ; preds = %downscale_vector.exit.i
  %i.mj = load <2 x float>, ptr %i.e, align 16, !tbaa !12, !noalias !337
  %.sroa.17.0.copyload.i = load float, ptr %i.jz, align 8, !tbaa !12, !noalias !337
  br label %convert_any_LMS_to_XYZ.exit297.i

bb.q:                                             ; preds = %downscale_vector.exit.i
  %i.mk = load float, ptr %i.jy, align 4, !tbaa !12, !noalias !337
  %i.ml = load float, ptr %i.jz, align 8, !tbaa !12, !noalias !337
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.kh ; 3 uses
  %i.mn = fcmp reassoc nsz arcp contract afn ogt float %i.mm, 0.000000e+00
  %i.mo = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mm, float %i.jv)
  %i.mp = select reassoc nsz arcp contract afn i1 %i.mn, float %i.mo, float %i.mm
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, f0x3F51729B
  br label %.thread.i

bb.r:                                             ; preds = %downscale_vector.exit.i
  %i.mr = load float, ptr %i.jy, align 4, !tbaa !12, !noalias !337
  %i.ms = load float, ptr %i.jz, align 8, !tbaa !12, !noalias !337
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, f0x3F51729B
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %i.kg
  br label %.thread.i

.thread205.i:                                     ; preds = %downscale_vector.exit.i
  %i.mv = load float, ptr %i.jz, align 8, !tbaa !12, !noalias !337
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, 8.330360e-01
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.ke ; 3 uses
  %i.my = load <2 x float>, ptr %i.e, align 16, !tbaa !12, !noalias !337
  %i.mz = fmul reassoc nsz arcp contract afn <2 x float> %i.my, <float 9.945350e-01, float f0x3F8020AB>
  %i.na = fmul reassoc nsz arcp contract afn <2 x float> %i.mz, %i.kf ; 4 uses
  %i.nb = fmul reassoc nsz arcp contract afn <2 x float> %i.na, <float 3.875200e-01, float f0xBF8170CE>
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nd = fmul reassoc nsz arcp contract afn <2 x float> %i.na, <float f0x3FEE583F, float 6.214470e-01>
  %i.ne = fadd reassoc nsz arcp contract afn <2 x float> %i.nd, %i.nc
  %i.nf = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fmul reassoc nsz arcp contract afn <2 x float> %i.ng, <float 1.491870e-01, float -8.974000e-03>
  %i.ni = fadd reassoc nsz arcp contract afn <2 x float> %i.ne, %i.nh
  %i.nj = extractelement <2 x float> %i.na, i64 0 ; 2 uses
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, -1.584100e-02
  %i.nl = extractelement <2 x float> %i.na, i64 1 ; 2 uses
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, -3.412300e-02
  %i.nn = fadd reassoc nsz arcp contract afn float %i.nm, %i.nk
  %i.no = fmul reassoc nsz arcp contract afn float %i.mx, f0x3F866538
  %i.np = fadd reassoc nsz arcp contract afn float %i.nn, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store float %i.np, ptr %i.nq, align 8, !tbaa !12, !noalias !337
  %i.nr = fadd reassoc nsz arcp contract afn float %i.nl, %i.nj
  %i.ns = fadd reassoc nsz arcp contract afn float %i.nr, %i.mx
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread204.i:                                     ; preds = %downscale_vector.exit.i
  %i.nu = fmul reassoc nsz arcp contract afn float %.sroa.0279.0.copyload.i, 9.642120e-01
  %i.nv = load float, ptr %i.jy, align 4, !tbaa !12, !noalias !337
  %i.nw = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.nv, i64 1
  %i.ny = fmul reassoc nsz arcp contract afn <2 x float> %i.nx, %i.kc
  %i.nz = load float, ptr %i.jz, align 8, !tbaa !12, !noalias !337
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nz, f0x3F533F8A
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, %i.kd
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.sroa.17.0.i = phi nsz float [ %i.mu, %bb.r ], [ %i.mq, %bb.q ] ; 3 uses
  %.pn.in.i = phi float [ %i.mr, %bb.r ], [ %i.mk, %bb.q ]
  %i.oc = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %.pn.in.i, i64 1
  %i.oe = fmul reassoc nsz arcp contract afn <2 x float> %i.od, <float 9.960780e-01, float f0x3F82A487>
  %i.of = insertelement <2 x float> poison, float %.sroa.17.0.i, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = fmul reassoc nsz arcp contract afn <2 x float> %i.og, <float 1.600000e-01, float 4.930000e-02>
  %i.oi = fmul reassoc nsz arcp contract afn <2 x float> %i.oe, %i.ki ; 4 uses
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul reassoc nsz arcp contract afn <2 x float> %i.oj, <float f0x3F7CAC08, float 4.323000e-01>
  %i.ol = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.om = fmul reassoc nsz arcp contract afn <2 x float> %i.ol, <float -1.471000e-01, float 5.184000e-01>
  %i.on = fadd reassoc nsz arcp contract afn <2 x float> %i.oh, %i.ok
  %i.oo = fadd reassoc nsz arcp contract afn <2 x float> %i.on, %i.om
  %i.op = extractelement <2 x float> %i.oi, i64 0 ; 2 uses
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, -8.500000e-03
  %i.or = extractelement <2 x float> %i.oi, i64 1 ; 2 uses
  %i.os = fmul reassoc nsz arcp contract afn float %i.or, 4.000000e-02
  %i.ot = fmul reassoc nsz arcp contract afn float %.sroa.17.0.i, 9.685000e-01
  %i.ou = fadd reassoc nsz arcp contract afn float %i.ot, %i.oq
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, %i.os
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store float %i.ov, ptr %i.ow, align 8, !tbaa !12, !noalias !337
  %i.ox = fadd reassoc nsz arcp contract afn float %.sroa.17.0.i, %i.op
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ox, %i.or
  %i.oz = fmul reassoc nsz arcp contract afn float %i.oy, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit297.i

convert_any_LMS_to_XYZ.exit297.i:                 ; preds = %.thread.i, %.thread204.i, %.thread205.i, %.preheader.preheader.i
  %.sink11.i295.i = phi i64 [ 12, %.thread.i ], [ 12, %.thread205.i ], [ 8, %.preheader.preheader.i ], [ 8, %.thread204.i ]
  %.sink.i296.i = phi float [ %i.oz, %.thread.i ], [ %i.nt, %.thread205.i ], [ %.sroa.17.0.copyload.i, %.preheader.preheader.i ], [ %i.ob, %.thread204.i ]
  %i.pa = phi <2 x float> [ %i.oo, %.thread.i ], [ %i.ni, %.thread205.i ], [ %i.mj, %.preheader.preheader.i ], [ %i.ny, %.thread204.i ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.sink11.i295.i
  store float %.sink.i296.i, ptr %i.pb, align 4, !tbaa !12, !noalias !337
  %i.pc = fadd reassoc nnan nsz arcp contract afn float %i.lq, f0x37800000
  %.sink22.i.i = select i1 %i.lr, float %i.pc, float f0x37800000 ; 2 uses
  %i.pd = insertelement <2 x float> poison, float %.sink22.i.i, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul reassoc nsz arcp contract afn <2 x float> %i.pa, %i.pe
  store <2 x float> %i.pf, ptr %i.lo, align 16, !tbaa !12, !noalias !337
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 8, !tbaa !12, !noalias !337
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ph, %.sink22.i.i
  store float %i.pi, ptr %i.pg, align 8, !tbaa !12, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31, !noalias !337
  %i.pj = add nuw i64 %.0264232.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.pj, %i.jx
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.p

._crit_edge241.i:                                 ; preds = %bb.as
  %i.pk = mul i64 %i.kw, 3                        ; 128 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.pl = icmp ult i64 %i.pk, 9
  br i1 %i.pl, label %._crit_edge241.thread.i, label %bb.s

._crit_edge241.thread.i:                          ; preds = %._crit_edge.i, %._crit_edge241.i
  %i.pm = phi i64 [ %i.pk, %._crit_edge241.i ], [ 0, %._crit_edge.i ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.314, i64 noundef %i.pm, i64 noundef 9) #31, !noalias !343
  br label %pseudo_solve_gaussian.exit.i

bb.s:                                             ; preds = %._crit_edge241.i
  %i.pn = tail call ptr @dt_alloc_aligned(i64 noundef 648) #31, !noalias !343 ; 101 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pn, i64 64) ]
  %i.po = tail call ptr @dt_alloc_aligned(i64 noundef 72) #31, !noalias !343 ; 32 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.po, i64 64) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %min.iters.check812 = icmp ult i64 %i.pk, 16
  %i.pp = and i64 %i.pk, 12
  %n.vec814 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n847 = icmp eq i64 %i.pk, %n.vec814
  %min.epilog.iters.check851 = icmp eq i64 %i.pp, 0
  %n.vec855 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n870 = icmp eq i64 %i.pk, %n.vec855
  %min.iters.check745 = icmp ult i64 %i.pk, 16
  %i.pq = and i64 %i.pk, 12
  %n.vec747 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n784 = icmp eq i64 %i.pk, %n.vec747
  %min.epilog.iters.check788 = icmp eq i64 %i.pq, 0
  %n.vec792 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n808 = icmp eq i64 %i.pk, %n.vec792
  %min.iters.check678 = icmp ult i64 %i.pk, 16
  %i.pr = and i64 %i.pk, 12
  %n.vec680 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n717 = icmp eq i64 %i.pk, %n.vec680
  %min.epilog.iters.check721 = icmp eq i64 %i.pr, 0
  %n.vec725 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n741 = icmp eq i64 %i.pk, %n.vec725
  %min.iters.check611 = icmp ult i64 %i.pk, 16
  %i.ps = and i64 %i.pk, 12
  %n.vec613 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n650 = icmp eq i64 %i.pk, %n.vec613
  %min.epilog.iters.check654 = icmp eq i64 %i.ps, 0
  %n.vec658 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n674 = icmp eq i64 %i.pk, %n.vec658
  %min.iters.check544 = icmp ult i64 %i.pk, 16
  %i.pt = and i64 %i.pk, 12
  %n.vec546 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n583 = icmp eq i64 %i.pk, %n.vec546
  %min.epilog.iters.check587 = icmp eq i64 %i.pt, 0
  %n.vec591 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n607 = icmp eq i64 %i.pk, %n.vec591
  %min.iters.check477 = icmp ult i64 %i.pk, 16
  %i.pu = and i64 %i.pk, 12
  %n.vec479 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n516 = icmp eq i64 %i.pk, %n.vec479
  %min.epilog.iters.check520 = icmp eq i64 %i.pu, 0
  %n.vec524 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n540 = icmp eq i64 %i.pk, %n.vec524
  %min.iters.check410 = icmp ult i64 %i.pk, 16
  %i.pv = and i64 %i.pk, 12
  %n.vec412 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n449 = icmp eq i64 %i.pk, %n.vec412
  %min.epilog.iters.check453 = icmp eq i64 %i.pv, 0
  %n.vec457 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n473 = icmp eq i64 %i.pk, %n.vec457
  %min.iters.check343 = icmp ult i64 %i.pk, 16
  %i.pw = and i64 %i.pk, 12
  %n.vec345 = and i64 %i.pk, -16                  ; 4 uses
  %cmp.n382 = icmp eq i64 %i.pk, %n.vec345
  %min.epilog.iters.check386 = icmp eq i64 %i.pw, 0
  %n.vec390 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n406 = icmp eq i64 %i.pk, %n.vec390
  %min.iters.check = icmp ult i64 %i.pk, 16
  %i.px = and i64 %i.pk, 12
  %n.vec = and i64 %i.pk, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.pk, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.px, 0
  %n.vec329 = and i64 %i.pk, -4                   ; 3 uses
  %cmp.n340 = icmp eq i64 %i.pk, %n.vec329
  br label %vector.main.loop.iter.check811

vector.main.loop.iter.check811:                   ; preds = %bb.s, %.loopexit
  %.02431.i.i.i = phi i64 [ 0, %bb.s ], [ %i.aas, %.loopexit ] ; 56 uses
  br i1 %min.iters.check812, label %vec.epilog.ph852, label %vector.body815

vector.body815:                                   ; preds = %vector.main.loop.iter.check811, %vector.body815
  %index816 = phi i64 [ %index.next841, %vector.body815 ], [ 0, %vector.main.loop.iter.check811 ]
  %vec.ind817 = phi <4 x i64> [ %vec.ind.next842, %vector.body815 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check811 ] ; 5 uses
  %vec.phi818 = phi <4 x double> [ %i.qj, %vector.body815 ], [ zeroinitializer, %vector.main.loop.iter.check811 ]
  %vec.phi819 = phi <4 x double> [ %i.qk, %vector.body815 ], [ zeroinitializer, %vector.main.loop.iter.check811 ]
  %vec.phi820 = phi <4 x double> [ %i.ql, %vector.body815 ], [ zeroinitializer, %vector.main.loop.iter.check811 ]
  %vec.phi821 = phi <4 x double> [ %i.qm, %vector.body815 ], [ zeroinitializer, %vector.main.loop.iter.check811 ]
  %i.py = mul <4 x i64> %vec.ind817, splat (i64 72)
  %i.pz = mul <4 x i64> %vec.ind817, splat (i64 72)
  %i.qa = add <4 x i64> %i.pz, splat (i64 288)
  %i.qb = mul <4 x i64> %vec.ind817, splat (i64 72)
  %i.qc = add <4 x i64> %i.qb, splat (i64 576)
  %i.qd = mul <4 x i64> %vec.ind817, splat (i64 72)
  %i.qe = add <4 x i64> %i.qd, splat (i64 864)
  %wide.gep825 = getelementptr i8, ptr %i.kt, <4 x i64> %i.py ; 2 uses
  %wide.gep826 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qa ; 2 uses
  %wide.gep827 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qc ; 2 uses
  %wide.gep828 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qe ; 2 uses
  %wide.gep829 = getelementptr [8 x i8], <4 x ptr> %wide.gep825, i64 %.02431.i.i.i
  %wide.gep830 = getelementptr [8 x i8], <4 x ptr> %wide.gep826, i64 %.02431.i.i.i
  %wide.gep831 = getelementptr [8 x i8], <4 x ptr> %wide.gep827, i64 %.02431.i.i.i
  %wide.gep832 = getelementptr [8 x i8], <4 x ptr> %wide.gep828, i64 %.02431.i.i.i
  %wide.masked.gather833 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep829, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather834 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep830, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather835 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep831, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather836 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep832, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather837 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep825, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather838 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep826, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather839 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep827, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather840 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep828, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %i.qf = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather837, %wide.masked.gather833
  %i.qg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather838, %wide.masked.gather834
  %i.qh = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather839, %wide.masked.gather835
  %i.qi = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather840, %wide.masked.gather836
  %i.qj = fadd reassoc nsz arcp contract afn <4 x double> %i.qf, %vec.phi818 ; 2 uses
  %i.qk = fadd reassoc nsz arcp contract afn <4 x double> %i.qg, %vec.phi819 ; 2 uses
  %i.ql = fadd reassoc nsz arcp contract afn <4 x double> %i.qh, %vec.phi820 ; 2 uses
  %i.qm = fadd reassoc nsz arcp contract afn <4 x double> %i.qi, %vec.phi821 ; 2 uses
  %index.next841 = add nuw i64 %index816, 16      ; 2 uses
  %vec.ind.next842 = add nuw <4 x i64> %vec.ind817, splat (i64 16)
  %i.qn = icmp eq i64 %index.next841, %n.vec814
  br i1 %i.qn, label %middle.block843, label %vector.body815, !llvm.loop !258

middle.block843:                                  ; preds = %vector.body815
  %bin.rdx844 = fadd reassoc nsz arcp contract afn <4 x double> %i.qk, %i.qj
  %bin.rdx845 = fadd reassoc nsz arcp contract afn <4 x double> %i.ql, %bin.rdx844
  %bin.rdx846 = fadd reassoc nsz arcp contract afn <4 x double> %i.qm, %bin.rdx845
  %i.qo = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx846) ; 3 uses
  br i1 %cmp.n847, label %iter.check785, label %vec.epilog.iter.check849

vec.epilog.iter.check849:                         ; preds = %middle.block843
  br i1 %min.epilog.iters.check851, label %vec.epilog.scalar.ph850.preheader, label %vec.epilog.ph852, !prof !347

vec.epilog.ph852:                                 ; preds = %vector.main.loop.iter.check811, %vec.epilog.iter.check849
  %vec.epilog.resume.val853 = phi i64 [ %n.vec814, %vec.epilog.iter.check849 ], [ 0, %vector.main.loop.iter.check811 ] ; 2 uses
  %bc.merge.rdx854 = phi double [ %i.qo, %vec.epilog.iter.check849 ], [ 0.000000e+00, %vector.main.loop.iter.check811 ]
  %i.qp = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx854, i64 0
  %broadcast.splatinsert856 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val853, i64 0
  %broadcast.splat857 = shufflevector <4 x i64> %broadcast.splatinsert856, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction858 = or disjoint <4 x i64> %broadcast.splat857, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body859

vec.epilog.vector.body859:                        ; preds = %vec.epilog.vector.body859, %vec.epilog.ph852
  %index860 = phi i64 [ %vec.epilog.resume.val853, %vec.epilog.ph852 ], [ %index.next867, %vec.epilog.vector.body859 ]
  %vec.ind861 = phi <4 x i64> [ %induction858, %vec.epilog.ph852 ], [ %vec.ind.next868, %vec.epilog.vector.body859 ] ; 2 uses
  %vec.phi862 = phi <4 x double> [ %i.qp, %vec.epilog.ph852 ], [ %i.qs, %vec.epilog.vector.body859 ]
  %i.qq = mul <4 x i64> %vec.ind861, splat (i64 72)
  %wide.gep863 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qq ; 2 uses
  %wide.gep864 = getelementptr [8 x i8], <4 x ptr> %wide.gep863, i64 %.02431.i.i.i
  %wide.masked.gather865 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep864, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather866 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep863, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %i.qr = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather866, %wide.masked.gather865
  %i.qs = fadd reassoc nsz arcp contract afn <4 x double> %i.qr, %vec.phi862 ; 2 uses
  %index.next867 = add nuw i64 %index860, 4       ; 2 uses
  %vec.ind.next868 = add nuw <4 x i64> %vec.ind861, splat (i64 4)
  %i.qt = icmp eq i64 %index.next867, %n.vec855
  br i1 %i.qt, label %vec.epilog.middle.block869, label %vec.epilog.vector.body859, !llvm.loop !259

vec.epilog.middle.block869:                       ; preds = %vec.epilog.vector.body859
  %i.qu = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.qs) ; 2 uses
  br i1 %cmp.n870, label %iter.check785, label %vec.epilog.scalar.ph850.preheader

vec.epilog.scalar.ph850.preheader:                ; preds = %vec.epilog.iter.check849, %vec.epilog.middle.block869
  %.029.i.i.i.ph = phi i64 [ %n.vec814, %vec.epilog.iter.check849 ], [ %n.vec855, %vec.epilog.middle.block869 ]
  %.02228.i.i.i.ph = phi double [ %i.qo, %vec.epilog.iter.check849 ], [ %i.qu, %vec.epilog.middle.block869 ]
  br label %vec.epilog.scalar.ph850

iter.check785:                                    ; preds = %vec.epilog.scalar.ph850, %vec.epilog.middle.block869, %middle.block843
  %.lcssa297 = phi double [ %i.qu, %vec.epilog.middle.block869 ], [ %i.qo, %middle.block843 ], [ %i.aay, %vec.epilog.scalar.ph850 ]
  %.idx.i.i.i = mul nuw nsw i64 %.02431.i.i.i, 72
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i ; 9 uses
  store double %.lcssa297, ptr %i.qv, align 8, !tbaa !105, !alias.scope !345, !noalias !343
  br i1 %min.iters.check745, label %vec.epilog.ph789, label %vector.body748

vector.body748:                                   ; preds = %iter.check785, %vector.body748
  %index749 = phi i64 [ %index.next778, %vector.body748 ], [ 0, %iter.check785 ]
  %vec.ind750 = phi <4 x i64> [ %vec.ind.next779, %vector.body748 ], [ <i64 0, i64 1, i64 2, i64 3>, %iter.check785 ] ; 5 uses
  %vec.phi751 = phi <4 x double> [ %i.rh, %vector.body748 ], [ zeroinitializer, %iter.check785 ]
  %vec.phi752 = phi <4 x double> [ %i.ri, %vector.body748 ], [ zeroinitializer, %iter.check785 ]
  %vec.phi753 = phi <4 x double> [ %i.rj, %vector.body748 ], [ zeroinitializer, %iter.check785 ]
  %vec.phi754 = phi <4 x double> [ %i.rk, %vector.body748 ], [ zeroinitializer, %iter.check785 ]
  %i.qw = mul <4 x i64> %vec.ind750, splat (i64 72)
  %i.qx = mul <4 x i64> %vec.ind750, splat (i64 72)
  %i.qy = add <4 x i64> %i.qx, splat (i64 288)
  %i.qz = mul <4 x i64> %vec.ind750, splat (i64 72)
  %i.ra = add <4 x i64> %i.qz, splat (i64 576)
  %i.rb = mul <4 x i64> %vec.ind750, splat (i64 72)
  %i.rc = add <4 x i64> %i.rb, splat (i64 864)
  %wide.gep758 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qw ; 2 uses
  %wide.gep759 = getelementptr i8, ptr %i.kt, <4 x i64> %i.qy ; 2 uses
  %wide.gep760 = getelementptr i8, ptr %i.kt, <4 x i64> %i.ra ; 2 uses
  %wide.gep761 = getelementptr i8, ptr %i.kt, <4 x i64> %i.rc ; 2 uses
  %wide.gep762 = getelementptr [8 x i8], <4 x ptr> %wide.gep758, i64 %.02431.i.i.i
  %wide.gep763 = getelementptr [8 x i8], <4 x ptr> %wide.gep759, i64 %.02431.i.i.i
  %wide.gep764 = getelementptr [8 x i8], <4 x ptr> %wide.gep760, i64 %.02431.i.i.i
  %wide.gep765 = getelementptr [8 x i8], <4 x ptr> %wide.gep761, i64 %.02431.i.i.i
  %wide.masked.gather766 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep762, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather767 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep763, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather768 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep764, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather769 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep765, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.gep770 = getelementptr i8, <4 x ptr> %wide.gep758, i64 8
  %wide.gep771 = getelementptr i8, <4 x ptr> %wide.gep759, i64 8
  %wide.gep772 = getelementptr i8, <4 x ptr> %wide.gep760, i64 8
  %wide.gep773 = getelementptr i8, <4 x ptr> %wide.gep761, i64 8
  %wide.masked.gather774 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep770, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
  %wide.masked.gather775 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep771, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !346, !noalias !337
end_hunk_0
begin_hunk_1_@process:bb.a
  %bin.rdx1300 = fadd reassoc nsz arcp contract afn <4 x double> %i.alc, %i.alb
  %bin.rdx1301 = fadd reassoc nsz arcp contract afn <4 x double> %i.ald, %bin.rdx1300
  %bin.rdx1302 = fadd reassoc nsz arcp contract afn <4 x double> %i.ale, %bin.rdx1301
  %i.alg = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1302) ; 3 uses
  %cmp.n1303 = icmp eq i64 %i.pk, %n.vec1274
  br i1 %cmp.n1303, label %iter.check1361, label %vec.epilog.iter.check1305

vec.epilog.iter.check1305:                        ; preds = %middle.block1299
  %min.epilog.iters.check1307 = icmp eq i64 %i.akl, 0
  br i1 %min.epilog.iters.check1307, label %vec.epilog.scalar.ph1306.preheader, label %vec.epilog.ph1308, !prof !347

vec.epilog.ph1308:                                ; preds = %iter.check1304, %vec.epilog.iter.check1305
  %vec.epilog.resume.val1309 = phi i64 [ %n.vec1274, %vec.epilog.iter.check1305 ], [ 0, %iter.check1304 ] ; 2 uses
  %bc.merge.rdx1310 = phi double [ %i.alg, %vec.epilog.iter.check1305 ], [ 0.000000e+00, %iter.check1304 ]
  %n.vec1311 = and i64 %i.pk, -4                  ; 3 uses
  %i.alh = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1310, i64 0
  %broadcast.splatinsert1312 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1309, i64 0
  %broadcast.splat1313 = shufflevector <4 x i64> %broadcast.splatinsert1312, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1314 = or disjoint <4 x i64> %broadcast.splat1313, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1315

vec.epilog.vector.body1315:                       ; preds = %vec.epilog.vector.body1315, %vec.epilog.ph1308
  %index1316 = phi i64 [ %vec.epilog.resume.val1309, %vec.epilog.ph1308 ], [ %index.next1322, %vec.epilog.vector.body1315 ] ; 2 uses
  %vec.ind1317 = phi <4 x i64> [ %induction1314, %vec.epilog.ph1308 ], [ %vec.ind.next1323, %vec.epilog.vector.body1315 ] ; 2 uses
  %vec.phi1318 = phi <4 x double> [ %i.alh, %vec.epilog.ph1308 ], [ %i.all, %vec.epilog.vector.body1315 ]
  %i.ali = mul <4 x i64> %vec.ind1317, splat (i64 72)
  %wide.gep1319 = getelementptr i8, ptr %invariant.gep.7.i.i.i, <4 x i64> %i.ali
  %wide.masked.gather1320 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1319, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1316
  %wide.load1321 = load <4 x double>, ptr %i.alj, align 32, !tbaa !105, !alias.scope !352, !noalias !337
  %i.alk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1321, %wide.masked.gather1320
  %i.all = fadd reassoc nsz arcp contract afn <4 x double> %i.alk, %vec.phi1318 ; 2 uses
  %index.next1322 = add nuw i64 %index1316, 4     ; 2 uses
  %vec.ind.next1323 = add nuw <4 x i64> %vec.ind1317, splat (i64 4)
  %i.alm = icmp eq i64 %index.next1322, %n.vec1311
  br i1 %i.alm, label %vec.epilog.middle.block1324, label %vec.epilog.vector.body1315, !llvm.loop !310

vec.epilog.middle.block1324:                      ; preds = %vec.epilog.vector.body1315
  %i.aln = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.all) ; 2 uses
  %cmp.n1325 = icmp eq i64 %i.pk, %n.vec1311
  br i1 %cmp.n1325, label %iter.check1361, label %vec.epilog.scalar.ph1306.preheader

vec.epilog.scalar.ph1306.preheader:               ; preds = %vec.epilog.iter.check1305, %vec.epilog.middle.block1324
  %.019.7.i.i.i.ph = phi i64 [ %n.vec1274, %vec.epilog.iter.check1305 ], [ %n.vec1311, %vec.epilog.middle.block1324 ]
  %.01518.7.i.i.i.ph = phi double [ %i.alg, %vec.epilog.iter.check1305 ], [ %i.aln, %vec.epilog.middle.block1324 ]
  br label %vec.epilog.scalar.ph1306

vec.epilog.scalar.ph1306:                         ; preds = %vec.epilog.scalar.ph1306.preheader, %vec.epilog.scalar.ph1306
  %.019.7.i.i.i = phi i64 [ %i.alt, %vec.epilog.scalar.ph1306 ], [ %.019.7.i.i.i.ph, %vec.epilog.scalar.ph1306.preheader ] ; 3 uses
  %.01518.7.i.i.i = phi double [ %i.als, %vec.epilog.scalar.ph1306 ], [ %.01518.7.i.i.i.ph, %vec.epilog.scalar.ph1306.preheader ]
  %.idx.7.i.i.i = mul i64 %.019.7.i.i.i, 72
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.7.i.i.i, i64 %.idx.7.i.i.i
  %i.alo = load double, ptr %gep.7.i.i.i, align 8, !tbaa !105, !alias.scope !351, !noalias !337
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.7.i.i.i
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !105, !alias.scope !352, !noalias !337
  %i.alr = fmul reassoc nsz arcp contract afn double %i.alq, %i.alo
  %i.als = fadd reassoc nsz arcp contract afn double %i.alr, %.01518.7.i.i.i ; 2 uses
  %i.alt = add nuw i64 %.019.7.i.i.i, 1           ; 2 uses
  %exitcond.7.not.i48.i.i = icmp eq i64 %i.alt, %i.pk
  br i1 %exitcond.7.not.i48.i.i, label %iter.check1361, label %vec.epilog.scalar.ph1306, !llvm.loop !311

iter.check1361:                                   ; preds = %vec.epilog.scalar.ph1306, %vec.epilog.middle.block1324, %middle.block1299
  %.lcssa289 = phi double [ %i.aln, %vec.epilog.middle.block1324 ], [ %i.alg, %middle.block1299 ], [ %i.als, %vec.epilog.scalar.ph1306 ]
  %i.alu = getelementptr inbounds nuw i8, ptr %i.po, i64 56 ; 18 uses
  store double %.lcssa289, ptr %i.alu, align 8, !tbaa !105, !alias.scope !350, !noalias !343
  %invariant.gep.8.i.i.i = getelementptr i8, ptr %i.kt, i64 64 ; 6 uses
  %min.iters.check1329 = icmp ult i64 %i.pk, 16
  br i1 %min.iters.check1329, label %vec.epilog.ph1365, label %vector.ph1330

vector.ph1330:                                    ; preds = %iter.check1361
  %i.alv = and i64 %i.pk, 12
  %n.vec1331 = and i64 %i.pk, -16                 ; 4 uses
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.ph1330, %vector.body1332
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1354, %vector.body1332 ] ; 2 uses
  %vec.ind1334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1330 ], [ %vec.ind.next1355, %vector.body1332 ] ; 5 uses
  %vec.phi1335 = phi <4 x double> [ zeroinitializer, %vector.ph1330 ], [ %i.aml, %vector.body1332 ]
  %vec.phi1336 = phi <4 x double> [ zeroinitializer, %vector.ph1330 ], [ %i.amm, %vector.body1332 ]
  %vec.phi1337 = phi <4 x double> [ zeroinitializer, %vector.ph1330 ], [ %i.amn, %vector.body1332 ]
  %vec.phi1338 = phi <4 x double> [ zeroinitializer, %vector.ph1330 ], [ %i.amo, %vector.body1332 ]
  %i.alw = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %i.alx = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %i.aly = add <4 x i64> %i.alx, splat (i64 288)
  %i.alz = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %i.ama = add <4 x i64> %i.alz, splat (i64 576)
  %i.amb = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %i.amc = add <4 x i64> %i.amb, splat (i64 864)
  %wide.gep1342 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.alw
  %wide.gep1343 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.aly
  %wide.gep1344 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.ama
  %wide.gep1345 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amc
  %wide.masked.gather1346 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1342, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %wide.masked.gather1347 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1343, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %wide.masked.gather1348 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1344, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %wide.masked.gather1349 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1345, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1333 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 32
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 64
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amd, i64 96
  %wide.load1350 = load <4 x double>, ptr %i.amd, align 64, !tbaa !105, !alias.scope !352, !noalias !337
  %wide.load1351 = load <4 x double>, ptr %i.ame, align 32, !tbaa !105, !alias.scope !352, !noalias !337
  %wide.load1352 = load <4 x double>, ptr %i.amf, align 64, !tbaa !105, !alias.scope !352, !noalias !337
  %wide.load1353 = load <4 x double>, ptr %i.amg, align 32, !tbaa !105, !alias.scope !352, !noalias !337
  %i.amh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1350, %wide.masked.gather1346
  %i.ami = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1351, %wide.masked.gather1347
  %i.amj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1352, %wide.masked.gather1348
  %i.amk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1353, %wide.masked.gather1349
  %i.aml = fadd reassoc nsz arcp contract afn <4 x double> %i.amh, %vec.phi1335 ; 2 uses
  %i.amm = fadd reassoc nsz arcp contract afn <4 x double> %i.ami, %vec.phi1336 ; 2 uses
  %i.amn = fadd reassoc nsz arcp contract afn <4 x double> %i.amj, %vec.phi1337 ; 2 uses
  %i.amo = fadd reassoc nsz arcp contract afn <4 x double> %i.amk, %vec.phi1338 ; 2 uses
  %index.next1354 = add nuw i64 %index1333, 16    ; 2 uses
  %vec.ind.next1355 = add nuw <4 x i64> %vec.ind1334, splat (i64 16)
  %i.amp = icmp eq i64 %index.next1354, %n.vec1331
  br i1 %i.amp, label %middle.block1356, label %vector.body1332, !llvm.loop !312

middle.block1356:                                 ; preds = %vector.body1332
  %bin.rdx1357 = fadd reassoc nsz arcp contract afn <4 x double> %i.amm, %i.aml
  %bin.rdx1358 = fadd reassoc nsz arcp contract afn <4 x double> %i.amn, %bin.rdx1357
  %bin.rdx1359 = fadd reassoc nsz arcp contract afn <4 x double> %i.amo, %bin.rdx1358
  %i.amq = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1359) ; 3 uses
  %cmp.n1360 = icmp eq i64 %i.pk, %n.vec1331
  br i1 %cmp.n1360, label %transpose_dot_vector.exit.i.i, label %vec.epilog.iter.check1362

vec.epilog.iter.check1362:                        ; preds = %middle.block1356
  %min.epilog.iters.check1364 = icmp eq i64 %i.alv, 0
  br i1 %min.epilog.iters.check1364, label %vec.epilog.scalar.ph1363.preheader, label %vec.epilog.ph1365, !prof !347

vec.epilog.ph1365:                                ; preds = %iter.check1361, %vec.epilog.iter.check1362
  %vec.epilog.resume.val1366 = phi i64 [ %n.vec1331, %vec.epilog.iter.check1362 ], [ 0, %iter.check1361 ] ; 2 uses
  %bc.merge.rdx1367 = phi double [ %i.amq, %vec.epilog.iter.check1362 ], [ 0.000000e+00, %iter.check1361 ]
  %n.vec1368 = and i64 %i.pk, -4                  ; 3 uses
  %i.amr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1367, i64 0
  %broadcast.splatinsert1369 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1366, i64 0
  %broadcast.splat1370 = shufflevector <4 x i64> %broadcast.splatinsert1369, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1371 = or disjoint <4 x i64> %broadcast.splat1370, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1372

vec.epilog.vector.body1372:                       ; preds = %vec.epilog.vector.body1372, %vec.epilog.ph1365
  %index1373 = phi i64 [ %vec.epilog.resume.val1366, %vec.epilog.ph1365 ], [ %index.next1379, %vec.epilog.vector.body1372 ] ; 2 uses
  %vec.ind1374 = phi <4 x i64> [ %induction1371, %vec.epilog.ph1365 ], [ %vec.ind.next1380, %vec.epilog.vector.body1372 ] ; 2 uses
  %vec.phi1375 = phi <4 x double> [ %i.amr, %vec.epilog.ph1365 ], [ %i.amv, %vec.epilog.vector.body1372 ]
  %i.ams = mul <4 x i64> %vec.ind1374, splat (i64 72)
  %wide.gep1376 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.ams
  %wide.masked.gather1377 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1376, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !351, !noalias !337
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1373
  %wide.load1378 = load <4 x double>, ptr %i.amt, align 32, !tbaa !105, !alias.scope !352, !noalias !337
  %i.amu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1378, %wide.masked.gather1377
  %i.amv = fadd reassoc nsz arcp contract afn <4 x double> %i.amu, %vec.phi1375 ; 2 uses
  %index.next1379 = add nuw i64 %index1373, 4     ; 2 uses
  %vec.ind.next1380 = add nuw <4 x i64> %vec.ind1374, splat (i64 4)
  %i.amw = icmp eq i64 %index.next1379, %n.vec1368
  br i1 %i.amw, label %vec.epilog.middle.block1381, label %vec.epilog.vector.body1372, !llvm.loop !313

vec.epilog.middle.block1381:                      ; preds = %vec.epilog.vector.body1372
  %i.amx = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.amv) ; 2 uses
  %cmp.n1382 = icmp eq i64 %i.pk, %n.vec1368
  br i1 %cmp.n1382, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1363.preheader

vec.epilog.scalar.ph1363.preheader:               ; preds = %vec.epilog.iter.check1362, %vec.epilog.middle.block1381
  %.019.8.i.i.i.ph = phi i64 [ %n.vec1331, %vec.epilog.iter.check1362 ], [ %n.vec1368, %vec.epilog.middle.block1381 ]
  %.01518.8.i.i.i.ph = phi double [ %i.amq, %vec.epilog.iter.check1362 ], [ %i.amx, %vec.epilog.middle.block1381 ]
  br label %vec.epilog.scalar.ph1363

vec.epilog.scalar.ph1363:                         ; preds = %vec.epilog.scalar.ph1363.preheader, %vec.epilog.scalar.ph1363
  %.019.8.i.i.i = phi i64 [ %i.and, %vec.epilog.scalar.ph1363 ], [ %.019.8.i.i.i.ph, %vec.epilog.scalar.ph1363.preheader ] ; 3 uses
  %.01518.8.i.i.i = phi double [ %i.anc, %vec.epilog.scalar.ph1363 ], [ %.01518.8.i.i.i.ph, %vec.epilog.scalar.ph1363.preheader ]
  %.idx.8.i.i.i = mul i64 %.019.8.i.i.i, 72
  %gep.8.i.i.i = getelementptr i8, ptr %invariant.gep.8.i.i.i, i64 %.idx.8.i.i.i
  %i.amy = load double, ptr %gep.8.i.i.i, align 8, !tbaa !105, !alias.scope !351, !noalias !337
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.8.i.i.i
  %i.ana = load double, ptr %i.amz, align 8, !tbaa !105, !alias.scope !352, !noalias !337
  %i.anb = fmul reassoc nsz arcp contract afn double %i.ana, %i.amy
  %i.anc = fadd reassoc nsz arcp contract afn double %i.anb, %.01518.8.i.i.i ; 2 uses
  %i.and = add nuw i64 %.019.8.i.i.i, 1           ; 2 uses
  %exitcond.8.not.i50.i.i = icmp eq i64 %i.and, %i.pk
  br i1 %exitcond.8.not.i50.i.i, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1363, !llvm.loop !314

vec.epilog.scalar.ph907:                          ; preds = %vec.epilog.scalar.ph907.preheader, %vec.epilog.scalar.ph907
  %.019.i.i.i = phi i64 [ %i.anj, %vec.epilog.scalar.ph907 ], [ %.019.i.i.i.ph, %vec.epilog.scalar.ph907.preheader ] ; 3 uses
  %.01518.i.i.i = phi double [ %i.ani, %vec.epilog.scalar.ph907 ], [ %.01518.i.i.i.ph, %vec.epilog.scalar.ph907.preheader ]
  %.idx.i33.i.i = mul i64 %.019.i.i.i, 72
  %gep.i.i.i = getelementptr i8, ptr %i.kt, i64 %.idx.i33.i.i
  %i.ane = load double, ptr %gep.i.i.i, align 8, !tbaa !105, !alias.scope !351, !noalias !337
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.i.i.i
  %i.ang = load double, ptr %i.anf, align 8, !tbaa !105, !alias.scope !352, !noalias !337
  %i.anh = fmul reassoc nsz arcp contract afn double %i.ang, %i.ane
  %i.ani = fadd reassoc nsz arcp contract afn double %i.anh, %.01518.i.i.i ; 2 uses
  %i.anj = add nuw i64 %.019.i.i.i, 1             ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %i.anj, %i.pk
  br i1 %exitcond.not.i34.i.i, label %iter.check962, label %vec.epilog.scalar.ph907, !llvm.loop !315

transpose_dot_vector.exit.i.i:                    ; preds = %vec.epilog.scalar.ph1363, %vec.epilog.middle.block1381, %middle.block1356
  %.lcssa = phi double [ %i.amx, %vec.epilog.middle.block1381 ], [ %i.amq, %middle.block1356 ], [ %i.anc, %vec.epilog.scalar.ph1363 ]
  %i.ank = getelementptr inbounds nuw i8, ptr %i.po, i64 64 ; 18 uses
  store double %.lcssa, ptr %i.ank, align 64, !tbaa !105, !alias.scope !350, !noalias !343
  %i.anl = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #32, !noalias !343 ; 11 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 32
  store i32 8, ptr %i.anm, align 4, !tbaa !15, !noalias !343
  %scevgep1396 = getelementptr i8, ptr %i.pn, i64 648 ; 2 uses
  %scevgep1424 = getelementptr i8, ptr %i.pn, i64 72
  br label %bb.t

.loopexit.i.i.i.i:                                ; preds = %._crit_edge121.i.i.i.i, %.preheader111.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %exitcond146.not.i.i.i.i = icmp eq i64 %indvars.iv.next144.i.i.i.i, 9
  br i1 %exitcond146.not.i.i.i.i, label %gauss_make_triangular.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i, %transpose_dot_vector.exit.i.i
  %indvars.iv143.i.i.i.i = phi i64 [ 0, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next144.i.i.i.i, %.loopexit.i.i.i.i ] ; 23 uses
  %indvars.iv.i.i.i.i = phi i64 [ 1, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit.i.i.i.i ] ; 14 uses
  %i.ann = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %i.ano = getelementptr i8, ptr %i.pn, i64 %i.ann
  %scevgep = getelementptr i8, ptr %i.ano, i64 72
  %i.anp = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80 ; 3 uses
  %6 = getelementptr i8, ptr %i.pn, i64 %i.anp
  %scevgep1393 = getelementptr i8, ptr %6, i64 8
  %7 = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %8 = getelementptr i8, ptr %i.pn, i64 %7
  %scevgep1394 = getelementptr i8, ptr %8, i64 584
  %i.anq = getelementptr i8, ptr %i.pn, i64 %i.anp
  %scevgep1395 = getelementptr i8, ptr %i.anq, i64 72
  %i.anr = getelementptr i8, ptr %i.pn, i64 %i.anp
  %scevgep1397 = getelementptr i8, ptr %i.anr, i64 80 ; 2 uses
  %indvars.iv.next144.i.i.i.i = add nuw nsw i64 %indvars.iv143.i.i.i.i, 1 ; 2 uses
  %i.ans = icmp samesign ult i64 %indvars.iv143.i.i.i.i, 8 ; 2 uses
  %i.ant = trunc nuw nsw i64 %indvars.iv143.i.i.i.i to i32 ; 3 uses
  br i1 %i.ans, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.anu = sub nsw i64 0, %indvars.iv143.i.i.i.i
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv143.i.i.i.i ; 10 uses
  %xtraiter = and i64 %i.anu, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %indvars.iv124.i.i.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.0100112.i.i.i.i.prol = phi i32 [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.ant, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %.idx.i.i.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 72
  %gep.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.prol
  %i.anv = load double, ptr %gep.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.anw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.anv)
  %i.anx = mul nuw nsw i32 %.0100112.i.i.i.i.prol, 9
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.any
  %i.aoa = load double, ptr %i.anz, align 8, !tbaa !105, !noalias !343
  %i.aob = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aoa)
  %i.aoc = fcmp reassoc nsz arcp contract afn ogt double %i.anw, %i.aob
  %i.aod = trunc nuw nsw i64 %indvars.iv124.i.i.i.i.prol to i32
  %spec.select.i.i.i.i.prol = select i1 %i.aoc, i32 %i.aod, i32 %.0100112.i.i.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !316

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %indvars.iv124.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.0100112.i.i.i.i.unr = phi i32 [ %i.ant, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.aoe = icmp ugt i64 %indvars.iv143.i.i.i.i, 4
  br i1 %i.aoe, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.t
  %.0100.lcssa.i.i.i.i = phi i32 [ %i.ant, %bb.t ], [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %indvars.iv143.i.i.i.i
  store i32 %.0100.lcssa.i.i.i.i, ptr %i.aof, align 4, !tbaa !15, !noalias !343
  %i.aog = mul nuw nsw i32 %.0100.lcssa.i.i.i.i, 9
  %i.aoh = zext nneg i32 %i.aog to i64            ; 2 uses
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv143.i.i.i.i ; 4 uses
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %i.aoh ; 2 uses
  %i.aok = load double, ptr %i.aoj, align 8, !tbaa !105, !noalias !343 ; 4 uses
  %i.aol = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 9 ; 2 uses
  %.idx147.i.i.i.i = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.aom = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx147.i.i.i.i ; 2 uses
  %i.aon = load double, ptr %i.aom, align 16, !tbaa !105, !noalias !343
  store double %i.aon, ptr %i.aoj, align 8, !tbaa !105, !noalias !343
  store double %i.aok, ptr %i.aom, align 16, !tbaa !105, !noalias !343
  %i.aoo = fcmp reassoc nsz arcp contract afn une double %i.aok, 0.000000e+00
  br i1 %i.aoo, label %.preheader111.i.i.i.i, label %gauss_solve.exit.i.i

.preheader111.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  br i1 %i.ans, label %.lr.ph115.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph115.i.i.i.i.preheader:                      ; preds = %.preheader111.i.i.i.i
  %i.aop = sub nuw nsw i64 8, %indvars.iv143.i.i.i.i ; 2 uses
  %min.iters.check1442 = icmp samesign ugt i64 %indvars.iv143.i.i.i.i, 4
  br i1 %min.iters.check1442, label %.lr.ph115.i.i.i.i.preheader1514, label %vector.ph1443

vector.ph1443:                                    ; preds = %.lr.ph115.i.i.i.i.preheader
  %n.vec1444 = and i64 %i.aop, 12                 ; 3 uses
  %i.aoq = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1444
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %i.aok, i64 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i.i.i, i64 0
  %broadcast.splat1448 = shufflevector <4 x i64> %broadcast.splatinsert1447, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1449 = add nuw nsw <4 x i64> %broadcast.splat1448, <i64 0, i64 1, i64 2, i64 3>
  %i.aor = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1446
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1443
  %index1451 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1455, %vector.body1450 ]
  %vec.ind1452 = phi <4 x i64> [ %induction1449, %vector.ph1443 ], [ %vec.ind.next1456, %vector.body1450 ] ; 2 uses
  %i.aos = mul nuw nsw <4 x i64> %vec.ind1452, splat (i64 72)
  %wide.gep1453 = getelementptr inbounds nuw i8, ptr %i.aoi, <4 x i64> %i.aos ; 2 uses
  %wide.masked.gather1454 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1453, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !noalias !343
  %i.aot = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1454
  %i.aou = fmul reassoc nsz arcp contract afn <4 x double> %i.aot, %i.aor
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.aou, <4 x ptr> align 8 %wide.gep1453, <4 x i1> splat (i1 true)), !tbaa !105, !noalias !343
  %index.next1455 = add nuw i64 %index1451, 4     ; 2 uses
  %vec.ind.next1456 = add nuw nsw <4 x i64> %vec.ind1452, splat (i64 4)
  %i.aov = icmp eq i64 %index.next1455, %n.vec1444
  br i1 %i.aov, label %middle.block1457, label %vector.body1450, !llvm.loop !317

middle.block1457:                                 ; preds = %vector.body1450
  %cmp.n1458 = icmp eq i64 %i.aop, %n.vec1444
  br i1 %cmp.n1458, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i.preheader1514

.lr.ph115.i.i.i.i.preheader1514:                  ; preds = %.lr.ph115.i.i.i.i.preheader, %middle.block1457
  %indvars.iv127.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph115.i.i.i.i.preheader ], [ %i.aoq, %middle.block1457 ]
  %i.aow = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aok
  br label %.lr.ph115.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %indvars.iv124.i.i.i.i = phi i64 [ %indvars.iv.next125.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %indvars.iv124.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.0100112.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv124.i.i.i.i, 72
  %gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i
  %i.aox = load double, ptr %gep.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.aoy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aox)
  %i.aoz = mul nuw nsw i32 %.0100112.i.i.i.i, 9
  %i.apa = zext nneg i32 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apa
  %i.apc = load double, ptr %i.apb, align 8, !tbaa !105, !noalias !343
  %i.apd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apc)
  %i.ape = fcmp reassoc nsz arcp contract afn ogt double %i.aoy, %i.apd
  %i.apf = trunc nuw nsw i64 %indvars.iv124.i.i.i.i to i32
  %spec.select.i.i.i.i = select i1 %i.ape, i32 %i.apf, i32 %.0100112.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i = add nuw nsw i64 %indvars.iv124.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i, 72
  %gep.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.1
  %i.apg = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.aph = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apg)
  %i.api = mul nuw nsw i32 %spec.select.i.i.i.i, 9
  %i.apj = zext nneg i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apj
  %i.apl = load double, ptr %i.apk, align 8, !tbaa !105, !noalias !343
  %i.apm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apl)
  %i.apn = fcmp reassoc nsz arcp contract afn ogt double %i.aph, %i.apm
  %i.apo = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i to i32
  %spec.select.i.i.i.i.1 = select i1 %i.apn, i32 %i.apo, i32 %spec.select.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 2 ; 2 uses
  %.idx.i.i.i.i.2 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.1, 72
  %gep.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.2
  %i.app = load double, ptr %gep.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.apq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.app)
  %i.apr = mul nuw nsw i32 %spec.select.i.i.i.i.1, 9
  %i.aps = zext nneg i32 %i.apr to i64
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aps
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !105, !noalias !343
  %i.apv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apu)
  %i.apw = fcmp reassoc nsz arcp contract afn ogt double %i.apq, %i.apv
  %i.apx = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.1 to i32
  %spec.select.i.i.i.i.2 = select i1 %i.apw, i32 %i.apx, i32 %spec.select.i.i.i.i.1 ; 2 uses
  %indvars.iv.next125.i.i.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 3 ; 2 uses
  %.idx.i.i.i.i.3 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.2, 72
  %gep.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.3
  %i.apy = load double, ptr %gep.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.apz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apy)
  %i.aqa = mul nuw nsw i32 %spec.select.i.i.i.i.2, 9
  %i.aqb = zext nneg i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqb
  %i.aqd = load double, ptr %i.aqc, align 8, !tbaa !105, !noalias !343
  %i.aqe = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqd)
  %i.aqf = fcmp reassoc nsz arcp contract afn ogt double %i.apz, %i.aqe
  %i.aqg = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.2 to i32
  %spec.select.i.i.i.i.3 = select i1 %i.aqf, i32 %i.aqg, i32 %spec.select.i.i.i.i.2 ; 2 uses
  %indvars.iv.next125.i.i.i.i.3 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next125.i.i.i.i.3, 9
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge116.i.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %middle.block1457
  %i.aqh = zext i32 %.0100.lcssa.i.i.i.i to i64   ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %indvars.iv143.i.i.i.i, %i.aqh
  br i1 %.not.not.i.i.i.i, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.preheader.i.i.i.i

.lr.ph118.preheader.i.i.i.i:                      ; preds = %._crit_edge116.i.i.i.i
  %invariant.gep153.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.aoh ; 6 uses
  %invariant.gep155.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.aol ; 6 uses
  %i.aqi = sub nuw nsw i64 8, %indvars.iv143.i.i.i.i ; 2 uses
  %min.iters.check1426 = icmp samesign ugt i64 %indvars.iv143.i.i.i.i, 4
  br i1 %min.iters.check1426, label %.lr.ph118.i.i.i.i.preheader, label %vector.memcheck1427

vector.memcheck1427:                              ; preds = %.lr.ph118.preheader.i.i.i.i
  %i.aqj = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %i.aqk = mul nuw nsw i64 %i.aqh, 72             ; 2 uses
  %i.aql = getelementptr i8, ptr %i.pn, i64 %i.aqj
  %i.aqm = getelementptr i8, ptr %i.aql, i64 8
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 %i.aqk
  %i.aqo = getelementptr i8, ptr %scevgep1424, i64 %i.aqk
  %i.aqp = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.aqq = getelementptr i8, ptr %i.pn, i64 %i.aqp
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 8
  %i.aqs = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %i.aqt = getelementptr i8, ptr %i.pn, i64 %i.aqs
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 72
  %bound01428 = icmp ult ptr %i.aqn, %i.aqu
  %bound11429 = icmp ult ptr %i.aqr, %i.aqo
  %found.conflict1430 = and i1 %bound01428, %bound11429
  br i1 %found.conflict1430, label %.lr.ph118.i.i.i.i.preheader, label %vector.ph1431

vector.ph1431:                                    ; preds = %vector.memcheck1427
  %n.vec1432 = and i64 %i.aqi, 12                 ; 3 uses
  %i.aqv = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1432
  br label %vector.body1433

vector.body1433:                                  ; preds = %vector.body1433, %vector.ph1431
  %index1434 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1437, %vector.body1433 ] ; 2 uses
  %i.aqw = add nuw i64 %indvars.iv.i.i.i.i, %index1434 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %i.aqw ; 2 uses
  %wide.load1435 = load <4 x double>, ptr %i.aqx, align 8, !tbaa !105, !alias.scope !354, !noalias !355
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %i.aqw ; 2 uses
  %wide.load1436 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !105, !alias.scope !356, !noalias !343
  store <4 x double> %wide.load1436, ptr %i.aqx, align 8, !tbaa !105, !alias.scope !354, !noalias !355
  store <4 x double> %wide.load1435, ptr %i.aqy, align 8, !tbaa !105, !alias.scope !356, !noalias !343
  %index.next1437 = add nuw i64 %index1434, 4     ; 2 uses
  %i.aqz = icmp eq i64 %index.next1437, %n.vec1432
  br i1 %i.aqz, label %middle.block1438, label %vector.body1433, !llvm.loop !321

middle.block1438:                                 ; preds = %vector.body1433
  %cmp.n1439 = icmp eq i64 %i.aqi, %n.vec1432
  br i1 %cmp.n1439, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i.preheader

.lr.ph118.i.i.i.i.preheader:                      ; preds = %vector.memcheck1427, %.lr.ph118.preheader.i.i.i.i, %middle.block1438
  %indvars.iv131.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %vector.memcheck1427 ], [ %indvars.iv.i.i.i.i, %.lr.ph118.preheader.i.i.i.i ], [ %i.aqv, %middle.block1438 ] ; 4 uses
  %i.ara = sub i64 1, %indvars.iv131.i.i.i.i.ph
  %xtraiter1623 = and i64 %i.ara, 3               ; 2 uses
  %lcmp.mod1624.not = icmp eq i64 %xtraiter1623, 0
  br i1 %lcmp.mod1624.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol

.lr.ph118.i.i.i.i.prol:                           ; preds = %.lr.ph118.i.i.i.i.preheader, %.lr.ph118.i.i.i.i.prol
  %indvars.iv131.i.i.i.i.prol = phi i64 [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ], [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1625 = phi i64 [ %prol.iter1625.next, %.lr.ph118.i.i.i.i.prol ], [ 0, %.lr.ph118.i.i.i.i.preheader ]
  %gep154.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.arb = load double, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.arc = load double, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.arc, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.arb, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.prol = add nuw nsw i64 %indvars.iv131.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1625.next = add i64 %prol.iter1625, 1 ; 2 uses
  %prol.iter1625.cmp.not = icmp eq i64 %prol.iter1625.next, %xtraiter1623
  br i1 %prol.iter1625.cmp.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol, !llvm.loop !322

.lr.ph118.i.i.i.i.prol.loopexit:                  ; preds = %.lr.ph118.i.i.i.i.prol, %.lr.ph118.i.i.i.i.preheader
  %indvars.iv131.i.i.i.i.unr = phi i64 [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ], [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ]
  %i.ard = add i64 %indvars.iv131.i.i.i.i.ph, -6
  %i.are = icmp ult i64 %i.ard, 3
  br i1 %i.are, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.lr.ph115.i.i.i.i.preheader1514, %.lr.ph115.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ %indvars.iv.next128.i.i.i.i, %.lr.ph115.i.i.i.i ], [ %indvars.iv127.i.i.i.i.ph, %.lr.ph115.i.i.i.i.preheader1514 ] ; 2 uses
  %.idx148.i.i.i.i = mul nuw nsw i64 %indvars.iv127.i.i.i.i, 72
  %gep152.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %.idx148.i.i.i.i ; 2 uses
  %i.arf = load double, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.arg = fneg reassoc nsz arcp contract afn double %i.arf
  %i.arh = fmul reassoc nsz arcp contract afn double %i.arg, %i.aow
  store double %i.arh, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next128.i.i.i.i, 9
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i, !llvm.loop !323

.lr.ph118.i.i.i.i:                                ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i
  %indvars.iv131.i.i.i.i = phi i64 [ %indvars.iv.next132.i.i.i.i.3, %.lr.ph118.i.i.i.i ], [ %indvars.iv131.i.i.i.i.unr, %.lr.ph118.i.i.i.i.prol.loopexit ] ; 6 uses
  %gep154.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.ari = load double, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.arj = load double, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.arj, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.ari, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i = add nuw nsw i64 %indvars.iv131.i.i.i.i, 1 ; 2 uses
  %gep154.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.ark = load double, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.arl = load double, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.arl, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.ark, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.1 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 2 ; 2 uses
  %gep154.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arm = load double, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arn = load double, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arn, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arm, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.2 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 3 ; 2 uses
  %gep154.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.aro = load double, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.arp = load double, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.arp, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.aro, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.3 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 4 ; 2 uses
  %exitcond134.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next132.i.i.i.i.3, 9
  br i1 %exitcond134.not.i.i.i.i.3, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i, !llvm.loop !324

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i, %middle.block1438, %._crit_edge116.i.i.i.i
  %invariant.gep157.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.aol ; 6 uses
  %i.arq = sub nuw nsw i64 8, %indvars.iv143.i.i.i.i ; 2 uses
  %min.iters.check1398 = icmp samesign ugt i64 %indvars.iv143.i.i.i.i, 4
  %bound0 = icmp ult ptr %scevgep1397, %scevgep1394
  %bound1 = icmp ult ptr %scevgep1395, %scevgep1396
  %found.conflict = and i1 %bound0, %bound1
  %bound01399 = icmp ult ptr %scevgep1397, %scevgep
  %bound11400 = icmp ult ptr %scevgep1393, %scevgep1396
  %found.conflict1401 = and i1 %bound01399, %bound11400
  %conflict.rdx = or i1 %found.conflict, %found.conflict1401
  %n.vec1403 = and i64 %i.arq, 12                 ; 3 uses
  %i.arr = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1403
  %cmp.n1412 = icmp eq i64 %i.arq, %n.vec1403
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge121.i.i.i.i, %.preheader.preheader.i.i.i.i
  %indvars.iv139.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next140.i.i.i.i, %._crit_edge121.i.i.i.i ] ; 2 uses
  %i.ars = mul nuw nsw i64 %indvars.iv139.i.i.i.i, 9 ; 2 uses
  %gep162.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %i.ars ; 6 uses
  %invariant.gep159.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.ars ; 6 uses
  %brmerge = select i1 %min.iters.check1398, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph1402

vector.ph1402:                                    ; preds = %.preheader.i.i.i.i
  %i.art = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !alias.scope !357, !noalias !343
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %i.art, i64 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1402
  %index1405 = phi i64 [ 0, %vector.ph1402 ], [ %index.next1410, %vector.body1404 ] ; 2 uses
  %i.aru = add nuw i64 %indvars.iv.i.i.i.i, %index1405 ; 2 uses
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %i.aru
  %wide.load1406 = load <4 x double>, ptr %i.arv, align 8, !tbaa !105, !alias.scope !358, !noalias !343
  %i.arw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1406, %broadcast.splat1408
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %i.aru ; 2 uses
  %wide.load1409 = load <4 x double>, ptr %i.arx, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  %i.ary = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1409, %i.arw
  store <4 x double> %i.ary, ptr %i.arx, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  %index.next1410 = add nuw i64 %index1405, 4     ; 2 uses
  %i.arz = icmp eq i64 %index.next1410, %n.vec1403
  br i1 %i.arz, label %middle.block1411, label %vector.body1404, !llvm.loop !329

middle.block1411:                                 ; preds = %vector.body1404
  br i1 %cmp.n1412, label %._crit_edge121.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block1411
  %indvars.iv135.i.i.i.i.ph = phi i64 [ %i.arr, %middle.block1411 ], [ %indvars.iv.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.asa = sub i64 1, %indvars.iv135.i.i.i.i.ph
  %xtraiter1626 = and i64 %i.asa, 3               ; 2 uses
  %lcmp.mod1627.not = icmp eq i64 %xtraiter1626, 0
  br i1 %lcmp.mod1627.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv135.i.i.i.i.prol = phi i64 [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1628 = phi i64 [ %prol.iter1628.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.asb = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol
  %i.asc = load double, ptr %gep158.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.asd = fmul reassoc nsz arcp contract afn double %i.asc, %i.asb
  %gep160.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol ; 2 uses
  %i.ase = load double, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.asf = fadd reassoc nsz arcp contract afn double %i.ase, %i.asd
  store double %i.asf, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.prol = add nuw nsw i64 %indvars.iv135.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1628.next = add i64 %prol.iter1628, 1 ; 2 uses
  %prol.iter1628.cmp.not = icmp eq i64 %prol.iter1628.next, %xtraiter1626
  br i1 %prol.iter1628.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !330

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i.i.i.i.unr = phi i64 [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ]
  %i.asg = add i64 %indvars.iv135.i.i.i.i.ph, -6
  %i.ash = icmp ult i64 %i.asg, 3
  br i1 %i.ash, label %._crit_edge121.i.i.i.i, label %scalar.ph

._crit_edge121.i.i.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1411
  %indvars.iv.next140.i.i.i.i = add nuw nsw i64 %indvars.iv139.i.i.i.i, 1 ; 2 uses
  %exitcond142.not.i.i.i.i = icmp eq i64 %indvars.iv.next140.i.i.i.i, 9
  br i1 %exitcond142.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i.i.i.i = phi i64 [ %indvars.iv.next136.i.i.i.i.3, %scalar.ph ], [ %indvars.iv135.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.asi = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i
  %i.asj = load double, ptr %gep158.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.ask = fmul reassoc nsz arcp contract afn double %i.asj, %i.asi
  %gep160.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i ; 2 uses
  %i.asl = load double, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.asm = fadd reassoc nsz arcp contract afn double %i.asl, %i.ask
  store double %i.asm, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i = add nuw nsw i64 %indvars.iv135.i.i.i.i, 1 ; 2 uses
  %i.asn = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i
  %i.aso = load double, ptr %gep158.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.asp = fmul reassoc nsz arcp contract afn double %i.aso, %i.asn
  %gep160.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i ; 2 uses
  %i.asq = load double, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.asr = fadd reassoc nsz arcp contract afn double %i.asq, %i.asp
  store double %i.asr, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 2 ; 2 uses
  %i.ass = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1
  %i.ast = load double, ptr %gep158.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.asu = fmul reassoc nsz arcp contract afn double %i.ast, %i.ass
  %gep160.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1 ; 2 uses
  %i.asv = load double, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.asw = fadd reassoc nsz arcp contract afn double %i.asv, %i.asu
  store double %i.asw, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 3 ; 2 uses
  %i.asx = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2
  %i.asy = load double, ptr %gep158.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.asz = fmul reassoc nsz arcp contract afn double %i.asy, %i.asx
  %gep160.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2 ; 2 uses
  %i.ata = load double, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.atb = fadd reassoc nsz arcp contract afn double %i.ata, %i.asz
  store double %i.atb, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 4 ; 2 uses
  %exitcond138.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next136.i.i.i.i.3, 9
  br i1 %exitcond138.not.i.i.i.i.3, label %._crit_edge121.i.i.i.i, label %scalar.ph, !llvm.loop !331

gauss_make_triangular.exit.i.i.i:                 ; preds = %.loopexit.i.i.i.i
  %i.atc = load i32, ptr %i.anl, align 4, !tbaa !15, !noalias !343
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.atd ; 2 uses
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !105, !noalias !343 ; 9 uses
  %i.atg = load double, ptr %i.po, align 64, !tbaa !105, !noalias !343
  store double %i.atg, ptr %i.ate, align 8, !tbaa !105, !noalias !343
  store double %i.atf, ptr %i.po, align 64, !tbaa !105, !noalias !343
  %i.ath = getelementptr inbounds nuw i8, ptr %i.pn, i64 72
  %i.ati = load double, ptr %i.ath, align 8, !tbaa !105, !noalias !343
  %i.atj = fmul reassoc nsz arcp contract afn double %i.ati, %i.atf
  %i.atk = load double, ptr %i.adm, align 8, !tbaa !105, !noalias !343
  %i.atl = fadd reassoc nsz arcp contract afn double %i.atk, %i.atj ; 2 uses
  store double %i.atl, ptr %i.adm, align 8, !tbaa !105, !noalias !343
  %i.atm = getelementptr inbounds nuw i8, ptr %i.pn, i64 144
  %i.atn = load double, ptr %i.atm, align 16, !tbaa !105, !noalias !343
  %i.ato = fmul reassoc nsz arcp contract afn double %i.atn, %i.atf
  %i.atp = load double, ptr %i.aew, align 16, !tbaa !105, !noalias !343
  %i.atq = fadd reassoc nsz arcp contract afn double %i.atp, %i.ato
  store double %i.atq, ptr %i.aew, align 16, !tbaa !105, !noalias !343
  %i.atr = getelementptr inbounds nuw i8, ptr %i.pn, i64 216
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !105, !noalias !343
  %i.att = fmul reassoc nsz arcp contract afn double %i.ats, %i.atf
  %i.atu = load double, ptr %i.agg, align 8, !tbaa !105, !noalias !343
  %i.atv = fadd reassoc nsz arcp contract afn double %i.atu, %i.att
  store double %i.atv, ptr %i.agg, align 8, !tbaa !105, !noalias !343
  %i.atw = getelementptr inbounds nuw i8, ptr %i.pn, i64 288
  %i.atx = load double, ptr %i.atw, align 32, !tbaa !105, !noalias !343
  %i.aty = fmul reassoc nsz arcp contract afn double %i.atx, %i.atf
  %i.atz = load double, ptr %i.ahq, align 32, !tbaa !105, !noalias !343
  %i.aua = fadd reassoc nsz arcp contract afn double %i.atz, %i.aty
  store double %i.aua, ptr %i.ahq, align 32, !tbaa !105, !noalias !343
  %i.aub = getelementptr inbounds nuw i8, ptr %i.pn, i64 360
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !105, !noalias !343
  %i.aud = fmul reassoc nsz arcp contract afn double %i.auc, %i.atf
  %i.aue = load double, ptr %i.aja, align 8, !tbaa !105, !noalias !343
  %i.auf = fadd reassoc nsz arcp contract afn double %i.aue, %i.aud
  store double %i.auf, ptr %i.aja, align 8, !tbaa !105, !noalias !343
  %i.aug = getelementptr inbounds nuw i8, ptr %i.pn, i64 432
  %i.auh = load double, ptr %i.aug, align 16, !tbaa !105, !noalias !343
  %i.aui = fmul reassoc nsz arcp contract afn double %i.auh, %i.atf
  %i.auj = load double, ptr %i.akk, align 16, !tbaa !105, !noalias !343
  %i.auk = fadd reassoc nsz arcp contract afn double %i.auj, %i.aui
  store double %i.auk, ptr %i.akk, align 16, !tbaa !105, !noalias !343
  %i.aul = getelementptr inbounds nuw i8, ptr %i.pn, i64 504
  %i.aum = load double, ptr %i.aul, align 8, !tbaa !105, !noalias !343
  %i.aun = fmul reassoc nsz arcp contract afn double %i.aum, %i.atf
  %i.auo = load double, ptr %i.alu, align 8, !tbaa !105, !noalias !343
  %i.aup = fadd reassoc nsz arcp contract afn double %i.auo, %i.aun
  store double %i.aup, ptr %i.alu, align 8, !tbaa !105, !noalias !343
  %i.auq = getelementptr inbounds nuw i8, ptr %i.pn, i64 576
  %i.aur = load double, ptr %i.auq, align 64, !tbaa !105, !noalias !343
  %i.aus = fmul reassoc nsz arcp contract afn double %i.aur, %i.atf
  %i.aut = load double, ptr %i.ank, align 64, !tbaa !105, !noalias !343
  %i.auu = fadd reassoc nsz arcp contract afn double %i.aut, %i.aus
  store double %i.auu, ptr %i.ank, align 64, !tbaa !105, !noalias !343
  %i.auv = getelementptr inbounds nuw i8, ptr %i.anl, i64 4
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !15, !noalias !343
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.aux ; 2 uses
  %i.auz = load double, ptr %i.auy, align 8, !tbaa !105, !noalias !343 ; 8 uses
  store double %i.atl, ptr %i.auy, align 8, !tbaa !105, !noalias !343
  store double %i.auz, ptr %i.adm, align 8, !tbaa !105, !noalias !343
  %i.ava = getelementptr inbounds nuw i8, ptr %i.pn, i64 152
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !105, !noalias !343
  %i.avc = fmul reassoc nsz arcp contract afn double %i.avb, %i.auz
  %i.avd = load double, ptr %i.aew, align 16, !tbaa !105, !noalias !343
  %i.ave = fadd reassoc nsz arcp contract afn double %i.avd, %i.avc ; 2 uses
  store double %i.ave, ptr %i.aew, align 16, !tbaa !105, !noalias !343
  %i.avf = getelementptr inbounds nuw i8, ptr %i.pn, i64 224
  %i.avg = load double, ptr %i.avf, align 32, !tbaa !105, !noalias !343
  %i.avh = fmul reassoc nsz arcp contract afn double %i.avg, %i.auz
  %i.avi = load double, ptr %i.agg, align 8, !tbaa !105, !noalias !343
  %i.avj = fadd reassoc nsz arcp contract afn double %i.avi, %i.avh
  store double %i.avj, ptr %i.agg, align 8, !tbaa !105, !noalias !343
  %i.avk = getelementptr inbounds nuw i8, ptr %i.pn, i64 296
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !105, !noalias !343
  %i.avm = fmul reassoc nsz arcp contract afn double %i.avl, %i.auz
  %i.avn = load double, ptr %i.ahq, align 32, !tbaa !105, !noalias !343
  %i.avo = fadd reassoc nsz arcp contract afn double %i.avn, %i.avm
  store double %i.avo, ptr %i.ahq, align 32, !tbaa !105, !noalias !343
  %i.avp = getelementptr inbounds nuw i8, ptr %i.pn, i64 368
  %i.avq = load double, ptr %i.avp, align 16, !tbaa !105, !noalias !343
  %i.avr = fmul reassoc nsz arcp contract afn double %i.avq, %i.auz
  %i.avs = load double, ptr %i.aja, align 8, !tbaa !105, !noalias !343
  %i.avt = fadd reassoc nsz arcp contract afn double %i.avs, %i.avr
  store double %i.avt, ptr %i.aja, align 8, !tbaa !105, !noalias !343
  %i.avu = getelementptr inbounds nuw i8, ptr %i.pn, i64 440
  %i.avv = load double, ptr %i.avu, align 8, !tbaa !105, !noalias !343
  %i.avw = fmul reassoc nsz arcp contract afn double %i.avv, %i.auz
  %i.avx = load double, ptr %i.akk, align 16, !tbaa !105, !noalias !343
  %i.avy = fadd reassoc nsz arcp contract afn double %i.avx, %i.avw
  store double %i.avy, ptr %i.akk, align 16, !tbaa !105, !noalias !343
  %i.avz = getelementptr inbounds nuw i8, ptr %i.pn, i64 512
  %i.awa = load double, ptr %i.avz, align 64, !tbaa !105, !noalias !343
  %i.awb = fmul reassoc nsz arcp contract afn double %i.awa, %i.auz
  %i.awc = load double, ptr %i.alu, align 8, !tbaa !105, !noalias !343
  %i.awd = fadd reassoc nsz arcp contract afn double %i.awc, %i.awb
  store double %i.awd, ptr %i.alu, align 8, !tbaa !105, !noalias !343
  %i.awe = getelementptr inbounds nuw i8, ptr %i.pn, i64 584
end_hunk_1
