Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pooling_layer?download=true
inline.NumInlined: 1291
inline.NumDeleted: 445
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv3dnn16PoolingLayerImpl14PoolingInvokerclERKNS_5RangeE:bb.a
  %i.ku = tail call noundef float @llvm.floor.f32(float %i.kt)
  %i.kv = fptosi float %i.ku to i32
  %i.kw = extractelement <2 x float> %i.ks, i64 1
  %i.kx = tail call noundef float @llvm.ceil.f32(float %i.kw)
  %i.ky = fptosi float %i.kx to i32
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

bb.as:                                            ; preds = %bb.ah
  %i.kz = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.la = load ptr, ptr %i.ft, align 8, !tbaa !76 ; 2 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = icmp eq i64 %i.ld, 24
  br i1 %i.le, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lf = load i64, ptr %i.la, align 8, !tbaa !56
  %i.lg = trunc i64 %i.lf to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.lh = phi i32 [ %i.lg, %bb.at ], [ 0, %bb.as ]
  %i.li = mul nsw i32 %i.ey, %i.gn
  %i.lj = sub nsw i32 %i.li, %i.lh
  %.fr = freeze i32 %i.lj                         ; 3 uses
  %i.lk = add nsw i32 %.fr, %i.ez
  %i.ll = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !56
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = add i32 %i.ci, %i.ln
  %.sroa.speculated522 = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.lk) ; 2 uses
  %i.lp = mul nsw i32 %i.fb, %i.gk
  %i.lq = load i32, ptr %i.fw, align 4, !tbaa !134
  %i.lr = sub nsw i32 %i.lp, %i.lq                ; 2 uses
  %i.ls = add nsw i32 %i.lr, %i.fa
  %i.lt = load i32, ptr %i.fx, align 4, !tbaa !136
  %i.lu = add nsw i32 %i.lt, %i.cm
  %.sroa.speculated514 = tail call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.ls)
  %i.lv = load ptr, ptr %i.o, align 8, !tbaa !129 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !84
  %i.ly = icmp slt i32 %i.lx, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !211 ; 2 uses
  br i1 %i.ly, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 128
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !56
  %sext668 = shl i64 %i.gp, 32
  %i.md = ashr exact i64 %sext668, 32
  %i.me = mul i64 %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.me
  %.pre856 = shl i64 %i.gr, 32
  %.pre857 = ashr exact i64 %.pre856, 32
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit

