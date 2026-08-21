Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@process:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.ik = sext i32 %.1246338.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ik ; 3 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !11
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, %i.ij ; 3 uses
  store float %i.in, ptr %i.il, align 4, !tbaa !11
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ib
  br i1 %i.io, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ip = icmp eq i32 %.1246338.i.i, 7
  br i1 %i.ip, label %bb.as, label %._crit_edge412.i.i

bb.as:                                            ; preds = %bb.ar
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ic
  br i1 %i.iq, label %bb.at, label %._crit_edge412.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.ir = trunc nuw nsw i64 %indvars.iv383.i.i to i32
  %i.is = uitofp nneg i32 %i.ir to float
  %i.it = fpext reassoc nsz arcp contract afn float %i.is to double
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, 1.000000e+00 ; 3 uses
  %i.iv = fmul reassoc nnan nsz arcp contract afn double %i.iu, 7.071000e-01 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt double %i.iv, f0x2D30000000000000 ; 2 uses
  %i.ix = fmul reassoc nnan nsz arcp contract afn double %i.iu, f0x52A6A0902DE00D1B
  %i.iy = select reassoc nsz arcp contract afn i1 %i.iw, double %i.ix, double %i.iv
  %i.iz = bitcast double %i.iy to i64
  %i.ja = lshr i64 %i.iz, 52
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = and i32 %i.jb, 2047
  %.v.i.i.i.i = select i1 %i.iw, i32 -1322, i32 -1022
  %i.jd = add nsw i32 %i.jc, %.v.i.i.i.i          ; 4 uses
  %i.je = icmp sgt i32 %i.jd, 0
  %.lobit.i.i.i.i = sext i1 %i.je to i32          ; 2 uses
  %i.jf = sub nsw i32 %.lobit.i.i.i.i, %i.jd
  %i.jg = ashr i32 %i.jf, 9
  %i.jh = sub nsw i32 %i.jg, %.lobit.i.i.i.i      ; 2 uses
  %i.ji = shl nsw i32 %i.jh, 7
  %i.jj = add nsw i32 %i.ji, 1023
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 52
  %i.jm = bitcast i64 %i.jl to double             ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn double %i.jm, %i.jm ; 2 uses
  %.neg24.i.i.i = mul nsw i32 %i.jh, 3584
  %reass.sub = sub nsw i32 %.neg24.i.i.i, %i.jd
  %i.jo = add nsw i32 %reass.sub, 1023
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl i64 %i.jp, 52
  %i.jr = bitcast i64 %i.jq to double
  %i.js = fmul reassoc nsz arcp contract afn double %i.iu, %i.jr
  %i.jt = fmul reassoc nsz arcp contract afn double %i.jn, %i.jn
  %i.ju = fmul reassoc nsz arcp contract afn double %i.jt, %i.js ; 2 uses
  %i.jv = fadd reassoc nsz arcp contract afn double %i.ju, -1.000000e+00
  %i.jw = fadd reassoc nsz arcp contract afn double %i.ju, 1.000000e+00
  %i.jx = fdiv reassoc nsz arcp contract afn double %i.jv, %i.jw ; 3 uses
  %i.jy = fmul reassoc nsz arcp contract afn double %i.jx, %i.jx ; 7 uses
  %i.jz = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jy, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.ka = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jz, double %i.jy, double f0x3FC746722937E5EC)
  %i.kb = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ka, double %i.jy, double f0x3FCC71C4C1A82632)
  %i.kc = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kb, double %i.jy, double f0x3FD2492494C5B7F2)
  %i.kd = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kc, double %i.jy, double f0x3FD999999996D5D4)
  %i.ke = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kd, double %i.jy, double f0x3FE55555555555FF)
  %i.kf = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ke, double %i.jy, double 2.000000e+00)
  %i.kg = fmul reassoc nsz arcp contract afn double %i.kf, %i.jx
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.jd to double
  %i.ki = fmul reassoc nnan nsz arcp contract afn double %i.kh, f0x3FE62E42FEFA39EF
  %i.kj = fadd reassoc nsz arcp contract afn double %i.kg, %i.ki
  %i.kk = fmul reassoc nsz arcp contract afn double %i.kj, f0x3FF71547652B82FE
  %i.kl = fptrunc reassoc nsz arcp contract afn double %i.kk to float
  store float %i.kl, ptr %i.il, align 4, !tbaa !11
  %i.km = add nsw i32 %.1246338.i.i, 1
  br label %._crit_edge412.i.i

._crit_edge412.i.i:                               ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.2247.i.i = phi i32 [ %i.km, %bb.at ], [ %.1246338.i.i, %bb.ar ], [ 7, %bb.as ], [ %.1246338.i.i, %bb.ap ] ; 2 uses
  %i.kn = fadd reassoc nsz arcp contract afn float %.0249337.i.i, %i.ij ; 2 uses
  %indvars.iv.next384.i.i = add nuw nsw i64 %indvars.iv383.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next384.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader333.i.i, label %bb.ap

