Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mincross?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mincross:bb.a
.lr.ph103.i.i:                                    ; preds = %bb.x
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  br label %bb.y

.preheader.i.i:                                   ; preds = %.loopexit.thread.i.i
  %i.il = icmp sgt i32 %i.ml, 0
  br i1 %i.il, label %.lr.ph107.preheader.i.i, label %reorder.exit.i

.lr.ph107.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ml to i64 ; 2 uses
  br label %.lr.ph107.i.i

bb.y:                                             ; preds = %.loopexit.thread.i.i, %.lr.ph103.i.i
  %indvars.iv115.i.i = phi i64 [ 0, %.lr.ph103.i.i ], [ %indvars.iv.next116.i.i, %.loopexit.thread.i.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv115.i.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !15 ; 7 uses
  br i1 %.not37.i, label %.preheader92.i.i, label %.preheader91.i.i

.preheader92.i.i:                                 ; preds = %bb.y
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 256
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !95 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !52 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.is, null
  br i1 %.not94.i.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.preheader91.i.i:                                 ; preds = %bb.y
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 272
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !51 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !52 ; 2 uses
  %.not8997.i.i = icmp eq ptr %i.iv, null
  br i1 %.not8997.i.i, label %.loopexit.thread.i.i, label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %.preheader91.i.i, %bb.aa
  %indvars.iv112.i.i = phi i64 [ %indvars.iv.next113.i.i, %bb.aa ], [ 0, %.preheader91.i.i ]
  %i.iw = phi ptr [ %i.ju, %bb.aa ], [ %i.iv, %.preheader91.i.i ] ; 3 uses
  %.07999.i.i = phi i64 [ %.180.i.i, %bb.aa ], [ 0, %.preheader91.i.i ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !15 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 210
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !96
  %i.jb = icmp sgt i16 %i.ja, 0
  br i1 %i.jb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph100.i.i
  %i.jc = load i32, ptr %i.iw, align 8
  %i.jd = and i32 %i.jc, 3
  %i.je = icmp eq i32 %i.jd, 2
  %i.jf = select i1 %i.je, i64 56, i64 -8
  %i.jg = getelementptr inbounds i8, ptr %i.iw, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !56
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !15
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 364
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !57
  %i.jm = shl nsw i32 %i.jl, 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iy, i64 108
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !177
  %i.jp = zext i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jm, %i.jp
  %i.jr = add i64 %.07999.i.i, 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.07999.i.i
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !69
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph100.i.i
  %.180.i.i = phi i64 [ %i.jr, %bb.z ], [ %.07999.i.i, %.lr.ph100.i.i ] ; 2 uses
  %indvars.iv.next113.i.i = add nuw nsw i64 %indvars.iv112.i.i, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next113.i.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !52 ; 2 uses
  %.not89.i.i = icmp eq ptr %i.ju, null
  br i1 %.not89.i.i, label %.loopexit.i.i, label %.lr.ph100.i.i, !llvm.loop !162

.lr.ph.i.i:                                       ; preds = %.preheader92.i.i, %bb.ac
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ac ], [ 0, %.preheader92.i.i ]
  %i.jv = phi ptr [ %i.kt, %bb.ac ], [ %i.is, %.preheader92.i.i ] ; 3 uses
  %.296.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ 0, %.preheader92.i.i ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !15 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 210
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !96
  %i.ka = icmp sgt i16 %i.jz, 0
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.kb = load i32, ptr %i.jv, align 8
  %i.kc = and i32 %i.kb, 3
  %i.kd = icmp eq i32 %i.kc, 3
  %i.ke = select i1 %i.kd, i64 56, i64 120
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !56
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 364
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !57
  %i.kl = shl nsw i32 %i.kk, 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 60
  %i.kn = load i8, ptr %i.km, align 4, !tbaa !178
  %i.ko = zext i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.kl, %i.ko
  %i.kq = add i64 %.296.i.i, 1
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.296.i.i
  store i32 %i.kp, ptr %i.kr, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %.3.i.i = phi i64 [ %i.kq, %bb.ab ], [ %.296.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i.i
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !163

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.ac
  %.4.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ %.180.i.i, %bb.aa ] ; 5 uses
  switch i64 %.4.i.i, label %bb.af [
    i64 0, label %.loopexit.thread.i.i
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %.loopexit.i.i
  %i.ku = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.kv = sitofp i32 %i.ku to double
  br label %.loopexit.thread.i.i

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.kw = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.kx = load i32, ptr %i.ik, align 4, !tbaa !69
  %i.ky = add nsw i32 %i.kx, %i.kw
  %i.kz = sdiv i32 %i.ky, 2
  %i.la = sitofp i32 %i.kz to double
  br label %.loopexit.thread.i.i

bb.af:                                            ; preds = %.loopexit.i.i
  tail call void @qsort(ptr noundef %i.ie, i64 noundef %.4.i.i, i64 noundef 4, ptr noundef nonnull @ordercmpf) #20
  %i.lb = and i64 %.4.i.i, 1
  %.not90.i.i = icmp eq i64 %i.lb, 0
  %i.lc = lshr i64 %.4.i.i, 1                     ; 2 uses
  br i1 %.not90.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !69
  %i.lf = sitofp i32 %i.le to double
  %i.lg = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %i.lh = getelementptr [4 x i8], ptr %i.ie, i64 %.4.i.i
  %i.li = getelementptr i8, ptr %i.lh, i64 -4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !69
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.lc ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !69 ; 3 uses
  %i.lm = sub nsw i32 %i.lj, %i.ll                ; 3 uses
  %i.ln = getelementptr i8, ptr %i.lk, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !69 ; 3 uses
  %i.lp = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.lq = sub nsw i32 %i.lo, %i.lp                ; 3 uses
  %i.lr = icmp eq i32 %i.lq, %i.lm
  br i1 %i.lr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ls = add nsw i32 %i.lo, %i.ll
  %i.lt = sdiv i32 %i.ls, 2
  %i.lu = sitofp i32 %i.lt to double
  %i.lv = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.lw = sitofp i32 %i.lo to double
  %i.lx = sitofp i32 %i.lm to double
  %i.ly = sitofp i32 %i.ll to double
  %i.lz = sitofp i32 %i.lq to double
  %i.ma = fmul nnan double %i.ly, %i.lz
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.lx, double %i.ma)
  %i.mc = add nsw i32 %i.lq, %i.lm
  %i.md = sitofp i32 %i.mc to double
  %i.me = fdiv double %i.mb, %i.md
  %i.mf = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %.loopexit.i.i, %.preheader91.i.i, %.preheader92.i.i
  %.sink134.i.i = phi ptr [ %i.lv, %bb.ai ], [ %i.mf, %bb.aj ], [ %i.lg, %bb.ag ], [ %i.ip, %bb.ae ], [ %i.ip, %bb.ad ], [ %i.ip, %.loopexit.i.i ], [ %i.ip, %.preheader92.i.i ], [ %i.ip, %.preheader91.i.i ]
  %.sink.i.i = phi double [ %i.lu, %bb.ai ], [ %i.me, %bb.aj ], [ %i.lf, %bb.ag ], [ %i.la, %bb.ae ], [ %i.kv, %bb.ad ], [ -1.000000e+00, %.loopexit.i.i ], [ -1.000000e+00, %.preheader92.i.i ], [ -1.000000e+00, %.preheader91.i.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.sink134.i.i, i64 368
  store double %.sink.i.i, ptr %i.mg, align 8, !tbaa !179
  %indvars.iv.next116.i.i = add nuw nsw i64 %indvars.iv115.i.i, 1 ; 2 uses
  %i.mh = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 264
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !39 ; 6 uses
  %i.mk = getelementptr inbounds [88 x i8], ptr %i.mj, i64 %indvars.iv.i91 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !42 ; 4 uses
  %i.mm = sext i32 %i.ml to i64
  %i.mn = icmp slt i64 %indvars.iv.next116.i.i, %i.mm
  br i1 %i.mn, label %bb.y, label %.preheader.i.i, !llvm.loop !164

.lr.ph107.i.i:                                    ; preds = %flat_mval.exit.i.i.a, %.lr.ph107.preheader.i.i
  %indvars.iv118.i.i = phi i64 [ 0, %.lr.ph107.preheader.i.i ], [ %indvars.iv.next119.i.i, %flat_mval.exit.i.i.a ] ; 2 uses
  %.081105.i.i = phi i1 [ false, %.lr.ph107.preheader.i.i ], [ %.182.i.i, %flat_mval.exit.i.i.a ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv118.i.i
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !44
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !15 ; 7 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 280
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !97
  %i.mu = icmp eq i64 %i.mt, 0
  br i1 %i.mu, label %bb.ak, label %flat_mval.exit.i.i.a

bb.ak:                                            ; preds = %.lr.ph107.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 264
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !98
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %bb.al, label %flat_mval.exit.i.i.a

bb.al:                                            ; preds = %bb.ak
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 312
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !99
  %.not.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 304
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !100 ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !52 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8
  %i.ne = and i32 %i.nd, 3
  %i.nf = icmp eq i32 %i.ne, 3
  %i.ng = select i1 %i.nf, i64 56, i64 120
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !56 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !52 ; 2 uses
  %.not451.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not451.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.am
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert15.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 364
  %.pre16.i.i.i = load i32, ptr %.phi.trans.insert15.i.i.i, align 4, !tbaa !57
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.nl = phi i32 [ %.pre16.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.oa, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ]
  %i.nm = phi ptr [ %i.nk, %.lr.ph.preheader.i.i.i ], [ %i.nz, %.lr.ph.i.i.i ] ; 2 uses
  %.03.i.i.i = phi ptr [ %i.ni, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.nn = load i32, ptr %i.nm, align 8
  %i.no = and i32 %i.nn, 3
  %i.np = icmp eq i32 %i.no, 3
  %i.nq = select i1 %i.np, i64 56, i64 120
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !56 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 364
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !57 ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, %i.nl
  %spec.select.i.i.i = select i1 %i.nx, ptr %i.ns, ptr %.03.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.next.i.i.i
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !52 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.nz, null
  %i.oa = tail call i32 @llvm.smax.i32(i32 %i.nw, i32 %i.nl)
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.am
  %.0.lcssa.i.i.i = phi ptr [ %i.ni, %bb.am ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !15
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 368
  %i.oe = load double, ptr %i.od, align 8, !tbaa !179 ; 2 uses
  %i.of = fcmp ult double %i.oe, 0.000000e+00
  br i1 %i.of, label %flat_mval.exit.i.i.a, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i
  %i.og = fadd double %i.oe, 1.000000e+00
  br label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.al
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mr, i64 296
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !101
  %.not43.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not43.i.i.i, label %flat_mval.exit.i.i.a, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mr, i64 288
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !83 ; 3 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = and i32 %i.om, 3
  %i.oo = icmp eq i32 %i.on, 2
  %i.op = select i1 %i.oo, i64 56, i64 -8
  %i.oq = getelementptr inbounds i8, ptr %i.ol, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !56 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !52 ; 2 uses
  %.not444.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not444.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.preheader.i.i.i

.lr.ph8.preheader.i.i.i:                          ; preds = %bb.ap
  %.phi.trans.insert17.i.i.i = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %.pre18.i.i.i = load ptr, ptr %.phi.trans.insert17.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert19.i.i.i = getelementptr inbounds nuw i8, ptr %.pre18.i.i.i, i64 364
  %.pre20.i.i.i = load i32, ptr %.phi.trans.insert19.i.i.i, align 4, !tbaa !57
  br label %.lr.ph8.i.i.i

.lr.ph8.i.i.i:                                    ; preds = %.lr.ph8.i.i.i, %.lr.ph8.preheader.i.i.i
  %i.ou = phi i32 [ %.pre20.i.i.i, %.lr.ph8.preheader.i.i.i ], [ %i.pj, %.lr.ph8.i.i.i ] ; 2 uses
  %indvars.iv12.i.i.i = phi i64 [ 1, %.lr.ph8.preheader.i.i.i ], [ %indvars.iv.next13.i.i.i, %.lr.ph8.i.i.i ]
  %i.ov = phi ptr [ %i.ot, %.lr.ph8.preheader.i.i.i ], [ %i.pi, %.lr.ph8.i.i.i ] ; 2 uses
  %.26.i.i.i = phi ptr [ %i.or, %.lr.ph8.preheader.i.i.i ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.ow = load i32, ptr %i.ov, align 8
  %i.ox = and i32 %i.ow, 3
  %i.oy = icmp eq i32 %i.ox, 2
  %i.oz = select i1 %i.oy, i64 56, i64 -8
  %i.pa = getelementptr inbounds i8, ptr %i.ov, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !56 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 364
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !57 ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.ou
  %spec.select46.i.i.i = select i1 %i.pg, ptr %i.pb, ptr %.26.i.i.i ; 2 uses
  %indvars.iv.next13.i.i.i = add nuw nsw i64 %indvars.iv12.i.i.i, 1 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv.next13.i.i.i
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !52 ; 2 uses
  %.not44.i.i.i = icmp eq ptr %i.pi, null
  %i.pj = tail call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ou)
  br i1 %.not44.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.i.i.i, !llvm.loop !166

._crit_edge9.i.i.i:                               ; preds = %.lr.ph8.i.i.i, %bb.ap
  %.2.lcssa.i.i.i = phi ptr [ %i.or, %bb.ap ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.lcssa.i.i.i, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !15
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 368
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !179 ; 2 uses
  %i.po = fcmp ogt double %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.aq, label %flat_mval.exit.i.i.a

bb.aq:                                            ; preds = %._crit_edge9.i.i.i
  %i.pp = fadd double %i.pn, -1.000000e+00
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aq, %bb.an
  %.sink.i.i.i = phi double [ %i.pp, %bb.aq ], [ %i.og, %bb.an ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mr, i64 368
  store double %.sink.i.i.i, ptr %i.pq, align 8, !tbaa !179
  br label %flat_mval.exit.i.i.a

flat_mval.exit.i.i.a:                             ; preds = %.sink.split.i.i.i, %._crit_edge9.i.i.i, %bb.ao, %._crit_edge.i.i.i, %bb.ak, %.lr.ph107.i.i
  %.182.i.i = phi i1 [ %.081105.i.i, %.lr.ph107.i.i ], [ %.081105.i.i, %bb.ak ], [ true, %._crit_edge9.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.ao ], [ %.081105.i.i, %.sink.split.i.i.i ] ; 2 uses
  %indvars.iv.next119.i.i = add nuw nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next119.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %medians.exit.i, label %.lr.ph107.i.i, !llvm.loop !167

medians.exit.i:                                   ; preds = %flat_mval.exit.i.i.a
  %i.pr = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !43 ; 3 uses
  %i.pt = or i1 %i.he, %.182.i.i
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %wide.trip.count.i.i
  %.b.i.i.i = load i1, ptr @ReMincross, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mh, i64 132
  %i.pw = load ptr, ptr @Root, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16 ; 2 uses
  %spec.select72.idx.i.i = select i1 %i.pt, i64 0, i64 -8
  br label %.preheader17.i.i

.preheader17.i.i:                                 ; preds = %.critedge.thread.i.i, %medians.exit.i
  %.06038.in.i.i = phi i32 [ %i.ml, %medians.exit.i ], [ %.06038.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.05536.i.i = phi ptr [ %i.pu, %medians.exit.i ], [ %spec.select72.i.i, %.critedge.thread.i.i ] ; 5 uses
  %.06135.i.i = phi i32 [ 0, %medians.exit.i ], [ %.16225.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.06038.i.i = add nsw i32 %.06038.in.i.i, -1
  %i.py = icmp ult ptr %i.ps, %.05536.i.i
  br i1 %i.py, label %.preheader.i33.i, label %.critedge.thread.i.i

.preheader.i33.i:                                 ; preds = %.preheader17.i.i, %.thread.thread.i.i
  %.05832.i.i = phi ptr [ %.05729.i.i, %.thread.thread.i.i ], [ %i.ps, %.preheader17.i.i ]
  %.16231.i.i = phi i32 [ %.4.i35.i, %.thread.thread.i.i ], [ %.06135.i.i, %.preheader17.i.i ] ; 9 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.preheader.i33.i
  %.15926.i.i = phi ptr [ %.05832.i.i, %.preheader.i33.i ], [ %i.qf, %bb.as ] ; 2 uses
  %i.pz = load ptr, ptr %.15926.i.i, align 8, !tbaa !44 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !15 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 368
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !179 ; 3 uses
  %i.qe = fcmp olt double %i.qd, 0.000000e+00
  %i.qf = getelementptr inbounds nuw i8, ptr %.15926.i.i, i64 8 ; 3 uses
  %i.qg = icmp ult ptr %i.qf, %.05536.i.i         ; 2 uses
  br i1 %i.qe, label %bb.as, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.ar
  br i1 %i.qg, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.preheader.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 336
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 233
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 216
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qb, i64 360 ; 2 uses
  br label %.lr.ph.i34.i

bb.as:                                            ; preds = %bb.ar
  br i1 %i.qg, label %bb.ar, label %.critedge.thread.i.i, !llvm.loop !168

.lr.ph.i34.i:                                     ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i
  %.05729.i.i = phi ptr [ %.057.i.i, %.critedge.i.i ], [ %i.qf, %.lr.ph.preheader.i.i ] ; 4 uses
  %.05428.i.i = phi i1 [ %.1.i.i, %.critedge.i.i ], [ false, %.lr.ph.preheader.i.i ] ; 2 uses
  %.pre.i.i = load ptr, ptr %.05729.i.i, align 8, !tbaa !44 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !15 ; 5 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 336
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !102 ; 2 uses
  br i1 %.05428.i.i, label %bb.at, label %.lr.ph._crit_edge.i.i

bb.at:                                            ; preds = %.lr.ph.i34.i
  %.not68.i.i = icmp eq ptr %i.qo, null
  br i1 %.not68.i.i, label %.lr.ph._crit_edge.i.i, label %.critedge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.at, %.lr.ph.i34.i
  %i.qp = phi ptr [ null, %bb.at ], [ %i.qo, %.lr.ph.i34.i ] ; 3 uses
  %i.qq = load ptr, ptr %i.qh, align 8, !tbaa !102 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.qq, %i.qp        ; 2 uses
  br i1 %.b.i.i.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %.lr.ph._crit_edge.i.i
  %.not25.i.i.i = icmp eq ptr %i.qq, null
  %.not26.i.i.i = icmp eq ptr %i.qp, null
  %i.qr = or i1 %.not26.i.i.i, %.not25.i.i.i
  %or.cond29.i.i.i = or i1 %.not27.i.i.i, %i.qr
  br i1 %or.cond29.i.i.i, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qs = load i8, ptr %i.qi, align 1, !tbaa !103
  %i.qt = icmp eq i8 %i.qs, 7
  br i1 %i.qt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.qu = load i8, ptr %i.qj, align 8, !tbaa !104
  %i.qv = icmp eq i8 %i.qu, 1
  br i1 %i.qv, label %left2right.exit.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 233
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !103
  %i.qy = icmp eq i8 %i.qx, 7
  br i1 %i.qy, label %bb.ay, label %.thread.thread.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 216
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !104
  %i.rb = icmp eq i8 %i.ra, 1
  br i1 %i.rb, label %left2right.exit.thread.i.i, label %.thread.thread.i.i

bb.az:                                            ; preds = %.lr.ph._crit_edge.i.i
  br i1 %.not27.i.i.i, label %bb.ba, label %.thread.thread.i.i

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.rc = load i32, ptr %i.qk, align 8, !tbaa !105
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [88 x i8], ptr %i.mj, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 80
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !90 ; 4 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %left2right.exit.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ri = load i32, ptr %i.pv, align 4, !tbaa !106
  %i.rj = and i32 %i.ri, 1
  %.not28.i.i.i = icmp eq i32 %i.rj, 0            ; 2 uses
  %spec.select.i.i36.i = select i1 %.not28.i.i.i, ptr %i.pz, ptr %.pre.i.i
  %spec.select30.i.i.i = select i1 %.not28.i.i.i, ptr %.pre.i.i, ptr %i.pz
  %i.rk = getelementptr inbounds nuw i8, ptr %spec.select.i.i36.i, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !15
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 448
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !107
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !15
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 448
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !107
  %i.rt = sext i32 %i.rs to i64                   ; 2 uses
  %i.ru = load i64, ptr %i.rg, align 8, !tbaa !108
  %.not.i.i.i.i = icmp ugt i64 %i.ru, %i.ro
  br i1 %.not.i.i.i.i, label %bb.bc, label %left2right.exit.thread.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !109 ; 2 uses
  %.not15.i.i.i.i = icmp ugt i64 %i.rw, %i.rt
  br i1 %.not15.i.i.i.i, label %left2right.exit.i.i, label %left2right.exit.thread.i.i

left2right.exit.i.i:                              ; preds = %bb.bc
  %i.rx = mul i64 %i.rw, %i.ro
  %i.ry = add i64 %i.rx, %i.rt                    ; 2 uses
  %i.rz = lshr i64 %i.ry, 3
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !92
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !66
  %i.se = trunc i64 %i.ry to i8
  %i.sf = and i8 %i.se, 7
  %i.sg = lshr i8 %i.sd, %i.sf
  %i.sh = trunc i8 %i.sg to i1
  br i1 %i.sh, label %.thread.thread.i.i, label %left2right.exit.thread.i.i

left2right.exit.thread.i.i:                       ; preds = %left2right.exit.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.aw
  %i.si = getelementptr inbounds nuw i8, ptr %i.qm, i64 368
  %i.sj = load double, ptr %i.si, align 8, !tbaa !179 ; 3 uses
  %i.sk = fcmp ult double %i.sj, 0.000000e+00
  br i1 %i.sk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %left2right.exit.thread.i.i
  %.not69.i.i = icmp ne ptr %i.qp, null
  %spec.select.i.i = or i1 %.05428.i.i, %.not69.i.i
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bd, %bb.at
  %.1.i.i = phi i1 [ true, %bb.at ], [ %spec.select.i.i, %bb.bd ]
  %.057.i.i = getelementptr inbounds nuw i8, ptr %.05729.i.i, i64 8 ; 2 uses
  %i.sl = icmp ult ptr %.057.i.i, %.05536.i.i
  br i1 %i.sl, label %.lr.ph.i34.i, label %.critedge.thread.i.i, !llvm.loop !169

bb.be:                                            ; preds = %left2right.exit.thread.i.i
  %i.sm = fcmp ogt double %i.qd, %i.sj
  %i.sn = fcmp oge double %i.qd, %i.sj
  %or.cond.i.i = and i1 %i.he, %i.sn
  %or.cond71.i.i = or i1 %i.sm, %or.cond.i.i
  br i1 %or.cond71.i.i, label %bb.bf, label %.thread.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.so = load i32, ptr %i.qk, align 8, !tbaa !105
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qb, i64 364 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !57 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qm, i64 364 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !57 ; 2 uses
  store i32 %i.ss, ptr %i.sp, align 4, !tbaa !57
  %i.st = load ptr, ptr %i.px, align 8, !tbaa !15
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 264
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !39
  %i.sw = sext i32 %i.so to i64
  %i.sx = getelementptr inbounds [88 x i8], ptr %i.sv, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !43 ; 2 uses
  %i.ta = sext i32 %i.ss to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.ta
  store ptr %i.pz, ptr %i.tb, align 8, !tbaa !44
  store i32 %i.sq, ptr %i.sr, align 4, !tbaa !57
  %i.tc = sext i32 %i.sq to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tc
  store ptr %.pre.i.i, ptr %i.td, align 8, !tbaa !44
  %i.te = add nsw i32 %.16231.i.i, 1
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %left2right.exit.i.i, %bb.az, %bb.ay, %bb.ax, %bb.bf, %bb.be
  %.4.i35.i = phi i32 [ %i.te, %bb.bf ], [ %.16231.i.i, %bb.be ], [ %.16231.i.i, %bb.ax ], [ %.16231.i.i, %bb.ay ], [ %.16231.i.i, %bb.az ], [ %.16231.i.i, %left2right.exit.i.i ] ; 2 uses
  %i.tf = icmp ult ptr %.05729.i.i, %.05536.i.i
  br i1 %i.tf, label %.preheader.i33.i, label %.critedge.thread.i.i

end_hunk_0
