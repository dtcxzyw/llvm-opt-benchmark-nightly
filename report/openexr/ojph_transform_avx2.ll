Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx2?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ojph5local17avx2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %.4214261.i = phi ptr [ %i.ei, %.lr.ph263.i ], [ %.0202285.i, %.preheader240.i ] ; 3 uses
  %.0222260.i = phi i32 [ %i.eg, %.lr.ph263.i ], [ %.0205282.i, %.preheader240.i ] ; 2 uses
  %i.dy = load <8 x i32>, ptr %.4262.i, align 32, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %.4262.i, i64 4
  %i.ea = load <8 x i32>, ptr %i.dz, align 4, !tbaa !11
  %i.eb = load <8 x i32>, ptr %.4214261.i, align 32, !tbaa !11
  %i.ec = add <8 x i32> %i.dy, %i.ea
  %i.ed = sub <8 x i32> %i.bo, %i.ec
  %i.ee = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ed, i32 range(i32 0, 256) %i.da)
  %i.ef = add <8 x i32> %i.ee, %i.eb
  store <8 x i32> %i.ef, ptr %.4214261.i, align 32, !tbaa !11
  %i.eg = add nsw i32 %.0222260.i, -8
  %i.eh = getelementptr inbounds nuw i8, ptr %.4262.i, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.4214261.i, i64 32
  %i.ej = icmp sgt i32 %.0222260.i, 8
  br i1 %i.ej, label %.lr.ph263.i, label %.loopexit.i, !llvm.loop !64

.lr.ph259.i:                                      ; preds = %.preheader242.i, %.lr.ph259.i
  %.5258.i = phi ptr [ %i.et, %.lr.ph259.i ], [ %.0203284.i, %.preheader242.i ] ; 3 uses
  %.5215257.i = phi ptr [ %i.eu, %.lr.ph259.i ], [ %.0202285.i, %.preheader242.i ] ; 3 uses
  %.1223256.i = phi i32 [ %i.es, %.lr.ph259.i ], [ %.0205282.i, %.preheader242.i ] ; 2 uses
  %i.ek = load <8 x i32>, ptr %.5258.i, align 32, !tbaa !11
  %i.el = getelementptr inbounds i8, ptr %.5258.i, i64 -4
  %i.em = load <8 x i32>, ptr %i.el, align 4, !tbaa !11
  %i.en = load <8 x i32>, ptr %.5215257.i, align 32, !tbaa !11
  %i.eo = add <8 x i32> %i.ek, %i.em
  %i.ep = sub <8 x i32> %i.bo, %i.eo
  %i.eq = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ep, i32 range(i32 0, 256) %i.da)
  %i.er = add <8 x i32> %i.eq, %i.en
  store <8 x i32> %i.er, ptr %.5215257.i, align 32, !tbaa !11
  %i.es = add nsw i32 %.1223256.i, -8
  %i.et = getelementptr inbounds nuw i8, ptr %.5258.i, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.5215257.i, i64 32
  %i.ev = icmp sgt i32 %.1223256.i, 8
  br i1 %i.ev, label %.lr.ph259.i, label %.loopexit.i, !llvm.loop !65

bb.l:                                             ; preds = %bb.j
  br i1 %.0.in286.i, label %.preheader244.i, label %.preheader246.i

.preheader246.i:                                  ; preds = %bb.l
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph.i

.preheader244.i:                                  ; preds = %bb.l
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.preheader244.i, %.lr.ph255.i
  %.6254.i = phi ptr [ %i.fg, %.lr.ph255.i ], [ %.0203284.i, %.preheader244.i ] ; 3 uses
  %.0208253.i = phi i32 [ %i.ff, %.lr.ph255.i ], [ %.0205282.i, %.preheader244.i ] ; 2 uses
  %.6216252.i = phi ptr [ %i.fh, %.lr.ph255.i ], [ %.0202285.i, %.preheader244.i ] ; 3 uses
  %i.ew = load <8 x i32>, ptr %.6254.i, align 32, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %.6254.i, i64 4
  %i.ey = load <8 x i32>, ptr %i.ex, align 4, !tbaa !11
  %i.ez = load <8 x i32>, ptr %.6216252.i, align 32, !tbaa !11
  %i.fa = add <8 x i32> %i.ey, %i.ew
  %i.fb = mul <8 x i32> %i.fa, %i.bm
  %i.fc = add <8 x i32> %i.fb, %i.bo
  %i.fd = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fc, i32 range(i32 0, 256) %i.da)
  %i.fe = add <8 x i32> %i.fd, %i.ez
  store <8 x i32> %i.fe, ptr %.6216252.i, align 32, !tbaa !11
  %i.ff = add nsw i32 %.0208253.i, -8
  %i.fg = getelementptr inbounds nuw i8, ptr %.6254.i, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %.6216252.i, i64 32
  %i.fi = icmp sgt i32 %.0208253.i, 8
  br i1 %i.fi, label %.lr.ph255.i, label %.loopexit.i, !llvm.loop !66

.lr.ph.i:                                         ; preds = %.preheader246.i, %.lr.ph.i
  %.7251.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %.0203284.i, %.preheader246.i ] ; 3 uses
  %.1209250.i = phi i32 [ %i.fs, %.lr.ph.i ], [ %.0205282.i, %.preheader246.i ] ; 2 uses
  %.7217249.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %.0202285.i, %.preheader246.i ] ; 3 uses
  %i.fj = load <8 x i32>, ptr %.7251.i, align 32, !tbaa !11
  %i.fk = getelementptr inbounds i8, ptr %.7251.i, i64 -4
  %i.fl = load <8 x i32>, ptr %i.fk, align 4, !tbaa !11
  %i.fm = load <8 x i32>, ptr %.7217249.i, align 32, !tbaa !11
  %i.fn = add <8 x i32> %i.fl, %i.fj
  %i.fo = mul <8 x i32> %i.fn, %i.bm
  %i.fp = add <8 x i32> %i.fo, %i.bo
  %i.fq = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fp, i32 range(i32 0, 256) %i.da)
  %i.fr = add <8 x i32> %i.fq, %i.fm
  store <8 x i32> %i.fr, ptr %.7217249.i, align 32, !tbaa !11
  %i.fs = add nsw i32 %.1209250.i, -8
  %i.ft = getelementptr inbounds nuw i8, ptr %.7251.i, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.7217249.i, i64 32
  %i.fv = icmp sgt i32 %.1209250.i, 8
  br i1 %i.fv, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !67

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph255.i, %.lr.ph259.i, %.lr.ph263.i, %.lr.ph267.i, %.lr.ph271.i, %bb.g, %bb.f, %.preheader244.i, %.preheader246.i, %.preheader240.i, %.preheader242.i, %.preheader236.i, %.preheader238.i, %.preheader.i, %.preheader234.i
  %i.fw = xor i1 %.0.in286.i, true
  %.not.wide.i = icmp eq i64 %i.bb, 0
  br i1 %.not.wide.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.d, !llvm.loop !68

.loopexit248.sink.split.i:                        ; preds = %bb.b
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !11
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !24
  %.sink315.i = select i1 %5, ptr %1, ptr %2
  %not.316.i = xor i1 %5, true
  %i.ga = zext i1 %not.316.i to i32
  %.sink.i = shl i32 %i.fz, %i.ga
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink315.i, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !11
  store i32 %.sink.i, ptr %i.gc, align 4, !tbaa !24
  br label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.m:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.n, label %.loopexit244.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.gd = icmp sgt i32 %4, 0
  br i1 %i.gd, label %.lr.ph.i.preheader.i26, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i

.lr.ph.i.preheader.i26:                           ; preds = %bb.n
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !11 ; 3 uses
  %.pn217.i = select i1 %5, ptr %2, ptr %1
  %.in216.i = getelementptr inbounds nuw i8, ptr %.pn217.i, i64 16
  %i.gg = load ptr, ptr %.in216.i, align 8, !tbaa !11 ; 3 uses
  %..i27 = select i1 %5, ptr %1, ptr %2
  %.in.i28 = getelementptr inbounds nuw i8, ptr %..i27, i64 16
  %i.gh = load ptr, ptr %.in.i28, align 8, !tbaa !11 ; 3 uses
  %i.gi = add nuw i32 %4, 15
  %i.gj = and i32 %i.gi, 8
  %lcmp.mod194.not.not = icmp eq i32 %i.gj, 0
  br i1 %lcmp.mod194.not.not, label %.lr.ph.i.i29.prol, label %.lr.ph.i.i29.prol.loopexit

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.preheader.i26
  %i.gk = load <8 x double>, ptr %i.gf, align 32, !tbaa !11 ; 2 uses
  %i.gl = shufflevector <8 x double> %i.gk, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gm = shufflevector <8 x double> %i.gk, <8 x double> poison, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gn = shufflevector <4 x double> %i.gl, <4 x double> %i.gm, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.go = shufflevector <4 x double> %i.gl, <4 x double> %i.gm, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.gn, ptr %i.gh, align 32, !tbaa !11
  store <4 x double> %i.go, ptr %i.gg, align 32, !tbaa !11
  %i.gp = add nsw i32 %4, -8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  br label %.lr.ph.i.i29.prol.loopexit

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.preheader.i26
  %.024.i.i30.unr = phi ptr [ %i.gh, %.lr.ph.i.preheader.i26 ], [ %i.gr, %.lr.ph.i.i29.prol ]
  %.01823.i.i31.unr = phi ptr [ %i.gg, %.lr.ph.i.preheader.i26 ], [ %i.gs, %.lr.ph.i.i29.prol ]
  %.01922.i.i32.unr = phi ptr [ %i.gf, %.lr.ph.i.preheader.i26 ], [ %i.gq, %.lr.ph.i.i29.prol ]
  %.02021.i.i33.unr = phi i32 [ %4, %.lr.ph.i.preheader.i26 ], [ %i.gp, %.lr.ph.i.i29.prol ]
  %i.gt = icmp ult i32 %4, 9
  br i1 %i.gt, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.024.i.i30 = phi ptr [ %i.hj, %.lr.ph.i.i29 ], [ %.024.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 3 uses
  %.01823.i.i31 = phi ptr [ %i.hk, %.lr.ph.i.i29 ], [ %.01823.i.i31.unr, %.lr.ph.i.i29.prol.loopexit ] ; 3 uses
  %.01922.i.i32 = phi ptr [ %i.hi, %.lr.ph.i.i29 ], [ %.01922.i.i32.unr, %.lr.ph.i.i29.prol.loopexit ] ; 3 uses
  %.02021.i.i33 = phi i32 [ %i.hh, %.lr.ph.i.i29 ], [ %.02021.i.i33.unr, %.lr.ph.i.i29.prol.loopexit ] ; 2 uses
  %i.gu = load <8 x double>, ptr %.01922.i.i32, align 32, !tbaa !11 ; 2 uses
  %i.gv = shufflevector <8 x double> %i.gu, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gw = shufflevector <8 x double> %i.gu, <8 x double> poison, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gx = shufflevector <4 x double> %i.gv, <4 x double> %i.gw, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gy = shufflevector <4 x double> %i.gv, <4 x double> %i.gw, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.gx, ptr %.024.i.i30, align 32, !tbaa !11
  store <4 x double> %i.gy, ptr %.01823.i.i31, align 32, !tbaa !11
  %i.gz = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %.024.i.i30, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %.01823.i.i31, i64 32
  %i.hc = load <8 x double>, ptr %i.gz, align 32, !tbaa !11 ; 2 uses
  %i.hd = shufflevector <8 x double> %i.hc, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.he = shufflevector <8 x double> %i.hc, <8 x double> poison, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.hf = shufflevector <4 x double> %i.hd, <4 x double> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.hg = shufflevector <4 x double> %i.hd, <4 x double> %i.he, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.hf, ptr %i.ha, align 32, !tbaa !11
  store <4 x double> %i.hg, ptr %i.hb, align 32, !tbaa !11
  %i.hh = add nsw i32 %.02021.i.i33, -16
  %i.hi = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 128
  %i.hj = getelementptr inbounds nuw i8, ptr %.024.i.i30, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %.01823.i.i31, i64 64
  %i.hl = icmp sgt i32 %.02021.i.i33, 16
  br i1 %i.hl, label %.lr.ph.i.i29, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i, !llvm.loop !69

_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %bb.n
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !22  ; 2 uses
  %.not278.i = icmp eq i8 %i.hn, 0
  br i1 %.not278.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i
  %not..i13 = xor i1 %5, true
  %i.ho = zext i1 %not..i13 to i32
  %i.hp = add i32 %4, %i.ho
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = zext i1 %5 to i32
  %i.hs = add i32 %4, %i.hr
  %i.ht = lshr i32 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !11
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hz = zext i8 %i.hn to i64
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i19, %.lr.ph285.i
  %indvars.iv.i14 = phi i64 [ %i.hz, %.lr.ph285.i ], [ %i.ia, %.loopexit.i19 ]
  %.0.in284.i = phi i1 [ %5, %.lr.ph285.i ], [ %i.qp, %.loopexit.i19 ] ; 5 uses
  %.0193283.i = phi ptr [ %i.hx, %.lr.ph285.i ], [ %.0194282.i, %.loopexit.i19 ] ; 21 uses
  %.0194282.i = phi ptr [ %i.hv, %.lr.ph285.i ], [ %.0193283.i, %.loopexit.i19 ] ; 27 uses
  %.0195281.i = phi i32 [ %i.ht, %.lr.ph285.i ], [ %.0196280.i, %.loopexit.i19 ] ; 3 uses
  %.0196280.i = phi i32 [ %i.hq, %.lr.ph285.i ], [ %.0195281.i, %.loopexit.i19 ] ; 21 uses
  %i.ia = add nsw i64 %indvars.iv.i14, -1         ; 3 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !23
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !11 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !11 ; 2 uses
  %i.ih = load i8, ptr %i.ic, align 4, !tbaa !11  ; 4 uses
  %i.ii = sext i16 %i.ig to i64                   ; 9 uses
  %i.ij = insertelement <4 x i64> poison, i64 %i.ii, i64 0
  %i.ik = shufflevector <4 x i64> %i.ij, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.il = zext i8 %i.ih to i32                    ; 5 uses
  %i.im = sub nsw i32 63, %i.il
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw i64 1, %i.in
  %i.ip = insertelement <4 x i64> poison, i64 %i.io, i64 0
  %i.iq = shufflevector <4 x i64> %i.ip, <4 x i64> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.ir = load i64, ptr %.0194282.i, align 8, !tbaa !13
  %i.is = getelementptr inbounds i8, ptr %.0194282.i, i64 -8
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !13
  %i.it = add nsw i32 %.0195281.i, -1
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !13
  %i.ix = zext nneg i32 %.0195281.i to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.ix
  store i64 %i.iw, ptr %i.iy, align 8, !tbaa !13
  %i.iz = icmp eq i16 %i.ie, 1
  br i1 %i.iz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not291.i = icmp eq i32 %.0196280.i, 0         ; 2 uses
  br i1 %.0.in284.i, label %.preheader.i25, label %.preheader230.i

.preheader230.i:                                  ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph273.i

.preheader.i25:                                   ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %.preheader.i25, %.lr.ph277.i
  %.0199276.i = phi ptr [ %i.jl, %.lr.ph277.i ], [ %.0194282.i, %.preheader.i25 ] ; 3 uses
  %.0201275.i = phi ptr [ %i.jm, %.lr.ph277.i ], [ %.0193283.i, %.preheader.i25 ] ; 3 uses
  %.0209274.i = phi i32 [ %i.jk, %.lr.ph277.i ], [ %.0196280.i, %.preheader.i25 ] ; 2 uses
  %i.ja = load <4 x i64>, ptr %.0199276.i, align 32, !tbaa !11
  %i.jb = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 8
  %i.jc = load <4 x i64>, ptr %i.jb, align 8, !tbaa !11
  %i.jd = load <4 x i64>, ptr %.0201275.i, align 32, !tbaa !11
  %i.je = add <4 x i64> %i.ja, %i.ik
  %i.jf = add <4 x i64> %i.je, %i.jc
  %i.jg = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.jf, i32 range(i32 0, 256) %i.il)
  %i.jh = xor <4 x i64> %i.jg, %i.iq
  %i.ji = sub <4 x i64> %i.jd, %i.iq
  %i.jj = add <4 x i64> %i.ji, %i.jh
  store <4 x i64> %i.jj, ptr %.0201275.i, align 32, !tbaa !11
  %i.jk = add nsw i32 %.0209274.i, -4
  %i.jl = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %.0201275.i, i64 32
  %i.jn = icmp sgt i32 %.0209274.i, 4
  br i1 %i.jn, label %.lr.ph277.i, label %.loopexit.i19, !llvm.loop !70