bb.au:                                            ; preds = %._crit_edge413.i.i, %.lr.ph348.i.i
  %indvars.iv386.i.i = phi i64 [ %i.if, %.lr.ph348.i.i ], [ %indvars.iv.next387.i.i, %._crit_edge413.i.i ] ; 3 uses
  %.3346.i.i = phi i32 [ %.1246.lcssa.i20.i, %.lr.ph348.i.i ], [ %.4.i.i, %._crit_edge413.i.i ] ; 6 uses
  %.0250345.i.i = phi float [ 0.000000e+00, %.lr.ph348.i.i ], [ %i.mv, %._crit_edge413.i.i ]
  %i.ko = icmp slt i32 %.3346.i.i, 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv386.i.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !26
  %i.kr = uitofp reassoc nsz arcp contract afn i32 %i.kq to float ; 2 uses
  br i1 %i.ko, label %bb.av, label %._crit_edge413.i.i

bb.av:                                            ; preds = %bb.au
  %i.ks = sext i32 %.3346.i.i to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ks ; 3 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !11
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.kr ; 3 uses
  store float %i.kv, ptr %i.kt, align 4, !tbaa !11
  %i.kw = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ib
  br i1 %i.kw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = icmp eq i32 %.3346.i.i, 7
  br i1 %i.kx, label %bb.ax, label %._crit_edge413.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ic
  br i1 %i.ky, label %bb.ay, label %._crit_edge413.i.i

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.kz = trunc nuw nsw i64 %indvars.iv386.i.i to i32
  %i.la = uitofp nneg i32 %i.kz to float
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, 1.000000e+00
  %i.lc = fpext reassoc nsz arcp contract afn float %i.lb to double ; 3 uses
  %i.ld = fmul reassoc nnan nsz arcp contract afn double %i.lc, 7.071000e-01 ; 2 uses
  %i.le = fcmp reassoc nsz arcp contract afn olt double %i.ld, f0x2D30000000000000 ; 2 uses
  %i.lf = fmul reassoc nnan nsz arcp contract afn double %i.lc, f0x52A6A0902DE00D1B
  %i.lg = select reassoc nsz arcp contract afn i1 %i.le, double %i.lf, double %i.ld
  %i.lh = bitcast double %i.lg to i64
  %i.li = lshr i64 %i.lh, 52
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = and i32 %i.lj, 2047
  %.v.i.i271.i.i = select i1 %i.le, i32 -1322, i32 -1022
  %i.ll = add nsw i32 %i.lk, %.v.i.i271.i.i       ; 4 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  %.lobit.i.i272.i.i = sext i1 %i.lm to i32       ; 2 uses
  %i.ln = sub nsw i32 %.lobit.i.i272.i.i, %i.ll
  %i.lo = ashr i32 %i.ln, 9
  %i.lp = sub nsw i32 %i.lo, %.lobit.i.i272.i.i   ; 2 uses
  %i.lq = shl nsw i32 %i.lp, 7
  %i.lr = add nsw i32 %i.lq, 1023
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 52
  %i.lu = bitcast i64 %i.lt to double             ; 2 uses
  %i.lv = fmul reassoc nsz arcp contract afn double %i.lu, %i.lu ; 2 uses
  %.neg24.i273.i.i = mul nsw i32 %i.lp, 3584
  %reass.sub240 = sub nsw i32 %.neg24.i273.i.i, %i.ll
  %i.lw = add nsw i32 %reass.sub240, 1023
  %i.lx = zext i32 %i.lw to i64
  %i.ly = shl i64 %i.lx, 52
  %i.lz = bitcast i64 %i.ly to double
  %i.ma = fmul reassoc nsz arcp contract afn double %i.lz, %i.lc
  %i.mb = fmul reassoc nsz arcp contract afn double %i.lv, %i.lv
  %i.mc = fmul reassoc nsz arcp contract afn double %i.mb, %i.ma ; 2 uses
  %i.md = fadd reassoc nsz arcp contract afn double %i.mc, -1.000000e+00
  %i.me = fadd reassoc nsz arcp contract afn double %i.mc, 1.000000e+00
  %i.mf = fdiv reassoc nsz arcp contract afn double %i.md, %i.me ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn double %i.mf, %i.mf ; 7 uses
  %i.mh = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mg, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.mi = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mh, double %i.mg, double f0x3FC746722937E5EC)
  %i.mj = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mi, double %i.mg, double f0x3FCC71C4C1A82632)
  %i.mk = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mj, double %i.mg, double f0x3FD2492494C5B7F2)
  %i.ml = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mk, double %i.mg, double f0x3FD999999996D5D4)
  %i.mm = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ml, double %i.mg, double f0x3FE55555555555FF)
  %i.mn = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mm, double %i.mg, double 2.000000e+00)
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, %i.mf
  %i.mp = sitofp reassoc nsz arcp contract afn i32 %i.ll to double
  %i.mq = fmul reassoc nnan nsz arcp contract afn double %i.mp, f0x3FE62E42FEFA39EF
  %i.mr = fadd reassoc nsz arcp contract afn double %i.mo, %i.mq
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, f0x3FF71547652B82FE
  %i.mt = fptrunc reassoc nsz arcp contract afn double %i.ms to float
  store float %i.mt, ptr %i.kt, align 4, !tbaa !11
  %i.mu = add nsw i32 %.3346.i.i, 1
  br label %._crit_edge413.i.i

