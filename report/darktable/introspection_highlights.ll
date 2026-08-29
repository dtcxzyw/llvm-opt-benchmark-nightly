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
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lh = phi reassoc nsz arcp contract afn float [ %i.lg, %bb.aw ], [ %i.ks, %bb.av ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ko
  store float %i.lh, ptr %i.li, align 16, !tbaa !11
  %i.lj = or disjoint i64 %i.ko, 1                ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !11
  %i.lm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ll, float 0.000000e+00) ; 3 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ult float %i.lm, %.sroa.5.0.i
  br i1 %i.ln, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
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
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ma = phi reassoc nsz arcp contract afn float [ %i.lz, %bb.ay ], [ %i.lm, %bb.ax ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.lj
  store float %i.ma, ptr %i.mb, align 4, !tbaa !11
  %i.mc = or disjoint i64 %i.ko, 2                ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !11
  %i.mf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.me, float 0.000000e+00) ; 3 uses
  %i.mg = fcmp reassoc nsz arcp contract afn ult float %i.mf, %i.cr
  br i1 %i.mg, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
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
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.mt = phi reassoc nsz arcp contract afn float [ %i.ms, %bb.ba ], [ %i.mf, %bb.az ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mc
  store float %i.mt, ptr %i.mu, align 8, !tbaa !11
  %i.mv = add nuw i64 %.0161234.i, 1              ; 2 uses
  %exitcond250.not.i = icmp eq i64 %i.mv, %i.cu
  br i1 %exitcond250.not.i, label %._crit_edge235.i, label %bb.av

_process_linear_opposed.exit:                     ; preds = %._crit_edge235.i, %bb.u, %.thread199.i
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_process_linear_opposed.exit
  %.not282 = icmp eq i32 %i.aq, 0
  br i1 %.not282, label %.thread361, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.mw = tail call fastcc ptr @_provide_raster_mask(ptr noundef %4, ptr noundef %5, ptr noundef %3, float noundef %i.bn, ptr noundef %1) ; 2 uses
  %.not283 = icmp eq ptr %i.mw, null
  br i1 %.not283, label %.thread361, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @dt_iop_piece_set_raster(ptr noundef %1, ptr noundef nonnull %i.mw, ptr noundef %4, ptr noundef %5) #33
  br label %.loopexit380

.thread361:                                       ; preds = %.loopexit, %bb.bc
  tail call void @dt_iop_piece_clear_raster(ptr noundef %1, ptr noundef null) #33
  br label %.loopexit380

bb.be:                                            ; preds = %bb.q
  switch i32 %i.aa, label %bb.fp [
    i32 2, label %bb.bf
    i32 1, label %bb.ed
    i32 4, label %bb.eg
    i32 0, label %bb.el
    i32 3, label %bb.em
  ]

bb.bf:                                            ; preds = %bb.be
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
  br i1 %i.nh, label %bb.bg, label %.preheader384

.preheader384:                                    ; preds = %bb.bf
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !308 ; 9 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !310 ; 11 uses
  br i1 %i.nk, label %.lr.ph394, label %.preheader382

.lr.ph394:                                        ; preds = %.preheader384
  %i.nn = sext i32 %i.nm to i64
  %.not141182.i = icmp eq i32 %i.nm, 0
  %i.no = add nsw i32 %i.nm, -1                   ; 5 uses
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.np
  %i.nr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.np
  %i.ns = add i32 %i.nm, -2
  %i.nt = icmp eq i32 %i.no, 0
  br i1 %.not141182.i, label %.loopexit381, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph394
  %i.nu = add nsw i32 %i.nj, -1
  %i.nv = zext nneg i32 %i.nu to i64
  %wide.trip.count = zext nneg i32 %i.nj to i64
  %.not141.i.peel = icmp eq i32 %i.nm, 1
  %.not605 = icmp eq i32 %i.nm, 2
  %i.nw = add i32 %i.nm, -2
  br label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !308
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph401, label %.preheader

.preheader:                                       ; preds = %.lr.ph401, %bb.bg
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !310
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph403, label %.loopexit381

.lr.ph401:                                        ; preds = %bb.bg, %.lr.ph401
  %.0267400 = phi i32 [ %i.oe, %.lr.ph401 ], [ 0, %bb.bg ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef %.0267400, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 0)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef %.0267400, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 1)
  %i.oe = add nuw nsw i32 %.0267400, 1            ; 2 uses
  %i.of = load i32, ptr %i.ny, align 4, !tbaa !308
  %i.og = icmp slt i32 %i.oe, %i.of
  br i1 %i.og, label %.lr.ph401, label %.preheader

.lr.ph403:                                        ; preds = %.preheader, %.lr.ph403
  %.0266402 = phi i32 [ %i.oh, %.lr.ph403 ], [ 0, %.preheader ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef %.0266402, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 2)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef -1, i32 noundef %.0266402, ptr noundef %i.j, ptr noundef nonnull %i.nx, i32 noundef 3)
  %i.oh = add nuw nsw i32 %.0266402, 1            ; 2 uses
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !310
  %i.oj = icmp slt i32 %i.oh, %i.oi
  br i1 %i.oj, label %.lr.ph403, label %.loopexit381

.preheader382:                                    ; preds = %interpolate_color.exit314.loopexit, %.preheader384
  %i.ok = icmp sgt i32 %i.nm, 0
  br i1 %i.ok, label %.lr.ph399, label %.loopexit381

.lr.ph399:                                        ; preds = %.preheader382
  %i.ol = zext nneg i32 %i.nm to i64              ; 11 uses
  %.not141182.i315 = icmp eq i32 %i.nj, 0
  %i.om = add nsw i32 %i.nj, -1                   ; 3 uses
  %i.on = sub nsw i64 0, %i.ol                    ; 4 uses
  %i.oo = sext i32 %i.om to i64
  %i.op = mul nsw i64 %i.ol, %i.oo                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.op
  br i1 %.not141182.i315, label %.loopexit381, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %.lr.ph399
  %i.oq = add nsw i32 %i.nm, -1
  %i.or = zext nneg i32 %i.oq to i64              ; 2 uses
  %.not141.i330.peel = icmp eq i32 %i.nj, 1
  %.not141.i350.peel = icmp eq i32 %i.om, 0
  %i.os = add nsw i32 %i.nj, -2
  %.not606 = icmp eq i32 %i.nj, 2
  %i.ot = add i32 %i.nj, -2
  br label %.lr.ph.i316

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %interpolate_color.exit314.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %interpolate_color.exit314.loopexit ] ; 5 uses
  %i.ou = mul nsw i64 %indvars.iv, %i.nn          ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ov = shl nuw i32 %indvars.iv.tr, 1
  %i.ow = and i32 %i.ov, 14                       ; 4 uses
  %i.ox = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %i.oy = icmp eq i64 %indvars.iv, %i.nv
  %.fr = freeze i1 %i.oy                          ; 2 uses
  %i.oz = or i1 %.fr, %i.ox
  br i1 %i.oz, label %interpolate_color.exit, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  br i1 %.not141.i.peel, label %interpolate_color.exit314.loopexit, label %.lr.ph.i.split.preheader512

.lr.ph.i.split.preheader512:                      ; preds = %.lr.ph.i.split.preheader
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ou ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ou ; 2 uses
  br i1 %.not605, label %.lr.ph.i.split.peel, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.preheader512, %bb.bs
  %.0120188.i = phi i32 [ %i.qm, %bb.bs ], [ 1, %.lr.ph.i.split.preheader512 ] ; 3 uses
  %.1129185.i.pn = phi ptr [ %.1129185.i, %bb.bs ], [ %i.pa, %.lr.ph.i.split.preheader512 ]
  %.1131184.i.pn = phi ptr [ %.1131184.i, %bb.bs ], [ %i.pb, %.lr.ph.i.split.preheader512 ] ; 3 uses
  %.0132183.i = phi float [ %.1133.i, %bb.bs ], [ 1.000000e+00, %.lr.ph.i.split.preheader512 ] ; 3 uses
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
  br i1 %or.cond144.i, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %.lr.ph.i.split
  %i.ps = getelementptr inbounds nuw i8, ptr %.1131184.i.pn, i64 8
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !11 ; 4 uses
  %i.pu = fcmp reassoc nsz arcp contract afn olt float %i.pt, %i.po
  %i.pv = fcmp reassoc nsz arcp contract afn ogt float %i.pt, f0x3727C5AC
  %or.cond145.i = and i1 %i.pu, %i.pv
  br i1 %or.cond145.i, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %.not.i294 = icmp eq i32 %i.pc, 0
  %i.pw = fmul reassoc nsz arcp contract afn float %.0132183.i, 3.000000e+00 ; 2 uses
  br i1 %.not.i294, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.px = fdiv reassoc nsz arcp contract afn float %i.pp, %i.pt
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, %i.pw
  %i.pz = fmul reassoc nsz arcp contract afn float %i.py, 2.500000e-01
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.qa = fdiv reassoc nsz arcp contract afn float %i.pt, %i.pp
  %i.qb = fadd reassoc nsz arcp contract afn float %i.qa, %i.pw
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, 2.500000e-01
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh, %.lr.ph.i.split
  %.1133.i = phi nsz float [ %i.pz, %bb.bj ], [ %i.qc, %bb.bk ], [ %.0132183.i, %.lr.ph.i.split ], [ %.0132183.i, %bb.bh ] ; 4 uses
  %i.qd = fadd reassoc nsz arcp contract afn float %i.pi, f0xB727C5AC
  %i.qe = fcmp reassoc nsz arcp contract afn ult float %i.pp, %i.qd
  br i1 %i.qe, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qf = getelementptr inbounds nuw i8, ptr %.1131184.i.pn, i64 8
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !11 ; 3 uses
  %i.qh = fadd reassoc nsz arcp contract afn float %i.po, f0xB727C5AC
  %i.qi = fcmp reassoc nsz arcp contract afn ult float %i.qg, %i.qh
  br i1 %i.qi, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pi, float %i.po)
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %.not142.i = icmp eq i32 %i.pc, 0
  br i1 %.not142.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qg, %.1133.i
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ql = fdiv reassoc nsz arcp contract afn float %i.qg, %.1133.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i = phi nsz float [ %i.qj, %bb.bn ], [ %i.qk, %bb.bp ], [ %i.ql, %bb.bq ]
  store float %.0.i, ptr %.1129185.i, align 4, !tbaa !11
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bl, %bb.br
  %i.qm = add nuw nsw i32 %.0120188.i, 1          ; 2 uses
  %.not141.i = icmp eq i32 %.0120188.i, %i.nw
  br i1 %.not141.i, label %.lr.ph.i.split.peel, label %.lr.ph.i.split, !llvm.loop !374

