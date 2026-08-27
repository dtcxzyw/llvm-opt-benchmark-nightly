Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@process:bb.a
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, 5.000000e-01 ; 3 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.lc
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.lc
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, %.sroa.0262.1.i
  %i.lg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ks, float %i.lf)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.lh = phi reassoc nsz arcp contract afn float [ %i.lg, %bb.ax ], [ %i.ks, %bb.aw ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ko
  store float %i.lh, ptr %i.li, align 16, !tbaa !11
  %i.lj = or disjoint i64 %i.ko, 1                ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !11
  %i.lm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ll, float 0.000000e+00) ; 3 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ult float %i.lm, %.sroa.5.0.i
  br i1 %i.ln, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lo = load float, ptr %i.kq, align 4, !tbaa !11
  %i.lp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lo, float 0.000000e+00)
  %i.lq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lp) #35
  %i.lr = load float, ptr %i.kp, align 4, !tbaa !11
  %i.ls = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lr, float 0.000000e+00)
  %i.lt = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ls) #35
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lt, %i.lq
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, 5.000000e-01 ; 3 uses
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.lv
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lw, %i.lv
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, %.sroa.8.1.i
  %i.lz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lm, float %i.ly)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ma = phi reassoc nsz arcp contract afn float [ %i.lz, %bb.az ], [ %i.lm, %bb.ay ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.lj
  store float %i.ma, ptr %i.mb, align 4, !tbaa !11
  %i.mc = or disjoint i64 %i.ko, 2                ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !11
  %i.mf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.me, float 0.000000e+00) ; 3 uses
  %i.mg = fcmp reassoc nsz arcp contract afn ult float %i.mf, %i.cr
  br i1 %i.mg, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mh = load <2 x float>, ptr %i.kp, align 4, !tbaa !11
  %i.mi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mh, <2 x float> zeroinitializer) ; 2 uses
  %i.mj = extractelement <2 x float> %i.mi, i64 1
  %i.mk = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mj) #35
  %i.ml = extractelement <2 x float> %i.mi, i64 0
  %i.mm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ml) #35
  %i.mn = fadd reassoc nsz arcp contract afn float %i.mm, %i.mk
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, 5.000000e-01 ; 3 uses
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.mo
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.mo
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mq, %.sroa.11.1.i
  %i.ms = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mf, float %i.mr)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.mt = phi reassoc nsz arcp contract afn float [ %i.ms, %bb.bb ], [ %i.mf, %bb.ba ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mc
  store float %i.mt, ptr %i.mu, align 8, !tbaa !11
  %i.mv = add nuw i64 %.0161234.i, 1              ; 2 uses
  %exitcond250.not.i = icmp eq i64 %i.mv, %i.cu
  br i1 %exitcond250.not.i, label %._crit_edge235.i, label %bb.aw

_process_linear_opposed.exit:                     ; preds = %._crit_edge235.i, %bb.u, %.thread199.i
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_process_linear_opposed.exit
  %.not282 = icmp eq i32 %i.aq, 0
  br i1 %.not282, label %.thread361, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  %i.mw = tail call fastcc ptr @_provide_raster_mask(ptr noundef %4, ptr noundef %5, ptr noundef %3, float noundef %i.bn, ptr noundef %1) ; 2 uses
  %.not283 = icmp eq ptr %i.mw, null
  br i1 %.not283, label %.thread361, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @dt_iop_piece_set_raster(ptr noundef %1, ptr noundef nonnull %i.mw, ptr noundef %4, ptr noundef %5) #33
  br label %.loopexit379

.thread361:                                       ; preds = %.loopexit, %bb.bd
  tail call void @dt_iop_piece_clear_raster(ptr noundef %1, ptr noundef null) #33
  br label %.loopexit379

bb.bf:                                            ; preds = %bb.q
  switch i32 %i.aa, label %bb.ft [
    i32 2, label %bb.bg
    i32 1, label %bb.ee
    i32 4, label %bb.eh
    i32 0, label %bb.em
    i32 3, label %bb.en
  ]

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  %i.mx = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.mz = load float, ptr %i.my, align 8, !tbaa !11
  %i.na = load <2 x float>, ptr %i.mx, align 16, !tbaa !11
  %i.nb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.mz, i64 2
  %i.nc = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> %i.nb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ne = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bn, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ng = fmul reassoc nsz arcp contract afn <4 x float> %i.nd, %i.nf
  store <4 x float> %i.ng, ptr %i.j, align 16, !tbaa !11
  %i.nh = icmp eq i32 %i.o, 9
  br i1 %i.nh, label %bb.bh, label %.preheader383

.preheader383:                                    ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !308 ; 9 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !310 ; 11 uses
  br i1 %i.nk, label %.lr.ph393, label %.preheader381

.lr.ph393:                                        ; preds = %.preheader383
  %i.nn = sext i32 %i.nm to i64
  %.not141182.i = icmp eq i32 %i.nm, 0
  %i.no = add nsw i32 %i.nm, -1                   ; 5 uses
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.np
  %i.nr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.np
  %i.ns = add i32 %i.nm, -2
  %i.nt = icmp eq i32 %i.no, 0
  br i1 %.not141182.i, label %.loopexit380, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph393
  %i.nu = add nsw i32 %i.nj, -1
  %i.nv = zext nneg i32 %i.nu to i64
  %wide.trip.count = zext nneg i32 %i.nj to i64
  %.not141.i.peel = icmp eq i32 %i.nm, 1
  %.not608 = icmp eq i32 %i.nm, 2
  %i.nw = add i32 %i.nm, -2
  br label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !308
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph400, label %.preheader

.preheader:                                       ; preds = %.lr.ph400, %bb.bh
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !310
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph402, label %.loopexit380

.lr.ph400:                                        ; preds = %bb.bh, %.lr.ph400
  %.0267399 = phi i32 [ %i.oe, %.lr.ph400 ], [ 0, %bb.bh ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef %.0267399, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 0)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef %.0267399, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 1)
  %i.oe = add nuw nsw i32 %.0267399, 1            ; 2 uses
  %i.of = load i32, ptr %i.ny, align 4, !tbaa !308
  %i.og = icmp slt i32 %i.oe, %i.of
  br i1 %i.og, label %.lr.ph400, label %.preheader

.lr.ph402:                                        ; preds = %.preheader, %.lr.ph402
  %.0266401 = phi i32 [ %i.oh, %.lr.ph402 ], [ 0, %.preheader ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef %.0266401, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 2)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef -1, i32 noundef %.0266401, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 3)
  %i.oh = add nuw nsw i32 %.0266401, 1            ; 2 uses
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !310
  %i.oj = icmp slt i32 %i.oh, %i.oi
  br i1 %i.oj, label %.lr.ph402, label %.loopexit380

.preheader381:                                    ; preds = %interpolate_color.exit314.loopexit, %.preheader383
  %i.ok = icmp sgt i32 %i.nm, 0
  br i1 %i.ok, label %.lr.ph398, label %.loopexit380

.lr.ph398:                                        ; preds = %.preheader381
  %i.ol = zext nneg i32 %i.nm to i64              ; 11 uses
  %.not141182.i315 = icmp eq i32 %i.nj, 0
  %i.om = add nsw i32 %i.nj, -1                   ; 3 uses
  %i.on = sub nsw i64 0, %i.ol                    ; 4 uses
  %i.oo = sext i32 %i.om to i64
  %i.op = mul nsw i64 %i.ol, %i.oo                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.op
  br i1 %.not141182.i315, label %.loopexit380, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %.lr.ph398
  %i.oq = add nsw i32 %i.nm, -1
  %i.or = zext nneg i32 %i.oq to i64              ; 2 uses
  %.not141.i330.peel = icmp eq i32 %i.nj, 1
  %.not141.i350.peel = icmp eq i32 %i.om, 0
  %i.os = add nsw i32 %i.nj, -2
  %.not609 = icmp eq i32 %i.nj, 2
  %i.ot = add i32 %i.nj, -2
  br label %.lr.ph.i316

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %interpolate_color.exit314.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %interpolate_color.exit314.loopexit ] ; 5 uses
  %i.ou = mul nsw i64 %indvars.iv, %i.nn          ; 4 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ov = shl i32 %indvars.iv.tr, 1
  %i.ow = and i32 %i.ov, 14                       ; 4 uses
  %i.ox = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %i.oy = icmp eq i64 %indvars.iv, %i.nv
  %.fr = freeze i1 %i.oy                          ; 2 uses
  %i.oz = or i1 %.fr, %i.ox
  br i1 %i.oz, label %interpolate_color.exit, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  br i1 %.not141.i.peel, label %interpolate_color.exit314.loopexit, label %.lr.ph.i.split.preheader513

