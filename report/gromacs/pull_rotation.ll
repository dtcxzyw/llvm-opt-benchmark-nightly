Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb:bb.a

_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit: ; preds = %bb.r
  %i.gj = fneg float %i.fi                        ; 2 uses
  %i.gk = fneg float %i.ff
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !598
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit
  %.037.i = phi i64 [ 0, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit ], [ %indvars.iv.i61, %.critedge.i ]
  %.0.i = phi i32 [ %i.fl, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit ], [ %i.hh, %.critedge.i ] ; 4 uses
  %i.gn = sitofp i32 %.0.i to float
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62, %bb.x ], [ %.037.i, %bb.v ] ; 4 uses
  %i.go = getelementptr inbounds [12 x i8], ptr %i.bs, i64 %indvars.iv.i61 ; 3 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !61
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !61
  %i.gs = fmul float %i.ey, %i.gr
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ew, float %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !61
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.gv, float %i.fc, float %i.gt)
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gj, float %i.gn, float %i.gw)
  %i.gy = fcmp olt float %i.gx, %i.gk
  br i1 %i.gy, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %i.gz = load i32, ptr %i.bo, align 8, !tbaa !121
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next.i62, %i.ha
  br i1 %i.hb, label %bb.w, label %.critedge.i, !llvm.loop !546

.critedge.i:                                      ; preds = %bb.x, %bb.w
  %i.hc = trunc nsw i64 %indvars.iv.i61 to i32
  %i.hd = load i32, ptr %i.fm, align 8, !tbaa !79
  %i.he = sub nsw i32 %.0.i, %i.hd
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.hf
  store i32 %i.hc, ptr %i.hg, align 4, !tbaa !60
  %i.hh = add nsw i32 %.0.i, 1
  %i.hi = load i32, ptr %i.fu, align 4, !tbaa !78 ; 2 uses
  %.not.not.i = icmp slt i32 %.0.i, %i.hi
  br i1 %.not.not.i, label %bb.v, label %bb.y, !llvm.loop !547

bb.y:                                             ; preds = %.critedge.i
  %i.hj = load i32, ptr %i.bo, align 8, !tbaa !121
  %i.hk = add nsw i32 %i.hj, -1
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 6 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !599
  %i.hn = sext i32 %i.hk to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.2.i = phi i64 [ %i.hn, %bb.y ], [ %indvars.iv52.i, %bb.ab ]
  %.1.i = phi i32 [ %i.hi, %bb.y ], [ %i.ih, %bb.ab ] ; 4 uses
  %i.ho = sitofp i32 %.1.i to float
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %bb.aa ], [ %.2.i, %bb.z ] ; 5 uses
  %i.hp = getelementptr inbounds [12 x i8], ptr %i.bs, i64 %indvars.iv52.i ; 3 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !61
  %i.ht = fmul float %i.ey, %i.hs
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.ew, float %i.ht)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !61
  %i.hx = tail call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.fc, float %i.hu)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.gj, float %i.ho, float %i.hx)
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, -1
  %i.hz = fcmp ogt float %i.hy, %i.ff
  %i.ia = icmp sgt i64 %indvars.iv52.i, 0
  %i.ib = and i1 %i.ia, %i.hz
  br i1 %i.ib, label %bb.aa, label %bb.ab, !llvm.loop !548

bb.ab:                                            ; preds = %bb.aa
  %i.ic = trunc nsw i64 %indvars.iv52.i to i32
  %i.id = load i32, ptr %i.fm, align 8, !tbaa !79
  %i.ie = sub nsw i32 %.1.i, %i.id
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.if
  store i32 %i.ic, ptr %i.ig, align 4, !tbaa !60
  %i.ih = add nsw i32 %.1.i, -1
  %i.ii = load i32, ptr %i.fm, align 8, !tbaa !79
  %.not.not43.i = icmp sgt i32 %.1.i, %i.ii
  br i1 %.not.not43.i, label %bb.z, label %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit, !llvm.loop !549

