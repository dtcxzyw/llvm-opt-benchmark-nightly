Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_equalizer?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@process:bb.a
  %i.fh = icmp slt i32 %i.eh, %i.fa
  %i.fi = sext i32 %i.fa to i64                   ; 3 uses
  %i.fj = sext i32 %i.eh to i64                   ; 3 uses
  br label %.preheader362.i

.preheader370.i:                                  ; preds = %bb.d, %.preheader371.i
  %i.fk = mul nsw i64 %indvars.iv458.i, %i.k      ; 11 uses
  br i1 %i.eo, label %.preheader364.lr.ph.i, label %._crit_edge383.i

.preheader364.lr.ph.i:                            ; preds = %.preheader370.i
  %invariant.op.i = add nsw i64 %i.fk, %i.ep
  br label %.preheader364.i

bb.d:                                             ; preds = %bb.d, %.lr.ph380.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph380.i ], [ %indvars.iv.next430.i, %bb.d ] ; 3 uses
  %i.fl = trunc nsw i64 %indvars.iv429.i to i32
  %i.fm = ashr i32 %i.fl, %i.bt
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [4 x i8], ptr %i.ey, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !30
  %indvars.iv.next430.i = add nsw i64 %indvars.iv429.i, %i.ep ; 3 uses
  %i.fq = trunc nsw i64 %indvars.iv.next430.i to i32
  %i.fr = ashr i32 %i.fq, %i.bt
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [4 x i8], ptr %i.ey, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !30
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fp, %i.fu
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fv)
  %i.fx = fpext reassoc nsz arcp contract afn float %i.fw to double
  %i.fy = fadd reassoc nsz arcp contract afn double %i.fx, 1.000000e-05
  %i.fz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.fy
  %i.ga = fptrunc reassoc nsz arcp contract afn double %i.fz to float
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv429.i
  store float %i.ga, ptr %i.gb, align 4, !tbaa !30
  %i.gc = icmp slt i64 %indvars.iv.next430.i, %i.er
  br i1 %i.gc, label %bb.d, label %.preheader370.i

.preheader364.i:                                  ; preds = %.preheader364.lr.ph.i, %.preheader364.i
  %indvars.iv436.i = phi i64 [ %i.ep, %.preheader364.lr.ph.i ], [ %indvars.iv.next437.i, %.preheader364.i ] ; 5 uses
  %i.gd = sub nsw i64 %indvars.iv436.i, %i.ep     ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gd ; 3 uses
  %i.gf = add nsw i64 %i.gd, %i.fk
  %.idx352.i = shl i64 %i.gf, 4
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx352.i ; 3 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv436.i ; 3 uses
  %.reass.i = add i64 %invariant.op.i, %indvars.iv436.i
  %.idx353.i = shl i64 %.reass.i, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 %.idx353.i ; 3 uses
  %i.gj = add nsw i64 %indvars.iv436.i, %i.fk
  %.idx354.i = shl i64 %i.gj, 4
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx354.i ; 4 uses
  %i.gl = load float, ptr %i.ge, align 4, !tbaa !30 ; 2 uses
  %i.gm = load float, ptr %i.gg, align 4, !tbaa !30
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %i.gl
  %i.go = load float, ptr %i.gh, align 4, !tbaa !30 ; 2 uses
  %i.gp = load float, ptr %i.gi, align 4, !tbaa !30
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.go
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gn
  %i.gs = fadd reassoc nsz arcp contract afn float %i.go, %i.gl
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.gr, %i.gs
  %i.gu = load float, ptr %i.gk, align 4, !tbaa !30
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gu, %i.gt
  store float %i.gv, ptr %i.gk, align 4, !tbaa !30
  %i.gw = load float, ptr %i.ge, align 4, !tbaa !30 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !30
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gw
  %i.ha = load float, ptr %i.gh, align 4, !tbaa !30 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !30
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.ha
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, %i.gz
  %i.hf = fadd reassoc nsz arcp contract afn float %i.ha, %i.gw
  %i.hg = fdiv reassoc nsz arcp contract afn float %i.he, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !30
  %i.hj = fsub reassoc nsz arcp contract afn float %i.hi, %i.hg
  store float %i.hj, ptr %i.hh, align 4, !tbaa !30
  %i.hk = load float, ptr %i.ge, align 4, !tbaa !30 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !30
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.hk
  %i.ho = load float, ptr %i.gh, align 4, !tbaa !30 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !30
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.ho
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %i.hn
  %i.ht = fadd reassoc nsz arcp contract afn float %i.ho, %i.hk
  %i.hu = fdiv reassoc nsz arcp contract afn float %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !30
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hw, %i.hu
  store float %i.hx, ptr %i.hv, align 4, !tbaa !30
  %indvars.iv.next437.i = add nsw i64 %indvars.iv436.i, %i.es ; 3 uses
  %i.hy = icmp slt i64 %indvars.iv.next437.i, %i.er
  br i1 %i.hy, label %.preheader364.i, label %._crit_edge383.loopexit.i, !llvm.loop !79

._crit_edge383.loopexit.i:                        ; preds = %.preheader364.i
  %i.hz = trunc nsw i64 %indvars.iv.next437.i to i32
  br label %._crit_edge383.i

._crit_edge383.i:                                 ; preds = %.preheader370.i, %._crit_edge383.loopexit.i
  %.0316.lcssa.i = phi i32 [ %i.hz, %._crit_edge383.loopexit.i ], [ %i.ei, %.preheader370.i ] ; 3 uses
  %i.ia = icmp slt i32 %.0316.lcssa.i, %i.f
  br i1 %i.ia, label %.preheader368.i, label %.loopexit369.i

.preheader368.i:                                  ; preds = %._crit_edge383.i
  %i.ib = sub nsw i32 %.0316.lcssa.i, %i.ei
  %i.ic = sext i32 %i.ib to i64
  %i.id = add nsw i64 %i.fk, %i.ic
  %.idx350.i = shl i64 %i.id, 4
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %.idx350.i ; 2 uses
  %i.if = sext i32 %.0316.lcssa.i to i64
  %i.ig = add nsw i64 %i.fk, %i.if
  %.idx351.i = shl i64 %i.ig, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 %.idx351.i ; 3 uses
  %i.ii = load <2 x float>, ptr %i.ie, align 4, !tbaa !30
  %i.ij = load <2 x float>, ptr %i.ih, align 4, !tbaa !30
  %i.ik = fsub reassoc nsz arcp contract afn <2 x float> %i.ij, %i.ii
  store <2 x float> %i.ik, ptr %i.ih, align 4, !tbaa !30
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !30
  %i.ip = fsub reassoc nsz arcp contract afn float %i.io, %i.im
  store float %i.ip, ptr %i.in, align 4, !tbaa !30
  br label %.loopexit369.i

.loopexit369.i:                                   ; preds = %.preheader368.i, %._crit_edge383.i
  %i.iq = add nsw i64 %i.fk, %i.ep                ; 2 uses
  %.idx348.i = shl i64 %i.iq, 4
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 %.idx348.i ; 2 uses
  %.idx349.i = shl i64 %i.fk, 4
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 %.idx349.i ; 3 uses
  %i.it = load <2 x float>, ptr %i.ir, align 4, !tbaa !30
  %i.iu = fmul reassoc nsz arcp contract afn <2 x float> %i.it, splat (float 5.000000e-01)
  %i.iv = load <2 x float>, ptr %i.is, align 4, !tbaa !30
  %i.iw = fadd reassoc nsz arcp contract afn <2 x float> %i.iv, %i.iu
  store <2 x float> %i.iw, ptr %i.is, align 4, !tbaa !30
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !30
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, 5.000000e-01
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !30
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.iz
  store float %i.jc, ptr %i.ja, align 4, !tbaa !30
  br i1 %i.eq, label %.preheader363.i, label %._crit_edge389.i

.preheader363.i:                                  ; preds = %.loopexit369.i, %.preheader363.i
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %.preheader363.i ], [ %i.es, %.loopexit369.i ] ; 5 uses
  %i.jd = sub nsw i64 %indvars.iv451.i, %i.ep     ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jd ; 3 uses
  %i.jf = add nsw i64 %i.jd, %i.fk
  %.idx345.i = shl i64 %i.jf, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx345.i ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv451.i ; 3 uses
  %.reass511.i = add i64 %indvars.iv451.i, %i.iq
  %.idx346.i = shl i64 %.reass511.i, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 %.idx346.i ; 3 uses
  %i.jj = add nsw i64 %indvars.iv451.i, %i.fk
  %.idx347.i = shl i64 %i.jj, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx347.i ; 4 uses
  %i.jl = load float, ptr %i.je, align 4, !tbaa !30 ; 2 uses
  %i.jm = load float, ptr %i.jg, align 4, !tbaa !30
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.jl
  %i.jo = load float, ptr %i.jh, align 4, !tbaa !30 ; 2 uses
  %i.jp = load float, ptr %i.ji, align 4, !tbaa !30
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jo
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, %i.jn
  %i.js = fpext reassoc nsz arcp contract afn float %i.jr to double
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jo, %i.jl
  %i.ju = fpext reassoc nsz arcp contract afn float %i.jt to double
  %i.jv = fmul reassoc nsz arcp contract afn double %i.ju, 2.000000e+00
  %i.jw = fdiv reassoc nsz arcp contract afn double %i.js, %i.jv
  %i.jx = load float, ptr %i.jk, align 4, !tbaa !30
  %i.jy = fpext reassoc nsz arcp contract afn float %i.jx to double
  %i.jz = fadd reassoc nsz arcp contract afn double %i.jw, %i.jy
  %i.ka = fptrunc reassoc nsz arcp contract afn double %i.jz to float
  store float %i.ka, ptr %i.jk, align 4, !tbaa !30
  %i.kb = load float, ptr %i.je, align 4, !tbaa !30 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !30
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = load float, ptr %i.jh, align 4, !tbaa !30 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !30
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, %i.kf
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.ke
  %i.kk = fpext reassoc nsz arcp contract afn float %i.kj to double
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kf, %i.kb
  %i.km = fpext reassoc nsz arcp contract afn float %i.kl to double
  %i.kn = fmul reassoc nsz arcp contract afn double %i.km, 2.000000e+00
  %i.ko = fdiv reassoc nsz arcp contract afn double %i.kk, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !30
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !30
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.kv = load <2 x float>, ptr %i.kp, align 4, !tbaa !30
  %i.kw = fpext <2 x float> %i.kv to <2 x double> ; 2 uses
  %i.kx = extractelement <2 x double> %i.kw, i64 0
  %i.ky = fadd reassoc nsz arcp contract afn double %i.ko, %i.kx
  %i.kz = fptrunc reassoc nsz arcp contract afn double %i.ky to float
  store float %i.kz, ptr %i.kp, align 4, !tbaa !30
  %i.la = load float, ptr %i.je, align 4, !tbaa !30 ; 2 uses
  %i.lb = fmul reassoc nsz arcp contract afn float %i.kr, %i.la
  %i.lc = load float, ptr %i.jh, align 4, !tbaa !30 ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.kt, %i.lc
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %i.lb
  %i.lf = fpext reassoc nsz arcp contract afn float %i.le to double
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lc, %i.la
  %i.lh = fpext reassoc nsz arcp contract afn float %i.lg to double
  %i.li = fmul reassoc nsz arcp contract afn double %i.lh, 2.000000e+00
  %i.lj = fdiv reassoc nsz arcp contract afn double %i.lf, %i.li
  %i.lk = extractelement <2 x double> %i.kw, i64 1
  %i.ll = fadd reassoc nsz arcp contract afn double %i.lj, %i.lk
  %i.lm = fptrunc reassoc nsz arcp contract afn double %i.ll to float
  store float %i.lm, ptr %i.ku, align 4, !tbaa !30
  %indvars.iv.next452.i = add nsw i64 %indvars.iv451.i, %i.es ; 3 uses
  %i.ln = icmp slt i64 %indvars.iv.next452.i, %i.er
  br i1 %i.ln, label %.preheader363.i, label %._crit_edge389.loopexit.i, !llvm.loop !80