.lr.ph273.i:                                      ; preds = %.preheader230.i, %.lr.ph273.i
  %.1200272.i = phi ptr [ %i.jz, %.lr.ph273.i ], [ %.0194282.i, %.preheader230.i ] ; 3 uses
  %.1202271.i = phi ptr [ %i.ka, %.lr.ph273.i ], [ %.0193283.i, %.preheader230.i ] ; 3 uses
  %.1210270.i = phi i32 [ %i.jy, %.lr.ph273.i ], [ %.0196280.i, %.preheader230.i ] ; 2 uses
  %i.jo = load <4 x i64>, ptr %.1200272.i, align 32, !tbaa !11
  %i.jp = getelementptr inbounds i8, ptr %.1200272.i, i64 -8
  %i.jq = load <4 x i64>, ptr %i.jp, align 8, !tbaa !11
  %i.jr = load <4 x i64>, ptr %.1202271.i, align 32, !tbaa !11
  %i.js = add <4 x i64> %i.jo, %i.ik
  %i.jt = add <4 x i64> %i.js, %i.jq
  %i.ju = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.jt, i32 range(i32 0, 256) %i.il)
  %i.jv = xor <4 x i64> %i.ju, %i.iq
  %i.jw = sub <4 x i64> %i.jr, %i.iq
  %i.jx = add <4 x i64> %i.jw, %i.jv
  store <4 x i64> %i.jx, ptr %.1202271.i, align 32, !tbaa !11
  %i.jy = add nsw i32 %.1210270.i, -4
  %i.jz = getelementptr inbounds nuw i8, ptr %.1200272.i, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %.1202271.i, i64 32
  %i.kb = icmp sgt i32 %.1210270.i, 4
  br i1 %i.kb, label %.lr.ph273.i, label %.loopexit.i19, !llvm.loop !71

bb.q:                                             ; preds = %bb.o
  %i.kc = icmp eq i16 %i.ie, -1                   ; 2 uses
  %i.kd = icmp eq i16 %i.ig, 1
  %or.cond.i15 = and i1 %i.kc, %i.kd
  %i.ke = icmp eq i8 %i.ih, 1
  %or.cond4.i16 = select i1 %or.cond.i15, i1 %i.ke, i1 false
  %.not289.i = icmp eq i32 %.0196280.i, 0         ; 6 uses
  br i1 %or.cond4.i16, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.0.in284.i, label %.preheader232.i, label %.preheader234.i24

.preheader234.i24:                                ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph265.i

.preheader232.i:                                  ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %.preheader232.i, %.lr.ph269.i
  %.2268.i = phi ptr [ %i.ko, %.lr.ph269.i ], [ %.0194282.i, %.preheader232.i ] ; 3 uses
  %.2203267.i = phi ptr [ %i.kp, %.lr.ph269.i ], [ %.0193283.i, %.preheader232.i ] ; 3 uses
  %.0211266.i = phi i32 [ %i.kn, %.lr.ph269.i ], [ %.0196280.i, %.preheader232.i ] ; 2 uses
  %i.kf = load <4 x i64>, ptr %.2268.i, align 32, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %.2268.i, i64 8
  %i.kh = load <4 x i64>, ptr %i.kg, align 8, !tbaa !11
  %i.ki = load <4 x i64>, ptr %.2203267.i, align 32, !tbaa !11
  %i.kj = add <4 x i64> %i.kh, %i.kf
  %i.kk = lshr <4 x i64> %i.kj, splat (i64 1)
  %i.kl = xor <4 x i64> %i.kk, %i.iq
  %.neg220.i = add <4 x i64> %i.ki, %i.iq
  %i.km = sub <4 x i64> %.neg220.i, %i.kl
  store <4 x i64> %i.km, ptr %.2203267.i, align 32, !tbaa !11
  %i.kn = add nsw i32 %.0211266.i, -4
  %i.ko = getelementptr inbounds nuw i8, ptr %.2268.i, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %.2203267.i, i64 32
  %i.kq = icmp sgt i32 %.0211266.i, 4
  br i1 %i.kq, label %.lr.ph269.i, label %.loopexit.i19, !llvm.loop !72

.lr.ph265.i:                                      ; preds = %.preheader234.i24, %.lr.ph265.i
  %.3264.i = phi ptr [ %i.la, %.lr.ph265.i ], [ %.0194282.i, %.preheader234.i24 ] ; 3 uses
  %.3204263.i = phi ptr [ %i.lb, %.lr.ph265.i ], [ %.0193283.i, %.preheader234.i24 ] ; 3 uses
  %.1212262.i = phi i32 [ %i.kz, %.lr.ph265.i ], [ %.0196280.i, %.preheader234.i24 ] ; 2 uses
  %i.kr = load <4 x i64>, ptr %.3264.i, align 32, !tbaa !11
  %i.ks = getelementptr inbounds i8, ptr %.3264.i, i64 -8
  %i.kt = load <4 x i64>, ptr %i.ks, align 8, !tbaa !11
  %i.ku = load <4 x i64>, ptr %.3204263.i, align 32, !tbaa !11
  %i.kv = add <4 x i64> %i.kt, %i.kr
  %i.kw = lshr <4 x i64> %i.kv, splat (i64 1)
  %i.kx = xor <4 x i64> %i.kw, %i.iq
  %.neg.i = add <4 x i64> %i.ku, %i.iq
  %i.ky = sub <4 x i64> %.neg.i, %i.kx
  store <4 x i64> %i.ky, ptr %.3204263.i, align 32, !tbaa !11
  %i.kz = add nsw i32 %.1212262.i, -4
  %i.la = getelementptr inbounds nuw i8, ptr %.3264.i, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %.3204263.i, i64 32
  %i.lc = icmp sgt i32 %.1212262.i, 4
  br i1 %i.lc, label %.lr.ph265.i, label %.loopexit.i19, !llvm.loop !73

bb.s:                                             ; preds = %bb.q
  br i1 %i.kc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %.0.in284.i, label %.preheader236.i23, label %.preheader238.i22

.preheader238.i22:                                ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph257.i

.preheader236.i23:                                ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.preheader236.i23, %.lr.ph261.i
  %.0198260.i = phi i32 [ %i.ln, %.lr.ph261.i ], [ %.0196280.i, %.preheader236.i23 ] ; 2 uses
  %.4259.i = phi ptr [ %i.lo, %.lr.ph261.i ], [ %.0194282.i, %.preheader236.i23 ] ; 3 uses
  %.4205258.i = phi ptr [ %i.lp, %.lr.ph261.i ], [ %.0193283.i, %.preheader236.i23 ] ; 3 uses
  %i.ld = load <4 x i64>, ptr %.4259.i, align 32, !tbaa !11
  %i.le = getelementptr inbounds nuw i8, ptr %.4259.i, i64 8
  %i.lf = load <4 x i64>, ptr %i.le, align 8, !tbaa !11
  %i.lg = load <4 x i64>, ptr %.4205258.i, align 32, !tbaa !11
  %i.lh = add <4 x i64> %i.ld, %i.lf
  %i.li = sub <4 x i64> %i.ik, %i.lh
  %i.lj = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.li, i32 range(i32 0, 256) %i.il)
  %i.lk = xor <4 x i64> %i.lj, %i.iq
  %i.ll = sub <4 x i64> %i.lg, %i.iq
  %i.lm = add <4 x i64> %i.ll, %i.lk
  store <4 x i64> %i.lm, ptr %.4205258.i, align 32, !tbaa !11
  %i.ln = add nsw i32 %.0198260.i, -4
  %i.lo = getelementptr inbounds nuw i8, ptr %.4259.i, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %.4205258.i, i64 32
  %i.lq = icmp sgt i32 %.0198260.i, 4
  br i1 %i.lq, label %.lr.ph261.i, label %.loopexit.i19, !llvm.loop !74

