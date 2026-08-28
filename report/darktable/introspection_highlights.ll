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
  br i1 %i.kt, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
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
  %i.op = mul nuw nsw i64 %i.ol, %i.oo            ; 2 uses
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
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ov = shl i32 %indvars.iv.tr, 1
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
end_hunk_0
begin_hunk_1_@_process_segmentation:bb.a
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
  %i.fe = shl i32 %i.fd, 1
  %i.ff = and i32 %i.fe, 14                       ; 3 uses
  %i.fg = add i32 %i.fd, 600
  %i.fh = srem i32 %i.fg, 6
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fi ; 3 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.fk = trunc i64 %indvars.iv.next684 to i32    ; 2 uses
  %i.fl = shl i32 %i.fk, 1
  %i.fm = and i32 %i.fl, 14                       ; 3 uses
  %i.fn = add i32 %i.fk, 600
  %i.fo = srem i32 %i.fn, 6
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fp ; 3 uses
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv681, 2 ; 2 uses
  %i.fr = trunc i64 %indvars.iv.next684.1 to i32  ; 2 uses
  %i.fs = shl i32 %i.fr, 1
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
  %i.ii = mul nuw nsw i64 %indvars.iv681, %i.hp
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
  store float %i.kr, ptr %i.kp, align 4, !tbaa !11
  %i.ks = mul nuw nsw i64 %indvars.iv.next684, %i.hp
  %i.kt = getelementptr [4 x i8], ptr %7, i64 %i.ks ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader.1, label %fcol.exit.preheader.1

fcol.exit.preheader.1:                            ; preds = %.split602.us
  %i.ku = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !11
  %.tr.i.i.11123 = or disjoint i32 %i.hr, %i.fm
  %i.kw = shl nuw nsw i32 %.tr.i.i.11123, 1
  %i.kx = lshr i32 %i.j, %i.kw
  %i.ky = and i32 %i.kx, 3
  %i.kz = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kz ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !11
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kv
  store float %i.lc, ptr %i.la, align 4, !tbaa !11
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kz ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !11
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, 1.000000e+00
  store float %i.lf, ptr %i.ld, align 4, !tbaa !11
  %i.lg = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv.next674
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !11
  %.tr.i.i.1.1 = or disjoint i32 %i.ht, %i.fm
  %i.li = shl nuw nsw i32 %.tr.i.i.1.1, 1
  %i.lj = lshr i32 %i.j, %i.li
  %i.lk = and i32 %i.lj, 3
  %i.ll = zext nneg i32 %i.lk to i64              ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ll ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !11
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.lh
  store float %i.lo, ptr %i.lm, align 4, !tbaa !11
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ll ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !11
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lq, 1.000000e+00
  store float %i.lr, ptr %i.lp, align 4, !tbaa !11
  %.tr.i.i.2.1 = or disjoint i32 %i.hv, %i.fm
  %i.ls = shl nuw nsw i32 %.tr.i.i.2.1, 1
  %i.lt = lshr i32 %i.j, %i.ls
  %i.lu = and i32 %i.lt, 3
  %i.lv = zext nneg i32 %i.lu to i64
  br label %.split602.us.1

fcol.exit.us.preheader.1:                         ; preds = %.split602.us
  %i.lw = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !11
  %i.ly = getelementptr inbounds i8, ptr %i.fq, i64 %i.hz
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !332
  %i.ma = zext i8 %i.lz to i64                    ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ma ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !11
  %i.md = fadd reassoc nsz arcp contract afn float %i.mc, %i.lx
  store float %i.md, ptr %i.mb, align 4, !tbaa !11
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ma ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !11
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, 1.000000e+00
  store float %i.mg, ptr %i.me, align 4, !tbaa !11
  %i.mh = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv
  %i.mi = getelementptr i8, ptr %i.mh, i64 4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !11
  %i.mk = getelementptr inbounds i8, ptr %i.fq, i64 %i.id
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !332
  %i.mm = zext i8 %i.ml to i64                    ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mm ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !11
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, %i.mj
  store float %i.mp, ptr %i.mn, align 4, !tbaa !11
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mm ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !11
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mr, 1.000000e+00
  store float %i.ms, ptr %i.mq, align 4, !tbaa !11
  %i.mt = getelementptr inbounds i8, ptr %i.fq, i64 %i.ih
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !332
  %i.mv = zext i8 %i.mu to i64
  br label %.split602.us.1