.lr.ph.i.split.preheader513:                      ; preds = %.lr.ph.i.split.preheader
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ou ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ou ; 2 uses
  br i1 %.not608, label %.lr.ph.i.split.peel, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.preheader513, %bb.bt
  %.0120188.i = phi i32 [ %i.qm, %bb.bt ], [ 1, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.1129185.i.pn = phi ptr [ %.1129185.i, %bb.bt ], [ %i.pa, %.lr.ph.i.split.preheader513 ]
  %.1131184.i.pn = phi ptr [ %.1131184.i, %bb.bt ], [ %i.pb, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.0132183.i = phi float [ %.1133.i, %bb.bt ], [ 1.000000e+00, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.1131184.i = getelementptr inbounds nuw i8, ptr %.1131184.i.pn, i64 4 ; 3 uses
  %.1129185.i = getelementptr inbounds nuw i8, ptr %.1129185.i.pn, i64 4 ; 3 uses
  %i.pc = and i32 %.0120188.i, 1                  ; 3 uses
  %.tr.i.i = or disjoint i32 %i.pc, %i.ow
  %i.pd = shl nuw nsw i32 %.tr.i.i, 1             ; 2 uses
  %i.pe = lshr i32 %i.o, %i.pd
  %i.pf = and i32 %i.pe, 3
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !11 ; 3 uses
  %i.pj = xor i32 %i.pd, 2
  %i.pk = lshr i32 %i.o, %i.pj
  %i.pl = and i32 %i.pk, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !11 ; 3 uses
  %i.pp = load float, ptr %.1131184.i, align 4, !tbaa !11 ; 5 uses
  %i.pq = fcmp reassoc nsz arcp contract afn olt float %i.pp, %i.pi
  %i.pr = fcmp reassoc nsz arcp contract afn ogt float %i.pp, f0x3727C5AC
  %or.cond144.i = and i1 %i.pq, %i.pr
  br i1 %or.cond144.i, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.lr.ph.i.split
  %i.ps = getelementptr inbounds nuw i8, ptr %.1131184.i.pn, i64 8
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !11 ; 4 uses
  %i.pu = fcmp reassoc nsz arcp contract afn olt float %i.pt, %i.po
  %i.pv = fcmp reassoc nsz arcp contract afn ogt float %i.pt, f0x3727C5AC
  %or.cond145.i = and i1 %i.pu, %i.pv
  br i1 %or.cond145.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not.i294 = icmp eq i32 %i.pc, 0
  %i.pw = fmul reassoc nsz arcp contract afn float %.0132183.i, 3.000000e+00 ; 2 uses
  br i1 %.not.i294, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.px = fdiv reassoc nsz arcp contract afn float %i.pp, %i.pt
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, %i.pw
  %i.pz = fmul reassoc nsz arcp contract afn float %i.py, 2.500000e-01
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.qa = fdiv reassoc nsz arcp contract afn float %i.pt, %i.pp
  %i.qb = fadd reassoc nsz arcp contract afn float %i.qa, %i.pw
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, 2.500000e-01
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %.lr.ph.i.split
  %.1133.i = phi nsz float [ %i.pz, %bb.bk ], [ %i.qc, %bb.bl ], [ %.0132183.i, %.lr.ph.i.split ], [ %.0132183.i, %bb.bi ] ; 4 uses
  %i.qd = fadd reassoc nsz arcp contract afn float %i.pi, f0xB727C5AC
  %i.qe = fcmp reassoc nsz arcp contract afn ult float %i.pp, %i.qd
  br i1 %i.qe, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qf = getelementptr inbounds nuw i8, ptr %.1131184.i.pn, i64 8
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !11 ; 3 uses
  %i.qh = fadd reassoc nsz arcp contract afn float %i.po, f0xB727C5AC
  %i.qi = fcmp reassoc nsz arcp contract afn ult float %i.qg, %i.qh
  br i1 %i.qi, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pi, float %i.po)
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %.not142.i = icmp eq i32 %i.pc, 0
  br i1 %.not142.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qg, %.1133.i
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ql = fdiv reassoc nsz arcp contract afn float %i.qg, %.1133.i
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %.0.i = phi nsz float [ %i.qj, %bb.bo ], [ %i.qk, %bb.bq ], [ %i.ql, %bb.br ]
  store float %.0.i, ptr %.1129185.i, align 4, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bm, %bb.bs
  %i.qm = add nuw nsw i32 %.0120188.i, 1          ; 2 uses
  %.not141.i = icmp eq i32 %.0120188.i, %i.nw
  br i1 %.not141.i, label %.lr.ph.i.split.peel, label %.lr.ph.i.split, !llvm.loop !374

.lr.ph.i.split.peel:                              ; preds = %.lr.ph.i.split.preheader513, %bb.bt
  %i.qn = phi i32 [ 1, %.lr.ph.i.split.preheader513 ], [ %i.qm, %bb.bt ] ; 2 uses
  %i.qo = phi ptr [ %i.pa, %.lr.ph.i.split.preheader513 ], [ %.1129185.i, %bb.bt ]
  %i.qp = phi ptr [ %i.pb, %.lr.ph.i.split.preheader513 ], [ %.1131184.i, %bb.bt ] ; 3 uses
  %i.qq = phi float [ 1.000000e+00, %.lr.ph.i.split.preheader513 ], [ %.1133.i, %bb.bt ] ; 3 uses
  %.1129185.i.peel = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qr = and i32 %i.qn, 1                        ; 3 uses
  %.tr.i.i.peel = or disjoint i32 %i.qr, %i.ow
  %i.qs = shl nuw nsw i32 %.tr.i.i.peel, 1        ; 2 uses
  %i.qt = lshr i32 %i.o, %i.qs
  %i.qu = and i32 %i.qt, 3
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.qv
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !11 ; 3 uses
  %i.qy = xor i32 %i.qs, 2
  %i.qz = lshr i32 %i.o, %i.qy
  %i.ra = and i32 %i.qz, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !11 ; 3 uses
  %i.re = icmp eq i32 %i.qn, %i.no
  br i1 %i.re, label %interpolate_color.exit, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.split.peel
  %.1131184.i.peel = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.rf = load float, ptr %.1131184.i.peel, align 4, !tbaa !11 ; 5 uses
  %i.rg = fcmp reassoc nsz arcp contract afn olt float %i.rf, %i.qx
  %i.rh = fcmp reassoc nsz arcp contract afn ogt float %i.rf, f0x3727C5AC
  %or.cond144.i.peel = and i1 %i.rg, %i.rh
  br i1 %or.cond144.i.peel, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !11 ; 4 uses
  %i.rk = fcmp reassoc nsz arcp contract afn olt float %i.rj, %i.rd
  %i.rl = fcmp reassoc nsz arcp contract afn ogt float %i.rj, f0x3727C5AC
  %or.cond145.i.peel = and i1 %i.rk, %i.rl
  br i1 %or.cond145.i.peel, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %.not.i294.peel = icmp eq i32 %i.qr, 0
  %i.rm = fmul reassoc nsz arcp contract afn float %i.qq, 3.000000e+00 ; 2 uses
  br i1 %.not.i294.peel, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rn = fdiv reassoc nsz arcp contract afn float %i.rf, %i.rj
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %i.rm
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ro, 2.500000e-01
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.rq = fdiv reassoc nsz arcp contract afn float %i.rj, %i.rf
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, %i.rm
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, 2.500000e-01
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu
  %.1133.i.peel = phi nsz float [ %i.rp, %bb.bx ], [ %i.rs, %bb.by ], [ %i.qq, %bb.bu ], [ %i.qq, %bb.bv ] ; 2 uses
  %i.rt = fadd reassoc nsz arcp contract afn float %i.qx, f0xB727C5AC
  %i.ru = fcmp reassoc nsz arcp contract afn ult float %i.rf, %i.rt
  br i1 %i.ru, label %interpolate_color.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !11 ; 3 uses
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rd, f0xB727C5AC
  %i.ry = fcmp reassoc nsz arcp contract afn ult float %i.rw, %i.rx
  br i1 %i.ry, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qx, float %i.rd)
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %.not142.i.peel = icmp eq i32 %i.qr, 0
  br i1 %.not142.i.peel, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rw, %.1133.i.peel
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.sb = fdiv reassoc nsz arcp contract afn float %i.rw, %.1133.i.peel
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cb
  %.0.i.peel = phi nsz float [ %i.rz, %bb.cb ], [ %i.sa, %bb.cd ], [ %i.sb, %bb.ce ]
  store float %.0.i.peel, ptr %.1129185.i.peel, align 4, !tbaa !11
  br label %interpolate_color.exit

interpolate_color.exit:                           ; preds = %bb.cf, %bb.bz, %.lr.ph.i.split.peel, %.lr.ph.i
  br i1 %i.nt, label %interpolate_color.exit314.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %interpolate_color.exit
end_hunk_0
begin_hunk_1_@process_lch_xtrans:bb.a
  %i.tr = getelementptr i8, ptr %i.tq, i64 -4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !11 ; 3 uses
  %i.tt = getelementptr inbounds i8, ptr %i.cr, i64 %i.qj
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !332
  %i.tv = zext i8 %i.tu to i64                    ; 3 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.tv ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !11
  %i.ty = fadd reassoc nsz arcp contract afn float %i.tx, %i.ts
  store float %i.ty, ptr %i.tw, align 4, !tbaa !11
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tv ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !22
  %i.ub = add nsw i32 %i.ua, 1
  store i32 %i.ub, ptr %i.tz, align 4, !tbaa !22
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tv ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !11 ; 2 uses
  %i.ue = fcmp reassoc nsz arcp contract afn ogt float %i.ud, %i.ts
  %.167.276 = select reassoc nsz arcp contract afn i1 %i.ue, float %i.ud, float %i.ts
  store float %.167.276, ptr %i.uc, align 4, !tbaa !11
  %i.uf = load float, ptr %i.tq, align 4, !tbaa !11 ; 3 uses
  %i.ug = getelementptr inbounds i8, ptr %i.cr, i64 %i.qy
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !332
  %i.ui = zext i8 %i.uh to i64                    ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ui ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !11
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uk, %i.uf
  store float %i.ul, ptr %i.uj, align 4, !tbaa !11
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ui ; 2 uses
  %i.un = load i32, ptr %i.um, align 4, !tbaa !22
  %i.uo = add nsw i32 %i.un, 1
  store i32 %i.uo, ptr %i.um, align 4, !tbaa !22
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ui ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !11 ; 2 uses
  %i.ur = fcmp reassoc nsz arcp contract afn ogt float %i.uq, %i.uf
  %.167.1.2 = select reassoc nsz arcp contract afn i1 %i.ur, float %i.uq, float %i.uf
  store float %.167.1.2, ptr %i.up, align 4, !tbaa !11
  %i.us = getelementptr i8, ptr %i.tq, i64 4
  %i.ut = load float, ptr %i.us, align 4, !tbaa !11 ; 3 uses
  %i.uu = getelementptr inbounds i8, ptr %i.cr, i64 %i.rp
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !332
  %i.uw = zext i8 %i.uv to i64                    ; 3 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.uw ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !11
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, %i.ut
  store float %i.uz, ptr %i.ux, align 4, !tbaa !11
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uw ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !22
  %i.vc = add nsw i32 %i.vb, 1
  store i32 %i.vc, ptr %i.va, align 4, !tbaa !22
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.uw ; 2 uses
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !11 ; 2 uses
  %i.vf = fcmp reassoc nsz arcp contract afn ogt float %i.ve, %i.ut
  %.167.2.2 = select reassoc nsz arcp contract afn i1 %i.vf, float %i.ve, float %i.ut
  store float %.167.2.2, ptr %i.vd, align 4, !tbaa !11
  %i.vg = load float, ptr %i.b, align 16, !tbaa !11 ; 3 uses
  %i.vh = load float, ptr %i.s, align 4, !tbaa !11 ; 4 uses
  %i.vi = load float, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vh, %i.vg ; 2 uses
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.vi
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, f0x3EAAAAAB ; 2 uses
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vg, %i.vh
  %i.vn = fpext reassoc nsz arcp contract afn float %i.vm to x86_fp80
  %i.vo = fmul reassoc nsz arcp contract afn x86_fp80 %i.vn, f0x3FFFDDB3D742C265539E
  %i.vp = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.vo to float ; 4 uses
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vi, 2.000000e+00
  %i.vr = fsub reassoc nsz arcp contract afn float %i.vq, %i.vj ; 4 uses
  %i.vs = fcmp reassoc nsz arcp contract afn une float %i.vg, %i.vh
  %i.vt = fcmp reassoc nsz arcp contract afn une float %i.vh, %i.vi
  %or.cond168 = select i1 %i.vs, i1 %i.vt, i1 false
  br i1 %or.cond168, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.vu = load float, ptr %i.u, align 8, !tbaa !11
  %i.vv = load i32, ptr %i.v, align 8, !tbaa !22
  %i.vw = sitofp reassoc nsz arcp contract afn i32 %i.vv to float
  %i.vx = fdiv reassoc nsz arcp contract afn float %i.vu, %i.vw ; 2 uses
  %i.vy = fcmp reassoc nsz arcp contract afn olt float %i.vx, %5
  %i.vz = select reassoc nsz arcp contract afn i1 %i.vy, float %i.vx, float %5
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, 2.000000e+00
  %i.wb = load <2 x float>, ptr %i.a, align 16, !tbaa !11
  %i.wc = load <2 x i32>, ptr %i.c, align 8, !tbaa !22
  %i.wd = sitofp <2 x i32> %i.wc to <2 x float>
  %i.we = fdiv reassoc nsz arcp contract afn <2 x float> %i.wb, %i.wd ; 2 uses
  %i.wf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.we, %i.bf
  %i.wg = select <2 x i1> %i.wf, <2 x float> %i.we, <2 x float> %i.bf ; 2 uses
  %i.wh = extractelement <2 x float> %i.wg, i64 0 ; 2 uses
  %i.wi = extractelement <2 x float> %i.wg, i64 1 ; 2 uses
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wi, %i.wh
  %i.wk = fsub reassoc nsz arcp contract afn float %i.wa, %i.wj ; 2 uses
  %i.wl = fsub reassoc nsz arcp contract afn float %i.wh, %i.wi
  %i.wm = fpext reassoc nsz arcp contract afn float %i.wl to x86_fp80
  %i.wn = fmul reassoc nsz arcp contract afn x86_fp80 %i.wm, f0x3FFFDDB3D742C265539E
  %i.wo = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.wn to float ; 2 uses
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, %i.wo
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wk, %i.wk
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, %i.wq
  %i.ws = fmul reassoc nsz arcp contract afn float %i.vp, %i.vp
  %i.wt = fmul reassoc nsz arcp contract afn float %i.vr, %i.vr
  %i.wu = fadd reassoc nsz arcp contract afn float %i.ws, %i.wt
  %i.wv = fdiv reassoc nsz arcp contract afn float %i.wr, %i.wu
  %i.ww = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wv) ; 2 uses
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, %i.vp
  %i.wy = fmul reassoc nsz arcp contract afn float %i.ww, %i.vr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %.0135 = phi nsz float [ %i.wx, %bb.g ], [ %i.vp, %.thread ]
  %.0 = phi nsz float [ %i.wy, %bb.g ], [ %i.vr, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.wz = fmul reassoc nsz arcp contract afn float %.0, f0x3E2AAAAB
  %i.xa = fsub reassoc nsz arcp contract afn float %i.vl, %i.wz
  %i.xb = fpext reassoc nsz arcp contract afn float %i.xa to x86_fp80 ; 2 uses
  %i.xc = fpext reassoc nsz arcp contract afn float %.0135 to x86_fp80
  %i.xd = fmul reassoc nsz arcp contract afn x86_fp80 %i.xc, f0x3FFD93CD3A2C8198E269 ; 2 uses
  %i.xe = fadd reassoc nsz arcp contract afn x86_fp80 %i.xd, %i.xb
  %i.xf = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.xe to float
  store float %i.xf, ptr %i.d, align 16, !tbaa !11
  %i.xg = fsub reassoc nsz arcp contract afn x86_fp80 %i.xb, %i.xd
  %i.xh = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.xg to float
  store float %i.xh, ptr %i.w, align 4, !tbaa !11
  %i.xi = fmul reassoc nsz arcp contract afn float %.0, f0x3EAAAAAB
  %i.xj = fadd reassoc nsz arcp contract afn float %i.xi, %i.vl
  store float %i.xj, ptr %i.x, align 8, !tbaa !11
  %i.xk = urem i32 %i.qd, 6
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !332
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !11
  store float %i.xq, ptr %.014820, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.i

.critedge:                                        ; preds = %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.162, %.loopexit.1.1, %.loopexit.2.1, %.loopexit.272, %.loopexit.1.2, %bb.f, %.loopexit.2.2
  store float %i.ii, ptr %.014820, align 4, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.d
  %i.xr = getelementptr inbounds nuw i8, ptr %.014820, i64 4
  %i.xs = getelementptr inbounds nuw i8, ptr %.014721, i64 4
  %i.xt = add nuw nsw i32 %.014423, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.xt, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process_lch_bayer(i32 %.516.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !308  ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader6.lr.ph, label %._crit_edge32.split

.preheader6.lr.ph:                                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !310  ; 7 uses
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = sext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %i.i, label %.preheader6.preheader, label %._crit_edge32.split

.preheader6.preheader:                            ; preds = %.preheader6.lr.ph
  %i.m = add nsw i32 %i.e, -1
  %i.n = add nsw i32 %i.h, -1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.m to i64
  %wide.trip.count48 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 8 uses
  %wide.trip.count43 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -128
  %or.cond67 = or i1 %min.iters.check, %diff.check
  %min.iters.check56 = icmp ult i32 %i.h, 32
  %i.r = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec60 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert61 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat62 = shufflevector <4 x float> %broadcast.splatinsert61, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec60, %wide.trip.count
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.s = mul nuw nsw i64 %indvars.iv45, %i.j      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 12 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 12 uses
  %i.v = icmp eq i64 %indvars.iv45, %i.p
  %indvars.iv45.tr = trunc i64 %indvars.iv45 to i32
  %i.w = shl i32 %indvars.iv45.tr, 1
  %i.x = and i32 %i.w, 14                         ; 2 uses
  %.fr = freeze i1 %i.v
  br i1 %.fr, label %iter.check, label %.lr.ph.split.preheader

iter.check:                                       ; preds = %.preheader6
  br i1 %or.cond67, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <8 x float>, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  %wide.load57 = load <8 x float>, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  %wide.load59 = load <8 x float>, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load
  %i.ae = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load57
  %i.af = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load58
  %i.ag = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load59
  %i.ah = select reassoc nsz arcp contract afn <8 x i1> %i.ad, <8 x float> %broadcast.splat, <8 x float> %wide.load
  %i.ai = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> %broadcast.splat, <8 x float> %wide.load57
  %i.aj = select reassoc nsz arcp contract afn <8 x i1> %i.af, <8 x float> %broadcast.splat, <8 x float> %wide.load58
  %i.ak = select reassoc nsz arcp contract afn <8 x i1> %i.ag, <8 x float> %broadcast.splat, <8 x float> %wide.load59
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store <8 x float> %i.ah, ptr %i.y, align 4, !tbaa !11
  store <8 x float> %i.ai, ptr %i.al, align 4, !tbaa !11
  store <8 x float> %i.aj, ptr %i.am, align 4, !tbaa !11
  store <8 x float> %i.ak, ptr %i.an, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index63
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index63
  %wide.load64 = load <4 x float>, ptr %i.aq, align 4, !tbaa !11 ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt <4 x float> %broadcast.splat62, %wide.load64
  %i.as = select reassoc nsz arcp contract afn <4 x i1> %i.ar, <4 x float> %broadcast.splat62, <4 x float> %wide.load64
  store <4 x float> %i.as, ptr %i.ap, align 4, !tbaa !11
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !486

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n66, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ] ; 4 uses
  %i.au = sub nsw i64 %wide.trip.count, %indvars.iv40.ph
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ], [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv40.prol
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv40.prol
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11 ; 2 uses
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %3, %i.ax
  %..us.prol = select reassoc nsz arcp contract afn i1 %i.ay, float %3, float %i.ax
  store float %..us.prol, ptr %i.av, align 4, !tbaa !11
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !487

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ]
  %i.az = sub nsw i64 %indvars.iv40.ph, %wide.trip.count
  %i.ba = icmp ugt i64 %i.az, -8
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.preheader6
  %indvars.iv45.tr53 = trunc i64 %indvars.iv45 to i32
  %i.bb = shl i32 %indvars.iv45.tr53, 1
  %i.bc = add i32 %i.bb, 2
  %i.bd = and i32 %i.bc, 14                       ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.7, %.lr.ph.split.us ], [ %indvars.iv40.unr, %.lr.ph.split.us.prol.loopexit ] ; 10 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv40
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv40
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !11 ; 2 uses
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %3, %i.bg
  %..us = select reassoc nsz arcp contract afn i1 %i.bh, float %3, float %i.bg
  store float %..us, ptr %i.be, align 4, !tbaa !11
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %3, %i.bk
  %..us.1 = select reassoc nsz arcp contract afn i1 %i.bl, float %3, float %i.bk
  store float %..us.1, ptr %i.bi, align 4, !tbaa !11
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.1
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11 ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %3, %i.bo
  %..us.2 = select reassoc nsz arcp contract afn i1 %i.bp, float %3, float %i.bo
  store float %..us.2, ptr %i.bm, align 4, !tbaa !11
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.2
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %3, %i.bs
  %..us.3 = select reassoc nsz arcp contract afn i1 %i.bt, float %3, float %i.bs
  store float %..us.3, ptr %i.bq, align 4, !tbaa !11
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.3
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11 ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %3, %i.bw
  %..us.4 = select reassoc nsz arcp contract afn i1 %i.bx, float %3, float %i.bw
  store float %..us.4, ptr %i.bu, align 4, !tbaa !11
  %indvars.iv.next41.4 = add nuw nsw i64 %indvars.iv40, 5 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !11 ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %3, %i.ca
  %..us.5 = select reassoc nsz arcp contract afn i1 %i.cb, float %3, float %i.ca
  store float %..us.5, ptr %i.by, align 4, !tbaa !11
  %indvars.iv.next41.5 = add nuw nsw i64 %indvars.iv40, 6 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.5
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.5
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !11 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %3, %i.ce
  %..us.6 = select reassoc nsz arcp contract afn i1 %i.cf, float %3, float %i.ce
  store float %..us.6, ptr %i.cc, align 4, !tbaa !11
  %indvars.iv.next41.6 = add nuw nsw i64 %indvars.iv40, 7 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next41.6
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next41.6
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11 ; 2 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %3, %i.ci
  %..us.7 = select reassoc nsz arcp contract afn i1 %i.cj, float %3, float %i.ci
  store float %..us.7, ptr %i.cg, align 4, !tbaa !11
  %indvars.iv.next41.7 = add nuw nsw i64 %indvars.iv40, 8 ; 2 uses
  %exitcond44.not.7 = icmp eq i64 %indvars.iv.next41.7, %wide.trip.count43
  br i1 %exitcond44.not.7, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !488