.lr.ph257.i:                                      ; preds = %.preheader238.i22, %.lr.ph257.i
  %.1256.i = phi i32 [ %i.mb, %.lr.ph257.i ], [ %.0196280.i, %.preheader238.i22 ] ; 2 uses
  %.5255.i = phi ptr [ %i.mc, %.lr.ph257.i ], [ %.0194282.i, %.preheader238.i22 ] ; 3 uses
  %.5206254.i = phi ptr [ %i.md, %.lr.ph257.i ], [ %.0193283.i, %.preheader238.i22 ] ; 3 uses
  %i.lr = load <4 x i64>, ptr %.5255.i, align 32, !tbaa !11
  %i.ls = getelementptr inbounds i8, ptr %.5255.i, i64 -8
  %i.lt = load <4 x i64>, ptr %i.ls, align 8, !tbaa !11
  %i.lu = load <4 x i64>, ptr %.5206254.i, align 32, !tbaa !11
  %i.lv = add <4 x i64> %i.lr, %i.lt
  %i.lw = sub <4 x i64> %i.ik, %i.lv
  %i.lx = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.lw, i32 range(i32 0, 256) %i.il)
  %i.ly = xor <4 x i64> %i.lx, %i.iq
  %i.lz = sub <4 x i64> %i.lu, %i.iq
  %i.ma = add <4 x i64> %i.lz, %i.ly
  store <4 x i64> %i.ma, ptr %.5206254.i, align 32, !tbaa !11
  %i.mb = add nsw i32 %.1256.i, -4
  %i.mc = getelementptr inbounds nuw i8, ptr %.5255.i, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %.5206254.i, i64 32
  %i.me = icmp sgt i32 %.1256.i, 4
  br i1 %i.me, label %.lr.ph257.i, label %.loopexit.i19, !llvm.loop !75

bb.u:                                             ; preds = %bb.s
  br i1 %.0.in284.i, label %.preheader240.i21, label %.preheader242.i17

.preheader242.i17:                                ; preds = %bb.u
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.preheader242.i17
  %i.mf = sext i16 %i.ie to i64                   ; 4 uses
  %i.mg = zext nneg i8 %i.ih to i64               ; 4 uses
  %i.mh = zext nneg i32 %.0196280.i to i64        ; 2 uses
  %min.iters.check148 = icmp samesign ult i32 %.0196280.i, 4
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %.lr.ph.i18
  %i.mi = add nsw i32 %.0196280.i, -1
  %i.mj = zext i32 %i.mi to i64
  %i.mk = shl nuw nsw i64 %i.mj, 3                ; 2 uses
  %i.ml = add nuw nsw i64 %i.mk, 8                ; 2 uses
  %i.mm = getelementptr i8, ptr %.0193283.i, i64 %i.ml ; 2 uses
  %i.mn = getelementptr i8, ptr %.0194282.i, i64 -8
  %6 = getelementptr i8, ptr %.0194282.i, i64 %i.mk
  %i.mo = getelementptr i8, ptr %.0194282.i, i64 %i.ml
  %bound0150 = icmp ult ptr %.0193283.i, %6
  %bound1151 = icmp ult ptr %i.mn, %i.mm
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %.0193283.i, %i.mo
  %bound1154 = icmp ult ptr %.0194282.i, %i.mm
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %scalar.ph147.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck149
  %n.vec158 = and i64 %i.mh, 2147483644           ; 4 uses
  %i.mp = trunc nuw nsw i64 %n.vec158 to i32
  %i.mq = sub nsw i32 %.0196280.i, %i.mp
  %i.mr = shl nuw nsw i64 %n.vec158, 3            ; 2 uses
  %i.ms = getelementptr i8, ptr %.0194282.i, i64 %i.mr
  %i.mt = getelementptr i8, ptr %.0193283.i, i64 %i.mr
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.mf, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert161 = insertelement <4 x i64> poison, i64 %i.mg, i64 0
  %broadcast.splat162 = shufflevector <4 x i64> %broadcast.splatinsert161, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <4 x i64> poison, i64 %i.ii, i64 0
  %broadcast.splat164 = shufflevector <4 x i64> %broadcast.splatinsert163, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph157
  %index166 = phi i64 [ 0, %vector.ph157 ], [ %index.next172, %vector.body165 ] ; 2 uses
  %i.mu = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.0194282.i, i64 %i.mu ; 2 uses
  %next.gep168 = getelementptr i8, ptr %.0193283.i, i64 %i.mu ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %next.gep167, i64 -8
  %wide.load169 = load <4 x i64>, ptr %i.mv, align 8, !tbaa !13, !alias.scope !89
  %wide.load170 = load <4 x i64>, ptr %next.gep167, align 8, !tbaa !13, !alias.scope !90
  %i.mw = add nsw <4 x i64> %wide.load170, %wide.load169
  %i.mx = mul nsw <4 x i64> %i.mw, %broadcast.splat160
  %i.my = add nsw <4 x i64> %i.mx, %broadcast.splat164
  %i.mz = ashr <4 x i64> %i.my, %broadcast.splat162
  %wide.load171 = load <4 x i64>, ptr %next.gep168, align 8, !tbaa !13, !alias.scope !91, !noalias !92
  %i.na = add nsw <4 x i64> %i.mz, %wide.load171
  store <4 x i64> %i.na, ptr %next.gep168, align 8, !tbaa !13, !alias.scope !91, !noalias !92
  %index.next172 = add nuw i64 %index166, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next172, %n.vec158
  br i1 %i.nb, label %middle.block173, label %vector.body165, !llvm.loop !80

middle.block173:                                  ; preds = %vector.body165
  %cmp.n174 = icmp eq i64 %n.vec158, %i.mh
  br i1 %cmp.n174, label %.loopexit.i19, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck149, %.lr.ph.i18, %middle.block173
  %.0191248.i.ph = phi i32 [ %.0196280.i, %vector.memcheck149 ], [ %.0196280.i, %.lr.ph.i18 ], [ %i.mq, %middle.block173 ] ; 4 uses
  %.7247.i.ph = phi ptr [ %.0194282.i, %vector.memcheck149 ], [ %.0194282.i, %.lr.ph.i18 ], [ %i.ms, %middle.block173 ] ; 4 uses
  %.7208246.i.ph = phi ptr [ %.0193283.i, %vector.memcheck149 ], [ %.0193283.i, %.lr.ph.i18 ], [ %i.mt, %middle.block173 ] ; 4 uses
  %xtraiter195 = and i32 %.0191248.i.ph, 1
  %lcmp.mod196.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader
  %i.nc = getelementptr inbounds i8, ptr %.7247.i.ph, i64 -8
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !13
  %i.ne = load i64, ptr %.7247.i.ph, align 8, !tbaa !13
  %i.nf = add nsw i64 %i.ne, %i.nd
  %i.ng = mul nsw i64 %i.nf, %i.mf
  %i.nh = add nsw i64 %i.ng, %i.ii
  %i.ni = ashr i64 %i.nh, %i.mg
  %i.nj = load i64, ptr %.7208246.i.ph, align 8, !tbaa !13
  %i.nk = add nsw i64 %i.ni, %i.nj
  store i64 %i.nk, ptr %.7208246.i.ph, align 8, !tbaa !13
  %i.nl = add nsw i32 %.0191248.i.ph, -1
  %i.nm = getelementptr inbounds nuw i8, ptr %.7247.i.ph, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.7208246.i.ph, i64 8
  br label %scalar.ph147.prol.loopexit

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.0191248.i.unr = phi i32 [ %.0191248.i.ph, %scalar.ph147.preheader ], [ %i.nl, %scalar.ph147.prol ]
  %.7247.i.unr = phi ptr [ %.7247.i.ph, %scalar.ph147.preheader ], [ %i.nm, %scalar.ph147.prol ]
  %.7208246.i.unr = phi ptr [ %.7208246.i.ph, %scalar.ph147.preheader ], [ %i.nn, %scalar.ph147.prol ]
  %i.no = icmp eq i32 %.0191248.i.ph, 1
  br i1 %i.no, label %.loopexit.i19, label %scalar.ph147

.preheader240.i21:                                ; preds = %bb.u
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph253.i