.split602.us.1:                                   ; preds = %fcol.exit.us.preheader.1, %fcol.exit.preheader.1
  %.sink864.1 = phi i64 [ %i.lv, %fcol.exit.preheader.1 ], [ %i.mv, %fcol.exit.us.preheader.1 ] ; 2 uses
  %.pn.1 = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv
  %.sink862.in.1 = getelementptr i8, ptr %.pn.1, i64 8
  %.sink862.1 = load float, ptr %.sink862.in.1, align 4, !tbaa !11
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864.1 ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !11
  %i.my = fadd reassoc nsz arcp contract afn float %i.mx, %.sink862.1
  store float %i.my, ptr %i.mw, align 4, !tbaa !11
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864.1 ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !11
  %i.nb = fadd reassoc nsz arcp contract afn float %i.na, 1.000000e+00
  store float %i.nb, ptr %i.mz, align 4, !tbaa !11
  %i.nc = mul nuw nsw i64 %indvars.iv.next684.1, %i.hp
  %i.nd = getelementptr [4 x i8], ptr %7, i64 %i.nc ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader.2, label %fcol.exit.preheader.2

fcol.exit.preheader.2:                            ; preds = %.split602.us.1
  %i.ne = getelementptr [4 x i8], ptr %i.nd, i64 %indvars.iv
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !11
  %.tr.i.i.21124 = or disjoint i32 %i.hr, %i.ft
  %i.ng = shl nuw nsw i32 %.tr.i.i.21124, 1
  %i.nh = lshr i32 %i.j, %i.ng
  %i.ni = and i32 %i.nh, 3
  %i.nj = zext nneg i32 %i.ni to i64              ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nj ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !11
  %i.nm = fadd reassoc nsz arcp contract afn float %i.nl, %i.nf
  store float %i.nm, ptr %i.nk, align 4, !tbaa !11
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nj ; 2 uses
  %i.no = load float, ptr %i.nn, align 4, !tbaa !11
  %i.np = fadd reassoc nsz arcp contract afn float %i.no, 1.000000e+00
  store float %i.np, ptr %i.nn, align 4, !tbaa !11
  %i.nq = getelementptr [4 x i8], ptr %i.nd, i64 %indvars.iv.next674
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !11
  %.tr.i.i.1.2 = or disjoint i32 %i.ht, %i.ft
  %i.ns = shl nuw nsw i32 %.tr.i.i.1.2, 1
  %i.nt = lshr i32 %i.j, %i.ns
  %i.nu = and i32 %i.nt, 3
  %i.nv = zext nneg i32 %i.nu to i64              ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nv ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !11
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, %i.nr
  store float %i.ny, ptr %i.nw, align 4, !tbaa !11
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nv ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !11
  %i.ob = fadd reassoc nsz arcp contract afn float %i.oa, 1.000000e+00
  store float %i.ob, ptr %i.nz, align 4, !tbaa !11
  %.tr.i.i.2.2 = or disjoint i32 %i.hv, %i.ft
  %i.oc = shl nuw nsw i32 %.tr.i.i.2.2, 1
  %i.od = lshr i32 %i.j, %i.oc
  %i.oe = and i32 %i.od, 3
  %i.of = zext nneg i32 %i.oe to i64
  br label %.split602.us.2