bb.aw:                                            ; preds = %bb.au
  %sext666 = shl i64 %i.gr, 32
  %i.mg = ashr exact i64 %sext666, 32             ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lv, i64 128
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !56
  %i.mj = mul i64 %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mj
  %sext667 = shl i64 %i.gp, 32
  %i.ml = ashr exact i64 %sext667, 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lv, i64 136
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !56
  %i.mo = mul i64 %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mo
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit:                   ; preds = %bb.aw, %bb.av
  %.pre854.pre-phi = phi i64 [ %i.mg, %bb.aw ], [ %.pre857, %bb.av ]
  %.0291 = phi ptr [ %i.mp, %bb.aw ], [ %i.mf, %bb.av ]
  %i.mq = sub nsw i32 %.sroa.speculated522, %.fr
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread:            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit, %bb.ap, %bb.ar, %bb.aq
  %.pre-phi855 = phi i64 [ %.pre854.pre-phi, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.gx, %bb.ap ], [ %i.jq, %bb.ar ], [ %i.gx, %bb.aq ] ; 4 uses
  %i.mr = phi i32 [ %i.mq, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %.0291658 = phi ptr [ %.0291, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.iz, %bb.ap ], [ null, %bb.ar ], [ %i.jk, %bb.aq ] ; 10 uses
  %.0634657 = phi i32 [ %i.lr, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.hw, %bb.ap ], [ %i.kv, %bb.ar ], [ %i.hw, %bb.aq ] ; 2 uses
  %.0635656 = phi i32 [ %.sroa.speculated514, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.ic, %bb.ap ], [ %i.ky, %bb.ar ], [ %i.ic, %bb.aq ] ; 2 uses
  %.0637655 = phi i32 [ %.sroa.speculated522, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %i.ms = phi i32 [ %spec.select, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 6 uses
  %.sroa.speculated548 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.0637655) ; 6 uses
  %i.mt = sub nsw i32 %.0635656, %.0634657
  %.sroa.speculated502 = tail call i32 @llvm.smax.i32(i32 %.0634657, i32 0) ; 15 uses
  %.sroa.speculated576 = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 %.0635656) ; 13 uses
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !131 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !211
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 128
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !56
  %i.mz = mul i64 %i.my, %.pre-phi855
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mz
  %sext669 = shl i64 %i.gp, 32
  %i.nb = ashr exact i64 %sext669, 32             ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 136
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !56
  %i.ne = mul i64 %i.nd, %i.nb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ne
  %sext670 = shl i64 %i.gm, 32
  %i.ng = ashr exact i64 %sext670, 32             ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 144
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !56
  %i.nj = mul i64 %i.ni, %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nj
  %i.nl = mul nsw i32 %i.cl, %i.gk
  %i.nm = sext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nm ; 9 uses
  %i.no = load ptr, ptr %i.fy, align 8, !tbaa !132 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !211 ; 2 uses
  %.not = icmp eq ptr %i.nq, null
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 128
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !56
  %i.nt = mul i64 %i.ns, %.pre-phi855
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 136
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !56
  %i.nx = mul i64 %i.nw, %i.nb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !56
  %i.ob = mul i64 %i.oa, %i.ng
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.nm
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread, %bb.ax
  %i.oe = phi ptr [ %i.od, %bb.ax ], [ null, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread ] ; 6 uses
  %i.of = sub nuw i64 %.sroa.speculated604, %.0296780
  %i.og = trunc i64 %i.of to i32
  %i.oh = sub nsw i32 %i.cl, %i.gh
  %.sroa.speculated495 = tail call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.og) ; 6 uses
  %i.oi = sext i32 %.sroa.speculated495 to i64
  %i.oj = add i64 %.0296780, %i.oi                ; 2 uses
  %i.ok = add nsw i32 %.sroa.speculated495, %i.gh ; 4 uses
  switch i32 %i.fp, label %bb.bt [
    i32 0, label %.preheader687
    i32 1, label %bb.bj
    i32 3, label %bb.bj
    i32 4, label %bb.bp
  ]

.preheader687:                                    ; preds = %bb.ay
  %i.ol = icmp sgt i32 %.sroa.speculated495, 0
  br i1 %i.ol, label %.lr.ph766, label %.loopexit

.lr.ph766:                                        ; preds = %.preheader687
  %i.om = load i32, ptr %i.ga, align 8, !tbaa !133 ; 2 uses
  %.not318 = icmp slt i32 %.sroa.speculated502, %.sroa.speculated576
  %i.on = icmp ne ptr %i.oe, null                 ; 2 uses
  %or.cond = select i1 %i.fj, i1 %i.on, i1 false  ; 2 uses
  %i.oo = icmp slt i32 %i.ms, %.sroa.speculated548 ; 2 uses
  %i.op = mul i32 %i.fg, %i.gh
  %i.oq = sub i32 %i.op, %i.om
  %sext898 = shl i64 %i.gg, 32
  %i.or = ashr exact i64 %sext898, 32
  %i.os = zext i32 %i.om to i64
  %i.ot = sext i32 %i.ok to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph766, %bb.bi
  %indvars.iv829 = phi i64 [ %i.or, %.lr.ph766 ], [ %indvars.iv.next830, %bb.bi ] ; 6 uses
  %indvars.iv815 = phi i32 [ %i.oq, %.lr.ph766 ], [ %indvars.iv.next816, %bb.bi ] ; 3 uses
  %i.ou = mul i64 %indvars.iv829, %i.gf
  %i.ov = sub i64 %i.ou, %i.os                    ; 2 uses
  %i.ow = add i64 %i.ov, %.in
  %i.ox = trunc i64 %i.ow to i32
  %.sroa.speculated486 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.ox) ; 4 uses
  %i.oy = trunc i64 %i.ov to i32
  %.sroa.speculated480 = tail call i32 @llvm.smax.i32(i32 %i.oy, i32 0) ; 2 uses
  %.not317 = icmp slt i32 %.sroa.speculated480, %.sroa.speculated486
  %or.cond659 = select i1 %.not317, i1 %.not318, i1 false
  br i1 %or.cond659, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %indvars.iv829
  store float 0.000000e+00, ptr %i.oz, align 4, !tbaa !212
  br i1 %or.cond, label %.sink.split, label %bb.bi

