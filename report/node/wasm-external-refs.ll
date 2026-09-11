Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-external-refs?download=true
inline.NumInlined: 664
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal4wasm24simd_float16_bin_wrapperIsTnPFT_NS0_7Float16ES4_EXadL_ZNS1_6f16_leES4_S4_EEEEvm:bb.a
  %.signext.i.i.i.2 = sext i16 %.0.copyload.i.i.2 to i32
  %i.bw = insertelement <2 x i32> poison, i32 %.signext.i.i.i.2, i64 0
  %i.bx = insertelement <2 x i32> %i.bw, i32 %.signext.i.i2.i.2, i64 1
  %i.by = and <2 x i32> %i.bx, splat (i32 -2147483648)
  %i.bz = or <2 x i32> %i.by, %i.bv
  %i.ca = bitcast <2 x i32> %i.bz to <2 x float>  ; 2 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  %i.cd = fcmp ole float %i.cb, %i.cc
  %i.ce = sext i1 %i.cd to i16
  store i16 %i.ce, ptr %i.be, align 1
  %i.cf = add i64 %0, 6
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %.0.copyload.i.i.3 = load i16, ptr %i.cg, align 1 ; 2 uses
  %i.ch = add i64 %0, 22
  %i.ci = inttoptr i64 %i.ch to ptr
  %.0.copyload.i.i12.3 = load i16, ptr %i.ci, align 1 ; 2 uses
  %i.cj = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.3, i64 0
  %i.ck = insertelement <2 x i16> %i.cj, i16 %.0.copyload.i.i12.3, i64 1
  %i.cl = zext <2 x i16> %i.ck to <2 x i32>       ; 2 uses
  %i.cm = shl <2 x i32> %i.cl, splat (i32 17)     ; 2 uses
  %i.cn = lshr exact <2 x i32> %i.cm, splat (i32 4)
  %i.co = or disjoint <2 x i32> %i.cn, splat (i32 1879048192)
  %i.cp = bitcast <2 x i32> %i.co to <2 x float>
  %i.cq = and <2 x i32> %i.cl, splat (i32 32767)
  %i.cr = or disjoint <2 x i32> %i.cq, splat (i32 1056964608)
  %i.cs = bitcast <2 x i32> %i.cr to <2 x float>
  %i.ct = icmp ult <2 x i32> %i.cm, splat (i32 134217728)
  %i.cu = fadd <2 x float> %i.cs, splat (float -5.000000e-01)
  %i.cv = fmul <2 x float> %i.cp, splat (float 1.925930e-34)
  %i.cw = select <2 x i1> %i.ct, <2 x float> %i.cu, <2 x float> %i.cv
  %i.cx = bitcast <2 x float> %i.cw to <2 x i32>
  %.signext.i.i2.i.3 = sext i16 %.0.copyload.i.i12.3 to i32
  %.signext.i.i.i.3 = sext i16 %.0.copyload.i.i.3 to i32
  %i.cy = insertelement <2 x i32> poison, i32 %.signext.i.i.i.3, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %.signext.i.i2.i.3, i64 1
  %i.da = and <2 x i32> %i.cz, splat (i32 -2147483648)
  %i.db = or <2 x i32> %i.da, %i.cx
  %i.dc = bitcast <2 x i32> %i.db to <2 x float>  ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = extractelement <2 x float> %i.dc, i64 1
  %i.df = fcmp ole float %i.dd, %i.de
  %i.dg = sext i1 %i.df to i16
  store i16 %i.dg, ptr %i.cg, align 1
  %i.dh = add i64 %0, 8
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %.0.copyload.i.i.4 = load i16, ptr %i.di, align 1 ; 2 uses
  %i.dj = add i64 %0, 24
  %i.dk = inttoptr i64 %i.dj to ptr
  %.0.copyload.i.i12.4 = load i16, ptr %i.dk, align 1 ; 2 uses
  %i.dl = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.4, i64 0
  %i.dm = insertelement <2 x i16> %i.dl, i16 %.0.copyload.i.i12.4, i64 1
  %i.dn = zext <2 x i16> %i.dm to <2 x i32>       ; 2 uses
  %i.do = shl <2 x i32> %i.dn, splat (i32 17)     ; 2 uses
  %i.dp = lshr exact <2 x i32> %i.do, splat (i32 4)
  %i.dq = or disjoint <2 x i32> %i.dp, splat (i32 1879048192)
  %i.dr = bitcast <2 x i32> %i.dq to <2 x float>
  %i.ds = and <2 x i32> %i.dn, splat (i32 32767)
  %i.dt = or disjoint <2 x i32> %i.ds, splat (i32 1056964608)
  %i.du = bitcast <2 x i32> %i.dt to <2 x float>
  %i.dv = icmp ult <2 x i32> %i.do, splat (i32 134217728)
  %i.dw = fadd <2 x float> %i.du, splat (float -5.000000e-01)
  %i.dx = fmul <2 x float> %i.dr, splat (float 1.925930e-34)
  %i.dy = select <2 x i1> %i.dv, <2 x float> %i.dw, <2 x float> %i.dx
  %i.dz = bitcast <2 x float> %i.dy to <2 x i32>
  %.signext.i.i2.i.4 = sext i16 %.0.copyload.i.i12.4 to i32
  %.signext.i.i.i.4 = sext i16 %.0.copyload.i.i.4 to i32
  %i.ea = insertelement <2 x i32> poison, i32 %.signext.i.i.i.4, i64 0
  %i.eb = insertelement <2 x i32> %i.ea, i32 %.signext.i.i2.i.4, i64 1
  %i.ec = and <2 x i32> %i.eb, splat (i32 -2147483648)
  %i.ed = or <2 x i32> %i.ec, %i.dz
  %i.ee = bitcast <2 x i32> %i.ed to <2 x float>  ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  %i.eg = extractelement <2 x float> %i.ee, i64 1
  %i.eh = fcmp ole float %i.ef, %i.eg
  %i.ei = sext i1 %i.eh to i16
  store i16 %i.ei, ptr %i.di, align 1
  %i.ej = add i64 %0, 10
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %.0.copyload.i.i.5 = load i16, ptr %i.ek, align 1 ; 2 uses
  %i.el = add i64 %0, 26
  %i.em = inttoptr i64 %i.el to ptr
  %.0.copyload.i.i12.5 = load i16, ptr %i.em, align 1 ; 2 uses
  %i.en = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.5, i64 0
  %i.eo = insertelement <2 x i16> %i.en, i16 %.0.copyload.i.i12.5, i64 1
  %i.ep = zext <2 x i16> %i.eo to <2 x i32>       ; 2 uses
  %i.eq = shl <2 x i32> %i.ep, splat (i32 17)     ; 2 uses
  %i.er = lshr exact <2 x i32> %i.eq, splat (i32 4)
  %i.es = or disjoint <2 x i32> %i.er, splat (i32 1879048192)
  %i.et = bitcast <2 x i32> %i.es to <2 x float>
  %i.eu = and <2 x i32> %i.ep, splat (i32 32767)
  %i.ev = or disjoint <2 x i32> %i.eu, splat (i32 1056964608)
  %i.ew = bitcast <2 x i32> %i.ev to <2 x float>
  %i.ex = icmp ult <2 x i32> %i.eq, splat (i32 134217728)
  %i.ey = fadd <2 x float> %i.ew, splat (float -5.000000e-01)
  %i.ez = fmul <2 x float> %i.et, splat (float 1.925930e-34)
  %i.fa = select <2 x i1> %i.ex, <2 x float> %i.ey, <2 x float> %i.ez
  %i.fb = bitcast <2 x float> %i.fa to <2 x i32>
  %.signext.i.i2.i.5 = sext i16 %.0.copyload.i.i12.5 to i32
  %.signext.i.i.i.5 = sext i16 %.0.copyload.i.i.5 to i32
  %i.fc = insertelement <2 x i32> poison, i32 %.signext.i.i.i.5, i64 0
  %i.fd = insertelement <2 x i32> %i.fc, i32 %.signext.i.i2.i.5, i64 1
  %i.fe = and <2 x i32> %i.fd, splat (i32 -2147483648)
  %i.ff = or <2 x i32> %i.fe, %i.fb
  %i.fg = bitcast <2 x i32> %i.ff to <2 x float>  ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = extractelement <2 x float> %i.fg, i64 1
  %i.fj = fcmp ole float %i.fh, %i.fi
  %i.fk = sext i1 %i.fj to i16
  store i16 %i.fk, ptr %i.ek, align 1
  %i.fl = add i64 %0, 12
  %i.fm = inttoptr i64 %i.fl to ptr               ; 2 uses
  %.0.copyload.i.i.6 = load i16, ptr %i.fm, align 1 ; 2 uses
  %i.fn = add i64 %0, 28
  %i.fo = inttoptr i64 %i.fn to ptr
  %.0.copyload.i.i12.6 = load i16, ptr %i.fo, align 1 ; 2 uses
  %i.fp = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.6, i64 0
  %i.fq = insertelement <2 x i16> %i.fp, i16 %.0.copyload.i.i12.6, i64 1
  %i.fr = zext <2 x i16> %i.fq to <2 x i32>       ; 2 uses
  %i.fs = shl <2 x i32> %i.fr, splat (i32 17)     ; 2 uses
  %i.ft = lshr exact <2 x i32> %i.fs, splat (i32 4)
  %i.fu = or disjoint <2 x i32> %i.ft, splat (i32 1879048192)
  %i.fv = bitcast <2 x i32> %i.fu to <2 x float>
  %i.fw = and <2 x i32> %i.fr, splat (i32 32767)
  %i.fx = or disjoint <2 x i32> %i.fw, splat (i32 1056964608)
  %i.fy = bitcast <2 x i32> %i.fx to <2 x float>
  %i.fz = icmp ult <2 x i32> %i.fs, splat (i32 134217728)
  %i.ga = fadd <2 x float> %i.fy, splat (float -5.000000e-01)
  %i.gb = fmul <2 x float> %i.fv, splat (float 1.925930e-34)
  %i.gc = select <2 x i1> %i.fz, <2 x float> %i.ga, <2 x float> %i.gb
  %i.gd = bitcast <2 x float> %i.gc to <2 x i32>
  %.signext.i.i2.i.6 = sext i16 %.0.copyload.i.i12.6 to i32
  %.signext.i.i.i.6 = sext i16 %.0.copyload.i.i.6 to i32
  %i.ge = insertelement <2 x i32> poison, i32 %.signext.i.i.i.6, i64 0
  %i.gf = insertelement <2 x i32> %i.ge, i32 %.signext.i.i2.i.6, i64 1
  %i.gg = and <2 x i32> %i.gf, splat (i32 -2147483648)
  %i.gh = or <2 x i32> %i.gg, %i.gd
  %i.gi = bitcast <2 x i32> %i.gh to <2 x float>  ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  %i.gk = extractelement <2 x float> %i.gi, i64 1
  %i.gl = fcmp ole float %i.gj, %i.gk
  %i.gm = sext i1 %i.gl to i16
  store i16 %i.gm, ptr %i.fm, align 1
  %i.gn = add i64 %0, 14
  %i.go = inttoptr i64 %i.gn to ptr               ; 2 uses
  %.0.copyload.i.i.7 = load i16, ptr %i.go, align 1 ; 2 uses
  %i.gp = add i64 %0, 30
  %i.gq = inttoptr i64 %i.gp to ptr
  %.0.copyload.i.i12.7 = load i16, ptr %i.gq, align 1 ; 2 uses
  %i.gr = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.7, i64 0
  %i.gs = insertelement <2 x i16> %i.gr, i16 %.0.copyload.i.i12.7, i64 1
  %i.gt = zext <2 x i16> %i.gs to <2 x i32>       ; 2 uses
  %i.gu = shl <2 x i32> %i.gt, splat (i32 17)     ; 2 uses
  %i.gv = lshr exact <2 x i32> %i.gu, splat (i32 4)
  %i.gw = or disjoint <2 x i32> %i.gv, splat (i32 1879048192)
  %i.gx = bitcast <2 x i32> %i.gw to <2 x float>
  %i.gy = and <2 x i32> %i.gt, splat (i32 32767)
  %i.gz = or disjoint <2 x i32> %i.gy, splat (i32 1056964608)
  %i.ha = bitcast <2 x i32> %i.gz to <2 x float>
  %i.hb = icmp ult <2 x i32> %i.gu, splat (i32 134217728)
  %i.hc = fadd <2 x float> %i.ha, splat (float -5.000000e-01)
  %i.hd = fmul <2 x float> %i.gx, splat (float 1.925930e-34)
  %i.he = select <2 x i1> %i.hb, <2 x float> %i.hc, <2 x float> %i.hd
  %i.hf = bitcast <2 x float> %i.he to <2 x i32>
  %.signext.i.i2.i.7 = sext i16 %.0.copyload.i.i12.7 to i32
  %.signext.i.i.i.7 = sext i16 %.0.copyload.i.i.7 to i32
  %i.hg = insertelement <2 x i32> poison, i32 %.signext.i.i.i.7, i64 0
  %i.hh = insertelement <2 x i32> %i.hg, i32 %.signext.i.i2.i.7, i64 1
  %i.hi = and <2 x i32> %i.hh, splat (i32 -2147483648)
  %i.hj = or <2 x i32> %i.hi, %i.hf
  %i.hk = bitcast <2 x i32> %i.hj to <2 x float>  ; 2 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 0
  %i.hm = extractelement <2 x float> %i.hk, i64 1
  %i.hn = fcmp ole float %i.hl, %i.hm
  %i.ho = sext i1 %i.hn to i16
  store i16 %i.ho, ptr %i.go, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm7f16_addENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1 ; 2 uses
  %i.c = zext <2 x i16> %i.b to <2 x i32>         ; 2 uses
  %i.d = sext <2 x i16> %i.b to <2 x i32>
  %i.e = shl <2 x i32> %i.c, splat (i32 17)       ; 2 uses
  %i.f = lshr exact <2 x i32> %i.e, splat (i32 4)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1879048192)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = and <2 x i32> %i.c, splat (i32 32767)
  %i.j = or disjoint <2 x i32> %i.i, splat (i32 1056964608)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = icmp ult <2 x i32> %i.e, splat (i32 134217728)
  %i.m = fadd <2 x float> %i.k, splat (float -5.000000e-01)
  %i.n = fmul <2 x float> %i.h, splat (float 1.925930e-34)
  %i.o = select <2 x i1> %i.l, <2 x float> %i.m, <2 x float> %i.n
  %i.p = bitcast <2 x float> %i.o to <2 x i32>
  %i.q = and <2 x i32> %i.d, splat (i32 -2147483648)
  %i.r = or <2 x i32> %i.q, %i.p
  %i.s = bitcast <2 x i32> %i.r to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.s
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.t = tail call float @llvm.fabs.f32(float %2)
  %i.u = fmul float %i.t, f0x77800000
  %i.v = fmul float %i.u, f0x08800000
  %i.w = bitcast float %2 to i32                  ; 2 uses
  %i.x = shl i32 %i.w, 1                          ; 2 uses
  %i.y = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.y, 1
  %i.z = and i32 %spec.store.select.i.i, 2139095040
  %i.aa = add nuw i32 %i.z, 125829120
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = fadd float %i.v, %i.ab
  %i.ad = bitcast float %i.ac to i32              ; 2 uses
  %i.ae = lshr i32 %i.ad, 13
  %i.af = and i32 %i.ae, 31744
  %i.ag = and i32 %i.ad, 4095
  %i.ah = add nuw nsw i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.w, 16
  %i.aj = and i32 %i.ai, 32768
  %i.ak = icmp ugt i32 %i.x, -16777216
  %i.al = select i1 %i.ak, i32 32256, i32 %i.ah
  %i.am = or i32 %i.al, %i.aj
  %i.an = trunc nuw i32 %i.am to i16
  ret i16 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm17f16x8_add_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1 ; 2 uses
  %i.i = zext <2 x i16> %i.h to <2 x i32>         ; 2 uses
  %i.j = shl <2 x i32> %i.i, splat (i32 17)       ; 2 uses
  %i.k = lshr exact <2 x i32> %i.j, splat (i32 4)
  %i.l = or disjoint <2 x i32> %i.k, splat (i32 1879048192)
  %i.m = bitcast <2 x i32> %i.l to <2 x float>
  %i.n = and <2 x i32> %i.i, splat (i32 32767)
  %i.o = or disjoint <2 x i32> %i.n, splat (i32 1056964608)
  %i.p = bitcast <2 x i32> %i.o to <2 x float>
  %i.q = icmp ult <2 x i32> %i.j, splat (i32 134217728)
  %i.r = fadd <2 x float> %i.p, splat (float -5.000000e-01)
  %i.s = fmul <2 x float> %i.m, splat (float 1.925930e-34)
  %i.t = select <2 x i1> %i.q, <2 x float> %i.r, <2 x float> %i.s
  %i.u = bitcast <2 x float> %i.t to <2 x i32>
  %i.v = sext <2 x i16> %i.h to <2 x i32>
  %i.w = and <2 x i32> %i.v, splat (i32 -2147483648)
  %i.x = or <2 x i32> %i.w, %i.u
  %i.y = bitcast <2 x i32> %i.x to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.y
  %1 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.z = tail call float @llvm.fabs.f32(float %1)
  %i.aa = fmul float %i.z, f0x77800000
  %i.ab = fmul float %i.aa, f0x08800000
  %i.ac = bitcast float %1 to i32                 ; 2 uses
  %i.ad = shl i32 %i.ac, 1                        ; 2 uses
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.ae, 1
  %i.af = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ag = add nuw i32 %i.af, 125829120
  %i.ah = bitcast i32 %i.ag to float
  %i.ai = fadd float %i.ab, %i.ah
  %i.aj = bitcast float %i.ai to i32              ; 2 uses
  %i.ak = lshr i32 %i.aj, 13
  %i.al = and i32 %i.ak, 31744
  %i.am = and i32 %i.aj, 4095
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = lshr i32 %i.ac, 16
  %i.ap = and i32 %i.ao, 32768
  %i.aq = icmp ugt i32 %i.ad, -16777216
  %i.ar = select i1 %i.aq, i32 32256, i32 %i.an
  %i.as = or i32 %i.ar, %i.ap
  %i.at = trunc nuw i32 %i.as to i16
  store i16 %i.at, ptr %i.d, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_addES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !13

