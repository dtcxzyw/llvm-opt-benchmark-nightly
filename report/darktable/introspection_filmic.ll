Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmic?download=true
inline.NumInlined: 128
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@process:bb.a

._crit_edge:                                      ; preds = %_process_pixel.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.t

.loopexit.i:                                      ; preds = %.lr.ph, %_process_pixel.exit
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.nb, %_process_pixel.exit ] ; 3 uses
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
  %i.hg = select <4 x i1> %i.hf, <4 x float> zeroinitializer, <4 x float> %i.hd ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn <4 x float> %i.hg, <float 6.553600e+04, float poison, float poison, float poison>
  %6 = shufflevector <4 x float> %i.hh, <4 x float> %i.hg, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hi = select <4 x i1> %i.he, <4 x float> <float 6.553600e+04, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float> %6 ; 5 uses
  %i.hj = fmul <4 x float> %i.hi, <float 1.000000e+00, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04> ; 2 uses
  %i.hk = fcmp reassoc nsz arcp contract afn oge <4 x float> %i.hj, splat (float 6.553500e+04)
  %7 = shufflevector <4 x float> %i.hi, <4 x float> %i.hj, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hl = select <4 x i1> %i.hk, <4 x float> splat (float 6.553500e+04), <4 x float> %7
  %i.hm = fptoui <4 x float> %i.hl to <4 x i64>
  %i.hn = extractelement <4 x float> %i.hi, i64 3
  %.reass = fmul reassoc nsz arcp contract afn float %i.hn, f0x46937A01
  %i.ho = extractelement <4 x float> %i.hi, i64 2
  %.reass36 = fmul reassoc nsz arcp contract afn float %i.ho, f0x47363D62
  %i.hp = extractelement <4 x float> %i.hi, i64 1
  %.reass35 = fmul reassoc nsz arcp contract afn float %i.hp, f0x40B3B9D6
  %i.hq = fadd reassoc nsz arcp contract afn float %.reass36, %.reass35
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, %.reass ; 3 uses
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, 6.553500e+04
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hr, 0.000000e+00
  %i.hu = select reassoc nsz arcp contract afn i1 %i.ht, float 0.000000e+00, float %i.hr
  %i.hv = fptosi float %i.hu to i32
  %i.hw = sext i32 %i.hv to i64
  %i.hx = select i1 %i.hs, i64 65535, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.e, <4 x i64> %i.hm
  %i.hz = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.hy, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !12 ; 4 uses
  %i.ia = extractelement <4 x float> %i.hz, i64 3
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, f0x3E937A01
  %i.ic = extractelement <4 x float> %i.hz, i64 2
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, f0x3F363D62
  %i.ie = fadd reassoc nsz arcp contract afn float %i.id, %i.ib
  %i.if = extractelement <4 x float> %i.hz, i64 1
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, f0x38B3B9D6
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ie, %i.ig
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i, %bb.e
  %.pn = phi i64 [ %i.hx, %.preheader.preheader.i ], [ %i.dv, %bb.e ]
  %.090.i = phi nsz float [ %i.ih, %.preheader.preheader.i ], [ %i.dx, %bb.e ]
  %i.ii = phi <4 x float> [ %i.hz, %.preheader.preheader.i ], [ %i.ed, %bb.e ]
  %.091.in.i = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.pn
  %.091.i = load float, ptr %.091.in.i, align 4, !tbaa !12
  %i.ij = insertelement <4 x float> poison, float %.090.i, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.il = fsub reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ik
  %i.im = insertelement <4 x float> poison, float %.091.i, i64 0
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul reassoc nsz arcp contract afn <4 x float> %i.il, %i.in
  %i.ip = fadd reassoc nsz arcp contract afn <4 x float> %i.io, %i.ik
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 3 uses
  %i.ir = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.iq, splat (float 1.000000e+00)
  %i.is = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.iq, zeroinitializer
  %i.it = bitcast <4 x float> %i.iq to <4 x i32>
  %i.iu = select <4 x i1> %i.is, <4 x i32> zeroinitializer, <4 x i32> %i.it
  %i.iv = select <4 x i1> %i.ir, <4 x i32> splat (i32 1065353216), <4 x i32> %i.iu ; 2 uses
  %i.iw = and <4 x i32> %i.iv, splat (i32 8388607)
  %i.ix = or disjoint <4 x i32> %i.iw, splat (i32 1065353216)
  %i.iy = bitcast <4 x i32> %i.ix to <4 x float>  ; 5 uses
  %i.iz = lshr <4 x i32> %i.iv, splat (i32 23)
  %i.ja = and <4 x i32> %i.iz, splat (i32 255)
  %i.jb = add nsw <4 x i32> %i.ja, splat (i32 -127)
  %i.jc = sitofp <4 x i32> %i.jb to <4 x float>
  %i.jd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.iy, splat (float f0x3D74552F)
  %i.je = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jd, splat (float f0xBEEE7397)
  %i.jf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.je, %i.iy
  %i.jg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jf, splat (float f0x3FBD96DD)
  %i.jh = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jg, %i.iy
  %i.ji = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jh, splat (float f0xC02153F6)
  %i.jj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ji, %i.iy
  %i.jk = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jj, splat (float f0x4038D96C)
  %i.jl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.iy, splat (float -1.000000e+00)
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %i.jk, %i.jl
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %i.jm, %i.jc
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %i.jn, %i.am
  %i.jp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jo, <4 x float> splat (float 1.290000e+02))
  %i.jq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jp, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jq, splat (float -5.000000e-01)
  %i.js = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jr)
  %i.jt = sitofp reassoc nsz arcp contract afn <4 x i32> %i.js to <4 x float> ; 5 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.jt, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jt
  %i.ju = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop48 = fsub reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jt
  %i.jv = extractelement <4 x float> %foldExtExtBinop48, i64 1 ; 4 uses
  %foldExtExtBinop50 = fsub reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jt
  %i.jw = extractelement <4 x float> %foldExtExtBinop50, i64 2 ; 4 uses
  %i.jx = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.jy = shl i32 %i.jx, 23
  %i.jz = add i32 %i.jy, 1065353216
  %i.ka = fmul reassoc nsz arcp contract afn float %i.ju, f0x3C5DBE69
  %i.kb = fadd reassoc nsz arcp contract afn float %i.ka, f0x3D5509F9
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.ju
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, f0x3E773CC5
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.ju
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, f0x3F3168B3
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, %i.ju
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kg, f0x3F800016
  %i.ki = fmul reassoc nsz arcp contract afn float %i.jv, f0x3C5DBE69
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, f0x3D5509F9
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %i.jv
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kk, f0x3E773CC5
  %i.km = fmul reassoc nsz arcp contract afn float %i.kl, %i.jv
  %i.kn = fadd reassoc nsz arcp contract afn float %i.km, f0x3F3168B3
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, %i.jv
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, f0x3F800016
  %i.kq = fmul reassoc nsz arcp contract afn float %i.jw, f0x3C5DBE69
  %i.kr = fadd reassoc nsz arcp contract afn float %i.kq, f0x3D5509F9
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, %i.jw
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, f0x3E773CC5
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.jw
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, f0x3F3168B3
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %i.jw
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kw, f0x3F800016
  %i.ky = bitcast i32 %i.jz to float
  %i.kz = fmul reassoc nsz arcp contract afn float %i.kh, %i.ky ; 3 uses
  %i.la = shufflevector <4 x float> %i.jt, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lb = fptosi <2 x float> %i.la to <2 x i32>
  %i.lc = shl <2 x i32> %i.lb, splat (i32 23)
  %i.ld = add <2 x i32> %i.lc, splat (i32 1065353216)
  %i.le = bitcast <2 x i32> %i.ld to <2 x float>  ; 2 uses
  %i.lf = extractelement <2 x float> %i.le, i64 0
  %i.lg = fmul reassoc nsz arcp contract afn float %i.kp, %i.lf ; 3 uses
  %i.lh = extractelement <2 x float> %i.le, i64 1
  %i.li = fmul reassoc nsz arcp contract afn float %i.kx, %i.lh ; 4 uses
  %i.lj = fmul reassoc nsz arcp contract afn float %i.kz, f0x3F4C346C
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lg, f0x3E0A6FB1
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lk, %i.lj
  %i.lm = fmul reassoc nsz arcp contract afn float %i.li, 3.135340e-02
  %i.ln = fadd reassoc nsz arcp contract afn float %i.ll, %i.lm ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn float %i.kz, f0x3E937A01
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lg, f0x3F363D62
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lo
  %i.lr = fmul reassoc nsz arcp contract afn float %i.li, f0x38B3B9D6
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lq, %i.lr ; 3 uses
  %i.lt = fadd reassoc nsz arcp contract afn float %i.lg, %i.kz ; 2 uses
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, 0.000000e+00
  %i.lv = fmul reassoc nsz arcp contract afn float %i.li, f0x3F5340F6
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lu, %i.lv ; 2 uses
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lt, %i.li
  %i.ly = fmul reassoc nsz arcp contract afn float %i.ln, f0x3F84C0A6 ; 2 uses
  %i.lz = fcmp reassoc nsz arcp contract afn ogt float %i.ly, f0x3C111AA7
  br i1 %i.lz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ma = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ly) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.mb = fmul reassoc nsz arcp contract afn float %i.ln, f0x410137F7
  %i.mc = fadd reassoc nsz arcp contract afn float %i.mb, f0x3E0D3DCB
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.md = phi reassoc nsz arcp contract afn float [ %i.ma, %bb.i ], [ %i.mc, %bb.j ]
  %i.me = fcmp reassoc nsz arcp contract afn ogt float %i.ls, f0x3C111AA7
  br i1 %i.me, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mf = fmul reassoc nsz arcp contract afn float %i.ls, f0x40F92F69
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, f0x3E0D3DCB
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.mh = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ls) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.mi = phi reassoc nsz arcp contract afn float [ %i.mh, %bb.m ], [ %i.mg, %bb.l ] ; 3 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.lw, f0x3F9B2B9B ; 2 uses
  %i.mk = fcmp reassoc nsz arcp contract afn ogt float %i.mj, f0x3C111AA7
  br i1 %i.mk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ml = fmul reassoc nsz arcp contract afn float %i.lw, f0x41170A26
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, f0x3E0D3DCB
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.mn = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mj) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.mo = phi reassoc nsz arcp contract afn float [ %i.mn, %bb.p ], [ %i.mm, %bb.o ]
  %i.mp = fmul reassoc nsz arcp contract afn float %i.lx, 0.000000e+00 ; 3 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ogt float %i.mp, f0x3C111AA7
  br i1 %i.mq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mp, f0x3E0D3DCB
  br label %_process_pixel.exit