._crit_edge413.i.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %.4.i.i = phi i32 [ %i.mu, %bb.ay ], [ %.3346.i.i, %bb.aw ], [ 7, %bb.ax ], [ %.3346.i.i, %bb.au ]
  %i.mv = fadd reassoc nsz arcp contract afn float %.0250345.i.i, %i.kr ; 2 uses
  %indvars.iv.next387.i.i = add nuw nsw i64 %indvars.iv386.i.i, 1 ; 2 uses
  %exitcond390.not.i.i = icmp eq i64 %indvars.iv.next387.i.i, 8192
  br i1 %exitcond390.not.i.i, label %._crit_edge349.i.i, label %bb.au

._crit_edge349.i.i:                               ; preds = %._crit_edge413.i.i
  %i.mw = fcmp reassoc nsz arcp contract afn oeq float %i.mv, 0.000000e+00
  %or.cond3.i.i = select i1 %.0249.lcssa.i19.i, i1 true, i1 %i.mw
  br i1 %or.cond3.i.i, label %_auto_exposure.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge349.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.my = load float, ptr %i.mx, align 8, !tbaa !11 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ule float %i.my, f0x41102D33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4 ; 4 uses
  br i1 %i.mz, label %..preheader.i_crit_edge.i, label %bb.ba

..preheader.i_crit_edge.i:                        ; preds = %bb.az
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre48.i = load float, ptr %.phi.trans.insert47.i, align 16, !tbaa !11
  br label %.preheader.i.i

bb.ba:                                            ; preds = %bb.az
  %i.na = fmul reassoc nsz arcp contract afn float %.pre.i, 1.500000e+00
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nc = load float, ptr %i.nb, align 16, !tbaa !11 ; 2 uses
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, 5.000000e-01
  %i.ne = fsub reassoc nsz arcp contract afn float %i.na, %i.nd
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ba, %..preheader.i_crit_edge.i
  %i.nf = phi float [ %i.nc, %bb.ba ], [ %.pre48.i, %..preheader.i_crit_edge.i ] ; 2 uses
  %i.ng = phi float [ %i.ne, %bb.ba ], [ %i.my, %..preheader.i_crit_edge.i ] ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !11 ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ule float %i.ni, f0x41102D33 ; 2 uses
  %i.nk = fmul reassoc nsz arcp contract afn float %i.ng, 1.500000e+00
  %i.nl = fmul reassoc nsz arcp contract afn float %.pre.i, 5.000000e-01
  %i.nm = fsub reassoc nsz arcp contract afn float %i.nk, %i.nl
  %i.nn = select i1 %i.nj, float %i.ni, float %i.nm ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !11 ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn oeq float %i.np, 0.000000e+00
  %i.nr = load float, ptr %i.a, align 16
  %i.ns = select i1 %i.nq, float %i.nr, float %i.np ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nu = load float, ptr %i.nt, align 8, !tbaa !11 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn oeq float %i.nu, 0.000000e+00
  %i.nw = select i1 %i.nv, float %i.ns, float %i.nu ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !11 ; 2 uses
  %i.nz = fcmp reassoc nsz arcp contract afn oeq float %i.ny, 0.000000e+00
  %i.oa = select i1 %i.nz, float %i.nw, float %i.ny ; 4 uses
  %i.ob = fcmp reassoc nsz arcp contract afn oeq float %i.nf, 0.000000e+00
  %i.oc = select i1 %i.ob, float %i.oa, float %i.nf ; 3 uses
  %i.od = fcmp reassoc nsz arcp contract afn oeq float %.pre.i, 0.000000e+00
  %i.oe = select i1 %i.od, float %i.oc, float %.pre.i ; 3 uses
  %i.of = fcmp reassoc nsz arcp contract afn oeq float %i.ng, 0.000000e+00
  %i.og = select i1 %i.of, float %i.oe, float %i.ng ; 4 uses
  %i.oh = fcmp reassoc nsz arcp contract afn oeq float %i.nn, 0.000000e+00
  %i.oi = select i1 %i.oh, float %i.og, float %i.nn
  %i.oj = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.nw, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.oc, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.oe, i64 3 ; 2 uses
  %i.on = insertelement <4 x float> poison, float %i.nw, i64 0
  %i.oo = insertelement <4 x float> %i.on, float %i.ns, i64 1
  %i.op = insertelement <4 x float> %i.oo, float %i.oa, i64 2 ; 2 uses
  %i.oq = insertelement <4 x float> %i.op, float %i.oc, i64 3
  %i.or = fsub reassoc nsz arcp contract afn <4 x float> %i.om, %i.oq
  %i.os = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ot = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ou = fsub reassoc nsz arcp contract afn <4 x float> %i.os, %i.ot ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ou, splat (float 5.000000e-01)
  %i.ow = select <4 x i1> %i.ov, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ou
  %i.ox = fdiv reassoc nsz arcp contract afn <4 x float> %i.or, %i.ow
  %i.oy = fsub reassoc nsz arcp contract afn float %i.og, %i.oe
  %i.oz = fsub reassoc nsz arcp contract afn float %i.og, %i.oa ; 2 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oz, 5.000000e-01
  %i.pb = select reassoc nsz arcp contract afn i1 %i.pa, float 5.000000e-01, float %i.oz
  %i.pc = fdiv reassoc nsz arcp contract afn float %i.oy, %i.pb
  %op.rdx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.pc, <4 x float> %i.ox)
  %i.pd = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01 ; 2 uses
  %i.pe = fcmp reassoc nsz arcp contract afn ugt float %i.pd, 0.000000e+00
  br i1 %i.pe, label %.preheader.i, label %_auto_exposure.exit

