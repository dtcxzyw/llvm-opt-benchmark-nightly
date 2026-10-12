Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_line_segments?download=true
inline.NumInlined: 449
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6embree4sse215LineSegmentsISA20createPrimRefArrayMBEPNS_7PrimRefERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = load <4 x float>, ptr %i.bp, align 16   ; 3 uses
  %i.br = fcmp ole <4 x float> %i.bq, splat (float -1.844000e+18)
  %i.bs = fcmp uge <4 x float> %i.bq, splat (float 1.844000e+18)
  %i.bt = or <4 x i1> %i.br, %i.bs
  %i.bu = bitcast <4 x i1> %i.bt to i4
  %i.bv = icmp eq i4 %i.bu, 0
  br i1 %i.bv, label %bb.e, label %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit, !prof !16

bb.e:                                             ; preds = %.lr.ph
  %i.bw = mul i64 %i.bn, %i.aw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bw
  %i.by = load <4 x float>, ptr %i.bx, align 16   ; 3 uses
  %i.bz = fcmp ole <4 x float> %i.by, splat (float -1.844000e+18)
  %i.ca = fcmp uge <4 x float> %i.by, splat (float 1.844000e+18)
  %i.cb = or <4 x i1> %i.bz, %i.ca
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp eq i4 %i.cc, 0
  br i1 %i.cd, label %bb.f, label %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  %.sroa.065.12.vec.extract = extractelement <4 x float> %i.bq, i64 3 ; 2 uses
  %.sroa.063.12.vec.extract = extractelement <4 x float> %i.by, i64 3 ; 2 uses
  %i.ce = fcmp olt float %.sroa.065.12.vec.extract, %.sroa.063.12.vec.extract
  %i.cf = select i1 %i.ce, float %.sroa.065.12.vec.extract, float %.sroa.063.12.vec.extract
  %i.cg = fcmp uge float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.d, label %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.i: ; preds = %bb.d, %.preheader
  %i.ch = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fsub <2 x float> %i.k, %i.ch
  %i.cj = fsub float %.sroa.095.4.vec.extract103, %.sroa.095.0.vec.extract
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x float> %i.ci, %i.cl           ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0 ; 3 uses
  %i.co = fmul float %i.af, %i.cn                 ; 3 uses
  %i.cp = extractelement <2 x float> %i.cm, i64 1 ; 2 uses
  %i.cq = fmul float %i.af, %i.cp                 ; 3 uses
  %i.cr = tail call noundef float @llvm.floor.f32(float %i.co) ; 3 uses
  %i.cs = tail call noundef float @llvm.ceil.f32(float %i.cq) ; 3 uses
  %i.ct = fcmp ogt float %i.cr, 0.000000e+00
  %i.cu = select i1 %i.ct, float %i.cr, float 0.000000e+00 ; 3 uses
  %i.cv = fcmp olt float %i.cs, %i.af
  %i.cw = select i1 %i.cv, float %i.cs, float %i.af ; 3 uses
  %i.cx = fptosi float %i.cu to i32
  %i.cy = fptosi float %i.cw to i32
  %i.cz = fptosi float %i.cr to i32
  %i.da = tail call noundef i32 @llvm.smax.i32(i32 %i.cz, i32 -1) ; 2 uses
  %i.db = fptosi float %i.cs to i32
  %i.dc = fptosi float %i.af to i32
  %i.dd = add nsw i32 %i.dc, 1
  %i.de = tail call noundef i32 @llvm.smin.i32(i32 %i.db, i32 %i.dd) ; 3 uses
  %i.df = zext nneg i32 %i.cx to i64
  %i.dg = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %i.df ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !142 ; 2 uses
  %i.dk = mul i64 %i.dj, %.pre265
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !noalias !143 ; 3 uses
  %i.dn = mul i64 %i.dj, %i.aw
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dn
  %i.dp = load <4 x float>, ptr %i.do, align 16, !noalias !143 ; 3 uses
  %i.dq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dm, <4 x float> %i.dp)
  %i.dr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dm, <4 x float> %i.dp)
  %i.ds = load float, ptr %i.x, align 4, !noalias !144 ; 2 uses
  %i.dt = sext i32 %i.cy to i64
  %i.du = getelementptr [56 x i8], ptr %i.ax, i64 %i.dt ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !145 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !145 ; 2 uses
  %i.dy = mul i64 %i.dx, %.pre265
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !noalias !146 ; 3 uses
  %i.eb = mul i64 %i.dx, %i.aw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !noalias !146 ; 3 uses
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.eg = shufflevector <4 x float> %i.dm, <4 x float> %i.ea, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dp, <4 x float> %i.ed, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ei = fcmp olt <2 x float> %i.eg, %i.eh
  %i.ej = select <2 x i1> %i.ei, <2 x float> %i.eh, <2 x float> %i.eg
  %i.ek = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = fmul <2 x float> %i.el, %i.ej           ; 2 uses
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eo = fsub <4 x float> %i.dq, %i.en           ; 3 uses
  %i.ep = fadd <4 x float> %i.dr, %i.en           ; 3 uses
  %i.eq = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.er = fsub <4 x float> %i.ee, %i.eq           ; 3 uses
  %i.es = fadd <4 x float> %i.ef, %i.eq           ; 3 uses
  %i.et = sub nsw i32 %i.de, %i.da
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.i
  %i.ev = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.cw, i64 1
  %i.ex = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.cq, i64 1
  %i.ez = fsub <2 x float> %i.ew, %i.ey           ; 2 uses
  %i.fa = fcmp ogt <2 x float> %i.ez, zeroinitializer
  %i.fb = select <2 x i1> %i.fa, <2 x float> %i.ez, <2 x float> zeroinitializer ; 3 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <4 x float> %i.fc, %i.er
  %i.fe = fsub <2 x float> splat (float 1.000000e+00), %i.fb ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fg = fmul <4 x float> %i.ff, %i.eo
  %i.fh = fadd <4 x float> %i.fg, %i.fd
  %i.fi = fmul <4 x float> %i.fc, %i.es
  %i.fj = fmul <4 x float> %i.ff, %i.ep
  %i.fk = fadd <4 x float> %i.fj, %i.fi
  %i.fl = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.eo
  %i.fn = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fo = fmul <4 x float> %i.fn, %i.er
  %i.fp = fadd <4 x float> %i.fm, %i.fo
  %i.fq = fmul <4 x float> %i.fl, %i.ep
  %i.fr = fmul <4 x float> %i.fn, %i.es
  %i.fs = fadd <4 x float> %i.fq, %i.fr
  br label %.loopexit

