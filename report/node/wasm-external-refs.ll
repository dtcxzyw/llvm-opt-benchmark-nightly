inline.NumInlined: 664
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal4wasm24simd_float16_bin_wrapperIsTnPFT_NS0_7Float16ES4_EXadL_ZNS1_6f16_leES4_S4_EEEEvm:bb.a
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
define hidden void @_ZN2v88internal4wasm17f16x8_add_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1 ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1
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
  %.signext.i.i2.i.i = sext i16 %.0.copyload.i.i13.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i to i32
  %1 = insertelement <2 x i32> poison, i32 %.signext.i.i.i.i, i64 0
  %2 = insertelement <2 x i32> %1, i32 %.signext.i.i2.i.i, i64 1
  %i.v = and <2 x i32> %2, splat (i32 -2147483648)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = bitcast <2 x i32> %i.w to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.x
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = fmul float %i.z, f0x77800000
  %i.ab = fmul float %i.aa, f0x08800000
  %i.ac = bitcast float %i.y to i32               ; 2 uses
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
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_addES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !12

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
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1 ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1
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
  %.signext.i.i2.i.i = sext i16 %.0.copyload.i.i13.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i to i32
  %1 = insertelement <2 x i32> poison, i32 %.signext.i.i.i.i, i64 0
  %2 = insertelement <2 x i32> %1, i32 %.signext.i.i2.i.i, i64 1
  %i.v = and <2 x i32> %2, splat (i32 -2147483648)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = bitcast <2 x i32> %i.w to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.x, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = fmul float %i.z, f0x77800000
  %i.ab = fmul float %i.aa, f0x08800000
  %i.ac = bitcast float %i.y to i32               ; 2 uses
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
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_subES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !13

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
define hidden void @_ZN2v88internal4wasm17f16x8_mul_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1 ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1
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
  %.signext.i.i2.i.i = sext i16 %.0.copyload.i.i13.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i to i32
  %1 = insertelement <2 x i32> poison, i32 %.signext.i.i.i.i, i64 0
  %2 = insertelement <2 x i32> %1, i32 %.signext.i.i2.i.i, i64 1
  %i.v = and <2 x i32> %2, splat (i32 -2147483648)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = bitcast <2 x i32> %i.w to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.x
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = fmul float %i.z, f0x77800000
  %i.ab = fmul float %i.aa, f0x08800000
  %i.ac = bitcast float %i.y to i32               ; 2 uses
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
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_mulES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !14

_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_mulES3_S3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float                ; 3 uses
  %i.p = zext i16 %1 to i32                       ; 2 uses
  %i.q = shl i32 %i.p, 17                         ; 2 uses
  %i.r = lshr exact i32 %i.q, 4
  %i.s = or disjoint i32 %i.r, 1879048192
  %i.t = bitcast i32 %i.s to float
  %i.u = and i32 %i.p, 32767
  %i.v = or disjoint i32 %i.u, 1056964608
  %i.w = bitcast i32 %i.v to float
  %i.x = icmp ult i32 %i.q, 134217728
  %i.y = fadd float %i.w, -5.000000e-01
  %i.z = fmul float %i.t, 1.925930e-34
  %.v.i.i1 = select i1 %i.x, float %i.y, float %i.z
  %i.aa = bitcast float %.v.i.i1 to i32
  %.signext.i.i2 = sext i16 %1 to i32
  %i.ab = and i32 %.signext.i.i2, -2147483648
  %i.ac = or i32 %i.ab, %i.aa                     ; 2 uses
  %i.ad = bitcast i32 %i.ac to float              ; 2 uses
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = fdiv float %i.o, %i.ad
  br label %_ZN2v84base6DivideIfEET_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %or.cond.i = fcmp ueq float %i.o, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v84base6DivideIfEET_S2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp slt i32 %i.ac, 0
  %i.ah = fcmp oge float %i.o, 0.000000e+00
  %i.ai = xor i1 %i.ah, %i.ag
  br i1 %i.ai, label %_ZN2v84base6DivideIfEET_S2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %_ZN2v84base6DivideIfEET_S2_S2_.exit