.preheader.i:                                     ; preds = %.preheader.i.i, %.preheader.i
  %indvars.iv399.in.i.i = phi i64 [ %indvars.iv399.i.i, %.preheader.i ], [ 8192, %.preheader.i.i ] ; 2 uses
  %indvars.iv399.i.i = add nsw i64 %indvars.iv399.in.i.i, -1 ; 3 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv399.i.i
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !26
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = icmp samesign ugt i64 %indvars.iv399.in.i.i, 2
  %i.pj = and i1 %i.pi, %i.ph
  br i1 %i.pj, label %.preheader.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i
  %i.pk = trunc nsw i64 %indvars.iv399.i.i to i32
  %i.pl = fmul reassoc nsz arcp contract afn float %i.hk, %i.cd
  %i.pm = fptosi float %i.pl to i32               ; 10 uses
  br label %.lr.ph357.i.i

.lr.ph357.i.i:                                    ; preds = %bb.bc, %bb.bb
  %indvars.iv.i = phi i64 [ 8191, %bb.bb ], [ %indvars.iv.next.i.8, %bb.bc ] ; 12 uses
  %.1236354.i.i = phi i32 [ 0, %bb.bb ], [ %i.qn, %bb.bc ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !26
  %i.pp = add i32 %i.po, %.1236354.i.i            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.pp, %i.pm
  br i1 %.not.i.i, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.1

.lr.ph357.i.i.1:                                  ; preds = %.lr.ph357.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !26
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %.not.i.i.1 = icmp ugt i32 %i.ps, %i.pm
  br i1 %.not.i.i.1, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.2

.lr.ph357.i.i.2:                                  ; preds = %.lr.ph357.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.1
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !26
  %i.pv = add i32 %i.pu, %i.ps                    ; 2 uses
  %.not.i.i.2 = icmp ugt i32 %i.pv, %i.pm
  br i1 %.not.i.i.2, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.3

.lr.ph357.i.i.3:                                  ; preds = %.lr.ph357.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.2
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !26
  %i.py = add i32 %i.px, %i.pv                    ; 2 uses
  %.not.i.i.3 = icmp ugt i32 %i.py, %i.pm
  br i1 %.not.i.i.3, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.4

.lr.ph357.i.i.4:                                  ; preds = %.lr.ph357.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.3
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !26
  %i.qb = add i32 %i.qa, %i.py                    ; 2 uses
  %.not.i.i.4 = icmp ugt i32 %i.qb, %i.pm
  br i1 %.not.i.i.4, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.5

.lr.ph357.i.i.5:                                  ; preds = %.lr.ph357.i.i.4
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !26
  %i.qe = add i32 %i.qd, %i.qb                    ; 2 uses
  %.not.i.i.5 = icmp ugt i32 %i.qe, %i.pm
  br i1 %.not.i.i.5, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.6

.lr.ph357.i.i.6:                                  ; preds = %.lr.ph357.i.i.5
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, -6 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.5
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !26
  %i.qh = add i32 %i.qg, %i.qe                    ; 2 uses
  %.not.i.i.6 = icmp ugt i32 %i.qh, %i.pm
  br i1 %.not.i.i.6, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.7

.lr.ph357.i.i.7:                                  ; preds = %.lr.ph357.i.i.6
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, -7 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.6
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !26
  %i.qk = add i32 %i.qj, %i.qh                    ; 2 uses
  %.not.i.i.7 = icmp ugt i32 %i.qk, %i.pm
  br i1 %.not.i.i.7, label %.lr.ph363.preheader.i.i, label %.lr.ph357.i.i.8

.lr.ph357.i.i.8:                                  ; preds = %.lr.ph357.i.i.7
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.7
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !26
  %i.qn = add i32 %i.qm, %i.qk                    ; 2 uses
  %.not.i.i.8 = icmp ugt i32 %i.qn, %i.pm
  br i1 %.not.i.i.8, label %.lr.ph363.preheader.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph357.i.i.8
  %indvars.iv.next.i.8 = add nsw i64 %indvars.iv.i, -9
  %i.qo = icmp sgt i64 %indvars.iv.i, 10
  br i1 %i.qo, label %.lr.ph357.i.i, label %.critedge5.i.i

.lr.ph363.preheader.i.i:                          ; preds = %.lr.ph357.i.i.8, %.lr.ph357.i.i.7, %.lr.ph357.i.i.6, %.lr.ph357.i.i.5, %.lr.ph357.i.i.4, %.lr.ph357.i.i.3, %.lr.ph357.i.i.2, %.lr.ph357.i.i.1, %.lr.ph357.i.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.lr.ph357.i.i ], [ %indvars.iv.next.i, %.lr.ph357.i.i.1 ], [ %indvars.iv.next.i.1, %.lr.ph357.i.i.2 ], [ %indvars.iv.next.i.2, %.lr.ph357.i.i.3 ], [ %indvars.iv.next.i.3, %.lr.ph357.i.i.4 ], [ %indvars.iv.next.i.4, %.lr.ph357.i.i.5 ], [ %indvars.iv.next.i.5, %.lr.ph357.i.i.6 ], [ %indvars.iv.next.i.6, %.lr.ph357.i.i.7 ], [ %indvars.iv.next.i.7, %.lr.ph357.i.i.8 ]
  %i.qp = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 3 uses
  %i.qq = add nsw i32 %i.qp, -1                   ; 2 uses
  %wide.trip.count405.i.i = zext nneg i32 %i.qq to i64
  br label %.lr.ph363.i.i