bb.h:                                             ; preds = %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !147 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !147 ; 2 uses
  %i.fx = mul i64 %i.fw, %.pre265
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !148 ; 3 uses
  %i.ga = mul i64 %i.fw, %i.aw
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ga
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !noalias !148 ; 3 uses
  %i.gd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fz, <4 x float> %i.gc)
  %i.ge = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fz, <4 x float> %i.gc)
  %i.gf = getelementptr i8, ptr %i.du, i64 -56
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !149 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.du, i64 -40
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !149 ; 2 uses
  %i.gj = mul i64 %i.gi, %.pre265
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj
  %i.gl = load <4 x float>, ptr %i.gk, align 16, !noalias !150 ; 3 uses
  %i.gm = mul i64 %i.gi, %i.aw
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gm
  %i.go = load <4 x float>, ptr %i.gn, align 16, !noalias !150 ; 3 uses
  %i.gp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gl, <4 x float> %i.go)
  %i.gq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gl, <4 x float> %i.go)
  %i.gr = shufflevector <4 x float> %i.fz, <4 x float> %i.gl, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gs = shufflevector <4 x float> %i.gc, <4 x float> %i.go, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gt = fcmp olt <2 x float> %i.gr, %i.gs
  %i.gu = select <2 x i1> %i.gt, <2 x float> %i.gs, <2 x float> %i.gr
  %i.gv = fmul <2 x float> %i.el, %i.gu           ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gx = fsub <4 x float> %i.gd, %i.gw
  %i.gy = fadd <4 x float> %i.ge, %i.gw
  %i.gz = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ha = fsub <4 x float> %i.gp, %i.gz
  %i.hb = fadd <4 x float> %i.gq, %i.gz
  %i.hc = insertelement <2 x float> poison, float %i.co, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.cw, i64 1
  %i.he = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.cq, i64 1
  %i.hg = fsub <2 x float> %i.hd, %i.hf           ; 2 uses
  %i.hh = fcmp ogt <2 x float> %i.hg, zeroinitializer
  %i.hi = select <2 x i1> %i.hh, <2 x float> %i.hg, <2 x float> zeroinitializer ; 3 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <4 x float> %i.hj, %i.gx
  %i.hl = fsub <2 x float> splat (float 1.000000e+00), %i.hi ; 2 uses
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <4 x float> %i.hm, %i.eo
  %i.ho = fadd <4 x float> %i.hn, %i.hk           ; 2 uses
  %i.hp = fmul <4 x float> %i.hj, %i.gy
  %i.hq = fmul <4 x float> %i.hm, %i.ep
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 2 uses
  %i.hs = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ht = fmul <4 x float> %i.hs, %i.ha
  %i.hu = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hv = fmul <4 x float> %i.hu, %i.er
  %i.hw = fadd <4 x float> %i.hv, %i.ht           ; 2 uses
  %i.hx = fmul <4 x float> %i.hs, %i.hb
  %i.hy = fmul <4 x float> %i.hu, %i.es
  %i.hz = fadd <4 x float> %i.hy, %i.hx           ; 2 uses
  %.0.i228 = add nsw i32 %i.da, 1                 ; 2 uses
  %i.ia = icmp slt i32 %.0.i228, %i.de
  br i1 %i.ia, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %bb.h
  %i.ib = fsub float %i.cp, %i.cn
  %i.ic = zext nneg i32 %.0.i228 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph234, %bb.i
  %indvars.iv = phi i64 [ %i.ic, %.lr.ph234 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.sroa.7125.0232 = phi <4 x float> [ %i.hr, %.lr.ph234 ], [ %i.jq, %bb.i ] ; 2 uses
  %.sroa.0122.0231 = phi <4 x float> [ %i.ho, %.lr.ph234 ], [ %i.jo, %bb.i ] ; 2 uses
  %.sroa.7.0230 = phi <4 x float> [ %i.hz, %.lr.ph234 ], [ %i.jr, %bb.i ] ; 2 uses
  %.sroa.0117.0229 = phi <4 x float> [ %i.hw, %.lr.ph234 ], [ %i.jp, %bb.i ] ; 2 uses
  %i.id = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.id to float
  %i.ie = fdiv float %7, %i.af
  %i.if = fsub float %i.ie, %i.cn
  %i.ig = fdiv float %i.if, %i.ib                 ; 2 uses
  %i.ih = fsub float 1.000000e+00, %i.ig
  %i.ii = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ik = fmul <4 x float> %.sroa.0117.0229, %i.ij
  %i.il = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.in = fmul <4 x float> %.sroa.0122.0231, %i.im
  %i.io = fadd <4 x float> %i.ik, %i.in
  %i.ip = fmul <4 x float> %.sroa.7.0230, %i.ij
  %i.iq = fmul <4 x float> %.sroa.7125.0232, %i.im
  %i.ir = fadd <4 x float> %i.ip, %i.iq
  %i.is = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !noalias !151 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !151 ; 2 uses
  %i.iw = mul i64 %i.iv, %.pre265
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iw
  %i.iy = load <4 x float>, ptr %i.ix, align 16, !noalias !152 ; 3 uses
  %i.iz = mul i64 %i.iv, %i.aw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iz
  %i.jb = load <4 x float>, ptr %i.ja, align 16, !noalias !152 ; 3 uses
  %i.jc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iy, <4 x float> %i.jb)
  %i.jd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iy, <4 x float> %i.jb)
  %.sroa.02.12.vec.extract.i20 = extractelement <4 x float> %i.iy, i64 3 ; 2 uses
  %.sroa.0.12.vec.extract.i21 = extractelement <4 x float> %i.jb, i64 3 ; 2 uses
  %i.je = fcmp olt float %.sroa.02.12.vec.extract.i20, %.sroa.0.12.vec.extract.i21
  %i.jf = select i1 %i.je, float %.sroa.0.12.vec.extract.i21, float %.sroa.02.12.vec.extract.i20
  %.scalar.i22 = fmul float %i.ds, %i.jf
  %i.jg = insertelement <4 x float> poison, float %.scalar.i22, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = fsub <4 x float> %i.jc, %i.jh
  %i.jj = fadd <4 x float> %i.jd, %i.jh
  %i.jk = fsub <4 x float> %i.ji, %i.io
  %i.jl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jk, <4 x float> zeroinitializer) ; 2 uses
  %i.jm = fsub <4 x float> %i.jj, %i.ir
  %i.jn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jm, <4 x float> zeroinitializer) ; 2 uses
  %i.jo = fadd <4 x float> %.sroa.0122.0231, %i.jl ; 2 uses
  %i.jp = fadd <4 x float> %.sroa.0117.0229, %i.jl ; 2 uses
  %i.jq = fadd <4 x float> %.sroa.7125.0232, %i.jn ; 2 uses
  %i.jr = fadd <4 x float> %.sroa.7.0230, %i.jn   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.de, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !9

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.11.0.ph = phi <4 x float> [ %i.fs, %bb.g ], [ %i.hz, %bb.h ], [ %i.jr, %bb.i ]
  %.sroa.8.0.ph = phi <4 x float> [ %i.fp, %bb.g ], [ %i.hw, %bb.h ], [ %i.jp, %bb.i ]
  %.sroa.527.0.ph = phi <4 x float> [ %i.fk, %bb.g ], [ %i.hr, %bb.h ], [ %i.jq, %bb.i ]
  %.sroa.026.0.ph = phi <4 x float> [ %i.fh, %bb.g ], [ %i.ho, %bb.h ], [ %i.jo, %bb.i ]
  %i.js = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.026.0.ph, <4 x float> %.sroa.8.0.ph)
  %i.jt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.527.0.ph, <4 x float> %.sroa.11.0.ph)
  %i.ju = trunc i64 %.0247 to i32
  %.sroa.039.12.vec.insert = insertelement <4 x float> %i.js, float %i.y, i64 3 ; 3 uses
  %i.jv = bitcast i32 %i.ju to float
  %.sroa.038.12.vec.insert = insertelement <4 x float> %i.jt, float %i.jv, i64 3 ; 3 uses
  %i.jw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> %.sroa.039.12.vec.insert)
  %i.jx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ab, <4 x float> %.sroa.038.12.vec.insert)
  %i.jy = fadd <4 x float> %.sroa.039.12.vec.insert, %.sroa.038.12.vec.insert ; 2 uses
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> %i.jy)
  %i.ka = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> %i.jy)
  %i.kb = add i64 %i.ae, 1
  %i.kc = add i64 %.010246, 1
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.010246 ; 2 uses
  store <4 x float> %.sroa.039.12.vec.insert, ptr %i.kd, align 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <4 x float> %.sroa.038.12.vec.insert, ptr %i.ke, align 16
  %.pre = load i64, ptr %i.p, align 8
  br label %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit: ; preds = %bb.f, %.lr.ph, %bb.e, %bb.c, %.loopexit
  %i.kf = phi i64 [ %.pre, %.loopexit ], [ %i.z, %bb.c ], [ %i.z, %bb.e ], [ %i.z, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %i.kg = phi i64 [ %i.kb, %.loopexit ], [ %i.ae, %bb.c ], [ %i.ae, %bb.e ], [ %i.ae, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.kh = phi <4 x float> [ %i.ka, %.loopexit ], [ %i.ad, %bb.c ], [ %i.ad, %bb.e ], [ %i.ad, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ki = phi <4 x float> [ %i.jz, %.loopexit ], [ %i.ac, %bb.c ], [ %i.ac, %bb.e ], [ %i.ac, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.kj = phi <4 x float> [ %i.jx, %.loopexit ], [ %i.ab, %bb.c ], [ %i.ab, %bb.e ], [ %i.ab, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %i.kk = phi <4 x float> [ %i.jw, %.loopexit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.e ], [ %i.aa, %.lr.ph ], [ %i.aa, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.kc, %.loopexit ], [ %.010246, %bb.c ], [ %.010246, %bb.e ], [ %.010246, %.lr.ph ], [ %.010246, %bb.f ]
  %i.kl = add nuw i64 %.0247, 1                   ; 2 uses
  %i.km = icmp ult i64 %i.kl, %i.kf
  br i1 %i.km, label %bb.c, label %.loopexit225, !llvm.loop !139

.loopexit225:                                     ; preds = %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit, %bb.b
  %.lcssa245 = phi i64 [ 0, %bb.b ], [ %i.kg, %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa243 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.kh, %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa241 = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.ki, %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa239 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.kj, %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.kk, %_ZNK6embree12LineSegments12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa239, ptr %i.a, align 16
  store <4 x float> %.lcssa241, ptr %i.b, align 16
  store <4 x float> %.lcssa243, ptr %i.c, align 16
  store i64 %.lcssa245, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit225, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse215LineSegmentsISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 16 dereferenceable(416) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5, i32 noundef %6) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load i64, ptr %4, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph279, label %bb.b

.lr.ph279:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = bitcast i32 %6 to float
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread
  store i64 %i.ln, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa265 = phi i64 [ %i.lo, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa263 = phi i64 [ %i.lp, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa261 = phi float [ %i.lq, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.lcssa259 = phi float [ %i.lr, %._crit_edge ], [ 1.000000e+00, %bb.a ]
  %.lcssa257 = phi <4 x float> [ %i.ls, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa255 = phi <4 x float> [ %i.lt, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa253 = phi <4 x float> [ %i.lu, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa251 = phi <4 x float> [ %i.lv, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa249 = phi <4 x float> [ %i.lw, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa = phi <4 x float> [ %i.lx, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %i.p = phi <2 x float> [ %i.ly, %._crit_edge ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa249, ptr %i.z, align 16
  store <4 x float> %.lcssa251, ptr %i.y, align 16
  store <4 x float> %.lcssa253, ptr %i.x, align 16
  store <4 x float> %.lcssa255, ptr %i.w, align 16
  store <4 x float> %.lcssa257, ptr %i.v, align 16
  store float %.lcssa259, ptr %i.r, align 8
  store float %.lcssa261, ptr %i.q, align 4
  store i64 %.lcssa263, ptr %i.u, align 16
  store i64 %.lcssa265, ptr %i.t, align 8
  store <2 x float> %i.p, ptr %i.s, align 16
  ret void

bb.c:                                             ; preds = %.lr.ph279, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread
  %i.aa = phi i64 [ %i.e, %.lr.ph279 ], [ %i.lm, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %i.ab = phi i64 [ 0, %.lr.ph279 ], [ %i.ln, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.0278 = phi i64 [ %5, %.lr.ph279 ], [ %.1, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.012276 = phi i64 [ %i.c, %.lr.ph279 ], [ %i.lz, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ac = phi <4 x float> [ splat (float +inf), %.lr.ph279 ], [ %i.lx, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.ad = phi <4 x float> [ splat (float -inf), %.lr.ph279 ], [ %i.lw, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.ae = phi <4 x float> [ splat (float +inf), %.lr.ph279 ], [ %i.lv, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.af = phi <4 x float> [ splat (float -inf), %.lr.ph279 ], [ %i.lu, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.ag = phi <4 x float> [ splat (float +inf), %.lr.ph279 ], [ %i.lt, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.ah = phi <4 x float> [ splat (float -inf), %.lr.ph279 ], [ %i.ls, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.ai = phi float [ 1.000000e+00, %.lr.ph279 ], [ %i.lr, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.aj = phi float [ 0.000000e+00, %.lr.ph279 ], [ %i.lq, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.ak = phi i64 [ 0, %.lr.ph279 ], [ %i.lp, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %i.al = phi i64 [ 0, %.lr.ph279 ], [ %i.lo, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.am = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph279 ], [ %i.ly, %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.g, align 4, !noalias !192 ; 7 uses
  %i.an = load float, ptr %i.h, align 8, !noalias !192 ; 10 uses
  %.sroa.081.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 4 uses
  %.sroa.081.4.vec.extract89 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 4 uses
  %i.ao = fsub float %.sroa.081.4.vec.extract89, %.sroa.081.0.vec.extract ; 2 uses
  %i.ap = load <2 x float>, ptr %3, align 4, !noalias !193 ; 3 uses
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %.sroa.0.0.copyload.i
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ar = fdiv float %i.aq, %i.ao
  %i.as = fmul float %i.ar, f0x3F7FFFFC
  %i.at = fmul float %i.an, %i.as
  %i.au = tail call noundef float @llvm.ceil.f32(float %i.at) ; 2 uses
  %i.av = fcmp olt float %i.au, %i.an
  %i.aw = select i1 %i.av, float %i.au, float %i.an
  %i.ax = fptosi float %i.aw to i32               ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.i, align 8
  %i.ba = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZNK6embree4sse215LineSegmentsISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = load <4 x float>, ptr %i.by, align 16   ; 3 uses
  %i.ca = fcmp ole <4 x float> %i.bz, splat (float -1.844000e+18)
  %i.cb = fcmp uge <4 x float> %i.bz, splat (float 1.844000e+18)
  %i.cc = or <4 x i1> %i.ca, %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp eq i4 %i.cd, 0
  br i1 %i.ce, label %bb.e, label %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread, !prof !16

bb.e:                                             ; preds = %.lr.ph
  %i.cf = mul i64 %i.bw, %i.bf
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cf
  %i.ch = load <4 x float>, ptr %i.cg, align 16   ; 3 uses
  %i.ci = fcmp ole <4 x float> %i.ch, splat (float -1.844000e+18)
  %i.cj = fcmp uge <4 x float> %i.ch, splat (float 1.844000e+18)
  %i.ck = or <4 x i1> %i.ci, %i.cj
  %i.cl = bitcast <4 x i1> %i.ck to i4
  %i.cm = icmp eq i4 %i.cl, 0
  br i1 %i.cm, label %bb.f, label %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread, !prof !16

bb.f:                                             ; preds = %bb.e
  %.sroa.052.12.vec.extract = extractelement <4 x float> %i.bz, i64 3 ; 2 uses
  %.sroa.050.12.vec.extract = extractelement <4 x float> %i.ch, i64 3 ; 2 uses
  %i.cn = fcmp olt float %.sroa.052.12.vec.extract, %.sroa.050.12.vec.extract
  %i.co = select i1 %i.cn, float %.sroa.052.12.vec.extract, float %.sroa.050.12.vec.extract
  %i.cp = fcmp uge float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.d, label %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit: ; preds = %bb.d, %.preheader
  %i.cq = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fsub <2 x float> %i.ap, %i.cq
  %i.cs = fsub float %.sroa.081.4.vec.extract89, %.sroa.081.0.vec.extract
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0 ; 3 uses
  %i.cx = fmul float %i.an, %i.cw                 ; 3 uses
  %i.cy = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %i.cz = fmul float %i.an, %i.cy                 ; 3 uses
  %i.da = tail call noundef float @llvm.floor.f32(float %i.cx) ; 3 uses
  %i.db = tail call noundef float @llvm.ceil.f32(float %i.cz) ; 3 uses
  %i.dc = fcmp ogt float %i.da, 0.000000e+00
  %i.dd = select i1 %i.dc, float %i.da, float 0.000000e+00 ; 3 uses
  %i.de = fcmp olt float %i.db, %i.an
  %i.df = select i1 %i.de, float %i.db, float %i.an ; 3 uses
  %i.dg = fptosi float %i.dd to i32
  %i.dh = fptosi float %i.df to i32
  %i.di = fptosi float %i.da to i32
  %i.dj = tail call noundef i32 @llvm.smax.i32(i32 %i.di, i32 -1) ; 2 uses
  %i.dk = fptosi float %i.db to i32
  %i.dl = fptosi float %i.an to i32
  %i.dm = add nsw i32 %i.dl, 1
  %i.dn = tail call noundef i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dm) ; 3 uses
  %i.do = zext nneg i32 %i.dg to i64
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %i.do ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !195 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !195 ; 2 uses
  %i.dt = mul i64 %i.ds, %.pre310
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = load <4 x float>, ptr %i.du, align 16, !noalias !196 ; 3 uses
  %i.dw = mul i64 %i.ds, %i.bf
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dw
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !196 ; 3 uses
  %i.dz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dv, <4 x float> %i.dy)
  %i.ea = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dv, <4 x float> %i.dy)
  %i.eb = load float, ptr %i.l, align 4, !noalias !197 ; 2 uses
  %i.ec = sext i32 %i.dh to i64
  %i.ed = getelementptr [56 x i8], ptr %i.bg, i64 %i.ec ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !198 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !198 ; 2 uses
  %i.eh = mul i64 %i.eg, %.pre310
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !noalias !199 ; 3 uses
  %i.ek = mul i64 %i.eg, %i.bf
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ek
  %i.em = load <4 x float>, ptr %i.el, align 16, !noalias !199 ; 3 uses
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ej, <4 x float> %i.em)
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ej, <4 x float> %i.em)
  %i.ep = shufflevector <4 x float> %i.dv, <4 x float> %i.ej, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.dy, <4 x float> %i.em, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.er = fcmp olt <2 x float> %i.ep, %i.eq
  %i.es = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> %i.ep
  %i.et = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fmul <2 x float> %i.eu, %i.es           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ex = fsub <4 x float> %i.dz, %i.ew           ; 3 uses
  %i.ey = fadd <4 x float> %i.ea, %i.ew           ; 3 uses
  %i.ez = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fa = fsub <4 x float> %i.en, %i.ez           ; 3 uses
  %i.fb = fadd <4 x float> %i.eo, %i.ez           ; 3 uses
  %i.fc = sub nsw i32 %i.dn, %i.dj
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit
  %i.fe = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.df, i64 1
  %i.fg = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.cz, i64 1
  %i.fi = fsub <2 x float> %i.ff, %i.fh           ; 2 uses
  %i.fj = fcmp ogt <2 x float> %i.fi, zeroinitializer
  %i.fk = select <2 x i1> %i.fj, <2 x float> %i.fi, <2 x float> zeroinitializer ; 3 uses
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fa
  %i.fn = fsub <2 x float> splat (float 1.000000e+00), %i.fk ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fp = fmul <4 x float> %i.fo, %i.ex
  %i.fq = fadd <4 x float> %i.fp, %i.fm
  %i.fr = fmul <4 x float> %i.fl, %i.fb
  %i.fs = fmul <4 x float> %i.fo, %i.ey
  %i.ft = fadd <4 x float> %i.fs, %i.fr
  %i.fu = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fv = fmul <4 x float> %i.fu, %i.ex
  %i.fw = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fx = fmul <4 x float> %i.fw, %i.fa
  %i.fy = fadd <4 x float> %i.fv, %i.fx
  %i.fz = fmul <4 x float> %i.fu, %i.ey
  %i.ga = fmul <4 x float> %i.fw, %i.fb
  %i.gb = fadd <4 x float> %i.fz, %i.ga
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.h:                                             ; preds = %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !200 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !200 ; 2 uses
  %i.gg = mul i64 %i.gf, %.pre310
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %i.gi = load <4 x float>, ptr %i.gh, align 16, !noalias !201 ; 3 uses
  %i.gj = mul i64 %i.gf, %i.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gj
  %i.gl = load <4 x float>, ptr %i.gk, align 16, !noalias !201 ; 3 uses
  %i.gm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gi, <4 x float> %i.gl)
  %i.gn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gi, <4 x float> %i.gl)
  %i.go = getelementptr i8, ptr %i.ed, i64 -56
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !202 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.ed, i64 -40
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !202 ; 2 uses
  %i.gs = mul i64 %i.gr, %.pre310
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gs
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !noalias !203 ; 3 uses
  %i.gv = mul i64 %i.gr, %i.bf
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gv
  %i.gx = load <4 x float>, ptr %i.gw, align 16, !noalias !203 ; 3 uses
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gu, <4 x float> %i.gx)
  %i.gz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gu, <4 x float> %i.gx)
  %i.ha = shufflevector <4 x float> %i.gi, <4 x float> %i.gu, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.hb = shufflevector <4 x float> %i.gl, <4 x float> %i.gx, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.hc = fcmp olt <2 x float> %i.ha, %i.hb
  %i.hd = select <2 x i1> %i.hc, <2 x float> %i.hb, <2 x float> %i.ha
  %i.he = fmul <2 x float> %i.eu, %i.hd           ; 2 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hg = fsub <4 x float> %i.gm, %i.hf
  %i.hh = fadd <4 x float> %i.gn, %i.hf
  %i.hi = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hj = fsub <4 x float> %i.gy, %i.hi
  %i.hk = fadd <4 x float> %i.gz, %i.hi
  %i.hl = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.df, i64 1
  %i.hn = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.cz, i64 1
  %i.hp = fsub <2 x float> %i.hm, %i.ho           ; 2 uses
  %i.hq = fcmp ogt <2 x float> %i.hp, zeroinitializer
  %i.hr = select <2 x i1> %i.hq, <2 x float> %i.hp, <2 x float> zeroinitializer ; 3 uses
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <4 x float> %i.hs, %i.hg
  %i.hu = fsub <2 x float> splat (float 1.000000e+00), %i.hr ; 2 uses
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hw = fmul <4 x float> %i.hv, %i.ex
  %i.hx = fadd <4 x float> %i.hw, %i.ht           ; 2 uses
  %i.hy = fmul <4 x float> %i.hs, %i.hh
  %i.hz = fmul <4 x float> %i.hv, %i.ey
  %i.ia = fadd <4 x float> %i.hz, %i.hy           ; 2 uses
  %i.ib = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ic = fmul <4 x float> %i.ib, %i.hj
  %i.id = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ie = fmul <4 x float> %i.id, %i.fa
  %i.if = fadd <4 x float> %i.ie, %i.ic           ; 2 uses
  %i.ig = fmul <4 x float> %i.ib, %i.hk
  %i.ih = fmul <4 x float> %i.id, %i.fb
  %i.ii = fadd <4 x float> %i.ih, %i.ig           ; 2 uses
  %.0.i13238 = add nsw i32 %i.dj, 1               ; 2 uses
  %i.ij = icmp slt i32 %.0.i13238, %i.dn
  br i1 %i.ij, label %.lr.ph244, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

.lr.ph244:                                        ; preds = %bb.h
  %i.ik = fsub float %i.cy, %i.cw
  %i.il = zext nneg i32 %.0.i13238 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph244, %bb.i
  %indvars.iv = phi i64 [ %i.il, %.lr.ph244 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.sroa.7112.0242 = phi <4 x float> [ %i.ia, %.lr.ph244 ], [ %i.jz, %bb.i ] ; 2 uses
  %.sroa.0109.0241 = phi <4 x float> [ %i.hx, %.lr.ph244 ], [ %i.jx, %bb.i ] ; 2 uses
  %.sroa.7106.0240 = phi <4 x float> [ %i.ii, %.lr.ph244 ], [ %i.ka, %bb.i ] ; 2 uses
  %.sroa.0103.0239 = phi <4 x float> [ %i.if, %.lr.ph244 ], [ %i.jy, %bb.i ] ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.im to float
  %i.in = fdiv float %7, %i.an
  %i.io = fsub float %i.in, %i.cw
  %i.ip = fdiv float %i.io, %i.ik                 ; 2 uses
  %i.iq = fsub float 1.000000e+00, %i.ip
  %i.ir = insertelement <4 x float> poison, float %i.ip, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.it = fmul <4 x float> %.sroa.0103.0239, %i.is
  %i.iu = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iw = fmul <4 x float> %.sroa.0109.0241, %i.iv
  %i.ix = fadd <4 x float> %i.it, %i.iw
  %i.iy = fmul <4 x float> %.sroa.7106.0240, %i.is
  %i.iz = fmul <4 x float> %.sroa.7112.0242, %i.iv
  %i.ja = fadd <4 x float> %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !204 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noalias !204 ; 2 uses
  %i.jf = mul i64 %i.je, %.pre310
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jf
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !noalias !205 ; 3 uses
  %i.ji = mul i64 %i.je, %i.bf
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ji
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !noalias !205 ; 3 uses
  %i.jl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jh, <4 x float> %i.jk)
  %i.jm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jh, <4 x float> %i.jk)
  %.sroa.02.12.vec.extract.i23 = extractelement <4 x float> %i.jh, i64 3 ; 2 uses
  %.sroa.0.12.vec.extract.i24 = extractelement <4 x float> %i.jk, i64 3 ; 2 uses
  %i.jn = fcmp olt float %.sroa.02.12.vec.extract.i23, %.sroa.0.12.vec.extract.i24
  %i.jo = select i1 %i.jn, float %.sroa.0.12.vec.extract.i24, float %.sroa.02.12.vec.extract.i23
  %.scalar.i25 = fmul float %i.eb, %i.jo
  %i.jp = insertelement <4 x float> poison, float %.scalar.i25, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jr = fsub <4 x float> %i.jl, %i.jq
  %i.js = fadd <4 x float> %i.jm, %i.jq
  %i.jt = fsub <4 x float> %i.jr, %i.ix
  %i.ju = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jt, <4 x float> zeroinitializer) ; 2 uses
  %i.jv = fsub <4 x float> %i.js, %i.ja
  %i.jw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jv, <4 x float> zeroinitializer) ; 2 uses
  %i.jx = fadd <4 x float> %.sroa.0109.0241, %i.ju ; 2 uses
  %i.jy = fadd <4 x float> %.sroa.0103.0239, %i.ju ; 2 uses
  %i.jz = fadd <4 x float> %.sroa.7112.0242, %i.jw ; 2 uses
  %i.ka = fadd <4 x float> %.sroa.7106.0240, %i.jw ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dn, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, label %bb.i, !llvm.loop !9

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.11.0 = phi <4 x float> [ %i.gb, %bb.g ], [ %i.ii, %bb.h ], [ %i.ka, %bb.i ]
  %.sroa.8.0 = phi <4 x float> [ %i.fy, %bb.g ], [ %i.if, %bb.h ], [ %i.jy, %bb.i ]
  %.sroa.5.0 = phi <4 x float> [ %i.ft, %bb.g ], [ %i.ia, %bb.h ], [ %i.jz, %bb.i ]
  %.sroa.0.0 = phi <4 x float> [ %i.fq, %bb.g ], [ %i.hx, %bb.h ], [ %i.jx, %bb.i ]
  %i.kb = load i32, ptr %i.m, align 4
  %i.kc = add i32 %i.kb, -1                       ; 2 uses
  %i.kd = trunc i64 %.012276 to i32
  %.sroa.026.12.vec.insert = insertelement <4 x float> %.sroa.0.0, float %i.n, i64 3 ; 3 uses
  %i.ke = bitcast i32 %i.kd to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5.0, float %i.ke, i64 3 ; 3 uses
  %i.kf = bitcast i32 %i.kc to float              ; 2 uses
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.8.0, float %i.kf, i64 3 ; 3 uses
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.kf, i64 3 ; 3 uses
  %i.kg = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.kh = fmul <4 x float> %.sroa.026.12.vec.insert, splat (float 5.000000e-01)
  %i.ki = fadd <4 x float> %i.kh, %i.kg
  %i.kj = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.kk = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.kl = fadd <4 x float> %i.kk, %i.kj
  %i.km = fadd <4 x float> %i.ki, %i.kl           ; 2 uses
  %i.kn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> %.sroa.026.12.vec.insert)
  %i.ko = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> %.sroa.7.28.vec.insert)
  %i.kp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> %.sroa.12.44.vec.insert)
  %i.kq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> %.sroa.18.60.vec.insert)
  %i.kr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ag, <4 x float> %i.km)
  %i.ks = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ah, <4 x float> %i.km)
  %i.kt = fcmp olt float %i.ai, %.sroa.081.0.vec.extract
  %i.ku = select i1 %i.kt, float %i.ai, float %.sroa.081.0.vec.extract
  %i.kv = fcmp olt float %i.aj, %.sroa.081.4.vec.extract89
  %i.kw = select i1 %i.kv, float %.sroa.081.4.vec.extract89, float %i.aj
  %i.kx = add i64 %i.ab, 1
  %i.ky = zext i32 %i.kc to i64                   ; 3 uses
  %i.kz = add i64 %i.ak, %i.ky
  %i.la = icmp ult i64 %i.al, %i.ky
  %i.lb = insertelement <2 x i1> poison, i1 %i.la, i64 0
  %i.lc = shufflevector <2 x i1> %i.lb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ld = select <2 x i1> %i.lc, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.am
  %i.le = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.ky)
  %i.lf = add i64 %.0278, 1
  %i.lg = load ptr, ptr %i.o, align 8
  %i.lh = getelementptr inbounds nuw [80 x i8], ptr %i.lg, i64 %.0278 ; 5 uses
  store <4 x float> %.sroa.026.12.vec.insert, ptr %i.lh, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.li, align 16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.lj, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.lk, align 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.ll, align 16
  %.pre = load i64, ptr %i.d, align 8
  br label %_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree12LineSegments5validEmRKNS_5rangeImEE.exit.thread: ; preds = %bb.f, %.lr.ph, %bb.e, %bb.c, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit
  %i.lm = phi i64 [ %.pre, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.e ], [ %i.aa, %.lr.ph ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ln = phi i64 [ %i.kx, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ab, %bb.c ], [ %i.ab, %bb.e ], [ %i.ab, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %i.lo = phi i64 [ %i.le, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.al, %bb.c ], [ %i.al, %bb.e ], [ %i.al, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %i.lp = phi i64 [ %i.kz, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ak, %bb.c ], [ %i.ak, %bb.e ], [ %i.ak, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %i.lq = phi float [ %i.kw, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aj, %bb.c ], [ %i.aj, %bb.e ], [ %i.aj, %.lr.ph ], [ %i.aj, %bb.f ] ; 2 uses
  %i.lr = phi float [ %i.ku, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ai, %bb.c ], [ %i.ai, %bb.e ], [ %i.ai, %.lr.ph ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ls = phi <4 x float> [ %i.ks, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ah, %bb.c ], [ %i.ah, %bb.e ], [ %i.ah, %.lr.ph ], [ %i.ah, %bb.f ] ; 2 uses
  %i.lt = phi <4 x float> [ %i.kr, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ag, %bb.c ], [ %i.ag, %bb.e ], [ %i.ag, %.lr.ph ], [ %i.ag, %bb.f ] ; 2 uses
  %i.lu = phi <4 x float> [ %i.kq, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.af, %bb.c ], [ %i.af, %bb.e ], [ %i.af, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %i.lv = phi <4 x float> [ %i.kp, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ae, %bb.c ], [ %i.ae, %bb.e ], [ %i.ae, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.lw = phi <4 x float> [ %i.ko, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ad, %bb.c ], [ %i.ad, %bb.e ], [ %i.ad, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.lx = phi <4 x float> [ %i.kn, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ac, %bb.c ], [ %i.ac, %bb.e ], [ %i.ac, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.lf, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.0278, %bb.c ], [ %.0278, %bb.e ], [ %.0278, %.lr.ph ], [ %.0278, %bb.f ]
  %i.ly = phi <2 x float> [ %i.ld, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.am, %bb.c ], [ %i.am, %bb.e ], [ %i.am, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %i.lz = add nuw i64 %.012276, 1                 ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.lm
  br i1 %i.ma, label %bb.c, label %._crit_edge, !llvm.loop !191
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse215LineSegmentsISA19computeAlignedSpaceEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::LinearSpace3") align 16 %0, ptr noundef nonnull align 16 dereferenceable(416) %1, i64 noundef %2) unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = trunc i64 %2 to i32
  %i.b = load ptr, ptr %1, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.embree::Vec3fa") align 16 %3, ptr noundef nonnull align 16 dereferenceable(416) %1, i32 noundef %i.a)
  %i.e = load <4 x float>, ptr %3, align 16, !noalias !210 ; 3 uses
  %i.f = fmul <4 x float> %i.e, %i.e              ; 3 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.i = fadd <4 x float> %i.f, %i.g
  %i.j = fadd <4 x float> %i.h, %i.i              ; 2 uses
  %i.k = extractelement <4 x float> %i.j, i64 0
  %i.l = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.j) ; 3 uses
  %i.m = extractelement <4 x float> %i.l, i64 0   ; 2 uses
  %i.n = fmul float %i.m, 1.500000e+00
  %i.o = fmul float %i.k, 5.000000e-01
  %i.p = fmul float %i.m, %i.o
  %foldExtExtBinop = fmul <4 x float> %i.l, %i.l
  %i.q = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.r = fmul float %i.q, %i.p
  %i.s = fsub float %i.n, %i.r
  %i.t = insertelement <4 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fmul <4 x float> %i.e, %i.u              ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.w = fcmp uge <4 x float> %i.v, splat (float f0xFF7FFFFF)
  %i.x = fcmp ole <4 x float> %i.v, splat (float f0x7F7FFFFF)
  %i.y = and <4 x i1> %i.w, %i.x
  %i.z = bitcast <4 x i1> %i.y to i4
  %i.aa = and i4 %i.z, 7
  %i.ab = icmp eq i4 %i.aa, 7
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.v, <4 x i32> <i32 0, i32 6, i32 poison, i32 3>
  %i.ad = fneg <4 x float> %i.v
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.ah = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.af, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.aj = fmul <4 x float> %i.ag, %i.ag           ; 3 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.am = fadd <4 x float> %i.aj, %i.ak
  %i.an = fadd <4 x float> %i.al, %i.am
  %i.ao = extractelement <4 x float> %i.an, i64 0
  %i.ap = fmul <4 x float> %i.ai, %i.ai           ; 3 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.as = fadd <4 x float> %i.ap, %i.aq
  %i.at = fadd <4 x float> %i.ar, %i.as
  %i.au = extractelement <4 x float> %i.at, i64 0
  %i.av = fcmp ogt float %i.ao, %i.au
  %i.aw = select i1 %i.av, <4 x i1> splat (i1 true), <4 x i1> zeroinitializer
  %.v = select <4 x i1> %i.aw, <4 x float> %i.ag, <4 x float> %i.ai ; 3 uses
  %i.ax = fmul <4 x float> %.v, %.v               ; 3 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ba = fadd <4 x float> %i.ax, %i.ay
  %i.bb = fadd <4 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = extractelement <4 x float> %i.bb, i64 0
  %i.bd = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bb) ; 3 uses
  %i.be = extractelement <4 x float> %i.bd, i64 0 ; 2 uses
  %i.bf = fmul float %i.be, 1.500000e+00
  %i.bg = fmul float %i.bc, 5.000000e-01
  %i.bh = fmul float %i.bg, %i.be
  %foldExtExtBinop85 = fmul <4 x float> %i.bd, %i.bd
  %i.bi = extractelement <4 x float> %foldExtExtBinop85, i64 0
  %i.bj = fmul float %i.bh, %i.bi
  %i.bk = fsub float %i.bf, %i.bj
  %i.bl = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZNK6embree4sse215LineSegmentsISA13vlinearBoundsEmRKNS_4BBoxIfEE:bb.a
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
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !326
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !326
  %i.al = mul i64 %i.ak, %2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !326 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aq = load ptr, ptr %i.ap, align 16, !noalias !327 ; 3 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ag ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !327 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !327 ; 2 uses
  %i.av = mul i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !noalias !326 ; 3 uses
  %i.ay = add i32 %i.an, 1
  %i.az = zext i32 %i.ay to i64                   ; 5 uses
  %i.ba = mul i64 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !326 ; 3 uses
  %i.bd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ax, <4 x float> %i.bc)
  %i.be = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ax, <4 x float> %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.bg = load float, ptr %i.bf, align 4, !noalias !328 ; 2 uses
  %i.bh = sext i32 %i.z to i64
  %i.bi = getelementptr [56 x i8], ptr %i.aq, i64 %i.bh ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !329 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !329 ; 2 uses
  %i.bm = mul i64 %i.bl, %i.ao
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !noalias !330 ; 3 uses
  %i.bp = mul i64 %i.bl, %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %i.br = load <4 x float>, ptr %i.bq, align 16, !noalias !330 ; 3 uses
  %i.bs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bo, <4 x float> %i.br)
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bo, <4 x float> %i.br)
  %i.bu = shufflevector <4 x float> %i.ax, <4 x float> %i.bo, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bc, <4 x float> %i.br, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.bw = fcmp olt <2 x float> %i.bu, %i.bv
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.bu
  %i.by = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bx           ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cc = fsub <4 x float> %i.bd, %i.cb           ; 3 uses
  %i.cd = fadd <4 x float> %i.be, %i.cb           ; 3 uses
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cf = fsub <4 x float> %i.bs, %i.ce           ; 3 uses
  %i.cg = fadd <4 x float> %i.bt, %i.ce           ; 3 uses
  %i.ch = sub nsw i32 %i.af, %i.ab
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cj = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.x, i64 1
  %i.cl = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.r, i64 1
  %i.cn = fsub <2 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = fcmp ogt <2 x float> %i.cn, zeroinitializer
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.cn, <2 x float> zeroinitializer ; 3 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cs = fmul <4 x float> %i.cr, %i.cf
  %i.ct = fsub <2 x float> splat (float 1.000000e+00), %i.cq ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <4 x float> %i.cu, %i.cc
  %i.cw = fadd <4 x float> %i.cv, %i.cs
  %i.cx = fmul <4 x float> %i.cr, %i.cg
  %i.cy = fmul <4 x float> %i.cu, %i.cd
  %i.cz = fadd <4 x float> %i.cy, %i.cx
  store <4 x float> %i.cw, ptr %0, align 16
  store <4 x float> %i.cz, ptr %i.co, align 16
  %i.da = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.db = fmul <4 x float> %i.da, %i.cc
  %i.dc = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dd = fmul <4 x float> %i.dc, %i.cf
  %i.de = fadd <4 x float> %i.db, %i.dd
  %i.df = fmul <4 x float> %i.da, %i.cd
  %i.dg = fmul <4 x float> %i.dc, %i.cg
  %i.dh = fadd <4 x float> %i.df, %i.dg
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.c:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !331 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !331 ; 2 uses
  %i.dm = mul i64 %i.dl, %i.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.do = load <4 x float>, ptr %i.dn, align 16, !noalias !332 ; 3 uses
  %i.dp = mul i64 %i.dl, %i.az
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dp
  %i.dr = load <4 x float>, ptr %i.dq, align 16, !noalias !332 ; 3 uses
  %i.ds = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.do, <4 x float> %i.dr)
  %i.dt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.do, <4 x float> %i.dr)
  %i.du = getelementptr i8, ptr %i.bi, i64 -56
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !333 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.bi, i64 -40
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !333 ; 2 uses
  %i.dy = mul i64 %i.dx, %i.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !noalias !334 ; 3 uses
  %i.eb = mul i64 %i.dx, %i.az
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !noalias !334 ; 3 uses
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.eg = shufflevector <4 x float> %i.do, <4 x float> %i.ea, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dr, <4 x float> %i.ed, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ei = fcmp olt <2 x float> %i.eg, %i.eh
  %i.ej = select <2 x i1> %i.ei, <2 x float> %i.eh, <2 x float> %i.eg
  %i.ek = fmul <2 x float> %i.bz, %i.ej           ; 2 uses
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.em = fsub <4 x float> %i.ds, %i.el
  %i.en = fadd <4 x float> %i.dt, %i.el
  %i.eo = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ep = fsub <4 x float> %i.ee, %i.eo
  %i.eq = fadd <4 x float> %i.ef, %i.eo
  %i.er = insertelement <2 x float> poison, float %i.p, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.x, i64 1
  %i.et = insertelement <2 x float> poison, float %i.v, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.r, i64 1
  %i.ev = fsub <2 x float> %i.es, %i.eu           ; 2 uses
  %i.ew = fcmp ogt <2 x float> %i.ev, zeroinitializer
  %i.ex = select <2 x i1> %i.ew, <2 x float> %i.ev, <2 x float> zeroinitializer ; 3 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul <4 x float> %i.ey, %i.em
  %i.fa = fsub <2 x float> splat (float 1.000000e+00), %i.ex ; 2 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <4 x float> %i.fb, %i.cc
  %i.fd = fadd <4 x float> %i.fc, %i.ez           ; 2 uses
  %i.fe = fmul <4 x float> %i.ey, %i.en
  %i.ff = fmul <4 x float> %i.fb, %i.cd
  %i.fg = fadd <4 x float> %i.ff, %i.fe           ; 2 uses
  %i.fh = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fi = fmul <4 x float> %i.fh, %i.ep
  %i.fj = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fk = fmul <4 x float> %i.fj, %i.cf
  %i.fl = fadd <4 x float> %i.fk, %i.fi           ; 2 uses
  %i.fm = fmul <4 x float> %i.fh, %i.eq
  %i.fn = fmul <4 x float> %i.fj, %i.cg
  %i.fo = fadd <4 x float> %i.fn, %i.fm           ; 2 uses
  %.0.i127 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.fp = icmp slt i32 %.0.i127, %i.af
  br i1 %i.fp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.fq = fsub float %i.q, %i.o
  %i.fr = zext nneg i32 %.0.i127 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.741.0.lcssa = phi <4 x float> [ %i.fg, %bb.c ], [ %i.hg, %bb.d ]
  %.sroa.038.0.lcssa = phi <4 x float> [ %i.fd, %bb.c ], [ %i.he, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.fo, %bb.c ], [ %i.hh, %bb.d ]
  %.sroa.033.0.lcssa = phi <4 x float> [ %i.fl, %bb.c ], [ %i.hf, %bb.d ]
  store <4 x float> %.sroa.038.0.lcssa, ptr %0, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.741.0.lcssa, ptr %i.fs, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.fr, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.033.0131 = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.hf, %bb.d ] ; 2 uses
  %.sroa.7.0130 = phi <4 x float> [ %i.fo, %.lr.ph ], [ %i.hh, %bb.d ] ; 2 uses
  %.sroa.038.0129 = phi <4 x float> [ %i.fd, %.lr.ph ], [ %i.he, %bb.d ] ; 2 uses
  %.sroa.741.0128 = phi <4 x float> [ %i.fg, %.lr.ph ], [ %i.hg, %bb.d ] ; 2 uses
  %i.ft = trunc nsw i64 %indvars.iv to i32
  %4 = uitofp nneg i32 %i.ft to float
  %i.fu = fdiv float %4, %i.c
  %i.fv = fsub float %i.fu, %i.o
  %i.fw = fdiv float %i.fv, %i.fq                 ; 2 uses
  %i.fx = fsub float 1.000000e+00, %i.fw
  %i.fy = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <4 x float> %.sroa.033.0131, %i.fz
  %i.gb = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gd = fmul <4 x float> %.sroa.038.0129, %i.gc
  %i.ge = fadd <4 x float> %i.ga, %i.gd
  %i.gf = fmul <4 x float> %.sroa.7.0130, %i.fz
  %i.gg = fmul <4 x float> %.sroa.741.0128, %i.gc
  %i.gh = fadd <4 x float> %i.gf, %i.gg
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !335 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !335 ; 2 uses
  %i.gm = mul i64 %i.gl, %i.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gm
  %i.go = load <4 x float>, ptr %i.gn, align 16, !noalias !336 ; 3 uses
  %i.gp = mul i64 %i.gl, %i.az
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gp
  %i.gr = load <4 x float>, ptr %i.gq, align 16, !noalias !336 ; 3 uses
  %i.gs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.go, <4 x float> %i.gr)
  %i.gt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.go, <4 x float> %i.gr)
  %.sroa.02.12.vec.extract.i11 = extractelement <4 x float> %i.go, i64 3 ; 2 uses
  %.sroa.0.12.vec.extract.i12 = extractelement <4 x float> %i.gr, i64 3 ; 2 uses
  %i.gu = fcmp olt float %.sroa.02.12.vec.extract.i11, %.sroa.0.12.vec.extract.i12
  %i.gv = select i1 %i.gu, float %.sroa.0.12.vec.extract.i12, float %.sroa.02.12.vec.extract.i11
  %.scalar.i13 = fmul float %i.bg, %i.gv
  %i.gw = insertelement <4 x float> poison, float %.scalar.i13, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fsub <4 x float> %i.gs, %i.gx
  %i.gz = fadd <4 x float> %i.gt, %i.gx
  %i.ha = fsub <4 x float> %i.gy, %i.ge
  %i.hb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ha, <4 x float> zeroinitializer) ; 2 uses
  %i.hc = fsub <4 x float> %i.gz, %i.gh
  %i.hd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hc, <4 x float> zeroinitializer) ; 2 uses
  %i.he = fadd <4 x float> %.sroa.038.0129, %i.hb ; 2 uses
  %i.hf = fadd <4 x float> %.sroa.033.0131, %i.hb ; 2 uses
  %i.hg = fadd <4 x float> %.sroa.741.0128, %i.hd ; 2 uses
  %i.hh = fadd <4 x float> %.sroa.7.0130, %i.hd   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !9

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink144 = phi <4 x float> [ %i.de, %bb.b ], [ %.sroa.033.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.dh, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink144, ptr %i.hi, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.hj, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse215LineSegmentsISA13vlinearBoundsERKNS_12LinearSpace3INS_6Vec3faEEEmRKNS_4BBoxIfEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(416) %1, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load float, ptr %i.b, align 8, !noalias !384 ; 6 uses
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
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !385
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !385
  %i.al = mul i64 %i.ak, %3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !385 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aq = load ptr, ptr %i.ap, align 16, !noalias !386 ; 3 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ag ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !386 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !386 ; 2 uses
  %i.av = mul i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !noalias !385 ; 5 uses
  %i.ay = add i32 %i.an, 1
  %i.az = zext i32 %i.ay to i64                   ; 5 uses
  %i.ba = mul i64 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !385 ; 5 uses
  %i.bd = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.be = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !387 ; 10 uses
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = load <4 x float>, ptr %i.bf, align 16, !noalias !388 ; 10 uses
  %i.bl = fmul <4 x float> %i.be, %i.bk
  %i.bm = fadd <4 x float> %i.bj, %i.bl
  %i.bn = load <4 x float>, ptr %2, align 16, !noalias !389 ; 10 uses
  %i.bo = fmul <4 x float> %i.bd, %i.bn
  %i.bp = fadd <4 x float> %i.bo, %i.bm
  %.uncasted.i = shufflevector <4 x float> %i.bp, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.br = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bs = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bt = fmul <4 x float> %i.bs, %i.bi
  %i.bu = fmul <4 x float> %i.br, %i.bk
  %i.bv = fadd <4 x float> %i.bt, %i.bu
  %i.bw = fmul <4 x float> %i.bq, %i.bn
  %i.bx = fadd <4 x float> %i.bw, %i.bv
  %.uncasted51.i = shufflevector <4 x float> %i.bx, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.by = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.uncasted.i, <4 x float> %.uncasted51.i)
  %i.bz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.uncasted.i, <4 x float> %.uncasted51.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.cb = load float, ptr %i.ca, align 4, !noalias !390 ; 2 uses
  %i.cc = sext i32 %i.z to i64
  %i.cd = getelementptr [56 x i8], ptr %i.aq, i64 %i.cc ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !391 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !391 ; 2 uses
  %i.ch = mul i64 %i.cg, %i.ao
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !noalias !392 ; 5 uses
  %i.ck = mul i64 %i.cg, %i.az
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ck
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !392 ; 5 uses
  %i.cn = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.co = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.cq = fmul <4 x float> %i.bi, %i.cp
  %i.cr = fmul <4 x float> %i.bk, %i.co
  %i.cs = fadd <4 x float> %i.cq, %i.cr
  %i.ct = fmul <4 x float> %i.bn, %i.cn
  %i.cu = fadd <4 x float> %i.ct, %i.cs
  %.uncasted.i3 = shufflevector <4 x float> %i.cu, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cv = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cx = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.cy = fmul <4 x float> %i.bi, %i.cx
  %i.cz = fmul <4 x float> %i.bk, %i.cw
  %i.da = fadd <4 x float> %i.cy, %i.cz
  %i.db = fmul <4 x float> %i.bn, %i.cv
  %i.dc = fadd <4 x float> %i.db, %i.da
  %.uncasted51.i4 = shufflevector <4 x float> %i.dc, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.uncasted.i3, <4 x float> %.uncasted51.i4)
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.uncasted.i3, <4 x float> %.uncasted51.i4)
  %i.df = shufflevector <4 x float> %i.ax, <4 x float> %i.cj, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.bc, <4 x float> %i.cm, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dh = fcmp olt <2 x float> %i.df, %i.dg
  %i.di = select <2 x i1> %i.dh, <2 x float> %i.dg, <2 x float> %i.df
  %i.dj = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul <2 x float> %i.di, %i.dk           ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dn = fsub <4 x float> %i.by, %i.dm           ; 3 uses
  %i.do = fadd <4 x float> %i.bz, %i.dm           ; 3 uses
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dq = fsub <4 x float> %i.dd, %i.dp           ; 3 uses
  %i.dr = fadd <4 x float> %i.de, %i.dp           ; 3 uses
  %i.ds = sub nsw i32 %i.af, %i.ab
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.du = insertelement <2 x float> poison, float %i.p, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.x, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.r, i64 1
  %i.dy = fsub <2 x float> %i.dv, %i.dx           ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = fcmp ogt <2 x float> %i.dy, zeroinitializer
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.dy, <2 x float> zeroinitializer ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <4 x float> %i.ec, %i.dq
  %i.ee = fsub <2 x float> splat (float 1.000000e+00), %i.eb ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eg = fmul <4 x float> %i.ef, %i.dn
  %i.eh = fadd <4 x float> %i.eg, %i.ed
  %i.ei = fmul <4 x float> %i.ec, %i.dr
  %i.ej = fmul <4 x float> %i.ef, %i.do
  %i.ek = fadd <4 x float> %i.ej, %i.ei
  store <4 x float> %i.eh, ptr %0, align 16
  store <4 x float> %i.ek, ptr %i.dz, align 16
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.em = fmul <4 x float> %i.el, %i.dn
  %i.en = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eo = fmul <4 x float> %i.en, %i.dq
  %i.ep = fadd <4 x float> %i.em, %i.eo
  %i.eq = fmul <4 x float> %i.el, %i.do
  %i.er = fmul <4 x float> %i.en, %i.dr
  %i.es = fadd <4 x float> %i.eq, %i.er
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit

bb.c:                                             ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !393 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !393 ; 2 uses
  %i.ex = mul i64 %i.ew, %i.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.ez = load <4 x float>, ptr %i.ey, align 16, !noalias !394 ; 5 uses
  %i.fa = mul i64 %i.ew, %i.az
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fa
  %i.fc = load <4 x float>, ptr %i.fb, align 16, !noalias !394 ; 5 uses
  %i.fd = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.fe = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ff = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.fg = fmul <4 x float> %i.bi, %i.ff
  %i.fh = fmul <4 x float> %i.bk, %i.fe
  %i.fi = fadd <4 x float> %i.fg, %i.fh
  %i.fj = fmul <4 x float> %i.bn, %i.fd
  %i.fk = fadd <4 x float> %i.fj, %i.fi
  %.uncasted.i8 = shufflevector <4 x float> %i.fk, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fl = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.fo = fmul <4 x float> %i.bi, %i.fn
  %i.fp = fmul <4 x float> %i.bk, %i.fm
  %i.fq = fadd <4 x float> %i.fo, %i.fp
  %i.fr = fmul <4 x float> %i.bn, %i.fl
  %i.fs = fadd <4 x float> %i.fr, %i.fq
  %.uncasted51.i9 = shufflevector <4 x float> %i.fs, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.uncasted.i8, <4 x float> %.uncasted51.i9)
  %i.fu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.uncasted.i8, <4 x float> %.uncasted51.i9)
  %i.fv = getelementptr i8, ptr %i.cd, i64 -56
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !395 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.cd, i64 -40
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !395 ; 2 uses
  %i.fz = mul i64 %i.fy, %i.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fz
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !noalias !396 ; 5 uses
  %i.gc = mul i64 %i.fy, %i.az
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gc
  %i.ge = load <4 x float>, ptr %i.gd, align 16, !noalias !396 ; 5 uses
  %i.gf = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.gi = fmul <4 x float> %i.bi, %i.gh
  %i.gj = fmul <4 x float> %i.bk, %i.gg
  %i.gk = fadd <4 x float> %i.gi, %i.gj
  %i.gl = fmul <4 x float> %i.bn, %i.gf
  %i.gm = fadd <4 x float> %i.gl, %i.gk
  %.uncasted.i13 = shufflevector <4 x float> %i.gm, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.gn = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.go = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gp = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.gq = fmul <4 x float> %i.bi, %i.gp
  %i.gr = fmul <4 x float> %i.bk, %i.go
  %i.gs = fadd <4 x float> %i.gq, %i.gr
  %i.gt = fmul <4 x float> %i.bn, %i.gn
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  %.uncasted51.i14 = shufflevector <4 x float> %i.gu, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.gv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.uncasted.i13, <4 x float> %.uncasted51.i14)
  %i.gw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.uncasted.i13, <4 x float> %.uncasted51.i14)
  %i.gx = shufflevector <4 x float> %i.ez, <4 x float> %i.gb, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gy = shufflevector <4 x float> %i.fc, <4 x float> %i.ge, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gz = fcmp olt <2 x float> %i.gx, %i.gy
  %i.ha = select <2 x i1> %i.gz, <2 x float> %i.gy, <2 x float> %i.gx
  %i.hb = fmul <2 x float> %i.dk, %i.ha           ; 2 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hd = fsub <4 x float> %i.ft, %i.hc
  %i.he = fadd <4 x float> %i.fu, %i.hc
  %i.hf = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hg = fsub <4 x float> %i.gv, %i.hf
  %i.hh = fadd <4 x float> %i.gw, %i.hf
  %i.hi = insertelement <2 x float> poison, float %i.p, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.x, i64 1
  %i.hk = insertelement <2 x float> poison, float %i.v, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.r, i64 1
  %i.hm = fsub <2 x float> %i.hj, %i.hl           ; 2 uses
  %i.hn = fcmp ogt <2 x float> %i.hm, zeroinitializer
  %i.ho = select <2 x i1> %i.hn, <2 x float> %i.hm, <2 x float> zeroinitializer ; 3 uses
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <4 x float> %i.hp, %i.hd
  %i.hr = fsub <2 x float> splat (float 1.000000e+00), %i.ho ; 2 uses
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <4 x float> %i.hs, %i.dn
  %i.hu = fadd <4 x float> %i.ht, %i.hq           ; 2 uses
  %i.hv = fmul <4 x float> %i.hp, %i.he
  %i.hw = fmul <4 x float> %i.hs, %i.do
  %i.hx = fadd <4 x float> %i.hw, %i.hv           ; 2 uses
  %i.hy = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hz = fmul <4 x float> %i.hy, %i.hg
  %i.ia = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ib = fmul <4 x float> %i.ia, %i.dq
  %i.ic = fadd <4 x float> %i.ib, %i.hz           ; 2 uses
  %i.id = fmul <4 x float> %i.hy, %i.hh
  %i.ie = fmul <4 x float> %i.ia, %i.dr
  %i.if = fadd <4 x float> %i.ie, %i.id           ; 2 uses
  %.0.i140 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.ig = icmp slt i32 %.0.i140, %i.af
  br i1 %i.ig, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ih = fsub float %i.q, %i.o
  %i.ii = zext nneg i32 %.0.i140 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.754.0.lcssa = phi <4 x float> [ %i.hx, %bb.c ], [ %i.kn, %bb.d ]
  %.sroa.051.0.lcssa = phi <4 x float> [ %i.hu, %bb.c ], [ %i.kl, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.if, %bb.c ], [ %i.ko, %bb.d ]
  %.sroa.046.0.lcssa = phi <4 x float> [ %i.ic, %bb.c ], [ %i.km, %bb.d ]
  store <4 x float> %.sroa.051.0.lcssa, ptr %0, align 16
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.754.0.lcssa, ptr %i.ij, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.ii, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.046.0144 = phi <4 x float> [ %i.ic, %.lr.ph ], [ %i.km, %bb.d ] ; 2 uses
  %.sroa.7.0143 = phi <4 x float> [ %i.if, %.lr.ph ], [ %i.ko, %bb.d ] ; 2 uses
  %.sroa.051.0142 = phi <4 x float> [ %i.hu, %.lr.ph ], [ %i.kl, %bb.d ] ; 2 uses
  %.sroa.754.0141 = phi <4 x float> [ %i.hx, %.lr.ph ], [ %i.kn, %bb.d ] ; 2 uses
  %i.ik = trunc nsw i64 %indvars.iv to i32
  %5 = uitofp nneg i32 %i.ik to float
  %i.il = fdiv float %5, %i.c
  %i.im = fsub float %i.il, %i.o
  %i.in = fdiv float %i.im, %i.ih                 ; 2 uses
  %i.io = fsub float 1.000000e+00, %i.in
  %i.ip = insertelement <4 x float> poison, float %i.in, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ir = fmul <4 x float> %.sroa.046.0144, %i.iq
  %i.is = insertelement <4 x float> poison, float %i.io, i64 0
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iu = fmul <4 x float> %.sroa.051.0142, %i.it
  %i.iv = fadd <4 x float> %i.ir, %i.iu
  %i.iw = fmul <4 x float> %.sroa.7.0143, %i.iq
  %i.ix = fmul <4 x float> %.sroa.754.0141, %i.it
  %i.iy = fadd <4 x float> %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !397 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !397 ; 2 uses
  %i.jd = mul i64 %i.jc, %i.ao
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jd
  %i.jf = load <4 x float>, ptr %i.je, align 16, !noalias !398 ; 5 uses
  %i.jg = mul i64 %i.jc, %i.az
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jg
  %i.ji = load <4 x float>, ptr %i.jh, align 16, !noalias !398 ; 5 uses
  %i.jj = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.jk = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.jl = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.jm = fmul <4 x float> %i.bi, %i.jl
  %i.jn = fmul <4 x float> %i.bk, %i.jk
  %i.jo = fadd <4 x float> %i.jm, %i.jn
  %i.jp = fmul <4 x float> %i.bn, %i.jj
  %i.jq = fadd <4 x float> %i.jp, %i.jo
  %.uncasted.i18 = shufflevector <4 x float> %i.jq, <4 x float> %i.jf, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.jr = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.js = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.jt = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.ju = fmul <4 x float> %i.bi, %i.jt
  %i.jv = fmul <4 x float> %i.bk, %i.js
  %i.jw = fadd <4 x float> %i.ju, %i.jv
  %i.jx = fmul <4 x float> %i.bn, %i.jr
  %i.jy = fadd <4 x float> %i.jx, %i.jw
  %.uncasted51.i19 = shufflevector <4 x float> %i.jy, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.uncasted.i18, <4 x float> %.uncasted51.i19)
  %i.ka = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.uncasted.i18, <4 x float> %.uncasted51.i19)
  %.sroa.06.12.vec.extract.i20 = extractelement <4 x float> %i.jf, i64 3 ; 2 uses
  %.sroa.02.12.vec.extract.i21 = extractelement <4 x float> %i.ji, i64 3 ; 2 uses
  %i.kb = fcmp olt float %.sroa.06.12.vec.extract.i20, %.sroa.02.12.vec.extract.i21
  %i.kc = select i1 %i.kb, float %.sroa.02.12.vec.extract.i21, float %.sroa.06.12.vec.extract.i20
  %.scalar.i22 = fmul float %i.cb, %i.kc
  %i.kd = insertelement <4 x float> poison, float %.scalar.i22, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kf = fsub <4 x float> %i.jz, %i.ke
  %i.kg = fadd <4 x float> %i.ka, %i.ke
  %i.kh = fsub <4 x float> %i.kf, %i.iv
  %i.ki = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kh, <4 x float> zeroinitializer) ; 2 uses
  %i.kj = fsub <4 x float> %i.kg, %i.iy
  %i.kk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> zeroinitializer) ; 2 uses
  %i.kl = fadd <4 x float> %.sroa.051.0142, %i.ki ; 2 uses
  %i.km = fadd <4 x float> %.sroa.046.0144, %i.ki ; 2 uses
  %i.kn = fadd <4 x float> %.sroa.754.0141, %i.kk ; 2 uses
  %i.ko = fadd <4 x float> %.sroa.7.0143, %i.kk   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !383

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SC_SC_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink157 = phi <4 x float> [ %i.ep, %bb.b ], [ %.sroa.046.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.es, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink157, ptr %i.kp, align 16
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.kq, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse215LineSegmentsISA13vlinearBoundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS2_EEmRKNS_4BBoxIfEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(416) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, float noundef %3, float noundef %4, ptr noundef nonnull align 16 dereferenceable(48) %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load float, ptr %i.b, align 8, !noalias !446 ; 6 uses
  %i.d = load float, ptr %i.a, align 4            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load float, ptr %i.e, align 16
  %i.g = fsub float %i.f, %i.d
  %i.h = load <2 x float>, ptr %7, align 4
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
  %i.ah = fmul float %3, %4                       ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !447
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !noalias !447
  %i.am = mul i64 %i.al, %6
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !noalias !447 ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ar = load ptr, ptr %i.aq, align 16, !noalias !448 ; 3 uses
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %i.ag ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !noalias !448 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !448 ; 2 uses
  %i.aw = mul i64 %i.av, %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !noalias !447 ; 2 uses
  %i.az = add i32 %i.ao, 1
  %i.ba = zext i32 %i.az to i64                   ; 5 uses
  %i.bb = mul i64 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bb
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !noalias !447 ; 2 uses
  %i.be = load <4 x float>, ptr %2, align 16, !noalias !449 ; 10 uses
  %i.bf = fsub <4 x float> %i.ay, %i.be
  %i.bg = insertelement <4 x float> poison, float %3, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.bi = fmul <4 x float> %i.bh, %i.bf           ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !noalias !450 ; 10 uses
  %i.bp = fmul <4 x float> %i.bo, %i.bm
  %i.bq = load <4 x float>, ptr %i.bl, align 16, !noalias !451 ; 10 uses
  %i.br = fmul <4 x float> %i.bq, %i.bk
  %i.bs = fadd <4 x float> %i.br, %i.bp
  %i.bt = load <4 x float>, ptr %5, align 16, !noalias !452 ; 10 uses
  %i.bu = fmul <4 x float> %i.bj, %i.bt
  %i.bv = fadd <4 x float> %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.bx = load float, ptr %i.bw, align 4, !noalias !447 ; 14 uses
  %.sroa.015.12.vec.extract.i = extractelement <4 x float> %i.ay, i64 3
  %i.by = fmul float %.sroa.015.12.vec.extract.i, %i.bx
  %i.bz = fmul float %i.ah, %i.by                 ; 3 uses
  %i.ca = insertelement <4 x float> %i.bv, float %i.bz, i64 3 ; 2 uses
  %i.cb = fsub <4 x float> %i.bd, %i.be
  %i.cc = fmul <4 x float> %i.bh, %i.cb           ; 3 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cf = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.cg = fmul <4 x float> %i.bo, %i.cf
  %i.ch = fmul <4 x float> %i.bq, %i.ce
  %i.ci = fadd <4 x float> %i.ch, %i.cg
  %i.cj = fmul <4 x float> %i.cd, %i.bt
  %i.ck = fadd <4 x float> %i.cj, %i.ci
  %.sroa.014.12.vec.extract.i = extractelement <4 x float> %i.bd, i64 3
  %i.cl = fmul float %.sroa.014.12.vec.extract.i, %i.bx
  %i.cm = fmul float %i.ah, %i.cl                 ; 3 uses
  %i.cn = insertelement <4 x float> %i.ck, float %i.cm, i64 3 ; 2 uses
  %i.co = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ca, <4 x float> %i.cn)
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ca, <4 x float> %i.cn)
  %i.cq = fcmp olt float %i.bz, %i.cm
  %i.cr = select i1 %i.cq, float %i.cm, float %i.bz
  %.scalar.i = fmul float %i.bx, %i.cr
  %i.cs = insertelement <4 x float> poison, float %.scalar.i, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = fsub <4 x float> %i.co, %i.ct           ; 3 uses
  %i.cv = fadd <4 x float> %i.cp, %i.ct           ; 3 uses
  %i.cw = sext i32 %i.z to i64
  %i.cx = getelementptr [56 x i8], ptr %i.ar, i64 %i.cw ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !453 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !453 ; 2 uses
  %i.db = mul i64 %i.da, %i.ap
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !noalias !454 ; 2 uses
  %i.de = mul i64 %i.da, %i.ba
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.de
  %i.dg = load <4 x float>, ptr %i.df, align 16, !noalias !454 ; 2 uses
  %i.dh = fsub <4 x float> %i.dd, %i.be
  %i.di = fmul <4 x float> %i.bh, %i.dh           ; 3 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.dl = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.dm = fmul <4 x float> %i.bo, %i.dl
  %i.dn = fmul <4 x float> %i.bq, %i.dk