_ZN2v84base6DivideIfEET_S2_S2_.exit:              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi float [ %i.af, %bb.b ], [ -inf, %bb.e ], [ +qnan, %bb.c ], [ +inf, %bb.d ] ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %.0.i)
  %i.ak = fmul float %i.aj, f0x77800000
  %i.al = fmul float %i.ak, f0x08800000
  %i.am = bitcast float %.0.i to i32              ; 2 uses
  %i.an = shl i32 %i.am, 1                        ; 2 uses
  %i.ao = tail call i32 @llvm.umax.i32(i32 %i.an, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.ao, 1
  %i.ap = and i32 %spec.store.select.i.i, 2139095040
  %i.aq = add nuw i32 %i.ap, 125829120
  %i.ar = bitcast i32 %i.aq to float
  %i.as = fadd float %i.al, %i.ar
  %i.at = bitcast float %i.as to i32              ; 2 uses
  %i.au = lshr i32 %i.at, 13
  %i.av = and i32 %i.au, 31744
  %i.aw = and i32 %i.at, 4095
  %i.ax = add nuw nsw i32 %i.av, %i.aw
  %i.ay = lshr i32 %i.am, 16
  %i.az = and i32 %i.ay, 32768
  %i.ba = icmp ugt i32 %i.an, -16777216
  %i.bb = select i1 %i.ba, i32 32256, i32 %i.ax
  %i.bc = or i32 %i.bb, %i.az
  %i.bd = trunc nuw i32 %i.bc to i16
  ret i16 %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17f16x8_div_wrapperEm(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_divES3_S3_EEEEvm(i64 noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_divES3_S3_EEEEvm(i64 noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.c = add i64 %0, %i.b
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i = load i16, ptr %i.d, align 1  ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13 = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = zext i16 %.0.copyload.i.i to i32         ; 2 uses
  %i.h = shl i32 %i.g, 17                         ; 2 uses
  %i.i = lshr exact i32 %i.h, 4
  %i.j = or disjoint i32 %i.i, 1879048192
  %i.k = bitcast i32 %i.j to float
  %i.l = and i32 %i.g, 32767
  %i.m = or disjoint i32 %i.l, 1056964608
  %i.n = bitcast i32 %i.m to float
  %i.o = icmp ult i32 %i.h, 134217728
  %i.p = fadd float %i.n, -5.000000e-01
  %i.q = fmul float %i.k, 1.925930e-34
  %.v.i.i.i = select i1 %i.o, float %i.p, float %i.q
  %i.r = bitcast float %.v.i.i.i to i32
  %.signext.i.i.i = sext i16 %.0.copyload.i.i to i32
  %i.s = and i32 %.signext.i.i.i, -2147483648
  %i.t = or i32 %i.s, %i.r
  %i.u = bitcast i32 %i.t to float                ; 3 uses
  %i.v = zext i16 %.0.copyload.i.i13 to i32       ; 2 uses
  %i.w = shl i32 %i.v, 17                         ; 2 uses
  %i.x = lshr exact i32 %i.w, 4
  %i.y = or disjoint i32 %i.x, 1879048192
  %i.z = bitcast i32 %i.y to float
  %i.aa = and i32 %i.v, 32767
  %i.ab = or disjoint i32 %i.aa, 1056964608
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = icmp ult i32 %i.w, 134217728
  %i.ae = fadd float %i.ac, -5.000000e-01
  %i.af = fmul float %i.z, 1.925930e-34
  %.v.i.i1.i = select i1 %i.ad, float %i.ae, float %i.af
  %i.ag = bitcast float %.v.i.i1.i to i32
  %.signext.i.i2.i = sext i16 %.0.copyload.i.i13 to i32
  %i.ah = and i32 %.signext.i.i2.i, -2147483648
  %i.ai = or i32 %i.ah, %i.ag                     ; 2 uses
  %i.aj = bitcast i32 %i.ai to float              ; 2 uses
  %i.ak = fcmp une float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = fdiv float %i.u, %i.aj
  br label %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit

bb.e:                                             ; preds = %bb.c
  %or.cond.i.i = fcmp ueq float %i.u, 0.000000e+00
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp slt i32 %i.ai, 0
  %i.an = fcmp oge float %i.u, 0.000000e+00
  %i.ao = xor i1 %i.an, %i.am
  br i1 %i.ao, label %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit

_ZN2v88internal4wasm7f16_divENS0_7Float16ES2_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_:bb.a
  %i.aj = fcmp ogt float %i.o, %i.ad
  %i.ak = select i1 %i.aj, float %i.o, float %i.ad
  br label %_ZN2v88internal5JSMaxIfEET_S2_S2_.exit

_ZN2v88internal5JSMaxIfEET_S2_S2_.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ %i.ak, %bb.d ], [ %i.o, %bb.a ], [ %i.ad, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.al = tail call float @llvm.fabs.f32(float %.0.i)
  %i.am = fmul float %i.al, f0x77800000
  %i.an = fmul float %i.am, f0x08800000
  %i.ao = bitcast float %.0.i to i32              ; 2 uses
  %i.ap = shl i32 %i.ao, 1                        ; 2 uses
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.aq, 1
  %i.ar = and i32 %spec.store.select.i.i, 2139095040
  %i.as = add nuw i32 %i.ar, 125829120
  %i.at = bitcast i32 %i.as to float
  %i.au = fadd float %i.an, %i.at
  %i.av = bitcast float %i.au to i32              ; 2 uses
  %i.aw = lshr i32 %i.av, 13
  %i.ax = and i32 %i.aw, 31744
  %i.ay = and i32 %i.av, 4095
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.ao, 16
  %i.bb = and i32 %i.ba, 32768
  %i.bc = icmp ugt i32 %i.ap, -16777216
  %i.bd = select i1 %i.bc, i32 32256, i32 %i.az
  %i.be = or i32 %i.bd, %i.bb
  %i.bf = trunc nuw i32 %i.be to i16
  ret i16 %i.bf
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17f16x8_max_wrapperEm(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_maxES3_S3_EEEEvm(i64 noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_7f16_maxES3_S3_EEEEvm(i64 noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.c = add i64 %0, %i.b
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i = load i16, ptr %i.d, align 1  ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13 = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = zext i16 %.0.copyload.i.i to i32         ; 2 uses
  %i.h = shl i32 %i.g, 17                         ; 2 uses
  %i.i = lshr exact i32 %i.h, 4
  %i.j = or disjoint i32 %i.i, 1879048192
  %i.k = bitcast i32 %i.j to float
  %i.l = and i32 %i.g, 32767
  %i.m = or disjoint i32 %i.l, 1056964608
  %i.n = bitcast i32 %i.m to float
  %i.o = icmp ult i32 %i.h, 134217728
  %i.p = fadd float %i.n, -5.000000e-01
  %i.q = fmul float %i.k, 1.925930e-34
  %.v.i.i.i = select i1 %i.o, float %i.p, float %i.q
  %i.r = bitcast float %.v.i.i.i to i32
  %.signext.i.i.i = sext i16 %.0.copyload.i.i to i32
  %i.s = and i32 %.signext.i.i.i, -2147483648
  %i.t = or i32 %i.s, %i.r                        ; 2 uses
  %i.u = bitcast i32 %i.t to float                ; 5 uses
  %i.v = zext i16 %.0.copyload.i.i13 to i32       ; 2 uses
  %i.w = shl i32 %i.v, 17                         ; 2 uses
  %i.x = lshr exact i32 %i.w, 4
  %i.y = or disjoint i32 %i.x, 1879048192
  %i.z = bitcast i32 %i.y to float
  %i.aa = and i32 %i.v, 32767
  %i.ab = or disjoint i32 %i.aa, 1056964608
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = icmp ult i32 %i.w, 134217728
  %i.ae = fadd float %i.ac, -5.000000e-01
  %i.af = fmul float %i.z, 1.925930e-34
  %.v.i.i1.i = select i1 %i.ad, float %i.ae, float %i.af
  %i.ag = bitcast float %.v.i.i1.i to i32
  %.signext.i.i2.i = sext i16 %.0.copyload.i.i13 to i32
  %i.ah = and i32 %.signext.i.i2.i, -2147483648
  %i.ai = or i32 %i.ah, %i.ag                     ; 2 uses
  %i.aj = bitcast i32 %i.ai to float              ; 4 uses
  %i.ak = fcmp uno float %i.u, 0.000000e+00
  br i1 %i.ak, label %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = fcmp uno float %i.aj, 0.000000e+00
  br i1 %i.al, label %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = icmp sgt i32 %i.t, -1
  %i.an = icmp slt i32 %i.ai, 0
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp ogt float %i.u, %i.aj
  %i.aq = select i1 %i.ap, float %i.u, float %i.aj
  br label %_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit

_ZN2v88internal4wasm7f16_maxENS0_7Float16ES2_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi float [ %i.aq, %bb.f ], [ %i.u, %bb.c ], [ %i.aj, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.ar = tail call float @llvm.fabs.f32(float %.0.i.i)
  %i.as = fmul float %i.ar, f0x77800000
  %i.at = fmul float %i.as, f0x08800000
  %i.au = bitcast float %.0.i.i to i32            ; 2 uses
  %i.av = shl i32 %i.au, 1                        ; 2 uses
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.av, i32 1895825408)
  %spec.store.select.i.i.i = lshr exact i32 %i.aw, 1
  %i.ax = and i32 %spec.store.select.i.i.i, 2139095040
  %i.ay = add nuw i32 %i.ax, 125829120
  %i.az = bitcast i32 %i.ay to float
  %i.ba = fadd float %i.at, %i.az
  %i.bb = bitcast float %i.ba to i32              ; 2 uses
  %i.bc = lshr i32 %i.bb, 13
  %i.bd = and i32 %i.bc, 31744
  %i.be = and i32 %i.bb, 4095
  %i.bf = add nuw nsw i32 %i.bd, %i.be
  %i.bg = lshr i32 %i.au, 16
  %i.bh = and i32 %i.bg, 32768
  %i.bi = icmp ugt i32 %i.av, -16777216
  %i.bj = select i1 %i.bi, i32 32256, i32 %i.bf
  %i.bk = or i32 %i.bj, %i.bh
  %i.bl = trunc nuw i32 %i.bk to i16
  store i16 %i.bl, ptr %i.d, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm8f16_pminENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %1, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %0, i64 1 ; 2 uses
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
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.u = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %.sroa.speculated = select i1 %i.v, float %i.t, float %i.u ; 2 uses
  %i.w = tail call float @llvm.fabs.f32(float %.sroa.speculated)
  %i.x = fmul float %i.w, f0x77800000
  %i.y = fmul float %i.x, f0x08800000
  %i.z = bitcast float %.sroa.speculated to i32   ; 2 uses
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.ab, 1
  %i.ac = and i32 %spec.store.select.i.i, 2139095040
  %i.ad = add nuw i32 %i.ac, 125829120
  %i.ae = bitcast i32 %i.ad to float
  %i.af = fadd float %i.y, %i.ae
  %i.ag = bitcast float %i.af to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 13
  %i.ai = and i32 %i.ah, 31744
  %i.aj = and i32 %i.ag, 4095
  %i.ak = add nuw nsw i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.z, 16
  %i.am = and i32 %i.al, 32768
  %i.an = icmp ugt i32 %i.aa, -16777216
  %i.ao = select i1 %i.an, i32 32256, i32 %i.ak
  %i.ap = or i32 %i.ao, %i.am
  %i.aq = trunc nuw i32 %i.ap to i16
  ret i16 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f16x8_pmin_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1 ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i13.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i.i, i64 1
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
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i to i32
  %.signext.i.i2.i.i = sext i16 %.0.copyload.i.i13.i to i32
  %1 = insertelement <2 x i32> poison, i32 %.signext.i.i2.i.i, i64 0
  %2 = insertelement <2 x i32> %1, i32 %.signext.i.i.i.i, i64 1
  %i.v = and <2 x i32> %2, splat (i32 -2147483648)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = bitcast <2 x i32> %i.w to <2 x float>    ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 2 uses
  %i.aa = fcmp olt float %i.y, %i.z
  %.sroa.speculated.i.i = select i1 %i.aa, float %i.y, float %i.z ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %.sroa.speculated.i.i)
  %i.ac = fmul float %i.ab, f0x77800000
  %i.ad = fmul float %i.ac, f0x08800000
  %i.ae = bitcast float %.sroa.speculated.i.i to i32 ; 2 uses
  %i.af = shl i32 %i.ae, 1                        ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.ag, 1
  %i.ah = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ai = add nuw i32 %i.ah, 125829120
  %i.aj = bitcast i32 %i.ai to float
  %i.ak = fadd float %i.ad, %i.aj
  %i.al = bitcast float %i.ak to i32              ; 2 uses
  %i.am = lshr i32 %i.al, 13
  %i.an = and i32 %i.am, 31744
  %i.ao = and i32 %i.al, 4095
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ae, 16
  %i.ar = and i32 %i.aq, 32768
  %i.as = icmp ugt i32 %i.af, -16777216
  %i.at = select i1 %i.as, i32 32256, i32 %i.ap
  %i.au = or i32 %i.at, %i.ar
  %i.av = trunc nuw i32 %i.au to i16
  store i16 %i.av, ptr %i.d, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_8f16_pminES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !18

_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_8f16_pminES3_S3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm8f16_pmaxENS0_7Float16ES2_(i16 %0, i16 %1) local_unnamed_addr #3 {
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
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.u = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %.sroa.speculated = select i1 %i.v, float %i.u, float %i.t ; 2 uses
  %i.w = tail call float @llvm.fabs.f32(float %.sroa.speculated)
  %i.x = fmul float %i.w, f0x77800000
  %i.y = fmul float %i.x, f0x08800000
  %i.z = bitcast float %.sroa.speculated to i32   ; 2 uses
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.ab, 1
  %i.ac = and i32 %spec.store.select.i.i, 2139095040
  %i.ad = add nuw i32 %i.ac, 125829120
  %i.ae = bitcast i32 %i.ad to float
  %i.af = fadd float %i.y, %i.ae
  %i.ag = bitcast float %i.af to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 13
  %i.ai = and i32 %i.ah, 31744
  %i.aj = and i32 %i.ag, 4095
  %i.ak = add nuw nsw i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.z, 16
  %i.am = and i32 %i.al, 32768
  %i.an = icmp ugt i32 %i.aa, -16777216
  %i.ao = select i1 %i.an, i32 32256, i32 %i.ak
  %i.ap = or i32 %i.ao, %i.am
  %i.aq = trunc nuw i32 %i.ap to i16
  ret i16 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f16x8_pmax_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %0, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.d, align 1 ; 2 uses
  %i.e = add i64 %i.a, %i.b
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i13.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = insertelement <2 x i16> poison, i16 %.0.copyload.i.i.i, i64 0
  %i.h = insertelement <2 x i16> %i.g, i16 %.0.copyload.i.i13.i, i64 1
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
  %.signext.i.i2.i.i = sext i16 %.0.copyload.i.i13.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i to i32
  %1 = insertelement <2 x i32> poison, i32 %.signext.i.i.i.i, i64 0
  %2 = insertelement <2 x i32> %1, i32 %.signext.i.i2.i.i, i64 1
  %i.v = and <2 x i32> %2, splat (i32 -2147483648)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = bitcast <2 x i32> %i.w to <2 x float>    ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 2 uses
  %i.aa = fcmp olt float %i.y, %i.z
  %.sroa.speculated.i.i = select i1 %i.aa, float %i.z, float %i.y ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %.sroa.speculated.i.i)
  %i.ac = fmul float %i.ab, f0x77800000
  %i.ad = fmul float %i.ac, f0x08800000
  %i.ae = bitcast float %.sroa.speculated.i.i to i32 ; 2 uses
  %i.af = shl i32 %i.ae, 1                        ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.ag, 1
  %i.ah = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ai = add nuw i32 %i.ah, 125829120
  %i.aj = bitcast i32 %i.ai to float
  %i.ak = fadd float %i.ad, %i.aj
  %i.al = bitcast float %i.ak to i32              ; 2 uses
  %i.am = lshr i32 %i.al, 13
  %i.an = and i32 %i.am, 31744
  %i.ao = and i32 %i.al, 4095
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ae, 16
  %i.ar = and i32 %i.aq, 32768
  %i.as = icmp ugt i32 %i.af, -16777216
  %i.at = select i1 %i.as, i32 32256, i32 %i.ap
  %i.au = or i32 %i.at, %i.ar
  %i.av = trunc nuw i32 %i.au to i16
  store i16 %i.av, ptr %i.d, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_8f16_pmaxES3_S3_EEEEvm.exit, label %bb.b, !llvm.loop !19

_ZN2v88internal4wasm24simd_float16_bin_wrapperINS0_7Float16ETnPFT_S3_S3_EXadL_ZNS1_8f16_pmaxES3_S3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef signext i16 @_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float                ; 4 uses
  %i.p = fcmp uno float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp ogt float %i.o, 3.276700e+04
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp olt float %i.o, -3.276800e+04
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fptosi float %i.o to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i16 [ %i.s, %bb.d ], [ 0, %bb.a ], [ 32767, %bb.b ], [ -32768, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i16 @_ZN2v88internal4wasm13ConvertToIntUENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float                ; 4 uses
  %i.p = fcmp uno float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp ogt float %i.o, 6.553500e+04
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp olt float %i.o, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fptoui float %i.o to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i16 [ %i.s, %bb.d ], [ 0, %bb.a ], [ -1, %bb.b ], [ 0, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm28i16x8_sconvert_f16x8_wrapperEm(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN2v88internal4wasm21simd_float_un_wrapperINS0_7Float16EsTnPFT0_T_EXadL_ZNS1_13ConvertToIntSES3_EEEEvm(i64 noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm21simd_float_un_wrapperINS0_7Float16EsTnPFT0_T_EXadL_ZNS1_13ConvertToIntSES3_EEEEvm(i64 noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i16, ptr %i.a, align 1              ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = shl i32 %i.c, 17                         ; 2 uses
  %i.e = lshr exact i32 %i.d, 4
  %i.f = or disjoint i32 %i.e, 1879048192
  %i.g = bitcast i32 %i.f to float
  %i.h = and i32 %i.c, 32767
  %i.i = or disjoint i32 %i.h, 1056964608
  %i.j = bitcast i32 %i.i to float
  %i.k = icmp ult i32 %i.d, 134217728
  %i.l = fadd float %i.j, -5.000000e-01
  %i.m = fmul float %i.g, 1.925930e-34
  %.v.i.i.i = select i1 %i.k, float %i.l, float %i.m
  %i.n = bitcast float %.v.i.i.i to i32
  %.signext.i.i.i = sext i16 %i.b to i32
  %i.o = and i32 %.signext.i.i.i, -2147483648
  %i.p = or i32 %i.o, %i.n
  %i.q = bitcast i32 %i.p to float                ; 4 uses
  %i.r = fcmp uno float %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp ogt float %i.q, 3.276700e+04
  br i1 %i.s, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = fcmp olt float %i.q, -3.276800e+04
  br i1 %i.t, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = fptosi float %i.q to i16
  br label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit

_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i16 [ %i.u, %bb.d ], [ 0, %bb.a ], [ 32767, %bb.b ], [ -32768, %bb.c ]
  store i16 %.0.i, ptr %i.a, align 1
  %i.v = add i64 %0, 2
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i16, ptr %i.w, align 1              ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = shl i32 %i.y, 17                         ; 2 uses
  %i.aa = lshr exact i32 %i.z, 4
  %i.ab = or disjoint i32 %i.aa, 1879048192
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = and i32 %i.y, 32767
  %i.ae = or disjoint i32 %i.ad, 1056964608
  %i.af = bitcast i32 %i.ae to float
  %i.ag = icmp ult i32 %i.z, 134217728
  %i.ah = fadd float %i.af, -5.000000e-01
  %i.ai = fmul float %i.ac, 1.925930e-34
  %.v.i.i.i.1 = select i1 %i.ag, float %i.ah, float %i.ai
  %i.aj = bitcast float %.v.i.i.i.1 to i32
  %.signext.i.i.i.1 = sext i16 %i.x to i32
  %i.ak = and i32 %.signext.i.i.i.1, -2147483648
  %i.al = or i32 %i.ak, %i.aj
  %i.am = bitcast i32 %i.al to float              ; 4 uses
  %i.an = fcmp uno float %i.am, 0.000000e+00
  br i1 %i.an, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit
  %i.ao = fcmp ogt float %i.am, 3.276700e+04
  br i1 %i.ao, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp olt float %i.am, -3.276800e+04
  br i1 %i.ap, label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = fptosi float %i.am to i16
  br label %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit.1

_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit.1: ; preds = %bb.g, %bb.f, %bb.e, %_ZN2v88internal4wasm13ConvertToIntSENS0_7Float16E.exit
end_hunk_1