._crit_edge32.split:                              ; preds = %._crit_edge, %.preheader6.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.v, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %._crit_edge32.split, label %.preheader6

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.pre-phi, %bb.v ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.cm = icmp eq i64 %indvars.iv, %i.o
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !11 ; 9 uses
  %i.co = fcmp reassoc nsz arcp contract afn olt float %3, %i.cn ; 2 uses
  br i1 %i.cm, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.cp = trunc nuw nsw i64 %indvars.iv to i32
  %i.cq = and i32 %i.cp, 1                        ; 2 uses
  %i.cr = or disjoint i32 %i.cq, %i.x
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = lshr i32 %.516.val, %i.cs
  %i.cu = and i32 %i.ct, 3                        ; 2 uses
  switch i32 %i.cu, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph.split
  %. = select reassoc nsz arcp contract afn i1 %i.co, float %3, float %i.cn
  store float %., ptr %i.ck, align 4, !tbaa !11
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.v

bb.c:                                             ; preds = %.preheader.preheader
  br label %bb.f

end_hunk_1
begin_hunk_2_@_process_opposed:bb.a
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.split362.us.us.us.us ], [ 0, %.preheader357.us.us ] ; 3 uses
  %.1282367.us.us.us = phi i32 [ %i.jy, %.split362.us.us.us.us ], [ %.0281369.us.us, %.preheader357.us.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.ei = load i32, ptr %i.av, align 4, !tbaa !310 ; 3 uses
  %i.ej = mul nuw nsw i64 %indvars.iv449, 3       ; 4 uses
  %i.ek = mul i32 %i.ei, %i.do
  %i.el = trunc nuw nsw i64 %i.ej to i32          ; 3 uses
  %invariant.op.us.us.us.us = add i32 %i.ek, %i.el ; 3 uses
  %i.em = sext i32 %invariant.op.us.us.us.us to i64
  %i.en = trunc i64 %i.ej to i32
  %i.eo = add i32 %i.en, 600
  %i.ep = urem i32 %i.eo, 6
  %i.eq = zext nneg i32 %i.ep to i64              ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !332
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em
  %i.eu = load float, ptr %i.et, align 4, !tbaa !11
  %i.ev = zext i8 %i.es to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !11
  %i.ey = fcmp reassoc nsz arcp contract afn oge float %i.eu, %i.ex
  %i.ez = zext i1 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ev ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !332
  %i.fc = add i8 %i.fb, %i.ez
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1 = add i32 %invariant.op.us.us.us.us, 1
  %i.fd = sext i32 %.reass.us.us.us.us.us.1 to i64
  %i.fe = trunc i64 %i.ej to i32
  %i.ff = add i32 %i.fe, 601
  %i.fg = urem i32 %i.ff, 6
  %i.fh = zext nneg i32 %i.fg to i64              ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !332
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !11
  %i.fm = zext i8 %i.fj to i64                    ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !11
  %i.fp = fcmp reassoc nsz arcp contract afn oge float %i.fl, %i.fo
  %i.fq = zext i1 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fm ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !332
  %i.ft = add i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2 = add i32 %invariant.op.us.us.us.us, 2
  %i.fu = sext i32 %.reass.us.us.us.us.us.2 to i64
  %i.fv = trunc i64 %i.ej to i32
  %i.fw = add i32 %i.fv, 602
  %i.fx = urem i32 %i.fw, 6
  %i.fy = zext nneg i32 %i.fx to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !332
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !11
  %i.gd = zext i8 %i.ga to i64                    ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !11
  %i.gg = fcmp reassoc nsz arcp contract afn oge float %i.gc, %i.gf
  %i.gh = zext i1 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gd ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !332
  %i.gk = add i8 %i.gj, %i.gh
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !332
  %i.gl = mul i32 %i.ei, %i.dv
  %invariant.op.us.us.us.us.1 = add i32 %i.gl, %i.el ; 3 uses
  %i.gm = sext i32 %invariant.op.us.us.us.us.1 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !332
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gm
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !11
  %i.gr = zext i8 %i.go to i64                    ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !11
  %i.gu = fcmp reassoc nsz arcp contract afn oge float %i.gq, %i.gt
  %i.gv = zext i1 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gr ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !332
  %i.gy = add i8 %i.gx, %i.gv
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1.1 = add i32 %invariant.op.us.us.us.us.1, 1
  %i.gz = sext i32 %.reass.us.us.us.us.us.1.1 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fh
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !332
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gz
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !11
  %i.he = zext i8 %i.hb to i64                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !11
  %i.hh = fcmp reassoc nsz arcp contract afn oge float %i.hd, %i.hg
  %i.hi = zext i1 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.he ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !332
  %i.hl = add i8 %i.hk, %i.hi
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2.1 = add i32 %invariant.op.us.us.us.us.1, 2
  %i.hm = sext i32 %.reass.us.us.us.us.us.2.1 to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fy
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !332
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hm
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !11
  %i.hr = zext i8 %i.ho to i64                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !11
  %i.hu = fcmp reassoc nsz arcp contract afn oge float %i.hq, %i.ht
  %i.hv = zext i1 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hr ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !332
  %i.hy = add i8 %i.hx, %i.hv
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !332
  %i.hz = mul i32 %i.ei, %i.ec
  %invariant.op.us.us.us.us.2 = add i32 %i.hz, %i.el ; 3 uses
  %i.ia = sext i32 %invariant.op.us.us.us.us.2 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !332
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ia
  %i.ie = load float, ptr %i.id, align 4, !tbaa !11
  %i.if = zext i8 %i.ic to i64                    ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !11
  %i.ii = fcmp reassoc nsz arcp contract afn oge float %i.ie, %i.ih
  %i.ij = zext i1 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.if ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !332
  %i.im = add i8 %i.il, %i.ij
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1.2 = add i32 %invariant.op.us.us.us.us.2, 1
  %i.in = sext i32 %.reass.us.us.us.us.us.1.2 to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fh
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !332
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.in
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %i.is = zext i8 %i.ip to i64                    ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !11
  %i.iv = fcmp reassoc nsz arcp contract afn oge float %i.ir, %i.iu
  %i.iw = zext i1 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.is ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !332
  %i.iz = add i8 %i.iy, %i.iw
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2.2 = add i32 %invariant.op.us.us.us.us.2, 2
  %i.ja = sext i32 %.reass.us.us.us.us.us.2.2 to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fy
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !332
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ja
  %i.je = load float, ptr %i.jd, align 4, !tbaa !11
  %i.jf = zext i8 %i.jc to i64                    ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  %i.ji = fcmp reassoc nsz arcp contract afn oge float %i.je, %i.jh
  %i.jj = zext i1 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jf ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !332
  %i.jm = add i8 %i.jl, %i.jj
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !332
  %invariant.gep363.us.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %indvars.iv449 ; 3 uses
  %i.jn = load i8, ptr %i.d, align 1, !tbaa !332
  %.not319.us.us.us = icmp ne i8 %i.jn, 0         ; 2 uses
  %i.jo = zext i1 %.not319.us.us.us to i8
  store i8 %i.jo, ptr %invariant.gep363.us.us.us, align 1, !tbaa !332
  %i.jp = zext i1 %.not319.us.us.us to i32
  %i.jq = or i32 %.1282367.us.us.us, %i.jp
  %i.jr = load i8, ptr %i.dj, align 1, !tbaa !332
  %.not319.us.us.us.1 = icmp ne i8 %i.jr, 0       ; 2 uses
  %i.js = zext i1 %.not319.us.us.us.1 to i8
  %gep364.us.us.us.1 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.bf
  store i8 %i.js, ptr %gep364.us.us.us.1, align 1, !tbaa !332
  %i.jt = zext i1 %.not319.us.us.us.1 to i32
  %i.ju = or i32 %i.jq, %i.jt
  %i.jv = load i8, ptr %i.dk, align 1, !tbaa !332
  %.not319.us.us.us.2 = icmp ne i8 %i.jv, 0       ; 2 uses
  %i.jw = zext i1 %.not319.us.us.us.2 to i8
  %gep364.us.us.us.2 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.dl
  store i8 %i.jw, ptr %gep364.us.us.us.2, align 1, !tbaa !332
  %i.jx = zext i1 %.not319.us.us.us.2 to i32
  %i.jy = or i32 %i.ju, %i.jx                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %i.dh
  br i1 %exitcond453.not, label %._crit_edge.split.us.us.us, label %.split362.us.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.split362.us.us.us.us
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next455, %i.dg
  br i1 %exitcond457.not, label %._crit_edge371, label %.preheader357.us.us

.preheader357.us:                                 ; preds = %.preheader357.lr.ph.split.us, %._crit_edge.split.us381
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %._crit_edge.split.us381 ], [ 0, %.preheader357.lr.ph.split.us ] ; 4 uses
  %.0281369.us = phi i32 [ %i.qg, %._crit_edge.split.us381 ], [ 0, %.preheader357.lr.ph.split.us ]
  %i.jz = mul nuw nsw i64 %indvars.iv435, 3       ; 3 uses
  %i.ka = mul nsw i64 %indvars.iv435, %i.ay
  %invariant.gep.us = getelementptr i8, ptr %i.df, i64 %i.ka
  %i.kb = trunc i64 %i.jz to i32
  %i.kc = trunc i64 %indvars.iv435 to i32
  %i.kd = mul i32 %i.kc, 6
  %i.ke = and i32 %i.kd, 14                       ; 3 uses
  %i.kf = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %i.kg = trunc i64 %i.kf to i32
  %.tr = trunc i64 %i.kf to i32
  %i.kh = shl i32 %.tr, 1
  %i.ki = and i32 %i.kh, 14                       ; 3 uses
  %i.kj = add nuw nsw i64 %i.jz, 2                ; 2 uses
  %i.kk = trunc i64 %i.kj to i32
  %.tr520 = trunc i64 %i.kj to i32
  %i.kl = shl i32 %.tr520, 1
  %i.km = and i32 %i.kl, 14                       ; 3 uses
  br label %.split362.us

