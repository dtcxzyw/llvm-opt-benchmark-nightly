Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-draw?download=true
inline.NumInlined: 414
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hb_raster_draw_render:bb.a
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !50
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.jz ; 2 uses
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !114
  %i.kj = add i16 %i.ki, %i.jd
  store i16 %i.kj, ptr %i.kh, align 2, !tbaa !114
  %.sroa.speculated272 = tail call i32 @llvm.umin.i32(i32 %.4560621, i32 %i.ka)
  %.sroa.speculated186 = tail call i32 @llvm.umax.i32(i32 %.4622, i32 %i.ka)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78

_ZL8cell_addPiPsjiiiiiiRjS1_.exit78:              ; preds = %bb.au, %bb.av, %bb.aw
  %.7563 = phi i32 [ %.sroa.speculated272, %bb.aw ], [ 0, %bb.av ], [ %.4560621, %bb.au ] ; 2 uses
  %.7 = phi i32 [ %.sroa.speculated186, %bb.aw ], [ %.4622, %bb.av ], [ %.4622, %bb.au ] ; 2 uses
  %indvars.iv.next656 = add nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count658
  br i1 %exitcond659.not, label %._crit_edge626, label %bb.at, !llvm.loop !89

bb.ax:                                            ; preds = %bb.al
  %i.kk = zext i32 %i.gt to i64
  %i.kl = shl i64 %i.kk, 40
  %i.km = ashr exact i64 %i.kl, 32
  %i.kn = sub nsw i64 %i.km, %.sroa.speculated471
  %i.ko = mul nsw i64 %i.kn, %i.hw
  %i.kp = sdiv i64 %i.ko, %i.ht
  %i.kq = trunc i64 %i.kp to i32                  ; 4 uses
  %i.kr = add nsw i32 %i.gr, %i.kq                ; 2 uses
  %i.ks = sub nsw i32 %i.gt, %.sroa.0408.0578     ; 5 uses
  %.not.i87 = icmp ult i32 %i.ks, %.sroa.10.0583
  br i1 %.not.i87, label %bb.ba, label %bb.ay, !prof !37

bb.ay:                                            ; preds = %bb.ax
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %bb.az, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88, !prof !11

bb.az:                                            ; preds = %bb.ay
  %i.ku = mul nsw i32 %i.gy, %i.kq
  %i.kv = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.kw = trunc i32 %i.ku to i16
  %i.kx = add i16 %i.kv, %i.kw
  store i16 %i.kx, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88

bb.ba:                                            ; preds = %bb.ax
  %i.ky = mul i32 %i.gu, %i.gy
  %i.kz = mul i32 %i.ky, %i.kq
  %i.la = zext nneg i32 %i.ks to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.la ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !50
  %i.ld = add nsw i32 %i.lc, %i.kz
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !50
  %i.le = mul nsw i32 %i.gy, %i.kq
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.la ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !114
  %i.lh = trunc i32 %i.le to i16
  %i.li = add i16 %i.lg, %i.lh
  store i16 %i.li, ptr %i.lf, align 2, !tbaa !114
  %.sroa.speculated266 = tail call i32 @llvm.umin.i32(i32 %.0556630, i32 %i.ks)
  %.sroa.speculated180 = tail call i32 @llvm.umax.i32(i32 %.0631, i32 %i.ks)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88

_ZL8cell_addPiPsjiiiiiiRjS1_.exit88:              ; preds = %bb.ay, %bb.az, %bb.ba
  %.12568 = phi i32 [ %.sroa.speculated266, %bb.ba ], [ 0, %bb.az ], [ %.0556630, %bb.ay ] ; 2 uses
  %.12 = phi i32 [ %.sroa.speculated180, %bb.ba ], [ %.0631, %bb.az ], [ %.0631, %bb.ay ] ; 2 uses
  %.0.i610 = add nsw i32 %i.gt, -1
  %i.lj = icmp sgt i32 %.0.i610, %i.gv
  br i1 %i.lj, label %.lr.ph615, label %._crit_edge616

.lr.ph615:                                        ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88
  %i.lk = mul i32 %i.gy, %i.hz
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = sub i32 0, %i.hz                        ; 2 uses
  %i.ln = shl i32 %i.gy, 8
  %i.lo = mul i32 %i.ln, %i.lm
  %i.lp = mul nsw i32 %i.gy, %i.lm
  %i.lq = trunc i32 %i.lp to i16
  %narrow715 = add nsw i32 %i.gt, -1
  %i.lr = sext i32 %narrow715 to i64
  %i.ls = sext i32 %i.gv to i64
  br label %bb.be