bb.bb:                                            ; preds = %bb.az
  br i1 %i.t, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.pa = zext nneg i32 %.sroa.speculated480 to i64
  %.idx = shl nuw nsw i64 %i.pa, 2                ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0291658, i64 %.idx ; 5 uses
  %i.pc = zext nneg i32 %.sroa.speculated486 to i64
  %.idx671 = shl nuw nsw i64 %i.pc, 2             ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0291658, i64 %.idx671 ; 2 uses
  %i.pe = add nuw nsw i64 %.idx, 4
  %.not17.i.i = icmp samesign eq i64 %i.pe, %.idx671
  br i1 %.not17.i.i, label %_ZSt11max_elementIPKfET_S2_S2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bc
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %.pre.i.i = load float, ptr %i.pb, align 4, !tbaa !212
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.pg = phi float [ %i.pl, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ph = phi ptr [ %i.pk, %.lr.ph.i.i ], [ %i.pf, %.lr.ph.preheader.i.i ] ; 3 uses
  %.018.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.pb, %.lr.ph.preheader.i.i ]
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !212 ; 2 uses
  %i.pj = fcmp olt float %i.pg, %i.pi             ; 2 uses
  %spec.select.i.i = select i1 %i.pj, ptr %i.ph, ptr %.018.i.i ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.pk, %i.pd
  %i.pl = select i1 %i.pj, float %i.pi, float %i.pg
  br i1 %.not.i.i, label %_ZSt11max_elementIPKfET_S2_S2_.exit, label %.lr.ph.i.i, !llvm.loop !189