.split362.us:                                     ; preds = %.preheader357.us, %.split362.us
  %indvars.iv = phi i64 [ 0, %.preheader357.us ], [ %indvars.iv.next, %.split362.us ] ; 3 uses
  %.1282367.us374 = phi i32 [ %.0281369.us, %.preheader357.us ], [ %i.qg, %.split362.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.kn = load i32, ptr %i.av, align 4, !tbaa !310 ; 3 uses
  %i.ko = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.kp = mul i32 %i.kn, %i.kb
  %i.kq = trunc nuw nsw i64 %i.ko to i32          ; 4 uses
  %invariant.op.us = add i32 %i.kp, %i.kq         ; 3 uses
  %i.kr = sext i32 %invariant.op.us to i64
  %i.ks = and i32 %i.kq, 1                        ; 3 uses
  %.tr.i.i.us = or disjoint i32 %i.ks, %i.ke
  %i.kt = shl nuw nsw i32 %.tr.i.i.us, 1
  %i.ku = lshr i32 %i.j, %i.kt
  %i.kv = and i32 %i.ku, 3
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kr
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !11
  %i.ky = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !11
  %i.lb = fcmp reassoc nsz arcp contract afn oge float %i.kx, %i.la
  %i.lc = zext i1 %i.lb to i8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ky ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !332
  %i.lf = add i8 %i.le, %i.lc
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !332
  %.reass.us.1 = add i32 %invariant.op.us, 1
  %i.lg = sext i32 %.reass.us.1 to i64
  %i.lh = trunc i64 %i.ko to i32
  %i.li = and i32 %i.lh, 1
  %i.lj = xor i32 %i.li, 1                        ; 3 uses
  %.tr.i.i.us.1 = or disjoint i32 %i.lj, %i.ke
  %i.lk = shl nuw nsw i32 %.tr.i.i.us.1, 1
  %i.ll = lshr i32 %i.j, %i.lk
  %i.lm = and i32 %i.ll, 3
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lg
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !11
  %i.lp = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !11
  %i.ls = fcmp reassoc nsz arcp contract afn oge float %i.lo, %i.lr
  %i.lt = zext i1 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lp ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !332
  %i.lw = add i8 %i.lv, %i.lt
  store i8 %i.lw, ptr %i.lu, align 1, !tbaa !332
  %.reass.us.2 = add i32 %invariant.op.us, 2
  %i.lx = sext i32 %.reass.us.2 to i64
  %i.ly = trunc i64 %i.ko to i32
  %i.lz = and i32 %i.ly, 1                        ; 3 uses
  %.tr.i.i.us.2 = or disjoint i32 %i.lz, %i.ke
  %i.ma = shl nuw nsw i32 %.tr.i.i.us.2, 1
  %i.mb = lshr i32 %i.j, %i.ma
  %i.mc = and i32 %i.mb, 3
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lx
  %i.me = load float, ptr %i.md, align 4, !tbaa !11
  %i.mf = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mf
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !11
  %i.mi = fcmp reassoc nsz arcp contract afn oge float %i.me, %i.mh
  %i.mj = zext i1 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mf ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !332
  %i.mm = add i8 %i.ml, %i.mj
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !332
  %i.mn = mul i32 %i.kn, %i.kg
  %invariant.op.us.1 = add i32 %i.mn, %i.kq       ; 3 uses
  %i.mo = sext i32 %invariant.op.us.1 to i64
  %.tr.i.i.us.1432 = or disjoint i32 %i.ks, %i.ki
  %i.mp = shl nuw nsw i32 %.tr.i.i.us.1432, 1
  %i.mq = lshr i32 %i.j, %i.mp
  %i.mr = and i32 %i.mq, 3
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mo
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !11
  %i.mu = zext nneg i32 %i.mr to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mu
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !11
  %i.mx = fcmp reassoc nsz arcp contract afn oge float %i.mt, %i.mw
  %i.my = zext i1 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mu ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !332
  %i.nb = add i8 %i.na, %i.my
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !332
  %.reass.us.1.1 = add i32 %invariant.op.us.1, 1
  %i.nc = sext i32 %.reass.us.1.1 to i64
  %.tr.i.i.us.1.1 = or disjoint i32 %i.lj, %i.ki
  %i.nd = shl nuw nsw i32 %.tr.i.i.us.1.1, 1
  %i.ne = lshr i32 %i.j, %i.nd
  %i.nf = and i32 %i.ne, 3
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nc
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !11
  %i.ni = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !11
  %i.nl = fcmp reassoc nsz arcp contract afn oge float %i.nh, %i.nk
  %i.nm = zext i1 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ni ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !332
  %i.np = add i8 %i.no, %i.nm
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !332
  %.reass.us.2.1 = add i32 %invariant.op.us.1, 2
  %i.nq = sext i32 %.reass.us.2.1 to i64
  %.tr.i.i.us.2.1 = or disjoint i32 %i.lz, %i.ki
  %i.nr = shl nuw nsw i32 %.tr.i.i.us.2.1, 1
  %i.ns = lshr i32 %i.j, %i.nr
  %i.nt = and i32 %i.ns, 3
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nq
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !11
  %i.nw = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !11
  %i.nz = fcmp reassoc nsz arcp contract afn oge float %i.nv, %i.ny
  %i.oa = zext i1 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nw ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !332
  %i.od = add i8 %i.oc, %i.oa
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !332
  %i.oe = mul i32 %i.kn, %i.kk
  %invariant.op.us.2 = add i32 %i.oe, %i.kq       ; 3 uses
  %i.of = sext i32 %invariant.op.us.2 to i64
  %.tr.i.i.us.2433 = or disjoint i32 %i.ks, %i.km
  %i.og = shl nuw nsw i32 %.tr.i.i.us.2433, 1
  %i.oh = lshr i32 %i.j, %i.og
  %i.oi = and i32 %i.oh, 3
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.of
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !11
  %i.ol = zext nneg i32 %i.oi to i64              ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !11
  %i.oo = fcmp reassoc nsz arcp contract afn oge float %i.ok, %i.on
  %i.op = zext i1 %i.oo to i8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ol ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !332
  %i.os = add i8 %i.or, %i.op
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !332
  %.reass.us.1.2 = add i32 %invariant.op.us.2, 1
  %i.ot = sext i32 %.reass.us.1.2 to i64
  %.tr.i.i.us.1.2 = or disjoint i32 %i.lj, %i.km
  %i.ou = shl nuw nsw i32 %.tr.i.i.us.1.2, 1
  %i.ov = lshr i32 %i.j, %i.ou
  %i.ow = and i32 %i.ov, 3
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ot
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !11
  %i.oz = zext nneg i32 %i.ow to i64              ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oz
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !11
  %i.pc = fcmp reassoc nsz arcp contract afn oge float %i.oy, %i.pb
  %i.pd = zext i1 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oz ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !332
  %i.pg = add i8 %i.pf, %i.pd
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !332
  %.reass.us.2.2 = add i32 %invariant.op.us.2, 2
  %i.ph = sext i32 %.reass.us.2.2 to i64
  %.tr.i.i.us.2.2 = or disjoint i32 %i.lz, %i.km
  %i.pi = shl nuw nsw i32 %.tr.i.i.us.2.2, 1
  %i.pj = lshr i32 %i.j, %i.pi
  %i.pk = and i32 %i.pj, 3
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ph
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !11
  %i.pn = zext nneg i32 %i.pk to i64              ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !11
  %i.pq = fcmp reassoc nsz arcp contract afn oge float %i.pm, %i.pp
  %i.pr = zext i1 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pn ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !332
  %i.pu = add i8 %i.pt, %i.pr
  store i8 %i.pu, ptr %i.ps, align 1, !tbaa !332
  %invariant.gep363.us380 = getelementptr i8, ptr %invariant.gep.us, i64 %indvars.iv ; 3 uses
  %i.pv = load i8, ptr %i.d, align 1, !tbaa !332
  %.not319.us377 = icmp ne i8 %i.pv, 0            ; 2 uses
  %i.pw = zext i1 %.not319.us377 to i8
  store i8 %i.pw, ptr %invariant.gep363.us380, align 1, !tbaa !332
  %i.px = zext i1 %.not319.us377 to i32
  %i.py = or i32 %.1282367.us374, %i.px
  %i.pz = load i8, ptr %i.dj, align 1, !tbaa !332
  %.not319.us377.1 = icmp ne i8 %i.pz, 0          ; 2 uses
  %i.qa = zext i1 %.not319.us377.1 to i8
  %gep364.us378.1 = getelementptr i8, ptr %invariant.gep363.us380, i64 %i.bf
  store i8 %i.qa, ptr %gep364.us378.1, align 1, !tbaa !332
  %i.qb = zext i1 %.not319.us377.1 to i32
  %i.qc = or i32 %i.py, %i.qb
  %i.qd = load i8, ptr %i.dk, align 1, !tbaa !332
  %.not319.us377.2 = icmp ne i8 %i.qd, 0          ; 2 uses
  %i.qe = zext i1 %.not319.us377.2 to i8
  %gep364.us378.2 = getelementptr i8, ptr %invariant.gep363.us380, i64 %i.dl
  store i8 %i.qe, ptr %gep364.us378.2, align 1, !tbaa !332
  %i.qf = zext i1 %.not319.us377.2 to i32
  %i.qg = or i32 %i.qc, %i.qf                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dh
  br i1 %exitcond.not, label %._crit_edge.split.us381, label %.split362.us

._crit_edge.split.us381:                          ; preds = %.split362.us
end_hunk_2
begin_hunk_3_@_process_segmentation:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !11
  %i.ak = load ptr, ptr %0, align 16, !tbaa !333
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 664
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !334 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2480
  %i.ao = load i32, ptr %i.an, align 16, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.thread549, label %bb.b

.thread549:                                       ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 2448
  %i.as = load <2 x double>, ptr %i.aq, align 16, !tbaa !447
  %i.at = load <2 x double>, ptr %i.ar, align 16, !tbaa !447
  %i.au = fdiv reassoc nsz arcp contract afn <2 x double> %i.as, %i.at
  %i.av = fptrunc <2 x double> %i.au to <2 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 2432
  %i.ay = load double, ptr %i.ax, align 16, !tbaa !447
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 2464
  %i.ba = load double, ptr %i.az, align 16, !tbaa !447
  %i.bb = fdiv reassoc nsz arcp contract afn double %i.ay, %i.ba
  %i.bc = fptrunc reassoc nsz arcp contract afn double %i.bb to float
  br label %bb.c

bb.c:                                             ; preds = %.thread549, %bb.b
  %i.bd = phi ptr [ %i.ap, %.thread549 ], [ %i.aw, %bb.b ]
  %i.be = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread549 ], [ %i.bc, %bb.b ] ; 2 uses
  %i.bf = phi <2 x float> [ splat (float 1.000000e+00), %.thread549 ], [ %i.av, %bb.b ] ; 3 uses
  store <2 x float> %i.bf, ptr %i.c, align 16, !tbaa !11
  store float %i.be, ptr %i.bd, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !505 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !506 ; 5 uses
  %i.bl = sext i32 %i.bi to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr @__const._process_segmentation.recovery_closing, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !507
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !508
  %i.bs = mul nsw i32 %i.br, %i.bp
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !509 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.bv
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, 2.500000e-04
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bt
  %i.bz = fptosi float %i.by to i32               ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !310
  %i.cc = sdiv i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call i64 @dt_round_size(i64 noundef %i.cd, i64 noundef 2) #33 ; 4 uses
  %i.cf = add i64 %i.ce, 16                       ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !308
  %i.ci = sdiv i32 %i.ch, 3
  %i.cj = sext i32 %i.ci to i64
  %i.ck = tail call i64 @dt_round_size(i64 noundef %i.cj, i64 noundef 2) #33 ; 3 uses
  %i.cl = add i64 %i.ck, 16                       ; 7 uses
  %i.cm = mul i64 %i.cl, %i.cf
  %i.cn = tail call i64 @dt_round_size(i64 noundef %i.cm, i64 noundef 64) #33 ; 9 uses
  %i.co = shl i64 %i.cn, 5
  %i.cp = tail call ptr @dt_alloc_aligned(i64 noundef %i.co) #33 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cp, i64 64) ]
  %.not450 = icmp eq ptr %i.cp, null
  br i1 %.not450, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.cr = and i32 %i.cq, 33554432
  %.not451 = icmp eq i32 %i.cr, 0
  br i1 %.not451, label %bb.ex, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.119) #33
  br label %bb.ex

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.cp, ptr %i.d, align 16, !tbaa !386
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cn ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !386
  %.idx = shl i64 %i.cn, 3                        ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cu, ptr %i.cv, align 16, !tbaa !386
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.idx840 = shl i64 %i.cn, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx840
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.cx, ptr %i.cy, align 16, !tbaa !386
  %.idx841 = mul i64 %i.cn, 20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx841
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !386
  %.idx842 = mul i64 %i.cn, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx842
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 16, !tbaa !386
  %i.dd = insertelement <4 x i64> poison, i64 %i.cn, i64 0
  %i.de = shufflevector <4 x i64> %i.dd, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.df = mul <4 x i64> %i.de, <i64 28, i64 poison, i64 poison, i64 12> ; 2 uses
  %i.dg = extractelement <4 x i64> %i.df, i64 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dg ; 38 uses
  store ptr %i.dh, ptr %i.cw, align 8, !tbaa !386
  %i.di = extractelement <4 x i64> %i.df, i64 0   ; 3 uses
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.di  ; 17 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dl = trunc i64 %i.cf to i32                  ; 19 uses
  %i.dm = trunc i64 %i.cl to i32                  ; 10 uses
  %i.dn = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %8, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef 9, i32 noundef %i.bz)
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  %i.dp = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.do, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef 9, i32 noundef %i.bz)
  %i.dq = or i32 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.ds = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dr, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef 9, i32 noundef %i.bz)
  %i.dt = or i32 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 10 uses
  %i.dv = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.du, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef 9, i32 noundef %i.bz)
  %i.dw = or i32 %i.dv, %i.dt
  %.not452 = icmp eq i32 %i.dw, 0
  br i1 %.not452, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.dy = and i32 %i.dx, 33554432
  %.not457 = icmp eq i32 %i.dy, 0
  br i1 %.not457, label %bb.ew, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.120) #33
  br label %bb.ew

bb.i:                                             ; preds = %bb.f
  %.not453 = icmp eq i32 %i.j, 9                  ; 7 uses
  %i.dz = and i32 %i.j, 3
  %i.ea = icmp ne i32 %i.dz, 1
  %i.eb = or i1 %.not453, %i.ea
  %i.ec = select i1 %i.eb, i32 2, i32 1
  %i.ed = load i32, ptr %i.cg, align 4, !tbaa !308 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 2
  br i1 %i.ee, label %.preheader591.lr.ph, label %._crit_edge615

.preheader591.lr.ph:                              ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.ca, align 4, !tbaa !310 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ej = load ptr, ptr %i.e, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.en = load ptr, ptr %i.em, align 16
  %i.eo = extractelement <2 x float> %i.bf, i64 0
  %i.ep = extractelement <2 x float> %i.bf, i64 1
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.lr.ph, %._crit_edge
  %i.eq = phi i32 [ %i.ed, %.preheader591.lr.ph ], [ %i.hf, %._crit_edge ] ; 2 uses
  %i.er = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hg, %._crit_edge ] ; 3 uses
  %i.es = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hh, %._crit_edge ] ; 4 uses
  %indvars.iv681 = phi i64 [ 0, %.preheader591.lr.ph ], [ %indvars.iv.next682, %._crit_edge ] ; 5 uses
  %.0418614 = phi i32 [ 1, %.preheader591.lr.ph ], [ %i.hi, %._crit_edge ] ; 3 uses
  %.0419613 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1420.lcssa, %._crit_edge ] ; 3 uses
  %.0421612 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1422.lcssa, %._crit_edge ] ; 3 uses
  %i.et = icmp sgt i32 %i.es, 2
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader591
  %i.eu = urem i32 %.0418614, 3
  %i.ev = icmp eq i32 %i.eu, 1
  %i.ew = udiv i32 %.0418614, 3
  %i.ex = add nuw nsw i32 %i.ew, 8
  %i.ey = mul nsw i32 %i.ex, %i.dl
  %i.ez = add i32 %i.ey, 8
  %i.fa = load ptr, ptr %i.du, align 16
  br i1 %i.ev, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.fb = load ptr, ptr %8, align 16
  %i.fc = load ptr, ptr %i.do, align 16
  %i.fd = load ptr, ptr %i.dr, align 16
  %i.fe = trunc i64 %indvars.iv681 to i32         ; 2 uses
  %i.ff = shl i32 %i.fe, 1
  %i.fg = and i32 %i.ff, 14                       ; 3 uses
  %i.fh = add i32 %i.fe, 600
  %i.fi = srem i32 %i.fh, 6
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fj ; 3 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.fl = trunc i64 %indvars.iv.next684 to i32    ; 2 uses
  %i.fm = shl i32 %i.fl, 1
  %i.fn = and i32 %i.fm, 14                       ; 3 uses
  %i.fo = add i32 %i.fl, 600
  %i.fp = srem i32 %i.fo, 6
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fq ; 3 uses
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv681, 2 ; 2 uses
  %i.fs = trunc i64 %indvars.iv.next684.1 to i32  ; 2 uses
  %i.ft = shl i32 %i.fs, 1
  %i.fu = and i32 %i.ft, 14                       ; 3 uses
  %i.fv = add i32 %i.fs, 600
  %i.fw = srem i32 %i.fv, 6
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fx ; 3 uses
  br label %.lr.ph.split

._crit_edge615.loopexit:                          ; preds = %._crit_edge
  %i.fz = icmp slt i32 %.1422.lcssa, 20
  %i.ga = icmp ne i32 %.1420.lcssa, 0
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %._crit_edge615.loopexit, %bb.i
  %.0421.lcssa = phi i1 [ true, %bb.i ], [ %i.fz, %._crit_edge615.loopexit ]
  %.0419.lcssa = phi i1 [ false, %bb.i ], [ %i.ga, %._crit_edge615.loopexit ]
  %i.gb = icmp eq i32 %6, 0
  %or.cond = and i1 %i.gb, %.0421.lcssa
  br i1 %or.cond, label %bb.ew, label %.preheader589

