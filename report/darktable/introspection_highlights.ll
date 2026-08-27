Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@process:bb.a
  %i.ko = shl i64 %i.kn, 2                        ; 4 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ko ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load float, ptr %i.kp, align 4, !tbaa !11
  %i.ks = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kr, float 0.000000e+00) ; 3 uses
  %i.kt = fcmp reassoc nsz arcp contract afn ult float %i.ks, %.sroa.0278.0.i
  br i1 %i.kt, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kv = load <2 x float>, ptr %i.ku, align 4, !tbaa !11
  %i.kw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kv, <2 x float> zeroinitializer) ; 2 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 1
  %i.ky = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.kx) #35
  %i.kz = extractelement <2 x float> %i.kw, i64 0
  %i.la = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.kz) #35
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.ky
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
end_hunk_0
begin_hunk_1_@_process_segmentation:bb.a
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
  store float %i.ks, ptr %i.kq, align 4, !tbaa !11
  %i.kt = mul nsw i64 %indvars.iv.next684, %i.hq
  %i.ku = getelementptr [4 x i8], ptr %7, i64 %i.kt ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader.1, label %fcol.exit.preheader.1

fcol.exit.preheader.1:                            ; preds = %.split602.us
  %i.kv = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !11
  %.tr.i.i.11123 = or disjoint i32 %i.hs, %i.fn
  %i.kx = shl nuw nsw i32 %.tr.i.i.11123, 1
  %i.ky = lshr i32 %i.j, %i.kx
  %i.kz = and i32 %i.ky, 3
  %i.la = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.la ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !11
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lc, %i.kw
  store float %i.ld, ptr %i.lb, align 4, !tbaa !11
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.la ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !11
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, 1.000000e+00
  store float %i.lg, ptr %i.le, align 4, !tbaa !11
  %i.lh = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv.next674
  %i.li = load float, ptr %i.lh, align 4, !tbaa !11
  %.tr.i.i.1.1 = or disjoint i32 %i.hu, %i.fn
  %i.lj = shl nuw nsw i32 %.tr.i.i.1.1, 1
  %i.lk = lshr i32 %i.j, %i.lj
  %i.ll = and i32 %i.lk, 3
  %i.lm = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lm ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !11
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, %i.li
  store float %i.lp, ptr %i.ln, align 4, !tbaa !11
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.lm ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !11
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, 1.000000e+00
  store float %i.ls, ptr %i.lq, align 4, !tbaa !11
  %.tr.i.i.2.1 = or disjoint i32 %i.hw, %i.fn
  %i.lt = shl nuw nsw i32 %.tr.i.i.2.1, 1
  %i.lu = lshr i32 %i.j, %i.lt
  %i.lv = and i32 %i.lu, 3
  %i.lw = zext nneg i32 %i.lv to i64
  br label %.split602.us.1

fcol.exit.us.preheader.1:                         ; preds = %.split602.us
  %i.lx = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !11
  %i.lz = getelementptr inbounds i8, ptr %i.fr, i64 %i.ia
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !332
  %i.mb = zext i8 %i.ma to i64                    ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mb ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !11
  %i.me = fadd reassoc nsz arcp contract afn float %i.md, %i.ly
  store float %i.me, ptr %i.mc, align 4, !tbaa !11
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mb ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !11
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, 1.000000e+00
  store float %i.mh, ptr %i.mf, align 4, !tbaa !11
  %i.mi = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv
  %i.mj = getelementptr i8, ptr %i.mi, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !11
  %i.ml = getelementptr inbounds i8, ptr %i.fr, i64 %i.ie
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !332
  %i.mn = zext i8 %i.mm to i64                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mn ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !11
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %i.mk
  store float %i.mq, ptr %i.mo, align 4, !tbaa !11
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mn ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !11
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, 1.000000e+00
  store float %i.mt, ptr %i.mr, align 4, !tbaa !11
  %i.mu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ii
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !332
  %i.mw = zext i8 %i.mv to i64
  br label %.split602.us.1

