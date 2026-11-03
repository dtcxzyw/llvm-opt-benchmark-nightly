Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmic?download=true
inline.NumInlined: 128
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@process:bb.a
  br label %bb.t

.loopexit.i:                                      ; preds = %.lr.ph, %_process_pixel.exit
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_process_pixel.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.037 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.037
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = load float, ptr %i.ar, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ay = fmul reassoc nsz arcp contract afn float %i.au, 2.000000e-03
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, 8.620690e-03
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, f0x3E0D3DCB ; 3 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ax, 5.000000e-03
  %i.bc = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb ; 5 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %i.bd, f0x3E53DCB1
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, f0x3E038026
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0xBC911AA6
  %i.bj = select reassoc nsz arcp contract afn i1 %i.be, float %i.bg, float %i.bi ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F532CA5
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F7FE762
  %i.bm = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bc, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bs = fadd reassoc nsz arcp contract afn <2 x float> %i.br, splat (float f0xBC911AA6)
  %i.bt = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> %i.bs ; 5 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 1
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 9.642000e-01
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3E82DEFC, float f0x3F066D1A>
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3FC10BA0, float f0x3FA61CF4>
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.bx
  %i.ca = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float f0x3C8AC481, float f0xBD2CB230>
  %i.cd = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cc
  %i.ce = extractelement <2 x float> %i.bt, i64 0
  %i.cf = fadd reassoc nsz arcp contract afn float %i.bv, %i.ce ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 0.000000e+00
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.bl
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cf, %i.bk
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 0.000000e+00
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cp = fsub reassoc nsz arcp contract afn <4 x float> %i.cn, %i.co
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.ak
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.co
  %i.cs = select i1 %i.h, <4 x float> %i.cn, <4 x float> %i.cr ; 7 uses
  br i1 %.not99.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  %i.ct = extractelement <4 x float> %i.cs, i64 2 ; 2 uses
  %i.cu = extractelement <4 x float> %i.cs, i64 3 ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ogt float %i.cu, %i.ct
  %..i.i = select reassoc nsz arcp contract afn i1 %i.cv, float %i.cu, float %i.ct ; 2 uses
  %i.cw = extractelement <4 x float> %i.cs, i64 1 ; 2 uses
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %..i.i, %i.cw
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %i.cx, float %..i.i, float %i.cw ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %spec.select.i.i, %i.an ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %i.cy, f0x37800000
  br i1 %i.cz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.da = bitcast float %i.cy to i32              ; 2 uses
  %i.db = and i32 %i.da, 8388607
  %i.dc = or disjoint i32 %i.db, 1056964608
  %i.dd = uitofp reassoc nsz arcp contract afn i32 %i.da to float
  %i.de = fmul reassoc nnan nsz arcp contract afn float %i.dd, f0x34000000
  %i.df = bitcast i32 %i.dc to float              ; 2 uses
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, f0x3EB444F9
  %.neg.i.i = fmul reassoc nnan nsz arcp contract afn float %i.df, f0xBFBFBF75
  %.neg6.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.dg
  %i.dh = fadd reassoc nsz arcp contract afn float %.neg7.i.i, %i.de
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, %.neg.i.i
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %.neg6.i.i
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dl = phi reassoc nsz arcp contract afn float [ %i.dk, %bb.d ], [ f0x37800000, %bb.c ] ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.dl, 1.000000e+00
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dl, 0.000000e+00
  %i.do = select reassoc nsz arcp contract afn i1 %i.dn, float 0.000000e+00, float %i.dl
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 6.553600e+04
  %i.dq = select i1 %i.dm, float 6.553600e+04, float %i.dp ; 3 uses
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dq, 6.553500e+04
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dq, 0.000000e+00
  %i.dt = select reassoc nsz arcp contract afn i1 %i.ds, float 0.000000e+00, float %i.dq
  %i.du = fptoui float %i.dt to i64
  %i.dv = select i1 %i.dr, i64 65535, i64 %i.du   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12 ; 2 uses
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fmul reassoc nsz arcp contract afn <4 x float> %i.dz, %i.cs
  %i.eb = insertelement <4 x float> poison, float %spec.select.i.i, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fdiv reassoc nsz arcp contract afn <4 x float> %i.ea, %i.ec
  br label %bb.h