.lr.ph253.i:                                      ; preds = %.preheader240.i21
  %i.np = sext i16 %i.ie to i64                   ; 4 uses
  %i.nq = zext nneg i8 %i.ih to i64               ; 4 uses
  %i.nr = zext nneg i32 %.0196280.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0196280.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph253.i
  %i.ns = add nsw i32 %.0196280.i, -1
  %i.nt = zext i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 3                ; 2 uses
  %7 = add nuw nsw i64 %i.nu, 8                   ; 2 uses
  %8 = getelementptr i8, ptr %.0193283.i, i64 %7  ; 2 uses
  %i.nv = getelementptr i8, ptr %.0194282.i, i64 %7
  %i.nw = getelementptr i8, ptr %.0194282.i, i64 8
  %i.nx = getelementptr i8, ptr %.0194282.i, i64 %i.nu
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  %bound0 = icmp ult ptr %.0193283.i, %i.nv
  %bound1 = icmp ult ptr %.0194282.i, %8
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %.0193283.i, %i.ny
  %bound1123 = icmp ult ptr %i.nw, %8
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nr, 2147483644              ; 4 uses
  %i.nz = trunc nuw nsw i64 %n.vec to i32
  %i.oa = sub nsw i32 %.0196280.i, %i.nz
  %i.ob = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.oc = getelementptr i8, ptr %.0194282.i, i64 %i.ob
  %i.od = getelementptr i8, ptr %.0193283.i, i64 %i.ob
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.np, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <4 x i64> poison, i64 %i.nq, i64 0
  %broadcast.splat126 = shufflevector <4 x i64> %broadcast.splatinsert125, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <4 x i64> poison, i64 %i.ii, i64 0
  %broadcast.splat128 = shufflevector <4 x i64> %broadcast.splatinsert127, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oe = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0194282.i, i64 %i.oe ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.0193283.i, i64 %i.oe ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep, align 8, !tbaa !13, !alias.scope !93
  %i.of = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load130 = load <4 x i64>, ptr %i.of, align 8, !tbaa !13, !alias.scope !94
  %i.og = add nsw <4 x i64> %wide.load130, %wide.load
  %i.oh = mul nsw <4 x i64> %i.og, %broadcast.splat
  %i.oi = add nsw <4 x i64> %i.oh, %broadcast.splat128
  %i.oj = ashr <4 x i64> %i.oi, %broadcast.splat126
  %wide.load131 = load <4 x i64>, ptr %next.gep129, align 8, !tbaa !13, !alias.scope !95, !noalias !96
  %i.ok = add nsw <4 x i64> %i.oj, %wide.load131
  store <4 x i64> %i.ok, ptr %next.gep129, align 8, !tbaa !13, !alias.scope !95, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nr
  br i1 %cmp.n, label %.loopexit.i19, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph253.i, %middle.block
  %.0192252.i.ph = phi i32 [ %.0196280.i, %vector.memcheck ], [ %.0196280.i, %.lr.ph253.i ], [ %i.oa, %middle.block ] ; 4 uses
  %.6251.i.ph = phi ptr [ %.0194282.i, %vector.memcheck ], [ %.0194282.i, %.lr.ph253.i ], [ %i.oc, %middle.block ] ; 3 uses
  %.6207250.i.ph = phi ptr [ %.0193283.i, %vector.memcheck ], [ %.0193283.i, %.lr.ph253.i ], [ %i.od, %middle.block ] ; 4 uses
  %xtraiter197 = and i32 %.0192252.i.ph, 1
  %lcmp.mod198.not = icmp eq i32 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.om = load i64, ptr %.6251.i.ph, align 8, !tbaa !13
  %i.on = getelementptr inbounds nuw i8, ptr %.6251.i.ph, i64 8 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !13
  %i.op = add nsw i64 %i.oo, %i.om
  %i.oq = mul nsw i64 %i.op, %i.np
  %i.or = add nsw i64 %i.oq, %i.ii
  %i.os = ashr i64 %i.or, %i.nq
  %i.ot = load i64, ptr %.6207250.i.ph, align 8, !tbaa !13
  %i.ou = add nsw i64 %i.os, %i.ot
  store i64 %i.ou, ptr %.6207250.i.ph, align 8, !tbaa !13
  %i.ov = add nsw i32 %.0192252.i.ph, -1
  %i.ow = getelementptr inbounds nuw i8, ptr %.6207250.i.ph, i64 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0192252.i.unr = phi i32 [ %.0192252.i.ph, %scalar.ph.preheader ], [ %i.ov, %scalar.ph.prol ]
  %.6251.i.unr = phi ptr [ %.6251.i.ph, %scalar.ph.preheader ], [ %i.on, %scalar.ph.prol ]
  %.6207250.i.unr = phi ptr [ %.6207250.i.ph, %scalar.ph.preheader ], [ %i.ow, %scalar.ph.prol ]
  %i.ox = icmp eq i32 %.0192252.i.ph, 1
  br i1 %i.ox, label %.loopexit.i19, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0192252.i = phi i32 [ %i.pr, %scalar.ph ], [ %.0192252.i.unr, %scalar.ph.prol.loopexit ]
  %.6251.i = phi ptr [ %i.pj, %scalar.ph ], [ %.6251.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.6207250.i = phi ptr [ %i.ps, %scalar.ph ], [ %.6207250.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.oy = load i64, ptr %.6251.i, align 8, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %.6251.i, i64 8 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !13
  %i.pb = add nsw i64 %i.pa, %i.oy
  %i.pc = mul nsw i64 %i.pb, %i.np
  %i.pd = add nsw i64 %i.pc, %i.ii
  %i.pe = ashr i64 %i.pd, %i.nq
  %i.pf = load i64, ptr %.6207250.i, align 8, !tbaa !13
  %i.pg = add nsw i64 %i.pe, %i.pf
  store i64 %i.pg, ptr %.6207250.i, align 8, !tbaa !13
  %i.ph = getelementptr inbounds nuw i8, ptr %.6207250.i, i64 8 ; 2 uses
  %i.pi = load i64, ptr %i.oz, align 8, !tbaa !13
  %i.pj = getelementptr inbounds nuw i8, ptr %.6251.i, i64 16 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !13
  %i.pl = add nsw i64 %i.pk, %i.pi
  %i.pm = mul nsw i64 %i.pl, %i.np
  %i.pn = add nsw i64 %i.pm, %i.ii
  %i.po = ashr i64 %i.pn, %i.nq
  %i.pp = load i64, ptr %i.ph, align 8, !tbaa !13
  %i.pq = add nsw i64 %i.po, %i.pp
  store i64 %i.pq, ptr %i.ph, align 8, !tbaa !13
  %i.pr = add nsw i32 %.0192252.i, -2             ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.6207250.i, i64 16
  %.not219.i.1 = icmp eq i32 %i.pr, 0
  br i1 %.not219.i.1, label %.loopexit.i19, label %scalar.ph, !llvm.loop !86

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %.0191248.i = phi i32 [ %i.qm, %scalar.ph147 ], [ %.0191248.i.unr, %scalar.ph147.prol.loopexit ]
  %.7247.i = phi ptr [ %i.qn, %scalar.ph147 ], [ %.7247.i.unr, %scalar.ph147.prol.loopexit ] ; 5 uses
  %.7208246.i = phi ptr [ %i.qo, %scalar.ph147 ], [ %.7208246.i.unr, %scalar.ph147.prol.loopexit ] ; 4 uses
  %i.pt = getelementptr inbounds i8, ptr %.7247.i, i64 -8
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !13
  %i.pv = load i64, ptr %.7247.i, align 8, !tbaa !13
  %i.pw = add nsw i64 %i.pv, %i.pu
  %i.px = mul nsw i64 %i.pw, %i.mf
  %i.py = add nsw i64 %i.px, %i.ii
  %i.pz = ashr i64 %i.py, %i.mg
  %i.qa = load i64, ptr %.7208246.i, align 8, !tbaa !13
  %i.qb = add nsw i64 %i.pz, %i.qa
  store i64 %i.qb, ptr %.7208246.i, align 8, !tbaa !13
  %i.qc = getelementptr inbounds nuw i8, ptr %.7247.i, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %.7208246.i, i64 8 ; 2 uses
  %i.qe = load i64, ptr %.7247.i, align 8, !tbaa !13
  %i.qf = load i64, ptr %i.qc, align 8, !tbaa !13
  %i.qg = add nsw i64 %i.qf, %i.qe
  %i.qh = mul nsw i64 %i.qg, %i.mf
  %i.qi = add nsw i64 %i.qh, %i.ii
  %i.qj = ashr i64 %i.qi, %i.mg
  %i.qk = load i64, ptr %i.qd, align 8, !tbaa !13
  %i.ql = add nsw i64 %i.qj, %i.qk
  store i64 %i.ql, ptr %i.qd, align 8, !tbaa !13
  %i.qm = add nsw i32 %.0191248.i, -2             ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.7247.i, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.7208246.i, i64 16
  %.not218.i.1 = icmp eq i32 %i.qm, 0
  br i1 %.not218.i.1, label %.loopexit.i19, label %scalar.ph147, !llvm.loop !87

.loopexit.i19:                                    ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph257.i, %.lr.ph261.i, %.lr.ph265.i, %.lr.ph269.i, %.lr.ph273.i, %.lr.ph277.i, %middle.block173, %middle.block, %.preheader240.i21, %.preheader242.i17, %.preheader236.i23, %.preheader238.i22, %.preheader232.i, %.preheader234.i24, %.preheader.i25, %.preheader230.i
  %i.qp = xor i1 %.0.in284.i, true
  %.not.wide.i20 = icmp eq i64 %i.ia, 0
  br i1 %.not.wide.i20, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.o, !llvm.loop !88

.loopexit244.sink.split.i:                        ; preds = %bb.m
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !11
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !13
  %.sink311.i = select i1 %5, ptr %1, ptr %2
  %not.312.i = xor i1 %5, true
  %i.qt = zext i1 %not.312.i to i64
  %.sink.i12 = shl i64 %i.qs, %i.qt
  %i.qu = getelementptr inbounds nuw i8, ptr %.sink311.i, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !11
  store i64 %.sink.i12, ptr %i.qv, align 8, !tbaa !13
  br label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.loopexit.i, %.loopexit.i19, %.loopexit244.sink.split.i, %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i, %.loopexit248.sink.split.i, %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17avx2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !22    ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %bb.c
  %not..i = xor i1 %5, true
  %i.i = zext i1 %not..i to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = zext i1 %5 to i32
  %i.m = add i32 %4, %i.l
  %i.n = lshr i32 %i.m, 1
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i = zext i8 %i.h to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.c
  %i.r = icmp sgt i32 %4, 0
  br i1 %i.r, label %.lr.ph.i.preheader.i, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %.in228.i = select i1 %5, ptr %i.e, ptr %i.f
  %i.s = load ptr, ptr %.in228.i, align 8, !tbaa !11 ; 3 uses
  %..i = select i1 %5, ptr %i.f, ptr %i.e
  %i.t = load ptr, ptr %..i, align 8, !tbaa !11   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 4 uses
  %i.w = add nuw i32 %4, 31
  %i.x = and i32 %i.w, 16
  %lcmp.mod.not.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i
  %i.y = load <8 x float>, ptr %i.t, align 32, !tbaa !11 ; 2 uses
  %i.z = load <8 x float>, ptr %i.s, align 32, !tbaa !11 ; 2 uses
  %i.aa = shufflevector <8 x float> %i.y, <8 x float> %i.z, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.z, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.aa, ptr %i.v, align 32, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <8 x float> %i.ab, ptr %i.ac, align 32, !tbaa !11
  %i.ad = add nsw i32 %4, -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.024.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader.i ], [ %i.ae, %.lr.ph.i.i.prol ]
  %.01823.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader.i ], [ %i.af, %.lr.ph.i.i.prol ]
  %.01922.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.preheader.i ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.02021.i.i.unr = phi i32 [ %4, %.lr.ph.i.preheader.i ], [ %i.ad, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i32 %4, 17
  br i1 %i.ah, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.024.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01823.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.01823.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01922.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.01922.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.02021.i.i = phi i32 [ %i.av, %.lr.ph.i.i ], [ %.02021.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ai = load <8 x float>, ptr %.01823.i.i, align 32, !tbaa !11 ; 2 uses
  %i.aj = load <8 x float>, ptr %.01922.i.i, align 32, !tbaa !11 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.al = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.ak, ptr %.024.i.i, align 32, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 32
  store <8 x float> %i.al, ptr %i.am, align 32, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 32
  %i.aq = load <8 x float>, ptr %i.ao, align 32, !tbaa !11 ; 2 uses
  %i.ar = load <8 x float>, ptr %i.ap, align 32, !tbaa !11 ; 2 uses
  %i.as = shufflevector <8 x float> %i.aq, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.at = shufflevector <8 x float> %i.aq, <8 x float> %i.ar, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.as, ptr %i.an, align 32, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 96
  store <8 x float> %i.at, ptr %i.au, align 32, !tbaa !11
  %i.av = add nsw i32 %.02021.i.i, -32
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 64
  %i.az = icmp sgt i32 %.02021.i.i, 32
  br i1 %i.az, label %.lr.ph.i.i, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !97

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph285.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph285.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.0.in284.i = phi i1 [ %5, %.lr.ph285.i ], [ %i.fu, %.loopexit.i ] ; 5 uses
  %.0203283.i = phi ptr [ %i.p, %.lr.ph285.i ], [ %.0204282.i, %.loopexit.i ] ; 13 uses
  %.0204282.i = phi ptr [ %i.o, %.lr.ph285.i ], [ %.0203283.i, %.loopexit.i ] ; 9 uses
  %.0205281.i = phi i32 [ %i.n, %.lr.ph285.i ], [ %.0206280.i, %.loopexit.i ] ; 11 uses
  %.0206280.i = phi i32 [ %i.k, %.lr.ph285.i ], [ %.0205281.i, %.loopexit.i ] ; 3 uses
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !11 ; 3 uses
  %i.be = sext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !11 ; 2 uses
  %i.bh = sext i16 %i.bg to i32
  %i.bi = load i8, ptr %i.bb, align 4, !tbaa !11  ; 4 uses
  %i.bj = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %i.bk = shufflevector <8 x i32> %i.bj, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bl = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %i.bm = shufflevector <8 x i32> %i.bl, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.bn = load i32, ptr %.0203283.i, align 4, !tbaa !24
  %i.bo = getelementptr inbounds i8, ptr %.0203283.i, i64 -4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !24
  %i.bp = add nsw i32 %.0206280.i, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0203283.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24
  %i.bt = zext nneg i32 %.0206280.i to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0203283.i, i64 %i.bt
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !24
  %i.bv = icmp eq i16 %i.bd, 1
  br i1 %i.bv, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not293.i = icmp eq i32 %.0205281.i, 0         ; 2 uses
  br i1 %.0.in284.i, label %.preheader.i, label %.preheader234.i

.preheader234.i:                                  ; preds = %bb.e
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph274.i

.lr.ph274.i:                                      ; preds = %.preheader234.i
  %i.bw = zext i8 %i.bi to i32
  br label %bb.g

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph278.i

.lr.ph278.i:                                      ; preds = %.preheader.i
  %i.bx = zext i8 %i.bi to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph278.i
  %.0208277.i = phi ptr [ %.0203283.i, %.lr.ph278.i ], [ %i.ch, %bb.f ] ; 3 uses
  %.0209276.i = phi ptr [ %.0204282.i, %.lr.ph278.i ], [ %i.ci, %bb.f ] ; 3 uses
  %.0217275.i = phi i32 [ %.0205281.i, %.lr.ph278.i ], [ %i.cg, %bb.f ] ; 2 uses
  %i.by = load <8 x i32>, ptr %.0208277.i, align 32, !tbaa !11
  %i.bz = getelementptr inbounds i8, ptr %.0208277.i, i64 -4
  %i.ca = load <8 x i32>, ptr %i.bz, align 4, !tbaa !11
  %i.cb = load <8 x i32>, ptr %.0209276.i, align 32, !tbaa !11
  %i.cc = add <8 x i32> %i.by, %i.bm
  %i.cd = add <8 x i32> %i.cc, %i.ca
  %i.ce = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.cd, i32 range(i32 0, 256) %i.bx)
  %i.cf = sub <8 x i32> %i.cb, %i.ce
  store <8 x i32> %i.cf, ptr %.0209276.i, align 32, !tbaa !11
  %i.cg = add nsw i32 %.0217275.i, -8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0208277.i, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.0209276.i, i64 32
  %i.cj = icmp sgt i32 %.0217275.i, 8
  br i1 %i.cj, label %bb.f, label %.loopexit.i, !llvm.loop !98

bb.g:                                             ; preds = %bb.g, %.lr.ph274.i
  %.1273.i = phi ptr [ %.0203283.i, %.lr.ph274.i ], [ %i.ct, %bb.g ] ; 3 uses
  %.1210272.i = phi ptr [ %.0204282.i, %.lr.ph274.i ], [ %i.cu, %bb.g ] ; 3 uses
  %.1218271.i = phi i32 [ %.0205281.i, %.lr.ph274.i ], [ %i.cs, %bb.g ] ; 2 uses
  %i.ck = load <8 x i32>, ptr %.1273.i, align 32, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %.1273.i, i64 4
  %i.cm = load <8 x i32>, ptr %i.cl, align 4, !tbaa !11
  %i.cn = load <8 x i32>, ptr %.1210272.i, align 32, !tbaa !11
  %i.co = add <8 x i32> %i.ck, %i.bm
  %i.cp = add <8 x i32> %i.co, %i.cm
  %i.cq = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.cp, i32 range(i32 0, 256) %i.bw)
  %i.cr = sub <8 x i32> %i.cn, %i.cq
  store <8 x i32> %i.cr, ptr %.1210272.i, align 32, !tbaa !11
  %i.cs = add nsw i32 %.1218271.i, -8
  %i.ct = getelementptr inbounds nuw i8, ptr %.1273.i, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.1210272.i, i64 32
  %i.cv = icmp sgt i32 %.1218271.i, 8
  br i1 %i.cv, label %bb.g, label %.loopexit.i, !llvm.loop !99