._crit_edge389.loopexit.i:                        ; preds = %.preheader363.i
  %i.lo = trunc nsw i64 %indvars.iv.next452.i to i32
  br label %._crit_edge389.i

._crit_edge389.i:                                 ; preds = %._crit_edge389.loopexit.i, %.loopexit369.i
  %.1317.lcssa.i = phi i32 [ %i.eh, %.loopexit369.i ], [ %i.lo, %._crit_edge389.loopexit.i ] ; 3 uses
  %i.lp = icmp slt i32 %.1317.lcssa.i, %i.f
  br i1 %i.lp, label %.preheader365.i, label %.loopexit366.i

.preheader365.i:                                  ; preds = %._crit_edge389.i
  %i.lq = sub nsw i32 %.1317.lcssa.i, %i.ei
  %i.lr = sext i32 %i.lq to i64
  %i.ls = add nsw i64 %i.fk, %i.lr
  %.idx343.i = shl i64 %i.ls, 4
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 %.idx343.i ; 2 uses
  %i.lu = sext i32 %.1317.lcssa.i to i64
  %i.lv = add nsw i64 %i.fk, %i.lu
  %.idx344.i = shl i64 %i.lv, 4
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx344.i ; 3 uses
  %i.lx = load <2 x float>, ptr %i.lt, align 4, !tbaa !30
  %i.ly = fmul reassoc nsz arcp contract afn <2 x float> %i.lx, splat (float 5.000000e-01)
  %i.lz = load <2 x float>, ptr %i.lw, align 4, !tbaa !30
  %i.ma = fadd reassoc nsz arcp contract afn <2 x float> %i.lz, %i.ly
  store <2 x float> %i.ma, ptr %i.lw, align 4, !tbaa !30
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !30
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 5.000000e-01
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !30
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, %i.md
  store float %i.mg, ptr %i.me, align 4, !tbaa !30
  br label %.loopexit366.i

.loopexit366.i:                                   ; preds = %.preheader365.i, %._crit_edge389.i
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge393.i, label %.preheader371.i

.preheader362.i:                                  ; preds = %.loopexit.i, %.preheader362.lr.ph.i
  %indvars.iv492.i = phi i64 [ 0, %.preheader362.lr.ph.i ], [ %indvars.iv.next493.i, %.loopexit.i ] ; 14 uses
  br i1 %i.fb, label %.lr.ph395.i, label %.preheader361.i

.lr.ph395.i:                                      ; preds = %.preheader362.i
  %i.mh = load ptr, ptr %i.fc, align 8, !tbaa !122
  %i.mi = trunc nuw nsw i64 %indvars.iv492.i to i32
  %i.mj = lshr i32 %i.mi, %i.bt
  %i.mk = zext nneg i32 %i.mj to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.mh, i64 %i.mk ; 2 uses
  br label %bb.e

.preheader361.i:                                  ; preds = %bb.e, %.preheader362.i
  br i1 %i.fe, label %.preheader356.i, label %._crit_edge400.i

bb.e:                                             ; preds = %bb.e, %.lr.ph395.i
  %indvars.iv463.i = phi i64 [ 0, %.lr.ph395.i ], [ %indvars.iv.next464.i, %bb.e ] ; 3 uses
  %i.ml = trunc nsw i64 %indvars.iv463.i to i32
  %i.mm = ashr i32 %i.ml, %i.bt
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul nsw i64 %i.mn, %i.fd
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.mo
  %i.mp = load float, ptr %gep.i, align 4, !tbaa !30
  %indvars.iv.next464.i = add nsw i64 %indvars.iv463.i, %i.ff ; 3 uses
  %i.mq = trunc nsw i64 %indvars.iv.next464.i to i32
  %i.mr = ashr i32 %i.mq, %i.bt
  %i.ms = sext i32 %i.mr to i64
  %i.mt = mul nsw i64 %i.ms, %i.fd
  %gep397.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.mt
  %i.mu = load float, ptr %gep397.i, align 4, !tbaa !30
  %i.mv = fsub reassoc nsz arcp contract afn float %i.mp, %i.mu
  %i.mw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.mv)
  %i.mx = fpext reassoc nsz arcp contract afn float %i.mw to double
  %i.my = fadd reassoc nsz arcp contract afn double %i.mx, 1.000000e-05
  %i.mz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.my
  %i.na = fptrunc reassoc nsz arcp contract afn double %i.mz to float
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv463.i
  store float %i.na, ptr %i.nb, align 4, !tbaa !30
  %i.nc = icmp slt i64 %indvars.iv.next464.i, %i.fi
  br i1 %i.nc, label %bb.e, label %.preheader361.i

.preheader356.i:                                  ; preds = %.preheader361.i, %.preheader356.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %.preheader356.i ], [ %i.ff, %.preheader361.i ] ; 5 uses
  %i.nd = sub nsw i64 %indvars.iv470.i, %i.ff     ; 2 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.nd ; 3 uses
  %i.nf = mul nsw i64 %i.nd, %i.k
  %i.ng = add nsw i64 %i.nf, %indvars.iv492.i
  %.idx340.i = shl i64 %i.ng, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx340.i ; 3 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv470.i ; 3 uses
  %i.nj = add nsw i64 %indvars.iv470.i, %i.ff
  %i.nk = mul nsw i64 %i.nj, %i.k
  %i.nl = add nsw i64 %i.nk, %indvars.iv492.i
  %.idx341.i = shl i64 %i.nl, 4
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx341.i ; 3 uses
  %i.nn = mul nsw i64 %indvars.iv470.i, %i.k
  %i.no = add nsw i64 %i.nn, %indvars.iv492.i
  %.idx342.i = shl i64 %i.no, 4
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 %.idx342.i ; 4 uses
  %i.nq = load float, ptr %i.ne, align 4, !tbaa !30 ; 2 uses
  %i.nr = load float, ptr %i.nh, align 4, !tbaa !30
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nr, %i.nq
  %i.nt = load float, ptr %i.ni, align 4, !tbaa !30 ; 2 uses
  %i.nu = load float, ptr %i.nm, align 4, !tbaa !30
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, %i.nt
  %i.nw = fadd reassoc nsz arcp contract afn float %i.nv, %i.ns
  %i.nx = fadd reassoc nsz arcp contract afn float %i.nt, %i.nq
  %i.ny = fdiv reassoc nsz arcp contract afn float %i.nw, %i.nx
  %i.nz = load float, ptr %i.np, align 4, !tbaa !30
  %i.oa = fsub reassoc nsz arcp contract afn float %i.nz, %i.ny
  store float %i.oa, ptr %i.np, align 4, !tbaa !30
  %i.ob = load float, ptr %i.ne, align 4, !tbaa !30 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.od = load float, ptr %i.oc, align 4, !tbaa !30
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, %i.ob
  %i.of = load float, ptr %i.ni, align 4, !tbaa !30 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.oh = load float, ptr %i.og, align 4, !tbaa !30
  %i.oi = fmul reassoc nsz arcp contract afn float %i.oh, %i.of
  %i.oj = fadd reassoc nsz arcp contract afn float %i.oi, %i.oe
  %i.ok = fadd reassoc nsz arcp contract afn float %i.of, %i.ob
  %i.ol = fdiv reassoc nsz arcp contract afn float %i.oj, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !30
  %i.oo = fsub reassoc nsz arcp contract afn float %i.on, %i.ol
  store float %i.oo, ptr %i.om, align 4, !tbaa !30
  %i.op = load float, ptr %i.ne, align 4, !tbaa !30 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.or = load float, ptr %i.oq, align 4, !tbaa !30
  %i.os = fmul reassoc nsz arcp contract afn float %i.or, %i.op
  %i.ot = load float, ptr %i.ni, align 4, !tbaa !30 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !30
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, %i.ot
  %i.ox = fadd reassoc nsz arcp contract afn float %i.ow, %i.os
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ot, %i.op
  %i.oz = fdiv reassoc nsz arcp contract afn float %i.ox, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !30
  %i.pc = fsub reassoc nsz arcp contract afn float %i.pb, %i.oz
  store float %i.pc, ptr %i.pa, align 4, !tbaa !30
  %indvars.iv.next471.i = add nsw i64 %indvars.iv470.i, %i.fj ; 3 uses
  %i.pd = icmp slt i64 %indvars.iv.next471.i, %i.fi
  br i1 %i.pd, label %.preheader356.i, label %._crit_edge400.loopexit.i

._crit_edge400.loopexit.i:                        ; preds = %.preheader356.i
  %i.pe = trunc nsw i64 %indvars.iv.next471.i to i32
  br label %._crit_edge400.i

._crit_edge400.i:                                 ; preds = %._crit_edge400.loopexit.i, %.preheader361.i
  %.0.lcssa.i = phi i32 [ %i.ei, %.preheader361.i ], [ %i.pe, %._crit_edge400.loopexit.i ] ; 3 uses
  %i.pf = icmp slt i32 %.0.lcssa.i, %i.h
  br i1 %i.pf, label %.preheader359.i, label %.loopexit360.i

.preheader359.i:                                  ; preds = %._crit_edge400.i
  %i.pg = sub nsw i32 %.0.lcssa.i, %i.ei
  %i.ph = sext i32 %i.pg to i64
  %i.pi = mul nsw i64 %i.ph, %i.k
  %i.pj = add nsw i64 %i.pi, %indvars.iv492.i
  %.idx338.i = shl i64 %i.pj, 4
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx338.i ; 2 uses
  %i.pl = sext i32 %.0.lcssa.i to i64
  %i.pm = mul nsw i64 %i.pl, %i.k
  %i.pn = add nsw i64 %i.pm, %indvars.iv492.i
  %.idx339.i = shl i64 %i.pn, 4
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 %.idx339.i ; 3 uses
  %i.pp = load <2 x float>, ptr %i.pk, align 4, !tbaa !30
  %i.pq = load <2 x float>, ptr %i.po, align 4, !tbaa !30
  %i.pr = fsub reassoc nsz arcp contract afn <2 x float> %i.pq, %i.pp
  store <2 x float> %i.pr, ptr %i.po, align 4, !tbaa !30
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !30
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !30
  %i.pw = fsub reassoc nsz arcp contract afn float %i.pv, %i.pt
  store float %i.pw, ptr %i.pu, align 4, !tbaa !30
  br label %.loopexit360.i