fcol.exit.us.preheader.2:                         ; preds = %.split602.us.1
  %i.og = getelementptr [4 x i8], ptr %i.nd, i64 %indvars.iv
  %i.oh = load float, ptr %i.og, align 4, !tbaa !11
  %i.oi = getelementptr inbounds i8, ptr %i.fx, i64 %i.hz
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !332
  %i.ok = zext i8 %i.oj to i64                    ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ok ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !11
  %i.on = fadd reassoc nsz arcp contract afn float %i.om, %i.oh
  store float %i.on, ptr %i.ol, align 4, !tbaa !11
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ok ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !11
  %i.oq = fadd reassoc nsz arcp contract afn float %i.op, 1.000000e+00
  store float %i.oq, ptr %i.oo, align 4, !tbaa !11
  %i.or = getelementptr [4 x i8], ptr %i.nd, i64 %indvars.iv
  %i.os = getelementptr i8, ptr %i.or, i64 4
  %i.ot = load float, ptr %i.os, align 4, !tbaa !11
  %i.ou = getelementptr inbounds i8, ptr %i.fx, i64 %i.id
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !332
  %i.ow = zext i8 %i.ov to i64                    ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ow ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !11
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %i.ot
  store float %i.oz, ptr %i.ox, align 4, !tbaa !11
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ow ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !11
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, 1.000000e+00
  store float %i.pc, ptr %i.pa, align 4, !tbaa !11
  %i.pd = getelementptr inbounds i8, ptr %i.fx, i64 %i.ih
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !332
  %i.pf = zext i8 %i.pe to i64
  br label %.split602.us.2

.split602.us.2:                                   ; preds = %fcol.exit.us.preheader.2, %fcol.exit.preheader.2
  %.sink864.2 = phi i64 [ %i.of, %fcol.exit.preheader.2 ], [ %i.pf, %fcol.exit.us.preheader.2 ] ; 2 uses
  %.pn.2 = getelementptr [4 x i8], ptr %i.nd, i64 %indvars.iv
  %.sink862.in.2 = getelementptr i8, ptr %.pn.2, i64 8
  %.sink862.2 = load float, ptr %.sink862.in.2, align 4, !tbaa !11
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864.2 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !11
  %i.pi = fadd reassoc nsz arcp contract afn float %i.ph, %.sink862.2
  store float %i.pi, ptr %i.pg, align 4, !tbaa !11
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864.2 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !11
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, 1.000000e+00
  store float %i.pl, ptr %i.pj, align 4, !tbaa !11
  %i.pm = load float, ptr %i.g, align 16, !tbaa !11 ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn ogt float %i.pm, 0.000000e+00
  br i1 %i.pn, label %bb.k, label %.preheader590.1

bb.k:                                             ; preds = %.split602.us.2
  %i.po = load float, ptr %i.f, align 16, !tbaa !11
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, %i.en
  %i.pq = fdiv reassoc nsz arcp contract afn float %i.pp, %i.pm
  %i.pr = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.pq) #35
  br label %.preheader590.1

.preheader590.1:                                  ; preds = %.split602.us.2, %bb.k
  %i.ps = phi reassoc nsz arcp contract afn float [ %i.pr, %bb.k ], [ 0.000000e+00, %.split602.us.2 ] ; 5 uses
  store float %i.ps, ptr %i.f, align 16, !tbaa !11
  %i.pt = load float, ptr %i.eg, align 4, !tbaa !11 ; 2 uses
  %i.pu = fcmp reassoc nsz arcp contract afn ogt float %i.pt, 0.000000e+00
  br i1 %i.pu, label %bb.l, label %.preheader590.2

bb.l:                                             ; preds = %.preheader590.1
  %i.pv = load float, ptr %i.ee, align 4, !tbaa !11
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pv, %i.eo
  %i.px = fdiv reassoc nsz arcp contract afn float %i.pw, %i.pt
  %i.py = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.px) #35
  br label %.preheader590.2

.preheader590.2:                                  ; preds = %bb.l, %.preheader590.1
  %i.pz = phi reassoc nsz arcp contract afn float [ %i.py, %bb.l ], [ 0.000000e+00, %.preheader590.1 ] ; 5 uses
  store float %i.pz, ptr %i.ee, align 4, !tbaa !11
  %i.qa = load float, ptr %i.eh, align 8, !tbaa !11 ; 2 uses
  %i.qb = fcmp reassoc nsz arcp contract afn ogt float %i.qa, 0.000000e+00
  br i1 %i.qb, label %bb.m, label %.preheader590.3

