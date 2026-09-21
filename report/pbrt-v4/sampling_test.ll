Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN20SummedArea_Rect_Test8TestBodyEv:.preheader93.preheader
  %i.cw = icmp slt i64 %indvars.iv139, %i.cv
  br i1 %i.cw, label %.preheader88.lr.ph, label %._crit_edge125

.preheader88.lr.ph:                               ; preds = %.preheader89
  %i.cx = icmp samesign ult i32 %.043130, %.041126
  %i.cy = uitofp nneg i32 %.041126 to float
  %i.cz = insertelement <2 x float> poison, float %i.cy, i64 1
  br label %.preheader88

._crit_edge127:                                   ; preds = %._crit_edge125, %.preheader90
  %i.da = phi i32 [ %i.bo, %.preheader90 ], [ %i.fn, %._crit_edge125 ] ; 2 uses
  %i.db = phi i32 [ %i.bp, %.preheader90 ], [ %i.fo, %._crit_edge125 ] ; 2 uses
  %i.dc = phi i32 [ %i.bq, %.preheader90 ], [ %i.fp, %._crit_edge125 ] ; 5 uses
  %i.dd = phi i32 [ %i.br, %.preheader90 ], [ %i.fq, %._crit_edge125 ] ; 5 uses
  %i.de = phi i32 [ %i.bs, %.preheader90 ], [ %i.fr, %._crit_edge125 ]
  %i.df = phi i32 [ %i.bt, %.preheader90 ], [ %i.fs, %._crit_edge125 ]
  %i.dg = phi i32 [ %i.bw, %.preheader90 ], [ %i.fr, %._crit_edge125 ]
  %i.dh = phi i32 [ %i.bx, %.preheader90 ], [ %i.fs, %._crit_edge125 ]
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.di = sub nsw i32 %i.dd, %i.dc
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next140, %i.dj
  br i1 %i.dk, label %.preheader90, label %._crit_edge129, !llvm.loop !310