.loopexit360.i:                                   ; preds = %.preheader359.i, %._crit_edge400.i
  %i.px = add nsw i64 %indvars.iv492.i, %i.fg
  %.idx336.i = shl i64 %i.px, 4
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 %.idx336.i ; 2 uses
  %.idx337.i = shl nuw nsw i64 %indvars.iv492.i, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx337.i ; 3 uses
  %i.qa = load <2 x float>, ptr %i.py, align 4, !tbaa !30
  %i.qb = fpext <2 x float> %i.qa to <2 x double>
  %i.qc = fmul reassoc nsz arcp contract afn <2 x double> %i.qb, splat (double 5.000000e-01)
  %i.qd = load <2 x float>, ptr %i.pz, align 4, !tbaa !30
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = fadd reassoc nsz arcp contract afn <2 x double> %i.qc, %i.qe
  %i.qg = fptrunc <2 x double> %i.qf to <2 x float>
  store <2 x float> %i.qg, ptr %i.pz, align 4, !tbaa !30
  %i.qh = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !30
  %i.qj = fpext reassoc nsz arcp contract afn float %i.qi to double
  %i.qk = fmul reassoc nsz arcp contract afn double %i.qj, 5.000000e-01
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !30
  %i.qn = fpext reassoc nsz arcp contract afn float %i.qm to double
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qk, %i.qn
  %i.qp = fptrunc reassoc nsz arcp contract afn double %i.qo to float
  store float %i.qp, ptr %i.ql, align 4, !tbaa !30
  br i1 %i.fh, label %.preheader.i, label %._crit_edge406.i

.preheader.i:                                     ; preds = %.loopexit360.i, %.preheader.i
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i, %.preheader.i ], [ %i.fj, %.loopexit360.i ] ; 5 uses
  %i.qq = sub nsw i64 %indvars.iv485.i, %i.ff     ; 2 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.qq ; 3 uses
  %i.qs = mul nsw i64 %i.qq, %i.k
  %i.qt = add nsw i64 %i.qs, %indvars.iv492.i
  %.idx333.i = shl i64 %i.qt, 4
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx333.i ; 3 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv485.i ; 3 uses
  %i.qw = add nsw i64 %indvars.iv485.i, %i.ff
  %i.qx = mul nsw i64 %i.qw, %i.k
  %i.qy = add nsw i64 %i.qx, %indvars.iv492.i
  %.idx334.i = shl i64 %i.qy, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx334.i ; 3 uses
  %i.ra = mul nsw i64 %indvars.iv485.i, %i.k
  %i.rb = add nsw i64 %i.ra, %indvars.iv492.i
  %.idx335.i = shl i64 %i.rb, 4
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx335.i ; 4 uses
  %i.rd = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.re = load float, ptr %i.qu, align 4, !tbaa !30
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.rd
  %i.rg = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.rh = load float, ptr %i.qz, align 4, !tbaa !30
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.rg
  %i.rj = fadd reassoc nsz arcp contract afn float %i.ri, %i.rf
  %i.rk = fpext reassoc nsz arcp contract afn float %i.rj to double
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rg, %i.rd
  %i.rm = fpext reassoc nsz arcp contract afn float %i.rl to double
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rm, 2.000000e+00
  %i.ro = fdiv reassoc nsz arcp contract afn double %i.rk, %i.rn
  %i.rp = load float, ptr %i.rc, align 4, !tbaa !30
  %i.rq = fpext reassoc nsz arcp contract afn float %i.rp to double
  %i.rr = fadd reassoc nsz arcp contract afn double %i.ro, %i.rq
  %i.rs = fptrunc reassoc nsz arcp contract afn double %i.rr to float
  store float %i.rs, ptr %i.rc, align 4, !tbaa !30
  %i.rt = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !30
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.rt
  %i.rx = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !30
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, %i.rx
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.rw
  %i.sc = fpext reassoc nsz arcp contract afn float %i.sb to double
  %i.sd = fadd reassoc nsz arcp contract afn float %i.rx, %i.rt
  %i.se = fpext reassoc nsz arcp contract afn float %i.sd to double
  %i.sf = fmul reassoc nsz arcp contract afn double %i.se, 2.000000e+00
  %i.sg = fdiv reassoc nsz arcp contract afn double %i.sc, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rc, i64 4 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.sj = load float, ptr %i.si, align 4, !tbaa !30
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !30
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.sn = load <2 x float>, ptr %i.sh, align 4, !tbaa !30
  %i.so = fpext <2 x float> %i.sn to <2 x double> ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 0
  %i.sq = fadd reassoc nsz arcp contract afn double %i.sg, %i.sp
  %i.sr = fptrunc reassoc nsz arcp contract afn double %i.sq to float
  store float %i.sr, ptr %i.sh, align 4, !tbaa !30
  %i.ss = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.st = fmul reassoc nsz arcp contract afn float %i.sj, %i.ss
  %i.su = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.sv = fmul reassoc nsz arcp contract afn float %i.sl, %i.su
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, %i.st
  %i.sx = fpext reassoc nsz arcp contract afn float %i.sw to double
  %i.sy = fadd reassoc nsz arcp contract afn float %i.su, %i.ss
  %i.sz = fpext reassoc nsz arcp contract afn float %i.sy to double
  %i.ta = fmul reassoc nsz arcp contract afn double %i.sz, 2.000000e+00
  %i.tb = fdiv reassoc nsz arcp contract afn double %i.sx, %i.ta
  %i.tc = extractelement <2 x double> %i.so, i64 1
  %i.td = fadd reassoc nsz arcp contract afn double %i.tb, %i.tc
  %i.te = fptrunc reassoc nsz arcp contract afn double %i.td to float
  store float %i.te, ptr %i.sm, align 4, !tbaa !30
  %indvars.iv.next486.i = add nsw i64 %indvars.iv485.i, %i.fj ; 3 uses
  %i.tf = icmp slt i64 %indvars.iv.next486.i, %i.fi
  br i1 %i.tf, label %.preheader.i, label %._crit_edge406.loopexit.i

._crit_edge406.loopexit.i:                        ; preds = %.preheader.i
  %i.tg = trunc nsw i64 %indvars.iv.next486.i to i32
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.i, %.loopexit360.i
  %.1.lcssa.i = phi i32 [ %i.eh, %.loopexit360.i ], [ %i.tg, %._crit_edge406.loopexit.i ] ; 3 uses
  %i.th = icmp slt i32 %.1.lcssa.i, %i.h
  br i1 %i.th, label %.preheader357.i, label %.loopexit.i

.preheader357.i:                                  ; preds = %._crit_edge406.i
  %i.ti = sub nsw i32 %.1.lcssa.i, %i.ei
  %i.tj = sext i32 %i.ti to i64
  %i.tk = mul nsw i64 %i.tj, %i.k
  %i.tl = add nsw i64 %i.tk, %indvars.iv492.i
  %.idx.i = shl i64 %i.tl, 4
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.tn = sext i32 %.1.lcssa.i to i64
  %i.to = mul nsw i64 %i.tn, %i.k
  %i.tp = add nsw i64 %i.to, %indvars.iv492.i
  %.idx332.i = shl i64 %i.tp, 4
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx332.i ; 3 uses
  %i.tr = load <2 x float>, ptr %i.tm, align 4, !tbaa !30
  %i.ts = fmul reassoc nsz arcp contract afn <2 x float> %i.tr, splat (float 5.000000e-01)
  %i.tt = load <2 x float>, ptr %i.tq, align 4, !tbaa !30
  %i.tu = fadd reassoc nsz arcp contract afn <2 x float> %i.tt, %i.ts
  store <2 x float> %i.tu, ptr %i.tq, align 4, !tbaa !30
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !30
  %i.tx = fmul reassoc nsz arcp contract afn float %i.tw, 5.000000e-01
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !30
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %i.tx
  store float %i.ua, ptr %i.ty, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader357.i, %._crit_edge406.i
  %indvars.iv.next493.i = add nuw nsw i64 %indvars.iv492.i, 1 ; 2 uses
  %exitcond496.not.i = icmp eq i64 %indvars.iv.next493.i, %wide.trip.count495.i
  br i1 %exitcond496.not.i, label %dt_iop_equalizer_wtf.exit, label %.preheader362.i

dt_iop_equalizer_wtf.exit:                        ; preds = %.loopexit.i, %._crit_edge393.i
  tail call void @free(ptr noundef %i.ez) #19
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph231, label %bb.b

.lr.ph233:                                        ; preds = %bb.g
  %i.ub = shl nsw i64 %i.l, 2
  %i.uc = add nsw i64 %i.ub, 60
  %i.ud = and i64 %i.uc, -64
  %i.ue = icmp sgt i32 %i.f, 0
  %i.uf = zext nneg i32 %i.f to i64               ; 12 uses
  %i.ug = shl nsw i64 %i.k, 2
  %i.uh = add nsw i64 %i.ug, 60
  %i.ui = and i64 %i.uh, -64
  %i.uj = icmp sgt i32 %i.h, 0
  %wide.trip.count430.i = zext nneg i32 %i.h to i64
  %i.uk = zext nneg i32 %i.al to i64
  %scevgep1113 = getelementptr i8, ptr %3, i64 8  ; 4 uses
  %scevgep1115 = getelementptr i8, ptr %3, i64 4  ; 4 uses
  %scevgep1119 = getelementptr i8, ptr %3, i64 8
  %scevgep1121 = getelementptr i8, ptr %3, i64 4
  %i.ul = add nuw nsw i64 %wide.trip.count461.i, 1152921504606846975
  %i.um = mul i64 %i.ul, %i.k
  %i.un = shl i64 %i.um, 4                        ; 2 uses
  %scevgep1427 = getelementptr i8, ptr %3, i64 24
  %i.uo = getelementptr i8, ptr %3, <8 x i64> <i64 24, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16> ; 2 uses
  %i.up = getelementptr i8, ptr %3, <8 x i64> <i64 24, i64 20, i64 20, i64 20, i64 20, i64 20, i64 20, i64 20> ; 2 uses
  %scevgep1429 = getelementptr i8, ptr %3, i64 24 ; 2 uses
  %scevgep1431 = getelementptr i8, ptr %3, i64 20
  %scevgep1433 = getelementptr i8, ptr %3, i64 20 ; 3 uses
  %scevgep1435 = getelementptr i8, ptr %3, i64 16
  %scevgep1437 = getelementptr i8, ptr %3, i64 16 ; 3 uses
  %i.uq = add nuw nsw i64 %wide.trip.count461.i, 1152921504606846975
  %i.ur = mul i64 %i.uq, %i.k
  %i.us = insertelement <8 x ptr> poison, ptr %scevgep1429, i64 0
  %i.ut = shufflevector <8 x ptr> %i.us, <8 x ptr> poison, <8 x i32> zeroinitializer
  %stride.check1449 = icmp slt i32 %i.f, 0
  %stride.check1132 = icmp slt i32 %i.f, 0
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph231, %bb.g
  %.0151230 = phi i32 [ 1, %.lr.ph231 ], [ %i.vo, %bb.g ] ; 3 uses
  %i.uu = add nsw i32 %.0151230, -1
  %i.uv = sitofp reassoc nsz arcp contract afn i32 %i.uu to float
  %i.uw = fmul reassoc nsz arcp contract afn float %i.bl, %i.uv
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, %i.br
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, %i.v
  %i.uz = load i32, ptr %i.bo, align 8, !tbaa !32
  %i.va = sitofp reassoc nsz arcp contract afn i32 %i.uz to float
  %i.vb = fdiv reassoc nsz arcp contract afn float %i.uy, %i.va
  %i.vc = fpext reassoc nsz arcp contract afn float %i.vb to double
  %i.vd = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.vc ; 3 uses
  %i.ve = fcmp reassoc nsz arcp contract afn ogt double %i.vd, 1.000000e+00
  %i.vf = fcmp reassoc nsz arcp contract afn olt double %i.vd, 0.000000e+00
  %i.vg = fptrunc reassoc nsz arcp contract afn double %i.vd to float
  %spec.select = select i1 %i.vf, float 0.000000e+00, float %i.vg
  %i.vh = select i1 %i.ve, float 1.000000e+00, float %spec.select
  %i.vi = shl nuw i32 1, %.0151230                ; 5 uses
  %i.vj = sdiv i32 %i.vi, 2                       ; 5 uses
  %i.vk = icmp slt i32 %i.vj, %i.f                ; 2 uses
  %i.vl = icmp slt i32 %i.vj, %i.h
  %i.vm = sext i32 %i.vj to i64                   ; 4 uses
  %i.vn = sext i32 %i.vi to i64                   ; 6 uses
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge225
  %i.vo = add nuw nsw i32 %.0151230, 1            ; 2 uses
  %exitcond270.not = icmp eq i32 %i.vo, %i.al
  br i1 %exitcond270.not, label %.lr.ph233, label %bb.f