_ZSt11max_elementIPKfET_S2_S2_.exit:              ; preds = %.lr.ph.i.i, %bb.bc
  %.011.i.i = phi ptr [ %i.pb, %bb.bc ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not320 = icmp eq ptr %.011.i.i, %i.pd
  br i1 %.not320, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %_ZSt11max_elementIPKfET_S2_S2_.exit
  %i.pm = load float, ptr %.011.i.i, align 4, !tbaa !212
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %indvars.iv829
  store float %i.pm, ptr %i.pn, align 4, !tbaa !212
  br i1 %or.cond, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.po = ptrtoint ptr %.011.i.i to i64
  %i.pp = ptrtoint ptr %i.pb to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = ashr exact i64 %i.pq, 2
  %i.ps = sitofp i64 %i.pr to float
  br label %.sink.split

bb.bf:                                            ; preds = %bb.bb
  br i1 %i.fj, label %.preheader683, label %.preheader684

.preheader684:                                    ; preds = %bb.bf
  br i1 %i.oo, label %.preheader680.us.us.preheader, label %.sink.split

.preheader680.us.us.preheader:                    ; preds = %.preheader684
  %i.pt = zext nneg i32 %.sroa.speculated486 to i64
  %smax817 = tail call i32 @llvm.smax.i32(i32 %indvars.iv815, i32 0)
  %i.pu = zext nneg i32 %smax817 to i64
  br label %.preheader680.us.us

.preheader680.us.us:                              ; preds = %.preheader680.us.us.preheader, %._crit_edge722.split.us.us.us
  %.0278727.us.us = phi i32 [ %i.qe, %._crit_edge722.split.us.us.us ], [ %i.ms, %.preheader680.us.us.preheader ] ; 2 uses
  %.4726.us.us = phi float [ %.sroa.speculated472.us.us.us, %._crit_edge722.split.us.us.us ], [ f0xFF7FFFFF, %.preheader680.us.us.preheader ]
  %i.pv = mul i32 %.0278727.us.us, %i.cm
  br label %.preheader676.us.us.us

.preheader676.us.us.us:                           ; preds = %._crit_edge719.us.us.us, %.preheader680.us.us
  %.0277721.us.us.us = phi i32 [ %.sroa.speculated502, %.preheader680.us.us ], [ %i.qd, %._crit_edge719.us.us.us ] ; 2 uses
  %.5720.us.us.us = phi float [ %.4726.us.us, %.preheader680.us.us ], [ %.sroa.speculated472.us.us.us, %._crit_edge719.us.us.us ]
  %reass.add672.us.us.us = add i32 %.0277721.us.us.us, %i.pv
  %reass.mul673.us.us.us = mul i32 %reass.add672.us.us.us, %i.da
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader676.us.us.us
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %bb.bg ], [ %i.pu, %.preheader676.us.us.us ] ; 2 uses
  %.6716.us.us.us = phi float [ %.sroa.speculated472.us.us.us, %bb.bg ], [ %.5720.us.us.us, %.preheader676.us.us.us ] ; 2 uses
  %i.pw = trunc nuw nsw i64 %indvars.iv818 to i32
  %i.px = add i32 %reass.mul673.us.us.us, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %.0291658, i64 %i.py
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !212 ; 2 uses
  %i.qb = fcmp olt float %.6716.us.us.us, %i.qa
  %.sroa.speculated472.us.us.us = select i1 %i.qb, float %i.qa, float %.6716.us.us.us ; 4 uses
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %i.qc = icmp samesign ult i64 %indvars.iv.next819, %i.pt
  br i1 %i.qc, label %bb.bg, label %._crit_edge719.us.us.us, !llvm.loop !190

._crit_edge719.us.us.us:                          ; preds = %bb.bg
  %i.qd = add nuw nsw i32 %.0277721.us.us.us, 1   ; 2 uses
  %exitcond821.not = icmp eq i32 %i.qd, %.sroa.speculated576
  br i1 %exitcond821.not, label %._crit_edge722.split.us.us.us, label %.preheader676.us.us.us, !llvm.loop !191

._crit_edge722.split.us.us.us:                    ; preds = %._crit_edge719.us.us.us
  %i.qe = add nuw nsw i32 %.0278727.us.us, 1      ; 2 uses
  %exitcond822.not = icmp eq i32 %i.qe, %.sroa.speculated548
  br i1 %exitcond822.not, label %.sink.split, label %.preheader680.us.us, !llvm.loop !192

.preheader683:                                    ; preds = %bb.bf
  br i1 %i.oo, label %.preheader679.us.us.preheader, label %._crit_edge754

.preheader679.us.us.preheader:                    ; preds = %.preheader683
  %i.qf = zext nneg i32 %.sroa.speculated486 to i64
  %smax823 = tail call i32 @llvm.smax.i32(i32 %indvars.iv815, i32 0)
  %i.qg = zext nneg i32 %smax823 to i64
  br label %.preheader679.us.us