.lr.ph363.i.i:                                    ; preds = %bb.bd, %.lr.ph363.preheader.i.i
  %indvars.iv402.i.i = phi i64 [ 0, %.lr.ph363.preheader.i.i ], [ %indvars.iv.next403.i.i, %bb.bd ] ; 3 uses
  %.2237361.i.i = phi i32 [ 0, %.lr.ph363.preheader.i.i ], [ %i.qt, %bb.bd ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv402.i.i
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !26
  %i.qt = add i32 %i.qs, %.2237361.i.i            ; 2 uses
  %.not264.i.i = icmp ugt i32 %i.qt, %i.pm
  br i1 %.not264.i.i, label %.critedge5.loopexit.split.loop.exit456.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph363.i.i
  %indvars.iv.next403.i.i = add nuw nsw i64 %indvars.iv402.i.i, 1 ; 2 uses
  %exitcond406.not.i.i = icmp eq i64 %indvars.iv.next403.i.i, %wide.trip.count405.i.i
  br i1 %exitcond406.not.i.i, label %.critedge5.i.i, label %.lr.ph363.i.i

.critedge5.loopexit.split.loop.exit456.i.i:       ; preds = %.lr.ph363.i.i
  %i.qu = trunc nuw nsw i64 %indvars.iv402.i.i to i32
  br label %.critedge5.i.i

.critedge5.i.i:                                   ; preds = %bb.bc, %bb.bd, %.critedge5.loopexit.split.loop.exit456.i.i
  %.0233.lcssa.i23.i = phi i32 [ %i.qp, %bb.bd ], [ %i.qp, %.critedge5.loopexit.split.loop.exit456.i.i ], [ 1, %bb.bc ]
  %.0232.lcssa.i.i = phi i32 [ %i.qq, %bb.bd ], [ %i.qu, %.critedge5.loopexit.split.loop.exit456.i.i ], [ 0, %bb.bc ]
  %i.qv = shl i32 %i.pk, 3
  %i.qw = shl i32 %.0233.lcssa.i23.i, 3
  %i.qx = fmul reassoc nsz arcp contract afn float %i.hm, 8.000000e+00 ; 2 uses
  %i.qy = shl i32 %i.hw, 3
  %i.qz = shl i32 %.0232.lcssa.i.i, 3
  %i.ra = fmul reassoc nsz arcp contract afn float %i.cf, 6.553600e+02
  %i.rb = sitofp reassoc nsz arcp contract afn i32 %i.qz to float ; 3 uses
  %i.rc = fsub reassoc nsz arcp contract afn float %i.qx, %i.rb
  %i.rd = fmul reassoc nsz arcp contract afn float %i.cg, %i.rb
  %i.re = fadd reassoc nsz arcp contract afn float %i.rc, %i.rd
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.ra, %i.re
  %i.rg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rf)
  %i.rh = fmul reassoc nsz arcp contract afn float %i.rg, f0x3FB8AA3B ; 3 uses
  %i.ri = and i1 %i.mz, %i.nj
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.qv to float ; 2 uses
  %i.rk = fdiv reassoc nnan nsz arcp contract afn float 6.553600e+04, %i.rj
  %i.rl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rk)
  %.0229.i.i.a = fmul reassoc nsz arcp contract afn float %i.rl, f0x3FB8AA3B ; 2 uses
  br i1 %i.ri, label %6, label %10

6:                                                ; preds = %.critedge5.i.i
  %.neg330.i.i = fmul reassoc nsz arcp contract afn float %i.nn, -2.000000e+00
  %7 = fadd reassoc nsz arcp contract afn float %i.ng, 1.250000e+01
  %8 = fadd reassoc nsz arcp contract afn float %7, %.neg330.i.i
  %9 = fadd reassoc nsz arcp contract afn float %.0229.i.i.a, %8
  br label %14