.preheader589:                                    ; preds = %._crit_edge615
  %i.gc = add nsw i32 %i.dm, -8                   ; 2 uses
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = icmp ugt i32 %i.gc, 8                   ; 3 uses
  %sext566 = shl i64 %i.cf, 32                    ; 6 uses
  %i.gf = ashr exact i64 %sext566, 32             ; 50 uses
  %.not.i = icmp eq i32 %i.dl, 0                  ; 5 uses
  %i.gg = shl nsw i32 %i.dl, 3
  %i.gh = sext i32 %i.gg to i64                   ; 3 uses
  %i.gi = shl i64 %i.ce, 32                       ; 2 uses
  %sext567 = add i64 %i.gi, 30064771072
  %i.gj = ashr exact i64 %sext567, 32             ; 3 uses
  %i.gk = add i64 %i.ck, 7
  %sext568 = mul i64 %sext566, %i.gk
  %sext569 = shl i64 %i.cl, 32
  %i.gl = ashr exact i64 %sext569, 32             ; 18 uses
  %i.gm = ashr exact i64 %sext568, 30             ; 3 uses
  %i.gn = add nsw i64 %i.gl, -1
  %i.go = mul nsw i64 %i.gn, %i.gf                ; 3 uses
  %i.gp = add nsw i64 %i.gl, -2
  %i.gq = mul nsw i64 %i.gp, %i.gf                ; 3 uses
  %i.gr = ashr exact i64 %sext566, 29             ; 3 uses
  %i.gs = add nsw i64 %i.gl, -3
  %i.gt = mul nsw i64 %i.gs, %i.gf                ; 3 uses
  %.idx844 = mul nsw i64 %i.gf, 12                ; 3 uses
  %i.gu = add nsw i64 %i.gl, -4
  %i.gv = mul nsw i64 %i.gu, %i.gf                ; 3 uses
  %i.gw = ashr exact i64 %sext566, 28             ; 3 uses
  %i.gx = add nsw i64 %i.gl, -5
  %i.gy = mul nsw i64 %i.gx, %i.gf                ; 3 uses
  %.idx845 = mul nsw i64 %i.gf, 20                ; 3 uses
  %i.gz = add nsw i64 %i.gl, -6
  %i.ha = mul nsw i64 %i.gz, %i.gf                ; 3 uses
  %.idx846 = mul nsw i64 %i.gf, 24                ; 3 uses
  %i.hb = add nsw i64 %i.gl, -7
  %i.hc = mul nsw i64 %i.hb, %i.gf                ; 3 uses
  %.idx847 = mul nsw i64 %i.gf, 28                ; 3 uses
  %i.hd = add nsw i64 %i.gl, -8
  %i.he = mul nsw i64 %i.hd, %i.gf                ; 3 uses
  br i1 %i.ge, label %.lr.ph.i, label %.preheader.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre780 = load i32, ptr %i.cg, align 4, !tbaa !308
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %.preheader591
  %i.hf = phi i32 [ %i.eq, %.preheader591 ], [ %.pre780, %._crit_edge.loopexit ], [ %i.eq, %.lr.ph ] ; 2 uses
  %i.hg = phi i32 [ %i.er, %.preheader591 ], [ %i.rj, %._crit_edge.loopexit ], [ %i.er, %.lr.ph ]
  %i.hh = phi i32 [ %i.es, %.preheader591 ], [ %i.rj, %._crit_edge.loopexit ], [ %i.es, %.lr.ph ]
  %.1422.lcssa = phi i32 [ %.0421612, %.preheader591 ], [ %.2423, %._crit_edge.loopexit ], [ %.0421612, %.lr.ph ] ; 2 uses
  %.1420.lcssa = phi i32 [ %.0419613, %.preheader591 ], [ %.2, %._crit_edge.loopexit ], [ %.0419613, %.lr.ph ] ; 2 uses
  %i.hi = add nuw nsw i32 %.0418614, 1            ; 2 uses
  %i.hj = add nsw i32 %i.hf, -1
  %i.hk = icmp slt i32 %i.hi, %i.hj
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1
  br i1 %i.hk, label %.preheader591, label %._crit_edge615.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %i.hl = phi i32 [ %i.er, %.lr.ph.split.preheader ], [ %i.rj, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.t ] ; 19 uses
  %i.hm = phi i32 [ %i.es, %.lr.ph.split.preheader ], [ %i.rj, %bb.t ]
  %.0417609 = phi i32 [ 1, %.lr.ph.split.preheader ], [ %i.rk, %bb.t ] ; 3 uses
  %.1420608 = phi i32 [ %.0419613, %.lr.ph.split.preheader ], [ %.2, %bb.t ] ; 2 uses
  %.1422607 = phi i32 [ %.0421612, %.lr.ph.split.preheader ], [ %.2423, %bb.t ] ; 2 uses
  %i.hn = urem i32 %.0417609, 3
  %i.ho = udiv i32 %.0417609, 3
  %i.hp = icmp eq i32 %i.hn, %i.ec
  br i1 %i.hp, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.hq = sext i32 %i.hm to i64                   ; 3 uses
  %i.hr = trunc nuw nsw i64 %indvars.iv to i32
  %i.hs = and i32 %i.hr, 1                        ; 3 uses
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ht = trunc nuw nsw i64 %indvars.iv.next674 to i32
  %i.hu = and i32 %i.ht, 1                        ; 3 uses
  %i.hv = trunc i64 %indvars.iv to i32
  %i.hw = and i32 %i.hv, 1                        ; 3 uses
  %i.hx = trunc i64 %indvars.iv to i32
  %i.hy = add i32 %i.hx, 600
  %i.hz = srem i32 %i.hy, 6
  %i.ia = sext i32 %i.hz to i64                   ; 3 uses
  %i.ib = trunc i64 %indvars.iv to i32
  %i.ic = add i32 %i.ib, 601
  %i.id = srem i32 %i.ic, 6
  %i.ie = sext i32 %i.id to i64                   ; 3 uses
  %i.if = trunc i64 %indvars.iv to i32
  %i.ig = add i32 %i.if, 602
  %i.ih = srem i32 %i.ig, 6
  %i.ii = sext i32 %i.ih to i64                   ; 3 uses
  %i.ij = mul nsw i64 %indvars.iv681, %i.hq
  %i.ik = getelementptr [4 x i8], ptr %7, i64 %i.ij ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %bb.j
  %i.il = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv
  %i.im = load float, ptr %i.il, align 4, !tbaa !11
  %.tr.i.i = or disjoint i32 %i.hs, %i.fg
  %i.in = shl nuw nsw i32 %.tr.i.i, 1
  %i.io = lshr i32 %i.j, %i.in
  %i.ip = and i32 %i.io, 3
  %i.iq = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iq ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !11
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, %i.im
  store float %i.it, ptr %i.ir, align 4, !tbaa !11
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.iq ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !11
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, 1.000000e+00
  store float %i.iw, ptr %i.iu, align 4, !tbaa !11
  %i.ix = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv.next674
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !11
  %.tr.i.i.1 = or disjoint i32 %i.hu, %i.fg
  %i.iz = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.ja = lshr i32 %i.j, %i.iz
  %i.jb = and i32 %i.ja, 3
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jc ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !11
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %i.iy
  store float %i.jf, ptr %i.jd, align 4, !tbaa !11
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jc ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, 1.000000e+00
  store float %i.ji, ptr %i.jg, align 4, !tbaa !11
  %.tr.i.i.2 = or disjoint i32 %i.hw, %i.fg
  %i.jj = shl nuw nsw i32 %.tr.i.i.2, 1
  %i.jk = lshr i32 %i.j, %i.jj
  %i.jl = and i32 %i.jk, 3
  %i.jm = zext nneg i32 %i.jl to i64
  br label %.split602.us

fcol.exit.us.preheader:                           ; preds = %bb.j
  %i.jn = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !11
  %i.jp = getelementptr inbounds i8, ptr %i.fk, i64 %i.ia
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !332
  %i.jr = zext i8 %i.jq to i64                    ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jr ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !11
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jt, %i.jo
  store float %i.ju, ptr %i.js, align 4, !tbaa !11
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jr ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !11
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jw, 1.000000e+00
  store float %i.jx, ptr %i.jv, align 4, !tbaa !11
  %i.jy = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv
  %i.jz = getelementptr i8, ptr %i.jy, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !11
  %i.kb = getelementptr inbounds i8, ptr %i.fk, i64 %i.ie
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !332
  %i.kd = zext i8 %i.kc to i64                    ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kd ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !11
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %i.ka
  store float %i.kg, ptr %i.ke, align 4, !tbaa !11
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kd ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !11
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, 1.000000e+00
  store float %i.kj, ptr %i.kh, align 4, !tbaa !11
  %i.kk = getelementptr inbounds i8, ptr %i.fk, i64 %i.ii
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !332
  %i.km = zext i8 %i.kl to i64
  br label %.split602.us