bb.f:                                             ; preds = %.loopexit.i
  %i.ee = extractelement <4 x float> %i.cs, i64 3
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.ao ; 2 uses
  %i.eg = extractelement <4 x float> %i.cs, i64 2
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ap ; 2 uses
  %i.ei = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.ei, %i.aq ; 2 uses
  %i.ek = bitcast float %i.eh to i32              ; 2 uses
  %i.el = and i32 %i.ek, 8388607
  %i.em = or disjoint i32 %i.el, 1065353216
  %i.en = bitcast i32 %i.em to float              ; 5 uses
  %i.eo = lshr i32 %i.ek, 23
  %i.ep = and i32 %i.eo, 255
  %i.eq = add nsw i32 %i.ep, -127
  %i.er = sitofp i32 %i.eq to float
  %i.es = fmul reassoc nnan nsz arcp contract afn float %i.en, f0x3D74552F
  %i.et = fadd reassoc nnan nsz arcp contract afn float %i.es, f0xBEEE7397
  %i.eu = fmul reassoc nnan nsz arcp contract afn float %i.et, %i.en
  %i.ev = fadd reassoc nnan nsz arcp contract afn float %i.eu, f0x3FBD96DD
  %i.ew = fmul reassoc nnan nsz arcp contract afn float %i.ev, %i.en
  %i.ex = fadd reassoc nnan nsz arcp contract afn float %i.ew, f0xC02153F6
  %i.ey = fmul reassoc nnan nsz arcp contract afn float %i.ex, %i.en
  %i.ez = fadd reassoc nnan nsz arcp contract afn float %i.ey, f0x4038D96C
  %i.fa = fadd reassoc nnan nsz arcp contract afn float %i.en, -1.000000e+00
  %i.fb = fmul reassoc nsz arcp contract afn float %i.ez, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, %i.er
  %i.fd = bitcast <2 x float> %i.ej to <2 x i32>  ; 2 uses
  %i.fe = and <2 x i32> %i.fd, splat (i32 8388607)
  %i.ff = or disjoint <2 x i32> %i.fe, splat (i32 1065353216)
  %i.fg = bitcast <2 x i32> %i.ff to <2 x float>  ; 5 uses
  %i.fh = lshr <2 x i32> %i.fd, splat (i32 23)
  %i.fi = and <2 x i32> %i.fh, splat (i32 255)
  %i.fj = add nsw <2 x i32> %i.fi, splat (i32 -127)
  %i.fk = sitofp <2 x i32> %i.fj to <2 x float>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fg, splat (float f0x3D74552F)
  %i.fm = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fl, splat (float f0xBEEE7397)
  %i.fn = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fm, %i.fg
  %i.fo = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fn, splat (float f0x3FBD96DD)
  %i.fp = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fo, %i.fg
  %i.fq = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fp, splat (float f0xC02153F6)
  %i.fr = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fq, %i.fg
  %i.fs = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fr, splat (float f0x4038D96C)
  %i.ft = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fg, splat (float -1.000000e+00)
  %i.fu = fmul reassoc nsz arcp contract afn <2 x float> %i.fs, %i.ft
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fk
  %i.fw = fcmp reassoc nsz arcp contract afn ogt float %i.ef, f0x37800000
  br i1 %i.fw, label %bb.g, label %.preheader.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.fx = bitcast float %i.ef to i32              ; 2 uses
  %i.fy = and i32 %i.fx, 8388607
  %i.fz = or disjoint i32 %i.fy, 1065353216
  %i.ga = bitcast i32 %i.fz to float              ; 5 uses
  %i.gb = fmul reassoc nnan nsz arcp contract afn float %i.ga, f0x3D74552F
  %i.gc = fadd reassoc nnan nsz arcp contract afn float %i.gb, f0xBEEE7397
  %i.gd = fmul reassoc nnan nsz arcp contract afn float %i.gc, %i.ga
  %i.ge = fadd reassoc nnan nsz arcp contract afn float %i.gd, f0x3FBD96DD
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, %i.ga
  %i.gg = fadd reassoc nnan nsz arcp contract afn float %i.gf, f0xC02153F6
  %i.gh = fmul reassoc nnan nsz arcp contract afn float %i.gg, %i.ga
  %i.gi = fadd reassoc nnan nsz arcp contract afn float %i.gh, f0x4038D96C
  %i.gj = fadd reassoc nnan nsz arcp contract afn float %i.ga, -1.000000e+00
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gi, %i.gj
  %i.gl = lshr i32 %i.fx, 23
  %i.gm = add nsw i32 %i.gl, -127
  %i.gn = sitofp i32 %i.gm to float
  %i.go = fadd reassoc nsz arcp contract afn float %i.gk, %i.gn
  %i.gp = fsub reassoc nsz arcp contract afn float %i.go, %i.p
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.s
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g, %bb.f
  %i.gr = phi reassoc nsz arcp contract afn float [ %i.gq, %bb.g ], [ f0x37800000, %bb.f ]
  %i.gs = fcmp reassoc nsz arcp contract afn ogt float %i.eh, f0x37800000
  %i.gt = fsub reassoc nsz arcp contract afn float %i.fc, %i.p
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.s
  %i.gv = select reassoc nsz arcp contract afn i1 %i.gs, float %i.gu, float f0x37800000
  %i.gw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ej, splat (float f0x37800000)
  %i.gx = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %i.ag
  %i.gy = fmul reassoc nsz arcp contract afn <2 x float> %i.gx, %i.ai
  %i.gz = select <2 x i1> %i.gw, <2 x float> %i.gy, <2 x float> splat (float f0x37800000)
  %i.ha = insertelement <4 x float> poison, float %i.gv, i64 2
  %i.hb = insertelement <4 x float> %i.ha, float %i.gr, i64 3
  %i.hc = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.he = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hd, zeroinitializer
  %i.hg = select <4 x i1> %i.hf, <4 x float> zeroinitializer, <4 x float> %i.hd
  %i.hh = fmul reassoc nsz arcp contract afn <4 x float> %i.hg, <float 6.553600e+04, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.hi = select <4 x i1> %i.he, <4 x float> <float 6.553600e+04, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float> %i.hh ; 4 uses
  %i.hj = fmul <4 x float> %i.hi, <float 1.000000e+00, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04> ; 3 uses
  %6 = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hj, splat (float 6.553500e+04)
  %7 = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.hj, zeroinitializer
  %i.hk = select <4 x i1> %7, <4 x float> zeroinitializer, <4 x float> %i.hj
  %i.hl = fptoui <4 x float> %i.hk to <4 x i64>
  %8 = select <4 x i1> %6, <4 x i64> splat (i64 65535), <4 x i64> %i.hl
  %i.hm = extractelement <4 x float> %i.hi, i64 3
  %.reass = fmul reassoc nsz arcp contract afn float %i.hm, f0x46937A01
  %i.hn = extractelement <4 x float> %i.hi, i64 2
  %.reass36 = fmul reassoc nsz arcp contract afn float %i.hn, f0x47363D62
  %i.ho = extractelement <4 x float> %i.hi, i64 1
  %.reass35 = fmul reassoc nsz arcp contract afn float %i.ho, f0x40B3B9D6
  %i.hp = fadd reassoc nsz arcp contract afn float %.reass36, %.reass35
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, %.reass ; 3 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ogt float %i.hq, 6.553500e+04
  %i.hs = fcmp reassoc nsz arcp contract afn olt float %i.hq, 0.000000e+00
  %i.ht = select reassoc nsz arcp contract afn i1 %i.hs, float 0.000000e+00, float %i.hq
  %i.hu = fptosi float %i.ht to i32
  %i.hv = sext i32 %i.hu to i64
  %i.hw = select i1 %i.hr, i64 65535, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.e, <4 x i64> %8
  %i.hy = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.hx, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !12 ; 4 uses
  %i.hz = extractelement <4 x float> %i.hy, i64 3
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hz, f0x3E937A01
  %i.ib = extractelement <4 x float> %i.hy, i64 2
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, f0x3F363D62
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, %i.ia
  %i.ie = extractelement <4 x float> %i.hy, i64 1
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, f0x38B3B9D6
  %i.ig = fadd reassoc nsz arcp contract afn float %i.id, %i.if
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i, %bb.e
  %.pn = phi i64 [ %i.hw, %.preheader.preheader.i ], [ %i.dv, %bb.e ]
  %.090.i = phi nsz float [ %i.ig, %.preheader.preheader.i ], [ %i.dx, %bb.e ]
  %i.ih = phi <4 x float> [ %i.hy, %.preheader.preheader.i ], [ %i.ed, %bb.e ]
  %.091.in.i = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.pn
  %.091.i = load float, ptr %.091.in.i, align 4, !tbaa !12
  %i.ii = insertelement <4 x float> poison, float %.090.i, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ik = fsub reassoc nsz arcp contract afn <4 x float> %i.ih, %i.ij
  %i.il = insertelement <4 x float> poison, float %.091.i, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %i.ik, %i.im
  %i.io = fadd reassoc nsz arcp contract afn <4 x float> %i.in, %i.ij
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 3 uses
  %i.iq = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ip, splat (float 1.000000e+00)
  %i.ir = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ip, zeroinitializer
  %i.is = bitcast <4 x float> %i.ip to <4 x i32>
  %i.it = select <4 x i1> %i.ir, <4 x i32> zeroinitializer, <4 x i32> %i.is
  %i.iu = select <4 x i1> %i.iq, <4 x i32> splat (i32 1065353216), <4 x i32> %i.it ; 2 uses
  %i.iv = and <4 x i32> %i.iu, splat (i32 8388607)
  %i.iw = or disjoint <4 x i32> %i.iv, splat (i32 1065353216)
  %i.ix = bitcast <4 x i32> %i.iw to <4 x float>  ; 5 uses
  %i.iy = lshr <4 x i32> %i.iu, splat (i32 23)
  %i.iz = and <4 x i32> %i.iy, splat (i32 255)
  %i.ja = add nsw <4 x i32> %i.iz, splat (i32 -127)
  %i.jb = sitofp <4 x i32> %i.ja to <4 x float>
  %i.jc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ix, splat (float f0x3D74552F)
  %i.jd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jc, splat (float f0xBEEE7397)
  %i.je = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jd, %i.ix
  %i.jf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.je, splat (float f0x3FBD96DD)
  %i.jg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jf, %i.ix
  %i.jh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jg, splat (float f0xC02153F6)
  %i.ji = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jh, %i.ix
  %i.jj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ji, splat (float f0x4038D96C)
  %i.jk = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ix, splat (float -1.000000e+00)
  %i.jl = fmul reassoc nsz arcp contract afn <4 x float> %i.jj, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn <4 x float> %i.jl, %i.jb
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %i.jm, %i.am
  %i.jo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jn, <4 x float> splat (float 1.290000e+02))
  %i.jp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jo, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, splat (float -5.000000e-01)
  %i.jr = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jq)
  %i.js = sitofp reassoc nsz arcp contract afn <4 x i32> %i.jr to <4 x float> ; 5 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.js, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.jp, %i.js
  %i.jt = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop48 = fsub reassoc nsz arcp contract afn <4 x float> %i.jp, %i.js
  %i.ju = extractelement <4 x float> %foldExtExtBinop48, i64 1 ; 4 uses
  %foldExtExtBinop50 = fsub reassoc nsz arcp contract afn <4 x float> %i.jp, %i.js
  %i.jv = extractelement <4 x float> %foldExtExtBinop50, i64 2 ; 4 uses
  %i.jw = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.jx = shl i32 %i.jw, 23
  %i.jy = add i32 %i.jx, 1065353216
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jt, f0x3C5DBE69
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jz, f0x3D5509F9
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.jt
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, f0x3E773CC5
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, %i.jt
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, f0x3F3168B3
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, %i.jt
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, f0x3F800016
  %i.kh = fmul reassoc nsz arcp contract afn float %i.ju, f0x3C5DBE69
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, f0x3D5509F9
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, %i.ju
  %i.kk = fadd reassoc nsz arcp contract afn float %i.kj, f0x3E773CC5
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, %i.ju
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, f0x3F3168B3
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %i.ju
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, f0x3F800016
  %i.kp = fmul reassoc nsz arcp contract afn float %i.jv, f0x3C5DBE69
  %i.kq = fadd reassoc nsz arcp contract afn float %i.kp, f0x3D5509F9
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, %i.jv
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, f0x3E773CC5
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, %i.jv
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, f0x3F3168B3
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, %i.jv
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kv, f0x3F800016
  %i.kx = bitcast i32 %i.jy to float
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kg, %i.kx ; 3 uses
  %i.kz = shufflevector <4 x float> %i.js, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.la = fptosi <2 x float> %i.kz to <2 x i32>
  %i.lb = shl <2 x i32> %i.la, splat (i32 23)
  %i.lc = add <2 x i32> %i.lb, splat (i32 1065353216)
  %i.ld = bitcast <2 x i32> %i.lc to <2 x float>  ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ko, %i.le ; 3 uses
  %i.lg = extractelement <2 x float> %i.ld, i64 1
  %i.lh = fmul reassoc nsz arcp contract afn float %i.kw, %i.lg ; 4 uses
  %i.li = fmul reassoc nsz arcp contract afn float %i.ky, f0x3F4C346C
  %i.lj = fmul reassoc nsz arcp contract afn float %i.lf, f0x3E0A6FB1
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.li
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lh, 3.135340e-02
  %i.lm = fadd reassoc nsz arcp contract afn float %i.lk, %i.ll ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.ky, f0x3E937A01
  %i.lo = fmul reassoc nsz arcp contract afn float %i.lf, f0x3F363D62
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, %i.ln
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lh, f0x38B3B9D6
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lp, %i.lq ; 3 uses
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lf, %i.ky ; 2 uses
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, 0.000000e+00
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lh, f0x3F5340F6
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lt, %i.lu ; 2 uses
  %i.lw = fadd reassoc nsz arcp contract afn float %i.ls, %i.lh
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lm, f0x3F84C0A6 ; 2 uses
  %i.ly = fcmp reassoc nsz arcp contract afn ogt float %i.lx, f0x3C111AA7
  br i1 %i.ly, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.lz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lx) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lm, f0x410137F7
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ma, f0x3E0D3DCB
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.mc = phi reassoc nsz arcp contract afn float [ %i.lz, %bb.i ], [ %i.mb, %bb.j ]
  %i.md = fcmp reassoc nsz arcp contract afn ogt float %i.lr, f0x3C111AA7
  br i1 %i.md, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.me = fmul reassoc nsz arcp contract afn float %i.lr, f0x40F92F69
  %i.mf = fadd reassoc nsz arcp contract afn float %i.me, f0x3E0D3DCB
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.mg = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lr) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.mh = phi reassoc nsz arcp contract afn float [ %i.mg, %bb.m ], [ %i.mf, %bb.l ] ; 3 uses
  %i.mi = fmul reassoc nsz arcp contract afn float %i.lv, f0x3F9B2B9B ; 2 uses
  %i.mj = fcmp reassoc nsz arcp contract afn ogt float %i.mi, f0x3C111AA7
  br i1 %i.mj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mk = fmul reassoc nsz arcp contract afn float %i.lv, f0x41170A26
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, f0x3E0D3DCB
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.mm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mi) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.mn = phi reassoc nsz arcp contract afn float [ %i.mm, %bb.p ], [ %i.ml, %bb.o ]
  %i.mo = fmul reassoc nsz arcp contract afn float %i.lw, 0.000000e+00 ; 3 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mo, f0x3C111AA7
  br i1 %i.mp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mo, f0x3E0D3DCB
  br label %_process_pixel.exit