10:                                               ; preds = %.critedge5.i.i
  %.neg328.i.i = fmul reassoc nsz arcp contract afn float %i.oi, -2.000000e+00
  %11 = fadd reassoc nsz arcp contract afn float %.0229.i.i.a, 1.250000e+01
  %12 = fadd reassoc nsz arcp contract afn float %.neg328.i.i, %11
  %13 = fadd reassoc nsz arcp contract afn float %12, %i.og
  br label %14

14:                                               ; preds = %10, %6
  %.0229.in.i.i = phi float [ %9, %6 ], [ %13, %10 ]
  %.0229.i.i = fmul reassoc nsz arcp contract afn float %.0229.in.i.i, 5.000000e-01 ; 3 uses
  %15 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rh) ; 3 uses
  %16 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0229.i.i) ; 3 uses
  %17 = fsub reassoc nsz arcp contract afn float %15, %16
  %18 = fcmp reassoc nsz arcp contract afn ogt float %17, 1.000000e+00
  br i1 %18, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %14
  %i.rm = fmul reassoc nsz arcp contract afn float %16, %i.rh
  %i.rn = fmul reassoc nsz arcp contract afn float %.0229.i.i, %15
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rm, %i.rn
  %i.rp = fadd reassoc nsz arcp contract afn float %16, %15
  %i.rq = fdiv reassoc nsz arcp contract afn float %i.ro, %i.rp
  br label %bb.bg

bb.bf:                                            ; preds = %14
  %i.rr = fpext reassoc nsz arcp contract afn float %i.rh to double
  %i.rs = fpext reassoc nsz arcp contract afn float %.0229.i.i to double
  %i.rt = fadd reassoc nsz arcp contract afn double %i.rs, %i.rr
  %i.ru = fmul reassoc nsz arcp contract afn double %i.rt, 5.000000e-01
  %i.rv = fptrunc reassoc nsz arcp contract afn double %i.ru to float
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0215.i.i = phi nsz float [ %i.rq, %bb.be ], [ %i.rv, %bb.bf ] ; 5 uses
  %i.rw = fmul reassoc nsz arcp contract afn float %.0215.i.i, f0x3F317218
  %i.rx = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.rw) ; 3 uses
  %i.ry = fmul reassoc nsz arcp contract afn float %i.rx, 6.553600e+04
  %i.rz = fdiv reassoc nsz arcp contract afn float %i.ry, %i.rj
  %i.sa = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.rz) ; 3 uses
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.rb ; 4 uses
  %i.sc = sitofp reassoc nsz arcp contract afn i32 %i.qw to float ; 2 uses
  %i.sd = fmul reassoc nnan nsz arcp contract afn float %i.sc, f0x38133333
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, %i.rx
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, -2.300000e+00
  %i.sg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0215.i.i, float 0.000000e+00)
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sg, 1.000000e+00
  %i.si = fdiv reassoc nsz arcp contract afn float %i.sf, %i.sh
  %i.sj = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.si, float 1.000000e+02)
  %i.sk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sj, float 0.000000e+00) ; 2 uses
  %i.sl = sitofp reassoc nsz arcp contract afn i32 %i.qy to float
  %i.sm = fmul reassoc nsz arcp contract afn float %i.qx, %i.sl
  %i.sn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.sm)
  %i.so = fmul reassoc nsz arcp contract afn float %i.rx, %i.sn ; 2 uses
  %i.sp = fmul reassoc nsz arcp contract afn float %i.so, f0x37800000 ; 3 uses
  %i.sq = fcmp reassoc nsz arcp contract afn olt float %i.sp, 1.000000e-01
  %i.sr = fsub reassoc nsz arcp contract afn float %i.cg, %i.sp
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sr, 1.500000e+01 ; 2 uses
  br i1 %i.sq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.st = fdiv reassoc nsz arcp contract afn float %i.ss, %i.sp
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.su = fpext reassoc nsz arcp contract afn float %i.ss to double
  %i.sv = fmul reassoc nsz arcp contract afn float %i.so, f0x35AA9931
  %i.sw = fpext reassoc nsz arcp contract afn float %i.sv to double
  %i.sx = fsub reassoc nsz arcp contract afn double 1.083300e-01, %i.sw
  %i.sy = fdiv reassoc nsz arcp contract afn double %i.su, %i.sx
  %i.sz = fptrunc reassoc nsz arcp contract afn double %i.sy to float
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0222.i.i = phi nsz float [ %i.st, %bb.bh ], [ %i.sz, %bb.bi ] ; 2 uses
  %i.ta = fcmp reassoc nsz arcp contract afn olt float %.0222.i.i, 0.000000e+00
  %i.tb = select reassoc nsz arcp contract afn i1 %i.ta, float 0.000000e+00, float %.0222.i.i
  %i.tc = fmul reassoc nsz arcp contract afn float %i.tb, 2.500000e-01 ; 2 uses
  %i.td = fsub reassoc nsz arcp contract afn float 1.100000e+00, %i.pd
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, %i.cf ; 2 uses
  %i.tf = fcmp reassoc nsz arcp contract afn ogt float %i.te, 1.000000e+02
  %i.tg = select reassoc nsz arcp contract afn i1 %i.tf, float 1.000000e+02, float %i.te ; 2 uses
  %i.th = fcmp reassoc nsz arcp contract afn olt float %i.tg, 0.000000e+00
  %i.ti = select reassoc nsz arcp contract afn i1 %i.th, float 0.000000e+00, float %i.tg
  %i.tj = fmul reassoc nsz arcp contract afn float %i.sa, %i.sc
  %i.tk = fpext reassoc nsz arcp contract afn float %i.tj to double ; 3 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ugt double %i.tk, 3.040000e-03
  br i1 %i.tl, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tm = fmul reassoc nnan nsz arcp contract afn double %i.tk, 1.292000e+01
  br label %gamma2.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.tn = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.tk)
  %i.to = fmul reassoc nsz arcp contract afn double %i.tn, f0x3FDAAAAAAAAAAAAB
  %i.tp = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.to)
  %i.tq = fmul reassoc nsz arcp contract afn double %i.tp, 1.055000e+00
  %i.tr = fadd reassoc nsz arcp contract afn double %i.tq, -5.500000e-02
  br label %gamma2.exit.i.i