.lr.ph.i.split.peel:                              ; preds = %.lr.ph.i.split.preheader512, %bb.bs
  %i.qn = phi i32 [ 1, %.lr.ph.i.split.preheader512 ], [ %i.qm, %bb.bs ] ; 2 uses
  %i.qo = phi ptr [ %i.pa, %.lr.ph.i.split.preheader512 ], [ %.1129185.i, %bb.bs ]
  %i.qp = phi ptr [ %i.pb, %.lr.ph.i.split.preheader512 ], [ %.1131184.i, %bb.bs ] ; 3 uses
  %i.qq = phi float [ 1.000000e+00, %.lr.ph.i.split.preheader512 ], [ %.1133.i, %bb.bs ] ; 3 uses
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
  br i1 %i.re, label %interpolate_color.exit, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.split.peel
  %.1131184.i.peel = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.rf = load float, ptr %.1131184.i.peel, align 4, !tbaa !11 ; 5 uses
  %i.rg = fcmp reassoc nsz arcp contract afn olt float %i.rf, %i.qx
  %i.rh = fcmp reassoc nsz arcp contract afn ogt float %i.rf, f0x3727C5AC
  %or.cond144.i.peel = and i1 %i.rg, %i.rh
  br i1 %or.cond144.i.peel, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !11 ; 4 uses
  %i.rk = fcmp reassoc nsz arcp contract afn olt float %i.rj, %i.rd
  %i.rl = fcmp reassoc nsz arcp contract afn ogt float %i.rj, f0x3727C5AC
  %or.cond145.i.peel = and i1 %i.rk, %i.rl
  br i1 %or.cond145.i.peel, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %.not.i294.peel = icmp eq i32 %i.qr, 0
  %i.rm = fmul reassoc nsz arcp contract afn float %i.qq, 3.000000e+00 ; 2 uses
  br i1 %.not.i294.peel, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rn = fdiv reassoc nsz arcp contract afn float %i.rf, %i.rj
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %i.rm
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ro, 2.500000e-01
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.rq = fdiv reassoc nsz arcp contract afn float %i.rj, %i.rf
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, %i.rm
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, 2.500000e-01
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bt
  %.1133.i.peel = phi nsz float [ %i.rp, %bb.bw ], [ %i.rs, %bb.bx ], [ %i.qq, %bb.bt ], [ %i.qq, %bb.bu ] ; 2 uses
  %i.rt = fadd reassoc nsz arcp contract afn float %i.qx, f0xB727C5AC
  %i.ru = fcmp reassoc nsz arcp contract afn ult float %i.rf, %i.rt
  br i1 %i.ru, label %interpolate_color.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !11 ; 3 uses
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rd, f0xB727C5AC
  %i.ry = fcmp reassoc nsz arcp contract afn ult float %i.rw, %i.rx
  br i1 %i.ry, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qx, float %i.rd)
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  %.not142.i.peel = icmp eq i32 %i.qr, 0
  br i1 %.not142.i.peel, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rw, %.1133.i.peel
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.sb = fdiv reassoc nsz arcp contract afn float %i.rw, %.1133.i.peel
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.ca
  %.0.i.peel = phi nsz float [ %i.rz, %bb.ca ], [ %i.sa, %bb.cc ], [ %i.sb, %bb.cd ]
  store float %.0.i.peel, ptr %.1129185.i.peel, align 4, !tbaa !11
  br label %interpolate_color.exit

interpolate_color.exit:                           ; preds = %bb.ce, %bb.by, %.lr.ph.i.split.peel, %.lr.ph.i
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
  %indvars.iv45.tr = trunc nuw i64 %indvars.iv45 to i32
  %i.w = shl nuw i32 %indvars.iv45.tr, 1
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
  %.tr = trunc nuw i64 %i.kf to i32
  %i.kh = shl nuw i32 %.tr, 1
  %i.ki = and i32 %i.kh, 14                       ; 3 uses
  %i.kj = add nuw nsw i64 %i.jz, 2                ; 2 uses
  %i.kk = trunc i64 %i.kj to i32
  %.tr520 = trunc nuw i64 %i.kj to i32
  %i.kl = shl nuw i32 %.tr520, 1
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
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !11
  %i.aj = load ptr, ptr %0, align 16, !tbaa !333
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 664
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !334 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.thread549, label %bb.b

.thread549:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 2416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2448
  %i.ar = load <2 x double>, ptr %i.ap, align 16, !tbaa !447
  %i.as = load <2 x double>, ptr %i.aq, align 16, !tbaa !447
  %i.at = fdiv reassoc nsz arcp contract afn <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float>
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 2432
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !447
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 2464
  %i.az = load double, ptr %i.ay, align 16, !tbaa !447
  %i.ba = fdiv reassoc nsz arcp contract afn double %i.ax, %i.az
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  br label %bb.c

bb.c:                                             ; preds = %.thread549, %bb.b
  %i.bc = phi ptr [ %i.ao, %.thread549 ], [ %i.av, %bb.b ]
  %i.bd = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread549 ], [ %i.bb, %bb.b ] ; 2 uses
  %i.be = phi <2 x float> [ splat (float 1.000000e+00), %.thread549 ], [ %i.au, %bb.b ] ; 3 uses
  store <2 x float> %i.be, ptr %i.c, align 16, !tbaa !11
  store float %i.bd, ptr %i.bc, align 4, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !505 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !506 ; 5 uses
  %i.bk = sext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr @__const._process_segmentation.recovery_closing, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !507
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !508
  %i.br = mul nsw i32 %i.bq, %i.bo
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !509 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 2.500000e-04
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bs
  %i.by = fptosi float %i.bx to i32               ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !310
  %i.cb = sdiv i32 %i.ca, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = tail call i64 @dt_round_size(i64 noundef %i.cc, i64 noundef 2) #33 ; 4 uses
  %i.ce = add i64 %i.cd, 16                       ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !308
  %i.ch = sdiv i32 %i.cg, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = tail call i64 @dt_round_size(i64 noundef %i.ci, i64 noundef 2) #33 ; 3 uses
  %i.ck = add i64 %i.cj, 16                       ; 7 uses
  %i.cl = mul i64 %i.ck, %i.ce
  %i.cm = tail call i64 @dt_round_size(i64 noundef %i.cl, i64 noundef 64) #33 ; 9 uses
  %i.cn = shl i64 %i.cm, 5
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #33 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %.not450 = icmp eq ptr %i.co, null
  br i1 %.not450, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.cq = and i32 %i.cp, 33554432
  %.not451 = icmp eq i32 %i.cq, 0
  br i1 %.not451, label %bb.ex, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.119) #33
  br label %bb.ex

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.co, ptr %i.d, align 16, !tbaa !386
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !386
  %.idx = shl i64 %i.cm, 3                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ct, ptr %i.cu, align 16, !tbaa !386
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.idx840 = shl i64 %i.cm, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx840
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.cw, ptr %i.cx, align 16, !tbaa !386
  %.idx841 = mul i64 %i.cm, 20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx841
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !386
  %.idx842 = mul i64 %i.cm, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx842
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.da, ptr %i.db, align 16, !tbaa !386
  %i.dc = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %i.dd = shufflevector <4 x i64> %i.dc, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = mul <4 x i64> %i.dd, <i64 28, i64 poison, i64 poison, i64 12> ; 2 uses
  %i.df = extractelement <4 x i64> %i.de, i64 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.df ; 38 uses
  store ptr %i.dg, ptr %i.cv, align 8, !tbaa !386
  %i.dh = extractelement <4 x i64> %i.de, i64 0   ; 3 uses
  %i.di = getelementptr i8, ptr %i.co, i64 %i.dh  ; 17 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dk = trunc i64 %i.ce to i32                  ; 19 uses
  %i.dl = trunc i64 %i.ck to i32                  ; 10 uses
  %i.dm = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %8, i32 noundef %i.dk, i32 noundef %i.dl, i32 noundef 9, i32 noundef %i.by)
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  %i.do = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dn, i32 noundef %i.dk, i32 noundef %i.dl, i32 noundef 9, i32 noundef %i.by)
  %i.dp = or i32 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.dr = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dq, i32 noundef %i.dk, i32 noundef %i.dl, i32 noundef 9, i32 noundef %i.by)
  %i.ds = or i32 %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 10 uses
  %i.du = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dt, i32 noundef %i.dk, i32 noundef %i.dl, i32 noundef 9, i32 noundef %i.by)
  %i.dv = or i32 %i.du, %i.ds
  %.not452 = icmp eq i32 %i.dv, 0
  br i1 %.not452, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.dx = and i32 %i.dw, 33554432
  %.not457 = icmp eq i32 %i.dx, 0
  br i1 %.not457, label %bb.ew, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.120) #33
  br label %bb.ew

bb.i:                                             ; preds = %bb.f
  %.not453 = icmp eq i32 %i.j, 9                  ; 7 uses
  %i.dy = and i32 %i.j, 3
  %i.dz = icmp ne i32 %i.dy, 1
  %i.ea = or i1 %.not453, %i.dz
  %i.eb = select i1 %i.ea, i32 2, i32 1
  %i.ec = load i32, ptr %i.cf, align 4, !tbaa !308 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 2
  br i1 %i.ed, label %.preheader591.lr.ph, label %._crit_edge615

.preheader591.lr.ph:                              ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !310 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ei = load ptr, ptr %i.e, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.em = load ptr, ptr %i.el, align 16
  %i.en = extractelement <2 x float> %i.be, i64 0
  %i.eo = extractelement <2 x float> %i.be, i64 1
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.lr.ph, %._crit_edge
  %i.ep = phi i32 [ %i.ec, %.preheader591.lr.ph ], [ %i.he, %._crit_edge ] ; 2 uses
  %i.eq = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hf, %._crit_edge ] ; 3 uses
  %i.er = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hg, %._crit_edge ] ; 4 uses
  %indvars.iv681 = phi i64 [ 0, %.preheader591.lr.ph ], [ %indvars.iv.next682, %._crit_edge ] ; 5 uses
  %.0418614 = phi i32 [ 1, %.preheader591.lr.ph ], [ %i.hh, %._crit_edge ] ; 3 uses
  %.0419613 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1420.lcssa, %._crit_edge ] ; 3 uses
  %.0421612 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1422.lcssa, %._crit_edge ] ; 3 uses
  %i.es = icmp sgt i32 %i.er, 2
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader591
  %i.et = urem i32 %.0418614, 3
  %i.eu = icmp eq i32 %i.et, 1
  %i.ev = udiv i32 %.0418614, 3
  %i.ew = add nuw nsw i32 %i.ev, 8
  %i.ex = mul nsw i32 %i.ew, %i.dk
  %i.ey = add i32 %i.ex, 8
  %i.ez = load ptr, ptr %i.dt, align 16
  br i1 %i.eu, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.fa = load ptr, ptr %8, align 16
  %i.fb = load ptr, ptr %i.dn, align 16
  %i.fc = load ptr, ptr %i.dq, align 16
  %i.fd = trunc i64 %indvars.iv681 to i32         ; 2 uses
  %i.fe = shl nuw i32 %i.fd, 1
  %i.ff = and i32 %i.fe, 14                       ; 3 uses
  %i.fg = add i32 %i.fd, 600
  %i.fh = srem i32 %i.fg, 6
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fi ; 3 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.fk = trunc i64 %indvars.iv.next684 to i32    ; 2 uses
  %i.fl = shl nuw i32 %i.fk, 1
  %i.fm = and i32 %i.fl, 14                       ; 3 uses
  %i.fn = add i32 %i.fk, 600
  %i.fo = srem i32 %i.fn, 6
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fp ; 3 uses
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv681, 2 ; 2 uses
  %i.fr = trunc i64 %indvars.iv.next684.1 to i32  ; 2 uses
  %i.fs = shl nuw i32 %i.fr, 1
  %i.ft = and i32 %i.fs, 14                       ; 3 uses
  %i.fu = add i32 %i.fr, 600
  %i.fv = srem i32 %i.fu, 6
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fw ; 3 uses
  br label %.lr.ph.split