bb.s:                                             ; preds = %bb.q
  %i.mr = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mo) #23
  br label %_process_pixel.exit

_process_pixel.exit:                              ; preds = %bb.r, %bb.s
  %i.ms = phi reassoc nsz arcp contract afn float [ %i.mr, %bb.s ], [ %i.mq, %bb.r ]
  %i.mt = fmul reassoc nsz arcp contract afn float %i.mh, 1.160000e+02
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, -1.600000e+01
  %i.mv = fsub reassoc nsz arcp contract afn float %i.mc, %i.mh
  %i.mw = fsub reassoc nsz arcp contract afn float %i.mn, %i.mh
  %i.mx = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.my = insertelement <4 x float> %i.mx, float %i.mv, i64 1
  %i.mz = insertelement <4 x float> %i.my, float %i.mw, i64 2
  %i.na = insertelement <4 x float> %i.mz, float %i.ms, i64 3
  %i.nb = fmul reassoc nsz arcp contract afn <4 x float> %i.na, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.nb, ptr %i.as, align 16, !tbaa !49, !alias.scope !165, !nontemporal !166
  %i.nc = add nuw i64 %.037, 4                    ; 2 uses
  %i.nd = icmp ult i64 %i.nc, %i.u
  br i1 %i.nd, label %.loopexit.i, label %._crit_edge

bb.t:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 6 uses
end_hunk_0