bb.h:                                             ; preds = %bb.d
  %i.cw = icmp eq i16 %i.bd, -1                   ; 2 uses
  %i.cx = icmp eq i16 %i.bg, 1
  %or.cond.i = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cy = zext i8 %i.bi to i32                    ; 4 uses
  %i.cz = icmp eq i8 %i.bi, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.cz, i1 false
  %.not291.i = icmp eq i32 %.0205281.i, 0         ; 6 uses
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.0.in284.i, label %.preheader236.i, label %.preheader238.i

.preheader238.i:                                  ; preds = %bb.i
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph266.i

.preheader236.i:                                  ; preds = %bb.i
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %.preheader236.i, %.lr.ph270.i
  %.2269.i = phi ptr [ %i.di, %.lr.ph270.i ], [ %.0203283.i, %.preheader236.i ] ; 3 uses
  %.2211268.i = phi ptr [ %i.dj, %.lr.ph270.i ], [ %.0204282.i, %.preheader236.i ] ; 3 uses
  %.0219267.i = phi i32 [ %i.dh, %.lr.ph270.i ], [ %.0205281.i, %.preheader236.i ] ; 2 uses
  %i.da = load <8 x i32>, ptr %.2269.i, align 32, !tbaa !11
  %i.db = getelementptr inbounds i8, ptr %.2269.i, i64 -4
  %i.dc = load <8 x i32>, ptr %i.db, align 4, !tbaa !11
  %i.dd = load <8 x i32>, ptr %.2211268.i, align 32, !tbaa !11
  %i.de = add <8 x i32> %i.dc, %i.da
  %i.df = ashr <8 x i32> %i.de, splat (i32 1)
  %i.dg = add <8 x i32> %i.df, %i.dd
  store <8 x i32> %i.dg, ptr %.2211268.i, align 32, !tbaa !11
  %i.dh = add nsw i32 %.0219267.i, -8
  %i.di = getelementptr inbounds nuw i8, ptr %.2269.i, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.2211268.i, i64 32
  %i.dk = icmp sgt i32 %.0219267.i, 8
  br i1 %i.dk, label %.lr.ph270.i, label %.loopexit.i, !llvm.loop !100

.lr.ph266.i:                                      ; preds = %.preheader238.i, %.lr.ph266.i
  %.3265.i = phi ptr [ %i.dt, %.lr.ph266.i ], [ %.0203283.i, %.preheader238.i ] ; 3 uses
  %.3212264.i = phi ptr [ %i.du, %.lr.ph266.i ], [ %.0204282.i, %.preheader238.i ] ; 3 uses
  %.1220263.i = phi i32 [ %i.ds, %.lr.ph266.i ], [ %.0205281.i, %.preheader238.i ] ; 2 uses
  %i.dl = load <8 x i32>, ptr %.3265.i, align 32, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %.3265.i, i64 4
  %i.dn = load <8 x i32>, ptr %i.dm, align 4, !tbaa !11
  %i.do = load <8 x i32>, ptr %.3212264.i, align 32, !tbaa !11
  %i.dp = add <8 x i32> %i.dn, %i.dl
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 1)
  %i.dr = add <8 x i32> %i.dq, %i.do
  store <8 x i32> %i.dr, ptr %.3212264.i, align 32, !tbaa !11
  %i.ds = add nsw i32 %.1220263.i, -8
  %i.dt = getelementptr inbounds nuw i8, ptr %.3265.i, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %.3212264.i, i64 32
  %i.dv = icmp sgt i32 %.1220263.i, 8
  br i1 %i.dv, label %.lr.ph266.i, label %.loopexit.i, !llvm.loop !101

bb.j:                                             ; preds = %bb.h
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.0.in284.i, label %.preheader240.i, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.k
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph258.i

.preheader240.i:                                  ; preds = %bb.k
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.preheader240.i, %.lr.ph262.i
  %.4261.i = phi ptr [ %i.ef, %.lr.ph262.i ], [ %.0203283.i, %.preheader240.i ] ; 3 uses
  %.4213260.i = phi ptr [ %i.eg, %.lr.ph262.i ], [ %.0204282.i, %.preheader240.i ] ; 3 uses
  %.0223259.i = phi i32 [ %i.ee, %.lr.ph262.i ], [ %.0205281.i, %.preheader240.i ] ; 2 uses
  %i.dw = load <8 x i32>, ptr %.4261.i, align 32, !tbaa !11
  %i.dx = getelementptr inbounds i8, ptr %.4261.i, i64 -4
  %i.dy = load <8 x i32>, ptr %i.dx, align 4, !tbaa !11
  %i.dz = load <8 x i32>, ptr %.4213260.i, align 32, !tbaa !11
  %i.ea = add <8 x i32> %i.dw, %i.dy
  %i.eb = sub <8 x i32> %i.bm, %i.ea
  %i.ec = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.eb, i32 range(i32 0, 256) %i.cy)
  %i.ed = sub <8 x i32> %i.dz, %i.ec
  store <8 x i32> %i.ed, ptr %.4213260.i, align 32, !tbaa !11
  %i.ee = add nsw i32 %.0223259.i, -8
  %i.ef = getelementptr inbounds nuw i8, ptr %.4261.i, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %.4213260.i, i64 32
  %i.eh = icmp sgt i32 %.0223259.i, 8
  br i1 %i.eh, label %.lr.ph262.i, label %.loopexit.i, !llvm.loop !102

.lr.ph258.i:                                      ; preds = %.preheader242.i, %.lr.ph258.i
  %.5257.i = phi ptr [ %i.er, %.lr.ph258.i ], [ %.0203283.i, %.preheader242.i ] ; 3 uses
  %.5214256.i = phi ptr [ %i.es, %.lr.ph258.i ], [ %.0204282.i, %.preheader242.i ] ; 3 uses
  %.1224255.i = phi i32 [ %i.eq, %.lr.ph258.i ], [ %.0205281.i, %.preheader242.i ] ; 2 uses
  %i.ei = load <8 x i32>, ptr %.5257.i, align 32, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %.5257.i, i64 4
  %i.ek = load <8 x i32>, ptr %i.ej, align 4, !tbaa !11
  %i.el = load <8 x i32>, ptr %.5214256.i, align 32, !tbaa !11
  %i.em = add <8 x i32> %i.ei, %i.ek
  %i.en = sub <8 x i32> %i.bm, %i.em
  %i.eo = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.en, i32 range(i32 0, 256) %i.cy)
  %i.ep = sub <8 x i32> %i.el, %i.eo
  store <8 x i32> %i.ep, ptr %.5214256.i, align 32, !tbaa !11
  %i.eq = add nsw i32 %.1224255.i, -8
  %i.er = getelementptr inbounds nuw i8, ptr %.5257.i, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %.5214256.i, i64 32
  %i.et = icmp sgt i32 %.1224255.i, 8
  br i1 %i.et, label %.lr.ph258.i, label %.loopexit.i, !llvm.loop !103

bb.l:                                             ; preds = %bb.j
  br i1 %.0.in284.i, label %.preheader244.i, label %.preheader246.i

.preheader246.i:                                  ; preds = %bb.l
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph.i

.preheader244.i:                                  ; preds = %bb.l
  br i1 %.not291.i, label %.loopexit.i, label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %.preheader244.i, %.lr.ph254.i
  %.6253.i = phi ptr [ %i.fe, %.lr.ph254.i ], [ %.0203283.i, %.preheader244.i ] ; 3 uses
  %.6215252.i = phi ptr [ %i.ff, %.lr.ph254.i ], [ %.0204282.i, %.preheader244.i ] ; 3 uses
  %.0221251.i = phi i32 [ %i.fd, %.lr.ph254.i ], [ %.0205281.i, %.preheader244.i ] ; 2 uses
  %i.eu = load <8 x i32>, ptr %.6253.i, align 32, !tbaa !11
  %i.ev = getelementptr inbounds i8, ptr %.6253.i, i64 -4
  %i.ew = load <8 x i32>, ptr %i.ev, align 4, !tbaa !11
  %i.ex = load <8 x i32>, ptr %.6215252.i, align 32, !tbaa !11
  %i.ey = add <8 x i32> %i.ew, %i.eu
  %i.ez = mul <8 x i32> %i.ey, %i.bk
  %i.fa = add <8 x i32> %i.ez, %i.bm
  %i.fb = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fa, i32 range(i32 0, 256) %i.cy)
  %i.fc = sub <8 x i32> %i.ex, %i.fb
  store <8 x i32> %i.fc, ptr %.6215252.i, align 32, !tbaa !11
  %i.fd = add nsw i32 %.0221251.i, -8
  %i.fe = getelementptr inbounds nuw i8, ptr %.6253.i, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %.6215252.i, i64 32
  %i.fg = icmp sgt i32 %.0221251.i, 8
  br i1 %i.fg, label %.lr.ph254.i, label %.loopexit.i, !llvm.loop !104

.lr.ph.i:                                         ; preds = %.preheader246.i, %.lr.ph.i
  %.7250.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %.0203283.i, %.preheader246.i ] ; 3 uses
  %.7216249.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %.0204282.i, %.preheader246.i ] ; 3 uses
  %.1222248.i = phi i32 [ %i.fq, %.lr.ph.i ], [ %.0205281.i, %.preheader246.i ] ; 2 uses
  %i.fh = load <8 x i32>, ptr %.7250.i, align 32, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %.7250.i, i64 4
  %i.fj = load <8 x i32>, ptr %i.fi, align 4, !tbaa !11
  %i.fk = load <8 x i32>, ptr %.7216249.i, align 32, !tbaa !11
  %i.fl = add <8 x i32> %i.fj, %i.fh
  %i.fm = mul <8 x i32> %i.fl, %i.bk
  %i.fn = add <8 x i32> %i.fm, %i.bm
  %i.fo = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fn, i32 range(i32 0, 256) %i.cy)
  %i.fp = sub <8 x i32> %i.fk, %i.fo
  store <8 x i32> %i.fp, ptr %.7216249.i, align 32, !tbaa !11
  %i.fq = add nsw i32 %.1222248.i, -8
  %i.fr = getelementptr inbounds nuw i8, ptr %.7250.i, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.7216249.i, i64 32
  %i.ft = icmp sgt i32 %.1222248.i, 8
  br i1 %i.ft, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !105

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph254.i, %.lr.ph258.i, %.lr.ph262.i, %.lr.ph266.i, %.lr.ph270.i, %bb.g, %bb.f, %.preheader244.i, %.preheader246.i, %.preheader240.i, %.preheader242.i, %.preheader236.i, %.preheader238.i, %.preheader.i, %.preheader234.i
  %i.fu = xor i1 %.0.in284.i, true
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !106

bb.m:                                             ; preds = %bb.b
  br i1 %5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !11
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !24
  br label %_ZN4ojph5localL17avx2_interleave32EPfS1_S1_i.exit.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !11
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !24
  %i.gb = ashr i32 %i.ga, 1
  br label %_ZN4ojph5localL17avx2_interleave32EPfS1_S1_i.exit.sink.split.i

_ZN4ojph5localL17avx2_interleave32EPfS1_S1_i.exit.sink.split.i: ; preds = %bb.o, %bb.n
  %.sink.i = phi i32 [ %i.fx, %bb.n ], [ %i.gb, %bb.o ]
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11
  store i32 %.sink.i, ptr %i.gd, align 4, !tbaa !24
  br label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.p:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !22  ; 2 uses
  %.not287.i = icmp eq i8 %i.gh, 0
  br i1 %.not287.i, label %._crit_edge.i24, label %.lr.ph286.i

.lr.ph286.i:                                      ; preds = %bb.q
  %not..i13 = xor i1 %5, true
  %i.gi = zext i1 %not..i13 to i32
  %i.gj = add i32 %4, %i.gi
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = zext i1 %5 to i32
  %i.gm = add i32 %4, %i.gl
  %i.gn = lshr i32 %i.gm, 1
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !11
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i14 = zext i8 %i.gh to i64
  br label %bb.r

._crit_edge.i24:                                  ; preds = %.loopexit.i21, %bb.q
  %i.gr = icmp sgt i32 %4, 0
  br i1 %i.gr, label %.lr.ph.i.preheader.i25, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