.preheader679.us.us:                              ; preds = %.preheader679.us.us.preheader, %._crit_edge746.split.us.us.us
  %.0281753.us.us = phi i32 [ %i.qq, %._crit_edge746.split.us.us.us ], [ %i.ms, %.preheader679.us.us.preheader ] ; 2 uses
  %.0282752.us.us = phi i32 [ %.3.us.us.us, %._crit_edge746.split.us.us.us ], [ -1, %.preheader679.us.us.preheader ]
  %.0638751.us.us = phi float [ %.3641.us.us.us, %._crit_edge746.split.us.us.us ], [ f0xFF7FFFFF, %.preheader679.us.us.preheader ]
  %i.qh = mul i32 %.0281753.us.us, %i.cm
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge740.us.us.us, %.preheader679.us.us
  %.0280745.us.us.us = phi i32 [ %.sroa.speculated502, %.preheader679.us.us ], [ %i.qp, %._crit_edge740.us.us.us ] ; 2 uses
  %.1283744.us.us.us = phi i32 [ %.0282752.us.us, %.preheader679.us.us ], [ %.3.us.us.us, %._crit_edge740.us.us.us ]
  %.1639743.us.us.us = phi float [ %.0638751.us.us, %.preheader679.us.us ], [ %.3641.us.us.us, %._crit_edge740.us.us.us ]
  %reass.add674.us.us.us = add i32 %.0280745.us.us.us, %i.qh
  %reass.mul675.us.us.us = mul i32 %reass.add674.us.us.us, %i.da
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.preheader.us.us.us
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %bb.bh ], [ %i.qg, %.preheader.us.us.us ] ; 2 uses
  %.2284737.us.us.us = phi i32 [ %.3.us.us.us, %bb.bh ], [ %.1283744.us.us.us, %.preheader.us.us.us ]
  %.2640736.us.us.us = phi float [ %.3641.us.us.us, %bb.bh ], [ %.1639743.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.qi = trunc nuw nsw i64 %indvars.iv824 to i32
  %i.qj = add i32 %reass.mul675.us.us.us, %i.qi   ; 2 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %.0291658, i64 %i.qk
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !212 ; 2 uses
  %i.qn = fcmp ogt float %i.qm, %.2640736.us.us.us ; 2 uses
  %.3641.us.us.us = select i1 %i.qn, float %i.qm, float %.2640736.us.us.us ; 4 uses
  %.3.us.us.us = select i1 %i.qn, i32 %i.qj, i32 %.2284737.us.us.us ; 4 uses
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %i.qo = icmp samesign ult i64 %indvars.iv.next825, %i.qf
  br i1 %i.qo, label %bb.bh, label %._crit_edge740.us.us.us, !llvm.loop !193

._crit_edge740.us.us.us:                          ; preds = %bb.bh
  %i.qp = add nuw nsw i32 %.0280745.us.us.us, 1   ; 2 uses
  %exitcond827.not = icmp eq i32 %i.qp, %.sroa.speculated576
  br i1 %exitcond827.not, label %._crit_edge746.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !194

._crit_edge746.split.us.us.us:                    ; preds = %._crit_edge740.us.us.us
  %i.qq = add nuw nsw i32 %.0281753.us.us, 1      ; 2 uses
  %exitcond828.not = icmp eq i32 %i.qq, %.sroa.speculated548
  br i1 %exitcond828.not, label %._crit_edge754.loopexit, label %.preheader679.us.us, !llvm.loop !195

._crit_edge754.loopexit:                          ; preds = %._crit_edge746.split.us.us.us
  %i.qr = sitofp i32 %.3.us.us.us to float
  br label %._crit_edge754

._crit_edge754:                                   ; preds = %._crit_edge754.loopexit, %.preheader683
  %.0638.lcssa = phi float [ f0xFF7FFFFF, %.preheader683 ], [ %.3641.us.us.us, %._crit_edge754.loopexit ]
  %.0282.lcssa = phi float [ -1.000000e+00, %.preheader683 ], [ %i.qr, %._crit_edge754.loopexit ]
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %indvars.iv829
  store float %.0638.lcssa, ptr %i.qs, align 4, !tbaa !212
  br i1 %i.on, label %.sink.split, label %bb.bi

.sink.split:                                      ; preds = %._crit_edge722.split.us.us.us, %.preheader684, %._crit_edge754, %bb.ba, %bb.be
  %.sink908 = phi ptr [ %i.oe, %._crit_edge754 ], [ %i.oe, %bb.ba ], [ %i.oe, %bb.be ], [ %i.nn, %.preheader684 ], [ %i.nn, %._crit_edge722.split.us.us.us ]
  %.4.lcssa.sink = phi float [ %.0282.lcssa, %._crit_edge754 ], [ -1.000000e+00, %bb.ba ], [ %i.ps, %bb.be ], [ f0xFF7FFFFF, %.preheader684 ], [ %.sroa.speculated472.us.us.us, %._crit_edge722.split.us.us.us ]
  %i.qt = getelementptr inbounds [4 x i8], ptr %.sink908, i64 %indvars.iv829
  store float %.4.lcssa.sink, ptr %i.qt, align 4, !tbaa !212
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %._crit_edge754, %bb.bd, %_ZSt11max_elementIPKfET_S2_S2_.exit, %bb.ba
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.qu = icmp slt i64 %indvars.iv.next830, %i.ot
  %indvars.iv.next816 = add i32 %indvars.iv815, %i.fg
  br i1 %i.qu, label %bb.az, label %.loopexit, !llvm.loop !196

bb.bj:                                            ; preds = %bb.ay, %bb.ay
  %i.qv = icmp sgt i32 %.sroa.speculated495, 0
  br i1 %i.qv, label %.lr.ph715, label %.loopexit

.lr.ph715:                                        ; preds = %bb.bj
  %i.qw = load i32, ptr %i.ga, align 8, !tbaa !133 ; 2 uses
  %i.qx = load i32, ptr %i.gb, align 8, !tbaa !135
  %i.qy = add nsw i32 %i.qx, %i.da
  %i.qz = load i8, ptr %i.gc, align 8, !tbaa !137, !range !67, !noundef !85
  %i.ra = trunc nuw i8 %i.qz to i1
  %i.rb = sub nsw i32 %.sroa.speculated548, %i.ms
  %i.rc = sub nsw i32 %.sroa.speculated576, %.sroa.speculated502
  %i.rd = mul nsw i32 %i.rb, %i.rc
  %i.re = mul i32 %i.mt, %i.mr
  %i.rf = icmp slt i32 %i.ms, %.sroa.speculated548
  %i.rg = icmp slt i32 %.sroa.speculated502, %.sroa.speculated576
  %i.rh = mul i32 %i.fg, %i.gh
  %i.ri = sub i32 %i.rh, %i.qw
  %sext897 = shl i64 %i.gg, 32
  %i.rj = ashr exact i64 %sext897, 32
  %i.rk = zext i32 %i.qw to i64
  %i.rl = sext i32 %i.ok to i64
  %i.rm = sub i32 %.sroa.speculated576, %.sroa.speculated502
  %.neg = add nuw i32 %.sroa.speculated502, 1
  %brmerge.not927 = select i1 %i.rf, i1 %i.rg, i1 false
  %xtraiter944 = and i32 %i.rm, 1
  %lcmp.mod945.not = icmp eq i32 %xtraiter944, 0
  %i.rn = add nuw nsw i32 %.sroa.speculated502, 1
  %i.ro = icmp eq i32 %.sroa.speculated576, %.neg
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph715, %_ZSt10accumulateIPKffET0_T_S3_S2_.exit
  %indvars.iv812 = phi i64 [ %i.rj, %.lr.ph715 ], [ %indvars.iv.next813, %_ZSt10accumulateIPKffET0_T_S3_S2_.exit ] ; 3 uses
  %indvars.iv805 = phi i32 [ %i.ri, %.lr.ph715 ], [ %indvars.iv.next806, %_ZSt10accumulateIPKffET0_T_S3_S2_.exit ] ; 2 uses
  %i.rp = mul i64 %indvars.iv812, %i.gf
  %i.rq = sub i64 %i.rp, %i.rk                    ; 2 uses
  %i.rr = add i64 %i.rq, %.in
  %i.rs = trunc i64 %i.rr to i32
  %.sroa.speculated449 = tail call i32 @llvm.smin.i32(i32 %i.qy, i32 %i.rs) ; 2 uses
end_hunk_0