._crit_edge616:                                   ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88
  %.2558.lcssa = phi i32 [ %.12568, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %.10566, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %.10, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 3 uses
  %.0131.i.lcssa = phi i32 [ %i.kr, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %i.mm, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %i.lt = sub nsw i32 %i.gv, %.sroa.0408.0578     ; 5 uses
  %.not.i85 = icmp ult i32 %i.lt, %.sroa.10.0583
  br i1 %.not.i85, label %bb.bd, label %bb.bb, !prof !37

bb.bb:                                            ; preds = %._crit_edge616
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %bb.bc, label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit, !prof !11

bb.bc:                                            ; preds = %bb.bb
  %i.lv = sub nsw i32 %i.gs, %.0131.i.lcssa
  %i.lw = mul nsw i32 %i.lv, %i.gy
  %i.lx = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.ly = trunc i32 %i.lw to i16
  %i.lz = add i16 %i.lx, %i.ly
  store i16 %i.lz, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.bd:                                            ; preds = %._crit_edge616
  %i.ma = sub nsw i32 %i.gs, %.0131.i.lcssa
  %i.mb = or disjoint i32 %i.gw, 256
  %i.mc = mul i32 %i.ma, %i.gy                    ; 2 uses
  %i.md = mul i32 %i.mc, %i.mb
  %i.me = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.me ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !50
  %i.mh = add nsw i32 %i.mg, %i.md
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !50
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.me ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !114
  %i.mk = trunc i32 %i.mc to i16
  %i.ml = add i16 %i.mj, %i.mk
  store i16 %i.ml, ptr %i.mi, align 2, !tbaa !114
  %.sroa.speculated260 = tail call i32 @llvm.umin.i32(i32 %.2558.lcssa, i32 %i.lt)
  %.sroa.speculated174 = tail call i32 @llvm.umax.i32(i32 %.2.lcssa, i32 %i.lt)
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.be:                                            ; preds = %.lr.ph615, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84
  %indvars.iv652 = phi i64 [ %i.lr, %.lr.ph615 ], [ %indvars.iv.next653, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %.0131.i613 = phi i32 [ %i.kr, %.lr.ph615 ], [ %i.mm, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ]
  %.2612 = phi i32 [ %.12, %.lr.ph615 ], [ %.10, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 3 uses
  %.2558611 = phi i32 [ %.12568, %.lr.ph615 ], [ %.10566, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %i.mm = sub nsw i32 %.0131.i613, %i.hz          ; 2 uses
  %i.mn = sub nsw i64 %indvars.iv652, %i.dx       ; 4 uses
  %i.mo = trunc nsw i64 %i.mn to i32              ; 3 uses
  %.not.i83 = icmp ugt i32 %.sroa.10.0583, %i.mo
  br i1 %.not.i83, label %bb.bh, label %bb.bf, !prof !37

bb.bf:                                            ; preds = %bb.be
  %i.mp = icmp slt i64 %i.mn, 0
  br i1 %i.mp, label %bb.bg, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84, !prof !11

bb.bg:                                            ; preds = %bb.bf
  %i.mq = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.mr = sub i16 %i.mq, %i.ll
  store i16 %i.mr, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84

bb.bh:                                            ; preds = %bb.be
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.mn ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !50
  %i.mu = add nsw i32 %i.mt, %i.lo
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !50
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.mn ; 2 uses
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !114
  %i.mx = add i16 %i.mw, %i.lq
  store i16 %i.mx, ptr %i.mv, align 2, !tbaa !114
  %.sroa.speculated254 = tail call i32 @llvm.umin.i32(i32 %.2558611, i32 %i.mo)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.2612, i32 %i.mo)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84

_ZL8cell_addPiPsjiiiiiiRjS1_.exit84:              ; preds = %bb.bf, %bb.bg, %bb.bh
  %.10566 = phi i32 [ %.sroa.speculated254, %bb.bh ], [ 0, %bb.bg ], [ %.2558611, %bb.bf ] ; 2 uses
  %.10 = phi i32 [ %.sroa.speculated, %bb.bh ], [ %.2612, %bb.bg ], [ %.2612, %bb.bf ] ; 2 uses
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, -1 ; 2 uses
  %i.my = icmp sgt i64 %indvars.iv.next653, %i.ls
  br i1 %i.my, label %bb.be, label %._crit_edge616, !llvm.loop !90

_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit: ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.aq, %bb.ar, %bb.as, %bb.bb, %bb.bc, %bb.bd, %bb.af
  %.5561 = phi i32 [ %.0556630, %bb.af ], [ %.4560.lcssa, %bb.aq ], [ %.0556630, %bb.ai ], [ %.sroa.speculated290, %bb.ak ], [ 0, %bb.aj ], [ %.sroa.speculated278, %bb.as ], [ 0, %bb.ar ], [ %.sroa.speculated260, %bb.bd ], [ 0, %bb.bc ], [ %.2558.lcssa, %bb.bb ]
  %.5 = phi i32 [ %.0631, %bb.af ], [ %.4.lcssa, %bb.aq ], [ %.0631, %bb.ai ], [ %.sroa.speculated204, %bb.ak ], [ %.0631, %bb.aj ], [ %.sroa.speculated192, %bb.as ], [ %.4.lcssa, %bb.ar ], [ %.sroa.speculated174, %bb.bd ], [ %.2.lcssa, %bb.bc ], [ %.2.lcssa, %bb.bb ]
  %i.mz = add i32 %.060632, 1
  %i.na = zext i32 %.060632 to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.na
  store i32 %i.fr, ptr %i.nb, align 4, !tbaa !50
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ae, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit
  %.1557 = phi i32 [ %.5561, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.0556630, %bb.ae ] ; 3 uses
  %.1555 = phi i32 [ %.5, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.0631, %bb.ae ] ; 3 uses
  %.161 = phi i32 [ %i.mz, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.060632, %bb.ae ] ; 3 uses
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %._crit_edge636, label %bb.ae, !llvm.loop !91

bb.bj:                                            ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.nc = load ptr, ptr %i.dw, align 8, !tbaa !119
  %i.nd = trunc nuw i64 %indvars.iv669 to i32
  %i.ne = mul i32 %.sroa.26.1, %i.nd
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf ; 2 uses
  %i.nh = load ptr, ptr %i.dv, align 8, !tbaa !103 ; 2 uses
  %i.ni = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.nj = add nuw i32 %.0556.lcssa723, 7
  %.not88.i = icmp ugt i32 %i.nj, %.0.lcssa725
  br i1 %.not88.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.bj
  %.082.lcssa.i = phi i32 [ %.0556.lcssa723, %bb.bj ], [ %i.ql, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.bj ], [ %i.pk, %.lr.ph.i ] ; 2 uses
  %.not8592.i = icmp ugt i32 %.082.lcssa.i, %.0.lcssa725
  br i1 %.not8592.i, label %_ZL18sweep_row_to_alphaPhPiPsjj.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %.preheader.i
  %i.nk = zext nneg i32 %.082.lcssa.i to i64
  %2 = add nuw nsw i32 %.0.lcssa725, 1
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %bb.bj, %.lr.ph.i
  %.090.i = phi i32 [ %i.pk, %.lr.ph.i ], [ 0, %bb.bj ]
  %.08289.i = phi i32 [ %i.ql, %.lr.ph.i ], [ %.0556.lcssa723, %bb.bj ] ; 10 uses
  %i.nl = zext i32 %.08289.i to i64               ; 3 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nl ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !114, !alias.scope !122
  %i.no = sext i16 %i.nn to i32
  %i.np = add nsw i32 %.090.i, %i.no              ; 2 uses
  %i.nq = add i32 %.08289.i, 1
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !114, !alias.scope !122
  %i.nu = sext i16 %i.nt to i32
  %i.nv = add nsw i32 %i.np, %i.nu                ; 2 uses
  %i.nw = add i32 %.08289.i, 2
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nx
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !114, !alias.scope !122
  %i.oa = sext i16 %i.nz to i32
  %i.ob = add nsw i32 %i.nv, %i.oa                ; 2 uses
  %i.oc = add i32 %.08289.i, 3
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.od
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !114, !alias.scope !122
  %i.og = sext i16 %i.of to i32
  %i.oh = add nsw i32 %i.ob, %i.og                ; 2 uses
  %i.oi = insertelement <4 x i32> poison, i32 %i.np, i64 0
  %i.oj = insertelement <4 x i32> %i.oi, i32 %i.nv, i64 1
  %i.ok = insertelement <4 x i32> %i.oj, i32 %i.ob, i64 2
  %i.ol = insertelement <4 x i32> %i.ok, i32 %i.oh, i64 3
  %i.om = shl nsw <4 x i32> %i.ol, splat (i32 9)
  %i.on = add i32 %.08289.i, 4
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.oo
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !114, !alias.scope !122
  %i.or = sext i16 %i.oq to i32
  %i.os = add nsw i32 %i.oh, %i.or                ; 2 uses
  %i.ot = add i32 %.08289.i, 5
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ou
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !114, !alias.scope !122
  %i.ox = sext i16 %i.ow to i32
  %i.oy = add nsw i32 %i.os, %i.ox                ; 2 uses
  %i.oz = add i32 %.08289.i, 6
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.pa
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !114, !alias.scope !122
  %i.pd = sext i16 %i.pc to i32
  %i.pe = add nsw i32 %i.oy, %i.pd                ; 2 uses
  %i.pf = add i32 %.08289.i, 7
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !114, !alias.scope !122
  %i.pj = sext i16 %i.pi to i32
  %i.pk = add nsw i32 %i.pe, %i.pj                ; 3 uses
  %i.pl = insertelement <4 x i32> poison, i32 %i.os, i64 0
  %i.pm = insertelement <4 x i32> %i.pl, i32 %i.oy, i64 1
  %i.pn = insertelement <4 x i32> %i.pm, i32 %i.pe, i64 2
  %i.po = insertelement <4 x i32> %i.pn, i32 %i.pk, i64 3
  %i.pp = shl nsw <4 x i32> %i.po, splat (i32 9)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nl ; 3 uses
  %i.pr = load <4 x i32>, ptr %i.pq, align 1, !tbaa !123, !alias.scope !121
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.pt = load <4 x i32>, ptr %i.ps, align 1, !tbaa !123, !alias.scope !121
  %i.pu = sub <4 x i32> %i.om, %i.pr
  %i.pv = sub <4 x i32> %i.pp, %i.pt
  %i.pw = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.pu, i1 false)
  %i.px = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.pv, i1 false)
  %i.py = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.pw, <4 x i32> splat (i32 131072))
  %i.pz = mul <4 x i32> %i.py, splat (i32 255)
  %i.qa = add <4 x i32> %i.pz, splat (i32 65536)
  %i.qb = ashr <4 x i32> %i.qa, splat (i32 17)
  %i.qc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.px, <4 x i32> splat (i32 131072))
  %i.qd = mul <4 x i32> %i.qc, splat (i32 255)
  %i.qe = add <4 x i32> %i.qd, splat (i32 65536)
  %i.qf = ashr <4 x i32> %i.qe, splat (i32 17)
  %i.qg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qb, <4 x i32> %i.qf)
  %i.qh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.qg, <8 x i16> poison)
  %i.qi = bitcast <16 x i8> %i.qh to <2 x i64>
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nl
  %i.qk = extractelement <2 x i64> %i.qi, i64 0
  store i64 %i.qk, ptr %i.qj, align 1, !tbaa !123, !alias.scope !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pq, i8 0, i64 32, i1 false), !alias.scope !121
  store <2 x i64> zeroinitializer, ptr %i.nm, align 2, !tbaa !123, !alias.scope !122
  %i.ql = add i32 %.08289.i, 8                    ; 2 uses
  %i.qm = add i32 %.08289.i, 15
  %.not.i150 = icmp ugt i32 %i.qm, %.0.lcssa725
  br i1 %.not.i150, label %.preheader.i, label %.lr.ph.i, !llvm.loop !96

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv665 = phi i64 [ %i.nk, %.lr.ph95.i.preheader ], [ %indvars.iv.next666, %.lr.ph95.i ] ; 4 uses
  %.294.i = phi i32 [ %.0.lcssa.i, %.lr.ph95.i.preheader ], [ %i.qq, %.lr.ph95.i ]
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %indvars.iv665 ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !114, !alias.scope !122
  %i.qp = sext i16 %i.qo to i32
  %i.qq = add nsw i32 %.294.i, %i.qp              ; 3 uses
  %i.qr = shl nsw i32 %i.qq, 9
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv665 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !50, !alias.scope !121
  %i.qu = sub nsw i32 %i.qr, %i.qt
  %i.qv = tail call i32 @llvm.abs.i32(i32 %i.qu, i1 true)
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.qv, i32 131072)
  %i.qw = mul nuw nsw i32 %spec.store.select.i, 255
  %i.qx = add nuw nsw i32 %i.qw, 65536
  %i.qy = lshr i32 %i.qx, 17
  %i.qz = trunc nuw i32 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ng, i64 %indvars.iv665
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !123, !alias.scope !120
  store i32 0, ptr %i.qs, align 4, !tbaa !50, !alias.scope !121
  store i16 0, ptr %i.qn, align 2, !tbaa !114, !alias.scope !122
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next666 to i32
  %exitcond668.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond668.not, label %_ZL18sweep_row_to_alphaPhPiPsjj.exit, label %.lr.ph95.i, !llvm.loop !97