.lr.ph.i.preheader.i25:                           ; preds = %._crit_edge.i24
  %.in217.i = select i1 %5, ptr %i.ge, ptr %i.gf
  %i.gs = load ptr, ptr %.in217.i, align 8, !tbaa !11 ; 3 uses
  %..i26 = select i1 %5, ptr %i.gf, ptr %i.ge
  %i.gt = load ptr, ptr %..i26, align 8, !tbaa !11 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !11 ; 4 uses
  %i.gw = add nuw i32 %4, 15
  %i.gx = and i32 %i.gw, 8
  %lcmp.mod199.not.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod199.not.not, label %.lr.ph.i.i27.prol, label %.lr.ph.i.i27.prol.loopexit

.lr.ph.i.i27.prol:                                ; preds = %.lr.ph.i.preheader.i25
  %i.gy = load <4 x double>, ptr %i.gt, align 32, !tbaa !11 ; 2 uses
  %i.gz = load <4 x double>, ptr %i.gs, align 32, !tbaa !11 ; 2 uses
  %i.ha = shufflevector <4 x double> %i.gy, <4 x double> %i.gz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hb = shufflevector <4 x double> %i.gy, <4 x double> %i.gz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.ha, ptr %i.gv, align 32, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store <4 x double> %i.hb, ptr %i.hc, align 32, !tbaa !11
  %i.hd = add nsw i32 %4, -8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  br label %.lr.ph.i.i27.prol.loopexit

.lr.ph.i.i27.prol.loopexit:                       ; preds = %.lr.ph.i.i27.prol, %.lr.ph.i.preheader.i25
  %.024.i.i28.unr = phi ptr [ %i.gv, %.lr.ph.i.preheader.i25 ], [ %i.he, %.lr.ph.i.i27.prol ]
  %.01823.i.i29.unr = phi ptr [ %i.gt, %.lr.ph.i.preheader.i25 ], [ %i.hf, %.lr.ph.i.i27.prol ]
  %.01922.i.i30.unr = phi ptr [ %i.gs, %.lr.ph.i.preheader.i25 ], [ %i.hg, %.lr.ph.i.i27.prol ]
  %.02021.i.i31.unr = phi i32 [ %4, %.lr.ph.i.preheader.i25 ], [ %i.hd, %.lr.ph.i.i27.prol ]
  %i.hh = icmp ult i32 %4, 9
  br i1 %i.hh, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27
  %.024.i.i28 = phi ptr [ %i.hw, %.lr.ph.i.i27 ], [ %.024.i.i28.unr, %.lr.ph.i.i27.prol.loopexit ] ; 5 uses
  %.01823.i.i29 = phi ptr [ %i.hx, %.lr.ph.i.i27 ], [ %.01823.i.i29.unr, %.lr.ph.i.i27.prol.loopexit ] ; 3 uses
  %.01922.i.i30 = phi ptr [ %i.hy, %.lr.ph.i.i27 ], [ %.01922.i.i30.unr, %.lr.ph.i.i27.prol.loopexit ] ; 3 uses
  %.02021.i.i31 = phi i32 [ %i.hv, %.lr.ph.i.i27 ], [ %.02021.i.i31.unr, %.lr.ph.i.i27.prol.loopexit ] ; 2 uses
  %i.hi = load <4 x double>, ptr %.01823.i.i29, align 32, !tbaa !11 ; 2 uses
  %i.hj = load <4 x double>, ptr %.01922.i.i30, align 32, !tbaa !11 ; 2 uses
  %i.hk = shufflevector <4 x double> %i.hi, <4 x double> %i.hj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hl = shufflevector <4 x double> %i.hi, <4 x double> %i.hj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.hk, ptr %.024.i.i28, align 32, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %.024.i.i28, i64 32
  store <4 x double> %i.hl, ptr %i.hm, align 32, !tbaa !11
  %i.hn = getelementptr inbounds nuw i8, ptr %.024.i.i28, i64 64
  %i.ho = getelementptr inbounds nuw i8, ptr %.01823.i.i29, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %.01922.i.i30, i64 32
  %i.hq = load <4 x double>, ptr %i.ho, align 32, !tbaa !11 ; 2 uses
  %i.hr = load <4 x double>, ptr %i.hp, align 32, !tbaa !11 ; 2 uses
  %i.hs = shufflevector <4 x double> %i.hq, <4 x double> %i.hr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ht = shufflevector <4 x double> %i.hq, <4 x double> %i.hr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.hs, ptr %i.hn, align 32, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %.024.i.i28, i64 96
  store <4 x double> %i.ht, ptr %i.hu, align 32, !tbaa !11
  %i.hv = add nsw i32 %.02021.i.i31, -16
  %i.hw = getelementptr inbounds nuw i8, ptr %.024.i.i28, i64 128
  %i.hx = getelementptr inbounds nuw i8, ptr %.01823.i.i29, i64 64
  %i.hy = getelementptr inbounds nuw i8, ptr %.01922.i.i30, i64 64
  %i.hz = icmp sgt i32 %.02021.i.i31, 16
  br i1 %i.hz, label %.lr.ph.i.i27, label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !107

bb.r:                                             ; preds = %.loopexit.i21, %.lr.ph286.i
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph286.i ], [ %indvars.iv.next.i22, %.loopexit.i21 ] ; 2 uses
  %.0.in285.i = phi i1 [ %5, %.lr.ph286.i ], [ %i.qm, %.loopexit.i21 ] ; 5 uses
  %.0192284.i = phi ptr [ %i.gp, %.lr.ph286.i ], [ %.0193283.i, %.loopexit.i21 ] ; 27 uses
  %.0193283.i = phi ptr [ %i.go, %.lr.ph286.i ], [ %.0192284.i, %.loopexit.i21 ] ; 21 uses
  %.0196282.i = phi i32 [ %i.gn, %.lr.ph286.i ], [ %.0197281.i, %.loopexit.i21 ] ; 21 uses
  %.0197281.i = phi i32 [ %i.gk, %.lr.ph286.i ], [ %.0196282.i, %.loopexit.i21 ] ; 3 uses
  %i.ia = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i15 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !11 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !11 ; 2 uses
  %i.ig = load i8, ptr %i.ib, align 4, !tbaa !11  ; 4 uses
  %i.ih = sext i16 %i.if to i64                   ; 9 uses
  %i.ii = insertelement <4 x i64> poison, i64 %i.ih, i64 0
  %i.ij = shufflevector <4 x i64> %i.ii, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ik = zext i8 %i.ig to i32                    ; 5 uses
  %i.il = sub nsw i32 63, %i.ik
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl nuw i64 1, %i.im
  %i.io = insertelement <4 x i64> poison, i64 %i.in, i64 0
  %i.ip = shufflevector <4 x i64> %i.io, <4 x i64> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.iq = load i64, ptr %.0192284.i, align 8, !tbaa !13
  %i.ir = getelementptr inbounds i8, ptr %.0192284.i, i64 -8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !13
  %i.is = add nsw i32 %.0197281.i, -1
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.0192284.i, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !13
  %i.iw = zext nneg i32 %.0197281.i to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.0192284.i, i64 %i.iw
  store i64 %i.iv, ptr %i.ix, align 8, !tbaa !13
  %i.iy = icmp eq i16 %i.id, 1
  br i1 %i.iy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not293.i33 = icmp eq i32 %.0196282.i, 0       ; 2 uses
  br i1 %.0.in285.i, label %.preheader.i34, label %.preheader233.i

.preheader233.i:                                  ; preds = %bb.s
  br i1 %.not293.i33, label %.loopexit.i21, label %.lr.ph275.i

.preheader.i34:                                   ; preds = %bb.s
  br i1 %.not293.i33, label %.loopexit.i21, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %.preheader.i34, %.lr.ph279.i
  %.0199278.i = phi ptr [ %i.jj, %.lr.ph279.i ], [ %.0192284.i, %.preheader.i34 ] ; 3 uses
  %.0202277.i = phi ptr [ %i.jk, %.lr.ph279.i ], [ %.0193283.i, %.preheader.i34 ] ; 3 uses
  %.0210276.i = phi i32 [ %i.ji, %.lr.ph279.i ], [ %.0196282.i, %.preheader.i34 ] ; 2 uses
  %i.iz = load <4 x i64>, ptr %.0199278.i, align 32, !tbaa !11
  %i.ja = getelementptr inbounds i8, ptr %.0199278.i, i64 -8
  %i.jb = load <4 x i64>, ptr %i.ja, align 8, !tbaa !11
  %i.jc = load <4 x i64>, ptr %.0202277.i, align 32, !tbaa !11
  %i.jd = add <4 x i64> %i.iz, %i.ij
  %i.je = add <4 x i64> %i.jd, %i.jb
  %i.jf = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.je, i32 range(i32 0, 256) %i.ik)
  %i.jg = xor <4 x i64> %i.jf, %i.ip
  %.neg221.i = add <4 x i64> %i.jc, %i.ip
  %i.jh = sub <4 x i64> %.neg221.i, %i.jg
  store <4 x i64> %i.jh, ptr %.0202277.i, align 32, !tbaa !11
  %i.ji = add nsw i32 %.0210276.i, -4
  %i.jj = getelementptr inbounds nuw i8, ptr %.0199278.i, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %.0202277.i, i64 32
  %i.jl = icmp sgt i32 %.0210276.i, 4
  br i1 %i.jl, label %.lr.ph279.i, label %.loopexit.i21, !llvm.loop !108

.lr.ph275.i:                                      ; preds = %.preheader233.i, %.lr.ph275.i
  %.1274.i = phi ptr [ %i.jw, %.lr.ph275.i ], [ %.0192284.i, %.preheader233.i ] ; 3 uses
  %.1203273.i = phi ptr [ %i.jx, %.lr.ph275.i ], [ %.0193283.i, %.preheader233.i ] ; 3 uses
  %.1211272.i = phi i32 [ %i.jv, %.lr.ph275.i ], [ %.0196282.i, %.preheader233.i ] ; 2 uses
  %i.jm = load <4 x i64>, ptr %.1274.i, align 32, !tbaa !11
  %i.jn = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  %i.jo = load <4 x i64>, ptr %i.jn, align 8, !tbaa !11
  %i.jp = load <4 x i64>, ptr %.1203273.i, align 32, !tbaa !11
  %i.jq = add <4 x i64> %i.jm, %i.ij
  %i.jr = add <4 x i64> %i.jq, %i.jo
  %i.js = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.jr, i32 range(i32 0, 256) %i.ik)
  %i.jt = xor <4 x i64> %i.js, %i.ip
  %.neg220.i = add <4 x i64> %i.jp, %i.ip
  %i.ju = sub <4 x i64> %.neg220.i, %i.jt
  store <4 x i64> %i.ju, ptr %.1203273.i, align 32, !tbaa !11
  %i.jv = add nsw i32 %.1211272.i, -4
  %i.jw = getelementptr inbounds nuw i8, ptr %.1274.i, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %.1203273.i, i64 32
  %i.jy = icmp sgt i32 %.1211272.i, 4
  br i1 %i.jy, label %.lr.ph275.i, label %.loopexit.i21, !llvm.loop !109

bb.t:                                             ; preds = %bb.r
  %i.jz = icmp eq i16 %i.id, -1                   ; 2 uses
  %i.ka = icmp eq i16 %i.if, 1
  %or.cond.i16 = and i1 %i.jz, %i.ka
  %i.kb = icmp eq i8 %i.ig, 1
  %or.cond4.i17 = select i1 %or.cond.i16, i1 %i.kb, i1 false
  %.not291.i18 = icmp eq i32 %.0196282.i, 0       ; 6 uses
  br i1 %or.cond4.i17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.0.in285.i, label %.preheader235.i, label %.preheader237.i

.preheader237.i:                                  ; preds = %bb.u
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph267.i

.preheader235.i:                                  ; preds = %bb.u
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph271.i

.lr.ph271.i:                                      ; preds = %.preheader235.i, %.lr.ph271.i
  %.2270.i = phi ptr [ %i.km, %.lr.ph271.i ], [ %.0192284.i, %.preheader235.i ] ; 3 uses
  %.2204269.i = phi ptr [ %i.kn, %.lr.ph271.i ], [ %.0193283.i, %.preheader235.i ] ; 3 uses
  %.0212268.i = phi i32 [ %i.kl, %.lr.ph271.i ], [ %.0196282.i, %.preheader235.i ] ; 2 uses
  %i.kc = load <4 x i64>, ptr %.2270.i, align 32, !tbaa !11
  %i.kd = getelementptr inbounds i8, ptr %.2270.i, i64 -8
  %i.ke = load <4 x i64>, ptr %i.kd, align 8, !tbaa !11
  %i.kf = load <4 x i64>, ptr %.2204269.i, align 32, !tbaa !11
  %i.kg = add <4 x i64> %i.ke, %i.kc
  %i.kh = lshr <4 x i64> %i.kg, splat (i64 1)
  %i.ki = xor <4 x i64> %i.kh, %i.ip
  %i.kj = sub <4 x i64> %i.kf, %i.ip
  %i.kk = add <4 x i64> %i.kj, %i.ki
  store <4 x i64> %i.kk, ptr %.2204269.i, align 32, !tbaa !11
  %i.kl = add nsw i32 %.0212268.i, -4
  %i.km = getelementptr inbounds nuw i8, ptr %.2270.i, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %.2204269.i, i64 32
  %i.ko = icmp sgt i32 %.0212268.i, 4
  br i1 %i.ko, label %.lr.ph271.i, label %.loopexit.i21, !llvm.loop !110