_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit: ; preds = %bb.ab
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 6 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !595
  %i.il = fptrunc double %5 to float
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !25
  tail call fastcc void @_ZL16get_slab_centersP13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPffP8_IO_FILEbb(ptr noundef %2, ptr nonnull %i.bs, ptr noundef %i.ik, float noundef %i.il, ptr noundef %i.in, i1 noundef zeroext %7, i1 noundef zeroext false)
  %i.io = load i32, ptr %i.fu, align 4, !tbaa !78 ; 7 uses
  %i.ip = load i32, ptr %i.fm, align 8, !tbaa !79 ; 7 uses
  %.not131 = icmp slt i32 %i.io, %i.ip            ; 2 uses
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !96
  %i.is = add i32 %i.io, 1
  %i.it = sub i32 %i.is, %i.ip
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ir, i8 0, i64 %i.iv, i1 false), !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit
  %i.iw = load ptr, ptr %2, align 8, !tbaa !77    ; 5 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !95
  switch i32 %i.ix, label %bb.bc [
    i32 8, label %bb.ac
    i32 9, label %bb.ac
    i32 10, label %bb.ap
    i32 11, label %bb.ap
  ]

bb.ac:                                            ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !121
  %i.ja = sitofp i32 %i.iz to float
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 8, !tbaa !124
  %i.jd = fmul float %i.jc, %i.ja
  %.not90.i.i = icmp sgt i32 %i.ip, %i.io
  br i1 %.not90.i.i, label %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %bb.ac
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 352
  %.pre.i.i = load ptr, ptr %i.hl, align 8, !tbaa !599
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %.lr.ph93.i.i
  %i.jr = phi i32 [ %i.io, %.lr.ph93.i.i ], [ %i.ku, %._crit_edge.i.i ]
  %i.js = phi ptr [ %.pre.i.i, %.lr.ph93.i.i ], [ %i.kv, %._crit_edge.i.i ] ; 2 uses
  %.03591.i.i = phi i32 [ %i.ip, %.lr.ph93.i.i ], [ %i.la, %._crit_edge.i.i ] ; 4 uses
  %i.jt = load i32, ptr %i.fm, align 8, !tbaa !79
  %i.ju = sub nsw i32 %.03591.i.i, %i.jt          ; 2 uses
  %i.jv = load ptr, ptr %i.je, align 8, !tbaa !139
  %i.jw = sext i32 %i.ju to i64                   ; 5 uses
  %i.jx = getelementptr inbounds [12 x i8], ptr %i.jv, i64 %i.jw ; 3 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !61
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !61
  %i.kd = load ptr, ptr %i.jf, align 8, !tbaa !140
  %i.ke = load i32, ptr %i.fy, align 8, !tbaa !597
  %i.kf = add nsw i32 %i.ke, %i.ju
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [12 x i8], ptr %i.kd, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load float, ptr %i.ki, align 4, !tbaa !61
  %i.kl = load float, ptr %i.kh, align 4, !tbaa !61
  %i.km = load float, ptr %i.kj, align 4, !tbaa !61
  %i.kn = load ptr, ptr %i.gl, align 8, !tbaa !598
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.jw
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !60 ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jw
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !60
  %.not3683.i.i = icmp sgt i32 %i.kp, %i.kr
  br i1 %.not3683.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.ks = sitofp i32 %.03591.i.i to float
  %i.kt = sext i32 %i.kp to i64
  br label %bb.ae

._crit_edge.loopexit.i.i:                         ; preds = %bb.ag
  %.pre96.i.i = load i32, ptr %i.fu, align 4, !tbaa !78
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ad
  %i.ku = phi i32 [ %i.jr, %bb.ad ], [ %.pre96.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.kv = phi ptr [ %i.js, %bb.ad ], [ %i.om, %._crit_edge.loopexit.i.i ]
  %.sroa.10.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.ad ], [ %.sroa.10.1.i.i, %._crit_edge.loopexit.i.i ]
  %i.kw = phi <2 x float> [ zeroinitializer, %bb.ad ], [ %i.ol, %._crit_edge.loopexit.i.i ]
  %i.kx = load ptr, ptr %i.jq, align 8, !tbaa !600
  %i.ky = getelementptr inbounds [12 x i8], ptr %i.kx, i64 %i.jw ; 2 uses
  store <2 x float> %i.kw, ptr %i.ky, align 4, !tbaa !61
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store float %.sroa.10.0.lcssa.i.i, ptr %i.kz, align 4, !tbaa !61
  %i.la = add nsw i32 %.03591.i.i, 1
  %.not.not.i.i = icmp slt i32 %.03591.i.i, %i.ku
  br i1 %.not.not.i.i, label %bb.ad, label %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i, !llvm.loop !550