bb.h:                                             ; preds = %bb.f, %._crit_edge225
  %indvars.iv266 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next267, %._crit_edge225 ] ; 5 uses
  %i.vp = icmp ne i64 %indvars.iv266, 0
  %i.vq = zext i1 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.vq
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !34 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 20 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 4, !tbaa !39  ; 5 uses
  %i.vv = zext i8 %i.vu to i32
  %.not35.i = icmp eq i8 %i.vu, 0
  br i1 %.not35.i, label %._crit_edge.i169, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 24 ; 10 uses
  %wide.trip.count.i165 = zext i8 %i.vu to i64    ; 10 uses
  %min.iters.check927 = icmp ult i8 %i.vu, 4
  br i1 %min.iters.check927, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck928

vector.memcheck928:                               ; preds = %iter.check
  %i.vx = shl nuw nsw i64 %wide.trip.count.i165, 2 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.a, i64 %i.vx   ; 2 uses
  %i.vz = getelementptr i8, ptr %i.b, i64 %i.vx   ; 2 uses
  %i.wa = shl nuw nsw i64 %wide.trip.count.i165, 3
  %i.wb = getelementptr i8, ptr %i.vs, i64 %i.wa
  %i.wc = getelementptr i8, ptr %i.wb, i64 24     ; 2 uses
  %bound0929 = icmp ult ptr %i.a, %i.vz
  %bound1930 = icmp ult ptr %i.b, %i.vy
  %found.conflict931 = and i1 %bound0929, %bound1930
  %bound0932 = icmp ult ptr %i.a, %i.wc
  %bound1933 = icmp ult ptr %i.vw, %i.vy
  %found.conflict934 = and i1 %bound0932, %bound1933
  %conflict.rdx935 = or i1 %found.conflict931, %found.conflict934
  %bound0936 = icmp ult ptr %i.b, %i.wc
  %bound1937 = icmp ult ptr %i.vw, %i.vz
  %found.conflict938 = and i1 %bound0936, %bound1937
  %conflict.rdx939 = or i1 %conflict.rdx935, %found.conflict938
  br i1 %conflict.rdx939, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck928
  %min.iters.check940 = icmp ult i8 %i.vu, 16
  br i1 %min.iters.check940, label %vec.epilog.ph, label %vector.ph941

vector.ph941:                                     ; preds = %vector.main.loop.iter.check
  %i.wd = and i64 %wide.trip.count.i165, 12
  %n.vec942 = and i64 %wide.trip.count.i165, 240  ; 4 uses
  br label %vector.body943

vector.body943:                                   ; preds = %vector.ph941, %vector.body943
  %index944 = phi i64 [ 0, %vector.ph941 ], [ %index.next951, %vector.body943 ] ; 5 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %index944
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %index944
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %wide.vec945 = load <16 x float>, ptr %i.we, align 4, !tbaa !30, !alias.scope !126 ; 2 uses
  %strided.vec946 = shufflevector <16 x float> %wide.vec945, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec947 = shufflevector <16 x float> %wide.vec945, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec948 = load <16 x float>, ptr %i.wg, align 4, !tbaa !30, !alias.scope !126 ; 2 uses
  %strided.vec949 = shufflevector <16 x float> %wide.vec948, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec950 = shufflevector <16 x float> %wide.vec948, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index944 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  store <8 x float> %strided.vec946, ptr %i.wh, align 16, !tbaa !30, !alias.scope !127, !noalias !128
  store <8 x float> %strided.vec949, ptr %i.wi, align 16, !tbaa !30, !alias.scope !127, !noalias !128
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index944 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  store <8 x float> %strided.vec947, ptr %i.wj, align 16, !tbaa !30, !alias.scope !129, !noalias !126
end_hunk_0
begin_hunk_1_@process:bb.a
  %conflict.rdx1148 = or i1 %conflict.rdx1144, %found.conflict1147
  %bound01149 = icmp ult ptr %scevgep1125, %i.afq
  %bound11150 = icmp ult ptr %scevgep1117, %i.afa
  %found.conflict1151 = and i1 %bound01149, %bound11150
  %conflict.rdx1152 = or i1 %conflict.rdx1148, %found.conflict1151
  %bound01153 = icmp ult ptr %scevgep1125, %i.afs
  %bound11154 = icmp ult ptr %scevgep1115, %i.afa
  %found.conflict1155 = and i1 %bound01153, %bound11154
  %conflict.rdx1156 = or i1 %conflict.rdx1152, %found.conflict1155
  %bound01157 = icmp ult ptr %scevgep1125, %i.afu
  %bound11158 = icmp ult ptr %scevgep1116, %i.afa
  %found.conflict1159 = and i1 %bound01157, %bound11158
  %conflict.rdx1160 = or i1 %conflict.rdx1156, %found.conflict1159
  %bound01161 = icmp ult ptr %scevgep1125, %i.afw
  %bound11162 = icmp ult ptr %scevgep1113, %i.afa
  %found.conflict1163 = and i1 %bound01161, %bound11162
  %conflict.rdx1164 = or i1 %conflict.rdx1160, %found.conflict1163
  %bound01165 = icmp ult ptr %scevgep1125, %i.afy
  %bound11166 = icmp ult ptr %scevgep1114, %i.afa
  %found.conflict1167 = and i1 %bound01165, %bound11166
  %conflict.rdx1168 = or i1 %conflict.rdx1164, %found.conflict1167
  %bound01169 = icmp ult ptr %scevgep1122, %i.afe
  %bound11170 = icmp ult ptr %scevgep1120, %i.afc
  %found.conflict1171 = and i1 %bound01169, %bound11170
  %conflict.rdx1172 = or i1 %conflict.rdx1168, %found.conflict1171
  %bound01173 = icmp ult ptr %scevgep1122, %i.afi
  %bound11174 = icmp ult ptr %scevgep1118, %i.afc
  %found.conflict1175 = and i1 %bound01173, %bound11174
  %conflict.rdx1176 = or i1 %conflict.rdx1172, %found.conflict1175
  %bound01177 = icmp ult ptr %scevgep1122, %i.afk
  %bound11178 = icmp ult ptr %i.aae, %i.afc
  %found.conflict1179 = and i1 %bound01177, %bound11178
  %conflict.rdx1180 = or i1 %conflict.rdx1176, %found.conflict1179
  %bound01181 = icmp ult ptr %scevgep1122, %i.afm
  %bound11182 = icmp ult ptr %3, %i.afc
  %found.conflict1183 = and i1 %bound01181, %bound11182
  %conflict.rdx1184 = or i1 %conflict.rdx1180, %found.conflict1183
  %bound01185 = icmp ult ptr %scevgep1122, %i.afq
  %bound11186 = icmp ult ptr %scevgep1117, %i.afc
  %found.conflict1187 = and i1 %bound01185, %bound11186
  %conflict.rdx1188 = or i1 %conflict.rdx1184, %found.conflict1187
  %bound01189 = icmp ult ptr %scevgep1122, %i.afs
  %bound11190 = icmp ult ptr %scevgep1115, %i.afc
  %found.conflict1191 = and i1 %bound01189, %bound11190
  %conflict.rdx1192 = or i1 %conflict.rdx1188, %found.conflict1191
  %bound01193 = icmp ult ptr %scevgep1122, %i.afu
  %bound11194 = icmp ult ptr %scevgep1116, %i.afc
  %found.conflict1195 = and i1 %bound01193, %bound11194
  %conflict.rdx1196 = or i1 %conflict.rdx1192, %found.conflict1195
  %bound01197 = icmp ult ptr %scevgep1122, %i.afw
  %bound11198 = icmp ult ptr %scevgep1113, %i.afc
  %found.conflict1199 = and i1 %bound01197, %bound11198
  %conflict.rdx1200 = or i1 %conflict.rdx1196, %found.conflict1199
  %bound01201 = icmp ult ptr %scevgep1122, %i.afy
  %bound11202 = icmp ult ptr %scevgep1114, %i.afc
  %found.conflict1203 = and i1 %bound01201, %bound11202
  %conflict.rdx1204 = or i1 %conflict.rdx1200, %found.conflict1203
  %bound01205 = icmp ult ptr %scevgep1120, %i.afi
  %bound11206 = icmp ult ptr %scevgep1118, %i.afe
  %found.conflict1207 = and i1 %bound01205, %bound11206
  %conflict.rdx1208 = or i1 %conflict.rdx1204, %found.conflict1207
  %bound01209 = icmp ult ptr %scevgep1120, %i.afk
  %bound11210 = icmp ult ptr %i.aae, %i.afe
  %found.conflict1211 = and i1 %bound01209, %bound11210
  %conflict.rdx1212 = or i1 %conflict.rdx1208, %found.conflict1211
  %bound01213 = icmp ult ptr %scevgep1120, %i.afm
  %bound11214 = icmp ult ptr %3, %i.afe
  %found.conflict1215 = and i1 %bound01213, %bound11214
  %conflict.rdx1216 = or i1 %conflict.rdx1212, %found.conflict1215
  %bound01217 = icmp ult ptr %scevgep1120, %i.afq
  %bound11218 = icmp ult ptr %scevgep1117, %i.afe
  %found.conflict1219 = and i1 %bound01217, %bound11218
  %conflict.rdx1220 = or i1 %conflict.rdx1216, %found.conflict1219
  %bound01221 = icmp ult ptr %scevgep1120, %i.afs
  %bound11222 = icmp ult ptr %scevgep1115, %i.afe
  %found.conflict1223 = and i1 %bound01221, %bound11222
  %conflict.rdx1224 = or i1 %conflict.rdx1220, %found.conflict1223
  %bound01225 = icmp ult ptr %scevgep1120, %i.afu
  %bound11226 = icmp ult ptr %scevgep1116, %i.afe
  %found.conflict1227 = and i1 %bound01225, %bound11226
  %conflict.rdx1228 = or i1 %conflict.rdx1224, %found.conflict1227
  %bound01229 = icmp ult ptr %scevgep1120, %i.afw
  %bound11230 = icmp ult ptr %scevgep1113, %i.afe
  %found.conflict1231 = and i1 %bound01229, %bound11230
  %conflict.rdx1232 = or i1 %conflict.rdx1228, %found.conflict1231
  %bound01233 = icmp ult ptr %scevgep1120, %i.afy
  %bound11234 = icmp ult ptr %scevgep1114, %i.afe
  %found.conflict1235 = and i1 %bound01233, %bound11234
  %conflict.rdx1236 = or i1 %conflict.rdx1232, %found.conflict1235
  %i.aga = and i64 %i.aeu, 7                      ; 2 uses
  %i.agb = icmp eq i64 %i.aga, 0
  %i.agc = select i1 %i.agb, i64 8, i64 %i.aga
  %n.vec1238 = sub i64 %i.aeu, %i.agc             ; 2 uses
  %broadcast.splatinsert1241 = insertelement <8 x i64> poison, i64 %i.aaj, i64 0
  %broadcast.splat1242 = shufflevector <8 x i64> %broadcast.splatinsert1241, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1243 = or disjoint <8 x i64> %broadcast.splat1242, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader329.i