end_hunk_2
begin_hunk_3_@_ZNK6embree4sse215LineSegmentsISA13vlinearBoundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS2_EEmRKNS_4BBoxIfEE:bb.a
  %i.ea = fmul <4 x float> %i.bq, %i.dx
  %i.eb = fadd <4 x float> %i.ea, %i.dz
  %i.ec = fmul <4 x float> %i.bt, %i.dw
  %i.ed = fadd <4 x float> %i.ec, %i.eb
  %.sroa.014.12.vec.extract.i7 = extractelement <4 x float> %i.dg, i64 3
  %i.ee = fmul float %i.bx, %.sroa.014.12.vec.extract.i7
  %i.ef = fmul float %i.ah, %i.ee                 ; 3 uses
  %i.eg = insertelement <4 x float> %i.ed, float %i.ef, i64 3 ; 2 uses
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dt, <4 x float> %i.eg)
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dt, <4 x float> %i.eg)
  %i.ej = fcmp olt float %i.ds, %i.ef
  %i.ek = select i1 %i.ej, float %i.ef, float %i.ds
  %.scalar.i8 = fmul float %i.bx, %i.ek
  %i.el = insertelement <4 x float> poison, float %.scalar.i8, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.en = fsub <4 x float> %i.eh, %i.em           ; 3 uses
  %i.eo = fadd <4 x float> %i.ei, %i.em           ; 3 uses
  %i.ep = sub nsw i32 %i.af, %i.ab
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.er = insertelement <2 x float> poison, float %i.p, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.x, i64 1
  %i.et = insertelement <2 x float> poison, float %i.v, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.r, i64 1
  %i.ev = fsub <2 x float> %i.es, %i.eu           ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = fcmp ogt <2 x float> %i.ev, zeroinitializer
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ev, <2 x float> zeroinitializer ; 3 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = fmul <4 x float> %i.ez, %i.en
  %i.fb = fsub <2 x float> splat (float 1.000000e+00), %i.ey ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <4 x float> %i.fc, %i.cu
  %i.fe = fadd <4 x float> %i.fd, %i.fa
  %i.ff = fmul <4 x float> %i.ez, %i.eo
  %i.fg = fmul <4 x float> %i.fc, %i.cv
  %i.fh = fadd <4 x float> %i.fg, %i.ff
  store <4 x float> %i.fe, ptr %0, align 16
  store <4 x float> %i.fh, ptr %i.ew, align 16
  %i.fi = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fj = fmul <4 x float> %i.fi, %i.cu
  %i.fk = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.en
  %i.fm = fadd <4 x float> %i.fj, %i.fl
  %i.fn = fmul <4 x float> %i.fi, %i.cv
  %i.fo = fmul <4 x float> %i.fk, %i.eo
  %i.fp = fadd <4 x float> %i.fn, %i.fo
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKS1_ffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SE_SE_f.exit