bb.ae:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.kt, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ag ] ; 5 uses
  %.sroa.10.084.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.sroa.10.1.i.i, %bb.ag ] ; 2 uses
  %i.lb = phi <2 x float> [ zeroinitializer, %.lr.ph.i.i ], [ %i.ol, %bb.ag ] ; 2 uses
  %i.lc = load ptr, ptr %i.ei, align 8, !tbaa !141
  %i.ld = getelementptr inbounds [12 x i8], ptr %i.lc, i64 %indvars.iv.i.i ; 3 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !61 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !61 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.li = load float, ptr %i.lh, align 4, !tbaa !61 ; 2 uses
  %i.lj = load ptr, ptr %2, align 8, !tbaa !77
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 92
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !116 ; 2 uses
  %i.lm = fpext float %i.ll to double
  %i.ln = fmul double %i.lm, f0x3FE6666666666666
  %i.lo = fptrunc double %i.ln to float
  %i.lp = load float, ptr %i.ev, align 8, !tbaa !61
  %i.lq = load float, ptr %i.ex, align 4, !tbaa !61
  %i.lr = fmul float %i.lg, %i.lq
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lp, float %i.lr)
  %i.lt = load float, ptr %i.fb, align 8, !tbaa !61
  %i.lu = tail call noundef float @llvm.fmuladd.f32(float %i.li, float %i.lt, float %i.ls)
  %i.lv = fneg float %i.ll
  %i.lw = tail call noundef float @llvm.fmuladd.f32(float %i.lv, float %i.ks, float %i.lu)
  %i.lx = fdiv float %i.lw, %i.lo                 ; 2 uses
  %i.ly = fmul float %i.lx, %i.lx
  %i.lz = fpext float %i.ly to double
  %i.ma = fmul double %i.lz, -5.000000e-01
  %i.mb = tail call double @exp(double noundef %i.ma) #28
  %i.mc = load ptr, ptr %i.ij, align 8, !tbaa !595
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %indvars.iv.i.i
  %i.me = load float, ptr %i.md, align 4, !tbaa !61
  %i.mf = load ptr, ptr %i.jg, align 8, !tbaa !594
  %i.mg = getelementptr inbounds [12 x i8], ptr %i.mf, i64 %indvars.iv.i.i ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = load float, ptr %i.mh, align 4, !tbaa !61
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !61
  %i.ml = load float, ptr %i.mi, align 4, !tbaa !61
  %i.mm = fsub float %i.mj, %i.kk                 ; 5 uses
  %i.mn = fsub float %i.mk, %i.kl                 ; 5 uses
  %i.mo = fsub float %i.ml, %i.km                 ; 5 uses
  %i.mp = fmul float %i.mm, %i.mm
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.mn, float %i.mn, float %i.mp)
  %i.mr = tail call noundef float @llvm.fmuladd.f32(float %i.mo, float %i.mo, float %i.mq)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.mr)
  %i.ms = fpext float %sqrt.i.i.i to double
  %i.mt = tail call noundef zeroext i1 @_Z11gmx_numzerod(double noundef %i.ms)
  br i1 %i.mt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mu = fmul double %i.mb, f0x3FE23CC3C0000000
  %i.mv = fptrunc double %i.mu to float
  %i.mw = fmul float %i.jd, %i.me
  %13 = load float, ptr %i.ev, align 8, !tbaa !61 ; 2 uses
  %i.mx = fsub float %i.le, %i.jy
  %i.my = fsub float %i.lg, %i.ka
  %i.mz = fsub float %i.li, %i.kc
  %i.na = fmul float %i.mw, %i.mv
  %i.nb = load float, ptr %i.jh, align 8, !tbaa !61
  %i.nc = load float, ptr %i.ji, align 4, !tbaa !61
  %i.nd = load float, ptr %i.jj, align 8, !tbaa !61
  %i.ne = load float, ptr %i.jk, align 4, !tbaa !61
  %i.nf = load float, ptr %i.jl, align 8, !tbaa !61
  %14 = load float, ptr %i.jm, align 4, !tbaa !61
  %i.ng = load float, ptr %i.jn, align 8, !tbaa !61
  %15 = load float, ptr %i.jo, align 4, !tbaa !61
  %i.nh = fmul float %i.mm, %i.nc
  %16 = fmul float %i.mm, %15
  %17 = fmul float %i.mm, %i.nf
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.mn, float %i.nh)
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.mn, float %16)
  %i.nk = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.mn, float %17)
  %i.nl = load float, ptr %i.jp, align 8, !tbaa !61
  %18 = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.mo, float %i.ni) ; 2 uses
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.nl, float %i.mo, float %i.nj) ; 2 uses
  %i.nn = tail call float @llvm.fmuladd.f32(float %14, float %i.mo, float %i.nk) ; 2 uses
  %i.no = load float, ptr %i.fb, align 8, !tbaa !61 ; 2 uses
  %19 = load float, ptr %i.ex, align 4, !tbaa !61 ; 2 uses
  %i.np = fneg float %i.nm
  %20 = fneg float %i.nn
  %21 = fmul float %13, %i.np
  %22 = fmul float %i.no, %20
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.no, float %18, float %21) ; 3 uses
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %i.nm, float %22) ; 3 uses
  %i.nr = fneg float %18
  %i.ns = fmul float %19, %i.nr
  %i.nt = tail call float @llvm.fmuladd.f32(float %13, float %i.nn, float %i.ns) ; 3 uses
  %i.nu = fmul float %i.nq, %i.nq
  %i.nv = tail call float @llvm.fmuladd.f32(float %23, float %23, float %i.nu)
  %i.nw = tail call noundef float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.nv)
  %sqrt.i37.i.i = tail call float @llvm.sqrt.f32(float %i.nw)
  %i.nx = fdiv float 1.000000e+00, %sqrt.i37.i.i  ; 3 uses
  %i.ny = fmul float %i.nq, %i.nx                 ; 2 uses
  %i.nz = fmul float %23, %i.nx                   ; 2 uses
  %i.oa = fmul float %i.nt, %i.nx                 ; 2 uses
  %i.ob = fmul float %i.my, %i.ny
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.mx, float %i.ob)
  %i.od = tail call noundef float @llvm.fmuladd.f32(float %i.oa, float %i.mz, float %i.oc)
  %i.oe = fmul float %i.na, %i.od                 ; 2 uses
  %i.of = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.og = insertelement <2 x float> %i.of, float %i.ny, i64 1
  %i.oh = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = fmul <2 x float> %i.og, %i.oi
  %24 = fmul float %i.oa, %i.oe
  %i.ok = fadd <2 x float> %i.lb, %i.oj
  %25 = fadd float %.sroa.10.084.i.i, %24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.10.1.i.i = phi float [ %.sroa.10.084.i.i, %bb.ae ], [ %25, %bb.af ] ; 2 uses
  %i.ol = phi <2 x float> [ %i.lb, %bb.ae ], [ %i.ok, %bb.af ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %i.om = load ptr, ptr %i.hl, align 8, !tbaa !599 ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.jw
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !60
  %i.op = sext i32 %i.oo to i64
  %.not36.not.i.i = icmp slt i64 %indvars.iv.i.i, %i.op
  br i1 %.not36.not.i.i, label %bb.ae, label %._crit_edge.loopexit.i.i, !llvm.loop !551

_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !77
  br label %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i

_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i: ; preds = %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i, %bb.ac
  %.pre.i = phi ptr [ %.pre.pre.i, %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i ], [ %i.iw, %bb.ac ] ; 2 uses
  %or.cond.i = or i1 %6, %7
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !86
  %i.os = icmp eq i32 %i.or, 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i
  %i.ot = phi i1 [ false, %_ZL22flex_precalc_inner_sumPK13gmx_enfrotgrp.exit.i ], [ %i.os, %bb.ah ]
  %i.ou = fmul float %i.k, %i.k
  %i.ov = fdiv float 1.000000e+00, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !121
  %i.oy = sitofp i32 %i.ox to float
  %i.oz = load float, ptr %i.jb, align 8, !tbaa !124
  %i.pa = fmul float %i.oz, %i.oy
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !35
  %i.pd = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pc) ; 2 uses
  %i.pe = extractvalue { ptr, ptr } %i.pd, 0      ; 2 uses
  %i.pf = extractvalue { ptr, ptr } %i.pd, 1
  %i.pg = load ptr, ptr %i.pb, align 8, !tbaa !35
  %i.ph = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
  %i.pi = extractvalue { ptr, ptr } %i.ph, 0
  %i.pj = ptrtoint ptr %i.pf to i64
  %i.pk = ptrtoint ptr %i.pe to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 2                 ; 2 uses
  %i.pn = icmp sgt i64 %i.pm, 0
  br i1 %i.pn, label %.lr.ph247.i, label %_ZL16do_flex_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit

