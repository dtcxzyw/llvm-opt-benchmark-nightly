Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_points?download=true
inline.NumInlined: 410
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK6embree4sse29PointsISA20createPrimRefArrayMBEPNS_7PrimRefERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  %i.ai = fmul float %i.ad, %i.ah
  %i.aj = tail call noundef float @llvm.ceil.f32(float %i.ai) ; 2 uses
  %i.ak = fcmp olt float %i.aj, %i.ad
  %i.al = select i1 %i.ak, float %i.aj, float %i.ad
  %i.am = fptosi float %i.al to i32               ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = and i64 %.0226, 4294967295              ; 2 uses
  %i.ap = load ptr, ptr %i.u, align 16            ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %.not.i.i = icmp ult i64 %i.ao, %i.ar
  br i1 %.not.i.i, label %.preheader, label %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

.preheader:                                       ; preds = %bb.c
  %foldExtExtBinop = fsub <2 x float> %i.k, %.sroa.0.0.copyload.i
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = fdiv float %i.as, %i.ae
  %i.au = fmul float %i.at, f0x3F800002
  %i.av = fmul float %i.ad, %i.au
  %i.aw = tail call noundef float @llvm.floor.f32(float %i.av) ; 2 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  %i.ay = select i1 %i.ax, float 0.000000e+00, float %i.aw
  %i.az = fptosi float %i.ay to i32               ; 2 uses
  %.not16.i.i205 = icmp ugt i32 %i.az, %i.am
  br i1 %.not16.i.i205, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ba = zext nneg i32 %i.az to i64
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.bb = add i64 %.0.i.i206, 1                   ; 2 uses
  %.not16.i.i = icmp ugt i64 %i.bb, %i.an
  br i1 %.not16.i.i, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.i, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0.i.i206 = phi i64 [ %i.bb, %bb.d ], [ %i.ba, %.lr.ph.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %.0.i.i206 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !113
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !113
  %i.bg = mul i64 %i.bf, %i.ao
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = load <4 x float>, ptr %i.bh, align 16   ; 3 uses
  %i.bj = fcmp ole <4 x float> %i.bi, splat (float -1.844000e+18)
  %i.bk = fcmp uge <4 x float> %i.bi, splat (float 1.844000e+18)
  %i.bl = or <4 x i1> %i.bj, %i.bk
  %i.bm = bitcast <4 x i1> %i.bl to i4
  %i.bn = icmp eq i4 %i.bm, 0
  %.sroa.051.12.vec.extract = extractelement <4 x float> %i.bi, i64 3
  %i.bo = fcmp uge float %.sroa.051.12.vec.extract, 0.000000e+00
  %cond1.i.i = and i1 %i.bo, %i.bn
  br i1 %cond1.i.i, label %bb.d, label %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.i: ; preds = %bb.d, %.preheader
  %i.bp = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fsub <2 x float> %i.k, %i.bp
  %i.br = fsub float %.sroa.074.4.vec.extract82, %.sroa.074.0.vec.extract
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fdiv <2 x float> %i.bq, %i.bt           ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0 ; 3 uses
  %i.bw = fmul float %i.ad, %i.bv                 ; 3 uses
  %i.bx = extractelement <2 x float> %i.bu, i64 1 ; 2 uses
  %i.by = fmul float %i.ad, %i.bx                 ; 3 uses
  %i.bz = tail call noundef float @llvm.floor.f32(float %i.bw) ; 3 uses
  %i.ca = tail call noundef float @llvm.ceil.f32(float %i.by) ; 3 uses
  %i.cb = fcmp ogt float %i.bz, 0.000000e+00
  %i.cc = select i1 %i.cb, float %i.bz, float 0.000000e+00 ; 3 uses
  %i.cd = fcmp olt float %i.ca, %i.ad
  %i.ce = select i1 %i.cd, float %i.ca, float %i.ad ; 3 uses
  %i.cf = fptosi float %i.cc to i32
  %i.cg = fptosi float %i.ce to i32
  %i.ch = fptosi float %i.bz to i32
  %i.ci = tail call noundef i32 @llvm.smax.i32(i32 %i.ch, i32 -1) ; 2 uses
  %i.cj = fptosi float %i.ca to i32
  %i.ck = fptosi float %i.ad to i32
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = tail call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 3 uses
  %i.cn = zext nneg i32 %i.cf to i64
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.cn ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !114
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !114
  %i.cs = mul i64 %i.cr, %.0226
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !noalias !115 ; 3 uses
  %i.cv = load float, ptr %i.v, align 8, !noalias !116
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cx = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.cz = fmul <4 x float> %i.cw, %i.cy           ; 2 uses
  %i.da = fsub <4 x float> %i.cu, %i.cz           ; 3 uses
  %i.db = fadd <4 x float> %i.cu, %i.cz           ; 3 uses
  %i.dc = sext i32 %i.cg to i64
  %i.dd = getelementptr [56 x i8], ptr %i.ap, i64 %i.dc ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !117
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noalias !117
  %i.dh = mul i64 %i.dg, %.0226
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dh
  %i.dj = load <4 x float>, ptr %i.di, align 16, !noalias !118 ; 3 uses
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dl = fmul <4 x float> %i.cy, %i.dk           ; 2 uses
  %i.dm = fsub <4 x float> %i.dj, %i.dl           ; 3 uses
  %i.dn = fadd <4 x float> %i.dj, %i.dl           ; 3 uses
  %i.do = sub nsw i32 %i.cm, %i.ci
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.i
  %i.dq = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.ce, i64 1
  %i.ds = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.by, i64 1
  %i.du = fsub <2 x float> %i.dr, %i.dt           ; 2 uses
  %i.dv = fcmp ogt <2 x float> %i.du, zeroinitializer
  %i.dw = select <2 x i1> %i.dv, <2 x float> %i.du, <2 x float> zeroinitializer ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dy = fmul <4 x float> %i.dx, %i.dm
  %i.dz = fsub <2 x float> splat (float 1.000000e+00), %i.dw ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eb = fmul <4 x float> %i.da, %i.ea
  %i.ec = fadd <4 x float> %i.dy, %i.eb
  %i.ed = fmul <4 x float> %i.dx, %i.dn
  %i.ee = fmul <4 x float> %i.db, %i.ea
  %i.ef = fadd <4 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eh = fmul <4 x float> %i.da, %i.eg
  %i.ei = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ej = fmul <4 x float> %i.dm, %i.ei
  %i.ek = fadd <4 x float> %i.eh, %i.ej
  %i.el = fmul <4 x float> %i.db, %i.eg
  %i.em = fmul <4 x float> %i.dn, %i.ei
  %i.en = fadd <4 x float> %i.el, %i.em
  br label %.loopexit

bb.f:                                             ; preds = %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !119
  %i.eq = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.er = load i64, ptr %i.eq, align 8, !noalias !119
  %i.es = mul i64 %i.er, %.0226
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.eu = load <4 x float>, ptr %i.et, align 16, !noalias !120 ; 3 uses
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ew = fmul <4 x float> %i.cy, %i.ev           ; 2 uses
  %i.ex = fsub <4 x float> %i.eu, %i.ew
  %i.ey = fadd <4 x float> %i.eu, %i.ew
  %i.ez = getelementptr i8, ptr %i.dd, i64 -56
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !121
  %i.fb = getelementptr i8, ptr %i.dd, i64 -40
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !121
  %i.fd = mul i64 %i.fc, %.0226
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fd
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !noalias !122 ; 3 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fh = fmul <4 x float> %i.cy, %i.fg           ; 2 uses
  %i.fi = fsub <4 x float> %i.ff, %i.fh
  %i.fj = fadd <4 x float> %i.ff, %i.fh
  %i.fk = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.ce, i64 1
  %i.fm = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.by, i64 1
  %i.fo = fsub <2 x float> %i.fl, %i.fn           ; 2 uses
  %i.fp = fcmp ogt <2 x float> %i.fo, zeroinitializer
  %i.fq = select <2 x i1> %i.fp, <2 x float> %i.fo, <2 x float> zeroinitializer ; 3 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <4 x float> %i.fr, %i.ex
  %i.ft = fsub <2 x float> splat (float 1.000000e+00), %i.fq ; 2 uses
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = fmul <4 x float> %i.da, %i.fu
  %i.fw = fadd <4 x float> %i.fv, %i.fs           ; 2 uses
  %i.fx = fmul <4 x float> %i.fr, %i.ey
  %i.fy = fmul <4 x float> %i.db, %i.fu
  %i.fz = fadd <4 x float> %i.fy, %i.fx           ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gb = fmul <4 x float> %i.ga, %i.fi
  %i.gc = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gd = fmul <4 x float> %i.dm, %i.gc
  %i.ge = fadd <4 x float> %i.gd, %i.gb           ; 2 uses
  %i.gf = fmul <4 x float> %i.ga, %i.fj
  %i.gg = fmul <4 x float> %i.dn, %i.gc
  %i.gh = fadd <4 x float> %i.gg, %i.gf           ; 2 uses
  %.0.i207 = add nsw i32 %i.ci, 1                 ; 2 uses
  %i.gi = icmp slt i32 %.0.i207, %i.cm
  br i1 %i.gi, label %.lr.ph213, label %.loopexit

.lr.ph213:                                        ; preds = %bb.f
  %i.gj = fsub float %i.bx, %i.bv
  %i.gk = zext nneg i32 %.0.i207 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph213, %bb.g
  %indvars.iv = phi i64 [ %i.gk, %.lr.ph213 ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.sroa.7104.0211 = phi <4 x float> [ %i.fz, %.lr.ph213 ], [ %i.hr, %bb.g ] ; 2 uses
  %.sroa.0101.0210 = phi <4 x float> [ %i.fw, %.lr.ph213 ], [ %i.hp, %bb.g ] ; 2 uses
  %.sroa.7.0209 = phi <4 x float> [ %i.gh, %.lr.ph213 ], [ %i.hs, %bb.g ] ; 2 uses
  %.sroa.096.0208 = phi <4 x float> [ %i.ge, %.lr.ph213 ], [ %i.hq, %bb.g ] ; 2 uses
  %i.gl = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.gl to float
  %i.gm = fdiv float %7, %i.ad
  %i.gn = fsub float %i.gm, %i.bv
  %i.go = fdiv float %i.gn, %i.gj                 ; 2 uses
  %i.gp = fsub float 1.000000e+00, %i.go
  %i.gq = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul <4 x float> %.sroa.096.0208, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <4 x float> %.sroa.0101.0210, %i.gu
  %i.gw = fadd <4 x float> %i.gs, %i.gv
  %i.gx = fmul <4 x float> %.sroa.7.0209, %i.gr
  %i.gy = fmul <4 x float> %.sroa.7104.0211, %i.gu
  %i.gz = fadd <4 x float> %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !123
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !123
  %i.he = mul i64 %i.hd, %.0226
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.he
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !124 ; 3 uses
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hi = fmul <4 x float> %i.cy, %i.hh           ; 2 uses
  %i.hj = fsub <4 x float> %i.hg, %i.hi
  %i.hk = fadd <4 x float> %i.hg, %i.hi
  %i.hl = fsub <4 x float> %i.hj, %i.gw
  %i.hm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hl, <4 x float> zeroinitializer) ; 2 uses
  %i.hn = fsub <4 x float> %i.hk, %i.gz
  %i.ho = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hn, <4 x float> zeroinitializer) ; 2 uses
  %i.hp = fadd <4 x float> %.sroa.0101.0210, %i.hm ; 2 uses
  %i.hq = fadd <4 x float> %.sroa.096.0208, %i.hm ; 2 uses
  %i.hr = fadd <4 x float> %.sroa.7104.0211, %i.ho ; 2 uses
  %i.hs = fadd <4 x float> %.sroa.7.0209, %i.ho   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cm, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !14

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.11.0.ph = phi <4 x float> [ %i.en, %bb.e ], [ %i.gh, %bb.f ], [ %i.hs, %bb.g ]
  %.sroa.8.0.ph = phi <4 x float> [ %i.ek, %bb.e ], [ %i.ge, %bb.f ], [ %i.hq, %bb.g ]
  %.sroa.515.0.ph = phi <4 x float> [ %i.ef, %bb.e ], [ %i.fz, %bb.f ], [ %i.hr, %bb.g ]
  %.sroa.014.0.ph = phi <4 x float> [ %i.ec, %bb.e ], [ %i.fw, %bb.f ], [ %i.hp, %bb.g ]
  %i.ht = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.014.0.ph, <4 x float> %.sroa.8.0.ph)
  %i.hu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.515.0.ph, <4 x float> %.sroa.11.0.ph)
  %i.hv = trunc i64 %.0226 to i32
  %.sroa.027.12.vec.insert = insertelement <4 x float> %i.ht, float %i.w, i64 3 ; 3 uses
  %i.hw = bitcast i32 %i.hv to float
  %.sroa.026.12.vec.insert = insertelement <4 x float> %i.hu, float %i.hw, i64 3 ; 3 uses
  %i.hx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> %.sroa.027.12.vec.insert)
  %i.hy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.z, <4 x float> %.sroa.026.12.vec.insert)
  %i.hz = fadd <4 x float> %.sroa.027.12.vec.insert, %.sroa.026.12.vec.insert ; 2 uses
  %i.ia = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> %i.hz)
  %i.ib = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ab, <4 x float> %i.hz)
  %i.ic = add i64 %i.ac, 1
  %i.id = add i64 %.010225, 1
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.010225 ; 2 uses
  store <4 x float> %.sroa.027.12.vec.insert, ptr %i.ie, align 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <4 x float> %.sroa.026.12.vec.insert, ptr %i.if, align 16
  %.pre = load i64, ptr %i.p, align 8
  br label %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit: ; preds = %.lr.ph, %bb.c, %.loopexit
  %i.ig = phi i64 [ %.pre, %.loopexit ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ih = phi i64 [ %i.ic, %.loopexit ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.ii = phi <4 x float> [ %i.ib, %.loopexit ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.ij = phi <4 x float> [ %i.ia, %.loopexit ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ik = phi <4 x float> [ %i.hy, %.loopexit ], [ %i.z, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.il = phi <4 x float> [ %i.hx, %.loopexit ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.id, %.loopexit ], [ %.010225, %bb.c ], [ %.010225, %.lr.ph ]
  %i.im = add nuw i64 %.0226, 1                   ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ig
  br i1 %i.in, label %bb.c, label %.loopexit204, !llvm.loop !111

.loopexit204:                                     ; preds = %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit, %bb.b
  %.lcssa224 = phi i64 [ 0, %bb.b ], [ %i.ih, %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa222 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.ii, %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa220 = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.ij, %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa218 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.ik, %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.il, %_ZNK6embree6Points12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa218, ptr %i.a, align 16
  store <4 x float> %.lcssa220, ptr %i.b, align 16
  store <4 x float> %.lcssa222, ptr %i.c, align 16
  store i64 %.lcssa224, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit204, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5, i32 noundef %6) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load i64, ptr %4, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph259, label %bb.b

.lr.ph259:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = bitcast i32 %6 to float
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread
  store i64 %i.jo, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa244 = phi i64 [ %i.jp, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa242 = phi i64 [ %i.jq, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa240 = phi float [ %i.jr, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.lcssa238 = phi float [ %i.js, %._crit_edge ], [ 1.000000e+00, %bb.a ]
  %.lcssa236 = phi <4 x float> [ %i.jt, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa234 = phi <4 x float> [ %i.ju, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa232 = phi <4 x float> [ %i.jv, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa230 = phi <4 x float> [ %i.jw, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa228 = phi <4 x float> [ %i.jx, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa = phi <4 x float> [ %i.jy, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %i.n = phi <2 x float> [ %i.jz, %._crit_edge ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa228, ptr %i.x, align 16
  store <4 x float> %.lcssa230, ptr %i.w, align 16
  store <4 x float> %.lcssa232, ptr %i.v, align 16
  store <4 x float> %.lcssa234, ptr %i.u, align 16
  store <4 x float> %.lcssa236, ptr %i.t, align 16
  store float %.lcssa238, ptr %i.p, align 8
  store float %.lcssa240, ptr %i.o, align 4
  store i64 %.lcssa242, ptr %i.s, align 16
  store i64 %.lcssa244, ptr %i.r, align 8
  store <2 x float> %i.n, ptr %i.q, align 16
  ret void

bb.c:                                             ; preds = %.lr.ph259, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread
  %i.y = phi i64 [ %i.e, %.lr.ph259 ], [ %i.jn, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %.lr.ph259 ], [ %i.jo, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %.0258 = phi i64 [ %5, %.lr.ph259 ], [ %.1, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %.012255 = phi i64 [ %i.c, %.lr.ph259 ], [ %i.ka, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 8 uses
  %i.aa = phi <4 x float> [ splat (float +inf), %.lr.ph259 ], [ %i.jy, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ab = phi <4 x float> [ splat (float -inf), %.lr.ph259 ], [ %i.jx, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ac = phi <4 x float> [ splat (float +inf), %.lr.ph259 ], [ %i.jw, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ad = phi <4 x float> [ splat (float -inf), %.lr.ph259 ], [ %i.jv, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ae = phi <4 x float> [ splat (float +inf), %.lr.ph259 ], [ %i.ju, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.af = phi <4 x float> [ splat (float -inf), %.lr.ph259 ], [ %i.jt, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ag = phi float [ 1.000000e+00, %.lr.ph259 ], [ %i.js, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %i.ah = phi float [ 0.000000e+00, %.lr.ph259 ], [ %i.jr, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %i.ai = phi i64 [ 0, %.lr.ph259 ], [ %i.jq, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.aj = phi i64 [ 0, %.lr.ph259 ], [ %i.jp, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %i.ak = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph259 ], [ %i.jz, %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.g, align 4, !noalias !164 ; 7 uses
  %i.al = load float, ptr %i.h, align 8, !noalias !164 ; 10 uses
  %.sroa.060.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 4 uses
  %.sroa.060.4.vec.extract68 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 4 uses
  %i.am = fsub float %.sroa.060.4.vec.extract68, %.sroa.060.0.vec.extract ; 2 uses
  %i.an = load <2 x float>, ptr %3, align 4, !noalias !165 ; 3 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %.sroa.0.0.copyload.i
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ap = fdiv float %i.ao, %i.am
  %i.aq = fmul float %i.ap, f0x3F7FFFFC
  %i.ar = fmul float %i.al, %i.aq
  %i.as = tail call noundef float @llvm.ceil.f32(float %i.ar) ; 2 uses
  %i.at = fcmp olt float %i.as, %i.al
  %i.au = select i1 %i.at, float %i.as, float %i.al
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = and i64 %.012255, 4294967295            ; 2 uses
  %i.ay = load ptr, ptr %i.i, align 16            ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i = icmp ult i64 %i.ax, %i.ba
  br i1 %.not.i, label %.preheader, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread

.preheader:                                       ; preds = %bb.c
  %foldExtExtBinop330 = fsub <2 x float> %i.an, %.sroa.0.0.copyload.i
  %i.bb = extractelement <2 x float> %foldExtExtBinop330, i64 0
  %i.bc = fdiv float %i.bb, %i.am
  %i.bd = fmul float %i.bc, f0x3F800002
  %i.be = fmul float %i.al, %i.bd
  %i.bf = tail call noundef float @llvm.floor.f32(float %i.be) ; 2 uses
  %i.bg = fcmp olt float %i.bf, 0.000000e+00
  %i.bh = select i1 %i.bg, float 0.000000e+00, float %i.bf
  %i.bi = fptosi float %i.bh to i32               ; 2 uses
  %.not16.i215 = icmp ugt i32 %i.bi, %i.av
  br i1 %.not16.i215, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bj = zext nneg i32 %i.bi to i64
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.bk = add i64 %.0.i216, 1                     ; 2 uses
  %.not16.i = icmp ugt i64 %i.bk, %i.aw
  br i1 %.not16.i, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0.i216 = phi i64 [ %i.bk, %bb.d ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %.0.i216 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !166
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !166
  %i.bp = mul i64 %i.bo, %i.ax
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.br = load <4 x float>, ptr %i.bq, align 16   ; 3 uses
  %i.bs = fcmp ole <4 x float> %i.br, splat (float -1.844000e+18)
  %i.bt = fcmp uge <4 x float> %i.br, splat (float 1.844000e+18)
  %i.bu = or <4 x i1> %i.bs, %i.bt
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %i.bw = icmp eq i4 %i.bv, 0
  %.sroa.038.12.vec.extract = extractelement <4 x float> %i.br, i64 3
  %i.bx = fcmp uge float %.sroa.038.12.vec.extract, 0.000000e+00
  %cond1.i = and i1 %i.bx, %i.bw
  br i1 %cond1.i, label %bb.d, label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit:   ; preds = %bb.d, %.preheader
  %i.by = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fsub <2 x float> %i.an, %i.by
  %i.ca = fsub float %.sroa.060.4.vec.extract68, %.sroa.060.0.vec.extract
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x float> %i.bz, %i.cc           ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0 ; 3 uses
  %i.cf = fmul float %i.al, %i.ce                 ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.ch = fmul float %i.al, %i.cg                 ; 3 uses
  %i.ci = tail call noundef float @llvm.floor.f32(float %i.cf) ; 3 uses
  %i.cj = tail call noundef float @llvm.ceil.f32(float %i.ch) ; 3 uses
  %i.ck = fcmp ogt float %i.ci, 0.000000e+00
  %i.cl = select i1 %i.ck, float %i.ci, float 0.000000e+00 ; 3 uses
  %i.cm = fcmp olt float %i.cj, %i.al
  %i.cn = select i1 %i.cm, float %i.cj, float %i.al ; 3 uses
  %i.co = fptosi float %i.cl to i32
  %i.cp = fptosi float %i.cn to i32
  %i.cq = fptosi float %i.ci to i32
  %i.cr = tail call noundef i32 @llvm.smax.i32(i32 %i.cq, i32 -1) ; 2 uses
  %i.cs = fptosi float %i.cj to i32
  %i.ct = fptosi float %i.al to i32
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = tail call noundef i32 @llvm.smin.i32(i32 %i.cs, i32 %i.cu) ; 3 uses
  %i.cw = zext nneg i32 %i.co to i64
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %i.cw ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !167
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !167
  %i.db = mul i64 %i.da, %.012255
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !noalias !168 ; 3 uses
  %i.de = load float, ptr %i.j, align 8, !noalias !169
  %i.df = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dg = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.di = fmul <4 x float> %i.df, %i.dh           ; 2 uses
  %i.dj = fsub <4 x float> %i.dd, %i.di           ; 3 uses
  %i.dk = fadd <4 x float> %i.dd, %i.di           ; 3 uses
  %i.dl = sext i32 %i.cp to i64
  %i.dm = getelementptr [56 x i8], ptr %i.ay, i64 %i.dl ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !170
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noalias !170
  %i.dq = mul i64 %i.dp, %.012255
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dq
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !noalias !171 ; 3 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.du = fmul <4 x float> %i.dh, %i.dt           ; 2 uses
  %i.dv = fsub <4 x float> %i.ds, %i.du           ; 3 uses
  %i.dw = fadd <4 x float> %i.ds, %i.du           ; 3 uses
  %i.dx = sub nsw i32 %i.cv, %i.cr
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit
  %i.dz = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.cn, i64 1
  %i.eb = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ch, i64 1
  %i.ed = fsub <2 x float> %i.ea, %i.ec           ; 2 uses
  %i.ee = fcmp ogt <2 x float> %i.ed, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> %i.ed, <2 x float> zeroinitializer ; 3 uses
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eh = fmul <4 x float> %i.eg, %i.dv
  %i.ei = fsub <2 x float> splat (float 1.000000e+00), %i.ef ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul <4 x float> %i.dj, %i.ej
  %i.el = fadd <4 x float> %i.eh, %i.ek
  %i.em = fmul <4 x float> %i.eg, %i.dw
  %i.en = fmul <4 x float> %i.dk, %i.ej
  %i.eo = fadd <4 x float> %i.em, %i.en
  %i.ep = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eq = fmul <4 x float> %i.dj, %i.ep
  %i.er = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.es = fmul <4 x float> %i.dv, %i.er
  %i.et = fadd <4 x float> %i.eq, %i.es
  %i.eu = fmul <4 x float> %i.dk, %i.ep
  %i.ev = fmul <4 x float> %i.dw, %i.er
  %i.ew = fadd <4 x float> %i.eu, %i.ev
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.f:                                             ; preds = %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !172
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !172
  %i.fb = mul i64 %i.fa, %.012255
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !noalias !173 ; 3 uses
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ff = fmul <4 x float> %i.dh, %i.fe           ; 2 uses
  %i.fg = fsub <4 x float> %i.fd, %i.ff
  %i.fh = fadd <4 x float> %i.fd, %i.ff
  %i.fi = getelementptr i8, ptr %i.dm, i64 -56
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !174
  %i.fk = getelementptr i8, ptr %i.dm, i64 -40
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !174
  %i.fm = mul i64 %i.fl, %.012255
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  %i.fo = load <4 x float>, ptr %i.fn, align 16, !noalias !175 ; 3 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fq = fmul <4 x float> %i.dh, %i.fp           ; 2 uses
  %i.fr = fsub <4 x float> %i.fo, %i.fq
  %i.fs = fadd <4 x float> %i.fo, %i.fq
  %i.ft = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.cn, i64 1
  %i.fv = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.ch, i64 1
  %i.fx = fsub <2 x float> %i.fu, %i.fw           ; 2 uses
  %i.fy = fcmp ogt <2 x float> %i.fx, zeroinitializer
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fx, <2 x float> zeroinitializer ; 3 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gb = fmul <4 x float> %i.ga, %i.fg
  %i.gc = fsub <2 x float> splat (float 1.000000e+00), %i.fz ; 2 uses
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ge = fmul <4 x float> %i.dj, %i.gd
  %i.gf = fadd <4 x float> %i.ge, %i.gb           ; 2 uses
  %i.gg = fmul <4 x float> %i.ga, %i.fh
  %i.gh = fmul <4 x float> %i.dk, %i.gd
  %i.gi = fadd <4 x float> %i.gh, %i.gg           ; 2 uses
  %i.gj = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gk = fmul <4 x float> %i.gj, %i.fr
  %i.gl = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gm = fmul <4 x float> %i.dv, %i.gl
  %i.gn = fadd <4 x float> %i.gm, %i.gk           ; 2 uses
  %i.go = fmul <4 x float> %i.gj, %i.fs
  %i.gp = fmul <4 x float> %i.dw, %i.gl
  %i.gq = fadd <4 x float> %i.gp, %i.go           ; 2 uses
  %.0.i13217 = add nsw i32 %i.cr, 1               ; 2 uses
  %i.gr = icmp slt i32 %.0.i13217, %i.cv
  br i1 %i.gr, label %.lr.ph223, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

.lr.ph223:                                        ; preds = %bb.f
  %i.gs = fsub float %i.cg, %i.ce
  %i.gt = zext nneg i32 %.0.i13217 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph223, %bb.g
  %indvars.iv = phi i64 [ %i.gt, %.lr.ph223 ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.sroa.791.0221 = phi <4 x float> [ %i.gi, %.lr.ph223 ], [ %i.ia, %bb.g ] ; 2 uses
  %.sroa.088.0220 = phi <4 x float> [ %i.gf, %.lr.ph223 ], [ %i.hy, %bb.g ] ; 2 uses
  %.sroa.785.0219 = phi <4 x float> [ %i.gq, %.lr.ph223 ], [ %i.ib, %bb.g ] ; 2 uses
  %.sroa.082.0218 = phi <4 x float> [ %i.gn, %.lr.ph223 ], [ %i.hz, %bb.g ] ; 2 uses
  %i.gu = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.gu to float
  %i.gv = fdiv float %7, %i.al
  %i.gw = fsub float %i.gv, %i.ce
  %i.gx = fdiv float %i.gw, %i.gs                 ; 2 uses
  %i.gy = fsub float 1.000000e+00, %i.gx
  %i.gz = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hb = fmul <4 x float> %.sroa.082.0218, %i.ha
  %i.hc = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <4 x float> %.sroa.088.0220, %i.hd
  %i.hf = fadd <4 x float> %i.hb, %i.he
  %i.hg = fmul <4 x float> %.sroa.785.0219, %i.ha
  %i.hh = fmul <4 x float> %.sroa.791.0221, %i.hd
  %i.hi = fadd <4 x float> %i.hg, %i.hh
  %i.hj = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !176
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !176
  %i.hn = mul i64 %i.hm, %.012255
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hn
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !noalias !177 ; 3 uses
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hr = fmul <4 x float> %i.dh, %i.hq           ; 2 uses
  %i.hs = fsub <4 x float> %i.hp, %i.hr
  %i.ht = fadd <4 x float> %i.hp, %i.hr
  %i.hu = fsub <4 x float> %i.hs, %i.hf
  %i.hv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hu, <4 x float> zeroinitializer) ; 2 uses
  %i.hw = fsub <4 x float> %i.ht, %i.hi
  %i.hx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hw, <4 x float> zeroinitializer) ; 2 uses
  %i.hy = fadd <4 x float> %.sroa.088.0220, %i.hv ; 2 uses
  %i.hz = fadd <4 x float> %.sroa.082.0218, %i.hv ; 2 uses
  %i.ia = fadd <4 x float> %.sroa.791.0221, %i.hx ; 2 uses
  %i.ib = fadd <4 x float> %.sroa.785.0219, %i.hx ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cv, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, label %bb.g, !llvm.loop !14

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.11.0 = phi <4 x float> [ %i.ew, %bb.e ], [ %i.gq, %bb.f ], [ %i.ib, %bb.g ]
  %.sroa.8.0 = phi <4 x float> [ %i.et, %bb.e ], [ %i.gn, %bb.f ], [ %i.hz, %bb.g ]
  %.sroa.5.0 = phi <4 x float> [ %i.eo, %bb.e ], [ %i.gi, %bb.f ], [ %i.ia, %bb.g ]
  %.sroa.0.0 = phi <4 x float> [ %i.el, %bb.e ], [ %i.gf, %bb.f ], [ %i.hy, %bb.g ]
  %i.ic = load i32, ptr %i.k, align 4
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  %i.ie = trunc i64 %.012255 to i32
  %.sroa.014.12.vec.insert = insertelement <4 x float> %.sroa.0.0, float %i.l, i64 3 ; 3 uses
  %i.if = bitcast i32 %i.ie to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5.0, float %i.if, i64 3 ; 3 uses
  %i.ig = bitcast i32 %i.id to float              ; 2 uses
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.8.0, float %i.ig, i64 3 ; 3 uses
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.ig, i64 3 ; 3 uses
  %i.ih = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.ii = fmul <4 x float> %.sroa.014.12.vec.insert, splat (float 5.000000e-01)
  %i.ij = fadd <4 x float> %i.ii, %i.ih
  %i.ik = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.il = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.im = fadd <4 x float> %i.il, %i.ik
  %i.in = fadd <4 x float> %i.ij, %i.im           ; 2 uses
  %i.io = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> %.sroa.014.12.vec.insert)
  %i.ip = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ab, <4 x float> %.sroa.7.28.vec.insert)
  %i.iq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> %.sroa.12.44.vec.insert)
  %i.ir = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> %.sroa.18.60.vec.insert)
  %i.is = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> %i.in)
  %i.it = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> %i.in)
  %i.iu = fcmp olt float %i.ag, %.sroa.060.0.vec.extract
  %i.iv = select i1 %i.iu, float %i.ag, float %.sroa.060.0.vec.extract
  %i.iw = fcmp olt float %i.ah, %.sroa.060.4.vec.extract68
  %i.ix = select i1 %i.iw, float %.sroa.060.4.vec.extract68, float %i.ah
  %i.iy = add i64 %i.z, 1
  %i.iz = zext i32 %i.id to i64                   ; 3 uses
  %i.ja = add i64 %i.ai, %i.iz
  %i.jb = icmp ult i64 %i.aj, %i.iz
  %i.jc = insertelement <2 x i1> poison, i1 %i.jb, i64 0
  %i.jd = shufflevector <2 x i1> %i.jc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.je = select <2 x i1> %i.jd, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.ak
  %i.jf = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.iz)
  %i.jg = add i64 %.0258, 1
  %i.jh = load ptr, ptr %i.m, align 8
  %i.ji = getelementptr inbounds nuw [80 x i8], ptr %i.jh, i64 %.0258 ; 5 uses
  store <4 x float> %.sroa.014.12.vec.insert, ptr %i.ji, align 16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.jj, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.jk, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.jl, align 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.jm, align 16
  %.pre = load i64, ptr %i.d, align 8
  br label %_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree6Points5validEmRKNS_5rangeImEE.exit.thread: ; preds = %.lr.ph, %bb.c, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit
  %i.jn = phi i64 [ %.pre, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.jo = phi i64 [ %i.iy, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.z, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.jp = phi i64 [ %i.jf, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aj, %bb.c ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.jq = phi i64 [ %i.ja, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph ] ; 2 uses
  %i.jr = phi float [ %i.ix, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ah, %bb.c ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.js = phi float [ %i.iv, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.jt = phi <4 x float> [ %i.it, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.ju = phi <4 x float> [ %i.is, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ae, %bb.c ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.jv = phi <4 x float> [ %i.ir, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.jw = phi <4 x float> [ %i.iq, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.jx = phi <4 x float> [ %i.ip, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.jy = phi <4 x float> [ %i.io, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.jg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.0258, %bb.c ], [ %.0258, %.lr.ph ]
  %i.jz = phi <2 x float> [ %i.je, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ak, %bb.c ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ka = add nuw i64 %.012255, 1                 ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jn
  br i1 %i.kb, label %bb.c, label %._crit_edge, !llvm.loop !163
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA16computeDirectionEj(ptr dead_on_unwind noalias writable sret(%"struct.embree::Vec3fa") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #18 comdat align 2 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA16computeDirectionEjm(ptr dead_on_unwind noalias writable sret(%"struct.embree::Vec3fa") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #18 comdat align 2 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA7vboundsEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox.11") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, i64 noundef %2) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !noalias !184
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i64, ptr %i.c, align 8, !noalias !184
  %i.e = mul i64 %i.d, %2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !184 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.i = load float, ptr %i.h, align 8, !noalias !185
  %i.j = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.k = insertelement <4 x float> poison, float %i.i, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = fmul <4 x float> %i.j, %i.l              ; 2 uses
  %i.n = fsub <4 x float> %i.g, %i.m
  %i.o = fadd <4 x float> %i.g, %i.m
  store <4 x float> %i.n, ptr %0, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.o, ptr %i.p, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA7vboundsERKNS_12LinearSpace3INS_6Vec3faEEEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox.11") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 noundef %3) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !noalias !205
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i64, ptr %i.c, align 8, !noalias !205
  %i.e = mul i64 %i.d, %3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !205 ; 5 uses
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load <4 x float>, ptr %i.l, align 16, !noalias !206
  %i.n = fmul <4 x float> %i.k, %i.m
  %i.o = load <4 x float>, ptr %i.j, align 16, !noalias !207
  %i.p = fmul <4 x float> %i.i, %i.o
  %i.q = fadd <4 x float> %i.n, %i.p
  %i.r = load <4 x float>, ptr %2, align 16, !noalias !208
  %i.s = fmul <4 x float> %i.h, %i.r
  %i.t = fadd <4 x float> %i.s, %i.q
  %.uncasted = shufflevector <4 x float> %i.t, <4 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.v = load float, ptr %i.u, align 8, !noalias !209
  %i.w = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.x = insertelement <4 x float> poison, float %i.v, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.w, %i.y              ; 2 uses
  %i.aa = fsub <4 x float> %.uncasted, %i.z
  %i.ab = fadd <4 x float> %.uncasted, %i.z
  store <4 x float> %i.aa, ptr %0, align 16, !alias.scope !204
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.ab, ptr %i.ac, align 16, !alias.scope !204
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA13vlinearBoundsEmRKNS_4BBoxIfEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load float, ptr %i.b, align 8, !noalias !244 ; 6 uses
  %i.d = load float, ptr %i.a, align 4            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load float, ptr %i.e, align 16
  %i.g = fsub float %i.f, %i.d
  %i.h = load <2 x float>, ptr %3, align 4
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.p = fmul float %i.c, %i.o                    ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = fmul float %i.c, %i.q                    ; 3 uses
  %i.s = tail call noundef float @llvm.floor.f32(float %i.p) ; 3 uses
  %i.t = tail call noundef float @llvm.ceil.f32(float %i.r) ; 3 uses
  %i.u = fcmp ogt float %i.s, 0.000000e+00
  %i.v = select i1 %i.u, float %i.s, float 0.000000e+00 ; 3 uses
  %i.w = fcmp olt float %i.t, %i.c
  %i.x = select i1 %i.w, float %i.t, float %i.c   ; 3 uses
  %i.y = fptosi float %i.v to i32
  %i.z = fptosi float %i.x to i32
  %i.aa = fptosi float %i.s to i32
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 -1) ; 2 uses
  %i.ac = fptosi float %i.t to i32
  %i.ad = fptosi float %i.c to i32
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ae) ; 3 uses
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ai = load ptr, ptr %i.ah, align 16, !noalias !245 ; 3 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.ag ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !245
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !245
  %i.an = mul i64 %i.am, %2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !noalias !246 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ar = load float, ptr %i.aq, align 8, !noalias !247
  %i.as = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.at = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.av = fmul <4 x float> %i.as, %i.au           ; 2 uses
  %i.aw = fsub <4 x float> %i.ap, %i.av           ; 3 uses
  %i.ax = fadd <4 x float> %i.ap, %i.av           ; 3 uses
  %i.ay = sext i32 %i.z to i64
  %i.az = getelementptr [56 x i8], ptr %i.ai, i64 %i.ay ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !248
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !248
  %i.bd = mul i64 %i.bc, %2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !249 ; 3 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bh = fmul <4 x float> %i.au, %i.bg           ; 2 uses
  %i.bi = fsub <4 x float> %i.bf, %i.bh           ; 3 uses
  %i.bj = fadd <4 x float> %i.bf, %i.bh           ; 3 uses
  %i.bk = sub nsw i32 %i.af, %i.ab
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bm = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.x, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.r, i64 1
  %i.bq = fsub <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = fcmp ogt <2 x float> %i.bq, zeroinitializer
  %i.bt = select <2 x i1> %i.bs, <2 x float> %i.bq, <2 x float> zeroinitializer ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul <4 x float> %i.bu, %i.bi
  %i.bw = fsub <2 x float> splat (float 1.000000e+00), %i.bt ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <4 x float> %i.aw, %i.bx
  %i.bz = fadd <4 x float> %i.by, %i.bv
  %i.ca = fmul <4 x float> %i.bu, %i.bj
  %i.cb = fmul <4 x float> %i.ax, %i.bx
  %i.cc = fadd <4 x float> %i.cb, %i.ca
  store <4 x float> %i.bz, ptr %0, align 16
  store <4 x float> %i.cc, ptr %i.br, align 16
  %i.cd = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ce = fmul <4 x float> %i.aw, %i.cd
  %i.cf = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cg = fmul <4 x float> %i.bi, %i.cf
  %i.ch = fadd <4 x float> %i.ce, %i.cg
  %i.ci = fmul <4 x float> %i.ax, %i.cd
  %i.cj = fmul <4 x float> %i.bj, %i.cf
  %i.ck = fadd <4 x float> %i.ci, %i.cj
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !250
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.co = load i64, ptr %i.cn, align 8, !noalias !250
  %i.cp = mul i64 %i.co, %2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !noalias !251 ; 3 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ct = fmul <4 x float> %i.au, %i.cs           ; 2 uses
  %i.cu = fsub <4 x float> %i.cr, %i.ct
  %i.cv = fadd <4 x float> %i.cr, %i.ct
  %i.cw = getelementptr i8, ptr %i.az, i64 -56
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !252
  %i.cy = getelementptr i8, ptr %i.az, i64 -40
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !252
  %i.da = mul i64 %i.cz, %2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = load <4 x float>, ptr %i.db, align 16, !noalias !253 ; 3 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.de = fmul <4 x float> %i.au, %i.dd           ; 2 uses
  %i.df = fsub <4 x float> %i.dc, %i.de
  %i.dg = fadd <4 x float> %i.dc, %i.de
  %i.dh = insertelement <2 x float> poison, float %i.p, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.x, i64 1
  %i.dj = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.r, i64 1
  %i.dl = fsub <2 x float> %i.di, %i.dk           ; 2 uses
  %i.dm = fcmp ogt <2 x float> %i.dl, zeroinitializer
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.dl, <2 x float> zeroinitializer ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dp = fmul <4 x float> %i.do, %i.cu
  %i.dq = fsub <2 x float> splat (float 1.000000e+00), %i.dn ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <4 x float> %i.aw, %i.dr
  %i.dt = fadd <4 x float> %i.ds, %i.dp           ; 2 uses
  %i.du = fmul <4 x float> %i.do, %i.cv
  %i.dv = fmul <4 x float> %i.ax, %i.dr
  %i.dw = fadd <4 x float> %i.dv, %i.du           ; 2 uses
  %i.dx = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dy = fmul <4 x float> %i.dx, %i.df
  %i.dz = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ea = fmul <4 x float> %i.bi, %i.dz
  %i.eb = fadd <4 x float> %i.ea, %i.dy           ; 2 uses
  %i.ec = fmul <4 x float> %i.dx, %i.dg
  %i.ed = fmul <4 x float> %i.bj, %i.dz
  %i.ee = fadd <4 x float> %i.ed, %i.ec           ; 2 uses
  %.0.i115 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.ef = icmp slt i32 %.0.i115, %i.af
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.eg = fsub float %i.q, %i.o
  %i.eh = zext nneg i32 %.0.i115 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.729.0.lcssa = phi <4 x float> [ %i.dw, %bb.c ], [ %i.fp, %bb.d ]
  %.sroa.026.0.lcssa = phi <4 x float> [ %i.dt, %bb.c ], [ %i.fn, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.ee, %bb.c ], [ %i.fq, %bb.d ]
  %.sroa.021.0.lcssa = phi <4 x float> [ %i.eb, %bb.c ], [ %i.fo, %bb.d ]
  store <4 x float> %.sroa.026.0.lcssa, ptr %0, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.729.0.lcssa, ptr %i.ei, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.eh, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.021.0119 = phi <4 x float> [ %i.eb, %.lr.ph ], [ %i.fo, %bb.d ] ; 2 uses
  %.sroa.7.0118 = phi <4 x float> [ %i.ee, %.lr.ph ], [ %i.fq, %bb.d ] ; 2 uses
  %.sroa.026.0117 = phi <4 x float> [ %i.dt, %.lr.ph ], [ %i.fn, %bb.d ] ; 2 uses
  %.sroa.729.0116 = phi <4 x float> [ %i.dw, %.lr.ph ], [ %i.fp, %bb.d ] ; 2 uses
  %i.ej = trunc nsw i64 %indvars.iv to i32
  %4 = uitofp nneg i32 %i.ej to float
  %i.ek = fdiv float %4, %i.c
  %i.el = fsub float %i.ek, %i.o
  %i.em = fdiv float %i.el, %i.eg                 ; 2 uses
  %i.en = fsub float 1.000000e+00, %i.em
  %i.eo = insertelement <4 x float> poison, float %i.em, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul <4 x float> %.sroa.021.0119, %i.ep
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.et = fmul <4 x float> %.sroa.026.0117, %i.es
  %i.eu = fadd <4 x float> %i.eq, %i.et
  %i.ev = fmul <4 x float> %.sroa.7.0118, %i.ep
  %i.ew = fmul <4 x float> %.sroa.729.0116, %i.es
  %i.ex = fadd <4 x float> %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !254
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !254
  %i.fc = mul i64 %i.fb, %2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fc
  %i.fe = load <4 x float>, ptr %i.fd, align 16, !noalias !255 ; 3 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fg = fmul <4 x float> %i.au, %i.ff           ; 2 uses
  %i.fh = fsub <4 x float> %i.fe, %i.fg
  %i.fi = fadd <4 x float> %i.fe, %i.fg
  %i.fj = fsub <4 x float> %i.fh, %i.eu
  %i.fk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fj, <4 x float> zeroinitializer) ; 2 uses
  %i.fl = fsub <4 x float> %i.fi, %i.ex
  %i.fm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fl, <4 x float> zeroinitializer) ; 2 uses
  %i.fn = fadd <4 x float> %.sroa.026.0117, %i.fk ; 2 uses
  %i.fo = fadd <4 x float> %.sroa.021.0119, %i.fk ; 2 uses
  %i.fp = fadd <4 x float> %.sroa.729.0116, %i.fm ; 2 uses
  %i.fq = fadd <4 x float> %.sroa.7.0118, %i.fm   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !14

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink132 = phi <4 x float> [ %i.ch, %bb.b ], [ %.sroa.021.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.ck, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink132, ptr %i.fr, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.fs, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse29PointsISA13vlinearBoundsERKNS_12LinearSpace3INS_6Vec3faEEEmRKNS_4BBoxIfEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(300) %1, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load float, ptr %i.b, align 8, !noalias !303 ; 6 uses
  %i.d = load float, ptr %i.a, align 4            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load float, ptr %i.e, align 16
  %i.g = fsub float %i.f, %i.d
  %i.h = load <2 x float>, ptr %4, align 4
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.p = fmul float %i.c, %i.o                    ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = fmul float %i.c, %i.q                    ; 3 uses
  %i.s = tail call noundef float @llvm.floor.f32(float %i.p) ; 3 uses
  %i.t = tail call noundef float @llvm.ceil.f32(float %i.r) ; 3 uses
  %i.u = fcmp ogt float %i.s, 0.000000e+00
  %i.v = select i1 %i.u, float %i.s, float 0.000000e+00 ; 3 uses
  %i.w = fcmp olt float %i.t, %i.c
  %i.x = select i1 %i.w, float %i.t, float %i.c   ; 3 uses
  %i.y = fptosi float %i.v to i32
  %i.z = fptosi float %i.x to i32
  %i.aa = fptosi float %i.s to i32
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 -1) ; 2 uses
  %i.ac = fptosi float %i.t to i32
  %i.ad = fptosi float %i.c to i32
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ae) ; 3 uses
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ai = load ptr, ptr %i.ah, align 16, !noalias !304 ; 3 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.ag ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !304
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !304
  %i.an = mul i64 %i.am, %3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !noalias !305 ; 5 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load <4 x float>, ptr %i.au, align 16, !noalias !306 ; 5 uses
  %i.aw = fmul <4 x float> %i.at, %i.av
  %i.ax = load <4 x float>, ptr %i.as, align 16, !noalias !307 ; 5 uses
  %i.ay = fmul <4 x float> %i.ar, %i.ax
  %i.az = fadd <4 x float> %i.aw, %i.ay
  %i.ba = load <4 x float>, ptr %2, align 16, !noalias !308 ; 5 uses
  %i.bb = fmul <4 x float> %i.aq, %i.ba
  %i.bc = fadd <4 x float> %i.bb, %i.az
  %.uncasted.i = shufflevector <4 x float> %i.bc, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.be = load float, ptr %i.bd, align 8, !noalias !309
  %i.bf = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bg = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.bi = fmul <4 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = fsub <4 x float> %.uncasted.i, %i.bi    ; 3 uses
  %i.bk = fadd <4 x float> %.uncasted.i, %i.bi    ; 3 uses
  %i.bl = sext i32 %i.z to i64
  %i.bm = getelementptr [56 x i8], ptr %i.ai, i64 %i.bl ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !310
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !310
  %i.bq = mul i64 %i.bp, %3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = load <4 x float>, ptr %i.br, align 16, !noalias !311 ; 5 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bw = fmul <4 x float> %i.av, %i.bv
  %i.bx = fmul <4 x float> %i.ax, %i.bu
  %i.by = fadd <4 x float> %i.bw, %i.bx
  %i.bz = fmul <4 x float> %i.ba, %i.bt
  %i.ca = fadd <4 x float> %i.bz, %i.by
  %.uncasted.i3 = shufflevector <4 x float> %i.ca, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cc = fmul <4 x float> %i.bh, %i.cb           ; 2 uses
  %i.cd = fsub <4 x float> %.uncasted.i3, %i.cc   ; 3 uses
  %i.ce = fadd <4 x float> %i.cc, %.uncasted.i3   ; 3 uses
  %i.cf = sub nsw i32 %i.af, %i.ab
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ch = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.x, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.r, i64 1
  %i.cl = fsub <2 x float> %i.ci, %i.ck           ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = fcmp ogt <2 x float> %i.cl, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.cl, <2 x float> zeroinitializer ; 3 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cq = fmul <4 x float> %i.cp, %i.cd
  %i.cr = fsub <2 x float> splat (float 1.000000e+00), %i.co ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <4 x float> %i.cs, %i.bj
  %i.cu = fadd <4 x float> %i.ct, %i.cq
  %i.cv = fmul <4 x float> %i.cp, %i.ce
  %i.cw = fmul <4 x float> %i.cs, %i.bk
  %i.cx = fadd <4 x float> %i.cw, %i.cv
  store <4 x float> %i.cu, ptr %0, align 16
  store <4 x float> %i.cx, ptr %i.cm, align 16
  %i.cy = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cz = fmul <4 x float> %i.cy, %i.bj
  %i.da = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.db = fmul <4 x float> %i.da, %i.cd
  %i.dc = fadd <4 x float> %i.cz, %i.db
  %i.dd = fmul <4 x float> %i.cy, %i.bk
  %i.de = fmul <4 x float> %i.da, %i.ce
  %i.df = fadd <4 x float> %i.dd, %i.de
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit

bb.c:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !312
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.dj = load i64, ptr %i.di, align 8, !noalias !312
  %i.dk = mul i64 %i.dj, %3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !noalias !313 ; 5 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.do = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.dq = fmul <4 x float> %i.av, %i.dp
  %i.dr = fmul <4 x float> %i.ax, %i.do
  %i.ds = fadd <4 x float> %i.dq, %i.dr
  %i.dt = fmul <4 x float> %i.ba, %i.dn
  %i.du = fadd <4 x float> %i.dt, %i.ds
  %.uncasted.i4 = shufflevector <4 x float> %i.du, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dw = fmul <4 x float> %i.bh, %i.dv           ; 2 uses
  %i.dx = fsub <4 x float> %.uncasted.i4, %i.dw
  %i.dy = fadd <4 x float> %i.dw, %.uncasted.i4
  %i.dz = getelementptr i8, ptr %i.bm, i64 -56
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !314
  %i.eb = getelementptr i8, ptr %i.bm, i64 -40
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !314
  %i.ed = mul i64 %i.ec, %3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ed
  %i.ef = load <4 x float>, ptr %i.ee, align 16, !noalias !315 ; 5 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ei = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.ej = fmul <4 x float> %i.av, %i.ei
  %i.ek = fmul <4 x float> %i.ax, %i.eh
  %i.el = fadd <4 x float> %i.ej, %i.ek
  %i.em = fmul <4 x float> %i.ba, %i.eg
  %i.en = fadd <4 x float> %i.em, %i.el
  %.uncasted.i5 = shufflevector <4 x float> %i.en, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ep = fmul <4 x float> %i.bh, %i.eo           ; 2 uses
  %i.eq = fsub <4 x float> %.uncasted.i5, %i.ep
  %i.er = fadd <4 x float> %i.ep, %.uncasted.i5
  %i.es = insertelement <2 x float> poison, float %i.p, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.x, i64 1
  %i.eu = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.r, i64 1
  %i.ew = fsub <2 x float> %i.et, %i.ev           ; 2 uses
  %i.ex = fcmp ogt <2 x float> %i.ew, zeroinitializer
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> zeroinitializer ; 3 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = fmul <4 x float> %i.ez, %i.dx
  %i.fb = fsub <2 x float> splat (float 1.000000e+00), %i.ey ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <4 x float> %i.fc, %i.bj
  %i.fe = fadd <4 x float> %i.fd, %i.fa           ; 2 uses
  %i.ff = fmul <4 x float> %i.ez, %i.dy
  %i.fg = fmul <4 x float> %i.fc, %i.bk
  %i.fh = fadd <4 x float> %i.fg, %i.ff           ; 2 uses
  %i.fi = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fj = fmul <4 x float> %i.fi, %i.eq
  %i.fk = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.cd
  %i.fm = fadd <4 x float> %i.fl, %i.fj           ; 2 uses
  %i.fn = fmul <4 x float> %i.fi, %i.er
  %i.fo = fmul <4 x float> %i.fk, %i.ce
  %i.fp = fadd <4 x float> %i.fo, %i.fn           ; 2 uses
  %.0.i124 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.fq = icmp slt i32 %.0.i124, %i.af
  br i1 %i.fq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.fr = fsub float %i.q, %i.o
  %i.fs = zext nneg i32 %.0.i124 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.738.0.lcssa = phi <4 x float> [ %i.fh, %bb.c ], [ %i.hi, %bb.d ]
  %.sroa.035.0.lcssa = phi <4 x float> [ %i.fe, %bb.c ], [ %i.hg, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.fp, %bb.c ], [ %i.hj, %bb.d ]
  %.sroa.030.0.lcssa = phi <4 x float> [ %i.fm, %bb.c ], [ %i.hh, %bb.d ]
  store <4 x float> %.sroa.035.0.lcssa, ptr %0, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.738.0.lcssa, ptr %i.ft, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.fs, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.030.0128 = phi <4 x float> [ %i.fm, %.lr.ph ], [ %i.hh, %bb.d ] ; 2 uses
  %.sroa.7.0127 = phi <4 x float> [ %i.fp, %.lr.ph ], [ %i.hj, %bb.d ] ; 2 uses
  %.sroa.035.0126 = phi <4 x float> [ %i.fe, %.lr.ph ], [ %i.hg, %bb.d ] ; 2 uses
  %.sroa.738.0125 = phi <4 x float> [ %i.fh, %.lr.ph ], [ %i.hi, %bb.d ] ; 2 uses
  %i.fu = trunc nsw i64 %indvars.iv to i32
  %5 = uitofp nneg i32 %i.fu to float
  %i.fv = fdiv float %5, %i.c
  %i.fw = fsub float %i.fv, %i.o
  %i.fx = fdiv float %i.fw, %i.fr                 ; 2 uses
  %i.fy = fsub float 1.000000e+00, %i.fx
  %i.fz = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gb = fmul <4 x float> %.sroa.030.0128, %i.ga
  %i.gc = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ge = fmul <4 x float> %.sroa.035.0126, %i.gd
  %i.gf = fadd <4 x float> %i.gb, %i.ge
  %i.gg = fmul <4 x float> %.sroa.7.0127, %i.ga
  %i.gh = fmul <4 x float> %.sroa.738.0125, %i.gd
  %i.gi = fadd <4 x float> %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !316
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !316
  %i.gn = mul i64 %i.gm, %3
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn
  %i.gp = load <4 x float>, ptr %i.go, align 16, !noalias !317 ; 5 uses
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.gt = fmul <4 x float> %i.av, %i.gs
  %i.gu = fmul <4 x float> %i.ax, %i.gr
  %i.gv = fadd <4 x float> %i.gt, %i.gu
  %i.gw = fmul <4 x float> %i.ba, %i.gq
  %i.gx = fadd <4 x float> %i.gw, %i.gv
  %.uncasted.i6 = shufflevector <4 x float> %i.gx, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.gy = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gz = fmul <4 x float> %i.bh, %i.gy           ; 2 uses
  %i.ha = fsub <4 x float> %.uncasted.i6, %i.gz
  %i.hb = fadd <4 x float> %i.gz, %.uncasted.i6
  %i.hc = fsub <4 x float> %i.ha, %i.gf
  %i.hd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hc, <4 x float> zeroinitializer) ; 2 uses
  %i.he = fsub <4 x float> %i.hb, %i.gi
  %i.hf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.he, <4 x float> zeroinitializer) ; 2 uses
  %i.hg = fadd <4 x float> %.sroa.035.0126, %i.hd ; 2 uses
  %i.hh = fadd <4 x float> %.sroa.030.0128, %i.hd ; 2 uses
  %i.hi = fadd <4 x float> %.sroa.738.0125, %i.hf ; 2 uses
  %i.hj = fadd <4 x float> %.sroa.7.0127, %i.hf   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !302

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink141 = phi <4 x float> [ %i.dc, %bb.b ], [ %.sroa.030.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.df, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink141, ptr %i.hk, align 16
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.hl, align 16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #19

declare <2 x float> @_ZNK6embree8Geometry12getTimeRangeEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = distinct !{!6, !18}
!7 = distinct !{null}
!8 = distinct !{!8, !18}
!9 = distinct !{null}
!10 = distinct !{!10, !18}
!11 = distinct !{null}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{null, null}
!25 = distinct !{null, null}
!26 = distinct !{null, null}
!27 = distinct !{null, null}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{null, null}
!32 = distinct !{!32, !18}
!33 = distinct !{null, null}
!34 = distinct !{!34, !18}
!35 = distinct !{null}
!36 = distinct !{!36, !18}
!37 = distinct !{null, null}
!38 = distinct !{null, null}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, i1 false, !"_ZNK6embree8Geometry18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS2_Lm32EEEEERKNS_5rangeImEEmj"}
!43 = distinct !{!43, !42, !"_ZNK6embree8Geometry18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS2_Lm32EEEEERKNS_5rangeImEEmj: argument 0"}
!44 = distinct !{null}
!45 = !{!43}
!46 = !{ptr @_ZN6embree12rtcore_errorD2Ev}
!47 = distinct !{!47, i1 false, !"_ZNK6embree6Points6vertexEmm"}
!48 = distinct !{!48, !47, !"_ZNK6embree6Points6vertexEmm: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZNK6embree6Points6boundsEm"}
!50 = distinct !{!50, !49, !"_ZNK6embree6Points6boundsEm: argument 0"}
!51 = distinct !{!51, i1 false, !"_ZNK6embree6Points6vertexEm"}
!52 = distinct !{!52, !51, !"_ZNK6embree6Points6vertexEm: argument 0"}
!53 = distinct !{!53, i1 false, !"_ZNK6embree6Points6boundsERKNS_6Vec3fxE"}
!54 = distinct !{!54, !53, !"_ZNK6embree6Points6boundsERKNS_6Vec3fxE: argument 0"}
!55 = distinct !{!55, !18}
!56 = !{!48}
!57 = !{!52, !50}
!58 = !{!54}
!59 = distinct !{!59, i1 false, !"_ZNK6embree6Points6vertexEmm"}
!60 = distinct !{!60, !59, !"_ZNK6embree6Points6vertexEmm: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZNK6embree6Points6vertexEmm"}
!62 = distinct !{!62, !61, !"_ZNK6embree6Points6vertexEmm: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZNK6embree6Points6boundsEmm"}
!64 = distinct !{!64, !63, !"_ZNK6embree6Points6boundsEmm: argument 0"}
!65 = distinct !{!65, i1 false, !"_ZNK6embree6Points6vertexEmm"}
!66 = distinct !{!66, !65, !"_ZNK6embree6Points6vertexEmm: argument 0"}
!67 = distinct !{!67, i1 false, !"_ZNK6embree6Points6boundsERKNS_6Vec3fxE"}
!68 = distinct !{!68, !67, !"_ZNK6embree6Points6boundsERKNS_6Vec3fxE: argument 0"}
!69 = distinct !{!69, !18}
!70 = !{!60}
!71 = !{!62}
!72 = !{!66, !64}
!73 = !{!64}
!74 = !{!68, !64}
!75 = distinct !{!75, i1 false, !"_ZNK6embree8Geometry16timeSegmentRangeERKNS_4BBoxIfEE"}
!76 = distinct !{!76, !75, !"_ZNK6embree8Geometry16timeSegmentRangeERKNS_4BBoxIfEE: argument 0"}
!77 = distinct !{!77, i1 false, !"_ZNK6embree6Points6vertexEmm"}
!78 = distinct !{!78, !77, !"_ZNK6embree6Points6vertexEmm: argument 0"}
end_hunk_0