.split602.us.1:                                   ; preds = %fcol.exit.us.preheader.1, %fcol.exit.preheader.1
  %.sink864.1 = phi i64 [ %i.lw, %fcol.exit.preheader.1 ], [ %i.mw, %fcol.exit.us.preheader.1 ] ; 2 uses
  %.pn.1 = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv
  %.sink862.in.1 = getelementptr i8, ptr %.pn.1, i64 8
  %.sink862.1 = load float, ptr %.sink862.in.1, align 4, !tbaa !11
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864.1 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !11
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, %.sink862.1
  store float %i.mz, ptr %i.mx, align 4, !tbaa !11
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864.1 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !11
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, 1.000000e+00
  store float %i.nc, ptr %i.na, align 4, !tbaa !11
  %i.nd = mul nsw i64 %indvars.iv.next684.1, %i.hq
  %i.ne = getelementptr [4 x i8], ptr %7, i64 %i.nd ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader.2, label %fcol.exit.preheader.2

fcol.exit.preheader.2:                            ; preds = %.split602.us.1
  %i.nf = getelementptr [4 x i8], ptr %i.ne, i64 %indvars.iv
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !11
  %.tr.i.i.21124 = or disjoint i32 %i.hs, %i.fu
  %i.nh = shl nuw nsw i32 %.tr.i.i.21124, 1
  %i.ni = lshr i32 %i.j, %i.nh
  %i.nj = and i32 %i.ni, 3
  %i.nk = zext nneg i32 %i.nj to i64              ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nk ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !11
  %i.nn = fadd reassoc nsz arcp contract afn float %i.nm, %i.ng
  store float %i.nn, ptr %i.nl, align 4, !tbaa !11
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nk ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !11
  %i.nq = fadd reassoc nsz arcp contract afn float %i.np, 1.000000e+00
  store float %i.nq, ptr %i.no, align 4, !tbaa !11
  %i.nr = getelementptr [4 x i8], ptr %i.ne, i64 %indvars.iv.next674
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !11
  %.tr.i.i.1.2 = or disjoint i32 %i.hu, %i.fu
  %i.nt = shl nuw nsw i32 %.tr.i.i.1.2, 1
  %i.nu = lshr i32 %i.j, %i.nt
  %i.nv = and i32 %i.nu, 3
  %i.nw = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nw ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !11
  %i.nz = fadd reassoc nsz arcp contract afn float %i.ny, %i.ns
  store float %i.nz, ptr %i.nx, align 4, !tbaa !11
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nw ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !11
  %i.oc = fadd reassoc nsz arcp contract afn float %i.ob, 1.000000e+00
  store float %i.oc, ptr %i.oa, align 4, !tbaa !11
  %.tr.i.i.2.2 = or disjoint i32 %i.hw, %i.fu
  %i.od = shl nuw nsw i32 %.tr.i.i.2.2, 1
  %i.oe = lshr i32 %i.j, %i.od
  %i.of = and i32 %i.oe, 3
  %i.og = zext nneg i32 %i.of to i64
  br label %.split602.us.2

fcol.exit.us.preheader.2:                         ; preds = %.split602.us.1
  %i.oh = getelementptr [4 x i8], ptr %i.ne, i64 %indvars.iv
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !11
  %i.oj = getelementptr inbounds i8, ptr %i.fy, i64 %i.ia
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !332
  %i.ol = zext i8 %i.ok to i64                    ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ol ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !11
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, %i.oi
  store float %i.oo, ptr %i.om, align 4, !tbaa !11
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ol ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !11
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, 1.000000e+00
  store float %i.or, ptr %i.op, align 4, !tbaa !11
  %i.os = getelementptr [4 x i8], ptr %i.ne, i64 %indvars.iv
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !11
  %i.ov = getelementptr inbounds i8, ptr %i.fy, i64 %i.ie
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !332
  %i.ox = zext i8 %i.ow to i64                    ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ox ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !11
  %i.pa = fadd reassoc nsz arcp contract afn float %i.oz, %i.ou
  store float %i.pa, ptr %i.oy, align 4, !tbaa !11
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ox ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !11
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, 1.000000e+00
  store float %i.pd, ptr %i.pb, align 4, !tbaa !11
  %i.pe = getelementptr inbounds i8, ptr %i.fy, i64 %i.ii
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !332
  %i.pg = zext i8 %i.pf to i64
  br label %.split602.us.2