.lr.ph247.i:                                      ; preds = %bb.ai
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ps = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.pv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %scevgep108 = getelementptr i8, ptr %2, i64 76
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i63, %.lr.ph247.i
  %.099245.i = phi i64 [ 0, %.lr.ph247.i ], [ %i.tq, %._crit_edge.i63 ] ; 4 uses
  %.0100244.i = phi float [ 0.000000e+00, %.lr.ph247.i ], [ %.1.lcssa.i, %._crit_edge.i63 ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %.099245.i
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !60
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %.099245.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !60
  %i.qw = load ptr, ptr %i.po, align 8, !tbaa !123
  %i.qx = sext i32 %i.qv to i64                   ; 3 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qx
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !61 ; 5 uses
  %i.ra = fmul float %i.pa, %i.qz                 ; 5 uses
  %i.rb = sext i32 %i.qt to i64
  %i.rc = getelementptr inbounds [12 x i8], ptr %3, i64 %i.rb ; 3 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !61
  %i.re = load float, ptr %i.pp, align 8, !tbaa !61
  %i.rf = fsub float %i.rd, %i.re                 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !61
  %i.ri = load float, ptr %i.pq, align 4, !tbaa !61
  %i.rj = fsub float %i.rh, %i.ri                 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !61
  %i.rm = load float, ptr %i.pr, align 8, !tbaa !61
  %i.rn = fsub float %i.rl, %i.rm
  %i.ro = load ptr, ptr %i.pu, align 8, !tbaa !142
  %i.rp = getelementptr inbounds [12 x i8], ptr %i.ro, i64 %i.qx ; 3 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !60
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !60 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !60 ; 2 uses
  %i.rv = load float, ptr %i.pv, align 4, !tbaa !61 ; 2 uses
  %i.rw = fcmp une float %i.rv, 0.000000e+00
  %.pre.i101.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !61 ; 2 uses
  %i.rx = fcmp une float %.pre.i101.i, 0.000000e+00
  %or.cond.i.i = select i1 %i.rw, i1 true, i1 %i.rx
  %.pre261.i = load float, ptr %i.pw, align 4, !tbaa !61 ; 2 uses
  %i.ry = fcmp une float %.pre261.i, 0.000000e+00
  %or.cond273.i = select i1 %or.cond.i.i, i1 true, i1 %i.ry
  %i.rz = sitofp i32 %i.rq to float               ; 2 uses
  %i.sa = load float, ptr %4, align 4, !tbaa !61  ; 2 uses
  br i1 %or.cond273.i, label %._crit_edge.i102.i, label %bb.ak

._crit_edge.i102.i:                               ; preds = %bb.aj
  %i.sb = sitofp i32 %i.rs to float               ; 2 uses
  %i.sc = fmul float %i.rv, %i.sb
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.rz, float %i.sa, float %i.sc)
  %i.se = sitofp i32 %i.ru to float               ; 3 uses
  %i.sf = tail call float @llvm.fmuladd.f32(float %i.se, float %.pre.i101.i, float %i.sd)
  %i.sg = fadd float %i.rf, %i.sf
  %i.sh = load float, ptr %i.px, align 4, !tbaa !61
  %i.si = fmul float %.pre261.i, %i.se
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.sb, float %i.sh, float %i.si)
  %i.sk = fadd float %i.rj, %i.sj
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.rz, float %i.sa, float %i.rf)
  %i.sm = sitofp i32 %i.rs to float
  %i.sn = load float, ptr %i.px, align 4, !tbaa !61
  %i.so = tail call float @llvm.fmuladd.f32(float %i.sm, float %i.sn, float %i.rj)
  %i.sp = sitofp i32 %i.ru to float
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i