.split602.us:                                     ; preds = %fcol.exit.preheader, %fcol.exit.us.preheader
  %.sink864 = phi i64 [ %i.jm, %fcol.exit.preheader ], [ %i.km, %fcol.exit.us.preheader ] ; 2 uses
  %.pn = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv
  %.sink862.in = getelementptr i8, ptr %.pn, i64 8
  %.sink862 = load float, ptr %.sink862.in, align 4, !tbaa !11
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !11
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, %.sink862
  store float %i.kp, ptr %i.kn, align 4, !tbaa !11
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !11
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, 1.000000e+00
end_hunk_3
begin_hunk_4_@_process_segmentation:bb.a
  %i.agr = select i1 %i.agm, float %i.agp, float %i.agk ; 2 uses
  %i.ags = getelementptr i8, ptr %i.afx, i64 4
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !11 ; 2 uses
  %i.agu = fcmp reassoc nsz arcp contract afn olt float %i.agt, %i.zd ; 2 uses
  %i.agv = fmul reassoc nsz arcp contract afn float %i.agt, 4.000000e+00
  %i.agw = fadd reassoc nsz arcp contract afn float %i.agq, %i.agv
  %i.agx = fadd reassoc nsz arcp contract afn float %i.agr, 4.000000e+00
  %i.agy = select i1 %i.agu, float %i.agw, float %i.agq ; 2 uses
  %i.agz = select i1 %i.agu, float %i.agx, float %i.agr ; 2 uses
  %i.aha = getelementptr i8, ptr %i.afx, i64 8
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !11 ; 2 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn olt float %i.ahb, %i.zd ; 2 uses
  %i.ahd = fadd reassoc nsz arcp contract afn float %i.agy, %i.ahb
  %i.ahe = fadd reassoc nsz arcp contract afn float %i.agz, 1.000000e+00
  %i.ahf = select i1 %i.ahc, float %i.ahd, float %i.agy ; 2 uses
  %i.ahg = select i1 %i.ahc, float %i.ahe, float %i.agz ; 2 uses
  %i.ahh = getelementptr [4 x i8], ptr %i.afw, i64 %i.abm ; 5 uses
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -8
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !11 ; 2 uses
  %i.ahk = fcmp reassoc nsz arcp contract afn olt float %i.ahj, %i.zd ; 2 uses
  %i.ahl = fmul reassoc nsz arcp contract afn float %i.ahj, 4.000000e+00
  %i.ahm = fadd reassoc nsz arcp contract afn float %i.ahf, %i.ahl
  %i.ahn = fadd reassoc nsz arcp contract afn float %i.ahg, 4.000000e+00
  %i.aho = select i1 %i.ahk, float %i.ahm, float %i.ahf ; 2 uses
  %i.ahp = select i1 %i.ahk, float %i.ahn, float %i.ahg ; 2 uses
  %i.ahq = getelementptr i8, ptr %i.ahh, i64 -4
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !11 ; 2 uses
  %i.ahs = fcmp reassoc nsz arcp contract afn olt float %i.ahr, %i.zd ; 2 uses
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahr, 1.600000e+01
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.aho, %i.aht
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahp, 1.600000e+01
  %i.ahw = select i1 %i.ahs, float %i.ahu, float %i.aho ; 2 uses
  %i.ahx = select i1 %i.ahs, float %i.ahv, float %i.ahp ; 2 uses
  %i.ahy = load float, ptr %i.ahh, align 4, !tbaa !11 ; 2 uses
  %i.ahz = fcmp reassoc nsz arcp contract afn olt float %i.ahy, %i.zd ; 2 uses
  %i.aia = fmul reassoc nsz arcp contract afn float %i.ahy, 2.400000e+01
  %i.aib = fadd reassoc nsz arcp contract afn float %i.ahw, %i.aia
  %i.aic = fadd reassoc nsz arcp contract afn float %i.ahx, 2.400000e+01
  %i.aid = select i1 %i.ahz, float %i.aib, float %i.ahw ; 2 uses
  %i.aie = select i1 %i.ahz, float %i.aic, float %i.ahx ; 2 uses
  %i.aif = getelementptr i8, ptr %i.ahh, i64 4
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !11 ; 2 uses
  %i.aih = fcmp reassoc nsz arcp contract afn olt float %i.aig, %i.zd ; 2 uses
  %i.aii = fmul reassoc nsz arcp contract afn float %i.aig, 1.600000e+01
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aid, %i.aii
  %i.aik = fadd reassoc nsz arcp contract afn float %i.aie, 1.600000e+01
  %i.ail = select i1 %i.aih, float %i.aij, float %i.aid ; 2 uses
  %i.aim = select i1 %i.aih, float %i.aik, float %i.aie ; 2 uses
  %i.ain = getelementptr i8, ptr %i.ahh, i64 8
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !11 ; 2 uses
  %i.aip = fcmp reassoc nsz arcp contract afn olt float %i.aio, %i.zd ; 2 uses
  %i.aiq = fmul reassoc nsz arcp contract afn float %i.aio, 4.000000e+00
  %i.air = fadd reassoc nsz arcp contract afn float %i.ail, %i.aiq
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aim, 4.000000e+00
  %i.ait = select i1 %i.aip, float %i.air, float %i.ail ; 2 uses
  %i.aiu = select i1 %i.aip, float %i.ais, float %i.aim ; 2 uses
  %i.aiv = getelementptr i8, ptr %i.afw, i64 -8
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !11 ; 2 uses
  %i.aix = fcmp reassoc nsz arcp contract afn olt float %i.aiw, %i.zd ; 2 uses
  %i.aiy = fmul reassoc nsz arcp contract afn float %i.aiw, 6.000000e+00
  %i.aiz = fadd reassoc nsz arcp contract afn float %i.ait, %i.aiy
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aiu, 6.000000e+00
  %i.ajb = select i1 %i.aix, float %i.aiz, float %i.ait ; 2 uses
  %i.ajc = select i1 %i.aix, float %i.aja, float %i.aiu ; 2 uses
  %i.ajd = getelementptr i8, ptr %i.afw, i64 -4
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !11 ; 2 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn olt float %i.aje, %i.zd ; 2 uses
  %i.ajg = fmul reassoc nsz arcp contract afn float %i.aje, 2.400000e+01
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajb, %i.ajg
  %i.aji = fadd reassoc nsz arcp contract afn float %i.ajc, 2.400000e+01
  %i.ajj = select i1 %i.ajf, float %i.ajh, float %i.ajb ; 2 uses
  %i.ajk = select i1 %i.ajf, float %i.aji, float %i.ajc ; 2 uses
  %i.ajl = load float, ptr %i.afw, align 4, !tbaa !11 ; 2 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn olt float %i.ajl, %i.zd ; 2 uses
  %i.ajn = fmul reassoc nsz arcp contract afn float %i.ajl, 3.600000e+01
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajj, %i.ajn
  %i.ajp = fadd reassoc nsz arcp contract afn float %i.ajk, 3.600000e+01
  %i.ajq = select i1 %i.ajm, float %i.ajo, float %i.ajj ; 2 uses
  %i.ajr = select i1 %i.ajm, float %i.ajp, float %i.ajk ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.afw, i64 4
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !11 ; 2 uses
  %i.aju = fcmp reassoc nsz arcp contract afn olt float %i.ajt, %i.zd ; 2 uses
  %i.ajv = fmul reassoc nsz arcp contract afn float %i.ajt, 2.400000e+01
  %i.ajw = fadd reassoc nsz arcp contract afn float %i.ajq, %i.ajv
  %i.ajx = fadd reassoc nsz arcp contract afn float %i.ajr, 2.400000e+01
  %i.ajy = select i1 %i.aju, float %i.ajw, float %i.ajq ; 2 uses
  %i.ajz = select i1 %i.aju, float %i.ajx, float %i.ajr ; 2 uses
  %i.aka = getelementptr i8, ptr %i.afw, i64 8
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !11 ; 2 uses
  %i.akc = fcmp reassoc nsz arcp contract afn olt float %i.akb, %i.zd ; 2 uses
  %i.akd = fmul reassoc nsz arcp contract afn float %i.akb, 6.000000e+00
  %i.ake = fadd reassoc nsz arcp contract afn float %i.ajy, %i.akd
  %i.akf = fadd reassoc nsz arcp contract afn float %i.ajz, 6.000000e+00
  %i.akg = select i1 %i.akc, float %i.ake, float %i.ajy ; 2 uses
  %i.akh = select i1 %i.akc, float %i.akf, float %i.ajz ; 2 uses
  %i.aki = getelementptr [4 x i8], ptr %i.afw, i64 %i.abk ; 5 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -8
  %i.akk = load float, ptr %i.akj, align 4, !tbaa !11 ; 2 uses
  %i.akl = fcmp reassoc nsz arcp contract afn olt float %i.akk, %i.zd ; 2 uses
  %i.akm = fmul reassoc nsz arcp contract afn float %i.akk, 4.000000e+00
  %i.akn = fadd reassoc nsz arcp contract afn float %i.akg, %i.akm
  %i.ako = fadd reassoc nsz arcp contract afn float %i.akh, 4.000000e+00
  %i.akp = select i1 %i.akl, float %i.akn, float %i.akg ; 2 uses
  %i.akq = select i1 %i.akl, float %i.ako, float %i.akh ; 2 uses
  %i.akr = getelementptr i8, ptr %i.aki, i64 -4
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !11 ; 2 uses
  %i.akt = fcmp reassoc nsz arcp contract afn olt float %i.aks, %i.zd ; 2 uses
  %i.aku = fmul reassoc nsz arcp contract afn float %i.aks, 1.600000e+01
  %i.akv = fadd reassoc nsz arcp contract afn float %i.akp, %i.aku
  %i.akw = fadd reassoc nsz arcp contract afn float %i.akq, 1.600000e+01
  %i.akx = select i1 %i.akt, float %i.akv, float %i.akp ; 2 uses
  %i.aky = select i1 %i.akt, float %i.akw, float %i.akq ; 2 uses
  %i.akz = load float, ptr %i.aki, align 4, !tbaa !11 ; 2 uses
  %i.ala = fcmp reassoc nsz arcp contract afn olt float %i.akz, %i.zd ; 2 uses
  %i.alb = fmul reassoc nsz arcp contract afn float %i.akz, 2.400000e+01
  %i.alc = fadd reassoc nsz arcp contract afn float %i.akx, %i.alb
  %i.ald = fadd reassoc nsz arcp contract afn float %i.aky, 2.400000e+01
  %i.ale = select i1 %i.ala, float %i.alc, float %i.akx ; 2 uses
  %i.alf = select i1 %i.ala, float %i.ald, float %i.aky ; 2 uses
  %i.alg = getelementptr i8, ptr %i.aki, i64 4
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !11 ; 2 uses
  %i.ali = fcmp reassoc nsz arcp contract afn olt float %i.alh, %i.zd ; 2 uses
  %i.alj = fmul reassoc nsz arcp contract afn float %i.alh, 1.600000e+01
  %i.alk = fadd reassoc nsz arcp contract afn float %i.ale, %i.alj
  %i.all = fadd reassoc nsz arcp contract afn float %i.alf, 1.600000e+01
  %i.alm = select i1 %i.ali, float %i.alk, float %i.ale ; 2 uses
  %i.aln = select i1 %i.ali, float %i.all, float %i.alf ; 2 uses
  %i.alo = getelementptr i8, ptr %i.aki, i64 8
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !11 ; 2 uses
  %i.alq = fcmp reassoc nsz arcp contract afn olt float %i.alp, %i.zd ; 2 uses
  %i.alr = fmul reassoc nsz arcp contract afn float %i.alp, 4.000000e+00
  %i.als = fadd reassoc nsz arcp contract afn float %i.alm, %i.alr
  %i.alt = fadd reassoc nsz arcp contract afn float %i.aln, 4.000000e+00
  %i.alu = select i1 %i.alq, float %i.als, float %i.alm ; 2 uses
  %i.alv = select i1 %i.alq, float %i.alt, float %i.aln ; 2 uses
  %.idx202.i = shl nsw i64 %i.abk, 3
  %i.alw = getelementptr i8, ptr %i.afw, i64 %.idx202.i ; 5 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -8
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !11 ; 2 uses
  %i.alz = fcmp reassoc nsz arcp contract afn olt float %i.aly, %i.zd ; 2 uses
  %i.ama = fadd reassoc nsz arcp contract afn float %i.alu, %i.aly
  %i.amb = fadd reassoc nsz arcp contract afn float %i.alv, 1.000000e+00
  %i.amc = select i1 %i.alz, float %i.ama, float %i.alu ; 2 uses
  %i.amd = select i1 %i.alz, float %i.amb, float %i.alv ; 2 uses
  %i.ame = getelementptr i8, ptr %i.alw, i64 -4
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !11 ; 2 uses
  %i.amg = fcmp reassoc nsz arcp contract afn olt float %i.amf, %i.zd ; 2 uses
  %i.amh = fmul reassoc nsz arcp contract afn float %i.amf, 4.000000e+00
  %i.ami = fadd reassoc nsz arcp contract afn float %i.amc, %i.amh
  %i.amj = fadd reassoc nsz arcp contract afn float %i.amd, 4.000000e+00
  %i.amk = select i1 %i.amg, float %i.ami, float %i.amc ; 2 uses
  %i.aml = select i1 %i.amg, float %i.amj, float %i.amd ; 2 uses
  %i.amm = load float, ptr %i.alw, align 4, !tbaa !11 ; 2 uses
  %i.amn = fcmp reassoc nsz arcp contract afn olt float %i.amm, %i.zd ; 2 uses
  %i.amo = fmul reassoc nsz arcp contract afn float %i.amm, 6.000000e+00
  %i.amp = fadd reassoc nsz arcp contract afn float %i.amk, %i.amo
  %i.amq = fadd reassoc nsz arcp contract afn float %i.aml, 6.000000e+00
  %i.amr = select i1 %i.amn, float %i.amp, float %i.amk ; 2 uses
  %i.ams = select i1 %i.amn, float %i.amq, float %i.aml ; 2 uses
  %i.amt = getelementptr i8, ptr %i.alw, i64 4
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !11 ; 2 uses
  %i.amv = fcmp reassoc nsz arcp contract afn olt float %i.amu, %i.zd ; 2 uses
  %i.amw = fmul reassoc nsz arcp contract afn float %i.amu, 4.000000e+00
  %i.amx = fadd reassoc nsz arcp contract afn float %i.amr, %i.amw
  %i.amy = fadd reassoc nsz arcp contract afn float %i.ams, 4.000000e+00
  %i.amz = select i1 %i.amv, float %i.amx, float %i.amr ; 2 uses
  %i.ana = select i1 %i.amv, float %i.amy, float %i.ams ; 2 uses
  %i.anb = getelementptr i8, ptr %i.alw, i64 8
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !11 ; 2 uses
  %i.and = fcmp reassoc nsz arcp contract afn olt float %i.anc, %i.zd ; 2 uses
  %i.ane = fadd reassoc nsz arcp contract afn float %i.amz, %i.anc
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ana, 1.000000e+00
  %i.ang = select i1 %i.and, float %i.ane, float %i.amz
  %i.anh = select i1 %i.and, float %i.anf, float %i.ana
  %i.ani = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.anh, float 1.000000e+00)
  %i.anj = fdiv reassoc nsz arcp contract afn float %i.ang, %i.ani ; 2 uses
  %i.ank = fcmp reassoc nsz arcp contract afn ogt float %i.anj, %i.zw
  br i1 %i.ank, label %bb.ae, label %._crit_edge142.thread.i

bb.ae:                                            ; preds = %.preheader132.i
  %i.anl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.zd, float %i.anj)
  store float %i.anl, ptr %i.zy, align 4, !tbaa !11
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %.3113.us.i
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !11
  store float %i.ann, ptr %i.zz, align 4, !tbaa !11
  br label %._crit_edge142.thread.i

._crit_edge142.thread.i:                          ; preds = %bb.ae, %.preheader132.i, %._crit_edge142.i, %.lr.ph141.i, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %_calc_plane_candidates.exit, label %bb.y

_calc_plane_candidates.exit:                      ; preds = %._crit_edge142.thread.i, %bb.x
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next709, 3
  br i1 %exitcond711.not, label %.preheader585, label %bb.x

.preheader584:                                    ; preds = %.preheader584.preheader, %._crit_edge624
  %indvars.iv716 = phi i64 [ 1, %.preheader584.preheader ], [ %indvars.iv.next717, %._crit_edge624 ] ; 5 uses
  %i.ano = mul nuw nsw i64 %indvars.iv716, %i.yv
  %indvars.iv716.tr = trunc i64 %indvars.iv716 to i32
  %i.anp = shl i32 %indvars.iv716.tr, 1
  %i.anq = and i32 %i.anp, 14
  %i.anr = trunc i64 %indvars.iv716 to i32
  %i.ans = add i32 %i.anr, 600
  %i.ant = urem i32 %i.ans, 6
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.anu
  %i.anw = trunc nuw nsw i64 %indvars.iv716 to i32 ; 2 uses
  %i.anx = udiv i32 %i.anw, 3
  %i.any = add nuw nsw i32 %i.anx, 8
  %i.anz = mul nsw i32 %i.any, %i.dl
  %i.aoa = add i32 %i.anz, 8
  br label %bb.af

._crit_edge626.split:                             ; preds = %._crit_edge624, %.preheader584.lr.ph, %.preheader585
  %i.aob = load ptr, ptr %i.cy, align 16, !tbaa !386 ; 7 uses
  %i.aoc = load ptr, ptr %i.da, align 8, !tbaa !386 ; 3 uses
  %i.aod = load ptr, ptr %i.dc, align 16, !tbaa !386 ; 52 uses
  %i.aoe = icmp ne i32 %i.bi, 0
  %or.cond3 = select i1 %i.aoe, i1 %.0419.lcssa, i1 false
  %i.aof = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 0.000000e+00
  %spec.select = select i1 %or.cond3, i1 %i.aof, i1 false ; 2 uses
  %i.aog = icmp ne i32 %6, 0
  %i.aoh = icmp ne i32 %i.n, 0
  %i.aoi = select i1 %i.aog, i1 %i.aoh, i1 false  ; 2 uses
  %or.cond5 = select i1 %spec.select, i1 true, i1 %i.aoi
  br i1 %or.cond5, label %bb.al, label %bb.ar

._crit_edge624:                                   ; preds = %_get_segment_id.exit.thread
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %exitcond720.not = icmp eq i64 %indvars.iv.next717, %wide.trip.count719
  br i1 %exitcond720.not, label %._crit_edge626.split, label %.preheader584

bb.af:                                            ; preds = %.preheader584, %_get_segment_id.exit.thread
  %indvars.iv712 = phi i64 [ 1, %.preheader584 ], [ %indvars.iv.next713, %_get_segment_id.exit.thread ] ; 4 uses
  %i.aoj = add nuw nsw i64 %i.ano, %indvars.iv712 ; 2 uses
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aoj
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !11
  %i.aom = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aol, float 0.000000e+00) ; 2 uses
  %i.aon = trunc i64 %indvars.iv712 to i32        ; 2 uses
  br i1 %.not453, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aoo = add i32 %i.aon, 600
  %i.aop = urem i32 %i.aoo, 6
  %i.aoq = zext nneg i32 %i.aop to i64
  %i.aor = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.aoq
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !332
  %i.aot = zext i8 %i.aos to i32
  br label %fcol.exit466

bb.ah:                                            ; preds = %bb.af
  %i.aou = and i32 %i.aon, 1
  %.tr.i.i464 = or disjoint i32 %i.aou, %i.anq
  %i.aov = shl nuw nsw i32 %.tr.i.i464, 1
  %i.aow = lshr i32 %i.j, %i.aov
  %i.aox = and i32 %i.aow, 3
  br label %fcol.exit466

fcol.exit466:                                     ; preds = %bb.ag, %bb.ah
  %.0.i465 = phi i32 [ %i.aot, %bb.ag ], [ %i.aox, %bb.ah ]
  %i.aoy = zext nneg i32 %.0.i465 to i64          ; 3 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aoy
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !11
  %i.apb = fcmp reassoc nsz arcp contract afn ogt float %i.aom, %i.apa
  br i1 %i.apb, label %bb.ai, label %_get_segment_id.exit.thread

bb.ai:                                            ; preds = %fcol.exit466
  %i.apc = trunc nuw nsw i64 %indvars.iv712 to i32 ; 2 uses
  %i.apd = udiv i32 %i.apc, 3
  %i.ape = add i32 %i.aoa, %i.apd                 ; 2 uses
  %i.apf = sext i32 %i.ape to i64                 ; 2 uses
  %i.apg = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.aoy ; 7 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 84
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !23
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 88
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !27
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apg, i64 76
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !28
  %i.apn = sub nsw i32 %i.apk, %i.apm
  %i.apo = mul nsw i32 %i.apn, %i.api
  %.not.i467 = icmp ult i32 %i.ape, %i.apo
  br i1 %.not.i467, label %bb.aj, label %_get_segment_id.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.app = load ptr, ptr %i.apg, align 16, !tbaa !30
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %i.apf
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !22
  %i.aps = and i32 %i.apr, 262143                 ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apg, i64 72
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !47
  %i.apv = icmp ult i32 %i.aps, %i.apu
  %i.apw = icmp samesign ugt i32 %i.aps, 1
  %or.cond.i469 = select i1 %i.apv, i1 %i.apw, i1 false
  br i1 %or.cond.i469, label %_get_segment_id.exit, label %_get_segment_id.exit.thread

_get_segment_id.exit:                             ; preds = %bb.aj
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apg, i64 56
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !37
  %i.apz = zext nneg i32 %i.aps to i64            ; 2 uses
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %i.apz
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !11 ; 2 uses
  %i.aqc = fcmp reassoc nsz arcp contract afn une float %i.aqb, 0.000000e+00
  br i1 %i.aqc, label %bb.ak, label %_get_segment_id.exit.thread