._crit_edge615.loopexit:                          ; preds = %._crit_edge
  %i.fy = icmp slt i32 %.1422.lcssa, 20
  %i.fz = icmp ne i32 %.1420.lcssa, 0
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %._crit_edge615.loopexit, %bb.i
  %.0421.lcssa = phi i1 [ true, %bb.i ], [ %i.fy, %._crit_edge615.loopexit ]
  %.0419.lcssa = phi i1 [ false, %bb.i ], [ %i.fz, %._crit_edge615.loopexit ]
  %i.ga = icmp eq i32 %6, 0
  %or.cond = and i1 %i.ga, %.0421.lcssa
  br i1 %or.cond, label %bb.ew, label %.preheader589

.preheader589:                                    ; preds = %._crit_edge615
  %i.gb = add nsw i32 %i.dl, -8                   ; 2 uses
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = icmp ugt i32 %i.gb, 8                   ; 3 uses
  %sext566 = shl i64 %i.ce, 32                    ; 6 uses
  %i.ge = ashr exact i64 %sext566, 32             ; 50 uses
  %.not.i = icmp eq i32 %i.dk, 0                  ; 5 uses
  %i.gf = shl nsw i32 %i.dk, 3
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = shl i64 %i.cd, 32                       ; 2 uses
  %sext567 = add i64 %i.gh, 30064771072
  %i.gi = ashr exact i64 %sext567, 32             ; 3 uses
  %i.gj = add i64 %i.cj, 7
  %sext568 = mul i64 %sext566, %i.gj
  %sext569 = shl i64 %i.ck, 32
  %i.gk = ashr exact i64 %sext569, 32             ; 18 uses
  %i.gl = ashr exact i64 %sext568, 30             ; 3 uses
  %i.gm = add nsw i64 %i.gk, -1
  %i.gn = mul nsw i64 %i.gm, %i.ge                ; 3 uses
  %i.go = add nsw i64 %i.gk, -2
  %i.gp = mul nsw i64 %i.go, %i.ge                ; 3 uses
  %i.gq = ashr exact i64 %sext566, 29             ; 3 uses
  %i.gr = add nsw i64 %i.gk, -3
  %i.gs = mul nsw i64 %i.gr, %i.ge                ; 3 uses
  %.idx844 = mul nsw i64 %i.ge, 12                ; 3 uses
  %i.gt = add nsw i64 %i.gk, -4
  %i.gu = mul nsw i64 %i.gt, %i.ge                ; 3 uses
  %i.gv = ashr exact i64 %sext566, 28             ; 3 uses
  %i.gw = add nsw i64 %i.gk, -5
  %i.gx = mul nsw i64 %i.gw, %i.ge                ; 3 uses
  %.idx845 = mul nsw i64 %i.ge, 20                ; 3 uses
  %i.gy = add nsw i64 %i.gk, -6
  %i.gz = mul nsw i64 %i.gy, %i.ge                ; 3 uses
  %.idx846 = mul nsw i64 %i.ge, 24                ; 3 uses
  %i.ha = add nsw i64 %i.gk, -7
  %i.hb = mul nsw i64 %i.ha, %i.ge                ; 3 uses
  %.idx847 = mul nsw i64 %i.ge, 28                ; 3 uses
  %i.hc = add nsw i64 %i.gk, -8
  %i.hd = mul nsw i64 %i.hc, %i.ge                ; 3 uses
  br i1 %i.gd, label %.lr.ph.i, label %.preheader.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre780 = load i32, ptr %i.cf, align 4, !tbaa !308
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %.preheader591
  %i.he = phi i32 [ %i.ep, %.preheader591 ], [ %.pre780, %._crit_edge.loopexit ], [ %i.ep, %.lr.ph ] ; 2 uses
  %i.hf = phi i32 [ %i.eq, %.preheader591 ], [ %i.ri, %._crit_edge.loopexit ], [ %i.eq, %.lr.ph ]
  %i.hg = phi i32 [ %i.er, %.preheader591 ], [ %i.ri, %._crit_edge.loopexit ], [ %i.er, %.lr.ph ]
  %.1422.lcssa = phi i32 [ %.0421612, %.preheader591 ], [ %.2423, %._crit_edge.loopexit ], [ %.0421612, %.lr.ph ] ; 2 uses
  %.1420.lcssa = phi i32 [ %.0419613, %.preheader591 ], [ %.2, %._crit_edge.loopexit ], [ %.0419613, %.lr.ph ] ; 2 uses
  %i.hh = add nuw nsw i32 %.0418614, 1            ; 2 uses
  %i.hi = add nsw i32 %i.he, -1
  %i.hj = icmp slt i32 %i.hh, %i.hi
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1
  br i1 %i.hj, label %.preheader591, label %._crit_edge615.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %i.hk = phi i32 [ %i.eq, %.lr.ph.split.preheader ], [ %i.ri, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.t ] ; 19 uses
  %i.hl = phi i32 [ %i.er, %.lr.ph.split.preheader ], [ %i.ri, %bb.t ]
  %.0417609 = phi i32 [ 1, %.lr.ph.split.preheader ], [ %i.rj, %bb.t ] ; 3 uses
  %.1420608 = phi i32 [ %.0419613, %.lr.ph.split.preheader ], [ %.2, %bb.t ] ; 2 uses
  %.1422607 = phi i32 [ %.0421612, %.lr.ph.split.preheader ], [ %.2423, %bb.t ] ; 2 uses
  %i.hm = urem i32 %.0417609, 3
  %i.hn = udiv i32 %.0417609, 3
  %i.ho = icmp eq i32 %i.hm, %i.eb
  br i1 %i.ho, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.hp = sext i32 %i.hl to i64                   ; 3 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  %i.hr = and i32 %i.hq, 1                        ; 3 uses
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.next674 to i32
  %i.ht = and i32 %i.hs, 1                        ; 3 uses
  %i.hu = trunc i64 %indvars.iv to i32
  %i.hv = and i32 %i.hu, 1                        ; 3 uses
  %i.hw = trunc i64 %indvars.iv to i32
  %i.hx = add i32 %i.hw, 600
  %i.hy = srem i32 %i.hx, 6
  %i.hz = sext i32 %i.hy to i64                   ; 3 uses
  %i.ia = trunc i64 %indvars.iv to i32
  %i.ib = add i32 %i.ia, 601
  %i.ic = srem i32 %i.ib, 6
  %i.id = sext i32 %i.ic to i64                   ; 3 uses
  %i.ie = trunc i64 %indvars.iv to i32
  %i.if = add i32 %i.ie, 602
  %i.ig = srem i32 %i.if, 6
  %i.ih = sext i32 %i.ig to i64                   ; 3 uses
  %i.ii = mul nsw i64 %indvars.iv681, %i.hp
  %i.ij = getelementptr [4 x i8], ptr %7, i64 %i.ii ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %bb.j
  %i.ik = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load float, ptr %i.ik, align 4, !tbaa !11
  %.tr.i.i = or disjoint i32 %i.hr, %i.ff
  %i.im = shl nuw nsw i32 %.tr.i.i, 1
  %i.in = lshr i32 %i.j, %i.im
  %i.io = and i32 %i.in, 3
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ip ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, %i.il
  store float %i.is, ptr %i.iq, align 4, !tbaa !11
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ip ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !11
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, 1.000000e+00
  store float %i.iv, ptr %i.it, align 4, !tbaa !11
  %i.iw = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv.next674
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !11
  %.tr.i.i.1 = or disjoint i32 %i.ht, %i.ff
  %i.iy = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.iz = lshr i32 %i.j, %i.iy
  %i.ja = and i32 %i.iz, 3
  %i.jb = zext nneg i32 %i.ja to i64              ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jb ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !11
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, %i.ix
  store float %i.je, ptr %i.jc, align 4, !tbaa !11
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jb ; 2 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !11
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, 1.000000e+00
  store float %i.jh, ptr %i.jf, align 4, !tbaa !11
  %.tr.i.i.2 = or disjoint i32 %i.hv, %i.ff
  %i.ji = shl nuw nsw i32 %.tr.i.i.2, 1
  %i.jj = lshr i32 %i.j, %i.ji
  %i.jk = and i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  br label %.split602.us

fcol.exit.us.preheader:                           ; preds = %bb.j
  %i.jm = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !11
  %i.jo = getelementptr inbounds i8, ptr %i.fj, i64 %i.hz
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !332
  %i.jq = zext i8 %i.jp to i64                    ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !11
  %i.jt = fadd reassoc nsz arcp contract afn float %i.js, %i.jn
  store float %i.jt, ptr %i.jr, align 4, !tbaa !11
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jq ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !11
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, 1.000000e+00
  store float %i.jw, ptr %i.ju, align 4, !tbaa !11
  %i.jx = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.jy = getelementptr i8, ptr %i.jx, i64 4
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !11
  %i.ka = getelementptr inbounds i8, ptr %i.fj, i64 %i.id
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !332
  %i.kc = zext i8 %i.kb to i64                    ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kc ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !11
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, %i.jz
  store float %i.kf, ptr %i.kd, align 4, !tbaa !11
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kc ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !11
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, 1.000000e+00
  store float %i.ki, ptr %i.kg, align 4, !tbaa !11
  %i.kj = getelementptr inbounds i8, ptr %i.fj, i64 %i.ih
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !332
  %i.kl = zext i8 %i.kk to i64
  br label %.split602.us