_ZL18sweep_row_to_alphaPhPiPsjj.exit:             ; preds = %.lr.ph95.i, %.preheader.i
  %.2.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.qq, %.lr.ph95.i ] ; 2 uses
  %.not71 = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not71, label %_ZL9hb_memsetPvij.exit152, label %bb.bk

bb.bk:                                            ; preds = %_ZL18sweep_row_to_alphaPhPiPsjj.exit
  %i.rb = xor i32 %.0.lcssa725, -1
  %i.rc = add nsw i32 %.sroa.10.0583, %i.rb       ; 2 uses
  %.not.i151 = icmp eq i32 %i.rc, 0
  br i1 %.not.i151, label %_ZL9hb_memsetPvij.exit152, label %bb.bl, !prof !11

bb.bl:                                            ; preds = %bb.bk
  %i.rd = load ptr, ptr %i.dw, align 8, !tbaa !119
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.nf
  %i.rf = zext nneg i32 %.0.lcssa725 to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  %i.ri = shl nsw i32 %.2.lcssa.i, 9
  %i.rj = tail call i32 @llvm.abs.i32(i32 %i.ri, i1 true)
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.rj, i32 131072)
  %i.rk = mul nuw nsw i32 %spec.store.select6, 255
  %i.rl = add nuw nsw i32 %i.rk, 65536
  %i.rm = lshr i32 %i.rl, 17
  %i.rn = trunc nuw i32 %i.rm to i8
  %i.ro = zext i32 %i.rc to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.rh, i8 %i.rn, i64 %i.ro, i1 false)
  br label %_ZL9hb_memsetPvij.exit152