.split602.us.2:                                   ; preds = %fcol.exit.us.preheader.2, %fcol.exit.preheader.2
  %.sink864.2 = phi i64 [ %i.og, %fcol.exit.preheader.2 ], [ %i.pg, %fcol.exit.us.preheader.2 ] ; 2 uses
  %.pn.2 = getelementptr [4 x i8], ptr %i.ne, i64 %indvars.iv
  %.sink862.in.2 = getelementptr i8, ptr %.pn.2, i64 8
  %.sink862.2 = load float, ptr %.sink862.in.2, align 4, !tbaa !11
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864.2 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !11
  %i.pj = fadd reassoc nsz arcp contract afn float %i.pi, %.sink862.2
  store float %i.pj, ptr %i.ph, align 4, !tbaa !11
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864.2 ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !11
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, 1.000000e+00
  store float %i.pm, ptr %i.pk, align 4, !tbaa !11
  %i.pn = load float, ptr %i.g, align 16, !tbaa !11 ; 2 uses
  %i.po = fcmp reassoc nsz arcp contract afn ogt float %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.k, label %.preheader590.1

bb.k:                                             ; preds = %.split602.us.2
  %i.pp = load float, ptr %i.f, align 16, !tbaa !11
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.eo
  %i.pr = fdiv reassoc nsz arcp contract afn float %i.pq, %i.pn
  %i.ps = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.pr) #35
  br label %.preheader590.1

.preheader590.1:                                  ; preds = %.split602.us.2, %bb.k
  %i.pt = phi reassoc nsz arcp contract afn float [ %i.ps, %bb.k ], [ 0.000000e+00, %.split602.us.2 ] ; 5 uses
  store float %i.pt, ptr %i.f, align 16, !tbaa !11
  %i.pu = load float, ptr %i.eh, align 4, !tbaa !11 ; 2 uses
  %i.pv = fcmp reassoc nsz arcp contract afn ogt float %i.pu, 0.000000e+00
  br i1 %i.pv, label %bb.l, label %.preheader590.2

bb.l:                                             ; preds = %.preheader590.1
  %i.pw = load float, ptr %i.ef, align 4, !tbaa !11
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %i.ep
  %i.py = fdiv reassoc nsz arcp contract afn float %i.px, %i.pu
  %i.pz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.py) #35
  br label %.preheader590.2

.preheader590.2:                                  ; preds = %bb.l, %.preheader590.1
  %i.qa = phi reassoc nsz arcp contract afn float [ %i.pz, %bb.l ], [ 0.000000e+00, %.preheader590.1 ] ; 5 uses
  store float %i.qa, ptr %i.ef, align 4, !tbaa !11
  %i.qb = load float, ptr %i.ei, align 8, !tbaa !11 ; 2 uses
  %i.qc = fcmp reassoc nsz arcp contract afn ogt float %i.qb, 0.000000e+00
  br i1 %i.qc, label %bb.m, label %.preheader590.3

bb.m:                                             ; preds = %.preheader590.2
  %i.qd = load float, ptr %i.eg, align 8, !tbaa !11
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, %i.be
  %i.qf = fdiv reassoc nsz arcp contract afn float %i.qe, %i.qb
  %i.qg = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qf) #35
  br label %.preheader590.3