gamma2.exit.i.i:                                  ; preds = %bb.bl, %bb.bk
  %i.ts = phi reassoc nsz arcp contract afn double [ %i.tm, %bb.bk ], [ %i.tr, %bb.bl ] ; 3 uses
  %i.tt = fmul reassoc nsz arcp contract afn float %i.sa, 8.000000e+00 ; 3 uses
  %invariant.op358 = fadd reassoc nsz arcp contract afn float %i.tt, %i.tt
  br label %.lr.ph370.i.i

._crit_edge371.i.i:                               ; preds = %gamma2.exit275.i.i.1
  %i.tu = fdiv reassoc nsz arcp contract afn float %i.vd, %i.hk ; 2 uses
  %i.tv = fcmp reassoc nsz arcp contract afn olt float %i.sb, %i.tu
  br i1 %i.tv, label %bb.bq, label %bb.br

.lr.ph370.i.i:                                    ; preds = %gamma2.exit275.i.i.1, %gamma2.exit.i.i
  %indvars.iv407.i.i = phi i64 [ 0, %gamma2.exit.i.i ], [ %indvars.iv.next408.i.i.1, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0216368.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %.reass, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0217367.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %i.vd, %gamma2.exit275.i.i.1 ]
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv407.i.i
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !26
  %i.ty = uitofp reassoc nsz arcp contract afn i32 %i.tx to double
  %i.tz = fpext reassoc nsz arcp contract afn float %.0216368.i.i to double ; 3 uses
  %i.ua = fcmp reassoc nsz arcp contract afn ugt double %i.tz, 3.040000e-03
  br i1 %i.ua, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph370.i.i
  %i.ub = fmul reassoc nnan nsz arcp contract afn double %i.tz, 1.292000e+01
  br label %gamma2.exit275.i.i

bb.bn:                                            ; preds = %.lr.ph370.i.i
  %i.uc = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.tz)
  %i.ud = fmul reassoc nsz arcp contract afn double %i.uc, f0x3FDAAAAAAAAAAAAB
  %i.ue = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ud)
  %i.uf = fmul reassoc nsz arcp contract afn double %i.ue, 1.055000e+00
  %i.ug = fadd reassoc nsz arcp contract afn double %i.uf, -5.500000e-02
  br label %gamma2.exit275.i.i

gamma2.exit275.i.i:                               ; preds = %bb.bn, %bb.bm
  %i.uh = phi reassoc nsz arcp contract afn double [ %i.ub, %bb.bm ], [ %i.ug, %bb.bn ]
  %i.ui = fmul reassoc nsz arcp contract afn double %i.uh, %i.ty
  %i.uj = fpext reassoc nsz arcp contract afn float %.0217367.i.i to double
  %i.uk = fadd reassoc nsz arcp contract afn double %i.ui, %i.uj
  %i.ul = fptrunc reassoc nsz arcp contract afn double %i.uk to float
  %i.um = fadd reassoc nsz arcp contract afn float %.0216368.i.i, %i.tt
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv407.i.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !26
  %i.uq = uitofp reassoc nsz arcp contract afn i32 %i.up to double
  %i.ur = fpext reassoc nsz arcp contract afn float %i.um to double ; 3 uses
  %i.us = fcmp reassoc nsz arcp contract afn ugt double %i.ur, 3.040000e-03
  br i1 %i.us, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %gamma2.exit275.i.i
  %i.ut = fmul reassoc nnan nsz arcp contract afn double %i.ur, 1.292000e+01
  br label %gamma2.exit275.i.i.1