_ZL9hb_memsetPvij.exit152:                        ; preds = %bb.bl, %bb.bk, %_ZL18sweep_row_to_alphaPhPiPsjj.exit, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count673
  br i1 %exitcond674.not, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", label %bb.aa, !llvm.loop !98

"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit": ; preds = %_ZL9hb_memsetPvij.exit152, %bb.k, %bb.j, %bb.i, %bb.o, %bb.n, %bb.h, %bb.g, %bb.f
  %.sroa.0341.1 = phi ptr [ %.sroa.0341.0, %bb.j ], [ null, %bb.f ], [ null, %bb.h ], [ %.sroa.0341.0, %bb.o ], [ %.sroa.0341.0, %bb.g ], [ %.sroa.0341.0, %bb.k ], [ %.sroa.0341.0, %bb.n ], [ %.sroa.0341.0, %bb.i ], [ null, %_ZL9hb_memsetPvij.exit152 ]
  %.1 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ %.sroa.0341.0, %bb.h ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.i ], [ %.sroa.0341.0, %_ZL9hb_memsetPvij.exit152 ]
  tail call void @hb_raster_image_destroy(ptr noundef %.sroa.0341.1) #18
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.rq, align 4, !tbaa !55
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.rr, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.rp, i8 0, i64 21, i1 false)
  ret ptr %.1
}