.split602.us:                                     ; preds = %fcol.exit.preheader, %fcol.exit.us.preheader
  %.sink864 = phi i64 [ %i.jl, %fcol.exit.preheader ], [ %i.kl, %fcol.exit.us.preheader ] ; 2 uses
  %.pn = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv
  %.sink862.in = getelementptr i8, ptr %.pn, i64 8
  %.sink862 = load float, ptr %.sink862.in, align 4, !tbaa !11
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !11
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %.sink862
  store float %i.ko, ptr %i.km, align 4, !tbaa !11
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !11
  %i.kr = fadd reassoc nsz arcp contract afn float %i.kq, 1.000000e+00
end_hunk_3
begin_hunk_4_@_process_segmentation:bb.a
  %i.ago = select i1 %i.agj, float %i.agm, float %i.agh ; 2 uses
  %i.agp = getelementptr i8, ptr %i.afw, i64 4
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !11 ; 2 uses
  %i.agr = fcmp reassoc nsz arcp contract afn olt float %i.agq, %i.zc ; 2 uses
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agq, 4.000000e+00
  %i.agt = fadd reassoc nsz arcp contract afn float %i.agn, %i.ags
  %i.agu = fadd reassoc nsz arcp contract afn float %i.ago, 4.000000e+00
  %i.agv = select i1 %i.agr, float %i.agt, float %i.agn ; 2 uses
  %i.agw = select i1 %i.agr, float %i.agu, float %i.ago ; 2 uses
  %i.agx = getelementptr i8, ptr %i.afw, i64 8
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !11 ; 2 uses
  %i.agz = fcmp reassoc nsz arcp contract afn olt float %i.agy, %i.zc ; 2 uses
  %i.aha = fadd reassoc nsz arcp contract afn float %i.agv, %i.agy
  %i.ahb = fadd reassoc nsz arcp contract afn float %i.agw, 1.000000e+00
  %i.ahc = select i1 %i.agz, float %i.aha, float %i.agv ; 2 uses
  %i.ahd = select i1 %i.agz, float %i.ahb, float %i.agw ; 2 uses
  %i.ahe = getelementptr [4 x i8], ptr %i.afv, i64 %i.abl ; 5 uses
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 -8
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !11 ; 2 uses
  %i.ahh = fcmp reassoc nsz arcp contract afn olt float %i.ahg, %i.zc ; 2 uses
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ahg, 4.000000e+00
  %i.ahj = fadd reassoc nsz arcp contract afn float %i.ahc, %i.ahi
  %i.ahk = fadd reassoc nsz arcp contract afn float %i.ahd, 4.000000e+00
  %i.ahl = select i1 %i.ahh, float %i.ahj, float %i.ahc ; 2 uses
  %i.ahm = select i1 %i.ahh, float %i.ahk, float %i.ahd ; 2 uses
  %i.ahn = getelementptr i8, ptr %i.ahe, i64 -4
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !11 ; 2 uses
  %i.ahp = fcmp reassoc nsz arcp contract afn olt float %i.aho, %i.zc ; 2 uses
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.aho, 1.600000e+01
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.ahl, %i.ahq
  %i.ahs = fadd reassoc nsz arcp contract afn float %i.ahm, 1.600000e+01
  %i.aht = select i1 %i.ahp, float %i.ahr, float %i.ahl ; 2 uses
  %i.ahu = select i1 %i.ahp, float %i.ahs, float %i.ahm ; 2 uses
  %i.ahv = load float, ptr %i.ahe, align 4, !tbaa !11 ; 2 uses
  %i.ahw = fcmp reassoc nsz arcp contract afn olt float %i.ahv, %i.zc ; 2 uses
  %i.ahx = fmul reassoc nsz arcp contract afn float %i.ahv, 2.400000e+01
  %i.ahy = fadd reassoc nsz arcp contract afn float %i.aht, %i.ahx
  %i.ahz = fadd reassoc nsz arcp contract afn float %i.ahu, 2.400000e+01
  %i.aia = select i1 %i.ahw, float %i.ahy, float %i.aht ; 2 uses
  %i.aib = select i1 %i.ahw, float %i.ahz, float %i.ahu ; 2 uses
  %i.aic = getelementptr i8, ptr %i.ahe, i64 4
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !11 ; 2 uses
  %i.aie = fcmp reassoc nsz arcp contract afn olt float %i.aid, %i.zc ; 2 uses
  %i.aif = fmul reassoc nsz arcp contract afn float %i.aid, 1.600000e+01
  %i.aig = fadd reassoc nsz arcp contract afn float %i.aia, %i.aif
  %i.aih = fadd reassoc nsz arcp contract afn float %i.aib, 1.600000e+01
  %i.aii = select i1 %i.aie, float %i.aig, float %i.aia ; 2 uses
  %i.aij = select i1 %i.aie, float %i.aih, float %i.aib ; 2 uses
  %i.aik = getelementptr i8, ptr %i.ahe, i64 8
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !11 ; 2 uses
  %i.aim = fcmp reassoc nsz arcp contract afn olt float %i.ail, %i.zc ; 2 uses
  %i.ain = fmul reassoc nsz arcp contract afn float %i.ail, 4.000000e+00
  %i.aio = fadd reassoc nsz arcp contract afn float %i.aii, %i.ain
  %i.aip = fadd reassoc nsz arcp contract afn float %i.aij, 4.000000e+00
  %i.aiq = select i1 %i.aim, float %i.aio, float %i.aii ; 2 uses
  %i.air = select i1 %i.aim, float %i.aip, float %i.aij ; 2 uses
  %i.ais = getelementptr i8, ptr %i.afv, i64 -8
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !11 ; 2 uses
  %i.aiu = fcmp reassoc nsz arcp contract afn olt float %i.ait, %i.zc ; 2 uses
  %i.aiv = fmul reassoc nsz arcp contract afn float %i.ait, 6.000000e+00
  %i.aiw = fadd reassoc nsz arcp contract afn float %i.aiq, %i.aiv
  %i.aix = fadd reassoc nsz arcp contract afn float %i.air, 6.000000e+00
  %i.aiy = select i1 %i.aiu, float %i.aiw, float %i.aiq ; 2 uses
  %i.aiz = select i1 %i.aiu, float %i.aix, float %i.air ; 2 uses
  %i.aja = getelementptr i8, ptr %i.afv, i64 -4
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !11 ; 2 uses
  %i.ajc = fcmp reassoc nsz arcp contract afn olt float %i.ajb, %i.zc ; 2 uses
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.ajb, 2.400000e+01
  %i.aje = fadd reassoc nsz arcp contract afn float %i.aiy, %i.ajd
  %i.ajf = fadd reassoc nsz arcp contract afn float %i.aiz, 2.400000e+01
  %i.ajg = select i1 %i.ajc, float %i.aje, float %i.aiy ; 2 uses
  %i.ajh = select i1 %i.ajc, float %i.ajf, float %i.aiz ; 2 uses
  %i.aji = load float, ptr %i.afv, align 4, !tbaa !11 ; 2 uses
  %i.ajj = fcmp reassoc nsz arcp contract afn olt float %i.aji, %i.zc ; 2 uses
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.aji, 3.600000e+01
  %i.ajl = fadd reassoc nsz arcp contract afn float %i.ajg, %i.ajk
  %i.ajm = fadd reassoc nsz arcp contract afn float %i.ajh, 3.600000e+01
  %i.ajn = select i1 %i.ajj, float %i.ajl, float %i.ajg ; 2 uses
  %i.ajo = select i1 %i.ajj, float %i.ajm, float %i.ajh ; 2 uses
  %i.ajp = getelementptr i8, ptr %i.afv, i64 4
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !11 ; 2 uses
  %i.ajr = fcmp reassoc nsz arcp contract afn olt float %i.ajq, %i.zc ; 2 uses
  %i.ajs = fmul reassoc nsz arcp contract afn float %i.ajq, 2.400000e+01
  %i.ajt = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajs
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajo, 2.400000e+01
  %i.ajv = select i1 %i.ajr, float %i.ajt, float %i.ajn ; 2 uses
  %i.ajw = select i1 %i.ajr, float %i.aju, float %i.ajo ; 2 uses
  %i.ajx = getelementptr i8, ptr %i.afv, i64 8
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !11 ; 2 uses
  %i.ajz = fcmp reassoc nsz arcp contract afn olt float %i.ajy, %i.zc ; 2 uses
  %i.aka = fmul reassoc nsz arcp contract afn float %i.ajy, 6.000000e+00
  %i.akb = fadd reassoc nsz arcp contract afn float %i.ajv, %i.aka
  %i.akc = fadd reassoc nsz arcp contract afn float %i.ajw, 6.000000e+00
  %i.akd = select i1 %i.ajz, float %i.akb, float %i.ajv ; 2 uses
  %i.ake = select i1 %i.ajz, float %i.akc, float %i.ajw ; 2 uses
  %i.akf = getelementptr [4 x i8], ptr %i.afv, i64 %i.abj ; 5 uses
  %i.akg = getelementptr i8, ptr %i.akf, i64 -8
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !11 ; 2 uses
  %i.aki = fcmp reassoc nsz arcp contract afn olt float %i.akh, %i.zc ; 2 uses
  %i.akj = fmul reassoc nsz arcp contract afn float %i.akh, 4.000000e+00
  %i.akk = fadd reassoc nsz arcp contract afn float %i.akd, %i.akj
  %i.akl = fadd reassoc nsz arcp contract afn float %i.ake, 4.000000e+00
  %i.akm = select i1 %i.aki, float %i.akk, float %i.akd ; 2 uses
  %i.akn = select i1 %i.aki, float %i.akl, float %i.ake ; 2 uses
  %i.ako = getelementptr i8, ptr %i.akf, i64 -4
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !11 ; 2 uses
  %i.akq = fcmp reassoc nsz arcp contract afn olt float %i.akp, %i.zc ; 2 uses
  %i.akr = fmul reassoc nsz arcp contract afn float %i.akp, 1.600000e+01
  %i.aks = fadd reassoc nsz arcp contract afn float %i.akm, %i.akr
  %i.akt = fadd reassoc nsz arcp contract afn float %i.akn, 1.600000e+01
  %i.aku = select i1 %i.akq, float %i.aks, float %i.akm ; 2 uses
  %i.akv = select i1 %i.akq, float %i.akt, float %i.akn ; 2 uses
  %i.akw = load float, ptr %i.akf, align 4, !tbaa !11 ; 2 uses
  %i.akx = fcmp reassoc nsz arcp contract afn olt float %i.akw, %i.zc ; 2 uses
  %i.aky = fmul reassoc nsz arcp contract afn float %i.akw, 2.400000e+01
  %i.akz = fadd reassoc nsz arcp contract afn float %i.aku, %i.aky
  %i.ala = fadd reassoc nsz arcp contract afn float %i.akv, 2.400000e+01
  %i.alb = select i1 %i.akx, float %i.akz, float %i.aku ; 2 uses
  %i.alc = select i1 %i.akx, float %i.ala, float %i.akv ; 2 uses
  %i.ald = getelementptr i8, ptr %i.akf, i64 4
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !11 ; 2 uses
  %i.alf = fcmp reassoc nsz arcp contract afn olt float %i.ale, %i.zc ; 2 uses
  %i.alg = fmul reassoc nsz arcp contract afn float %i.ale, 1.600000e+01
  %i.alh = fadd reassoc nsz arcp contract afn float %i.alb, %i.alg
  %i.ali = fadd reassoc nsz arcp contract afn float %i.alc, 1.600000e+01
  %i.alj = select i1 %i.alf, float %i.alh, float %i.alb ; 2 uses
  %i.alk = select i1 %i.alf, float %i.ali, float %i.alc ; 2 uses
  %i.all = getelementptr i8, ptr %i.akf, i64 8
  %i.alm = load float, ptr %i.all, align 4, !tbaa !11 ; 2 uses
  %i.aln = fcmp reassoc nsz arcp contract afn olt float %i.alm, %i.zc ; 2 uses
  %i.alo = fmul reassoc nsz arcp contract afn float %i.alm, 4.000000e+00
  %i.alp = fadd reassoc nsz arcp contract afn float %i.alj, %i.alo
  %i.alq = fadd reassoc nsz arcp contract afn float %i.alk, 4.000000e+00
  %i.alr = select i1 %i.aln, float %i.alp, float %i.alj ; 2 uses
  %i.als = select i1 %i.aln, float %i.alq, float %i.alk ; 2 uses
  %.idx203.i = shl nsw i64 %i.abj, 3
  %i.alt = getelementptr i8, ptr %i.afv, i64 %.idx203.i ; 5 uses
  %i.alu = getelementptr i8, ptr %i.alt, i64 -8
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !11 ; 2 uses
  %i.alw = fcmp reassoc nsz arcp contract afn olt float %i.alv, %i.zc ; 2 uses
  %i.alx = fadd reassoc nsz arcp contract afn float %i.alr, %i.alv
  %i.aly = fadd reassoc nsz arcp contract afn float %i.als, 1.000000e+00
  %i.alz = select i1 %i.alw, float %i.alx, float %i.alr ; 2 uses
  %i.ama = select i1 %i.alw, float %i.aly, float %i.als ; 2 uses
  %i.amb = getelementptr i8, ptr %i.alt, i64 -4
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !11 ; 2 uses
  %i.amd = fcmp reassoc nsz arcp contract afn olt float %i.amc, %i.zc ; 2 uses
  %i.ame = fmul reassoc nsz arcp contract afn float %i.amc, 4.000000e+00
  %i.amf = fadd reassoc nsz arcp contract afn float %i.alz, %i.ame
  %i.amg = fadd reassoc nsz arcp contract afn float %i.ama, 4.000000e+00
  %i.amh = select i1 %i.amd, float %i.amf, float %i.alz ; 2 uses
  %i.ami = select i1 %i.amd, float %i.amg, float %i.ama ; 2 uses
  %i.amj = load float, ptr %i.alt, align 4, !tbaa !11 ; 2 uses
  %i.amk = fcmp reassoc nsz arcp contract afn olt float %i.amj, %i.zc ; 2 uses
  %i.aml = fmul reassoc nsz arcp contract afn float %i.amj, 6.000000e+00
  %i.amm = fadd reassoc nsz arcp contract afn float %i.amh, %i.aml
  %i.amn = fadd reassoc nsz arcp contract afn float %i.ami, 6.000000e+00
  %i.amo = select i1 %i.amk, float %i.amm, float %i.amh ; 2 uses
  %i.amp = select i1 %i.amk, float %i.amn, float %i.ami ; 2 uses
  %i.amq = getelementptr i8, ptr %i.alt, i64 4
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !11 ; 2 uses
  %i.ams = fcmp reassoc nsz arcp contract afn olt float %i.amr, %i.zc ; 2 uses
  %i.amt = fmul reassoc nsz arcp contract afn float %i.amr, 4.000000e+00
  %i.amu = fadd reassoc nsz arcp contract afn float %i.amo, %i.amt
  %i.amv = fadd reassoc nsz arcp contract afn float %i.amp, 4.000000e+00
  %i.amw = select i1 %i.ams, float %i.amu, float %i.amo ; 2 uses
  %i.amx = select i1 %i.ams, float %i.amv, float %i.amp ; 2 uses
  %i.amy = getelementptr i8, ptr %i.alt, i64 8
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !11 ; 2 uses
  %i.ana = fcmp reassoc nsz arcp contract afn olt float %i.amz, %i.zc ; 2 uses
  %i.anb = fadd reassoc nsz arcp contract afn float %i.amw, %i.amz
  %i.anc = fadd reassoc nsz arcp contract afn float %i.amx, 1.000000e+00
  %i.and = select i1 %i.ana, float %i.anb, float %i.amw
  %i.ane = select i1 %i.ana, float %i.anc, float %i.amx
  %i.anf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ane, float 1.000000e+00)
  %i.ang = fdiv reassoc nsz arcp contract afn float %i.and, %i.anf ; 2 uses
  %i.anh = fcmp reassoc nsz arcp contract afn ogt float %i.ang, %i.zv
  br i1 %i.anh, label %bb.ae, label %._crit_edge143.thread.i