.preheader88:                                     ; preds = %.preheader88.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit
  %indvar = phi i64 [ 0, %.preheader88.lr.ph ], [ %indvar.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %indvars.iv147 = phi i64 [ %indvars.iv139, %.preheader88.lr.ph ], [ %indvars.iv.next148, %_ZN7testing15AssertionResultD2Ev.exit ] ; 4 uses
  %i.dl = phi i32 [ %i.cu, %.preheader88.lr.ph ], [ %i.nj, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.dm = phi i32 [ %i.cs, %.preheader88.lr.ph ], [ %i.ni, %_ZN7testing15AssertionResultD2Ev.exit ]
  %i.dn = add i64 %indvar, -1
  %.pre152 = load i32, ptr %i.k, align 4          ; 2 uses
  br i1 %i.cx, label %.preheader.lr.ph, label %._crit_edge121

.preheader.lr.ph:                                 ; preds = %.preheader88
  %i.do = icmp samesign ult i64 %indvars.iv139, %indvars.iv147
  %i.dp = load ptr, ptr %i.i, align 8             ; 9 uses
  br i1 %i.do, label %.preheader.us.preheader, label %._crit_edge121

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %indvar, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dq = icmp ult i64 %i.dn, 7
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge116.us
  %.037120.us = phi i32 [ %i.fm, %._crit_edge116.us ], [ %.043130, %.preheader.us.preheader ] ; 2 uses
  %.038119.us = phi float [ %.lcssa, %._crit_edge116.us ], [ 0.000000e+00, %.preheader.us.preheader ] ; 2 uses
  %i.dr = sub nsw i32 %.037120.us, %.pre152
  %i.ds = mul nsw i32 %i.dr, %i.dl
  %invariant.op117.us = sub i32 %i.ds, %i.dm      ; 9 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us, %.prol.preheader
  %indvars.iv141.prol = phi i64 [ %indvars.iv.next142.prol, %.prol.preheader ], [ %indvars.iv139, %.preheader.us ] ; 2 uses
  %.139114.us.prol = phi float [ %i.dx, %.prol.preheader ], [ %.038119.us, %.preheader.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.us ]
  %i.dt = trunc nuw nsw i64 %indvars.iv141.prol to i32
  %.reass118.us.prol = add i32 %invariant.op117.us, %i.dt
  %i.du = sext i32 %.reass118.us.prol to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = fadd float %.139114.us.prol, %i.dw      ; 3 uses
  %indvars.iv.next142.prol = add nuw nsw i64 %indvars.iv141.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !311

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.us
  %.lcssa.unr = phi float [ poison, %.preheader.us ], [ %i.dx, %.prol.preheader ]
  %indvars.iv141.unr = phi i64 [ %indvars.iv139, %.preheader.us ], [ %indvars.iv.next142.prol, %.prol.preheader ]
  %.139114.us.unr = phi float [ %.038119.us, %.preheader.us ], [ %i.dx, %.prol.preheader ]
  br i1 %i.dq, label %._crit_edge116.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit
  %invariant.op = add i32 1, %invariant.op117.us
  %invariant.op241 = add i32 2, %invariant.op117.us
  %invariant.op242 = add i32 3, %invariant.op117.us
  %invariant.op243 = add i32 4, %invariant.op117.us
  %invariant.op244 = add i32 5, %invariant.op117.us
  %invariant.op245 = add i32 6, %invariant.op117.us
  %invariant.op246 = add i32 7, %invariant.op117.us
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.us.new
  %indvars.iv141 = phi i64 [ %indvars.iv141.unr, %.preheader.us.new ], [ %indvars.iv.next142.7, %bb.f ] ; 9 uses
  %.139114.us = phi float [ %.139114.us.unr, %.preheader.us.new ], [ %i.fl, %bb.f ]
  %i.dy = trunc nuw nsw i64 %indvars.iv141 to i32
  %.reass118.us = add i32 %invariant.op117.us, %i.dy
  %i.dz = sext i32 %.reass118.us to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !22
  %i.ec = fadd float %.139114.us, %i.eb
  %i.ed = trunc i64 %indvars.iv141 to i32
  %.reass118.us.1.reass = add i32 %i.ed, %invariant.op
  %i.ee = sext i32 %.reass118.us.1.reass to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !22
  %i.eh = fadd float %i.ec, %i.eg
  %i.ei = trunc i64 %indvars.iv141 to i32
  %.reass118.us.2.reass = add i32 %i.ei, %invariant.op241
  %i.ej = sext i32 %.reass118.us.2.reass to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !22
  %i.em = fadd float %i.eh, %i.el
  %i.en = trunc i64 %indvars.iv141 to i32
  %.reass118.us.3.reass = add i32 %i.en, %invariant.op242
  %i.eo = sext i32 %.reass118.us.3.reass to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !22
  %i.er = fadd float %i.em, %i.eq
  %i.es = trunc i64 %indvars.iv141 to i32
  %.reass118.us.4.reass = add i32 %i.es, %invariant.op243
  %i.et = sext i32 %.reass118.us.4.reass to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22
  %i.ew = fadd float %i.er, %i.ev
  %i.ex = trunc i64 %indvars.iv141 to i32
  %.reass118.us.5.reass = add i32 %i.ex, %invariant.op244
  %i.ey = sext i32 %.reass118.us.5.reass to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !22
  %i.fb = fadd float %i.ew, %i.fa
  %i.fc = trunc i64 %indvars.iv141 to i32
  %.reass118.us.6.reass = add i32 %i.fc, %invariant.op245
  %i.fd = sext i32 %.reass118.us.6.reass to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !22
  %i.fg = fadd float %i.fb, %i.ff
  %i.fh = trunc i64 %indvars.iv141 to i32
  %.reass118.us.7.reass = add i32 %i.fh, %invariant.op246
  %i.fi = sext i32 %.reass118.us.7.reass to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !22
  %i.fl = fadd float %i.fg, %i.fk                 ; 2 uses
  %indvars.iv.next142.7 = add nuw nsw i64 %indvars.iv141, 8 ; 2 uses
  %exitcond145.not.7 = icmp eq i64 %indvars.iv.next142.7, %indvars.iv147
  br i1 %exitcond145.not.7, label %._crit_edge116.us, label %bb.f, !llvm.loop !312

._crit_edge116.us:                                ; preds = %bb.f, %.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.prol.loopexit ], [ %i.fl, %bb.f ] ; 2 uses
  %i.fm = add nuw nsw i32 %.037120.us, 1          ; 2 uses
  %exitcond146.not = icmp eq i32 %i.fm, %.041126
  br i1 %exitcond146.not, label %._crit_edge121, label %.preheader.us, !llvm.loop !313

._crit_edge125.loopexit:                          ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %.pre153 = load i32, ptr %i.j, align 4, !tbaa !94 ; 2 uses
  %.pre154 = load i32, ptr %i.k, align 4, !tbaa !94 ; 2 uses
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %.preheader89
  %i.fn = phi i32 [ %.pre154, %._crit_edge125.loopexit ], [ %i.cm, %.preheader89 ] ; 2 uses
  %i.fo = phi i32 [ %.pre153, %._crit_edge125.loopexit ], [ %i.cn, %.preheader89 ] ; 2 uses
  %i.fp = phi i32 [ %i.ni, %._crit_edge125.loopexit ], [ %i.co, %.preheader89 ] ; 2 uses
  %i.fq = phi i32 [ %i.nh, %._crit_edge125.loopexit ], [ %i.cp, %.preheader89 ] ; 2 uses
  %i.fr = phi i32 [ %.pre154, %._crit_edge125.loopexit ], [ %i.cq, %.preheader89 ] ; 4 uses
  %i.fs = phi i32 [ %.pre153, %._crit_edge125.loopexit ], [ %i.cr, %.preheader89 ] ; 4 uses
  %i.ft = phi i32 [ %i.ni, %._crit_edge125.loopexit ], [ %i.cs, %.preheader89 ]
  %i.fu = phi i32 [ %i.nh, %._crit_edge125.loopexit ], [ %i.ct, %.preheader89 ]
  %i.fv = add nuw nsw i32 %.041126, 1             ; 2 uses
  %i.fw = sub nsw i32 %i.fs, %i.fr
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %.preheader89, label %._crit_edge127, !llvm.loop !314

._crit_edge121:                                   ; preds = %._crit_edge116.us, %.preheader.lr.ph, %.preheader88
  %.038.lcssa = phi float [ 0.000000e+00, %.preheader88 ], [ 0.000000e+00, %.preheader.lr.ph ], [ %.lcssa, %._crit_edge116.us ]
  %i.fy = load i32, ptr %i.j, align 4, !tbaa !94
  %i.fz = sub nsw i32 %i.fy, %.pre152             ; 2 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv147 to i32
  %i.gb = uitofp nneg i32 %i.ga to float
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.gc = mul nsw i32 %i.fz, %i.dl
  %i.gd = sitofp i32 %i.gc to float
  %i.ge = fdiv float %.038.lcssa, %i.gd
  store float %i.ge, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.gf = insertelement <2 x i32> poison, i32 %i.dl, i64 0
  %i.gg = insertelement <2 x i32> %i.gf, i32 %i.fz, i64 1
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>   ; 2 uses
  %i.gi = fdiv <2 x float> %i.cc, %i.gh           ; 5 uses
  %i.gj = insertelement <2 x float> %i.cz, float %i.gb, i64 0
  %i.gk = fdiv <2 x float> %i.gj, %i.gh           ; 5 uses
  %i.gl = extractelement <2 x float> %i.gi, i64 0
  %i.gm = extractelement <2 x float> %i.gk, i64 0
  %i.gn = fcmp olt <2 x float> %i.gk, %i.gi
  %i.go = extractelement <2 x i1> %i.gn, i64 0
  %i.gp = select i1 %i.go, float %i.gm, float %i.gl ; 2 uses
  %i.gq = extractelement <2 x float> %i.gi, i64 1 ; 2 uses
  %i.gr = extractelement <2 x float> %i.gk, i64 1 ; 2 uses
  %i.gs = fcmp olt float %i.gr, %i.gq
  %i.gt = select i1 %i.gs, float %i.gr, float %i.gq ; 2 uses
  %i.gu = fcmp olt <2 x float> %i.gi, %i.gk
  %i.gv = select <2 x i1> %i.gu, <2 x float> %i.gk, <2 x float> %i.gi ; 3 uses
  %i.gw = load i32, ptr %i.t, align 4, !tbaa !94  ; 4 uses
  %i.gx = load <2 x i32>, ptr %i.s, align 8, !tbaa !20
  %i.gy = load <2 x i32>, ptr %4, align 8, !tbaa !20 ; 9 uses
  %i.gz = sub nsw <2 x i32> %i.gx, %i.gy          ; 5 uses
  %i.ha = sitofp <2 x i32> %i.gz to <2 x float>
  %i.hb = fmul <2 x float> %i.gv, %i.ha           ; 3 uses
  %i.hc = fptosi <2 x float> %i.hb to <2 x i32>   ; 7 uses
  %i.hd = icmp eq <2 x i32> %i.hc, zeroinitializer ; 2 uses
  %8 = extractelement <2 x i1> %i.hd, i64 0       ; 2 uses
  %9 = extractelement <2 x i1> %i.hd, i64 1       ; 2 uses
  %or.cond.i.i = or i1 %8, %9
  br i1 %or.cond.i.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge121
  %i.he = extractelement <2 x i32> %i.hc, i64 0
  %i.hf = extractelement <2 x i32> %i.gz, i64 0   ; 2 uses
  %i.hg = call i32 @llvm.smin.i32(i32 %i.hf, i32 %i.he)
  %i.hh = extractelement <2 x i32> %i.hc, i64 1
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.hk = xor i32 %i.hj, -1
  %i.hl = add i32 %i.gw, %i.hk
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.hl, i32 %i.hi)
  %i.hm = extractelement <2 x i32> %i.gy, i64 0
  %i.hn = xor i32 %i.hm, -1
  %i.ho = add i32 %i.hg, %i.hn
  %i.hp = sub nsw i32 %.sroa.speculated.i.i, %i.hj
  %i.hq = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.hr = mul nsw i32 %i.hp, %i.hf
  %i.hs = add nsw i32 %i.ho, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !58
  %i.hw = fptrunc double %i.hv to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i:   ; preds = %bb.g, %._crit_edge121
  %.0.i.i = phi float [ %i.hw, %bb.g ], [ 0.000000e+00, %._crit_edge121 ]
  %i.hx = extractelement <2 x i32> %i.hc, i64 0   ; 2 uses
  %i.hy = add nsw i32 %i.hx, 1                    ; 3 uses
  %i.hz = icmp eq i32 %i.hy, 0                    ; 2 uses
  %or.cond.i28.i = or i1 %i.hz, %9
  br i1 %or.cond.i28.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i
  %i.ia = extractelement <2 x i32> %i.gz, i64 0   ; 2 uses
  %i.ib = call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.hy)
  %i.ic = extractelement <2 x i32> %i.hc, i64 1
  %i.id = add nsw i32 %i.ic, -1
  %i.ie = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.if = xor i32 %i.ie, -1
  %i.ig = add i32 %i.gw, %i.if
  %.sroa.speculated.i29.i = call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.id)
  %i.ih = extractelement <2 x i32> %i.gy, i64 0
  %i.ii = xor i32 %i.ih, -1
  %i.ij = add i32 %i.ib, %i.ii
  %i.ik = sub nsw i32 %.sroa.speculated.i29.i, %i.ie
  %i.il = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.im = mul nsw i32 %i.ik, %i.ia
  %i.in = add nsw i32 %i.ij, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !58
  %i.ir = fptrunc double %i.iq to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i: ; preds = %bb.h, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i
  %.0.i30.i = phi float [ %i.ir, %bb.h ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i ]
  %i.is = extractelement <2 x i32> %i.hc, i64 1   ; 3 uses
  %i.it = icmp eq i32 %i.is, -1                   ; 2 uses
  %or.cond.i32.i = or i1 %8, %i.it
  br i1 %or.cond.i32.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i
  %i.iu = extractelement <2 x i32> %i.gz, i64 0   ; 2 uses
  %i.iv = call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.hx)
  %i.iw = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.ix = xor i32 %i.iw, -1
  %i.iy = add i32 %i.gw, %i.ix
  %.sroa.speculated.i33.i = call i32 @llvm.smin.i32(i32 %i.iy, i32 %i.is)
  %i.iz = extractelement <2 x i32> %i.gy, i64 0
  %i.ja = xor i32 %i.iz, -1
  %i.jb = add i32 %i.iv, %i.ja
  %i.jc = sub nsw i32 %.sroa.speculated.i33.i, %i.iw
  %i.jd = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.je = mul nsw i32 %i.jc, %i.iu
  %i.jf = add nsw i32 %i.jb, %i.je
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !58
  %i.jj = fptrunc double %i.ji to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i: ; preds = %bb.i, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i
  %.0.i34.i = phi float [ %i.jj, %bb.i ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i ]
  %or.cond.i36.i = or i1 %i.hz, %i.it
  br i1 %or.cond.i36.i, label %.noexc, label %bb.j