_ZL18shift_single_coordPA3_KfPfPKi.exit.i:        ; preds = %bb.ak, %._crit_edge.i102.i
  %.sink143 = phi float [ %i.sg, %._crit_edge.i102.i ], [ %i.sl, %bb.ak ] ; 3 uses
  %.sink = phi float [ %i.sk, %._crit_edge.i102.i ], [ %i.so, %bb.ak ] ; 3 uses
  %.sink30.i.i = phi float [ %i.se, %._crit_edge.i102.i ], [ %i.sp, %bb.ak ]
  store float %.sink143, ptr %i.e, align 4, !tbaa !61
  store float %.sink, ptr %i.ps, align 4, !tbaa !61
  %i.sq = load float, ptr %i.py, align 4, !tbaa !61
  %i.sr = tail call float @llvm.fmuladd.f32(float %.sink30.i.i, float %i.sq, float %i.rn) ; 3 uses
  store float %i.sr, ptr %i.pt, align 4, !tbaa !61
  %i.ss = call fastcc noundef i32 @_ZL25get_single_atom_gaussiansPfP13gmx_enfrotgrp(ptr noundef %i.e, ptr noundef nonnull readonly %2) ; 2 uses
  %i.st = icmp sgt i32 %i.ss, 0
  br i1 %i.st, label %.lr.ph236.i, label %._crit_edge.i63