.preheader590.3:                                  ; preds = %bb.m, %.preheader590.2
  %i.qh = phi reassoc nsz arcp contract afn float [ %i.qg, %bb.m ], [ 0.000000e+00, %.preheader590.2 ] ; 5 uses
  store float %i.qh, ptr %i.eg, align 8, !tbaa !11
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %i.qa
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, 5.000000e-01
  %i.qk = fadd reassoc nsz arcp contract afn float %i.pt, %i.qh
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qk, 5.000000e-01
  %i.qm = fadd reassoc nsz arcp contract afn float %i.pt, %i.qa
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qm, 5.000000e-01
  %i.qo = add i32 %i.ez, %i.ho
  %i.qp = sext i32 %i.qo to i64                   ; 10 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.qp
  store float %i.pt, ptr %i.qq, align 4, !tbaa !11
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.qp
  store float %i.qj, ptr %i.qr, align 4, !tbaa !11
  %i.qs = fcmp reassoc nsz arcp contract afn ogt float %i.pt, %i.ae
  br i1 %i.qs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader590.3
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.qp
  store i32 1, ptr %i.qt, align 4, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %.preheader590.3, %bb.n
  %.1 = phi i32 [ 1, %bb.n ], [ 0, %.preheader590.3 ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.qp
  store float %i.qa, ptr %i.qu, align 4, !tbaa !11
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.qp
  store float %i.ql, ptr %i.qv, align 4, !tbaa !11
  %i.qw = fcmp reassoc nsz arcp contract afn ogt float %i.qa, %i.ag
  br i1 %i.qw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qx = add nuw nsw i32 %.1, 1
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.qp
  store i32 1, ptr %i.qy, align 4, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %i.qx, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.qp
  store float %i.qh, ptr %i.qz, align 4, !tbaa !11
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.qp
  store float %i.qn, ptr %i.ra, align 4, !tbaa !11
  %i.rb = fcmp reassoc nsz arcp contract afn ogt float %i.qh, %i.ai
  br i1 %i.rb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rc = add nuw nsw i32 %.1.1, 1
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.qp
  store i32 1, ptr %i.rd, align 4, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.2 = phi i32 [ %i.rc, %bb.r ], [ %.1.1, %bb.q ] ; 2 uses
  %i.re = icmp eq i32 %.1.2, 3
  %i.rf = zext i1 %i.re to i32                    ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.qp
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !22
  %i.rh = or i32 %.1420608, %i.rf
  %i.ri = add nsw i32 %.1.2, %.1422607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  %.pre779 = load i32, ptr %i.ca, align 4, !tbaa !310
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split, %bb.s
  %i.rj = phi i32 [ %.pre779, %bb.s ], [ %i.hl, %.lr.ph.split ] ; 5 uses
  %.2423 = phi i32 [ %i.ri, %bb.s ], [ %.1422607, %.lr.ph.split ] ; 2 uses
  %.2 = phi i32 [ %i.rh, %bb.s ], [ %.1420608, %.lr.ph.split ] ; 2 uses
  %i.rk = add nuw nsw i32 %.0417609, 1            ; 2 uses
  %i.rl = add nsw i32 %i.rj, -1
  %i.rm = icmp slt i32 %i.rk, %i.rl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
end_hunk_1
begin_hunk_2_@wavelets_process:bb.a
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph46.i
  %.03744.i = phi i64 [ 0, %.lr.ph46.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %i.bd = trunc i64 %.03744.i to i32              ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %dwt_interleave_rows.exit.i

bb.e:                                             ; preds = %bb.d
  %i.be = sdiv i32 %.reass.i, %i.av               ; 4 uses
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = mul nsw i32 %i.bb, %i.be                ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.bd
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = sdiv i32 %i.bd, %i.be
  %i.bi = srem i32 %i.bd, %i.be
  %i.bj = shl nsw i32 %i.bi, %.05497
  %i.bk = add nsw i32 %i.bj, %i.bh
  br label %dwt_interleave_rows.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bl = sub nsw i32 %i.bd, %i.bf                ; 2 uses
  %i.bm = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bn = sdiv i32 %i.bl, %i.bm
  %i.bo = add nsw i32 %i.bn, %i.bb
  %i.bp = srem i32 %i.bl, %i.bm
  %i.bq = shl nsw i32 %i.bp, %.05497
  %i.br = add nsw i32 %i.bo, %i.bq
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.h, %bb.g, %bb.d
  %.1.i.i = phi i32 [ %i.bd, %bb.d ], [ %i.bk, %bb.g ], [ %i.br, %bb.h ] ; 3 uses
  %i.bs = sext i32 %.1.i.i to i64                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.bt = sub nsw i32 %.1.i.i, %i.ax
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = mul i64 %i.f, %i.bv                     ; 2 uses
  %i.bx = sub nsw i32 %.1.i.i, %i.av
  %i.by = call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = mul i64 %i.f, %i.bz                     ; 2 uses
  %i.cb = mul i64 %i.f, %i.bs                     ; 2 uses
  %i.cc = add nsw i64 %i.bs, %i.ay
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.m)
  %i.cd = mul i64 %..i.i, %i.f                    ; 2 uses
  %i.ce = add nsw i64 %i.bs, %i.az
  %i.cf = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.m)
  %i.cg = mul i64 %i.cf, %i.f                     ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader32, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ch = shl nuw i64 %index, 2                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ch
  %i.ck = getelementptr [4 x i8], ptr %i.ci, i64 %i.bw
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %i.ca
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cb
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %i.cd
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.cg
  %wide.vec = load <16 x float>, ptr %i.ck, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec3 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec4 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, splat (float 6.250000e-02)
  %wide.vec5 = load <16 x float>, ptr %i.cl, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec6 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec7 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec8 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec9 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec6, splat (float 2.500000e-01)
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cq
  %wide.vec10 = load <16 x float>, ptr %i.cm, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec11 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec12 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec13 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec14 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec11, splat (float 3.750000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.cr, %i.cs
  %wide.vec15 = load <16 x float>, ptr %i.cn, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec16 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec17 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec18 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec19 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec16, splat (float 2.500000e-01)
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %i.ct, %i.cu
  %wide.vec20 = load <16 x float>, ptr %i.co, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec21 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec22 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec23 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec21, splat (float 6.250000e-02)
  %i.cx = fadd reassoc nsz arcp contract afn <4 x float> %i.cw, %i.cv ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec2, splat (float 6.250000e-02)
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec7, splat (float 2.500000e-01)
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %i.cy, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec12, splat (float 3.750000e-01)
  %i.dc = fadd reassoc nsz arcp contract afn <4 x float> %i.da, %i.db
  %i.dd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec17, splat (float 2.500000e-01)
  %i.de = fadd reassoc nsz arcp contract afn <4 x float> %i.dc, %i.dd
  %i.df = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec22, splat (float 6.250000e-02)
  %i.dg = fadd reassoc nsz arcp contract afn <4 x float> %i.df, %i.de ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec3, splat (float 6.250000e-02)
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec8, splat (float 2.500000e-01)
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.dh, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec13, splat (float 3.750000e-01)
  %i.dl = fadd reassoc nsz arcp contract afn <4 x float> %i.dj, %i.dk
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec18, splat (float 2.500000e-01)
  %i.dn = fadd reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dm
  %i.do = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec23, splat (float 6.250000e-02)
  %i.dp = fadd reassoc nsz arcp contract afn <4 x float> %i.do, %i.dn ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec4, splat (float 6.250000e-02)
  %i.dr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec9, splat (float 2.500000e-01)
  %i.ds = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dr
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec14, splat (float 3.750000e-01)
  %i.du = fadd reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec19, splat (float 2.500000e-01)
  %i.dw = fadd reassoc nsz arcp contract afn <4 x float> %i.du, %i.dv
  %i.dx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec24, splat (float 6.250000e-02)
  %i.dy = fadd reassoc nsz arcp contract afn <4 x float> %i.dx, %i.dw ; 2 uses
  %i.dz = shufflevector <4 x float> %i.cx, <4 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ea = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dz, zeroinitializer
  %i.eb = shufflevector <4 x float> %i.cx, <4 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = select reassoc nsz arcp contract afn <8 x i1> %i.ea, <8 x float> zeroinitializer, <8 x float> %i.eb
  %i.ed = shufflevector <4 x float> %i.dp, <4 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ed, zeroinitializer
  %i.ef = shufflevector <4 x float> %i.dp, <4 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eg = select reassoc nsz arcp contract afn <8 x i1> %i.ee, <8 x float> zeroinitializer, <8 x float> %i.ef
  %interleaved.vec = shufflevector <8 x float> %i.ec, <8 x float> %i.eg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.cj, align 64, !tbaa !11, !alias.scope !604, !noalias !607
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i, label %.lr.ph.i.i.preheader32

.lr.ph.i.i.preheader32:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader32, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.fg, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader32 ] ; 2 uses
  %i.ei = shl nuw i64 %.036.i.i, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.ei ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ei
  %i.el = getelementptr [4 x i8], ptr %i.ej, i64 %i.bw
  %i.em = getelementptr [4 x i8], ptr %i.ej, i64 %i.ca
  %i.en = getelementptr [4 x i8], ptr %i.ej, i64 %i.cb
  %i.eo = getelementptr [4 x i8], ptr %i.ej, i64 %i.cd
  %i.ep = getelementptr [4 x i8], ptr %i.ej, i64 %i.cg
  %i.eq = load <4 x float>, ptr %i.el, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.eq, splat (float 6.250000e-02)
  %i.es = load <4 x float>, ptr %i.em, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.et = fmul reassoc nsz arcp contract afn <4 x float> %i.es, splat (float 2.500000e-01)
  %i.eu = fadd reassoc nsz arcp contract afn <4 x float> %i.er, %i.et
  %i.ev = load <4 x float>, ptr %i.en, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.ew = fmul reassoc nsz arcp contract afn <4 x float> %i.ev, splat (float 3.750000e-01)
  %i.ex = fadd reassoc nsz arcp contract afn <4 x float> %i.eu, %i.ew
  %i.ey = load <4 x float>, ptr %i.eo, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.ez = fmul reassoc nsz arcp contract afn <4 x float> %i.ey, splat (float 2.500000e-01)
  %i.fa = fadd reassoc nsz arcp contract afn <4 x float> %i.ex, %i.ez
  %i.fb = load <4 x float>, ptr %i.ep, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.fc = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, splat (float 6.250000e-02)
  %i.fd = fadd reassoc nsz arcp contract afn <4 x float> %i.fc, %i.fa ; 2 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fd, zeroinitializer
  %i.ff = select <4 x i1> %i.fe, <4 x float> zeroinitializer, <4 x float> %i.fd
  store <4 x float> %i.ff, ptr %i.ek, align 16, !tbaa !11, !alias.scope !604, !noalias !607
  %i.fg = add nuw nsw i64 %.036.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fg, %3
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !609

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %middle.block
  %i.fh = mul i64 %3, %i.bs
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %dwt_interleave_rows.exit.i
  %i.fi = add nuw nsw i64 %.03744.i, 1            ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.fi, %4
  br i1 %exitcond49.not.i, label %decompose_2D_Bspline.exit, label %bb.d

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.03643.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gx, %bb.i ] ; 6 uses
  %i.fj = add i64 %.03643.i, %i.fh
  %i.fk = shl i64 %i.fj, 2                        ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.fm = trunc i64 %.03643.i to i32              ; 2 uses
  %i.fn = sub nsw i32 %i.fm, %i.ax
  %i.fo = call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fp = shl nsw i32 %i.fo, 2
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = sub nsw i32 %i.fm, %i.av
  %i.fs = call i32 @llvm.smax.i32(i32 %i.fr, i32 0)
  %i.ft = shl nsw i32 %i.fs, 2
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = add nuw nsw i64 %.03643.i, %i.ay
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.fv, i64 %i.n)
  %i.fw = add nuw nsw i64 %.03643.i, %i.az
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.n)
  %i.fy = getelementptr [4 x i8], ptr %i.j, i64 %i.fq
  %i.fz = getelementptr [4 x i8], ptr %i.j, i64 %i.fu
  %.idx.i.i = shl i64 %.03643.i, 4
  %i.ga = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.gb = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.fx, 4
  %i.gc = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.gd = load <4 x float>, ptr %i.fy, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.ge = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, splat (float 6.250000e-02)
  %i.gf = load <4 x float>, ptr %i.fz, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.gg = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, splat (float 2.500000e-01)
  %i.gh = fadd reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gg
  %i.gi = load <4 x float>, ptr %i.ga, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, splat (float 3.750000e-01)
  %i.gk = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, %i.gj
  %i.gl = load <4 x float>, ptr %i.gb, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, splat (float 2.500000e-01)
  %i.gn = fadd reassoc nsz arcp contract afn <4 x float> %i.gk, %i.gm
  %i.go = load <4 x float>, ptr %i.gc, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.go, splat (float 6.250000e-02)
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.gp, %i.gn ; 2 uses
  %i.gr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gq, zeroinitializer
  %i.gs = select <4 x i1> %i.gr, <4 x float> zeroinitializer, <4 x float> %i.gq ; 2 uses
  store <4 x float> %i.gs, ptr %i.fl, align 4, !tbaa !11, !alias.scope !615, !noalias !610
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.fk
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.fk
  %i.gv = load <4 x float>, ptr %i.gt, align 4, !tbaa !11, !noalias !598
  %i.gw = fsub reassoc nsz arcp contract afn <4 x float> %i.gv, %i.gs
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !11, !noalias !598
  %i.gx = add nuw nsw i64 %.03643.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gx, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not82 = icmp eq i32 %.05497, %i.k             ; 2 uses
  %i.gy = shl nuw nsw i32 %.05497, 2
  %i.gz = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.gy) ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gz ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.t