.lr.ph267.i:                                      ; preds = %.preheader237.i, %.lr.ph267.i
  %.3266.i = phi ptr [ %i.kz, %.lr.ph267.i ], [ %.0192284.i, %.preheader237.i ] ; 3 uses
  %.3205265.i = phi ptr [ %i.la, %.lr.ph267.i ], [ %.0193283.i, %.preheader237.i ] ; 3 uses
  %.1213264.i = phi i32 [ %i.ky, %.lr.ph267.i ], [ %.0196282.i, %.preheader237.i ] ; 2 uses
  %i.kp = load <4 x i64>, ptr %.3266.i, align 32, !tbaa !11
  %i.kq = getelementptr inbounds nuw i8, ptr %.3266.i, i64 8
  %i.kr = load <4 x i64>, ptr %i.kq, align 8, !tbaa !11
  %i.ks = load <4 x i64>, ptr %.3205265.i, align 32, !tbaa !11
  %i.kt = add <4 x i64> %i.kr, %i.kp
  %i.ku = lshr <4 x i64> %i.kt, splat (i64 1)
  %i.kv = xor <4 x i64> %i.ku, %i.ip
  %i.kw = sub <4 x i64> %i.ks, %i.ip
  %i.kx = add <4 x i64> %i.kw, %i.kv
  store <4 x i64> %i.kx, ptr %.3205265.i, align 32, !tbaa !11
  %i.ky = add nsw i32 %.1213264.i, -4
  %i.kz = getelementptr inbounds nuw i8, ptr %.3266.i, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %.3205265.i, i64 32
  %i.lb = icmp sgt i32 %.1213264.i, 4
  br i1 %i.lb, label %.lr.ph267.i, label %.loopexit.i21, !llvm.loop !111

bb.v:                                             ; preds = %bb.t
  br i1 %i.jz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %.0.in285.i, label %.preheader239.i, label %.preheader241.i

.preheader241.i:                                  ; preds = %bb.w
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph259.i

.preheader239.i:                                  ; preds = %bb.w
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.preheader239.i, %.lr.ph263.i
  %.4262.i = phi ptr [ %i.lm, %.lr.ph263.i ], [ %.0192284.i, %.preheader239.i ] ; 3 uses
  %.0200261.i = phi i32 [ %i.ll, %.lr.ph263.i ], [ %.0196282.i, %.preheader239.i ] ; 2 uses
  %.4206260.i = phi ptr [ %i.ln, %.lr.ph263.i ], [ %.0193283.i, %.preheader239.i ] ; 3 uses
  %i.lc = load <4 x i64>, ptr %.4262.i, align 32, !tbaa !11
  %i.ld = getelementptr inbounds i8, ptr %.4262.i, i64 -8
  %i.le = load <4 x i64>, ptr %i.ld, align 8, !tbaa !11
  %i.lf = load <4 x i64>, ptr %.4206260.i, align 32, !tbaa !11
  %i.lg = add <4 x i64> %i.lc, %i.le
  %i.lh = sub <4 x i64> %i.ij, %i.lg
  %i.li = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.lh, i32 range(i32 0, 256) %i.ik)
  %i.lj = xor <4 x i64> %i.li, %i.ip
  %.neg219.i = add <4 x i64> %i.lf, %i.ip
  %i.lk = sub <4 x i64> %.neg219.i, %i.lj
  store <4 x i64> %i.lk, ptr %.4206260.i, align 32, !tbaa !11
  %i.ll = add nsw i32 %.0200261.i, -4
  %i.lm = getelementptr inbounds nuw i8, ptr %.4262.i, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %.4206260.i, i64 32
  %i.lo = icmp sgt i32 %.0200261.i, 4
  br i1 %i.lo, label %.lr.ph263.i, label %.loopexit.i21, !llvm.loop !112

.lr.ph259.i:                                      ; preds = %.preheader241.i, %.lr.ph259.i
  %.5258.i = phi ptr [ %i.lz, %.lr.ph259.i ], [ %.0192284.i, %.preheader241.i ] ; 3 uses
  %.1201257.i = phi i32 [ %i.ly, %.lr.ph259.i ], [ %.0196282.i, %.preheader241.i ] ; 2 uses
  %.5207256.i = phi ptr [ %i.ma, %.lr.ph259.i ], [ %.0193283.i, %.preheader241.i ] ; 3 uses
  %i.lp = load <4 x i64>, ptr %.5258.i, align 32, !tbaa !11
  %i.lq = getelementptr inbounds nuw i8, ptr %.5258.i, i64 8
  %i.lr = load <4 x i64>, ptr %i.lq, align 8, !tbaa !11
  %i.ls = load <4 x i64>, ptr %.5207256.i, align 32, !tbaa !11
  %i.lt = add <4 x i64> %i.lp, %i.lr
  %i.lu = sub <4 x i64> %i.ij, %i.lt
  %i.lv = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.lu, i32 range(i32 0, 256) %i.ik)
  %i.lw = xor <4 x i64> %i.lv, %i.ip
  %.neg.i = add <4 x i64> %i.ls, %i.ip
  %i.lx = sub <4 x i64> %.neg.i, %i.lw
  store <4 x i64> %i.lx, ptr %.5207256.i, align 32, !tbaa !11
  %i.ly = add nsw i32 %.1201257.i, -4
  %i.lz = getelementptr inbounds nuw i8, ptr %.5258.i, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %.5207256.i, i64 32
  %i.mb = icmp sgt i32 %.1201257.i, 4
  br i1 %i.mb, label %.lr.ph259.i, label %.loopexit.i21, !llvm.loop !113

bb.x:                                             ; preds = %bb.v
  br i1 %.0.in285.i, label %.preheader243.i, label %.preheader245.i

.preheader245.i:                                  ; preds = %bb.x
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader245.i
  %i.mc = sext i16 %i.id to i64                   ; 4 uses
  %i.md = zext nneg i8 %i.ig to i64               ; 4 uses
  %i.me = zext nneg i32 %.0196282.i to i64        ; 2 uses
  %min.iters.check149 = icmp samesign ult i32 %.0196282.i, 4
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.i19
  %i.mf = add nsw i32 %.0196282.i, -1
  %i.mg = zext i32 %i.mf to i64
  %i.mh = shl nuw nsw i64 %i.mg, 3                ; 2 uses
  %6 = add nuw nsw i64 %i.mh, 8                   ; 2 uses
  %7 = getelementptr i8, ptr %.0193283.i, i64 %6  ; 2 uses
  %i.mi = getelementptr i8, ptr %.0192284.i, i64 %6
  %i.mj = getelementptr i8, ptr %.0192284.i, i64 8
  %i.mk = getelementptr i8, ptr %.0192284.i, i64 %i.mh
  %i.ml = getelementptr i8, ptr %i.mk, i64 16
  %bound0151 = icmp ult ptr %.0193283.i, %i.mi
  %bound1152 = icmp ult ptr %.0192284.i, %7
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult ptr %.0193283.i, %i.ml
  %bound1155 = icmp ult ptr %i.mj, %7
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  br i1 %conflict.rdx157, label %scalar.ph148.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck150
  %n.vec159 = and i64 %i.me, 2147483644           ; 4 uses
  %i.mm = trunc nuw nsw i64 %n.vec159 to i32
  %i.mn = sub nsw i32 %.0196282.i, %i.mm
  %i.mo = shl nuw nsw i64 %n.vec159, 3            ; 2 uses
  %i.mp = getelementptr i8, ptr %.0192284.i, i64 %i.mo
  %i.mq = getelementptr i8, ptr %.0193283.i, i64 %i.mo
  %broadcast.splatinsert160 = insertelement <4 x i64> poison, i64 %i.mc, i64 0
  %broadcast.splat161 = shufflevector <4 x i64> %broadcast.splatinsert160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert162 = insertelement <4 x i64> poison, i64 %i.md, i64 0
  %broadcast.splat163 = shufflevector <4 x i64> %broadcast.splatinsert162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %i.ih, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph158
  %index167 = phi i64 [ 0, %vector.ph158 ], [ %index.next173, %vector.body166 ] ; 2 uses
  %i.mr = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %.0192284.i, i64 %i.mr ; 2 uses
  %next.gep169 = getelementptr i8, ptr %.0193283.i, i64 %i.mr ; 2 uses
  %wide.load170 = load <4 x i64>, ptr %next.gep168, align 8, !tbaa !13, !alias.scope !127
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep168, i64 8
  %wide.load171 = load <4 x i64>, ptr %i.ms, align 8, !tbaa !13, !alias.scope !128
  %i.mt = add nsw <4 x i64> %wide.load171, %wide.load170
  %i.mu = mul nsw <4 x i64> %i.mt, %broadcast.splat161
  %i.mv = add nsw <4 x i64> %i.mu, %broadcast.splat165
  %i.mw = ashr <4 x i64> %i.mv, %broadcast.splat163
  %wide.load172 = load <4 x i64>, ptr %next.gep169, align 8, !tbaa !13, !alias.scope !129, !noalias !130
  %i.mx = sub nsw <4 x i64> %wide.load172, %i.mw
  store <4 x i64> %i.mx, ptr %next.gep169, align 8, !tbaa !13, !alias.scope !129, !noalias !130
  %index.next173 = add nuw i64 %index167, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next173, %n.vec159
  br i1 %i.my, label %middle.block174, label %vector.body166, !llvm.loop !118

middle.block174:                                  ; preds = %vector.body166
  %cmp.n175 = icmp eq i64 %n.vec159, %i.me
  br i1 %cmp.n175, label %.loopexit.i21, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.memcheck150, %.lr.ph.i19, %middle.block174
  %.0194250.i.ph = phi i32 [ %.0196282.i, %vector.memcheck150 ], [ %.0196282.i, %.lr.ph.i19 ], [ %i.mn, %middle.block174 ] ; 4 uses
  %.7249.i.ph = phi ptr [ %.0192284.i, %vector.memcheck150 ], [ %.0192284.i, %.lr.ph.i19 ], [ %i.mp, %middle.block174 ] ; 3 uses
  %.7209248.i.ph = phi ptr [ %.0193283.i, %vector.memcheck150 ], [ %.0193283.i, %.lr.ph.i19 ], [ %i.mq, %middle.block174 ] ; 4 uses
  %xtraiter194 = and i32 %.0194250.i.ph, 1
  %lcmp.mod195.not = icmp eq i32 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader
  %i.mz = load i64, ptr %.7249.i.ph, align 8, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %.7249.i.ph, i64 8 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !13
  %i.nc = add nsw i64 %i.nb, %i.mz
  %i.nd = mul nsw i64 %i.nc, %i.mc
  %i.ne = add nsw i64 %i.nd, %i.ih
  %i.nf = ashr i64 %i.ne, %i.md
  %i.ng = load i64, ptr %.7209248.i.ph, align 8, !tbaa !13
  %i.nh = sub nsw i64 %i.ng, %i.nf
  store i64 %i.nh, ptr %.7209248.i.ph, align 8, !tbaa !13
  %i.ni = add nsw i32 %.0194250.i.ph, -1
  %i.nj = getelementptr inbounds nuw i8, ptr %.7209248.i.ph, i64 8
  br label %scalar.ph148.prol.loopexit

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %.0194250.i.unr = phi i32 [ %.0194250.i.ph, %scalar.ph148.preheader ], [ %i.ni, %scalar.ph148.prol ]
  %.7249.i.unr = phi ptr [ %.7249.i.ph, %scalar.ph148.preheader ], [ %i.na, %scalar.ph148.prol ]
  %.7209248.i.unr = phi ptr [ %.7209248.i.ph, %scalar.ph148.preheader ], [ %i.nj, %scalar.ph148.prol ]
  %i.nk = icmp eq i32 %.0194250.i.ph, 1
  br i1 %i.nk, label %.loopexit.i21, label %scalar.ph148