.preheader337.i:                                  ; preds = %bb.n, %.preheader338.i
  %i.agd = add nsw i64 %indvars.iv395.i, %i.zv
  %.idx321.i = shl i64 %i.agd, 4
  %i.age = getelementptr inbounds nuw i8, ptr %3, i64 %.idx321.i ; 2 uses
  %.idx322.i = shl nuw nsw i64 %indvars.iv395.i, 4
  %i.agf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx322.i ; 3 uses
  %i.agg = load <2 x float>, ptr %i.age, align 4, !tbaa !30
  %i.agh = fmul reassoc nsz arcp contract afn <2 x float> %i.agg, splat (float 5.000000e-01)
  %i.agi = load <2 x float>, ptr %i.agf, align 4, !tbaa !30
  %i.agj = fsub reassoc nsz arcp contract afn <2 x float> %i.agi, %i.agh
  store <2 x float> %i.agj, ptr %i.agf, align 4, !tbaa !30
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !30
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, 5.000000e-01
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agf, i64 8 ; 2 uses
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !30
  %i.agp = fsub reassoc nsz arcp contract afn float %i.ago, %i.agm
  store float %i.agp, ptr %i.agn, align 4, !tbaa !30
  br i1 %i.zw, label %.preheader331.i, label %._crit_edge.i176

bb.n:                                             ; preds = %bb.n, %.lr.ph.i178
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i178 ], [ %indvars.iv.next.i182, %bb.n ] ; 3 uses
  %i.agq = trunc nsw i64 %indvars.iv.i180 to i32
  %i.agr = ashr i32 %i.agq, %i.zm
  %i.ags = sext i32 %i.agr to i64
  %i.agt = mul nsw i64 %i.ags, %i.zt
  %gep.i181 = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agt
  %i.agu = load float, ptr %gep.i181, align 4, !tbaa !30
  %indvars.iv.next.i182 = add nsw i64 %indvars.iv.i180, %i.zu ; 3 uses
  %i.agv = trunc nsw i64 %indvars.iv.next.i182 to i32
  %i.agw = ashr i32 %i.agv, %i.zm
  %i.agx = sext i32 %i.agw to i64
  %i.agy = mul nsw i64 %i.agx, %i.zt
  %gep342.i = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agy
  %i.agz = load float, ptr %gep342.i, align 4, !tbaa !30
  %i.aha = fsub reassoc nsz arcp contract afn float %i.agu, %i.agz
  %i.ahb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aha)
  %i.ahc = fpext reassoc nsz arcp contract afn float %i.ahb to double
  %i.ahd = fadd reassoc nsz arcp contract afn double %i.ahc, 1.000000e-05
  %i.ahe = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ahd
  %i.ahf = fptrunc reassoc nsz arcp contract afn double %i.ahe to float
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv.i180
  store float %i.ahf, ptr %i.ahg, align 4, !tbaa !30
  %i.ahh = icmp slt i64 %indvars.iv.next.i182, %i.zy
  br i1 %i.ahh, label %bb.n, label %.preheader337.i

.preheader331.i:                                  ; preds = %.preheader337.i, %.preheader331.i
  %indvars.iv380.i = phi i64 [ %indvars.iv.next381.i, %.preheader331.i ], [ %i.zz, %.preheader337.i ] ; 5 uses
  %i.ahi = sub nsw i64 %indvars.iv380.i, %i.zu    ; 2 uses
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.ahi ; 3 uses
  %i.ahk = mul nsw i64 %i.ahi, %i.uf
  %i.ahl = add nsw i64 %i.ahk, %indvars.iv395.i
  %.idx318.i = shl i64 %i.ahl, 4
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx318.i ; 3 uses
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv380.i ; 3 uses
  %i.aho = add nsw i64 %indvars.iv380.i, %i.zu
  %i.ahp = mul nsw i64 %i.aho, %i.uf
  %i.ahq = add nsw i64 %i.ahp, %indvars.iv395.i
  %.idx319.i = shl i64 %i.ahq, 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx319.i ; 3 uses
  %i.ahs = mul nsw i64 %indvars.iv380.i, %i.uf
  %i.aht = add nsw i64 %i.ahs, %indvars.iv395.i
  %.idx320.i = shl i64 %i.aht, 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx320.i ; 4 uses
  %i.ahv = load float, ptr %i.ahj, align 4, !tbaa !30 ; 2 uses
  %i.ahw = load float, ptr %i.ahm, align 4, !tbaa !30
  %i.ahx = fmul reassoc nsz arcp contract afn float %i.ahw, %i.ahv
  %i.ahy = load float, ptr %i.ahn, align 4, !tbaa !30 ; 2 uses
  %i.ahz = load float, ptr %i.ahr, align 4, !tbaa !30
  %i.aia = fmul reassoc nsz arcp contract afn float %i.ahz, %i.ahy
  %i.aib = fadd reassoc nsz arcp contract afn float %i.aia, %i.ahx
  %i.aic = fpext reassoc nsz arcp contract afn float %i.aib to double
  %i.aid = fadd reassoc nsz arcp contract afn float %i.ahy, %i.ahv
  %i.aie = fpext reassoc nsz arcp contract afn float %i.aid to double
  %i.aif = fmul reassoc nsz arcp contract afn double %i.aie, 2.000000e+00
  %i.aig = fdiv reassoc nsz arcp contract afn double %i.aic, %i.aif
  %i.aih = load float, ptr %i.ahu, align 4, !tbaa !30
  %i.aii = fpext reassoc nsz arcp contract afn float %i.aih to double
  %i.aij = fsub reassoc nsz arcp contract afn double %i.aii, %i.aig
  %i.aik = fptrunc reassoc nsz arcp contract afn double %i.aij to float
  store float %i.aik, ptr %i.ahu, align 4, !tbaa !30
  %i.ail = load float, ptr %i.ahj, align 4, !tbaa !30 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !30
  %i.aio = fmul reassoc nsz arcp contract afn float %i.ain, %i.ail
  %i.aip = load float, ptr %i.ahn, align 4, !tbaa !30 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !30
  %i.ais = fmul reassoc nsz arcp contract afn float %i.air, %i.aip
  %i.ait = fadd reassoc nsz arcp contract afn float %i.ais, %i.aio
  %i.aiu = fpext reassoc nsz arcp contract afn float %i.ait to double
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.aip, %i.ail
  %i.aiw = fpext reassoc nsz arcp contract afn float %i.aiv to double
  %i.aix = fmul reassoc nsz arcp contract afn double %i.aiw, 2.000000e+00
  %i.aiy = fdiv reassoc nsz arcp contract afn double %i.aiu, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !30
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !30
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ajf = load <2 x float>, ptr %i.aiz, align 4, !tbaa !30
  %i.ajg = fpext <2 x float> %i.ajf to <2 x double> ; 2 uses
  %i.ajh = extractelement <2 x double> %i.ajg, i64 0
  %i.aji = fsub reassoc nsz arcp contract afn double %i.ajh, %i.aiy
  %i.ajj = fptrunc reassoc nsz arcp contract afn double %i.aji to float
  store float %i.ajj, ptr %i.aiz, align 4, !tbaa !30
  %i.ajk = load float, ptr %i.ahj, align 4, !tbaa !30 ; 2 uses
  %i.ajl = fmul reassoc nsz arcp contract afn float %i.ajb, %i.ajk
  %i.ajm = load float, ptr %i.ahn, align 4, !tbaa !30 ; 2 uses
  %i.ajn = fmul reassoc nsz arcp contract afn float %i.ajd, %i.ajm
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajl
  %i.ajp = fpext reassoc nsz arcp contract afn float %i.ajo to double
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajm, %i.ajk
  %i.ajr = fpext reassoc nsz arcp contract afn float %i.ajq to double
  %i.ajs = fmul reassoc nsz arcp contract afn double %i.ajr, 2.000000e+00
  %i.ajt = fdiv reassoc nsz arcp contract afn double %i.ajp, %i.ajs
  %i.aju = extractelement <2 x double> %i.ajg, i64 1
  %i.ajv = fsub reassoc nsz arcp contract afn double %i.aju, %i.ajt
  %i.ajw = fptrunc reassoc nsz arcp contract afn double %i.ajv to float
  store float %i.ajw, ptr %i.aje, align 4, !tbaa !30
  %indvars.iv.next381.i = add nsw i64 %indvars.iv380.i, %i.zz ; 3 uses
  %i.ajx = icmp slt i64 %indvars.iv.next381.i, %i.zy
  br i1 %i.ajx, label %.preheader331.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.preheader331.i
  %i.ajy = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %._crit_edge.i176