bb.j:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i
  %i.jk = extractelement <2 x i32> %i.gz, i64 0   ; 2 uses
  %i.jl = call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.hy)
  %i.jm = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.jn = xor i32 %i.jm, -1
  %i.jo = add i32 %i.gw, %i.jn
  %.sroa.speculated.i37.i = call i32 @llvm.smin.i32(i32 %i.jo, i32 %i.is)
  %i.jp = extractelement <2 x i32> %i.gy, i64 0
  %i.jq = xor i32 %i.jp, -1
  %i.jr = add i32 %i.jl, %i.jq
  %i.js = sub nsw i32 %.sroa.speculated.i37.i, %i.jm
  %i.jt = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.ju = mul nsw i32 %i.js, %i.jk
  %i.jv = add nsw i32 %i.jr, %i.ju
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !58
  %i.jz = fptrunc double %i.jy to float
  br label %.noexc

.noexc:                                           ; preds = %bb.j, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i
  %.0.i38.i = phi float [ %i.jz, %bb.j ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i ]
  %i.ka = extractelement <2 x float> %i.gv, i64 1
  %i.kb = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.gp, float noundef %i.ka)
          to label %.noexc61 unwind label %bb.q

.noexc61:                                         ; preds = %.noexc
  %i.kc = sitofp <2 x i32> %i.hc to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.hb, %i.kc
  %i.kd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop211 = fsub <2 x float> %i.hb, %i.kc
  %i.ke = extractelement <2 x float> %foldExtExtBinop211, i64 1 ; 3 uses
  %i.kf = fsub float 1.000000e+00, %i.ke          ; 2 uses
  %i.kg = fmul float %i.kd, %i.kf
  %i.kh = fmul float %i.kg, %.0.i30.i
  %i.ki = fsub float 1.000000e+00, %i.kd          ; 2 uses
  %i.kj = fmul float %i.ki, %i.kf
  %i.kk = fmul float %i.kj, %.0.i.i
  %i.kl = fmul float %i.ki, %i.ke
  %i.km = fmul float %i.kl, %.0.i34.i
  %i.kn = fadd float %i.kk, %i.km
  %i.ko = fadd float %i.kh, %i.kn
  %i.kp = fmul float %i.kd, %i.ke
  %i.kq = fmul float %i.kp, %.0.i38.i
  %i.kr = fadd float %i.ko, %i.kq
  %i.ks = fpext float %i.kr to double
  %i.kt = fpext float %i.kb to double
  %i.ku = fsub double %i.ks, %i.kt
  %i.kv = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.gp, float noundef %i.gt)
          to label %.noexc62 unwind label %bb.q