_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_addES3_S3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm7f16_subENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1 ; 2 uses
  %i.c = zext <2 x i16> %i.b to <2 x i32>         ; 2 uses
  %i.d = sext <2 x i16> %i.b to <2 x i32>
  %i.e = shl <2 x i32> %i.c, splat (i32 17)       ; 2 uses
  %i.f = lshr exact <2 x i32> %i.e, splat (i32 4)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1879048192)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = and <2 x i32> %i.c, splat (i32 32767)
  %i.j = or disjoint <2 x i32> %i.i, splat (i32 1056964608)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = icmp ult <2 x i32> %i.e, splat (i32 134217728)
  %i.m = fadd <2 x float> %i.k, splat (float -5.000000e-01)
  %i.n = fmul <2 x float> %i.h, splat (float 1.925930e-34)
  %i.o = select <2 x i1> %i.l, <2 x float> %i.m, <2 x float> %i.n
  %i.p = bitcast <2 x float> %i.o to <2 x i32>
  %i.q = and <2 x i32> %i.d, splat (i32 -2147483648)
  %i.r = or <2 x i32> %i.q, %i.p
  %i.s = bitcast <2 x i32> %i.r to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fmul float %i.u, f0x77800000
  %i.w = fmul float %i.v, f0x08800000
  %i.x = bitcast float %i.t to i32                ; 2 uses
  %i.y = shl i32 %i.x, 1                          ; 2 uses
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.z, 1
  %i.aa = and i32 %spec.store.select.i.i, 2139095040
  %i.ab = add nuw i32 %i.aa, 125829120
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = fadd float %i.w, %i.ac
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = lshr i32 %i.ae, 13
  %i.ag = and i32 %i.af, 31744
  %i.ah = and i32 %i.ae, 4095
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.x, 16
  %i.ak = and i32 %i.aj, 32768
  %i.al = icmp ugt i32 %i.y, -16777216
  %i.am = select i1 %i.al, i32 32256, i32 %i.ai
  %i.an = or i32 %i.am, %i.ak
  %i.ao = trunc nuw i32 %i.an to i16
  ret i16 %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm17f16x8_sub_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1 ; 2 uses
  %i.i = zext <2 x i16> %i.h to <2 x i32>         ; 2 uses
  %i.j = shl <2 x i32> %i.i, splat (i32 17)       ; 2 uses
  %i.k = lshr exact <2 x i32> %i.j, splat (i32 4)
  %i.l = or disjoint <2 x i32> %i.k, splat (i32 1879048192)
  %i.m = bitcast <2 x i32> %i.l to <2 x float>
  %i.n = and <2 x i32> %i.i, splat (i32 32767)
  %i.o = or disjoint <2 x i32> %i.n, splat (i32 1056964608)
  %i.p = bitcast <2 x i32> %i.o to <2 x float>
  %i.q = icmp ult <2 x i32> %i.j, splat (i32 134217728)
  %i.r = fadd <2 x float> %i.p, splat (float -5.000000e-01)
  %i.s = fmul <2 x float> %i.m, splat (float 1.925930e-34)
  %i.t = select <2 x i1> %i.q, <2 x float> %i.r, <2 x float> %i.s
  %i.u = bitcast <2 x float> %i.t to <2 x i32>
  %i.v = sext <2 x i16> %i.h to <2 x i32>
  %i.w = and <2 x i32> %i.v, splat (i32 -2147483648)
  %i.x = or <2 x i32> %i.w, %i.u
  %i.y = bitcast <2 x i32> %i.x to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.y, %shift
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = tail call float @llvm.fabs.f32(float %i.z)
  %i.ab = fmul float %i.aa, f0x77800000
  %i.ac = fmul float %i.ab, f0x08800000
  %i.ad = bitcast float %i.z to i32               ; 2 uses
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  %i.af = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.af, 1
  %i.ag = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ah = add nuw i32 %i.ag, 125829120
  %i.ai = bitcast i32 %i.ah to float
  %i.aj = fadd float %i.ac, %i.ai
  %i.ak = bitcast float %i.aj to i32              ; 2 uses
  %i.al = lshr i32 %i.ak, 13
  %i.am = and i32 %i.al, 31744
  %i.an = and i32 %i.ak, 4095
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %i.ap = lshr i32 %i.ad, 16
  %i.aq = and i32 %i.ap, 32768
  %i.ar = icmp ugt i32 %i.ae, -16777216
  %i.as = select i1 %i.ar, i32 32256, i32 %i.ao
  %i.at = or i32 %i.as, %i.aq
  %i.au = trunc nuw i32 %i.at to i16
  store i16 %i.au, ptr %i.d, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_subES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !14