bb.s:                                             ; preds = %bb.q
  %i.ms = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mp) #23
  br label %_process_pixel.exit

_process_pixel.exit:                              ; preds = %bb.r, %bb.s
  %i.mt = phi reassoc nsz arcp contract afn float [ %i.ms, %bb.s ], [ %i.mr, %bb.r ]
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mi, 1.160000e+02
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, -1.600000e+01
  %i.mw = fsub reassoc nsz arcp contract afn float %i.md, %i.mi
  %i.mx = fsub reassoc nsz arcp contract afn float %i.mo, %i.mi
  %i.my = insertelement <4 x float> poison, float %i.mw, i64 1
  %i.mz = insertelement <4 x float> %i.my, float %i.mx, i64 2
  %i.na = insertelement <4 x float> %i.mz, float %i.mt, i64 3
  %8 = fmul reassoc nsz arcp contract afn <4 x float> %i.na, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %9 = insertelement <4 x float> %8, float %i.mv, i64 0
  store <4 x float> %9, ptr %i.as, align 16, !tbaa !49, !alias.scope !165, !nontemporal !166
  %i.nb = add nuw i64 %.037, 4                    ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %i.u
  br i1 %i.nc, label %.loopexit.i, label %._crit_edge

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
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %apply_auto_grey.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 5 uses
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !60  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = load float, ptr %i.l, align 16, !tbaa !12
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, 8.620690e-03
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, f0x3E0D3DCB ; 5 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, f0x3E53DCB1
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.o
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, f0x3E038026
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0xBC911AA6
  %i.u = select reassoc nsz arcp contract afn i1 %i.p, float %i.r, float %i.t
  %i.v = load float, ptr %i.j, align 4, !tbaa !23
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, 1.000000e+02 ; 2 uses
  store float %i.w, ptr %i.j, align 4, !tbaa !23
  %i.x = fdiv reassoc nsz arcp contract afn float %i.v, %i.w ; 3 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %Log2.exit.i