._crit_edge.i176:                                 ; preds = %._crit_edge.loopexit.i, %.preheader337.i
  %.1294.lcssa.i = phi i32 [ %i.zj, %.preheader337.i ], [ %i.ajy, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ajz = icmp slt i32 %.1294.lcssa.i, %i.h
  br i1 %i.ajz, label %.preheader334.i, label %.loopexit335.i

.preheader334.i:                                  ; preds = %._crit_edge.i176
  %i.aka = sub nsw i32 %.1294.lcssa.i, %i.zk
  %i.akb = sext i32 %i.aka to i64
  %i.akc = mul nsw i64 %i.akb, %i.uf
  %i.akd = add nsw i64 %i.akc, %indvars.iv395.i
  %.idx316.i = shl i64 %i.akd, 4
  %i.ake = getelementptr inbounds nuw i8, ptr %3, i64 %.idx316.i ; 2 uses
  %i.akf = sext i32 %.1294.lcssa.i to i64
  %i.akg = mul nsw i64 %i.akf, %i.uf
  %i.akh = add nsw i64 %i.akg, %indvars.iv395.i
  %.idx317.i = shl i64 %i.akh, 4
  %i.aki = getelementptr inbounds nuw i8, ptr %3, i64 %.idx317.i ; 3 uses
  %i.akj = load <2 x float>, ptr %i.ake, align 4, !tbaa !30
  %i.akk = fmul reassoc nsz arcp contract afn <2 x float> %i.akj, splat (float 5.000000e-01)
  %i.akl = load <2 x float>, ptr %i.aki, align 4, !tbaa !30
  %i.akm = fsub reassoc nsz arcp contract afn <2 x float> %i.akl, %i.akk
  store <2 x float> %i.akm, ptr %i.aki, align 4, !tbaa !30
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !30
  %i.akp = fmul reassoc nsz arcp contract afn float %i.ako, 5.000000e-01
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aki, i64 8 ; 2 uses
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !30
  %i.aks = fsub reassoc nsz arcp contract afn float %i.akr, %i.akp
  store float %i.aks, ptr %i.akq, align 4, !tbaa !30
  br label %.loopexit335.i

.loopexit335.i:                                   ; preds = %.preheader334.i, %._crit_edge.i176
  br i1 %i.zx, label %.preheader330.i, label %._crit_edge350.i

.preheader330.i:                                  ; preds = %.loopexit335.i, %.preheader330.i
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %.preheader330.i ], [ %i.zu, %.loopexit335.i ] ; 5 uses
  %i.akt = sub nsw i64 %indvars.iv389.i, %i.zu    ; 2 uses
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.akt ; 3 uses
  %i.akv = mul nsw i64 %i.akt, %i.uf
  %i.akw = add nsw i64 %i.akv, %indvars.iv395.i
  %.idx313.i = shl i64 %i.akw, 4
  %i.akx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx313.i ; 3 uses
  %i.aky = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv389.i ; 3 uses
  %i.akz = add nsw i64 %indvars.iv389.i, %i.zu
  %i.ala = mul nsw i64 %i.akz, %i.uf
  %i.alb = add nsw i64 %i.ala, %indvars.iv395.i
  %.idx314.i = shl i64 %i.alb, 4
  %i.alc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx314.i ; 3 uses
  %i.ald = mul nsw i64 %indvars.iv389.i, %i.uf
  %i.ale = add nsw i64 %i.ald, %indvars.iv395.i
  %.idx315.i = shl i64 %i.ale, 4
  %i.alf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx315.i ; 4 uses
  %i.alg = load float, ptr %i.aku, align 4, !tbaa !30 ; 2 uses
  %i.alh = load float, ptr %i.akx, align 4, !tbaa !30
  %i.ali = fmul reassoc nsz arcp contract afn float %i.alh, %i.alg
  %i.alj = load float, ptr %i.aky, align 4, !tbaa !30 ; 2 uses
  %i.alk = load float, ptr %i.alc, align 4, !tbaa !30
  %i.all = fmul reassoc nsz arcp contract afn float %i.alk, %i.alj
  %i.alm = fadd reassoc nsz arcp contract afn float %i.all, %i.ali
  %i.aln = fadd reassoc nsz arcp contract afn float %i.alj, %i.alg
  %i.alo = fdiv reassoc nsz arcp contract afn float %i.alm, %i.aln
  %i.alp = load float, ptr %i.alf, align 4, !tbaa !30
  %i.alq = fadd reassoc nsz arcp contract afn float %i.alo, %i.alp
  store float %i.alq, ptr %i.alf, align 4, !tbaa !30
  %i.alr = load float, ptr %i.aku, align 4, !tbaa !30 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.alt = load float, ptr %i.als, align 4, !tbaa !30
  %i.alu = fmul reassoc nsz arcp contract afn float %i.alt, %i.alr
  %i.alv = load float, ptr %i.aky, align 4, !tbaa !30 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alc, i64 4
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !30
  %i.aly = fmul reassoc nsz arcp contract afn float %i.alx, %i.alv
  %i.alz = fadd reassoc nsz arcp contract afn float %i.aly, %i.alu
  %i.ama = fadd reassoc nsz arcp contract afn float %i.alv, %i.alr
  %i.amb = fdiv reassoc nsz arcp contract afn float %i.alz, %i.ama
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alf, i64 4 ; 2 uses
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !30
  %i.ame = fadd reassoc nsz arcp contract afn float %i.amb, %i.amd
  store float %i.ame, ptr %i.amc, align 4, !tbaa !30
  %i.amf = load float, ptr %i.aku, align 4, !tbaa !30 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !30
  %i.ami = fmul reassoc nsz arcp contract afn float %i.amh, %i.amf
  %i.amj = load float, ptr %i.aky, align 4, !tbaa !30 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !30
  %i.amm = fmul reassoc nsz arcp contract afn float %i.aml, %i.amj
  %i.amn = fadd reassoc nsz arcp contract afn float %i.amm, %i.ami
  %i.amo = fadd reassoc nsz arcp contract afn float %i.amj, %i.amf
  %i.amp = fdiv reassoc nsz arcp contract afn float %i.amn, %i.amo
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !30
  %i.ams = fadd reassoc nsz arcp contract afn float %i.amp, %i.amr
  store float %i.ams, ptr %i.amq, align 4, !tbaa !30
  %indvars.iv.next390.i = add nsw i64 %indvars.iv389.i, %i.zz ; 3 uses
  %i.amt = icmp slt i64 %indvars.iv.next390.i, %i.zy
  br i1 %i.amt, label %.preheader330.i, label %._crit_edge350.loopexit.i

._crit_edge350.loopexit.i:                        ; preds = %.preheader330.i
  %i.amu = trunc nsw i64 %indvars.iv.next390.i to i32
  br label %._crit_edge350.i

._crit_edge350.i:                                 ; preds = %._crit_edge350.loopexit.i, %.loopexit335.i
  %.2.lcssa.i = phi i32 [ %i.zk, %.loopexit335.i ], [ %i.amu, %._crit_edge350.loopexit.i ] ; 3 uses
  %i.amv = icmp slt i32 %.2.lcssa.i, %i.h
  br i1 %i.amv, label %.preheader332.i, label %.loopexit333.i

.preheader332.i:                                  ; preds = %._crit_edge350.i
  %i.amw = sub nsw i32 %.2.lcssa.i, %i.zk
  %i.amx = sext i32 %i.amw to i64
  %i.amy = mul nsw i64 %i.amx, %i.uf
  %i.amz = add nsw i64 %i.amy, %indvars.iv395.i
  %.idx311.i = shl i64 %i.amz, 4
  %i.ana = getelementptr inbounds nuw i8, ptr %3, i64 %.idx311.i ; 2 uses
  %i.anb = sext i32 %.2.lcssa.i to i64
  %i.anc = mul nsw i64 %i.anb, %i.uf
  %i.and = add nsw i64 %i.anc, %indvars.iv395.i
  %.idx312.i = shl i64 %i.and, 4
  %i.ane = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.i ; 3 uses
  %i.anf = load <2 x float>, ptr %i.ana, align 4, !tbaa !30
  %i.ang = load <2 x float>, ptr %i.ane, align 4, !tbaa !30
  %i.anh = fadd reassoc nsz arcp contract afn <2 x float> %i.ang, %i.anf
  store <2 x float> %i.anh, ptr %i.ane, align 4, !tbaa !30
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !30
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ane, i64 8 ; 2 uses
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !30
  %i.anm = fadd reassoc nsz arcp contract afn float %i.anl, %i.anj
  store float %i.anm, ptr %i.ank, align 4, !tbaa !30
  br label %.loopexit333.i

.loopexit333.i:                                   ; preds = %.preheader332.i, %._crit_edge350.i
  %indvars.iv.next396.i = add nuw nsw i64 %indvars.iv395.i, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next396.i, %i.uf
  br i1 %exitcond.not.i177, label %._crit_edge354.i, label %.preheader338.i

.preheader329.i:                                  ; preds = %.loopexit.i171, %.preheader329.lr.ph.i
  %indvars.iv427.i = phi i64 [ 0, %.preheader329.lr.ph.i ], [ %indvars.iv.next428.i, %.loopexit.i171 ] ; 3 uses
  br i1 %i.aag, label %.lr.ph356.i, label %.preheader328.i

.lr.ph356.i:                                      ; preds = %.preheader329.i
  %i.ann = load ptr, ptr %i.aah, align 8, !tbaa !122
  %i.ano = trunc nuw nsw i64 %indvars.iv427.i to i32
  %i.anp = lshr i32 %i.ano, %i.zm
  %i.anq = zext nneg i32 %i.anp to i64
  %i.anr = mul nsw i64 %i.anq, %i.aai
  %i.ans = getelementptr [4 x i8], ptr %i.ann, i64 %i.anr ; 2 uses
  br label %bb.o

.preheader328.i:                                  ; preds = %bb.o, %.preheader329.i
  %i.ant = mul nsw i64 %indvars.iv427.i, %i.k     ; 14 uses
  %i.anu = add nsw i64 %i.ant, %i.aaj             ; 5 uses
  %.idx309.i = shl i64 %i.anu, 4
  %i.anv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx309.i ; 2 uses
  %.idx310.i = shl i64 %i.ant, 4
  %i.anw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx310.i ; 3 uses
  %i.anx = load <2 x float>, ptr %i.anv, align 4, !tbaa !30
  %i.any = fmul reassoc nsz arcp contract afn <2 x float> %i.anx, splat (float 5.000000e-01)
  %i.anz = load <2 x float>, ptr %i.anw, align 4, !tbaa !30
  %i.aoa = fsub reassoc nsz arcp contract afn <2 x float> %i.anz, %i.any
  store <2 x float> %i.aoa, ptr %i.anw, align 4, !tbaa !30
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !30
  %i.aod = fmul reassoc nsz arcp contract afn float %i.aoc, 5.000000e-01
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anw, i64 8 ; 2 uses
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !30
  %i.aog = fsub reassoc nsz arcp contract afn float %i.aof, %i.aod
  store float %i.aog, ptr %i.aoe, align 4, !tbaa !30
  br i1 %i.aak, label %.preheader323.i.preheader, label %._crit_edge360.i

.preheader323.i.preheader:                        ; preds = %.preheader328.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx1590
  br i1 %brmerge, label %.preheader323.i.preheader1592, label %vector.ph1554

.preheader323.i.preheader1592:                    ; preds = %.preheader323.i.preheader, %vector.body1558
  %indvars.iv409.i.ph = phi i64 [ %i.aer, %vector.body1558 ], [ %i.aan, %.preheader323.i.preheader ]
  br label %.preheader323.i

vector.ph1554:                                    ; preds = %.preheader323.i.preheader
  %broadcast.splatinsert1556 = insertelement <4 x i64> poison, i64 %i.ant, i64 0
  %broadcast.splat1557 = shufflevector <4 x i64> %broadcast.splatinsert1556, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1558

