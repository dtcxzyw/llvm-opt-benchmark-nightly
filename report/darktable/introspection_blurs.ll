Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_blurs?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_blur_2D_Bspline:bb.a
  %wide.masked.gather94 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep93, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather94, splat (float 1.562500e-02)
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %i.cj
  %wide.gep95 = getelementptr [4 x i8], ptr %i.ai, <8 x i64> %i.at
  %wide.masked.gather96 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather96, splat (float 6.250000e-02)
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cl
  %wide.gep97 = getelementptr [4 x i8], ptr %i.ai, <8 x i64> %i.az
  %wide.masked.gather98 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather98, splat (float 9.375000e-02)
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.cn
  %wide.gep99 = getelementptr [4 x i8], ptr %i.ai, <8 x i64> %i.bg
  %wide.masked.gather100 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep99, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather100, splat (float 6.250000e-02)
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cp
  %wide.gep101 = getelementptr [4 x i8], ptr %i.ai, <8 x i64> %i.bn
  %wide.masked.gather102 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep101, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather102, splat (float 1.562500e-02)
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cr
  %wide.gep103 = getelementptr [4 x i8], ptr %i.w, <8 x i64> %i.an
  %wide.masked.gather104 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep103, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather104, splat (float 3.906250e-03)
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cu, %i.ct
  %wide.gep105 = getelementptr [4 x i8], ptr %i.w, <8 x i64> %i.at
  %wide.masked.gather106 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep105, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather106, splat (float 1.562500e-02)
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %i.cv
  %wide.gep107 = getelementptr [4 x i8], ptr %i.w, <8 x i64> %i.az
  %wide.masked.gather108 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep107, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather108, splat (float 2.343750e-02)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cx
  %wide.gep109 = getelementptr [4 x i8], ptr %i.w, <8 x i64> %i.bg
  %wide.masked.gather110 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep109, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather110, splat (float 1.562500e-02)
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %i.cz
  %wide.gep111 = getelementptr [4 x i8], ptr %i.w, <8 x i64> %i.bn
  %wide.masked.gather112 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep111, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather112, splat (float 3.906250e-03)
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %i.dc, %i.db
  %i.de = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <8 x float> %i.dd, ptr %i.de, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader50, %middle.block
  %.04255.ph = phi i64 [ 0, %.preheader50 ], [ %n.vec, %middle.block ]
  br label %.preheader