bb.ak:                                            ; preds = %_get_segment_id.exit
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apg, i64 64
  %i.aqe = load ptr, ptr %i.aqd, align 16, !tbaa !36
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %i.apz
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !11
  %i.aqh = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.anw, i32 noundef %i.apc, ptr noundef nonnull %3, ptr noundef %i.c, i32 noundef 0)
  %i.aqi = fsub reassoc nsz arcp contract afn float %i.aqb, %i.aqg
  %i.aqj = fadd reassoc nsz arcp contract afn float %i.aqi, %i.aqh ; 3 uses
  %i.aqk = fmul reassoc nsz arcp contract afn float %i.aqj, %i.aqj
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, %i.aqj
  %i.aqm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aom, float %i.aql) ; 2 uses
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aoy
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !386
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %i.apf
  store float %i.aqm, ptr %i.aqp, align 4, !tbaa !11
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.aoj
  store float %i.aqm, ptr %i.aqq, align 4, !tbaa !11
  br label %_get_segment_id.exit.thread

_get_segment_id.exit.thread:                      ; preds = %bb.ai, %bb.aj, %bb.ak, %_get_segment_id.exit, %fcol.exit466
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %exitcond715.not = icmp eq i64 %indvars.iv.next713, %wide.trip.count
  br i1 %exitcond715.not, label %._crit_edge624, label %bb.af

bb.al:                                            ; preds = %._crit_edge626.split
  call void @dt_segments_combine(ptr noundef nonnull %i.du, i32 noundef %i.bn)
  %i.aqr = fmul reassoc nsz arcp contract afn float %i.bk, 5.000000e+00
  %i.aqs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aqr, float 1.000000e+00)
  tail call void @dt_iop_image_fill(ptr noundef %i.aob, float noundef %i.aqs, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dh, float noundef 0.000000e+00, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  %i.aqt = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !28 ; 9 uses
  %i.aqv = sext i32 %i.aqu to i64                 ; 9 uses
  %i.aqw = sub i64 %i.cl, %i.aqv                  ; 2 uses
  %i.aqx = icmp ugt i64 %i.aqw, %i.aqv
  br i1 %i.aqx, label %.preheader583.lr.ph, label %._crit_edge635.split

.preheader583.lr.ph:                              ; preds = %bb.al
  %i.aqy = sub i64 %i.cf, %i.aqv                  ; 2 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.y, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul627 = fmul reassoc nsz arcp contract afn float %i.u, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul629 = fmul reassoc nsz arcp contract afn float %i.w, f0x3EAAAAAB ; 2 uses
  %i.aqz = icmp ugt i64 %i.aqy, %i.aqv
  %i.ara = load ptr, ptr %i.du, align 16          ; 2 uses
  br i1 %i.aqz, label %.preheader583.preheader, label %._crit_edge635.split

.preheader583.preheader:                          ; preds = %.preheader583.lr.ph
  %i.arb = mul <4 x i64> %i.de, <i64 28, i64 24, i64 20, i64 12>
  %i.arc = shl i64 %i.cn, 2
  %i.ard = shl nsw i64 %i.aqv, 1
  %i.are = add i64 %i.ce, 16
  %i.arf = sub i64 %i.are, %i.ard                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.arf, 8
  %i.arg = shl i64 %i.cn, 4
  %diff.check = icmp ugt i64 %i.arg, -32
  %i.arh = add <4 x i64> %i.arb, splat (i64 -1)
  %i.ari = icmp ult <4 x i64> %i.arh, splat (i64 31)
  %i.arj = add i64 %.idx, -1
  %diff.check949 = icmp ult i64 %i.arj, 31
  %i.ark = add i64 %i.arc, -1
  %diff.check951 = icmp ult i64 %i.ark, 31
  %i.arl = bitcast <4 x i1> %i.ari to i4
  %i.arm = icmp ne i4 %i.arl, 0
  %op.rdx = or i1 %i.arm, %diff.check949
  %op.rdx1106 = or i1 %diff.check951, %diff.check
  %op.rdx1107 = or i1 %op.rdx, %op.rdx1106
  %n.vec = and i64 %i.arf, -8                     ; 3 uses
  %i.arn = add i64 %n.vec, %i.aqv
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul627, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %factor.op.fmul629, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.arf, %n.vec
  br label %.preheader583

.preheader583:                                    ; preds = %.preheader583.preheader, %._crit_edge633
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %._crit_edge633 ], [ %i.aqv, %.preheader583.preheader ] ; 2 uses
  %i.aro = mul i64 %indvars.iv724, %i.cf          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader583
  %invariant.op1168 = add i64 %i.aqv, %i.aro
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass1169 = add i64 %index, %invariant.op1168 ; 6 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.reass1169
  %wide.load = load <8 x float>, ptr %i.arp, align 4, !tbaa !11
  %i.arq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.reass1169
  %wide.load957 = load <8 x float>, ptr %i.arr, align 4, !tbaa !11
  %i.ars = fmul reassoc nsz arcp contract afn <8 x float> %wide.load957, %broadcast.splat954
end_hunk_4
begin_hunk_5_@_process_segmentation:bb.a

_segment_gradients.exit:                          ; preds = %._crit_edge164.i, %.loopexit.i, %_segment_maxdistance.exit.thread, %_segment_maxdistance.exit
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %._crit_edge639, label %bb.bc

bb.dz:                                            ; preds = %.lr.ph641, %_add_poisson_noise.exit
  %indvars.iv734 = phi i64 [ 2, %.lr.ph641 ], [ %indvars.iv.next735, %_add_poisson_noise.exit ] ; 7 uses
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %indvars.iv734
  %i.bzq = load float, ptr %i.bzp, align 4, !tbaa !11
  %i.bzr = fcmp reassoc nsz arcp contract afn ogt float %i.bzq, 3.000000e+00
  br i1 %i.bzr, label %bb.ea, label %_add_poisson_noise.exit

bb.ea:                                            ; preds = %bb.dz
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %i.bdl, i64 %indvars.iv734
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !22
  %..i525 = tail call i32 @llvm.smax.i32(i32 %i.bzt, i32 %i.bdm) ; 2 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %indvars.iv734
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !22
  %i.bzw = add i32 %i.bzv, 1
  %i.bzx = tail call i32 @llvm.smin.i32(i32 %i.bzw, i32 %i.bdr) ; 2 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bdt, i64 %indvars.iv734
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !22
  %i.caa = tail call i32 @llvm.smax.i32(i32 %i.bzz, i32 %i.bdm) ; 2 uses
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %i.bdv, i64 %indvars.iv734
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !22
  %i.cad = add i32 %i.cac, 1
  %i.cae = tail call i32 @llvm.smin.i32(i32 %i.cad, i32 %i.bdy) ; 2 uses
  %i.caf = sext i32 %..i525 to i64                ; 3 uses
  %i.cag = icmp slt i32 %i.caa, %i.cae
  %i.cah = icmp slt i32 %..i525, %i.bzx
  %or.cond656 = select i1 %i.cag, i1 %i.cah, i1 false
  br i1 %or.cond656, label %.preheader.i529.preheader, label %_add_poisson_noise.exit

.preheader.i529.preheader:                        ; preds = %bb.ea
  %i.cai = sext i32 %i.caa to i64                 ; 3 uses
  %i.caj = lshr i64 %i.cai, 33
  %i.cak = xor i64 %i.caj, %i.cai
  %i.cal = mul i64 %i.cak, 7109453100751455733    ; 2 uses
  %i.cam = lshr i64 %i.cal, 28
  %i.can = xor i64 %i.cam, %i.cal
  %i.cao = mul i64 %i.can, -3808689974395783757
  %i.cap = lshr i64 %i.cao, 32
  %i.caq = trunc nuw i64 %i.cap to i32            ; 2 uses
  %i.car = xor i32 %i.caq, 635086878              ; 2 uses
  %i.cas = lshr i64 %i.caf, 33
  %i.cat = xor i64 %i.cas, %i.caf
  %i.cau = mul i64 %i.cat, 7109453100751455733    ; 2 uses
  %i.cav = lshr i64 %i.cau, 28
  %i.caw = xor i64 %i.cav, %i.cau
  %i.cax = mul i64 %i.caw, -3808689974395783757
  %i.cay = lshr i64 %i.cax, 32
  %i.caz = trunc nuw i64 %i.cay to i32            ; 3 uses
  %i.cba = shl i32 %i.caz, 9
  %i.cbb = xor i32 %i.car, %i.cba
  %i.cbc = xor i32 %i.caz, -1171427716            ; 3 uses
  %i.cbd = xor i32 %i.cbc, %i.caq                 ; 2 uses
  %i.cbe = xor i32 %i.cbb, %i.cbd                 ; 2 uses
  %i.cbf = xor i32 %i.car, %i.caz                 ; 3 uses
  %i.cbg = shl i32 %i.cbf, 9
  %i.cbh = xor i32 %i.cbe, %i.cbg
  %i.cbi = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbc, i32 %i.cbc, i32 11)
  %i.cbj = xor i32 %i.cbf, %i.cbi                 ; 3 uses
  %i.cbk = xor i32 %i.cbj, %i.cbd                 ; 2 uses
  %i.cbl = xor i32 %i.cbh, %i.cbk                 ; 2 uses
  %i.cbm = xor i32 %i.cbe, %i.cbf                 ; 3 uses
  %i.cbn = xor i32 %i.cbl, %i.cbm                 ; 3 uses
  %i.cbo = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbj, i32 %i.cbj, i32 11)
  %i.cbp = xor i32 %i.cbm, %i.cbo                 ; 3 uses
  %i.cbq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbp, i32 %i.cbp, i32 11)
  %i.cbr = xor i32 %i.cbn, %i.cbq                 ; 3 uses
  %i.cbs = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbr, i32 %i.cbr, i32 11)
  %i.cbt = shl i32 %i.cbm, 9
  %i.cbu = xor i32 %i.cbl, %i.cbt
  %i.cbv = xor i32 %i.cbp, %i.cbk                 ; 2 uses
  %i.cbw = xor i32 %i.cbu, %i.cbv                 ; 2 uses
  %i.cbx = shl i32 %i.cbn, 9
  %i.cby = xor i32 %i.cbw, %i.cbx
  %i.cbz = xor i32 %i.cbr, %i.cbv
  %i.cca = xor i32 %i.cbw, %i.cbn
  br label %.preheader.i529

.preheader.i529:                                  ; preds = %.preheader.i529.preheader, %._crit_edge.i534
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i534 ], [ %i.cai, %.preheader.i529.preheader ] ; 2 uses
  %.sroa.0.087.i = phi i32 [ %.sroa.0.2.i, %._crit_edge.i534 ], [ %i.cbz, %.preheader.i529.preheader ]
  %.sroa.13.086.i = phi i32 [ %.sroa.13.2.i, %._crit_edge.i534 ], [ %i.cca, %.preheader.i529.preheader ]
  %.sroa.24.085.i = phi i32 [ %.sroa.24.2.i, %._crit_edge.i534 ], [ %i.cby, %.preheader.i529.preheader ]
  %.sroa.35.084.i = phi i32 [ %.sroa.35.2.i, %._crit_edge.i534 ], [ %i.cbs, %.preheader.i529.preheader ]
  %i.ccb = mul nsw i64 %indvars.iv91.i, %i.bdz
  br label %bb.eb

._crit_edge.i534:                                 ; preds = %bb.ec
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next92.i to i32
  %exitcond94.not.i = icmp eq i32 %i.cae, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %_add_poisson_noise.exit, label %.preheader.i529

bb.eb:                                            ; preds = %bb.ec, %.preheader.i529
  %indvars.iv.i530 = phi i64 [ %i.caf, %.preheader.i529 ], [ %indvars.iv.next.i531, %bb.ec ] ; 3 uses
  %.sroa.0.179.i = phi i32 [ %.sroa.0.087.i, %.preheader.i529 ], [ %.sroa.0.2.i, %bb.ec ] ; 4 uses
  %.sroa.13.178.i = phi i32 [ %.sroa.13.086.i, %.preheader.i529 ], [ %.sroa.13.2.i, %bb.ec ] ; 4 uses
  %.sroa.24.177.i = phi i32 [ %.sroa.24.085.i, %.preheader.i529 ], [ %.sroa.24.2.i, %bb.ec ] ; 2 uses
  %.sroa.35.176.i = phi i32 [ %.sroa.35.084.i, %.preheader.i529 ], [ %.sroa.35.2.i, %bb.ec ] ; 3 uses
  %i.ccc = add nsw i64 %indvars.iv.i530, %i.ccb   ; 2 uses
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %i.ccc
  %i.cce = load i32, ptr %i.ccd, align 4, !tbaa !22
  %i.ccf = zext i32 %i.cce to i64
  %i.ccg = icmp eq i64 %indvars.iv734, %i.ccf
  br i1 %i.ccg, label %poisson_noise.exit.i, label %bb.ec

poisson_noise.exit.i:                             ; preds = %bb.eb
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.ccc ; 2 uses
  %i.cci = load float, ptr %i.cch, align 4, !tbaa !11 ; 2 uses
  %i.ccj = fmul reassoc nsz arcp contract afn float %i.cci, %i.bdg
  %i.cck = shl i32 %.sroa.13.178.i, 9
  %i.ccl = xor i32 %.sroa.24.177.i, %.sroa.0.179.i ; 2 uses
  %i.ccm = xor i32 %.sroa.35.176.i, %.sroa.13.178.i ; 3 uses
  %i.ccn = xor i32 %i.ccl, %.sroa.13.178.i        ; 3 uses
  %i.cco = xor i32 %i.ccm, %.sroa.0.179.i         ; 3 uses
  %i.ccp = xor i32 %i.ccl, %i.cck
  %i.ccq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccm, i32 %i.ccm, i32 11) ; 2 uses
  %i.ccr = add i32 %i.ccq, %i.cco
  %i.ccs = shl i32 %i.ccn, 9
  %i.cct = xor i32 %i.ccp, %i.cco                 ; 2 uses
  %i.ccu = xor i32 %i.ccq, %i.ccn                 ; 3 uses
  %i.ccv = xor i32 %i.cct, %i.ccn
  %i.ccw = xor i32 %i.ccu, %i.cco
  %i.ccx = xor i32 %i.cct, %i.ccs
  %i.ccy = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccu, i32 %i.ccu, i32 11)
  %i.ccz = lshr i32 %i.ccr, 8
  %i.cda = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccz to float
  %i.cdb = and i64 %indvars.iv.i530, 1
  %.not.i.i = icmp eq i64 %i.cdb, 0
  %i.cdc = fmul reassoc nnan nsz arcp contract afn float %i.cda, f0x34C90FDB
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cdc) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.cdd = add i32 %.sroa.35.176.i, %.sroa.0.179.i
  %i.cde = lshr i32 %i.cdd, 8
  %i.cdf = uitofp reassoc nsz arcp contract afn nneg i32 %i.cde to float
  %i.cdg = fmul reassoc nnan nsz arcp contract afn float %i.cdf, f0x33800000
  %i.cdh = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdg, float f0x00800000)
  %i.cdi = tail call fast float @llvm.log.f32(float %i.cdh)
  %i.cdj = fmul reassoc nnan nsz arcp contract afn float %i.cdi, -2.000000e+00
  %i.cdk = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdj)
  %i.cdl = fmul reassoc nsz arcp contract afn float %i.cdk, %i.bdg
  %i.cdm = fmul reassoc nsz arcp contract afn float %i.cdl, %.sink.i.i
  %i.cdn = fadd reassoc nsz arcp contract afn float %i.ccj, 3.750000e-01
  %i.cdo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdn, float 0.000000e+00)
  %i.cdp = tail call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdo)
  %i.cdq = fmul reassoc nnan nsz arcp contract afn float %i.cdp, 2.000000e+00
  %i.cdr = fadd reassoc nsz arcp contract afn float %i.cdq, %i.cdm ; 2 uses
  %i.cds = fmul reassoc nsz arcp contract afn float %i.cdr, %i.cdr
  %i.cdt = fsub reassoc nsz arcp contract afn float %i.cds, %i.bea
  %i.cdu = fmul reassoc nsz arcp contract afn float %i.cdt, 2.500000e-01
  %i.cdv = fadd reassoc nsz arcp contract afn float %i.cci, -3.750000e-01
  %i.cdw = fadd reassoc nsz arcp contract afn float %i.cdv, %i.cdu
  store float %i.cdw, ptr %i.cch, align 4, !tbaa !11
  br label %bb.ec