.preheader243.i:                                  ; preds = %bb.x
  br i1 %.not291.i18, label %.loopexit.i21, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.preheader243.i
  %i.nl = sext i16 %i.id to i64                   ; 4 uses
  %i.nm = zext nneg i8 %i.ig to i64               ; 4 uses
  %i.nn = zext nneg i32 %.0196282.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0196282.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph255.i
  %i.no = add nsw i32 %.0196282.i, -1
  %i.np = zext i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 3                ; 2 uses
  %i.nr = add nuw nsw i64 %i.nq, 8                ; 2 uses
  %i.ns = getelementptr i8, ptr %.0193283.i, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %.0192284.i, i64 -8
  %8 = getelementptr i8, ptr %.0192284.i, i64 %i.nq
  %i.nu = getelementptr i8, ptr %.0192284.i, i64 %i.nr
  %bound0 = icmp ult ptr %.0193283.i, %8
  %bound1 = icmp ult ptr %i.nt, %i.ns
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %.0193283.i, %i.nu
  %bound1124 = icmp ult ptr %.0192284.i, %i.ns
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nn, 2147483644              ; 4 uses
  %i.nv = trunc nuw nsw i64 %n.vec to i32
  %i.nw = sub nsw i32 %.0196282.i, %i.nv
  %i.nx = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ny = getelementptr i8, ptr %.0192284.i, i64 %i.nx
  %i.nz = getelementptr i8, ptr %.0193283.i, i64 %i.nx
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.nl, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <4 x i64> poison, i64 %i.nm, i64 0
  %broadcast.splat127 = shufflevector <4 x i64> %broadcast.splatinsert126, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %i.ih, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0192284.i, i64 %i.oa ; 2 uses
  %next.gep130 = getelementptr i8, ptr %.0193283.i, i64 %i.oa ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %next.gep, i64 -8
  %wide.load = load <4 x i64>, ptr %i.ob, align 8, !tbaa !13, !alias.scope !131
  %wide.load131 = load <4 x i64>, ptr %next.gep, align 8, !tbaa !13, !alias.scope !132
  %i.oc = add nsw <4 x i64> %wide.load131, %wide.load
  %i.od = mul nsw <4 x i64> %i.oc, %broadcast.splat
  %i.oe = add nsw <4 x i64> %i.od, %broadcast.splat129
  %i.of = ashr <4 x i64> %i.oe, %broadcast.splat127
  %wide.load132 = load <4 x i64>, ptr %next.gep130, align 8, !tbaa !13, !alias.scope !133, !noalias !134
  %i.og = sub nsw <4 x i64> %wide.load132, %i.of
  store <4 x i64> %i.og, ptr %next.gep130, align 8, !tbaa !13, !alias.scope !133, !noalias !134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oh = icmp eq i64 %index.next, %n.vec
  br i1 %i.oh, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nn
  br i1 %cmp.n, label %.loopexit.i21, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph255.i, %middle.block
  %.0195254.i.ph = phi i32 [ %.0196282.i, %vector.memcheck ], [ %.0196282.i, %.lr.ph255.i ], [ %i.nw, %middle.block ] ; 4 uses
  %.6253.i32.ph = phi ptr [ %.0192284.i, %vector.memcheck ], [ %.0192284.i, %.lr.ph255.i ], [ %i.ny, %middle.block ] ; 4 uses
  %.6208252.i.ph = phi ptr [ %.0193283.i, %vector.memcheck ], [ %.0193283.i, %.lr.ph255.i ], [ %i.nz, %middle.block ] ; 4 uses
  %xtraiter196 = and i32 %.0195254.i.ph, 1
  %lcmp.mod197.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.oi = getelementptr inbounds i8, ptr %.6253.i32.ph, i64 -8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !13
  %i.ok = load i64, ptr %.6253.i32.ph, align 8, !tbaa !13
  %i.ol = add nsw i64 %i.ok, %i.oj
  %i.om = mul nsw i64 %i.ol, %i.nl
  %i.on = add nsw i64 %i.om, %i.ih
  %i.oo = ashr i64 %i.on, %i.nm
  %i.op = load i64, ptr %.6208252.i.ph, align 8, !tbaa !13
  %i.oq = sub nsw i64 %i.op, %i.oo
  store i64 %i.oq, ptr %.6208252.i.ph, align 8, !tbaa !13
  %i.or = add nsw i32 %.0195254.i.ph, -1
  %i.os = getelementptr inbounds nuw i8, ptr %.6253.i32.ph, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %.6208252.i.ph, i64 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0195254.i.unr = phi i32 [ %.0195254.i.ph, %scalar.ph.preheader ], [ %i.or, %scalar.ph.prol ]
  %.6253.i32.unr = phi ptr [ %.6253.i32.ph, %scalar.ph.preheader ], [ %i.os, %scalar.ph.prol ]
  %.6208252.i.unr = phi ptr [ %.6208252.i.ph, %scalar.ph.preheader ], [ %i.ot, %scalar.ph.prol ]
  %i.ou = icmp eq i32 %.0195254.i.ph, 1
  br i1 %i.ou, label %.loopexit.i21, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0195254.i = phi i32 [ %i.po, %scalar.ph ], [ %.0195254.i.unr, %scalar.ph.prol.loopexit ]
  %.6253.i32 = phi ptr [ %i.pp, %scalar.ph ], [ %.6253.i32.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.6208252.i = phi ptr [ %i.pq, %scalar.ph ], [ %.6208252.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ov = getelementptr inbounds i8, ptr %.6253.i32, i64 -8
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !13
  %i.ox = load i64, ptr %.6253.i32, align 8, !tbaa !13
  %i.oy = add nsw i64 %i.ox, %i.ow
  %i.oz = mul nsw i64 %i.oy, %i.nl
  %i.pa = add nsw i64 %i.oz, %i.ih
  %i.pb = ashr i64 %i.pa, %i.nm
  %i.pc = load i64, ptr %.6208252.i, align 8, !tbaa !13
  %i.pd = sub nsw i64 %i.pc, %i.pb
  store i64 %i.pd, ptr %.6208252.i, align 8, !tbaa !13
  %i.pe = getelementptr inbounds nuw i8, ptr %.6253.i32, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %.6208252.i, i64 8 ; 2 uses
  %i.pg = load i64, ptr %.6253.i32, align 8, !tbaa !13
  %i.ph = load i64, ptr %i.pe, align 8, !tbaa !13
  %i.pi = add nsw i64 %i.ph, %i.pg
  %i.pj = mul nsw i64 %i.pi, %i.nl
  %i.pk = add nsw i64 %i.pj, %i.ih
  %i.pl = ashr i64 %i.pk, %i.nm
  %i.pm = load i64, ptr %i.pf, align 8, !tbaa !13
  %i.pn = sub nsw i64 %i.pm, %i.pl
  store i64 %i.pn, ptr %i.pf, align 8, !tbaa !13
  %i.po = add nsw i32 %.0195254.i, -2             ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.6253.i32, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.6208252.i, i64 16
  %.not218.i.1 = icmp eq i32 %i.po, 0
  br i1 %.not218.i.1, label %.loopexit.i21, label %scalar.ph, !llvm.loop !124

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %.0194250.i = phi i32 [ %i.qk, %scalar.ph148 ], [ %.0194250.i.unr, %scalar.ph148.prol.loopexit ]
  %.7249.i = phi ptr [ %i.qc, %scalar.ph148 ], [ %.7249.i.unr, %scalar.ph148.prol.loopexit ] ; 3 uses
  %.7209248.i = phi ptr [ %i.ql, %scalar.ph148 ], [ %.7209248.i.unr, %scalar.ph148.prol.loopexit ] ; 4 uses
  %i.pr = load i64, ptr %.7249.i, align 8, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %.7249.i, i64 8 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !13
  %i.pu = add nsw i64 %i.pt, %i.pr
  %i.pv = mul nsw i64 %i.pu, %i.mc
  %i.pw = add nsw i64 %i.pv, %i.ih
  %i.px = ashr i64 %i.pw, %i.md
  %i.py = load i64, ptr %.7209248.i, align 8, !tbaa !13
  %i.pz = sub nsw i64 %i.py, %i.px
  store i64 %i.pz, ptr %.7209248.i, align 8, !tbaa !13
  %i.qa = getelementptr inbounds nuw i8, ptr %.7209248.i, i64 8 ; 2 uses
  %i.qb = load i64, ptr %i.ps, align 8, !tbaa !13
  %i.qc = getelementptr inbounds nuw i8, ptr %.7249.i, i64 16 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !13
  %i.qe = add nsw i64 %i.qd, %i.qb
  %i.qf = mul nsw i64 %i.qe, %i.mc
  %i.qg = add nsw i64 %i.qf, %i.ih
  %i.qh = ashr i64 %i.qg, %i.md
  %i.qi = load i64, ptr %i.qa, align 8, !tbaa !13
  %i.qj = sub nsw i64 %i.qi, %i.qh
  store i64 %i.qj, ptr %i.qa, align 8, !tbaa !13
  %i.qk = add nsw i32 %.0194250.i, -2             ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.7209248.i, i64 16
  %.not.i20.1 = icmp eq i32 %i.qk, 0
  br i1 %.not.i20.1, label %.loopexit.i21, label %scalar.ph148, !llvm.loop !125

.loopexit.i21:                                    ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph259.i, %.lr.ph263.i, %.lr.ph267.i, %.lr.ph271.i, %.lr.ph275.i, %.lr.ph279.i, %middle.block174, %middle.block, %.preheader243.i, %.preheader245.i, %.preheader239.i, %.preheader241.i, %.preheader235.i, %.preheader237.i, %.preheader.i34, %.preheader233.i
  %i.qm = xor i1 %.0.in285.i, true
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i14
  br i1 %exitcond.not.i23, label %._crit_edge.i24, label %bb.r, !llvm.loop !126

bb.y:                                             ; preds = %bb.p
  br i1 %5, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !11
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !13
  br label %_ZN4ojph5localL17avx2_interleave64EPdS1_S1_i.exit.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !11
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !13
  %i.qt = ashr i64 %i.qs, 1
  br label %_ZN4ojph5localL17avx2_interleave64EPdS1_S1_i.exit.sink.split.i

_ZN4ojph5localL17avx2_interleave64EPdS1_S1_i.exit.sink.split.i: ; preds = %bb.aa, %bb.z
  %.sink.i12 = phi i64 [ %i.qp, %bb.z ], [ %i.qt, %bb.aa ]
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !11
  store i64 %.sink.i12, ptr %i.qv, align 8, !tbaa !13
  br label %_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

_ZN4ojph5localL19avx2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27, %_ZN4ojph5localL17avx2_interleave64EPdS1_S1_i.exit.sink.split.i, %._crit_edge.i24, %_ZN4ojph5localL17avx2_interleave32EPfS1_S1_i.exit.sink.split.i, %._crit_edge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32>, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"_ZTSN4ojph8line_bufE", !8, i64 0, !5, i64 8, !5, i64 12, !4, i64 16}
!10 = !{!9, !5, i64 12}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!8, !8, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"short", !4, i64 0}
!17 = !{!"float", !4, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ojph5local9param_atkE", !18, i64 0}
!21 = !{!"_ZTSN4ojph5local9param_atkE", !16, i64 0, !16, i64 2, !17, i64 4, !4, i64 8, !19, i64 16, !5, i64 24, !4, i64 28, !20, i64 80, !20, i64 88, !20, i64 96}
!22 = !{!21, !4, i64 8}
!23 = !{!21, !19, i64 16}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !12, !14, !15}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !12, !14, !15}
!49 = distinct !{!49, !12, !14}
!50 = distinct !{!50, !12, !14}
!51 = !{!40}
!52 = !{!41}
!53 = !{!42}
!54 = !{!40, !41}
!55 = !{!45}
!56 = !{!46}
!57 = !{!47}
!58 = !{!45, !46}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, i1 false, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !12, !14, !15}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !12, !14, !15}
!86 = distinct !{!86, !12, !14}
!87 = distinct !{!87, !12, !14}
!88 = distinct !{!88, !12}
!89 = !{!77}
!90 = !{!78}
!91 = !{!79}
!92 = !{!77, !78}
!93 = !{!82}
!94 = !{!83}
!95 = !{!84}
!96 = !{!82, !83}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, i1 false, !"LVerDomain"}
!115 = distinct !{!115, !114}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !114}
!118 = distinct !{!118, !12, !14, !15}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !119}
!123 = distinct !{!123, !12, !14, !15}
!124 = distinct !{!124, !12, !14}
!125 = distinct !{!125, !12, !14}
!126 = distinct !{!126, !12}
!127 = !{!115}
!128 = !{!116}
!129 = !{!117}
!130 = !{!115, !116}
!131 = !{!120}
!132 = !{!121}
!133 = !{!122}
!134 = !{!120, !121}
end_hunk_0