vector.body1558:                                  ; preds = %vector.body1558, %vector.ph1554
  %index1559 = phi i64 [ 0, %vector.ph1554 ], [ %index.next1582, %vector.body1558 ] ; 2 uses
  %vec.ind1560 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph1554 ], [ %vec.ind.next1583, %vector.body1558 ] ; 2 uses
  %i.aoh = or disjoint i64 %index1559, 1          ; 3 uses
  %i.aoi = sub nuw nsw i64 %i.aoh, %i.aaj         ; 2 uses
  %i.aoj = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aoi ; 3 uses
  %i.aok = add nsw i64 %i.aoi, %i.ant
  %i.aol = shl i64 %i.aok, 4
  %i.aom = getelementptr inbounds nuw i8, ptr %3, i64 %i.aol
  %i.aon = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aoh ; 3 uses
  %i.aoo = add i64 %i.aoh, %i.anu
  %i.aop = shl i64 %i.aoo, 4
  %i.aoq = getelementptr inbounds nuw i8, ptr %3, i64 %i.aop
  %i.aor = add nuw nsw <4 x i64> %vec.ind1560, %broadcast.splat1557
  %i.aos = shl <4 x i64> %i.aor, splat (i64 4)
  %wide.gep1561 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.aos ; 4 uses
  %i.aot = extractelement <4 x ptr> %wide.gep1561, i64 0
  %wide.load1562 = load <4 x float>, ptr %i.aoj, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %wide.vec1563 = load <16 x float>, ptr %i.aom, align 4, !tbaa !30 ; 3 uses
  %strided.vec1564 = shufflevector <16 x float> %wide.vec1563, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1565 = shufflevector <16 x float> %wide.vec1563, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1566 = shufflevector <16 x float> %wide.vec1563, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aou = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1564, %wide.load1562
  %wide.load1567 = load <4 x float>, ptr %i.aon, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %wide.vec1568 = load <16 x float>, ptr %i.aoq, align 4, !tbaa !30 ; 3 uses
  %strided.vec1569 = shufflevector <16 x float> %wide.vec1568, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1570 = shufflevector <16 x float> %wide.vec1568, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1571 = shufflevector <16 x float> %wide.vec1568, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aov = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1569, %wide.load1567
  %i.aow = fadd reassoc nsz arcp contract afn <4 x float> %i.aov, %i.aou
  %i.aox = fpext reassoc nsz arcp contract afn <4 x float> %i.aow to <4 x double>
  %i.aoy = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1567, %wide.load1562
  %i.aoz = fpext reassoc nsz arcp contract afn <4 x float> %i.aoy to <4 x double>
  %i.apa = fmul reassoc nsz arcp contract afn <4 x double> %i.aoz, splat (double 2.000000e+00)
  %i.apb = fdiv reassoc nsz arcp contract afn <4 x double> %i.aox, %i.apa
  %wide.vec1572 = load <16 x float>, ptr %i.aot, align 4, !tbaa !30 ; 3 uses
  %strided.vec1573 = shufflevector <16 x float> %wide.vec1572, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1574 = shufflevector <16 x float> %wide.vec1572, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1575 = shufflevector <16 x float> %wide.vec1572, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.apc = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1573 to <4 x double>
  %i.apd = fsub reassoc nsz arcp contract afn <4 x double> %i.apc, %i.apb
  %i.ape = fptrunc reassoc nsz arcp contract afn <4 x double> %i.apd to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ape, <4 x ptr> align 4 %wide.gep1561, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !135, !noalias !136
  %wide.load1576 = load <4 x float>, ptr %i.aoj, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.apf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1565, %wide.load1576
  %wide.load1577 = load <4 x float>, ptr %i.aon, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.apg = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1570, %wide.load1577
  %i.aph = fadd reassoc nsz arcp contract afn <4 x float> %i.apg, %i.apf
  %i.api = fpext reassoc nsz arcp contract afn <4 x float> %i.aph to <4 x double>
  %i.apj = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1577, %wide.load1576
  %i.apk = fpext reassoc nsz arcp contract afn <4 x float> %i.apj to <4 x double>
  %i.apl = fmul reassoc nsz arcp contract afn <4 x double> %i.apk, splat (double 2.000000e+00)
  %i.apm = fdiv reassoc nsz arcp contract afn <4 x double> %i.api, %i.apl
  %wide.gep1578 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1561, i64 4
  %i.apn = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1574 to <4 x double>
  %i.apo = fsub reassoc nsz arcp contract afn <4 x double> %i.apn, %i.apm
  %i.app = fptrunc reassoc nsz arcp contract afn <4 x double> %i.apo to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.app, <4 x ptr> align 4 %wide.gep1578, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !137, !noalias !138
  %wide.load1579 = load <4 x float>, ptr %i.aoj, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.apq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1566, %wide.load1579
  %wide.load1580 = load <4 x float>, ptr %i.aon, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.apr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1571, %wide.load1580
  %i.aps = fadd reassoc nsz arcp contract afn <4 x float> %i.apr, %i.apq
  %i.apt = fpext reassoc nsz arcp contract afn <4 x float> %i.aps to <4 x double>
  %i.apu = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1580, %wide.load1579
  %i.apv = fpext reassoc nsz arcp contract afn <4 x float> %i.apu to <4 x double>
  %i.apw = fmul reassoc nsz arcp contract afn <4 x double> %i.apv, splat (double 2.000000e+00)
  %i.apx = fdiv reassoc nsz arcp contract afn <4 x double> %i.apt, %i.apw
  %wide.gep1581 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1561, i64 8
  %i.apy = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1575 to <4 x double>
  %i.apz = fsub reassoc nsz arcp contract afn <4 x double> %i.apy, %i.apx
  %i.aqa = fptrunc reassoc nsz arcp contract afn <4 x double> %i.apz to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aqa, <4 x ptr> align 4 %wide.gep1581, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !139, !noalias !140
  %index.next1582 = add nuw i64 %index1559, 4     ; 2 uses
  %vec.ind.next1583 = add nuw nsw <4 x i64> %vec.ind1560, splat (i64 4)
  %i.aqb = icmp eq i64 %index.next1582, %n.vec1555
  br i1 %i.aqb, label %.preheader323.i.preheader1592, label %vector.body1558, !llvm.loop !101

bb.o:                                             ; preds = %bb.o, %.lr.ph356.i
  %indvars.iv398.i = phi i64 [ 0, %.lr.ph356.i ], [ %indvars.iv.next399.i, %bb.o ] ; 3 uses
  %i.aqc = trunc nsw i64 %indvars.iv398.i to i32
  %i.aqd = ashr i32 %i.aqc, %i.zm
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr [4 x i8], ptr %i.ans, i64 %i.aqe
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !30
  %indvars.iv.next399.i = add nsw i64 %indvars.iv398.i, %i.aaj ; 3 uses
  %i.aqh = trunc nsw i64 %indvars.iv.next399.i to i32
  %i.aqi = ashr i32 %i.aqh, %i.zm
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = getelementptr [4 x i8], ptr %i.ans, i64 %i.aqj
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !30
  %i.aqm = fsub reassoc nsz arcp contract afn float %i.aqg, %i.aql
  %i.aqn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aqm)
  %i.aqo = fpext reassoc nsz arcp contract afn float %i.aqn to double
  %i.aqp = fadd reassoc nsz arcp contract afn double %i.aqo, 1.000000e-05
  %i.aqq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aqp
  %i.aqr = fptrunc reassoc nsz arcp contract afn double %i.aqq to float
  %i.aqs = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %indvars.iv398.i
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !30
  %i.aqt = icmp slt i64 %indvars.iv.next399.i, %i.aam
  br i1 %i.aqt, label %bb.o, label %.preheader328.i

.preheader323.i:                                  ; preds = %.preheader323.i.preheader1592, %.preheader323.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i, %.preheader323.i ], [ %indvars.iv409.i.ph, %.preheader323.i.preheader1592 ] ; 5 uses
  %i.aqu = sub nsw i64 %indvars.iv409.i, %i.aaj   ; 2 uses
  %i.aqv = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aqu ; 3 uses
  %i.aqw = add nsw i64 %i.aqu, %i.ant
  %.idx306.i = shl i64 %i.aqw, 4
  %i.aqx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx306.i ; 3 uses
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %indvars.iv409.i ; 3 uses
  %.reass.i175 = add i64 %indvars.iv409.i, %i.anu
  %.idx307.i = shl i64 %.reass.i175, 4
  %i.aqz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx307.i ; 3 uses
  %i.ara = add nsw i64 %indvars.iv409.i, %i.ant
  %.idx308.i = shl i64 %i.ara, 4
  %i.arb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx308.i ; 4 uses
  %i.arc = load float, ptr %i.aqv, align 4, !tbaa !30 ; 2 uses
  %i.ard = load float, ptr %i.aqx, align 4, !tbaa !30
  %i.are = fmul reassoc nsz arcp contract afn float %i.ard, %i.arc
  %i.arf = load float, ptr %i.aqy, align 4, !tbaa !30 ; 2 uses
  %i.arg = load float, ptr %i.aqz, align 4, !tbaa !30
  %i.arh = fmul reassoc nsz arcp contract afn float %i.arg, %i.arf
  %i.ari = fadd reassoc nsz arcp contract afn float %i.arh, %i.are
  %i.arj = fpext reassoc nsz arcp contract afn float %i.ari to double
  %i.ark = fadd reassoc nsz arcp contract afn float %i.arf, %i.arc
  %i.arl = fpext reassoc nsz arcp contract afn float %i.ark to double
  %i.arm = fmul reassoc nsz arcp contract afn double %i.arl, 2.000000e+00
  %i.arn = fdiv reassoc nsz arcp contract afn double %i.arj, %i.arm
  %i.aro = load float, ptr %i.arb, align 4, !tbaa !30
  %i.arp = fpext reassoc nsz arcp contract afn float %i.aro to double
  %i.arq = fsub reassoc nsz arcp contract afn double %i.arp, %i.arn
  %i.arr = fptrunc reassoc nsz arcp contract afn double %i.arq to float
  store float %i.arr, ptr %i.arb, align 4, !tbaa !30
  %i.ars = load float, ptr %i.aqv, align 4, !tbaa !30 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqx, i64 4
  %i.aru = load float, ptr %i.art, align 4, !tbaa !30
  %i.arv = fmul reassoc nsz arcp contract afn float %i.aru, %i.ars
  %i.arw = load float, ptr %i.aqy, align 4, !tbaa !30 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqz, i64 4
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !30
  %i.arz = fmul reassoc nsz arcp contract afn float %i.ary, %i.arw
  %i.asa = fadd reassoc nsz arcp contract afn float %i.arz, %i.arv
  %i.asb = fpext reassoc nsz arcp contract afn float %i.asa to double
  %i.asc = fadd reassoc nsz arcp contract afn float %i.arw, %i.ars
  %i.asd = fpext reassoc nsz arcp contract afn float %i.asc to double
  %i.ase = fmul reassoc nsz arcp contract afn double %i.asd, 2.000000e+00
  %i.asf = fdiv reassoc nsz arcp contract afn double %i.asb, %i.ase
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arb, i64 4 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !30
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !30
  %i.asl = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.asm = load <2 x float>, ptr %i.asg, align 4, !tbaa !30
  %i.asn = fpext <2 x float> %i.asm to <2 x double> ; 2 uses
  %i.aso = extractelement <2 x double> %i.asn, i64 0
  %i.asp = fsub reassoc nsz arcp contract afn double %i.aso, %i.asf
  %i.asq = fptrunc reassoc nsz arcp contract afn double %i.asp to float
  store float %i.asq, ptr %i.asg, align 4, !tbaa !30
  %i.asr = load float, ptr %i.aqv, align 4, !tbaa !30 ; 2 uses
  %i.ass = fmul reassoc nsz arcp contract afn float %i.asi, %i.asr
  %i.ast = load float, ptr %i.aqy, align 4, !tbaa !30 ; 2 uses
  %i.asu = fmul reassoc nsz arcp contract afn float %i.ask, %i.ast
  %i.asv = fadd reassoc nsz arcp contract afn float %i.asu, %i.ass
  %i.asw = fpext reassoc nsz arcp contract afn float %i.asv to double
  %i.asx = fadd reassoc nsz arcp contract afn float %i.ast, %i.asr
  %i.asy = fpext reassoc nsz arcp contract afn float %i.asx to double
  %i.asz = fmul reassoc nsz arcp contract afn double %i.asy, 2.000000e+00
  %i.ata = fdiv reassoc nsz arcp contract afn double %i.asw, %i.asz
  %i.atb = extractelement <2 x double> %i.asn, i64 1
  %i.atc = fsub reassoc nsz arcp contract afn double %i.atb, %i.ata
  %i.atd = fptrunc reassoc nsz arcp contract afn double %i.atc to float
  store float %i.atd, ptr %i.asl, align 4, !tbaa !30
  %indvars.iv.next410.i = add nsw i64 %indvars.iv409.i, %i.aan ; 3 uses
  %i.ate = icmp slt i64 %indvars.iv.next410.i, %i.aam
  br i1 %i.ate, label %.preheader323.i, label %._crit_edge360.loopexit.i, !llvm.loop !102

._crit_edge360.loopexit.i:                        ; preds = %.preheader323.i
  %i.atf = trunc nsw i64 %indvars.iv.next410.i to i32
  br label %._crit_edge360.i

._crit_edge360.i:                                 ; preds = %._crit_edge360.loopexit.i, %.preheader328.i
  %.0284.lcssa.i = phi i32 [ %i.zj, %.preheader328.i ], [ %i.atf, %._crit_edge360.loopexit.i ] ; 3 uses
  %i.atg = icmp slt i32 %.0284.lcssa.i, %i.f
  br i1 %i.atg, label %.preheader325.i, label %.loopexit326.i