bb.bp:                                            ; preds = %gamma2.exit275.i.i
  %i.uu = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ur)
  %i.uv = fmul reassoc nsz arcp contract afn double %i.uu, f0x3FDAAAAAAAAAAAAB
  %i.uw = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.uv)
  %i.ux = fmul reassoc nsz arcp contract afn double %i.uw, 1.055000e+00
  %i.uy = fadd reassoc nsz arcp contract afn double %i.ux, -5.500000e-02
  br label %gamma2.exit275.i.i.1

gamma2.exit275.i.i.1:                             ; preds = %bb.bp, %bb.bo
  %i.uz = phi reassoc nsz arcp contract afn double [ %i.ut, %bb.bo ], [ %i.uy, %bb.bp ]
  %i.va = fmul reassoc nsz arcp contract afn double %i.uz, %i.uq
  %i.vb = fpext reassoc nsz arcp contract afn float %i.ul to double
  %i.vc = fadd reassoc nsz arcp contract afn double %i.va, %i.vb
  %i.vd = fptrunc reassoc nsz arcp contract afn double %i.vc to float ; 2 uses
  %.reass = fadd reassoc nsz arcp contract afn float %.0216368.i.i, %invariant.op358
  %indvars.iv.next408.i.i.1 = add nuw nsw i64 %indvars.iv407.i.i, 2 ; 2 uses
  %exitcond411.not.i.i.1 = icmp eq i64 %indvars.iv.next408.i.i.1, 8192
  br i1 %exitcond411.not.i.i.1, label %._crit_edge371.i.i, label %.lr.ph370.i.i

bb.bq:                                            ; preds = %._crit_edge371.i.i
  %i.ve = fsub reassoc nsz arcp contract afn float %i.tu, %i.sb
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ve, f0x3FAAAAAB
  %i.vg = fadd reassoc nsz arcp contract afn float %i.vf, %i.sb
  %i.vh = fptosi float %i.vg to i32
  %i.vi = sitofp reassoc nsz arcp contract afn i32 %i.vh to double ; 2 uses
  %i.vj = fcmp reassoc nsz arcp contract afn olt double %i.ts, %i.vi
  %.0218.i.i = select nsz i1 %i.vj, double %i.vi, double %i.ts
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge371.i.i
  %.1219.i.i = phi nsz double [ %.0218.i.i, %bb.bq ], [ %i.ts, %._crit_edge371.i.i ] ; 3 uses
  %i.vk = fcmp reassoc nsz arcp contract afn ugt double %.1219.i.i, 3.928000e-02
  br i1 %i.vk, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vl = fmul reassoc nnan nsz arcp contract afn double %.1219.i.i, f0x3FB3D0722149B580
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.vm = fmul reassoc nsz arcp contract afn double %.1219.i.i, f0x3FEE54EDCD0AEB60
  %i.vn = fadd reassoc nsz arcp contract afn double %i.vm, f0x3FAAB1232F514A03
  %i.vo = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.vn)
  %i.vp = fmul reassoc nsz arcp contract afn double %i.vo, 2.400000e+00
  %i.vq = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.vp)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.vr = phi reassoc nsz arcp contract afn double [ %i.vl, %bb.bs ], [ %i.vq, %bb.bt ]
  %i.vs = fpext reassoc nsz arcp contract afn float %i.sb to double
  %i.vt = fdiv reassoc nsz arcp contract afn double %i.vs, %i.vr
  %i.vu = fptrunc reassoc nsz arcp contract afn double %i.vt to float
  %i.vv = fcmp reassoc nsz arcp contract afn ogt float %.0215.i.i, 1.200000e+01
  %i.vw = fcmp reassoc nsz arcp contract afn olt float %.0215.i.i, -5.000000e+00
  %i.vx = select reassoc nsz arcp contract afn i1 %i.vw, float -5.000000e+00, float %.0215.i.i
  %i.vy = select reassoc nsz arcp contract afn i1 %i.vv, float 1.200000e+01, float %i.vx ; 2 uses
  %i.vz = fcmp reassoc nsz arcp contract afn olt float %i.tc, 1.000000e+02
  %i.wa = select reassoc nsz arcp contract afn i1 %i.vz, float %i.tc, float 1.000000e+02 ; 2 uses
  %i.wb = fcmp reassoc nsz arcp contract afn olt float %i.wa, -1.000000e+02
  %i.wc = select reassoc nsz arcp contract afn i1 %i.wb, float -1.000000e+02, float %i.wa
  %i.wd = fmul reassoc nsz arcp contract afn float %i.vu, f0x3C23D70A ; 2 uses
  %i.we = fmul reassoc nsz arcp contract afn float %i.wc, f0x3C23D70A ; 2 uses
  %i.wf = fmul reassoc nsz arcp contract afn float %i.ti, f0x3C23D70A ; 2 uses
  %i.wg = fcmp ord float %i.vy, 0.000000e+00
  br i1 %i.wg, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.57) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2.i.i = phi nsz float [ %i.vy, %bb.bu ], [ 0.000000e+00, %bb.bv ] ; 2 uses
  %i.wh = fcmp ord float %i.wd, 0.000000e+00
  br i1 %i.wh, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
end_hunk_0