bb.ec:                                            ; preds = %poisson_noise.exit.i, %bb.eb
  %.sroa.35.2.i = phi i32 [ %i.ccy, %poisson_noise.exit.i ], [ %.sroa.35.176.i, %bb.eb ] ; 2 uses
  %.sroa.24.2.i = phi i32 [ %i.ccx, %poisson_noise.exit.i ], [ %.sroa.24.177.i, %bb.eb ] ; 2 uses
  %.sroa.13.2.i = phi i32 [ %i.ccv, %poisson_noise.exit.i ], [ %.sroa.13.178.i, %bb.eb ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.ccw, %poisson_noise.exit.i ], [ %.sroa.0.179.i, %bb.eb ] ; 2 uses
  %indvars.iv.next.i531 = add nsw i64 %indvars.iv.i530, 1 ; 2 uses
  %lftr.wideiv.i532 = trunc i64 %indvars.iv.next.i531 to i32
  %exitcond.not.i533 = icmp eq i32 %i.bzx, %lftr.wideiv.i532
  br i1 %exitcond.not.i533, label %._crit_edge.i534, label %bb.eb

_add_poisson_noise.exit:                          ; preds = %._crit_edge.i534, %bb.ea, %bb.dz
  %indvars.iv.next735 = add nuw nsw i64 %indvars.iv734, 1 ; 2 uses
  %exitcond738.not = icmp eq i64 %indvars.iv.next735, %wide.trip.count737
  br i1 %exitcond738.not, label %.loopexit580, label %bb.dz

.loopexit580:                                     ; preds = %_add_poisson_noise.exit, %._crit_edge639, %._crit_edge639.thread
  %i.cdx = sitofp reassoc nsz arcp contract afn i32 %i.bn to float
  %i.cdy = fadd reassoc nsz arcp contract afn float %i.cdx, 2.000000e+00 ; 2 uses
  %i.cdz = load i32, ptr %i.cg, align 4, !tbaa !308 ; 2 uses
  %i.cea = add nsw i32 %i.cdz, -1
  %i.ceb = icmp sgt i32 %i.cdz, 2
  br i1 %i.ceb, label %.preheader578.lr.ph, label %.loopexit

.preheader578.lr.ph:                              ; preds = %.loopexit580
  %i.cec = load i32, ptr %i.ca, align 4, !tbaa !310 ; 3 uses
  %i.ced = icmp sgt i32 %i.cec, 2
  %i.cee = sext i32 %i.cec to i64
  br i1 %i.ced, label %.preheader578.preheader, label %.loopexit

.preheader578.preheader:                          ; preds = %.preheader578.lr.ph
  %i.cef = add nsw i32 %i.cec, -1                 ; 2 uses
  %wide.trip.count752 = zext nneg i32 %i.cea to i64
  %wide.trip.count742 = zext i32 %i.cef to i64
  %wide.trip.count747 = zext i32 %i.cef to i64
  br label %.preheader578

.preheader578:                                    ; preds = %.preheader578.preheader, %._crit_edge644
  %indvars.iv749 = phi i64 [ 1, %.preheader578.preheader ], [ %indvars.iv.next750, %._crit_edge644 ] ; 5 uses
  %i.ceg = mul nuw nsw i64 %indvars.iv749, %i.cee ; 2 uses
  %indvars.iv749.tr = trunc i64 %indvars.iv749 to i32
  %i.ceh = shl i32 %indvars.iv749.tr, 1
  %i.cei = and i32 %i.ceh, 14
  %i.cej = trunc i64 %indvars.iv749 to i32
  %i.cek = add i32 %i.cej, 600
  %i.cel = urem i32 %i.cek, 6
  %i.cem = zext nneg i32 %i.cel to i64
  %i.cen = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.cem
  %i.ceo = trunc nuw nsw i64 %indvars.iv749 to i32
  %i.cep = udiv i32 %i.ceo, 3
  %i.ceq = add nuw nsw i32 %i.cep, 8
  %i.cer = mul nsw i32 %i.ceq, %i.dl
  %i.ces = add i32 %i.cer, 8                      ; 2 uses
  br i1 %.not453, label %fcol.exit537.us, label %fcol.exit537

fcol.exit537.us:                                  ; preds = %.preheader578, %bb.ee
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.ee ], [ 1, %.preheader578 ] ; 4 uses
  %i.cet = add nuw nsw i64 %i.ceg, %indvars.iv744 ; 2 uses
  %i.ceu = trunc i64 %indvars.iv744 to i32
  %i.cev = add i32 %i.ceu, 600
  %i.cew = urem i32 %i.cev, 6
  %i.cex = zext nneg i32 %i.cew to i64
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cen, i64 %i.cex
  %i.cez = load i8, ptr %i.cey, align 1, !tbaa !332
  %i.cfa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cet
  %i.cfb = load float, ptr %i.cfa, align 4, !tbaa !11
  %i.cfc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfb, float 0.000000e+00)
  %i.cfd = zext i8 %i.cez to i64
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cfd
  %i.cff = load float, ptr %i.cfe, align 4, !tbaa !11
  %i.cfg = fcmp reassoc nsz arcp contract afn ogt float %i.cfc, %i.cff
  br i1 %i.cfg, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %fcol.exit537.us
  %i.cfh = trunc nuw nsw i64 %indvars.iv744 to i32
  %i.cfi = udiv i32 %i.cfh, 3
  %i.cfj = add i32 %i.ces, %i.cfi
  %i.cfk = sext i32 %i.cfj to i64                 ; 2 uses
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cfk
  %i.cfm = load float, ptr %i.cfl, align 4, !tbaa !11
  %i.cfn = fsub reassoc nsz arcp contract afn float %i.cdy, %i.cfm
  %i.cfo = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cfn)
  %i.cfp = fadd reassoc nsz arcp contract afn float %i.cfo, 1.000000e+00
  %i.cfq = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cfk
  %i.cfr = load float, ptr %i.cfq, align 4, !tbaa !11
  %i.cfs = fmul reassoc nsz arcp contract afn float %i.cfr, %i.bk
  %i.cft = fdiv reassoc nsz arcp contract afn float %i.cfs, %i.cfp
  %i.cfu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cft, float 0.000000e+00)
  %i.cfv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cet ; 2 uses
  %i.cfw = load float, ptr %i.cfv, align 4, !tbaa !11
  %i.cfx = fadd reassoc nsz arcp contract afn float %i.cfu, %i.cfw
  store float %i.cfx, ptr %i.cfv, align 4, !tbaa !11
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %fcol.exit537.us
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count747
  br i1 %exitcond748.not, label %._crit_edge644, label %fcol.exit537.us

._crit_edge644:                                   ; preds = %bb.eg, %bb.ee
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %.loopexit, label %.preheader578

fcol.exit537:                                     ; preds = %.preheader578, %bb.eg
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %bb.eg ], [ 1, %.preheader578 ] ; 3 uses
  %i.cfy = add nuw nsw i64 %i.ceg, %indvars.iv739 ; 2 uses
  %i.cfz = trunc nuw nsw i64 %indvars.iv739 to i32 ; 2 uses
  %i.cga = and i32 %i.cfz, 1
  %.tr.i.i535 = or disjoint i32 %i.cga, %i.cei
  %i.cgb = shl nuw nsw i32 %.tr.i.i535, 1
  %i.cgc = lshr i32 %i.j, %i.cgb
  %i.cgd = and i32 %i.cgc, 3
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cfy
  %i.cgf = load float, ptr %i.cge, align 4, !tbaa !11
  %i.cgg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgf, float 0.000000e+00)
  %i.cgh = zext nneg i32 %i.cgd to i64
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cgh
  %i.cgj = load float, ptr %i.cgi, align 4, !tbaa !11
  %i.cgk = fcmp reassoc nsz arcp contract afn ogt float %i.cgg, %i.cgj
  br i1 %i.cgk, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %fcol.exit537
  %i.cgl = udiv i32 %i.cfz, 3
  %i.cgm = add i32 %i.ces, %i.cgl
  %i.cgn = sext i32 %i.cgm to i64                 ; 2 uses
  %i.cgo = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cgn
  %i.cgp = load float, ptr %i.cgo, align 4, !tbaa !11
  %i.cgq = fsub reassoc nsz arcp contract afn float %i.cdy, %i.cgp
  %i.cgr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cgq)
  %i.cgs = fadd reassoc nsz arcp contract afn float %i.cgr, 1.000000e+00
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cgn
  %i.cgu = load float, ptr %i.cgt, align 4, !tbaa !11
  %i.cgv = fmul reassoc nsz arcp contract afn float %i.cgu, %i.bk
  %i.cgw = fdiv reassoc nsz arcp contract afn float %i.cgv, %i.cgs
  %i.cgx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgw, float 0.000000e+00)
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cfy ; 2 uses
  %i.cgz = load float, ptr %i.cgy, align 4, !tbaa !11
  %i.cha = fadd reassoc nsz arcp contract afn float %i.cgx, %i.cgz
  store float %i.cha, ptr %i.cgy, align 4, !tbaa !11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %fcol.exit537
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge644, label %fcol.exit537

.loopexit:                                        ; preds = %._crit_edge644, %.loopexit580, %.preheader578.lr.ph, %bb.as, %bb.ar
  %i.chb = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.chc = load i32, ptr %i.chb, align 4, !tbaa !308 ; 2 uses
  %i.chd = icmp sgt i32 %i.chc, 0
  br i1 %i.chd, label %.preheader.lr.ph, label %._crit_edge652.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.che = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.chf = load i32, ptr %i.che, align 4, !tbaa !310 ; 3 uses
  %i.chg = icmp sgt i32 %i.chf, 0
  %i.chh = sext i32 %i.chf to i64                 ; 2 uses
  %i.chi = icmp eq i32 %6, 1
  %i.chj = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.chk = load i32, ptr %i.chj, align 4
  %i.chl = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.chm = load i32, ptr %i.chl, align 8
  %i.chn = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.cho = load i32, ptr %i.chn, align 4
  %i.chp = sub nsw i32 %i.chm, %i.cho
  %i.chq = mul nsw i32 %i.chp, %i.chk
  %i.chr = load ptr, ptr %i.du, align 16
  %i.chs = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.cht = load i32, ptr %i.chs, align 8
  br i1 %i.chg, label %.preheader.lr.ph.split, label %._crit_edge652.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.chu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.chv = load i32, ptr %i.chu, align 4, !tbaa !300
  %i.chw = load i32, ptr %4, align 4, !tbaa !299
  %i.chx = shl nuw nsw i64 %i.chh, 2
  %i.chy = zext nneg i32 %i.chf to i64            ; 2 uses
  %i.chz = shl nuw nsw i64 %i.chy, 2
  %i.cia = sext i32 %i.chw to i64
  %i.cib = sext i32 %i.chv to i64
  %wide.trip.count768 = zext nneg i32 %i.chc to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge648
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge648 ] ; 4 uses
  %i.cic = mul i64 %i.chx, %indvar
  %scevgep758 = getelementptr i8, ptr %2, i64 %i.cic
  %i.cid = add nsw i64 %indvar, %i.cib            ; 7 uses
  %i.cie = mul nuw nsw i64 %indvar, %i.chh
  %i.cif = icmp sgt i64 %i.cid, -1
  %i.cig = trunc nsw i64 %i.cid to i32            ; 2 uses
  %i.cih = udiv i32 %i.cig, 3
  %i.cii = add nuw nsw i32 %i.cih, 8
  %i.cij = mul nsw i32 %i.cii, %i.dl
  %invariant.op = add i32 %i.cij, 8
  %i.cik = icmp ne i64 %i.cid, 0
  %i.cil = shl nuw i32 %i.cig, 1
  %i.cim = and i32 %i.cil, 14
  %i.cin = trunc i64 %i.cid to i32
  %i.cio = add i32 %i.cin, 600
  %i.cip = urem i32 %i.cio, 6
  %i.ciq = zext nneg i32 %i.cip to i64
  %i.cir = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ciq
  br i1 %i.cif, label %.lr.ph647.split.us, label %._crit_edge648.sink.split

.lr.ph647.split.us:                               ; preds = %.preheader
  %i.cis = load i32, ptr %i.cg, align 4, !tbaa !308 ; 2 uses
  %i.cit = sext i32 %i.cis to i64
  %i.ciu = icmp slt i64 %i.cid, %i.cit
  %i.civ = add nsw i32 %i.cis, -1
  %i.ciw = sext i32 %i.civ to i64
  %i.cix = icmp samesign ult i64 %i.cid, %i.ciw
  %.fr650 = freeze i1 %i.ciu
  br i1 %.fr650, label %.lr.ph647.split.us.split, label %._crit_edge648.sink.split

.lr.ph647.split.us.split:                         ; preds = %.lr.ph647.split.us, %bb.eu
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %bb.eu ], [ 0, %.lr.ph647.split.us ] ; 3 uses
  %i.ciy = add nsw i64 %indvars.iv762, %i.cia     ; 7 uses
  %i.ciz = add nuw nsw i64 %i.cie, %indvars.iv762 ; 3 uses
  %i.cja = icmp sgt i64 %i.ciy, -1
  br i1 %i.cja, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph647.split.us.split
  %i.cjb = load i32, ptr %i.ca, align 4, !tbaa !310 ; 3 uses
  %i.cjc = sext i32 %i.cjb to i64
  %i.cjd = icmp slt i64 %i.ciy, %i.cjc
  br i1 %i.cjd, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph647.split.us.split
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ciz
  store float 0.000000e+00, ptr %i.cje, align 4, !tbaa !11
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.cjf = trunc nuw nsw i64 %i.ciy to i32        ; 2 uses
  %i.cjg = udiv i32 %i.cjf, 3
  %.reass649.us = add i32 %i.cjg, %invariant.op   ; 3 uses
  %i.cjh = sext i32 %.reass649.us to i64          ; 4 uses
  br i1 %i.aoi, label %bb.ek, label %.thread552.us

.thread552.us:                                    ; preds = %bb.ej
end_hunk_5