bb.m:                                             ; preds = %.preheader590.2
  %i.qc = load float, ptr %i.ef, align 8, !tbaa !11
  %i.qd = fmul reassoc nsz arcp contract afn float %i.qc, %i.bd
  %i.qe = fdiv reassoc nsz arcp contract afn float %i.qd, %i.qa
  %i.qf = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qe) #35
  br label %.preheader590.3

.preheader590.3:                                  ; preds = %bb.m, %.preheader590.2
  %i.qg = phi reassoc nsz arcp contract afn float [ %i.qf, %bb.m ], [ 0.000000e+00, %.preheader590.2 ] ; 5 uses
  store float %i.qg, ptr %i.ef, align 8, !tbaa !11
  %i.qh = fadd reassoc nsz arcp contract afn float %i.qg, %i.pz
  %i.qi = fmul reassoc nsz arcp contract afn float %i.qh, 5.000000e-01
  %i.qj = fadd reassoc nsz arcp contract afn float %i.ps, %i.qg
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qj, 5.000000e-01
  %i.ql = fadd reassoc nsz arcp contract afn float %i.ps, %i.pz
  %i.qm = fmul reassoc nsz arcp contract afn float %i.ql, 5.000000e-01
  %i.qn = add i32 %i.ey, %i.hn
  %i.qo = sext i32 %i.qn to i64                   ; 10 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.qo
  store float %i.ps, ptr %i.qp, align 4, !tbaa !11
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.qo
  store float %i.qi, ptr %i.qq, align 4, !tbaa !11
  %i.qr = fcmp reassoc nsz arcp contract afn ogt float %i.ps, %i.ad
  br i1 %i.qr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader590.3
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.qo
  store i32 1, ptr %i.qs, align 4, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %.preheader590.3, %bb.n
  %.1 = phi i32 [ 1, %bb.n ], [ 0, %.preheader590.3 ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.qo
  store float %i.pz, ptr %i.qt, align 4, !tbaa !11
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.qo
  store float %i.qk, ptr %i.qu, align 4, !tbaa !11
  %i.qv = fcmp reassoc nsz arcp contract afn ogt float %i.pz, %i.af
  br i1 %i.qv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qw = add nuw nsw i32 %.1, 1
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.qo
  store i32 1, ptr %i.qx, align 4, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %i.qw, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.qo
  store float %i.qg, ptr %i.qy, align 4, !tbaa !11
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.qo
  store float %i.qm, ptr %i.qz, align 4, !tbaa !11
  %i.ra = fcmp reassoc nsz arcp contract afn ogt float %i.qg, %i.ah
  br i1 %i.ra, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rb = add nuw nsw i32 %.1.1, 1
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.qo
  store i32 1, ptr %i.rc, align 4, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.2 = phi i32 [ %i.rb, %bb.r ], [ %.1.1, %bb.q ] ; 2 uses
  %i.rd = icmp eq i32 %.1.2, 3
  %i.re = zext i1 %i.rd to i32                    ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.qo
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !22
  %i.rg = or i32 %.1420608, %i.re
  %i.rh = add nsw i32 %.1.2, %.1422607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  %.pre779 = load i32, ptr %i.bz, align 4, !tbaa !310
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split, %bb.s
  %i.ri = phi i32 [ %.pre779, %bb.s ], [ %i.hk, %.lr.ph.split ] ; 5 uses
  %.2423 = phi i32 [ %i.rh, %bb.s ], [ %.1422607, %.lr.ph.split ] ; 2 uses
  %.2 = phi i32 [ %i.rg, %bb.s ], [ %.1420608, %.lr.ph.split ] ; 2 uses
  %i.rj = add nuw nsw i32 %.0417609, 1            ; 2 uses
  %i.rk = add nsw i32 %i.ri, -1
  %i.rl = icmp slt i32 %i.rj, %i.rk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
end_hunk_1
begin_hunk_2_@wavelets_process:bb.a

.lr.ph66.i:                                       ; preds = %bb.c
  %.not.i.i = icmp slt i32 %i.ak, %i.l
  %.reass.i = add nuw i32 %invariant.op.i, %i.ak
  %i.am = shl nuw nsw i32 2, %.054121             ; 3 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ap = add nsw i32 %i.ak, -1
  %i.aq = and i32 %i.ap, %i.l                     ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph66.i
  %.03764.i = phi i64 [ 0, %.lr.ph66.i ], [ %i.en, %._crit_edge.i ] ; 2 uses
  %i.as = trunc i64 %.03764.i to i32              ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %dwt_interleave_rows.exit.i

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %.reass.i, %i.ak               ; 4 uses
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = mul nsw i32 %i.aq, %i.at                ; 2 uses
  %i.av = icmp sgt i32 %i.au, %i.as
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = sdiv i32 %i.as, %i.at
  %i.ax = srem i32 %i.as, %i.at
  %i.ay = shl nsw i32 %i.ax, %.054121
  %i.az = add nsw i32 %i.ay, %i.aw
  br label %dwt_interleave_rows.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ba = sub nsw i32 %i.as, %i.au                ; 2 uses
  %i.bb = add nsw i32 %i.at, -1                   ; 2 uses
  %i.bc = sdiv i32 %i.ba, %i.bb
  %i.bd = add nsw i32 %i.bc, %i.aq
  %i.be = srem i32 %i.ba, %i.bb
  %i.bf = shl nsw i32 %i.be, %.054121
  %i.bg = add nsw i32 %i.bd, %i.bf
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.h, %bb.g, %bb.d
  %.1.i.i = phi i32 [ %i.as, %bb.d ], [ %i.az, %bb.g ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bh = sext i32 %.1.i.i to i64                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.bi = sub nsw i32 %.1.i.i, %i.am
  %i.bj = call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = mul i64 %i.f, %i.bk                     ; 2 uses
  %i.bm = sub nsw i32 %.1.i.i, %i.ak
  %i.bn = call i32 @llvm.smax.i32(i32 %i.bm, i32 0)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = mul i64 %i.f, %i.bo                     ; 2 uses
  %i.bq = mul i64 %i.f, %i.bh                     ; 2 uses
  %i.br = add nsw i64 %i.bh, %i.an
  %..i.i = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.m)
  %i.bs = mul i64 %..i.i, %i.f                    ; 2 uses
  %i.bt = add nsw i64 %i.bh, %i.ao
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.m)
  %i.bv = mul i64 %i.bu, %i.f                     ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader58, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bw = shl nuw i64 %index, 2                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bw
  %i.bz = getelementptr [4 x i8], ptr %i.bx, i64 %i.bl
  %i.ca = getelementptr [4 x i8], ptr %i.bx, i64 %i.bp
  %i.cb = getelementptr [4 x i8], ptr %i.bx, i64 %i.bq
  %i.cc = getelementptr [4 x i8], ptr %i.bx, i64 %i.bs
  %i.cd = getelementptr [4 x i8], ptr %i.bx, i64 %i.bv
  %wide.vec = load <16 x float>, ptr %i.bz, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec3 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec4 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec5 = load <16 x float>, ptr %i.ca, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec6 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec7 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec8 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec9 = shufflevector <16 x float> %wide.vec5, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec10 = load <16 x float>, ptr %i.cb, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec11 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec12 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec13 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec14 = shufflevector <16 x float> %wide.vec10, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec11, splat (float 3.750000e-01)
  %wide.vec15 = load <16 x float>, ptr %i.cc, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec16 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec17 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec18 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec19 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec20 = load <16 x float>, ptr %i.cd, align 4, !tbaa !11, !alias.scope !601, !noalias !606 ; 4 uses
  %strided.vec21 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec22 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec23 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cf = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec16, %strided.vec6
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, splat (float 2.500000e-01)
  %i.ch = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec21, %strided.vec
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.ch, splat (float 6.250000e-02)
  %i.cj = fadd reassoc nsz arcp contract afn <4 x float> %i.cg, %i.ce
  %i.ck = fadd reassoc nsz arcp contract afn <4 x float> %i.cj, %i.ci ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec12, splat (float 3.750000e-01)
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec17, %strided.vec7
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 2.500000e-01)
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec22, %strided.vec2
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 6.250000e-02)
  %i.cq = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.cl
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cp ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec13, splat (float 3.750000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec18, %strided.vec8
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.ct, splat (float 2.500000e-01)
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec23, %strided.vec3
  %i.cw = fmul reassoc nsz arcp contract afn <4 x float> %i.cv, splat (float 6.250000e-02)
  %i.cx = fadd reassoc nsz arcp contract afn <4 x float> %i.cu, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.cw ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec14, splat (float 3.750000e-01)
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec19, %strided.vec9
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.da, splat (float 2.500000e-01)
  %i.dc = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec24, %strided.vec4
  %i.dd = fmul reassoc nsz arcp contract afn <4 x float> %i.dc, splat (float 6.250000e-02)
  %i.de = fadd reassoc nsz arcp contract afn <4 x float> %i.db, %i.cz
  %i.df = fadd reassoc nsz arcp contract afn <4 x float> %i.de, %i.dd ; 2 uses
  %i.dg = shufflevector <4 x float> %i.ck, <4 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dg, zeroinitializer
  %i.di = shufflevector <4 x float> %i.ck, <4 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = select reassoc nsz arcp contract afn <8 x i1> %i.dh, <8 x float> zeroinitializer, <8 x float> %i.di
  %i.dk = shufflevector <4 x float> %i.cy, <4 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dk, zeroinitializer
  %i.dm = shufflevector <4 x float> %i.cy, <4 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = select reassoc nsz arcp contract afn <8 x i1> %i.dl, <8 x float> zeroinitializer, <8 x float> %i.dm
  %interleaved.vec = shufflevector <8 x float> %i.dj, <8 x float> %i.dn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.by, align 64, !tbaa !11, !alias.scope !604, !noalias !607
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i, label %.lr.ph.i.i.preheader58

.lr.ph.i.i.preheader58:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader58, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.el, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader58 ] ; 2 uses
  %i.dp = shl nuw i64 %.036.i.i, 2                ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.dp ; 5 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  %i.ds = getelementptr [4 x i8], ptr %i.dq, i64 %i.bl
  %i.dt = getelementptr [4 x i8], ptr %i.dq, i64 %i.bp
  %i.du = getelementptr [4 x i8], ptr %i.dq, i64 %i.bq
  %i.dv = getelementptr [4 x i8], ptr %i.dq, i64 %i.bs
  %i.dw = getelementptr [4 x i8], ptr %i.dq, i64 %i.bv
  %i.dx = load <4 x float>, ptr %i.ds, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.dy = load <4 x float>, ptr %i.dt, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.dz = load <4 x float>, ptr %i.du, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.ea = fmul reassoc nsz arcp contract afn <4 x float> %i.dz, splat (float 3.750000e-01)
  %i.eb = load <4 x float>, ptr %i.dv, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.ec = load <4 x float>, ptr %i.dw, align 4, !tbaa !11, !alias.scope !601, !noalias !606
  %i.ed = fadd reassoc nsz arcp contract afn <4 x float> %i.eb, %i.dy
  %i.ee = fmul reassoc nsz arcp contract afn <4 x float> %i.ed, splat (float 2.500000e-01)
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ec, %i.dx
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.ef, splat (float 6.250000e-02)
  %i.eh = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ea
  %i.ei = fadd reassoc nsz arcp contract afn <4 x float> %i.eh, %i.eg ; 2 uses
  %i.ej = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ei, zeroinitializer
  %i.ek = select <4 x i1> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.ei
  store <4 x float> %i.ek, ptr %i.dr, align 16, !tbaa !11, !alias.scope !604, !noalias !607
  %i.el = add nuw nsw i64 %.036.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.el, %3
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !609

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %middle.block
  %i.em = mul i64 %3, %i.bh
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %dwt_interleave_rows.exit.i
  %i.en = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.en, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.03663.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ga, %bb.i ] ; 6 uses
  %i.eo = add i64 %.03663.i, %i.em
  %i.ep = shl i64 %i.eo, 2                        ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.er = trunc i64 %.03663.i to i32              ; 2 uses
  %i.es = sub nsw i32 %i.er, %i.am
  %i.et = call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %i.eu = shl nuw nsw i32 %i.et, 2
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = sub nsw i32 %i.er, %i.ak
  %i.ex = call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = shl nuw nsw i32 %i.ex, 2
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nuw nsw i64 %.03663.i, %i.an
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.n)
  %i.fb = add nuw nsw i64 %.03663.i, %i.ao
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.n)
  %i.fd = getelementptr [4 x i8], ptr %i.j, i64 %i.ev
  %i.fe = getelementptr [4 x i8], ptr %i.j, i64 %i.ez
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.ff = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.fg = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.fc, 4
  %i.fh = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.fi = load <4 x float>, ptr %i.fd, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.fj = load <4 x float>, ptr %i.fe, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.fk = load <4 x float>, ptr %i.ff, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.fl = fmul reassoc nsz arcp contract afn <4 x float> %i.fk, splat (float 3.750000e-01)
  %i.fm = load <4 x float>, ptr %i.fg, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.fn = load <4 x float>, ptr %i.fh, align 16, !tbaa !11, !alias.scope !610, !noalias !615
  %i.fo = fadd reassoc nsz arcp contract afn <4 x float> %i.fm, %i.fj
  %i.fp = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, splat (float 2.500000e-01)
  %i.fq = fadd reassoc nsz arcp contract afn <4 x float> %i.fn, %i.fi
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, splat (float 6.250000e-02)
  %i.fs = fadd reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fl
  %i.ft = fadd reassoc nsz arcp contract afn <4 x float> %i.fs, %i.fr ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ft, zeroinitializer
  %i.fv = select <4 x i1> %i.fu, <4 x float> zeroinitializer, <4 x float> %i.ft ; 2 uses
  store <4 x float> %i.fv, ptr %i.eq, align 4, !tbaa !11, !alias.scope !615, !noalias !610
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.ep
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ep
  %i.fy = load <4 x float>, ptr %i.fw, align 4, !tbaa !11, !noalias !598
  %i.fz = fsub reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fv
  store <4 x float> %i.fz, ptr %i.fx, align 4, !tbaa !11, !noalias !598
  %i.ga = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ga, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not82 = icmp eq i32 %.054121, %i.k            ; 2 uses
  %i.gb = shl nuw nsw i32 %.054121, 2
  %i.gc = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.gb) ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.gc ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.t