bb.d:                                             ; preds = %bb.c
  %i.z = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.x)
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.z, f0x3FB8AA3B
  br label %Log2.exit.i

Log2.exit.i:                                      ; preds = %bb.d, %bb.c
  %i.ab = phi reassoc nsz arcp contract afn float [ %i.aa, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !105
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ad, %i.ab
  store float %i.ae, ptr %i.ac, align 4, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !25
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.ab
  store float %i.ah, ptr %i.af, align 4, !tbaa !25
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ak = atomicrmw add ptr %i.aj, i32 1 seq_cst, align 4 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.an = load float, ptr %i.j, align 4, !tbaa !23
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.am, float noundef %i.an) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106
  %i.aq = load float, ptr %i.ac, align 4, !tbaa !105
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ap, float noundef %i.aq) #20
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.as = load float, ptr %i.af, align 4, !tbaa !25
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ar, float noundef %i.as) #20
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.av = atomicrmw add ptr %i.au, i32 -1 seq_cst, align 4 ; 0 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  tail call void @dt_dev_add_history_item(ptr noundef %i.aw, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !109
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ay) #20
  br label %apply_auto_grey.exit

bb.e:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106
  %i.bb = icmp eq ptr %1, %i.ba
  br i1 %i.bb, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = load atomic i32, ptr %i.bd seq_cst, align 4
  %.not.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.i13, label %bb.g, label %apply_auto_grey.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !104 ; 5 uses
  %i.bh = load ptr, ptr %i.a, align 16, !tbaa !60 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bj = load float, ptr %i.bi, align 16, !tbaa !12
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, 8.620690e-03
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, f0x3E0D3DCB ; 5 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bl, f0x3E53DCB1
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bl
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bl, f0x3E038026
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, f0xBC911AA6
  %i.br = select reassoc nsz arcp contract afn i1 %i.bm, float %i.bo, float %i.bq
  %i.bs = load float, ptr %i.bg, align 4, !tbaa !23
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, f0x3C23D70A
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.br, %i.bt ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bu, f0x37800000
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bv, float %i.bu, float f0x37800000
  %i.bx = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !110
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, f0x3C6C5F03
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, f0x3FB8AA3B
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 3 uses
  store float %i.cc, ptr %i.cd, align 4, !tbaa !105
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.cg = atomicrmw add ptr %i.cf, i32 1 seq_cst, align 4 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !106
  %i.cj = load float, ptr %i.cd, align 4, !tbaa !105
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ci, float noundef %i.cj) #20
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 seq_cst, align 4 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25
  %i.cr = load float, ptr %i.cd, align 4, !tbaa !105
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cq, %i.cr
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 9.900000e-01 ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %i.co, %i.ct
  br i1 %i.cu, label %bb.h, label %sanitize_latitude.exit.i