._crit_edge57.split:                              ; preds = %._crit_edge, %.preheader50.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.dg = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond60.not = icmp eq i64 %i.dg, %3
  br i1 %exitcond60.not, label %._crit_edge57.split, label %.preheader50

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.04255 = phi i64 [ %i.hx, %.preheader ], [ %.04255.ph, %.preheader.preheader ] ; 3 uses
  %i.dh = trunc i64 %.04255 to i32                ; 6 uses
  %i.di = add i32 %i.dh, -2                       ; 2 uses
  %.not49 = icmp slt i32 %i.di, %i.c
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = select i1 %.not49, i32 %i.dj, i32 %i.d
  %i.dl = sext i32 %i.dk to i64                   ; 5 uses
  %i.dm = getelementptr [4 x i8], ptr %i.y, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !46
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 3.906250e-03
  %i.dp = add i32 %i.dh, -1                       ; 2 uses
  %.not49.1 = icmp slt i32 %i.dp, %i.c
  %i.dq = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 0)
  %i.dr = select i1 %.not49.1, i32 %i.dq, i32 %i.d
  %i.ds = sext i32 %i.dr to i64                   ; 5 uses
  %i.dt = getelementptr [4 x i8], ptr %i.y, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !46
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 1.562500e-02
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.do
  %.not49.2 = icmp slt i32 %i.dh, %i.c
  %i.dx = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 0)
  %i.dy = select i1 %.not49.2, i32 %i.dx, i32 %i.d
  %i.dz = sext i32 %i.dy to i64                   ; 5 uses
  %i.ea = getelementptr [4 x i8], ptr %i.y, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !46
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 2.343750e-02
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.dw
  %i.ee = add i32 %i.dh, 1                        ; 2 uses
  %.not49.3 = icmp slt i32 %i.ee, %i.c
  %i.ef = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eg = select i1 %.not49.3, i32 %i.ef, i32 %i.d
  %i.eh = sext i32 %i.eg to i64                   ; 5 uses
  %i.ei = getelementptr [4 x i8], ptr %i.y, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !46
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, 1.562500e-02
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ed
  %i.em = add i32 %i.dh, 2                        ; 2 uses
  %.not49.4 = icmp slt i32 %i.em, %i.c
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = select i1 %.not49.4, i32 %i.en, i32 %i.d
  %i.ep = sext i32 %i.eo to i64                   ; 5 uses
  %i.eq = getelementptr [4 x i8], ptr %i.y, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !46
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 3.906250e-03
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.el
  %i.eu = getelementptr [4 x i8], ptr %i.aa, i64 %i.dl
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !46
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 1.562500e-02
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.et
  %i.ey = getelementptr [4 x i8], ptr %i.aa, i64 %i.ds
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !46
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, 6.250000e-02
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ex
  %i.fc = getelementptr [4 x i8], ptr %i.aa, i64 %i.dz
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !46
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, 9.375000e-02
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.fb
  %i.fg = getelementptr [4 x i8], ptr %i.aa, i64 %i.eh
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !46
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 6.250000e-02
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.ff
  %i.fk = getelementptr [4 x i8], ptr %i.aa, i64 %i.ep
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !46
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, 1.562500e-02
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fm, %i.fj
  %i.fo = getelementptr [4 x i8], ptr %i.ac, i64 %i.dl
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !46
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, 2.343750e-02
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fn
  %i.fs = getelementptr [4 x i8], ptr %i.ac, i64 %i.ds
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !46
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, 9.375000e-02
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.fr
  %i.fw = getelementptr [4 x i8], ptr %i.ac, i64 %i.dz
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !46
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, 1.406250e-01
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fv
  %i.ga = getelementptr [4 x i8], ptr %i.ac, i64 %i.eh
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !46
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, 9.375000e-02
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fz
  %i.ge = getelementptr [4 x i8], ptr %i.ac, i64 %i.ep
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, 2.343750e-02
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.gd
  %i.gi = getelementptr [4 x i8], ptr %i.ai, i64 %i.dl
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !46
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, 1.562500e-02
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.gh
  %i.gm = getelementptr [4 x i8], ptr %i.ai, i64 %i.ds
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !46
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, 6.250000e-02
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gl
  %i.gq = getelementptr [4 x i8], ptr %i.ai, i64 %i.dz
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !46
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, 9.375000e-02
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.gp
  %i.gu = getelementptr [4 x i8], ptr %i.ai, i64 %i.eh
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !46
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 6.250000e-02
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.gt
  %i.gy = getelementptr [4 x i8], ptr %i.ai, i64 %i.ep
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !46
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, 1.562500e-02
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %i.gx
  %i.hc = getelementptr [4 x i8], ptr %i.w, i64 %i.dl
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !46
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, 3.906250e-03
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, %i.hb
  %i.hg = getelementptr [4 x i8], ptr %i.w, i64 %i.ds
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !46
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, 1.562500e-02
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, %i.hf
  %i.hk = getelementptr [4 x i8], ptr %i.w, i64 %i.dz
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !46
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, 2.343750e-02
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.hj
  %i.ho = getelementptr [4 x i8], ptr %i.w, i64 %i.eh
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !46
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, 1.562500e-02
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, %i.hn
  %i.hs = getelementptr [4 x i8], ptr %i.w, i64 %i.ep
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !46
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, 3.906250e-03
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %i.hr
  %i.hw = getelementptr [4 x i8], ptr %i.l, i64 %.04255
  store float %i.hv, ptr %i.hw, align 4, !tbaa !46
  %i.hx = add nuw i64 %.04255, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hx, %2
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !141
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_create_motion_kernel(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #17 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %3, 5.000000e-01 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn float %4, %4
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, %i.a
  %5 = fsub reassoc nsz arcp contract afn float %4, %i.c
  %i.d = uitofp reassoc nsz arcp contract afn i64 %1 to float
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.d
  %i.f = add i64 %1, -1                           ; 7 uses
  %i.g = uitofp reassoc nsz arcp contract afn i64 %i.f to float
  %i.h = fmul reassoc nnan nsz arcp contract afn float %i.g, 5.000000e-01
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, -1.000000e+00 ; 3 uses
  %i.j = fsub reassoc nsz arcp contract afn float f0xBF490FDB, %2
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.j) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.k = shl i64 %1, 3                            ; 2 uses
  %.not65 = icmp eq i64 %i.k, 0
  br i1 %.not65, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.l = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.i
  %i.m = insertelement <4 x float> poison, float %i.e, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