declare ptr @hb_raster_image_create_or_fail() local_unnamed_addr #3

declare hidden noundef zeroext i1 @_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef byval(%struct.hb_raster_extents_t) align 8) local_unnamed_addr #3

declare hidden void @_ZN17hb_raster_image_t5clearEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIjLb0EE6extendIS0_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEvRKS3_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !56  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56
  %i.e = add i32 %i.d, %.val
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.e, i1 noundef zeroext %2)
  %.not57 = icmp ne i32 %.val, 0
  %or.cond62.not = and i1 %.not57, %i.f
  br i1 %or.cond62.not, label %.lr.ph, label %.loopexit, !prof !127

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit

.critedge.preheader:                              ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit
  %i.i = and i64 %.sroa.7.3, 4294967295
  %.not53 = icmp eq i64 %i.i, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit:     ; preds = %.lr.ph, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit
  %.0844 = phi i32 [ 0, %.lr.ph ], [ %i.r, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ]
  %.sroa.023.043 = phi ptr [ %.val9, %.lr.ph ], [ %.sroa.023.3, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ] ; 2 uses
  %.sroa.7.042 = phi i64 [ %.sroa.2.8.insert.ext.i.i.i.i, %.lr.ph ], [ %.sroa.7.3, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ] ; 3 uses
  %i.k = and i64 %.sroa.7.042, 4294967295
  %.not.i.i.i = icmp eq i64 %i.k, 0               ; 3 uses
  %i.l = add i64 %.sroa.7.042, 4294967295
  %.sroa.7.12.insert.insert = or i64 %i.l, 4294967296
  %spec.select.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %.sroa.023.043, !prof !11
  %.sroa.7.3 = select i1 %.not.i.i.i, i64 %.sroa.7.042, i64 %.sroa.7.12.insert.insert, !prof !11 ; 3 uses
  %.sroa.023.3.idx = select i1 %.not.i.i.i, i64 0, i64 4, !prof !11
  %.sroa.023.3 = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 %.sroa.023.3.idx ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 4, !tbaa !56
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  %i.q = load i32, ptr %spec.select.i.i, align 4, !tbaa !50
  store i32 %i.q, ptr %i.p, align 4, !tbaa !50
  %i.r = add nuw i32 %.0844, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %.val
  br i1 %exitcond.not, label %.critedge.preheader, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit, !llvm.loop !124