bb.j:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.j
  %.not.i.i59 = icmp slt i32 %i.ak, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.ak
  %i.ge = add nsw i32 %i.ak, -1
  %i.gf = and i32 %i.ge, %i.l                     ; 3 uses
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.hl, %._crit_edge.i65 ] ; 2 uses
  %i.gl = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.l, label %dwt_interleave_rows.exit.i61

bb.l:                                             ; preds = %bb.k
  %i.gm = sdiv i32 %.reass318.i, %i.ak            ; 4 uses
  br i1 %i.gg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gn = mul nsw i32 %i.gf, %i.gm                ; 2 uses
  %i.go = icmp sgt i32 %i.gn, %i.gl
  br i1 %i.go, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gp = sdiv i32 %i.gl, %i.gm
  %i.gq = srem i32 %i.gl, %i.gm
  %i.gr = shl nsw i32 %i.gq, %.054121
  %i.gs = add nsw i32 %i.gr, %i.gp
  br label %dwt_interleave_rows.exit.i61

bb.o:                                             ; preds = %bb.m
  %i.gt = sub nsw i32 %i.gl, %i.gn                ; 2 uses
  %i.gu = add nsw i32 %i.gm, -1                   ; 2 uses
  %i.gv = sdiv i32 %i.gt, %i.gu
  %i.gw = add nsw i32 %i.gv, %i.gf
  %i.gx = srem i32 %i.gt, %i.gu
  %i.gy = shl nsw i32 %i.gx, %.054121
  %i.gz = add nsw i32 %i.gw, %i.gy
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.o, %bb.n, %bb.k
  %.1.i.i62 = phi i32 [ %i.gl, %bb.k ], [ %i.gs, %bb.n ], [ %i.gz, %bb.o ] ; 4 uses
  %i.ha = sub nsw i32 %.1.i.i62, %i.ak
  %i.hb = call i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = mul i64 %3, %i.hc                       ; 3 uses
  %i.he = sext i32 %.1.i.i62 to i64
  %i.hf = mul i64 %3, %i.he                       ; 3 uses
  %i.hg = add i32 %.1.i.i62, %i.ak
  %..i = call i32 @llvm.smin.i32(i32 %i.hg, i32 %invariant.op.i)
  %i.hh = sext i32 %..i to i64
  %i.hi = mul i64 %3, %i.hh                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.hj = add nsw i32 %.1.i.i62, 3
  %i.hk = sext i32 %i.hj to i64
  br label %bb.p

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.hl = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond333.not.i = icmp eq i64 %i.hl, %4
  br i1 %exitcond333.not.i, label %guide_laplacians.exit, label %bb.k