bb.j:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph320.i

.lr.ph320.i:                                      ; preds = %bb.j
  %.not.i.i59 = icmp slt i32 %i.av, %i.l
  %.reass317.i = add i32 %invariant.op.i, %i.av
  %i.hb = add nsw i32 %i.av, -1
  %i.hc = and i32 %i.hb, %i.l                     ; 3 uses
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ha
  %i.hf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ha
  %i.hg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ha
  %i.hh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ha
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i65, %.lr.ph320.i
  %.0252318.i = phi i64 [ 0, %.lr.ph320.i ], [ %i.ii, %._crit_edge.i65 ] ; 2 uses
  %i.hi = trunc i64 %.0252318.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.l, label %dwt_interleave_rows.exit.i61

bb.l:                                             ; preds = %bb.k
  %i.hj = sdiv i32 %.reass317.i, %i.av            ; 4 uses
  br i1 %i.hd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = mul nsw i32 %i.hc, %i.hj                ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, %i.hi
  br i1 %i.hl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.hm = sdiv i32 %i.hi, %i.hj
  %i.hn = srem i32 %i.hi, %i.hj
  %i.ho = shl nsw i32 %i.hn, %.05497
  %i.hp = add nsw i32 %i.ho, %i.hm
  br label %dwt_interleave_rows.exit.i61