_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_subES3_S3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm7f16_mulENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1 ; 2 uses
  %i.c = zext <2 x i16> %i.b to <2 x i32>         ; 2 uses
  %i.d = sext <2 x i16> %i.b to <2 x i32>
  %i.e = shl <2 x i32> %i.c, splat (i32 17)       ; 2 uses
  %i.f = lshr exact <2 x i32> %i.e, splat (i32 4)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1879048192)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = and <2 x i32> %i.c, splat (i32 32767)
  %i.j = or disjoint <2 x i32> %i.i, splat (i32 1056964608)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = icmp ult <2 x i32> %i.e, splat (i32 134217728)
  %i.m = fadd <2 x float> %i.k, splat (float -5.000000e-01)
  %i.n = fmul <2 x float> %i.h, splat (float 1.925930e-34)
  %i.o = select <2 x i1> %i.l, <2 x float> %i.m, <2 x float> %i.n
  %i.p = bitcast <2 x float> %i.o to <2 x i32>
  %i.q = and <2 x i32> %i.d, splat (i32 -2147483648)
  %i.r = or <2 x i32> %i.q, %i.p
  %i.s = bitcast <2 x i32> %i.r to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.s
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fmul float %i.u, f0x77800000
  %i.w = fmul float %i.v, f0x08800000
  %i.x = bitcast float %i.t to i32                ; 2 uses
  %i.y = shl i32 %i.x, 1                          ; 2 uses
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.z, 1
  %i.aa = and i32 %spec.store.select.i.i, 2139095040
  %i.ab = add nuw i32 %i.aa, 125829120
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = fadd float %i.w, %i.ac
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = lshr i32 %i.ae, 13
  %i.ag = and i32 %i.af, 31744
  %i.ah = and i32 %i.ae, 4095
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.x, 16
  %i.ak = and i32 %i.aj, 32768
  %i.al = icmp ugt i32 %i.y, -16777216
  %i.am = select i1 %i.al, i32 32256, i32 %i.ai
  %i.an = or i32 %i.am, %i.ak
  %i.ao = trunc nuw i32 %i.an to i16
  ret i16 %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm29switch_from_the_central_stackEPNS0_7IsolateE:bb.a
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.d) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm34switch_to_the_central_stack_for_jsEPNS0_7IsolateEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 %1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 1, ptr %i.i, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm36switch_from_the_central_stack_for_jsEPNS0_7IsolateE(ptr noundef initializes((448, 449)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.g = ptrtoint ptr %i.f to i64
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #14
  ret void
}

declare noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm10grow_stackEPNS0_7IsolateEPvmmm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck17WasmHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %3) #14
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = call noundef zeroext i1 @_ZN2v88internal7Isolate16IsOnCentralStackEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, %2
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, i64 20480, i64 40960
  %i.i = add i64 %i.e, %i.h
  %i.j = call noundef zeroext i1 @_ZN2v88internal4wasm11StackMemory4GrowEmm(ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 noundef %4, i64 noundef %i.i) #14
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %..i = select i1 %.not.i, ptr %i.c, ptr %i.l    ; 2 uses
  %i.m = load ptr, ptr %..i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.c) #14
  %i.v = ptrtoint ptr %i.u to i64
  call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %i.v) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.2 = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.2
}

declare noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck17WasmHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal7Isolate16IsOnCentralStackEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal4wasm11StackMemory4GrowEmm(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm12shrink_stackEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN2v88internal4wasm11StackMemory6ShrinkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.i = ptrtoint ptr %i.h to i64
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef %i.i) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare noundef i64 @_ZN2v88internal4wasm11StackMemory6ShrinkEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal4wasm11load_old_fpEPNS0_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

declare void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #5

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @ceilf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @floorf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @truncf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @nearbyintf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{i8 0, i8 2}
!26 = !{}
end_hunk_1