bb.ae:                                            ; preds = %.preheader133.i
  %i.ani = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.zc, float %i.ang)
  store float %i.ani, ptr %i.zx, align 4, !tbaa !11
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %.3113.us.i
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !11
  store float %i.ank, ptr %i.zy, align 4, !tbaa !11
  br label %._crit_edge143.thread.i

._crit_edge143.thread.i:                          ; preds = %bb.ae, %.preheader133.i, %._crit_edge143.i, %.lr.ph142.i, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next172.i, %wide.trip.count.i
  br i1 %exitcond174.not.i, label %_calc_plane_candidates.exit, label %bb.y

_calc_plane_candidates.exit:                      ; preds = %._crit_edge143.thread.i, %bb.x
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next709, 3
  br i1 %exitcond711.not, label %.preheader585, label %bb.x

.preheader584:                                    ; preds = %.preheader584.preheader, %._crit_edge624
  %indvars.iv716 = phi i64 [ 1, %.preheader584.preheader ], [ %indvars.iv.next717, %._crit_edge624 ] ; 5 uses
  %i.anl = mul nuw nsw i64 %indvars.iv716, %i.yu
  %indvars.iv716.tr = trunc nuw i64 %indvars.iv716 to i32
  %i.anm = shl nuw i32 %indvars.iv716.tr, 1
  %i.ann = and i32 %i.anm, 14
  %i.ano = trunc i64 %indvars.iv716 to i32
  %i.anp = add i32 %i.ano, 600
  %i.anq = urem i32 %i.anp, 6
  %i.anr = zext nneg i32 %i.anq to i64
  %i.ans = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.anr
  %i.ant = trunc nuw nsw i64 %indvars.iv716 to i32 ; 2 uses
  %i.anu = udiv i32 %i.ant, 3
  %i.anv = add nuw nsw i32 %i.anu, 8
  %i.anw = mul nsw i32 %i.anv, %i.dk
  %i.anx = add i32 %i.anw, 8
  br label %bb.af

._crit_edge626.split:                             ; preds = %._crit_edge624, %.preheader584.lr.ph, %.preheader585
  %i.any = load ptr, ptr %i.cx, align 16, !tbaa !386 ; 7 uses
  %i.anz = load ptr, ptr %i.cz, align 8, !tbaa !386 ; 3 uses
  %i.aoa = load ptr, ptr %i.db, align 16, !tbaa !386 ; 52 uses
  %i.aob = icmp ne i32 %i.bh, 0
  %or.cond3 = select i1 %i.aob, i1 %.0419.lcssa, i1 false
  %i.aoc = fcmp reassoc nsz arcp contract afn ogt float %i.bj, 0.000000e+00
  %spec.select460 = select i1 %or.cond3, i1 %i.aoc, i1 false ; 2 uses
  %i.aod = icmp ne i32 %6, 0
  %i.aoe = icmp ne i32 %i.n, 0
  %i.aof = select i1 %i.aod, i1 %i.aoe, i1 false  ; 2 uses
  %or.cond5 = select i1 %spec.select460, i1 true, i1 %i.aof
  br i1 %or.cond5, label %bb.al, label %bb.ar

._crit_edge624:                                   ; preds = %_get_segment_id.exit.thread
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %exitcond720.not = icmp eq i64 %indvars.iv.next717, %wide.trip.count719
  br i1 %exitcond720.not, label %._crit_edge626.split, label %.preheader584

bb.af:                                            ; preds = %.preheader584, %_get_segment_id.exit.thread
  %indvars.iv712 = phi i64 [ 1, %.preheader584 ], [ %indvars.iv.next713, %_get_segment_id.exit.thread ] ; 4 uses
  %i.aog = add nuw nsw i64 %i.anl, %indvars.iv712 ; 2 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aog
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !11
  %i.aoj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aoi, float 0.000000e+00) ; 2 uses
  %i.aok = trunc i64 %indvars.iv712 to i32        ; 2 uses
  br i1 %.not453, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aol = add i32 %i.aok, 600
  %i.aom = urem i32 %i.aol, 6
  %i.aon = zext nneg i32 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ans, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !332
  %i.aoq = zext i8 %i.aop to i32
  br label %fcol.exit467

bb.ah:                                            ; preds = %bb.af
  %i.aor = and i32 %i.aok, 1
  %.tr.i.i465 = or disjoint i32 %i.aor, %i.ann
  %i.aos = shl nuw nsw i32 %.tr.i.i465, 1
  %i.aot = lshr i32 %i.j, %i.aos
  %i.aou = and i32 %i.aot, 3
  br label %fcol.exit467

fcol.exit467:                                     ; preds = %bb.ag, %bb.ah
  %.0.i466 = phi i32 [ %i.aoq, %bb.ag ], [ %i.aou, %bb.ah ]
  %i.aov = zext nneg i32 %.0.i466 to i64          ; 3 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aov
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !11
  %i.aoy = fcmp reassoc nsz arcp contract afn ogt float %i.aoj, %i.aox
  br i1 %i.aoy, label %bb.ai, label %_get_segment_id.exit.thread