.critedge.loopexit:                               ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18, %bb.c
  %.pre-phi = phi i64 [ %i.z, %bb.c ], [ %.sroa.7.8.insert.ext33, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.7.2.lcssa = phi i64 [ %.sroa.7.154, %bb.c ], [ %.sroa.7.12.insert.insert40, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.023.2.lcssa = phi ptr [ %.sroa.023.155, %bb.c ], [ %i.ac, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.not = icmp eq i64 %.pre-phi, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !125

bb.b:                                             ; preds = %.lr.ph56, %.critedge.loopexit
  %.sroa.023.155 = phi ptr [ %.sroa.023.3, %.lr.ph56 ], [ %.sroa.023.2.lcssa, %.critedge.loopexit ] ; 2 uses
  %.sroa.7.154 = phi i64 [ %.sroa.7.3, %.lr.ph56 ], [ %.sroa.7.2.lcssa, %.critedge.loopexit ] ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !56
  %i.t = add i32 %i.s, 1
  %i.u = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.t, i1 noundef zeroext false)
  br i1 %i.u, label %bb.c, label %.loopexit, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.x = sub i32 %i.v, %i.w
  %i.y = icmp eq i32 %i.v, %i.w
  %i.z = and i64 %.sroa.7.154, 4294967295         ; 2 uses
  %.not4146 = icmp eq i64 %i.z, 0
  %or.cond47 = or i1 %i.y, %.not4146
  br i1 %or.cond47, label %.critedge.loopexit, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph: ; preds = %bb.c
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !67
  br label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18:   ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18
  %.050 = phi i32 [ 0, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %i.ai, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.023.249 = phi ptr [ %.sroa.023.155, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %i.ac, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ] ; 2 uses
  %.sroa.7.248 = phi i64 [ %.sroa.7.154, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %.sroa.7.12.insert.insert40, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %i.ab = add i64 %.sroa.7.248, 4294967295
  %.sroa.7.8.insert.ext33 = and i64 %i.ab, 4294967295 ; 3 uses
  %.sroa.7.12.insert.insert40 = or disjoint i64 %.sroa.7.8.insert.ext33, 4294967296 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.249, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !56  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !56
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i32, ptr %.sroa.023.249, align 4, !tbaa !50
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !50
  %i.ai = add nuw i32 %.050, 1                    ; 2 uses
  %i.aj = icmp uge i32 %i.ai, %i.x
  %.not41 = icmp eq i64 %.sroa.7.8.insert.ext33, 0
  %or.cond = select i1 %i.aj, i1 true, i1 %.not41
  br i1 %or.cond, label %.critedge.loopexit, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18, !llvm.loop !126

.loopexit:                                        ; preds = %bb.b, %.critedge.loopexit, %.critedge.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #9

declare ptr @hb_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_raster_draw_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = add i32 %i.b, -1
  %spec.select.i.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @hb_free(ptr noundef %i.f) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i1 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i1, label %bb.c, label %_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIS_IjLb0EELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_0