bb.o:                                             ; preds = %bb.m
  %i.hq = sub nsw i32 %i.hi, %i.hk                ; 2 uses
  %i.hr = add nsw i32 %i.hj, -1                   ; 2 uses
  %i.hs = sdiv i32 %i.hq, %i.hr
  %i.ht = add nsw i32 %i.hs, %i.hc
  %i.hu = srem i32 %i.hq, %i.hr
  %i.hv = shl nsw i32 %i.hu, %.05497
  %i.hw = add nsw i32 %i.ht, %i.hv
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.o, %bb.n, %bb.k
  %.1.i.i62 = phi i32 [ %i.hi, %bb.k ], [ %i.hp, %bb.n ], [ %i.hw, %bb.o ] ; 4 uses
  %i.hx = sub nsw i32 %.1.i.i62, %i.av
  %i.hy = call i32 @llvm.smax.i32(i32 %i.hx, i32 0)
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = mul i64 %3, %i.hz                       ; 3 uses
  %i.ib = sext i32 %.1.i.i62 to i64
  %i.ic = mul i64 %3, %i.ib                       ; 3 uses
  %i.id = add i32 %.1.i.i62, %i.av
  %..i = call i32 @llvm.smin.i32(i32 %i.id, i32 %invariant.op.i)
  %i.ie = sext i32 %..i to i64
  %i.if = mul i64 %3, %i.ie                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.ig = add nsw i32 %.1.i.i62, 3
  %i.ih = sext i32 %i.ig to i64
  br label %bb.p