bb.ai:                                            ; preds = %fcol.exit467
  %i.aoz = trunc nuw nsw i64 %indvars.iv712 to i32 ; 2 uses
  %i.apa = udiv i32 %i.aoz, 3
  %i.apb = add i32 %i.anx, %i.apa                 ; 2 uses
  %i.apc = sext i32 %i.apb to i64                 ; 2 uses
  %i.apd = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.aov ; 7 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 84
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !23
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 88
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !27
  %i.api = getelementptr inbounds nuw i8, ptr %i.apd, i64 76
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !28
  %i.apk = sub nsw i32 %i.aph, %i.apj
  %i.apl = mul nsw i32 %i.apk, %i.apf
  %.not.i468 = icmp ult i32 %i.apb, %i.apl
  br i1 %.not.i468, label %bb.aj, label %_get_segment_id.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.apm = load ptr, ptr %i.apd, align 16, !tbaa !30
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.apc
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !22
  %i.app = and i32 %i.apo, 262143                 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apd, i64 72
  %i.apr = load i32, ptr %i.apq, align 8, !tbaa !47
  %i.aps = icmp ult i32 %i.app, %i.apr
  %i.apt = icmp samesign ugt i32 %i.app, 1
  %or.cond.i470 = select i1 %i.aps, i1 %i.apt, i1 false
  br i1 %or.cond.i470, label %_get_segment_id.exit, label %_get_segment_id.exit.thread

_get_segment_id.exit:                             ; preds = %bb.aj
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !37
  %i.apw = zext nneg i32 %i.app to i64            ; 2 uses
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.apw
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !11 ; 2 uses
  %i.apz = fcmp reassoc nsz arcp contract afn une float %i.apy, 0.000000e+00
  br i1 %i.apz, label %bb.ak, label %_get_segment_id.exit.thread

bb.ak:                                            ; preds = %_get_segment_id.exit
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apd, i64 64
  %i.aqb = load ptr, ptr %i.aqa, align 16, !tbaa !36
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.aqb, i64 %i.apw
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !11
  %i.aqe = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.ant, i32 noundef %i.aoz, ptr noundef nonnull %3, ptr noundef %i.c, i32 noundef 0)
  %i.aqf = fsub reassoc nsz arcp contract afn float %i.apy, %i.aqd
  %i.aqg = fadd reassoc nsz arcp contract afn float %i.aqf, %i.aqe ; 3 uses
  %i.aqh = fmul reassoc nsz arcp contract afn float %i.aqg, %i.aqg
  %i.aqi = fmul reassoc nsz arcp contract afn float %i.aqh, %i.aqg
  %i.aqj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aoj, float %i.aqi) ; 2 uses
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aov
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !386
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %i.apc
  store float %i.aqj, ptr %i.aqm, align 4, !tbaa !11
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.aog
  store float %i.aqj, ptr %i.aqn, align 4, !tbaa !11
  br label %_get_segment_id.exit.thread

_get_segment_id.exit.thread:                      ; preds = %bb.ai, %bb.aj, %bb.ak, %_get_segment_id.exit, %fcol.exit467
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %exitcond715.not = icmp eq i64 %indvars.iv.next713, %wide.trip.count
  br i1 %exitcond715.not, label %._crit_edge624, label %bb.af

bb.al:                                            ; preds = %._crit_edge626.split
  call void @dt_segments_combine(ptr noundef nonnull %i.dt, i32 noundef %i.bm)
  %i.aqo = fmul reassoc nsz arcp contract afn float %i.bj, 5.000000e+00
  %i.aqp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aqo, float 1.000000e+00)
  tail call void @dt_iop_image_fill(ptr noundef %i.any, float noundef %i.aqp, i64 noundef %i.ce, i64 noundef %i.ck, i64 noundef 1) #33
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dg, float noundef 0.000000e+00, i64 noundef %i.ce, i64 noundef %i.ck, i64 noundef 1) #33
  %i.aqq = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !28 ; 9 uses
  %i.aqs = sext i32 %i.aqr to i64                 ; 9 uses
  %i.aqt = sub i64 %i.ck, %i.aqs                  ; 2 uses
  %i.aqu = icmp ugt i64 %i.aqt, %i.aqs
  br i1 %i.aqu, label %.preheader583.lr.ph, label %._crit_edge635.split

.preheader583.lr.ph:                              ; preds = %bb.al
  %i.aqv = sub i64 %i.ce, %i.aqs                  ; 2 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.x, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul627 = fmul reassoc nsz arcp contract afn float %i.t, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul629 = fmul reassoc nsz arcp contract afn float %i.v, f0x3EAAAAAB ; 2 uses
  %i.aqw = icmp ugt i64 %i.aqv, %i.aqs
  %i.aqx = load ptr, ptr %i.dt, align 16          ; 2 uses
  br i1 %i.aqw, label %.preheader583.preheader, label %._crit_edge635.split

.preheader583.preheader:                          ; preds = %.preheader583.lr.ph
  %i.aqy = mul <4 x i64> %i.dd, <i64 28, i64 24, i64 20, i64 12>
  %i.aqz = shl i64 %i.cm, 2
  %i.ara = shl nsw i64 %i.aqs, 1
  %i.arb = add i64 %i.cd, 16
  %i.arc = sub i64 %i.arb, %i.ara                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.arc, 8
  %i.ard = shl i64 %i.cm, 4
  %diff.check = icmp ugt i64 %i.ard, -32
  %i.are = add <4 x i64> %i.aqy, splat (i64 -1)
  %i.arf = icmp ult <4 x i64> %i.are, splat (i64 31)
  %i.arg = add i64 %.idx, -1
  %diff.check949 = icmp ult i64 %i.arg, 31
  %i.arh = add i64 %i.aqz, -1
  %diff.check951 = icmp ult i64 %i.arh, 31
  %i.ari = bitcast <4 x i1> %i.arf to i4
  %i.arj = icmp ne i4 %i.ari, 0
  %op.rdx = or i1 %i.arj, %diff.check949
  %op.rdx1106 = or i1 %diff.check951, %diff.check
  %op.rdx1107 = or i1 %op.rdx, %op.rdx1106
  %n.vec = and i64 %i.arc, -8                     ; 3 uses
  %i.ark = add i64 %n.vec, %i.aqs
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul627, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %factor.op.fmul629, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.arc, %n.vec
  br label %.preheader583

.preheader583:                                    ; preds = %.preheader583.preheader, %._crit_edge633
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %._crit_edge633 ], [ %i.aqs, %.preheader583.preheader ] ; 2 uses
  %i.arl = mul i64 %indvars.iv724, %i.ce          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader583
  %invariant.op1168 = add i64 %i.aqs, %i.arl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass1169 = add i64 %index, %invariant.op1168 ; 6 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.reass1169
  %wide.load = load <8 x float>, ptr %i.arm, align 4, !tbaa !11
  %i.arn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.reass1169
  %wide.load957 = load <8 x float>, ptr %i.aro, align 4, !tbaa !11
  %i.arp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load957, %broadcast.splat954
end_hunk_4
begin_hunk_5_@_process_segmentation:bb.a

_segment_gradients.exit:                          ; preds = %._crit_edge164.i, %.loopexit.i, %_segment_maxdistance.exit.thread, %_segment_maxdistance.exit
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %._crit_edge639, label %bb.bc

bb.dz:                                            ; preds = %.lr.ph641, %_add_poisson_noise.exit
  %indvars.iv734 = phi i64 [ 2, %.lr.ph641 ], [ %indvars.iv.next735, %_add_poisson_noise.exit ] ; 7 uses
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv734
  %i.bzn = load float, ptr %i.bzm, align 4, !tbaa !11
  %i.bzo = fcmp reassoc nsz arcp contract afn ogt float %i.bzn, 3.000000e+00
  br i1 %i.bzo, label %bb.ea, label %_add_poisson_noise.exit

bb.ea:                                            ; preds = %bb.dz
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv734
  %i.bzq = load i32, ptr %i.bzp, align 4, !tbaa !22
  %..i525 = tail call i32 @llvm.smax.i32(i32 %i.bzq, i32 %i.bdj) ; 2 uses
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.bdl, i64 %indvars.iv734
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !22
  %i.bzt = add i32 %i.bzs, 1
  %i.bzu = tail call i32 @llvm.smin.i32(i32 %i.bzt, i32 %i.bdo) ; 2 uses
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %indvars.iv734
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !22
  %i.bzx = tail call i32 @llvm.smax.i32(i32 %i.bzw, i32 %i.bdj) ; 2 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bds, i64 %indvars.iv734
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !22
  %i.caa = add i32 %i.bzz, 1
  %i.cab = tail call i32 @llvm.smin.i32(i32 %i.caa, i32 %i.bdv) ; 2 uses
  %i.cac = sext i32 %..i525 to i64                ; 3 uses
  %i.cad = icmp slt i32 %i.bzx, %i.cab
  %i.cae = icmp slt i32 %..i525, %i.bzu
  %or.cond656 = select i1 %i.cad, i1 %i.cae, i1 false
  br i1 %or.cond656, label %.preheader.i529.preheader, label %_add_poisson_noise.exit

.preheader.i529.preheader:                        ; preds = %bb.ea
  %i.caf = sext i32 %i.bzx to i64                 ; 3 uses
  %i.cag = lshr i64 %i.caf, 33
  %i.cah = xor i64 %i.cag, %i.caf
  %i.cai = mul i64 %i.cah, 7109453100751455733    ; 2 uses
  %i.caj = lshr i64 %i.cai, 28
  %i.cak = xor i64 %i.caj, %i.cai
  %i.cal = mul i64 %i.cak, -3808689974395783757
  %i.cam = lshr i64 %i.cal, 32
  %i.can = trunc nuw i64 %i.cam to i32            ; 2 uses
  %i.cao = xor i32 %i.can, 635086878              ; 2 uses
  %i.cap = lshr i64 %i.cac, 33
  %i.caq = xor i64 %i.cap, %i.cac
  %i.car = mul i64 %i.caq, 7109453100751455733    ; 2 uses
  %i.cas = lshr i64 %i.car, 28
  %i.cat = xor i64 %i.cas, %i.car
  %i.cau = mul i64 %i.cat, -3808689974395783757
  %i.cav = lshr i64 %i.cau, 32
  %i.caw = trunc nuw i64 %i.cav to i32            ; 3 uses
  %i.cax = shl i32 %i.caw, 9
  %i.cay = xor i32 %i.cao, %i.cax
  %i.caz = xor i32 %i.caw, -1171427716            ; 3 uses
  %i.cba = xor i32 %i.caz, %i.can                 ; 2 uses
  %i.cbb = xor i32 %i.cay, %i.cba                 ; 2 uses
  %i.cbc = xor i32 %i.cao, %i.caw                 ; 3 uses
  %i.cbd = shl i32 %i.cbc, 9
  %i.cbe = xor i32 %i.cbb, %i.cbd
  %i.cbf = tail call noundef i32 @llvm.fshl.i32(i32 %i.caz, i32 %i.caz, i32 11)
  %i.cbg = xor i32 %i.cbc, %i.cbf                 ; 3 uses
  %i.cbh = xor i32 %i.cbg, %i.cba                 ; 2 uses
  %i.cbi = xor i32 %i.cbe, %i.cbh                 ; 2 uses
  %i.cbj = xor i32 %i.cbb, %i.cbc                 ; 3 uses
  %i.cbk = xor i32 %i.cbi, %i.cbj                 ; 3 uses
  %i.cbl = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbg, i32 %i.cbg, i32 11)
  %i.cbm = xor i32 %i.cbj, %i.cbl                 ; 3 uses
  %i.cbn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbm, i32 %i.cbm, i32 11)
  %i.cbo = xor i32 %i.cbk, %i.cbn                 ; 3 uses
  %i.cbp = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbo, i32 %i.cbo, i32 11)
  %i.cbq = shl i32 %i.cbj, 9
  %i.cbr = xor i32 %i.cbi, %i.cbq
  %i.cbs = xor i32 %i.cbm, %i.cbh                 ; 2 uses
  %i.cbt = xor i32 %i.cbr, %i.cbs                 ; 2 uses
  %i.cbu = shl i32 %i.cbk, 9
  %i.cbv = xor i32 %i.cbt, %i.cbu
  %i.cbw = xor i32 %i.cbo, %i.cbs
  %i.cbx = xor i32 %i.cbt, %i.cbk
  br label %.preheader.i529