.noexc62:                                         ; preds = %.noexc61
  %i.kw = extractelement <2 x float> %i.gv, i64 0
  %i.kx = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.kw, float noundef %i.gt)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %.noexc62
  %i.ky = fpext float %i.kv to double
  %i.kz = fpext float %i.kx to double
  %i.la = fsub double %i.ky, %i.kz
  %i.lb = fadd double %i.ku, %i.la
  %i.lc = load <2 x i32>, ptr %i.s, align 8, !tbaa !20
  %i.ld = load <2 x i32>, ptr %4, align 8, !tbaa !20
  %i.le = sub nsw <2 x i32> %i.lc, %i.ld          ; 2 uses
  %shift = shufflevector <2 x i32> %i.le, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop213 = mul nsw <2 x i32> %shift, %i.le
  %i.lf = extractelement <2 x i32> %foldExtExtBinop213, i64 0
  %i.lg = sitofp i32 %i.lf to double
  %i.lh = fdiv double %i.lb, %i.lg                ; 2 uses
  %i.li = fptrunc double %i.lh to float
  %i.lj = fcmp olt double %i.lh, f0xB690000000000000
  %.sroa.speculated.i = select i1 %i.lj, float 0.000000e+00, float %i.li ; 2 uses
  store float %.sroa.speculated.i, ptr %i.b, align 4, !tbaa !22
  %i.lk = load float, ptr %i.a, align 4, !tbaa !22, !noalias !318
  %i.ll = fcmp oeq float %i.lk, %.sroa.speculated.i
  br i1 %i.ll, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !318
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc80 unwind label %bb.q

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !318
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.o, !noalias !318

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc80
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.lm = load ptr, ptr %2, align 8, !tbaa !36, !noalias !318 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.v
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.lo = load i64, ptr %i.v, align 8, !tbaa !42, !noalias !318
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !318
  %i.lq = load ptr, ptr %1, align 8, !tbaa !36, !noalias !318 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.w
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ls = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !318
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !318
  br label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.o:                                             ; preds = %.noexc80
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.p:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %2, align 8, !tbaa !36, !noalias !318 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.v
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.p
  %i.ly = load i64, ptr %i.v, align 8, !tbaa !42, !noalias !318
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.lu, %bb.o ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.lv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !318
  %i.ma = load ptr, ptr %1, align 8, !tbaa !36, !noalias !318 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.w
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.mc = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !318
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !318
  br label %.body

_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.me = load i8, ptr %5, align 8, !tbaa !28, !range !29, !noundef !30
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.af, label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.l, %.noexc62, %.noexc61, %.noexc
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.mg, %bb.q ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
end_hunk_0