.preheader325.i:                                  ; preds = %._crit_edge360.i
  %i.ath = sub nsw i32 %.0284.lcssa.i, %i.zk
  %i.ati = sext i32 %i.ath to i64
  %i.atj = add nsw i64 %i.ant, %i.ati
  %.idx304.i = shl i64 %i.atj, 4
  %i.atk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx304.i ; 2 uses
  %i.atl = sext i32 %.0284.lcssa.i to i64
  %i.atm = add nsw i64 %i.ant, %i.atl
  %.idx305.i = shl i64 %i.atm, 4
  %i.atn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx305.i ; 3 uses
  %i.ato = load <2 x float>, ptr %i.atk, align 4, !tbaa !30
  %i.atp = fmul reassoc nsz arcp contract afn <2 x float> %i.ato, splat (float 5.000000e-01)
  %i.atq = load <2 x float>, ptr %i.atn, align 4, !tbaa !30
  %i.atr = fsub reassoc nsz arcp contract afn <2 x float> %i.atq, %i.atp
  store <2 x float> %i.atr, ptr %i.atn, align 4, !tbaa !30
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.att = load float, ptr %i.ats, align 4, !tbaa !30
  %i.atu = fmul reassoc nsz arcp contract afn float %i.att, 5.000000e-01
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atn, i64 8 ; 2 uses
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !30
  %i.atx = fsub reassoc nsz arcp contract afn float %i.atw, %i.atu
  store float %i.atx, ptr %i.atv, align 4, !tbaa !30
  br label %.loopexit326.i

.loopexit326.i:                                   ; preds = %.preheader325.i, %._crit_edge360.i
  br i1 %i.aal, label %.preheader.i173.preheader, label %._crit_edge365.i

.preheader.i173.preheader:                        ; preds = %.loopexit326.i
  %or.cond1586.not = xor i1 %or.cond1586, true
  %brmerge1602 = select i1 %or.cond1586.not, i1 true, i1 %conflict.rdx1236
  br i1 %brmerge1602, label %.preheader.i173.preheader1591, label %vector.ph1237

vector.ph1237:                                    ; preds = %.preheader.i173.preheader
  %broadcast.splatinsert1239 = insertelement <8 x i64> poison, i64 %i.ant, i64 0
  %broadcast.splat1240 = shufflevector <8 x i64> %broadcast.splatinsert1239, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1237
  %index1245 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1268, %vector.body1244 ] ; 4 uses
  %vec.ind1246 = phi <8 x i64> [ %induction1243, %vector.ph1237 ], [ %vec.ind.next1269, %vector.body1244 ] ; 2 uses
  %i.aty = sub nuw nsw i64 %index1245, %i.aaj     ; 2 uses
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aty ; 3 uses
  %i.aua = add nsw i64 %i.aty, %i.ant
  %i.aub = shl i64 %i.aua, 4
  %i.auc = getelementptr inbounds nuw i8, ptr %3, i64 %i.aub
  %i.aud = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %index1245 ; 3 uses
  %i.aue = add i64 %index1245, %i.anu
  %i.auf = shl i64 %i.aue, 4
  %i.aug = getelementptr inbounds nuw i8, ptr %3, i64 %i.auf
  %i.auh = add nsw <8 x i64> %vec.ind1246, %broadcast.splat1240
  %i.aui = shl <8 x i64> %i.auh, splat (i64 4)
  %wide.gep1247 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.aui ; 4 uses
  %i.auj = extractelement <8 x ptr> %wide.gep1247, i64 0
  %wide.load1248 = load <8 x float>, ptr %i.atz, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %wide.vec1249 = load <32 x float>, ptr %i.auc, align 4, !tbaa !30 ; 3 uses
  %strided.vec1250 = shufflevector <32 x float> %wide.vec1249, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1251 = shufflevector <32 x float> %wide.vec1249, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1252 = shufflevector <32 x float> %wide.vec1249, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.auk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1250, %wide.load1248
  %wide.load1253 = load <8 x float>, ptr %i.aud, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %wide.vec1254 = load <32 x float>, ptr %i.aug, align 4, !tbaa !30 ; 3 uses
  %strided.vec1255 = shufflevector <32 x float> %wide.vec1254, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1256 = shufflevector <32 x float> %wide.vec1254, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1257 = shufflevector <32 x float> %wide.vec1254, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aul = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1255, %wide.load1253
  %i.aum = fadd reassoc nsz arcp contract afn <8 x float> %i.aul, %i.auk
  %i.aun = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1253, %wide.load1248
  %i.auo = fdiv reassoc nsz arcp contract afn <8 x float> %i.aum, %i.aun
  %wide.vec1258 = load <32 x float>, ptr %i.auj, align 4, !tbaa !30 ; 3 uses
  %strided.vec1259 = shufflevector <32 x float> %wide.vec1258, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1260 = shufflevector <32 x float> %wide.vec1258, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1261 = shufflevector <32 x float> %wide.vec1258, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aup = fadd reassoc nsz arcp contract afn <8 x float> %i.auo, %strided.vec1259
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aup, <8 x ptr> align 4 %wide.gep1247, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !143, !noalias !144
  %wide.load1262 = load <8 x float>, ptr %i.atz, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.auq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1251, %wide.load1262
  %wide.load1263 = load <8 x float>, ptr %i.aud, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.aur = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1256, %wide.load1263
  %i.aus = fadd reassoc nsz arcp contract afn <8 x float> %i.aur, %i.auq
  %i.aut = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1263, %wide.load1262
  %i.auu = fdiv reassoc nsz arcp contract afn <8 x float> %i.aus, %i.aut
  %wide.gep1264 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1247, i64 4
  %i.auv = fadd reassoc nsz arcp contract afn <8 x float> %i.auu, %strided.vec1260
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.auv, <8 x ptr> align 4 %wide.gep1264, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !145, !noalias !146
  %wide.load1265 = load <8 x float>, ptr %i.atz, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.auw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1252, %wide.load1265
  %wide.load1266 = load <8 x float>, ptr %i.aud, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.aux = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1257, %wide.load1266
  %i.auy = fadd reassoc nsz arcp contract afn <8 x float> %i.aux, %i.auw
  %i.auz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1266, %wide.load1265
  %i.ava = fdiv reassoc nsz arcp contract afn <8 x float> %i.auy, %i.auz
  %wide.gep1267 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1247, i64 8
  %i.avb = fadd reassoc nsz arcp contract afn <8 x float> %i.ava, %strided.vec1261
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.avb, <8 x ptr> align 4 %wide.gep1267, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !147, !noalias !148
  %index.next1268 = add nuw i64 %index1245, 8     ; 2 uses
  %vec.ind.next1269 = add nsw <8 x i64> %vec.ind1246, splat (i64 8)
  %i.avc = icmp eq i64 %index.next1268, %n.vec1238
  br i1 %i.avc, label %.preheader.i173.preheader1591, label %vector.body1244, !llvm.loop !115

.preheader.i173.preheader1591:                    ; preds = %vector.body1244, %.preheader.i173.preheader
  %indvars.iv420.i.ph = phi i64 [ %i.aaj, %.preheader.i173.preheader ], [ %n.vec1238, %vector.body1244 ]
  br label %.preheader.i173

.preheader.i173:                                  ; preds = %.preheader.i173.preheader1591, %.preheader.i173
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %.preheader.i173 ], [ %indvars.iv420.i.ph, %.preheader.i173.preheader1591 ] ; 5 uses
  %i.avd = sub nsw i64 %indvars.iv420.i, %i.aaj   ; 2 uses
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.avd ; 3 uses
  %i.avf = add nsw i64 %i.avd, %i.ant
  %.idx301.i = shl i64 %i.avf, 4
  %i.avg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx301.i ; 3 uses
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %indvars.iv420.i ; 3 uses
  %.reass437.i = add i64 %indvars.iv420.i, %i.anu
  %.idx302.i = shl i64 %.reass437.i, 4
  %i.avi = getelementptr inbounds nuw i8, ptr %3, i64 %.idx302.i ; 3 uses
  %i.avj = add nsw i64 %indvars.iv420.i, %i.ant
  %.idx303.i = shl i64 %i.avj, 4
  %i.avk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx303.i ; 4 uses
  %i.avl = load float, ptr %i.ave, align 4, !tbaa !30 ; 2 uses
  %i.avm = load float, ptr %i.avg, align 4, !tbaa !30
  %i.avn = fmul reassoc nsz arcp contract afn float %i.avm, %i.avl
  %i.avo = load float, ptr %i.avh, align 4, !tbaa !30 ; 2 uses
  %i.avp = load float, ptr %i.avi, align 4, !tbaa !30
  %i.avq = fmul reassoc nsz arcp contract afn float %i.avp, %i.avo
  %i.avr = fadd reassoc nsz arcp contract afn float %i.avq, %i.avn
  %i.avs = fadd reassoc nsz arcp contract afn float %i.avo, %i.avl
  %i.avt = fdiv reassoc nsz arcp contract afn float %i.avr, %i.avs
  %i.avu = load float, ptr %i.avk, align 4, !tbaa !30
  %i.avv = fadd reassoc nsz arcp contract afn float %i.avt, %i.avu
  store float %i.avv, ptr %i.avk, align 4, !tbaa !30
  %i.avw = load float, ptr %i.ave, align 4, !tbaa !30 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avg, i64 4
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !30
  %i.avz = fmul reassoc nsz arcp contract afn float %i.avy, %i.avw
  %i.awa = load float, ptr %i.avh, align 4, !tbaa !30 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avi, i64 4
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !30
  %i.awd = fmul reassoc nsz arcp contract afn float %i.awc, %i.awa
  %i.awe = fadd reassoc nsz arcp contract afn float %i.awd, %i.avz
  %i.awf = fadd reassoc nsz arcp contract afn float %i.awa, %i.avw
  %i.awg = fdiv reassoc nsz arcp contract afn float %i.awe, %i.awf
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avk, i64 4 ; 2 uses
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !30
  %i.awj = fadd reassoc nsz arcp contract afn float %i.awg, %i.awi
  store float %i.awj, ptr %i.awh, align 4, !tbaa !30
  %i.awk = load float, ptr %i.ave, align 4, !tbaa !30 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !30
  %i.awn = fmul reassoc nsz arcp contract afn float %i.awm, %i.awk
  %i.awo = load float, ptr %i.avh, align 4, !tbaa !30 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !30
  %i.awr = fmul reassoc nsz arcp contract afn float %i.awq, %i.awo
  %i.aws = fadd reassoc nsz arcp contract afn float %i.awr, %i.awn
  %i.awt = fadd reassoc nsz arcp contract afn float %i.awo, %i.awk
  %i.awu = fdiv reassoc nsz arcp contract afn float %i.aws, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.avk, i64 8 ; 2 uses
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !30
  %i.awx = fadd reassoc nsz arcp contract afn float %i.awu, %i.aww
  store float %i.awx, ptr %i.awv, align 4, !tbaa !30
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, %i.aan ; 3 uses
  %i.awy = icmp slt i64 %indvars.iv.next421.i, %i.aam
  br i1 %i.awy, label %.preheader.i173, label %._crit_edge365.loopexit.i, !llvm.loop !116

._crit_edge365.loopexit.i:                        ; preds = %.preheader.i173
  %i.awz = trunc nsw i64 %indvars.iv.next421.i to i32
  br label %._crit_edge365.i

._crit_edge365.i:                                 ; preds = %._crit_edge365.loopexit.i, %.loopexit326.i
  %.1.lcssa.i170 = phi i32 [ %i.zk, %.loopexit326.i ], [ %i.awz, %._crit_edge365.loopexit.i ] ; 3 uses
end_hunk_1