.lr.ph236.i:                                      ; preds = %_ZL18shift_single_coordPA3_KfPfPKi.exit.i
  %i.su = fpext float %i.ra to double             ; 3 uses
  %wide.trip.count254.i = zext nneg i32 %i.ss to i64
  %broadcast.splatinsert127 = insertelement <8 x double> poison, double %i.su, i64 0
  %broadcast.splat128 = shufflevector <8 x double> %broadcast.splatinsert127, <8 x double> poison, <8 x i32> zeroinitializer
  br label %bb.al

._crit_edge.i63:                                  ; preds = %bb.ao, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i
  %.sroa.14173.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.14173.1.i, %bb.ao ]
  %.sroa.8170.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.8170.1.i, %bb.ao ]
  %.sroa.0167.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.0167.1.i, %bb.ao ]
  %.sroa.14.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.14.1.i, %bb.ao ]
  %.sroa.8162.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.8162.1.i, %bb.ao ]
  %.sroa.0159.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.sroa.0159.1.i, %bb.ao ]
  %.1.lcssa.i = phi float [ %.0100244.i, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i ], [ %.2.i64, %bb.ao ] ; 2 uses
  %i.sv = fmul float %i.ra, %.sroa.0167.0.lcssa.i
  %i.sw = fmul float %i.ra, %.sroa.8170.0.lcssa.i
  %i.sx = fmul float %i.ra, %.sroa.14173.0.lcssa.i
  %i.sy = fmul float %i.qz, %.sroa.0159.0.lcssa.i
  %i.sz = fmul float %i.qz, %.sroa.8162.0.lcssa.i
  %i.ta = fmul float %i.qz, %.sroa.14.0.lcssa.i
  %i.tb = fsub float %i.sy, %i.sv
  %i.tc = fsub float %i.sz, %i.sw
  %i.td = fsub float %i.ta, %i.sx
  %i.te = load ptr, ptr %2, align 8, !tbaa !77
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 64 ; 3 uses
  %i.tg = load ptr, ptr %i.qr, align 8, !tbaa !59
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %.099245.i ; 3 uses
  %i.ti = load float, ptr %i.tf, align 8, !tbaa !132
  %i.tj = fmul float %i.tb, %i.ti
  store float %i.tj, ptr %i.th, align 4, !tbaa !61
  %i.tk = load float, ptr %i.tf, align 8, !tbaa !132
  %i.tl = fmul float %i.tc, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store float %i.tl, ptr %i.tm, align 4, !tbaa !61
end_hunk_0