.preheader.i529:                                  ; preds = %.preheader.i529.preheader, %._crit_edge.i534
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i534 ], [ %i.caf, %.preheader.i529.preheader ] ; 2 uses
  %.sroa.0.087.i = phi i32 [ %.sroa.0.2.i, %._crit_edge.i534 ], [ %i.cbw, %.preheader.i529.preheader ]
  %.sroa.13.086.i = phi i32 [ %.sroa.13.2.i, %._crit_edge.i534 ], [ %i.cbx, %.preheader.i529.preheader ]
  %.sroa.24.085.i = phi i32 [ %.sroa.24.2.i, %._crit_edge.i534 ], [ %i.cbv, %.preheader.i529.preheader ]
  %.sroa.35.084.i = phi i32 [ %.sroa.35.2.i, %._crit_edge.i534 ], [ %i.cbp, %.preheader.i529.preheader ]
  %i.cby = mul nsw i64 %indvars.iv91.i, %i.bdw
  br label %bb.eb

._crit_edge.i534:                                 ; preds = %bb.ec
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next92.i to i32
  %exitcond94.not.i = icmp eq i32 %i.cab, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %_add_poisson_noise.exit, label %.preheader.i529

bb.eb:                                            ; preds = %bb.ec, %.preheader.i529
  %indvars.iv.i530 = phi i64 [ %i.cac, %.preheader.i529 ], [ %indvars.iv.next.i531, %bb.ec ] ; 3 uses
  %.sroa.0.179.i = phi i32 [ %.sroa.0.087.i, %.preheader.i529 ], [ %.sroa.0.2.i, %bb.ec ] ; 4 uses
  %.sroa.13.178.i = phi i32 [ %.sroa.13.086.i, %.preheader.i529 ], [ %.sroa.13.2.i, %bb.ec ] ; 4 uses
  %.sroa.24.177.i = phi i32 [ %.sroa.24.085.i, %.preheader.i529 ], [ %.sroa.24.2.i, %bb.ec ] ; 2 uses
  %.sroa.35.176.i = phi i32 [ %.sroa.35.084.i, %.preheader.i529 ], [ %.sroa.35.2.i, %bb.ec ] ; 3 uses
  %i.cbz = add nsw i64 %indvars.iv.i530, %i.cby   ; 2 uses
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.bdy, i64 %i.cbz
  %i.ccb = load i32, ptr %i.cca, align 4, !tbaa !22
  %i.ccc = zext i32 %i.ccb to i64
  %i.ccd = icmp eq i64 %indvars.iv734, %i.ccc
  br i1 %i.ccd, label %poisson_noise.exit.i, label %bb.ec

poisson_noise.exit.i:                             ; preds = %bb.eb
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.cbz ; 2 uses
  %i.ccf = load float, ptr %i.cce, align 4, !tbaa !11 ; 2 uses
  %i.ccg = fmul reassoc nsz arcp contract afn float %i.ccf, %i.bdd
  %i.cch = shl i32 %.sroa.13.178.i, 9
  %i.cci = xor i32 %.sroa.24.177.i, %.sroa.0.179.i ; 2 uses
  %i.ccj = xor i32 %.sroa.35.176.i, %.sroa.13.178.i ; 3 uses
  %i.cck = xor i32 %i.cci, %.sroa.13.178.i        ; 3 uses
  %i.ccl = xor i32 %i.ccj, %.sroa.0.179.i         ; 3 uses
  %i.ccm = xor i32 %i.cci, %i.cch
  %i.ccn = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccj, i32 %i.ccj, i32 11) ; 2 uses
  %i.cco = add i32 %i.ccn, %i.ccl
  %i.ccp = shl i32 %i.cck, 9
  %i.ccq = xor i32 %i.ccm, %i.ccl                 ; 2 uses
  %i.ccr = xor i32 %i.ccn, %i.cck                 ; 3 uses
  %i.ccs = xor i32 %i.ccq, %i.cck
  %i.cct = xor i32 %i.ccr, %i.ccl
  %i.ccu = xor i32 %i.ccq, %i.ccp
  %i.ccv = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccr, i32 %i.ccr, i32 11)
  %i.ccw = lshr i32 %i.cco, 8
  %i.ccx = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccw to float
  %i.ccy = and i64 %indvars.iv.i530, 1
  %.not.i.i = icmp eq i64 %i.ccy, 0
  %i.ccz = fmul reassoc nnan nsz arcp contract afn float %i.ccx, f0x34C90FDB
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ccz) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.cda = add i32 %.sroa.35.176.i, %.sroa.0.179.i
  %i.cdb = lshr i32 %i.cda, 8
  %i.cdc = uitofp reassoc nsz arcp contract afn nneg i32 %i.cdb to float
  %i.cdd = fmul reassoc nnan nsz arcp contract afn float %i.cdc, f0x33800000
  %i.cde = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdd, float f0x00800000)
  %i.cdf = tail call fast float @llvm.log.f32(float %i.cde)
  %i.cdg = fmul reassoc nnan nsz arcp contract afn float %i.cdf, -2.000000e+00
  %i.cdh = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdg)
  %i.cdi = fmul reassoc nsz arcp contract afn float %i.cdh, %i.bdd
  %i.cdj = fmul reassoc nsz arcp contract afn float %i.cdi, %.sink.i.i
  %i.cdk = fadd reassoc nsz arcp contract afn float %i.ccg, 3.750000e-01
  %i.cdl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdk, float 0.000000e+00)
  %i.cdm = tail call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdl)
  %i.cdn = fmul reassoc nnan nsz arcp contract afn float %i.cdm, 2.000000e+00
  %i.cdo = fadd reassoc nsz arcp contract afn float %i.cdn, %i.cdj ; 2 uses
  %i.cdp = fmul reassoc nsz arcp contract afn float %i.cdo, %i.cdo
  %i.cdq = fsub reassoc nsz arcp contract afn float %i.cdp, %i.bdx
  %i.cdr = fmul reassoc nsz arcp contract afn float %i.cdq, 2.500000e-01
  %i.cds = fadd reassoc nsz arcp contract afn float %i.ccf, -3.750000e-01
  %i.cdt = fadd reassoc nsz arcp contract afn float %i.cds, %i.cdr
  store float %i.cdt, ptr %i.cce, align 4, !tbaa !11
  br label %bb.ec

bb.ec:                                            ; preds = %poisson_noise.exit.i, %bb.eb
  %.sroa.35.2.i = phi i32 [ %i.ccv, %poisson_noise.exit.i ], [ %.sroa.35.176.i, %bb.eb ] ; 2 uses
  %.sroa.24.2.i = phi i32 [ %i.ccu, %poisson_noise.exit.i ], [ %.sroa.24.177.i, %bb.eb ] ; 2 uses
  %.sroa.13.2.i = phi i32 [ %i.ccs, %poisson_noise.exit.i ], [ %.sroa.13.178.i, %bb.eb ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.cct, %poisson_noise.exit.i ], [ %.sroa.0.179.i, %bb.eb ] ; 2 uses
  %indvars.iv.next.i531 = add nsw i64 %indvars.iv.i530, 1 ; 2 uses
  %lftr.wideiv.i532 = trunc i64 %indvars.iv.next.i531 to i32
  %exitcond.not.i533 = icmp eq i32 %i.bzu, %lftr.wideiv.i532
  br i1 %exitcond.not.i533, label %._crit_edge.i534, label %bb.eb

_add_poisson_noise.exit:                          ; preds = %._crit_edge.i534, %bb.ea, %bb.dz
  %indvars.iv.next735 = add nuw nsw i64 %indvars.iv734, 1 ; 2 uses
  %exitcond738.not = icmp eq i64 %indvars.iv.next735, %wide.trip.count737
  br i1 %exitcond738.not, label %.loopexit580, label %bb.dz

.loopexit580:                                     ; preds = %_add_poisson_noise.exit, %._crit_edge639, %._crit_edge639.thread
  %i.cdu = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.cdv = fadd reassoc nsz arcp contract afn float %i.cdu, 2.000000e+00 ; 2 uses
  %i.cdw = load i32, ptr %i.cf, align 4, !tbaa !308 ; 2 uses
  %i.cdx = add nsw i32 %i.cdw, -1
  %i.cdy = icmp sgt i32 %i.cdw, 2
  br i1 %i.cdy, label %.preheader578.lr.ph, label %.loopexit

.preheader578.lr.ph:                              ; preds = %.loopexit580
  %i.cdz = load i32, ptr %i.bz, align 4, !tbaa !310 ; 3 uses
  %i.cea = icmp sgt i32 %i.cdz, 2
  %i.ceb = sext i32 %i.cdz to i64
  br i1 %i.cea, label %.preheader578.preheader, label %.loopexit

.preheader578.preheader:                          ; preds = %.preheader578.lr.ph
  %i.cec = add nsw i32 %i.cdz, -1                 ; 2 uses
  %wide.trip.count752 = zext nneg i32 %i.cdx to i64
  %wide.trip.count742 = zext i32 %i.cec to i64
  %wide.trip.count747 = zext i32 %i.cec to i64
  br label %.preheader578