._crit_edge:                                      ; preds = %.split.1, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.split.1
  %.05463 = phi i64 [ %i.bl, %.split.1 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.o = uitofp reassoc nsz arcp contract afn i64 %.05463 to float
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.o, 1.250000e-01
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00 ; 3 uses
  %i.t = fsub reassoc nsz arcp contract afn float %i.s, %4 ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.a
  %6 = fadd reassoc nsz arcp contract afn float %i.t, %i.v
  %i.w = fadd reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, %cos
  %i.y = fmul reassoc nsz arcp contract afn float %i.s, %sin
  %i.z = fadd reassoc nsz arcp contract afn float %i.x, 1.000000e+00
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, 1.000000e+00
  %i.ab = fmul reassoc nsz arcp contract afn float %sin, %i.w
  %i.ac = fmul reassoc nsz arcp contract afn float %i.w, %cos
  %i.ad = fsub reassoc nsz arcp contract afn float %i.z, %i.ab
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, %i.ac
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.i
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, %i.i
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.af, i64 1
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ak = fsub reassoc nsz arcp contract afn <4 x float> %i.aj, %i.n
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.n
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.an = tail call reassoc nsz arcp contract afn <4 x float> @llvm.round.v4f32(<4 x float> %i.am) ; 4 uses
  %i.ao = extractelement <4 x float> %i.an, i64 0
  %i.ap = fptosi float %i.ao to i32               ; 4 uses
  %i.aq = extractelement <4 x float> %i.an, i64 1
  %i.ar = fptosi float %i.aq to i32               ; 4 uses
  %i.as = extractelement <4 x float> %i.an, i64 2
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = extractelement <4 x float> %i.an, i64 3
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = icmp slt i32 %i.at, 1
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = icmp ule i64 %i.f, %i.ax
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %brmerge = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %brmerge, label %.split, label %.preheader.split.split.preheader

.preheader.split.split.preheader:                 ; preds = %.preheader
  %i.az = icmp sgt i32 %i.ap, 0
  br i1 %i.az, label %bb.f, label %.preheader.split.split.1

.split:                                           ; preds = %.preheader.split.split.1, %bb.h, %bb.i, %.preheader
  %i.ba = icmp slt i32 %i.av, 1
  %i.bb = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bc = icmp ule i64 %i.f, %i.bb
  %invariant.gep.1 = getelementptr [4 x i8], ptr %0, i64 %i.bb ; 2 uses
  %brmerge.1 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %brmerge.1, label %.split.1, label %.preheader.split.split.preheader.1

.preheader.split.split.preheader.1:               ; preds = %.split
  %i.bd = icmp sgt i32 %i.ap, 0
  br i1 %i.bd, label %bb.b, label %.preheader.split.split.1.1

bb.b:                                             ; preds = %.preheader.split.split.preheader.1
  %i.be = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.bf = icmp ugt i64 %i.f, %i.be
  br i1 %i.bf, label %bb.c, label %.preheader.split.split.1.1

bb.c:                                             ; preds = %bb.b
  %i.bg = mul i64 %1, %i.be
  %gep.169 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bg
  store float 1.000000e+00, ptr %gep.169, align 4, !tbaa !46
  br label %.preheader.split.split.1.1

.preheader.split.split.1.1:                       ; preds = %bb.c, %bb.b, %.preheader.split.split.preheader.1
  %i.bh = icmp sgt i32 %i.ar, 0
  br i1 %i.bh, label %bb.d, label %.split.1

bb.d:                                             ; preds = %.preheader.split.split.1.1
  %i.bi = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.bj = icmp ugt i64 %i.f, %i.bi
  br i1 %i.bj, label %bb.e, label %.split.1

bb.e:                                             ; preds = %bb.d
  %i.bk = mul i64 %1, %i.bi
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bk
  store float 1.000000e+00, ptr %gep.1.1, align 4, !tbaa !46
  br label %.split.1

.split.1:                                         ; preds = %.preheader.split.split.1.1, %bb.d, %bb.e, %.split
  %i.bl = add nuw i64 %.05463, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.preheader

bb.f:                                             ; preds = %.preheader.split.split.preheader
  %i.bm = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.bn = icmp ugt i64 %i.f, %i.bm
  br i1 %i.bn, label %bb.g, label %.preheader.split.split.1

bb.g:                                             ; preds = %bb.f
  %i.bo = mul i64 %1, %i.bm
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float 1.000000e+00, ptr %gep, align 4, !tbaa !46
  br label %.preheader.split.split.1

.preheader.split.split.1:                         ; preds = %.preheader.split.split.preheader, %bb.f, %bb.g
  %i.bp = icmp sgt i32 %i.ar, 0
  br i1 %i.bp, label %bb.h, label %.split

bb.h:                                             ; preds = %.preheader.split.split.1
  %i.bq = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.br = icmp ugt i64 %i.f, %i.bq
  br i1 %i.br, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  %i.bs = mul i64 %1, %i.bq
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bs
  store float 1.000000e+00, ptr %gep.1, align 4, !tbaa !46
  br label %.split
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

end_hunk_0