bb.p:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.hm = add i64 %indvars.iv.i, %i.hf
  %i.hn = shl i64 %i.hm, 2                        ; 7 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !11, !alias.scope !621, !noalias !625 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !626
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hn ; 2 uses
  %i.hs = or disjoint i64 %i.hn, 1                ; 2 uses
  %i.ht = or disjoint i64 %i.hn, 2                ; 3 uses
  %i.hu = load <4 x float>, ptr %i.hr, align 16, !tbaa !11, !alias.scope !616, !noalias !627 ; 7 uses
  store <4 x float> %i.hu, ptr %i.a, align 16, !tbaa !11, !noalias !626
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.hq, 0.000000e+00 ; 2 uses
  br i1 %i.hv, label %.preheader294.i, label %bb.q

.preheader294.i:                                  ; preds = %bb.p
  %i.hw = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.hx = add i32 %i.ak, %i.hw
  %i.hy = call i32 @llvm.smin.i32(i32 %i.hx, i32 %i.q)
  %smin327.i = sext i32 %i.hy to i64              ; 3 uses
  %i.hz = add i64 %i.hf, %smin327.i
  %i.ia = shl i64 %i.hz, 4
  %scevgep.i = getelementptr i8, ptr %6, i64 %i.ia
  %i.ib = sub i32 %i.hw, %i.ak
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ib, i32 0)
  %i.ic = zext nneg i32 %smax.i to i64            ; 3 uses
  %i.id = add i64 %i.hi, %i.ic
  %i.ie = shl i64 %i.id, 4
  %scevgep326.i = getelementptr i8, ptr %6, i64 %i.ie
  %i.if = add i64 %i.hi, %smin327.i
  %i.ig = shl i64 %i.if, 4
  %scevgep328.i = getelementptr i8, ptr %6, i64 %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.ih = add i64 %i.hd, %i.ic
  %.idx.i = shl i64 %i.ih, 4
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.ij = add i64 %indvars.iv.i, %i.hd
  %.idx262.i = shl i64 %i.ij, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.il = add i64 %i.hd, %smin327.i
  %.idx263.i = shl i64 %i.il, 4
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.in = add i64 %i.hf, %i.ic
  %.idx264.i = shl i64 %i.in, 4
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.ip = add i64 %indvars.iv.i, %i.hi
  %.idx267.i = shl i64 %i.ip, 4
  %i.iq = getelementptr i8, ptr %6, i64 %.idx267.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ii, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ik, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.im, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.io, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep326.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.iq, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep328.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !626
  %i.ir = load <4 x float>, ptr %i.b, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.is = load <4 x float>, ptr %i.u, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.it = load <4 x float>, ptr %i.v, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iu = load <4 x float>, ptr %i.w, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iv = load <4 x float>, ptr %i.x, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iw = load <4 x float>, ptr %i.y, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.ix = load <4 x float>, ptr %i.z, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iy = load <4 x float>, ptr %i.aa, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iz = load <4 x float>, ptr %i.ab, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.ja = shufflevector <4 x float> %i.is, <4 x float> %i.ir, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x float> %i.it, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x float> %i.iu, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.je = shufflevector <8 x float> %i.jc, <8 x float> %i.jd, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jf = shufflevector <4 x float> %i.iv, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jg = shufflevector <8 x float> %i.je, <8 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.iw, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ji = shufflevector <8 x float> %i.jg, <8 x float> %i.jh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %i.ix, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_2