.preheader578:                                    ; preds = %.preheader578.preheader, %._crit_edge644
  %indvars.iv749 = phi i64 [ 1, %.preheader578.preheader ], [ %indvars.iv.next750, %._crit_edge644 ] ; 5 uses
  %i.ced = mul nuw nsw i64 %indvars.iv749, %i.ceb ; 2 uses
  %indvars.iv749.tr = trunc nuw i64 %indvars.iv749 to i32
  %i.cee = shl nuw i32 %indvars.iv749.tr, 1
  %i.cef = and i32 %i.cee, 14
  %i.ceg = trunc i64 %indvars.iv749 to i32
  %i.ceh = add i32 %i.ceg, 600
  %i.cei = urem i32 %i.ceh, 6
  %i.cej = zext nneg i32 %i.cei to i64
  %i.cek = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.cej
  %i.cel = trunc nuw nsw i64 %indvars.iv749 to i32
  %i.cem = udiv i32 %i.cel, 3
  %i.cen = add nuw nsw i32 %i.cem, 8
  %i.ceo = mul nsw i32 %i.cen, %i.dk
  %i.cep = add i32 %i.ceo, 8                      ; 2 uses
  br i1 %.not453, label %fcol.exit537.us, label %fcol.exit537

fcol.exit537.us:                                  ; preds = %.preheader578, %bb.ee
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.ee ], [ 1, %.preheader578 ] ; 4 uses
  %i.ceq = add nuw nsw i64 %i.ced, %indvars.iv744 ; 2 uses
  %i.cer = trunc i64 %indvars.iv744 to i32
  %i.ces = add i32 %i.cer, 600
  %i.cet = urem i32 %i.ces, 6
  %i.ceu = zext nneg i32 %i.cet to i64
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cek, i64 %i.ceu
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !332
  %i.cex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ceq
  %i.cey = load float, ptr %i.cex, align 4, !tbaa !11
  %i.cez = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cey, float 0.000000e+00)
  %i.cfa = zext i8 %i.cew to i64
  %i.cfb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cfa
  %i.cfc = load float, ptr %i.cfb, align 4, !tbaa !11
  %i.cfd = fcmp reassoc nsz arcp contract afn ogt float %i.cez, %i.cfc
  br i1 %i.cfd, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %fcol.exit537.us
  %i.cfe = trunc nuw nsw i64 %indvars.iv744 to i32
  %i.cff = udiv i32 %i.cfe, 3
  %i.cfg = add i32 %i.cep, %i.cff
  %i.cfh = sext i32 %i.cfg to i64                 ; 2 uses
  %i.cfi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cfh
  %i.cfj = load float, ptr %i.cfi, align 4, !tbaa !11
  %i.cfk = fsub reassoc nsz arcp contract afn float %i.cdv, %i.cfj
  %i.cfl = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cfk)
  %i.cfm = fadd reassoc nsz arcp contract afn float %i.cfl, 1.000000e+00
  %i.cfn = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.cfh
  %i.cfo = load float, ptr %i.cfn, align 4, !tbaa !11
  %i.cfp = fmul reassoc nsz arcp contract afn float %i.cfo, %i.bj
  %i.cfq = fdiv reassoc nsz arcp contract afn float %i.cfp, %i.cfm
  %i.cfr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfq, float 0.000000e+00)
  %i.cfs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ceq ; 2 uses
  %i.cft = load float, ptr %i.cfs, align 4, !tbaa !11
  %i.cfu = fadd reassoc nsz arcp contract afn float %i.cfr, %i.cft
  store float %i.cfu, ptr %i.cfs, align 4, !tbaa !11
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
  %i.cfv = add nuw nsw i64 %i.ced, %indvars.iv739 ; 2 uses
  %i.cfw = trunc nuw nsw i64 %indvars.iv739 to i32 ; 2 uses
  %i.cfx = and i32 %i.cfw, 1
  %.tr.i.i535 = or disjoint i32 %i.cfx, %i.cef
  %i.cfy = shl nuw nsw i32 %.tr.i.i535, 1
  %i.cfz = lshr i32 %i.j, %i.cfy
  %i.cga = and i32 %i.cfz, 3
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cfv
  %i.cgc = load float, ptr %i.cgb, align 4, !tbaa !11
  %i.cgd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgc, float 0.000000e+00)
  %i.cge = zext nneg i32 %i.cga to i64
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cge
  %i.cgg = load float, ptr %i.cgf, align 4, !tbaa !11
  %i.cgh = fcmp reassoc nsz arcp contract afn ogt float %i.cgd, %i.cgg
  br i1 %i.cgh, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %fcol.exit537
  %i.cgi = udiv i32 %i.cfw, 3
  %i.cgj = add i32 %i.cep, %i.cgi
  %i.cgk = sext i32 %i.cgj to i64                 ; 2 uses
  %i.cgl = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cgk
  %i.cgm = load float, ptr %i.cgl, align 4, !tbaa !11
  %i.cgn = fsub reassoc nsz arcp contract afn float %i.cdv, %i.cgm
  %i.cgo = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cgn)
  %i.cgp = fadd reassoc nsz arcp contract afn float %i.cgo, 1.000000e+00
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.cgk
  %i.cgr = load float, ptr %i.cgq, align 4, !tbaa !11
  %i.cgs = fmul reassoc nsz arcp contract afn float %i.cgr, %i.bj
  %i.cgt = fdiv reassoc nsz arcp contract afn float %i.cgs, %i.cgp
  %i.cgu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgt, float 0.000000e+00)
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cfv ; 2 uses
  %i.cgw = load float, ptr %i.cgv, align 4, !tbaa !11
  %i.cgx = fadd reassoc nsz arcp contract afn float %i.cgu, %i.cgw
  store float %i.cgx, ptr %i.cgv, align 4, !tbaa !11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %fcol.exit537
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge644, label %fcol.exit537

.loopexit:                                        ; preds = %._crit_edge644, %.loopexit580, %.preheader578.lr.ph, %bb.as, %bb.ar
  %i.cgy = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cgz = load i32, ptr %i.cgy, align 4, !tbaa !308 ; 2 uses
  %i.cha = icmp sgt i32 %i.cgz, 0
  br i1 %i.cha, label %.preheader.lr.ph, label %._crit_edge652.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.chb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.chc = load i32, ptr %i.chb, align 4, !tbaa !310 ; 3 uses
  %i.chd = icmp sgt i32 %i.chc, 0
  %i.che = sext i32 %i.chc to i64                 ; 2 uses
  %i.chf = icmp eq i32 %6, 1
  %i.chg = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.chh = load i32, ptr %i.chg, align 4
  %i.chi = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.chj = load i32, ptr %i.chi, align 8
  %i.chk = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.chl = load i32, ptr %i.chk, align 4
  %i.chm = sub nsw i32 %i.chj, %i.chl
  %i.chn = mul nsw i32 %i.chm, %i.chh
  %i.cho = load ptr, ptr %i.dt, align 16
  %i.chp = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.chq = load i32, ptr %i.chp, align 8
  br i1 %i.chd, label %.preheader.lr.ph.split, label %._crit_edge652.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.chr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.chs = load i32, ptr %i.chr, align 4, !tbaa !300
  %i.cht = load i32, ptr %4, align 4, !tbaa !299
  %i.chu = shl nuw nsw i64 %i.che, 2
  %i.chv = zext nneg i32 %i.chc to i64            ; 2 uses
  %i.chw = shl nuw nsw i64 %i.chv, 2
  %i.chx = sext i32 %i.cht to i64
  %i.chy = sext i32 %i.chs to i64
  %wide.trip.count768 = zext nneg i32 %i.cgz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge648
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge648 ] ; 4 uses
  %i.chz = mul i64 %i.chu, %indvar
  %scevgep758 = getelementptr i8, ptr %2, i64 %i.chz
  %i.cia = add nsw i64 %indvar, %i.chy            ; 7 uses
  %i.cib = mul nuw nsw i64 %indvar, %i.che
  %i.cic = icmp sgt i64 %i.cia, -1
  %i.cid = trunc nsw i64 %i.cia to i32            ; 2 uses
  %i.cie = udiv i32 %i.cid, 3
  %i.cif = add nuw nsw i32 %i.cie, 8
  %i.cig = mul nsw i32 %i.cif, %i.dk
  %invariant.op = add i32 %i.cig, 8
  %i.cih = icmp ne i64 %i.cia, 0
  %i.cii = shl nuw i32 %i.cid, 1
  %i.cij = and i32 %i.cii, 14
  %i.cik = trunc i64 %i.cia to i32
  %i.cil = add i32 %i.cik, 600
  %i.cim = urem i32 %i.cil, 6
  %i.cin = zext nneg i32 %i.cim to i64
  %i.cio = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.cin
  br i1 %i.cic, label %.lr.ph647.split.us, label %._crit_edge648.sink.split

.lr.ph647.split.us:                               ; preds = %.preheader
  %i.cip = load i32, ptr %i.cf, align 4, !tbaa !308 ; 2 uses
  %i.ciq = sext i32 %i.cip to i64
  %i.cir = icmp slt i64 %i.cia, %i.ciq
  %i.cis = add nsw i32 %i.cip, -1
  %i.cit = sext i32 %i.cis to i64
  %i.ciu = icmp samesign ult i64 %i.cia, %i.cit
  %.fr650 = freeze i1 %i.cir
  br i1 %.fr650, label %.lr.ph647.split.us.split, label %._crit_edge648.sink.split

.lr.ph647.split.us.split:                         ; preds = %.lr.ph647.split.us, %bb.eu
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %bb.eu ], [ 0, %.lr.ph647.split.us ] ; 3 uses
  %i.civ = add nsw i64 %indvars.iv762, %i.chx     ; 7 uses
  %i.ciw = add nuw nsw i64 %i.cib, %indvars.iv762 ; 3 uses
  %i.cix = icmp sgt i64 %i.civ, -1
  br i1 %i.cix, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph647.split.us.split
  %i.ciy = load i32, ptr %i.bz, align 4, !tbaa !310 ; 3 uses
  %i.ciz = sext i32 %i.ciy to i64
  %i.cja = icmp slt i64 %i.civ, %i.ciz
  br i1 %i.cja, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph647.split.us.split
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ciw
  store float 0.000000e+00, ptr %i.cjb, align 4, !tbaa !11
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.cjc = trunc nuw nsw i64 %i.civ to i32        ; 2 uses
  %i.cjd = udiv i32 %i.cjc, 3
  %.reass649.us = add i32 %i.cjd, %invariant.op   ; 3 uses
  %i.cje = sext i32 %.reass649.us to i64          ; 4 uses
  br i1 %i.aof, label %bb.ek, label %.thread552.us

.thread552.us:                                    ; preds = %bb.ej
end_hunk_5