bb.h:                                             ; preds = %bb.g
  store float %i.ct, ptr %i.cn, align 4, !tbaa !24
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 104
  %i.cx = atomicrmw add ptr %i.cw, i32 1 seq_cst, align 4 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !111
  %i.da = load float, ptr %i.cn, align 4, !tbaa !24
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cz, float noundef %i.da) #20
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 seq_cst, align 4 ; 0 uses
  br label %sanitize_latitude.exit.i

sanitize_latitude.exit.i:                         ; preds = %bb.h, %bb.g
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  tail call void @dt_dev_add_history_item(ptr noundef %i.de, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !109
  tail call void @gtk_widget_queue_draw(ptr noundef %i.dg) #20
  br label %apply_auto_grey.exit

bb.i:                                             ; preds = %bb.e
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.di = icmp eq ptr %1, %i.dh
  br i1 %i.di, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load atomic i32, ptr %i.dk seq_cst, align 4
  %.not.i14 = icmp eq i32 %i.dl, 0
  br i1 %.not.i14, label %bb.k, label %apply_auto_grey.exit

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104 ; 5 uses
  %i.do = load ptr, ptr %i.a, align 16, !tbaa !60 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dq = load float, ptr %i.dp, align 16, !tbaa !12
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, 8.620690e-03
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, f0x3E0D3DCB ; 5 uses
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.ds, f0x3E53DCB1
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %i.ds
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.ds
  %i.dw = fmul reassoc nsz arcp contract afn float %i.ds, f0x3E038026
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, f0xBC911AA6
  %i.dy = select reassoc nsz arcp contract afn i1 %i.dt, float %i.dv, float %i.dx
  %i.dz = load float, ptr %i.dn, align 4, !tbaa !23
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, f0x3C23D70A
end_hunk_0