._crit_edge.i65:                                  ; preds = %.thread289.i, %dwt_interleave_rows.exit.i61
  %i.ii = add nuw nsw i64 %.0252318.i, 1          ; 2 uses
  %exitcond332.not.i = icmp eq i64 %i.ii, %4
  br i1 %exitcond332.not.i, label %guide_laplacians.exit, label %bb.k

bb.p:                                             ; preds = %.thread289.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread289.i ] ; 6 uses
  %i.ij = add i64 %indvars.iv.i, %i.ic
  %i.ik = shl i64 %i.ij, 2                        ; 7 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = load float, ptr %i.im, align 4, !tbaa !11, !alias.scope !621, !noalias !625 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !626
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ik ; 2 uses
  %i.ip = or disjoint i64 %i.ik, 1                ; 2 uses
  %i.iq = or disjoint i64 %i.ik, 2                ; 3 uses
  %i.ir = load <4 x float>, ptr %i.io, align 16, !tbaa !11, !alias.scope !616, !noalias !627 ; 7 uses
  store <4 x float> %i.ir, ptr %i.a, align 16, !tbaa !11, !noalias !626
  %i.is = fcmp reassoc nsz arcp contract afn ogt float %i.in, 0.000000e+00 ; 2 uses
  br i1 %i.is, label %.preheader293.i, label %bb.q