bb.c:                                             ; preds = %bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !455 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !455 ; 2 uses
  %i.fu = mul i64 %i.ft, %i.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  %i.fw = load <4 x float>, ptr %i.fv, align 16, !noalias !456 ; 2 uses
  %i.fx = mul i64 %i.ft, %i.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fx
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !456 ; 2 uses
  %i.ga = fsub <4 x float> %i.fw, %i.be
  %i.gb = fmul <4 x float> %i.bh, %i.ga           ; 3 uses
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.gf = fmul <4 x float> %i.bo, %i.ge
  %i.gg = fmul <4 x float> %i.bq, %i.gd
  %i.gh = fadd <4 x float> %i.gg, %i.gf
  %i.gi = fmul <4 x float> %i.bt, %i.gc
  %i.gj = fadd <4 x float> %i.gi, %i.gh
  %.sroa.015.12.vec.extract.i9 = extractelement <4 x float> %i.fw, i64 3
  %i.gk = fmul float %i.bx, %.sroa.015.12.vec.extract.i9
  %i.gl = fmul float %i.ah, %i.gk                 ; 3 uses
  %i.gm = insertelement <4 x float> %i.gj, float %i.gl, i64 3 ; 2 uses
  %i.gn = fsub <4 x float> %i.fz, %i.be
  %i.go = fmul <4 x float> %i.bh, %i.gn           ; 3 uses
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gq = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gr = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.gs = fmul <4 x float> %i.bo, %i.gr
  %i.gt = fmul <4 x float> %i.bq, %i.gq
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  %i.gv = fmul <4 x float> %i.bt, %i.gp
  %i.gw = fadd <4 x float> %i.gv, %i.gu
  %.sroa.014.12.vec.extract.i10 = extractelement <4 x float> %i.fz, i64 3
  %i.gx = fmul float %i.bx, %.sroa.014.12.vec.extract.i10
  %i.gy = fmul float %i.ah, %i.gx                 ; 3 uses
  %i.gz = insertelement <4 x float> %i.gw, float %i.gy, i64 3 ; 2 uses
  %i.ha = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gm, <4 x float> %i.gz)
  %i.hb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gm, <4 x float> %i.gz)
  %i.hc = fcmp olt float %i.gl, %i.gy
  %i.hd = select i1 %i.hc, float %i.gy, float %i.gl
  %.scalar.i11 = fmul float %i.bx, %i.hd
  %i.he = insertelement <4 x float> poison, float %.scalar.i11, i64 0
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hg = fsub <4 x float> %i.ha, %i.hf
  %i.hh = fadd <4 x float> %i.hb, %i.hf
  %i.hi = getelementptr i8, ptr %i.cx, i64 -56
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !457 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.cx, i64 -40
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !457 ; 2 uses
  %i.hm = mul i64 %i.hl, %i.ap
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = load <4 x float>, ptr %i.hn, align 16, !noalias !458 ; 2 uses
  %i.hp = mul i64 %i.hl, %i.ba
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hp
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !noalias !458 ; 2 uses
  %i.hs = fsub <4 x float> %i.ho, %i.be
  %i.ht = fmul <4 x float> %i.bh, %i.hs           ; 3 uses
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hw = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.hx = fmul <4 x float> %i.bo, %i.hw
  %i.hy = fmul <4 x float> %i.bq, %i.hv
  %i.hz = fadd <4 x float> %i.hy, %i.hx
  %i.ia = fmul <4 x float> %i.bt, %i.hu
  %i.ib = fadd <4 x float> %i.ia, %i.hz
  %.sroa.015.12.vec.extract.i12 = extractelement <4 x float> %i.ho, i64 3
  %i.ic = fmul float %i.bx, %.sroa.015.12.vec.extract.i12
  %i.id = fmul float %i.ah, %i.ic                 ; 3 uses
  %i.ie = insertelement <4 x float> %i.ib, float %i.id, i64 3 ; 2 uses
  %i.if = fsub <4 x float> %i.hr, %i.be
  %i.ig = fmul <4 x float> %i.bh, %i.if           ; 3 uses
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ii = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ij = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.ik = fmul <4 x float> %i.bo, %i.ij
  %i.il = fmul <4 x float> %i.bq, %i.ii
  %i.im = fadd <4 x float> %i.il, %i.ik
  %i.in = fmul <4 x float> %i.bt, %i.ih
  %i.io = fadd <4 x float> %i.in, %i.im
  %.sroa.014.12.vec.extract.i13 = extractelement <4 x float> %i.hr, i64 3
  %i.ip = fmul float %i.bx, %.sroa.014.12.vec.extract.i13
  %i.iq = fmul float %i.ah, %i.ip                 ; 3 uses
  %i.ir = insertelement <4 x float> %i.io, float %i.iq, i64 3 ; 2 uses
  %i.is = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ie, <4 x float> %i.ir)
  %i.it = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ie, <4 x float> %i.ir)
  %i.iu = fcmp olt float %i.id, %i.iq
  %i.iv = select i1 %i.iu, float %i.iq, float %i.id
  %.scalar.i14 = fmul float %i.bx, %i.iv
  %i.iw = insertelement <4 x float> poison, float %.scalar.i14, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iy = fsub <4 x float> %i.is, %i.ix
  %i.iz = fadd <4 x float> %i.it, %i.ix
  %i.ja = insertelement <2 x float> poison, float %i.p, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.x, i64 1
  %i.jc = insertelement <2 x float> poison, float %i.v, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.r, i64 1
  %i.je = fsub <2 x float> %i.jb, %i.jd           ; 2 uses
  %i.jf = fcmp ogt <2 x float> %i.je, zeroinitializer
  %i.jg = select <2 x i1> %i.jf, <2 x float> %i.je, <2 x float> zeroinitializer ; 3 uses
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = fmul <4 x float> %i.jh, %i.hg
  %i.jj = fsub <2 x float> splat (float 1.000000e+00), %i.jg ; 2 uses
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul <4 x float> %i.jk, %i.cu
  %i.jm = fadd <4 x float> %i.jl, %i.ji           ; 2 uses
  %i.jn = fmul <4 x float> %i.jh, %i.hh
  %i.jo = fmul <4 x float> %i.jk, %i.cv
  %i.jp = fadd <4 x float> %i.jo, %i.jn           ; 2 uses
  %i.jq = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jr = fmul <4 x float> %i.jq, %i.iy
  %i.js = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jt = fmul <4 x float> %i.js, %i.en
  %i.ju = fadd <4 x float> %i.jt, %i.jr           ; 2 uses
  %i.jv = fmul <4 x float> %i.jq, %i.iz
  %i.jw = fmul <4 x float> %i.js, %i.eo
  %i.jx = fadd <4 x float> %i.jw, %i.jv           ; 2 uses
  %.0.i156 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.jy = icmp slt i32 %.0.i156, %i.af
  br i1 %i.jy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.jz = fsub float %i.q, %i.o
  %i.ka = zext nneg i32 %.0.i156 to i64
  %i.kb = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.761.0.lcssa = phi <4 x float> [ %i.jp, %bb.c ], [ %i.mv, %bb.d ]
  %.sroa.058.0.lcssa = phi <4 x float> [ %i.jm, %bb.c ], [ %i.mt, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.jx, %bb.c ], [ %i.mw, %bb.d ]
  %.sroa.053.0.lcssa = phi <4 x float> [ %i.ju, %bb.c ], [ %i.mu, %bb.d ]
  store <4 x float> %.sroa.058.0.lcssa, ptr %0, align 16
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.761.0.lcssa, ptr %i.kf, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKS1_ffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SE_SE_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.ka, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.053.0160 = phi <4 x float> [ %i.ju, %.lr.ph ], [ %i.mu, %bb.d ] ; 2 uses
  %.sroa.7.0159 = phi <4 x float> [ %i.jx, %.lr.ph ], [ %i.mw, %bb.d ] ; 2 uses
  %.sroa.058.0158 = phi <4 x float> [ %i.jm, %.lr.ph ], [ %i.mt, %bb.d ] ; 2 uses
  %.sroa.761.0157 = phi <4 x float> [ %i.jp, %.lr.ph ], [ %i.mv, %bb.d ] ; 2 uses
  %i.kg = trunc nsw i64 %indvars.iv to i32
  %8 = uitofp nneg i32 %i.kg to float
  %i.kh = fdiv float %8, %i.c
  %i.ki = fsub float %i.kh, %i.o
  %i.kj = fdiv float %i.ki, %i.jz                 ; 2 uses
  %i.kk = fsub float 1.000000e+00, %i.kj
  %i.kl = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kn = fmul <4 x float> %.sroa.053.0160, %i.km
  %i.ko = insertelement <4 x float> poison, float %i.kk, i64 0
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kq = fmul <4 x float> %.sroa.058.0158, %i.kp
  %i.kr = fadd <4 x float> %i.kn, %i.kq
  %i.ks = fmul <4 x float> %.sroa.7.0159, %i.km
  %i.kt = fmul <4 x float> %.sroa.761.0157, %i.kp
  %i.ku = fadd <4 x float> %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !459 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !459 ; 2 uses
  %i.kz = mul i64 %i.ky, %i.ap
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kz
  %i.lb = load <4 x float>, ptr %i.la, align 16, !noalias !460 ; 2 uses
  %i.lc = mul i64 %i.ky, %i.ba
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lc
  %i.le = load <4 x float>, ptr %i.ld, align 16, !noalias !460 ; 2 uses
  %i.lf = fsub <4 x float> %i.lb, %i.be
  %i.lg = fmul <4 x float> %i.bh, %i.lf           ; 3 uses
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.li = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.lj = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.lk = fmul <4 x float> %i.bo, %i.lj
  %i.ll = fmul <4 x float> %i.bq, %i.li
  %i.lm = fadd <4 x float> %i.ll, %i.lk
  %i.ln = fmul <4 x float> %i.bt, %i.lh
  %i.lo = fadd <4 x float> %i.ln, %i.lm
  %i.lp = fsub <4 x float> %i.le, %i.be
  %i.lq = fmul <4 x float> %i.bh, %i.lp           ; 3 uses
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ls = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.lt = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.lu = fmul <4 x float> %i.bo, %i.lt
  %i.lv = fmul <4 x float> %i.bq, %i.ls
  %i.lw = fadd <4 x float> %i.lv, %i.lu
  %i.lx = fmul <4 x float> %i.bt, %i.lr
  %i.ly = fadd <4 x float> %i.lx, %i.lw
  %i.lz = shufflevector <4 x float> %i.lb, <4 x float> %i.le, <2 x i32> <i32 3, i32 7>
  %i.ma = fmul <2 x float> %i.ke, %i.lz
  %i.mb = fmul <2 x float> %i.kc, %i.ma           ; 3 uses
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.md = shufflevector <4 x float> %i.lo, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.me = shufflevector <4 x float> %i.ly, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.mf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.md, <4 x float> %i.me)
  %i.mg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.md, <4 x float> %i.me)
  %i.mh = extractelement <2 x float> %i.mb, i64 0 ; 2 uses
  %i.mi = extractelement <2 x float> %i.mb, i64 1 ; 2 uses
  %i.mj = fcmp olt float %i.mh, %i.mi
  %i.mk = select i1 %i.mj, float %i.mi, float %i.mh
  %.scalar.i17 = fmul float %i.bx, %i.mk
  %i.ml = insertelement <4 x float> poison, float %.scalar.i17, i64 0
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mn = fsub <4 x float> %i.mf, %i.mm
  %i.mo = fadd <4 x float> %i.mg, %i.mm
  %i.mp = fsub <4 x float> %i.mn, %i.kr
  %i.mq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mp, <4 x float> zeroinitializer) ; 2 uses
  %i.mr = fsub <4 x float> %i.mo, %i.ku
  %i.ms = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mr, <4 x float> zeroinitializer) ; 2 uses
  %i.mt = fadd <4 x float> %.sroa.058.0158, %i.mq ; 2 uses
  %i.mu = fadd <4 x float> %.sroa.053.0160, %i.mq ; 2 uses
  %i.mv = fadd <4 x float> %.sroa.761.0157, %i.ms ; 2 uses
  %i.mw = fadd <4 x float> %.sroa.7.0159, %i.ms   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !445

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsERKS1_ffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEEEUlmE_EERKT_SE_SE_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink173 = phi <4 x float> [ %i.fm, %bb.b ], [ %.sroa.053.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.fp, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink173, ptr %i.mx, align 16
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.my, align 16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #20

declare <2 x float> @_ZNK6embree8Geometry12getTimeRangeEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{null}
!3 = distinct !{!3, !13}
!4 = distinct !{null}
!5 = distinct !{!5, !13}
!6 = distinct !{null}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = distinct !{null}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{null, null}
!27 = distinct !{!27, !13}
!28 = distinct !{null, null}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{null, null}
!34 = distinct !{!34, !13}
!35 = distinct !{null, null}
!36 = distinct !{!36, !13}
!37 = distinct !{null}
!38 = distinct !{!38, !13}
!39 = distinct !{null, null}
!40 = distinct !{null, null}
end_hunk_3