.preheader293.i:                                  ; preds = %bb.p
  %i.it = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.iu = add i32 %i.av, %i.it
  %i.iv = call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.q)
  %smin326.i = sext i32 %i.iv to i64              ; 3 uses
  %i.iw = add i64 %i.ic, %smin326.i
  %i.ix = shl i64 %i.iw, 4
  %scevgep.i = getelementptr i8, ptr %6, i64 %i.ix
  %i.iy = sub i32 %i.it, %i.av
  %smax.i = call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %i.iz = zext nneg i32 %smax.i to i64            ; 3 uses
  %i.ja = add i64 %i.if, %i.iz
  %i.jb = shl i64 %i.ja, 4
  %scevgep325.i = getelementptr i8, ptr %6, i64 %i.jb
  %i.jc = add i64 %i.if, %smin326.i
  %i.jd = shl i64 %i.jc, 4
  %scevgep327.i = getelementptr i8, ptr %6, i64 %i.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.je = add i64 %i.ia, %i.iz
  %.idx.i = shl i64 %i.je, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.jg = add i64 %indvars.iv.i, %i.ia
  %.idx262.i = shl i64 %i.jg, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.ji = add i64 %i.ia, %smin326.i
  %.idx263.i = shl i64 %i.ji, 4
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.jk = add i64 %i.ic, %i.iz
  %.idx264.i = shl i64 %i.jk, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.jm = add i64 %indvars.iv.i, %i.if
  %.idx267.i = shl i64 %i.jm, 4
  %i.jn = getelementptr i8, ptr %6, i64 %.idx267.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.jh, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.io, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep325.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep327.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !626
  %i.jo = load <2 x float>, ptr %i.b, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.jp = load float, ptr %i.ae, align 8, !tbaa !11, !noalias !626 ; 2 uses
  %i.jq = load float, ptr %i.ag, align 4, !tbaa !11, !noalias !626 ; 2 uses
  %i.jr = load <2 x float>, ptr %i.u, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.js = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jo
  %i.jt = load float, ptr %i.ai, align 8, !tbaa !11, !noalias !626 ; 2 uses
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jt, %i.jp
  %i.jv = load float, ptr %i.aj, align 4, !tbaa !11, !noalias !626 ; 2 uses
  %i.jw = load <2 x float>, ptr %i.v, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.jx = fadd reassoc nsz arcp contract afn <2 x float> %i.js, %i.jw
  %i.jy = load float, ptr %i.ak, align 8, !tbaa !11, !noalias !626 ; 2 uses
  %i.jz = fadd reassoc nsz arcp contract afn float %i.ju, %i.jy
  %i.ka = load <2 x float>, ptr %i.w, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.kb = fadd reassoc nsz arcp contract afn <2 x float> %i.jx, %i.ka
  %i.kc = load float, ptr %i.am, align 8, !tbaa !11, !noalias !626 ; 2 uses
  %i.kd = fadd reassoc nsz arcp contract afn float %i.jz, %i.kc
  %i.ke = load <4 x float>, ptr %i.x, align 16    ; 2 uses
end_hunk_2
