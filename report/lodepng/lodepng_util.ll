inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng14convertFromXYZEPhPKfjjPK12LodePNGStateS2_j:bb.a
  %i.hc = fptoui <4 x float> %i.hb to <4 x i8>
  %i.hd = select <4 x i1> %i.gz, <4 x i8> %i.ha, <4 x i8> %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 60
  %i.hm = load float, ptr %i.hf, align 4, !tbaa !82
  %i.hn = load float, ptr %i.hh, align 4, !tbaa !82
  %i.ho = load float, ptr %i.hj, align 4, !tbaa !82
  %i.hp = load float, ptr %i.hl, align 4, !tbaa !82
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3 ; 3 uses
  %i.hu = fcmp olt <4 x float> %i.ht, zeroinitializer
  %i.hv = fcmp uge <4 x float> %i.ht, splat (float 1.000000e+00) ; 2 uses
  %i.hw = or <4 x i1> %i.hv, %i.hu
  %i.hx = sext <4 x i1> %i.hv to <4 x i8>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hz = fptoui <4 x float> %i.hy to <4 x i8>
  %i.ia = select <4 x i1> %i.hw, <4 x i8> %i.hx, <4 x i8> %i.hz
  %i.ib = shufflevector <4 x i8> %i.fi, <4 x i8> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ic = shufflevector <4 x i8> %i.hd, <4 x i8> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i8> %i.ib, <8 x i8> %i.ic, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.fj, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %mul.i133, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader139.preheader161

.preheader139.preheader161:                       ; preds = %.preheader139.preheader, %middle.block
  %.195141.ph = phi i64 [ 0, %.preheader139.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader161, %.preheader139
  %.195141 = phi i64 [ %i.ip, %.preheader139 ], [ %.195141.ph, %.preheader139.preheader161 ] ; 2 uses
  %i.ie = shl i64 %.195141, 2                     ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ie
  %i.ih = load <4 x float>, ptr %i.if, align 4, !tbaa !82 ; 3 uses
  %i.ii = fcmp olt <4 x float> %i.ih, zeroinitializer
  %i.ij = fcmp uge <4 x float> %i.ih, splat (float 1.000000e+00) ; 2 uses
  %i.ik = or <4 x i1> %i.ij, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.in = fptoui <4 x float> %i.im to <4 x i8>
  %i.io = select <4 x i1> %i.ik, <4 x i8> %i.il, <4 x i8> %i.in
  store <4 x i8> %i.io, ptr %i.ig, align 1, !tbaa !20
  %i.ip = add nuw i64 %.195141, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ip, %mul.i133
  br i1 %exitcond.not, label %._crit_edge, label %.preheader139, !llvm.loop !120

._crit_edge:                                      ; preds = %.preheader139, %middle.block, %bb.k
  %i.iq = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge144, %bb.h, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.4 = phi i32 [ 1, %bb.b ], [ %i.ei, %._crit_edge144 ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.iq, %._crit_edge ], [ 1, %bb.g ], [ %i.ac, %bb.h ]
  %.091 = phi ptr [ null, %bb.b ], [ %i.aa, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.aa, %._crit_edge ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %.090 = phi ptr [ null, %bb.b ], [ %i.ad, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %._crit_edge ], [ null, %bb.g ], [ null, %bb.h ]
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !69
  call void @free(ptr noundef %i.ir) #28
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !69
  call void @free(ptr noundef %i.is) #28
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !69
  call void @free(ptr noundef %i.it) #28
  call void @free(ptr noundef %.091) #28
  call void @free(ptr noundef %.090) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [9 x float], align 16             ; 15 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %mul.i46 = mul nuw i64 %i.f, %i.e               ; 6 uses
  %i.g = call fastcc noundef i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef %5, ptr noundef %6, ptr noundef %4)
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c)
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i32 %8, 3                        ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !82
  %i.n = load <2 x float>, ptr %7, align 4, !tbaa !82 ; 2 uses
  %i.o = load <2 x float>, ptr %i.d, align 8, !tbaa !82 ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.q = fpext <2 x float> %i.p to <2 x double>   ; 3 uses
  %i.r = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.k, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 3 uses
  %i.w = fmul <2 x double> %i.q, splat (double f0x3FD10CB2A0000000)
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FECA4A8C0000000), <2 x double> %i.w)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0xBFC4A8C160000000), <2 x double> %i.x)
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = fmul <2 x double> %i.q, splat (double f0x3FFB6A7F00000000)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0xBFE801A360000000), <2 x double> %i.aa)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FA2CA57A0000000), <2 x double> %i.ab) ; 2 uses
  %i.ad = fmul <2 x double> %i.q, splat (double f0xBFB1893740000000)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FA3EAB360000000), <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FF0793DE0000000), <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.z, i64 0
  %i.ah = extractelement <2 x float> %i.z, i64 1
  %i.ai = fdiv float %i.ag, %i.ah
  %i.aj = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = fdiv <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !82
  %i.ar = fpext float %i.aq to double             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !82
  %i.au = fpext float %i.at to double             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.aw = load float, ptr %i.av, align 16, !tbaa !82
  %i.ax = fpext float %i.aw to double             ; 2 uses
  %i.ay = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = fmul <4 x float> %i.az, <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0x3F652546>
  %i.bb = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.bb, <float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float f0xBF400D1B>
  %i.bd = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.be = fmul <4 x float> %i.bd, <float 3.890000e-02, float -6.850000e-02, float 1.029600e+00, float 3.890000e-02>
  %i.bf = fpext <4 x float> %i.ba to <4 x double> ; 2 uses
  %i.bg = fpext <4 x float> %i.bc to <4 x double> ; 2 uses
  %i.bh = fpext <4 x float> %i.be to <4 x double> ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bj = fmul <4 x double> %i.bi, splat (double f0xBFC2D2ACE0000000)
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FEF957220000000), <4 x double> %i.bj)
  %i.bm = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FC479A860000000), <4 x double> %i.bl)
  %i.bo = fptrunc <4 x double> %i.bn to <4 x float>
  %i.bp = fmul <4 x double> %i.bi, splat (double f0x3FE0966860000000)
  %i.bq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FDBAAE3E0000000), <4 x double> %i.bp)
  %i.br = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FA93CB240000000), <4 x double> %i.bq)
  %i.bs = fptrunc <4 x double> %i.br to <4 x float>
  %i.bt = fmul <4 x double> %i.bg, splat (double f0x3FA4807D60000000)
  %i.bu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bf, <4 x double> splat (double f0xBF81777EC0000000), <4 x double> %i.bt)
  %i.bv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bh, <4 x double> splat (double f0x3FEEFDD7E0000000), <4 x double> %i.bu)
  %i.bw = fptrunc <4 x double> %i.bv to <4 x float>
  %i.bx = load <4 x float>, ptr %i.c, align 16, !tbaa !82 ; 3 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.ao, align 16, !tbaa !82 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> %i.cd, <2 x i32> <i32 1, i32 4>
  %i.cf = fpext <2 x float> %i.ce to <2 x double> ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 2 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fpext <4 x float> %i.bs to <4 x double> ; 3 uses
  %i.cl = fpext <4 x float> %i.bo to <4 x double> ; 3 uses
  %i.cm = fpext <4 x float> %i.bw to <4 x double> ; 3 uses
  %i.cn = fmul <4 x double> %i.cg, %i.ck
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cl, <4 x double> %i.ca, <4 x double> %i.cn)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %i.cj, <4 x double> %i.co)
  %i.cq = fptrunc <4 x double> %i.cp to <4 x float>
  %i.cr = extractelement <4 x double> %i.ck, i64 2
  %i.cs = extractelement <4 x double> %i.cl, i64 2
  %i.ct = extractelement <4 x double> %i.cm, i64 2
  %i.cu = fmul double %i.cr, %i.au
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ar, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ax, double %i.cv)
  %i.cx = fptrunc double %i.cw to float
  store <4 x float> %i.cq, ptr %i.c, align 16, !tbaa !82
  %9 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x double> %9, double %i.au, i64 1
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = shufflevector <4 x double> %i.ck, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.cy = fmul <4 x double> %11, %12
  %13 = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %14 = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x double> %14, double %i.ar, i64 1
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %13, <4 x double> %16, <4 x double> %i.cy)
  %17 = shufflevector <4 x double> %i.cm, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %18 = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x double> %18, double %i.ax, i64 1
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %21 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %17, <4 x double> %20, <4 x double> %i.cz)
  %22 = fptrunc <4 x double> %21 to <4 x float>
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %23, ptr %i.ao, align 16, !tbaa !82
  store float %i.cx, ptr %i.av, align 16, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not44 = icmp eq i32 %5, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = load i32, ptr %6, align 8, !tbaa !77
  %i.db = icmp eq i32 %i.da, 2
  %or.cond = or i1 %i.i, %i.db
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.dc = shl i64 %mul.i46, 2                     ; 5 uses
  %.not = icmp eq i64 %i.dc, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.dc, 8
  %i.dd = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond85 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond85, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <4 x float>, ptr %i.de, align 4, !tbaa !82
  %wide.load56 = load <4 x float>, ptr %i.df, align 4, !tbaa !82
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %wide.load, ptr %i.dg, align 4, !tbaa !82
  store <4 x float> %wide.load56, ptr %i.dh, align 4, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %.lr.ph.preheader, %middle.block
  %.14148.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not51 = icmp eq i64 %mul.i46, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dk = load <4 x float>, ptr %i.c, align 16, !tbaa !82 ; 3 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dm = fpext <2 x float> %i.dl to <2 x double> ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 16, !tbaa !82 ; 2 uses
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dp = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.dk, <4 x float> %i.dp, <2 x i32> <i32 1, i32 4>
  %i.dr = fpext <2 x float> %i.dq to <2 x double> ; 2 uses
  %i.ds = shufflevector <2 x float> %i.do, <2 x float> %i.dn, <2 x i32> <i32 0, i32 3>
  %i.dt = fpext <2 x float> %i.ds to <2 x double> ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dv = load float, ptr %i.du, align 8, !tbaa !82
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !82
  %i.dz = fpext float %i.dy to double             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eb = load float, ptr %i.ea, align 16, !tbaa !82
  %i.ec = fpext float %i.eb to double             ; 2 uses
  %min.iters.check60 = icmp eq i64 %mul.i46, 1
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph50
  %i.ed = mul nuw i64 %i.f, %i.e
  %i.ee = shl i64 %i.ed, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ee
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ee
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck57
  %n.vec62 = and i64 %mul.i46, -2                 ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat76 = shufflevector <2 x double> %broadcast.splatinsert75, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eg = shufflevector <2 x double> %i.dm, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eh = shufflevector <2 x double> %i.dr, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph61
  %index80 = phi i64 [ 0, %vector.ph61 ], [ %index.next81, %vector.body79 ] ; 3 uses
  %i.ei = shl i64 %index80, 2                     ; 5 uses
  %i.ej = shl i64 %index80, 2                     ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load float, ptr %i.el, align 4, !tbaa !82, !alias.scope !122
  %i.ep = load float, ptr %i.en, align 4, !tbaa !82, !alias.scope !122
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.ep, i64 1
  %i.es = fpext <2 x float> %i.er to <2 x double> ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.ex = load float, ptr %i.eu, align 4, !tbaa !82, !alias.scope !122
  %i.ey = load float, ptr %i.ew, align 4, !tbaa !82, !alias.scope !122
  %i.ez = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ey, i64 1
  %i.fb = fpext <2 x float> %i.fa to <2 x double> ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load float, ptr %i.fd, align 4, !tbaa !82, !alias.scope !122
  %i.fh = load float, ptr %i.ff, align 4, !tbaa !82, !alias.scope !122
  %i.fi = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fh, i64 1
  %i.fk = fpext <2 x float> %i.fj to <2 x double> ; 2 uses
  %i.fl = fmul <2 x double> %broadcast.splat76, %i.fb
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %broadcast.splat74, <2 x double> %i.fl)
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %broadcast.splat78, <2 x double> %i.fm)
  %i.fo = fptrunc <2 x double> %i.fn to <2 x float>
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !82, !alias.scope !122
  %i.fu = load float, ptr %i.fs, align 4, !tbaa !82, !alias.scope !122
  %i.fv = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fu, i64 1
  %i.fx = shufflevector <2 x double> %i.fk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fy = shufflevector <2 x double> %i.es, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fz = shufflevector <2 x double> %i.fb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ga = fmul <4 x double> %i.eh, %i.fz
  %i.gb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fy, <4 x double> %i.eg, <4 x double> %i.ga)
  %i.gc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fx, <4 x double> %i.ef, <4 x double> %i.gb)
  %i.gd = fptrunc <4 x double> %i.gc to <4 x float>
  %i.ge = shufflevector <2 x float> %i.fo, <2 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ek, align 4, !tbaa !82, !alias.scope !125, !noalias !122
  %index.next81 = add nuw i64 %index80, 2         ; 2 uses
  %i.gf = icmp eq i64 %index.next81, %n.vec62
  br i1 %i.gf, label %middle.block82, label %vector.body79, !llvm.loop !127

middle.block82:                                   ; preds = %vector.body79
  %cmp.n83 = icmp eq i64 %mul.i46, %n.vec62
  br i1 %cmp.n83, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck57, %.lr.ph50, %middle.block82
  %.04049.ph = phi i64 [ 0, %vector.memcheck57 ], [ 0, %.lr.ph50 ], [ %n.vec62, %middle.block82 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.04049 = phi i64 [ %i.hm, %scalar.ph59 ], [ %.04049.ph, %scalar.ph59.preheader ] ; 2 uses
  %i.gg = shl i64 %.04049, 2                      ; 5 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gg
  %i.gi = or disjoint i64 %i.gg, 2                ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !82
  %i.gm = fpext float %i.gl to double             ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !82
  %i.gq = fpext float %i.gp to double             ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gi
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !82
  %i.gt = fpext float %i.gs to double             ; 2 uses
  %i.gu = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %i.gv, %i.dr
  %i.gx = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.dm, <2 x double> %i.gw)
  %i.ha = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.dt, <2 x double> %i.gz)
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float>
  store <2 x float> %i.hd, ptr %i.gh, align 4, !tbaa !82
  %i.he = fmul double %i.gq, %i.dz
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.dw, double %i.he)
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.ec, double %i.hf)
  %i.hh = fptrunc double %i.hg to float
  store float %i.hh, ptr %i.gj, align 4, !tbaa !82
  %i.hi = or disjoint i64 %i.gg, 3                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7lodepngL12lodepng_powfEff:bb.a
bb.w:                                             ; preds = %bb.v
  %i.ah = and i32 %.0, 1
  %.not127 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not127, float +inf, float -inf
  br label %common.ret233

bb.x:                                             ; preds = %bb.u
  %i.aj = fneg float %0
  %i.ak = fcmp oeq float %0, -1.000000e+00
  br i1 %i.ak, label %common.ret233, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.g
  %.0121 = phi float [ %0, %bb.g ], [ %i.aj, %bb.x ] ; 2 uses
  %or.cond11 = fcmp ogt float %i.f, f0x7F7FFFFF
  br i1 %or.cond11, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.al = fcmp olt float %.0121, 1.000000e+00
  %i.am = fcmp ule float %1, 0.000000e+00
  %.not128 = xor i1 %i.am, %i.al
  br i1 %.not128, label %common.ret233, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = fcmp olt float %1, 0.000000e+00
  %i.ao = fneg float %1
  %i.ap = select i1 %i.an, float %i.ao, float %1
  br label %common.ret233

bb.ab:                                            ; preds = %bb.y, %bb.c
  %.1122 = phi float [ %0, %bb.c ], [ %.0121, %bb.y ] ; 4 uses
  %i.aq = fcmp olt float %.1122, f0x37800000
  br i1 %i.aq, label %.lr.ph, label %.preheader132

.preheader132:                                    ; preds = %.lr.ph, %bb.ab
  %.0116.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %i.as, %.lr.ph ] ; 2 uses
  %.0111.lcssa = phi float [ %.1122, %bb.ab ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.ar = fcmp ogt float %.0111.lcssa, 6.553600e+04
  br i1 %i.ar, label %.lr.ph138, label %.preheader131

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0111134 = phi float [ %i.at, %.lr.ph ], [ %.1122, %bb.ab ]
  %.0116133 = phi float [ %i.as, %.lr.ph ], [ 0.000000e+00, %bb.ab ]
  %i.as = fadd float %.0116133, -1.600000e+01     ; 2 uses
  %i.at = fmul nnan float %.0111134, 6.553600e+04 ; 3 uses
  %i.au = fcmp olt float %i.at, f0x37800000
  br i1 %i.au, label %.lr.ph, label %.preheader132, !llvm.loop !145

.preheader131:                                    ; preds = %.lr.ph138, %.preheader132
  %.1117.lcssa = phi float [ %.0116.lcssa, %.preheader132 ], [ %i.aw, %.lr.ph138 ] ; 2 uses
  %.1112.lcssa = phi float [ %.0111.lcssa, %.preheader132 ], [ %i.ax, %.lr.ph138 ] ; 3 uses
  %i.av = fcmp olt float %.1112.lcssa, 1.000000e+00
  br i1 %i.av, label %.lr.ph143, label %.preheader130

.lr.ph138:                                        ; preds = %.preheader132, %.lr.ph138
  %.1112137 = phi float [ %i.ax, %.lr.ph138 ], [ %.0111.lcssa, %.preheader132 ]
  %.1117136 = phi float [ %i.aw, %.lr.ph138 ], [ %.0116.lcssa, %.preheader132 ]
  %i.aw = fadd float %.1117136, 1.600000e+01      ; 2 uses
  %i.ax = fmul nnan float %.1112137, f0x37800000  ; 3 uses
  %i.ay = fcmp ogt float %i.ax, 6.553600e+04
  br i1 %i.ay, label %.lr.ph138, label %.preheader131, !llvm.loop !146

.preheader130:                                    ; preds = %.lr.ph143, %.preheader131
  %.2118.lcssa = phi float [ %.1117.lcssa, %.preheader131 ], [ %i.ba, %.lr.ph143 ] ; 2 uses
  %.2113.lcssa = phi float [ %.1112.lcssa, %.preheader131 ], [ %i.bb, %.lr.ph143 ] ; 3 uses
  %i.az = fcmp ogt float %.2113.lcssa, 2.000000e+00
  br i1 %i.az, label %.lr.ph148, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader131, %.lr.ph143
  %.2113142 = phi float [ %i.bb, %.lr.ph143 ], [ %.1112.lcssa, %.preheader131 ]
  %.2118141 = phi float [ %i.ba, %.lr.ph143 ], [ %.1117.lcssa, %.preheader131 ]
  %i.ba = fadd float %.2118141, -1.000000e+00     ; 2 uses
  %i.bb = fmul nnan float %.2113142, 2.000000e+00 ; 3 uses
  %i.bc = fcmp olt float %i.bb, 1.000000e+00
  br i1 %i.bc, label %.lr.ph143, label %.preheader130, !llvm.loop !147

.lr.ph148:                                        ; preds = %.preheader130, %.lr.ph148
  %.3147 = phi float [ %i.be, %.lr.ph148 ], [ %.2113.lcssa, %.preheader130 ]
  %.3119146 = phi float [ %i.bd, %.lr.ph148 ], [ %.2118.lcssa, %.preheader130 ]
  %i.bd = fadd float %.3119146, 1.000000e+00      ; 2 uses
  %i.be = fmul nnan float %.3147, 5.000000e-01    ; 3 uses
  %i.bf = fcmp ogt float %i.be, 2.000000e+00
  br i1 %i.bf, label %.lr.ph148, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph148, %.preheader130
  %.3119.lcssa = phi float [ %.2118.lcssa, %.preheader130 ], [ %i.bd, %.lr.ph148 ]
  %.3.lcssa = phi float [ %.2113.lcssa, %.preheader130 ], [ %i.be, %.lr.ph148 ]
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.3.lcssa, i64 0 ; 2 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> <float f0x3C7B5381, float 0.000000e+00>, <2 x float> <float f0x3EEEAA40, float f0x3E0C8592>)
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bh, <2 x float> <float f0xBDB4F828, float f0x3EC71CDB>)
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> <float f0xBEC946D1, float f0x3DB9D868>) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = fadd float %.3119.lcssa, %i.bn
  %i.bp = fmul float %1, %i.bo                    ; 3 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp)
  %or.cond13 = fcmp ult float %i.bq, 1.280000e+02
  br i1 %or.cond13, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.br = fcmp ogt float %.1122, 1.000000e+00
  %i.bs = fcmp ule float %1, 0.000000e+00
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = select i1 %i.bt, float +inf, float 0.000000e+00
  br label %common.ret233

bb.ad:                                            ; preds = %._crit_edge
  %i.bv = fptosi float %i.bp to i32               ; 8 uses
  %i.bw = sitofp i32 %i.bv to float
  %i.bx = fsub float %i.bp, %i.bw                 ; 5 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3BB8A601, float f0x3D953178)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.by, float f0x3ED5E70B)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bz, float 1.000000e+00) ; 4 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3CC0861B, float f0xBE8CFD51)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cb, float 1.000000e+00) ; 2 uses
  %i.cd = icmp slt i32 %i.bv, -30
  br i1 %i.cd, label %.lr.ph154, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ce = icmp sgt i32 %i.bv, 30
  br i1 %i.ce, label %.lr.ph159.preheader, label %._crit_edge160

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.cf = add nsw i32 %i.bv, -31                  ; 2 uses
  %i.cg = udiv i32 %i.cf, 31
  %i.ch = add nuw nsw i32 %i.cg, 1
  %xtraiter = and i32 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader, %.lr.ph159.prol
  %.2158.prol = phi i32 [ %i.cj, %.lr.ph159.prol ], [ %i.bv, %.lr.ph159.preheader ]
  %.1115157.prol = phi float [ %i.ci, %.lr.ph159.prol ], [ %i.ca, %.lr.ph159.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph159.prol ], [ 0, %.lr.ph159.preheader ]
  %i.ci = fmul float %.1115157.prol, f0x4F000000  ; 3 uses
  %i.cj = add nsw i32 %.2158.prol, -31            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol, !llvm.loop !149

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.2158.unr = phi i32 [ %i.bv, %.lr.ph159.preheader ], [ %i.cj, %.lr.ph159.prol ]
  %.1115157.unr = phi float [ %i.ca, %.lr.ph159.preheader ], [ %i.ci, %.lr.ph159.prol ]
  %.lcssa211.unr = phi float [ poison, %.lr.ph159.preheader ], [ %i.ci, %.lr.ph159.prol ]
  %.lcssa210.unr = phi i32 [ poison, %.lr.ph159.preheader ], [ %i.cj, %.lr.ph159.prol ]
  %i.ck = icmp ult i32 %i.cf, 217
  br i1 %i.ck, label %._crit_edge160.thread, label %.lr.ph159

.lr.ph154:                                        ; preds = %bb.ad, %.lr.ph154
  %.1152 = phi i32 [ %i.cm, %.lr.ph154 ], [ %i.bv, %bb.ad ] ; 2 uses
  %.0114151 = phi float [ %i.cl, %.lr.ph154 ], [ %i.ca, %bb.ad ]
  %i.cl = fmul float %.0114151, f0x30000000       ; 2 uses
  %i.cm = add nsw i32 %.1152, 31                  ; 2 uses
  %i.cn = icmp samesign ult i32 %.1152, -61
  br i1 %i.cn, label %.lr.ph154, label %._crit_edge160, !llvm.loop !151

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %.2158 = phi i32 [ %i.cw, %.lr.ph159 ], [ %.2158.unr, %.lr.ph159.prol.loopexit ] ; 2 uses
  %.1115157 = phi float [ %i.cv, %.lr.ph159 ], [ %.1115157.unr, %.lr.ph159.prol.loopexit ]
  %i.co = fmul float %.1115157, f0x4F000000
  %i.cp = fmul float %i.co, f0x4F000000
  %i.cq = fmul float %i.cp, f0x4F000000
  %i.cr = fmul float %i.cq, f0x4F000000
  %i.cs = fmul float %i.cr, f0x4F000000
  %i.ct = fmul float %i.cs, f0x4F000000
  %i.cu = fmul float %i.ct, f0x4F000000
  %i.cv = fmul float %i.cu, f0x4F000000           ; 2 uses
  %i.cw = add nsw i32 %.2158, -248                ; 2 uses
  %i.cx = icmp sgt i32 %.2158, 278
  br i1 %i.cx, label %.lr.ph159, label %._crit_edge160.thread, !llvm.loop !152

._crit_edge160:                                   ; preds = %.lr.ph154, %.preheader
  %.1115.lcssa = phi float [ %i.ca, %.preheader ], [ %i.cl, %.lr.ph154 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bv, %.preheader ], [ %i.cm, %.lr.ph154 ] ; 3 uses
  %i.cy = icmp slt i32 %.2.lcssa, 0
  br i1 %i.cy, label %bb.ae, label %._crit_edge160.thread

bb.ae:                                            ; preds = %._crit_edge160
  %i.cz = sub nsw i32 0, %.2.lcssa
  %i.da = shl nuw nsw i32 1, %i.cz
  %i.db = uitofp nneg i32 %i.da to float
  %i.dc = fmul float %i.cc, %i.db
  %i.dd = fdiv float %.1115.lcssa, %i.dc
  br label %common.ret233

._crit_edge160.thread:                            ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159, %._crit_edge160
  %.2.lcssa186 = phi i32 [ %.2.lcssa, %._crit_edge160 ], [ %.lcssa210.unr, %.lr.ph159.prol.loopexit ], [ %i.cw, %.lr.ph159 ]
  %.1115.lcssa185 = phi float [ %.1115.lcssa, %._crit_edge160 ], [ %.lcssa211.unr, %.lr.ph159.prol.loopexit ], [ %i.cv, %.lr.ph159 ]
  %i.de = shl nuw nsw i32 1, %.2.lcssa186
  %i.df = uitofp nneg i32 %i.de to float
  %i.dg = fmul float %.1115.lcssa185, %i.df
  %i.dh = fdiv float %i.dg, %i.cc
  br label %common.ret233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 11 uses
  %i.b = alloca [9 x float], align 16             ; 11 uses
  %i.c = alloca [9 x float], align 16             ; 10 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !77
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !86
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = load <2 x float>, ptr %i.k, align 8, !tbaa !82 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.n = load float, ptr %i.m, align 8, !tbaa !82 ; 2 uses
  %i.o = load <2 x float>, ptr %i.h, align 8, !tbaa !82 ; 2 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.q = fpext <2 x float> %i.p to <2 x double>   ; 3 uses
  %i.r = shufflevector <2 x float> %i.l, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.j, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 3 uses
  %i.w = fmul <2 x double> %i.q, splat (double f0x3FD10CB2A0000000)
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FECA4A8C0000000), <2 x double> %i.w)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0xBFC4A8C160000000), <2 x double> %i.x)
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = fmul <2 x double> %i.q, splat (double f0x3FFB6A7F00000000)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0xBFE801A360000000), <2 x double> %i.aa)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FA2CA57A0000000), <2 x double> %i.ab) ; 2 uses
  %i.ad = fmul <2 x double> %i.q, splat (double f0xBFB1893740000000)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FA3EAB360000000), <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FF0793DE0000000), <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.z, i64 0
  %i.ah = extractelement <2 x float> %i.z, i64 1
  %i.ai = fdiv float %i.ag, %i.ah                 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = fdiv <2 x float> %i.ak, %i.am           ; 4 uses
  %i.ao = extractelement <2 x float> %i.an, i64 1
  %i.ap = extractelement <2 x float> %i.an, i64 0
  %i.aq = fmul float %i.ai, f0x3F652546
  %i.ar = fmul float %i.ap, f0xBF400D1B
  %i.as = fmul float %i.ao, 3.890000e-02
  %i.at = fpext float %i.aq to double             ; 2 uses
  %i.au = fpext float %i.ar to double             ; 2 uses
  %i.av = fpext float %i.as to double             ; 2 uses
  %i.aw = fmul double %i.au, f0x3FA4807D60000000
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double f0xBF81777EC0000000, double %i.aw)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.av, double f0x3FEEFDD7E0000000, double %i.ax)
  %i.az = fptrunc double %i.ay to float
  %i.ba = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.bb, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bc)
  %i.bg = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bf)
  %i.bj = fptrunc <2 x double> %i.bi to <2 x float>
  %i.bk = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, <float 2.664000e-01, float -1.614000e-01>
  %i.bn = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, <float 1.713500e+00, float 3.670000e-02>
  %i.bp = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.bp, <float -6.850000e-02, float 1.029600e+00>
  %i.br = fpext <2 x float> %i.bm to <2 x double> ; 3 uses
  %i.bs = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bt = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bw = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bv)
  %i.by = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bx)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  %i.cb = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x double> %i.cb, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.cd = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.cc)
  %i.cf = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.ce)
  %i.ch = fptrunc <2 x double> %i.cg to <2 x float>
  %i.ci = fmul <2 x double> %i.bs, splat (double f0x3FA4807D60000000)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double f0xBF81777EC0000000), <2 x double> %i.ci)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> splat (double f0x3FEEFDD7E0000000), <2 x double> %i.cj)
  %i.cl = fptrunc <2 x double> %i.ck to <2 x float>
  %i.cm = fpext <2 x float> %i.bj to <2 x double>
  %i.cn = fpext <2 x float> %i.ca to <2 x double>
  %i.co = fpext <2 x float> %i.ch to <2 x double>
  %.pre86.i = fpext float %i.az to double
  %i.cp = fpext <2 x float> %i.cl to <2 x double> ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.cv, i64 36, i1 false), !tbaa !82
  %i.cw = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !82
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = load float, ptr %i.cs, align 4, !tbaa !82
  %i.db = fpext float %i.da to double             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !82
  %i.de = fpext float %i.dd to double             ; 2 uses
  %i.df = load <4 x float>, ptr %i.c, align 16, !tbaa !82 ; 3 uses
  %i.dg = load <2 x float>, ptr %i.cu, align 16, !tbaa !82 ; 2 uses
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.di, <2 x i32> <i32 1, i32 4>
  %i.dk = fpext <2 x float> %i.dj to <2 x double> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dm = fpext <2 x float> %i.dl to <2 x double> ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> %i.dg, <2 x i32> <i32 0, i32 3>
  %i.do = fpext <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dq, %i.dk
  %i.ds = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dm, <2 x double> %i.dr)
  %i.dv = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.do, <2 x double> %i.du)
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !82
  %i.eb = fpext float %i.ea to double             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !82
  %i.ee = fpext float %i.ed to double             ; 2 uses
  %i.ef = fmul double %i.db, %i.ee
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.eb, double %i.ef)
  %i.eh = load float, ptr %i.ct, align 16, !tbaa !82
  %i.ei = fpext float %i.eh to double             ; 2 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.de, double %i.ei, double %i.eg)
  %i.ek = fptrunc double %i.ej to float
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %.preheader.i
  %.pre-phi91.i = phi double [ %i.cr, %.preheader.i ], [ %i.ei, %bb.d ] ; 2 uses
  %.pre-phi89.i = phi double [ %i.cq, %.preheader.i ], [ %i.ee, %bb.d ] ; 2 uses
  %.pre-phi87.i = phi double [ %.pre86.i, %.preheader.i ], [ %i.eb, %bb.d ] ; 2 uses
  %.sroa.8.0.i = phi float [ %i.n, %.preheader.i ], [ %i.ek, %bb.d ] ; 2 uses
  %i.el = phi <2 x double> [ %i.co, %.preheader.i ], [ %i.do, %bb.d ] ; 2 uses
  %i.em = phi <2 x double> [ %i.cm, %.preheader.i ], [ %i.dm, %bb.d ] ; 2 uses
  %i.en = phi <2 x double> [ %i.cn, %.preheader.i ], [ %i.dk, %bb.d ] ; 2 uses
  %i.eo = phi <2 x float> [ %i.l, %.preheader.i ], [ %i.dy, %bb.d ] ; 2 uses
  %i.ep = shufflevector <2 x double> %i.en, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.er = shufflevector <2 x double> %i.el, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eu = load float, ptr %i.et, align 8, !tbaa !82
  %i.ev = load <8 x float>, ptr %i.es, align 8, !tbaa !82 ; 3 uses
  %i.ew = shufflevector <8 x float> %i.ev, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.ex = fpext <4 x float> %i.ew to <4 x double> ; 3 uses
  %i.ey = shufflevector <8 x float> %i.ev, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.ez = fpext <4 x float> %i.ey to <4 x double> ; 3 uses
  %i.fa = shufflevector <8 x float> %i.ev, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.fb = insertelement <3 x float> %i.fa, float %i.eu, i64 2
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fd = fpext <4 x float> %i.fc to <4 x double> ; 3 uses
  %i.fe = fmul <4 x double> %i.ep, %i.ex
  %i.ff = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ez, <4 x double> %i.eq, <4 x double> %i.fe)
  %i.fg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fd, <4 x double> %i.er, <4 x double> %i.ff)
  %i.fh = fptrunc <4 x double> %i.fg to <4 x float> ; 2 uses
  %i.fi = extractelement <4 x double> %i.ex, i64 2
  %i.fj = extractelement <4 x double> %i.ez, i64 2
  %i.fk = extractelement <4 x double> %i.fd, i64 2
  %5 = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x double> %5, double %.pre-phi89.i, i64 1
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %8 = shufflevector <4 x double> %i.ex, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fl = fmul <4 x double> %7, %8
  %9 = shufflevector <4 x double> %i.ez, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %10 = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x double> %10, double %.pre-phi87.i, i64 1
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %9, <4 x double> %12, <4 x double> %i.fl)
  %13 = shufflevector <4 x double> %i.fd, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %14 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x double> %14, double %.pre-phi91.i, i64 1
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %13, <4 x double> %16, <4 x double> %i.fm)
  %i.fo = fptrunc <4 x double> %i.fn to <4 x float> ; 2 uses
  %i.fp = fmul double %.pre-phi89.i, %i.fi
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fj, double %.pre-phi87.i, double %i.fp)
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fk, double %.pre-phi91.i, double %i.fq)
  %i.fs = fptrunc double %i.fr to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store <4 x float> %i.fh, ptr %i.a, align 16, !tbaa !82
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %17 = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %17, ptr %i.ft, align 16, !tbaa !82
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.fs, ptr %i.fu, align 16, !tbaa !82
  %i.fv = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.a)
  %.not.i46 = icmp eq i32 %i.fv, 0
  br i1 %.not.i46, label %bb.e, label %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit

bb.e:                                             ; preds = %.loopexit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fz = fpext <2 x float> %i.eo to <2 x double> ; 2 uses
  %i.ga = fpext float %.sroa.8.0.i to double
  %i.gb = load <4 x float>, ptr %i.fy, align 4, !tbaa !82
  %i.gc = load <5 x float>, ptr %i.fx, align 8, !tbaa !82
  %i.gd = load <7 x float>, ptr %i.a, align 16, !tbaa !82
  %i.ge = shufflevector <7 x float> %i.gd, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.gf = fpext <4 x float> %i.ge to <4 x double>
  %i.gg = load <2 x float>, ptr %i.fw, align 4, !tbaa !82 ; 2 uses
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.gk = fpext <4 x float> %i.gj to <4 x double>
  %i.gl = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gm = fmul <4 x double> %i.gl, %i.gk
  %i.gn = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> zeroinitializer
  %i.go = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gn, <4 x double> %i.gf, <4 x double> %i.gm)
  %i.gp = shufflevector <2 x float> %i.gg, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <5 x float> %i.gc, <5 x float> %i.gp, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.gr = fpext <4 x float> %i.gq to <4 x double>
  %i.gs = insertelement <4 x double> poison, double %i.ga, i64 0
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gt, <4 x double> %i.gr, <4 x double> %i.go)
  %i.gv = fptrunc <4 x double> %i.gu to <4 x float> ; 3 uses
  %i.gw = fmul <4 x float> %i.fh, %i.gv
  store <4 x float> %i.gw, ptr %0, align 4, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = extractelement <4 x float> %i.gv, i64 2
  %18 = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ha = fmul <4 x float> %18, %i.gz
  store <4 x float> %i.ha, ptr %i.gx, align 4, !tbaa !82
  %i.hb = fmul float %i.gy, %i.fs
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.hb, ptr %i.hc, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store <2 x float> %i.eo, ptr %1, align 4, !tbaa !82
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.8.0.i, ptr %i.hd, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.he, align 4, !tbaa !82
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hf, align 4, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !82
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %i.hg, align 4, !tbaa !82
  store <2 x float> splat (float 1.000000e+00), ptr %1, align 4, !tbaa !82
  br label %.critedge

_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !135
  %.not42 = icmp eq i32 %i.hi, 0
  br i1 %.not42, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !102
  %.not43 = icmp eq i32 %i.hk, 0
  br i1 %.not43, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.hm = load <2 x i32>, ptr %i.hl, align 4, !tbaa !12
  %i.hn = uitofp <2 x i32> %i.hm to <2 x float>
  %i.ho = fdiv <2 x float> %i.hn, splat (float 1.000000e+05) ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !139
  %i.hr = uitofp i32 %i.hq to float
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !141
  %i.hu = uitofp i32 %i.ht to float
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !143
  %i.hx = uitofp i32 %i.hw to float
  %i.hy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hr, i64 0
  %i.hz = insertelement <4 x float> %i.hy, float %i.hu, i64 1
  %i.ia = insertelement <4 x float> %i.hz, float %i.hx, i64 2
  %i.ib = fdiv <4 x float> %i.ia, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 4 uses
  %i.ic = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.id = shufflevector <4 x float> %i.ib, <4 x float> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ie = fcmp oeq <4 x float> %i.id, zeroinitializer
  %i.if = bitcast <4 x i1> %i.ie to i4
  %.not61 = icmp eq i4 %i.if, 0
  br i1 %.not61, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !142
  %i.ii = uitofp i32 %i.ih to float
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !140
  %i.il = uitofp i32 %i.ik to float
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.in = load i32, ptr %i.im, align 4, !tbaa !138
  %i.io = uitofp i32 %i.in to float
  %i.ip = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.io, i64 0
  %i.iq = insertelement <4 x float> %i.ip, float %i.il, i64 1
  %i.ir = insertelement <4 x float> %i.iq, float %i.ii, i64 2
  %i.is = fdiv <4 x float> %i.ir, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 2 uses
  %i.it = fdiv <4 x float> %i.is, %i.ib           ; 2 uses
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.iv = fsub <4 x float> splat (float 1.000000e+00), %i.iu
  %i.iw = shufflevector <4 x float> %i.ib, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.ix = fsub <4 x float> %i.iv, %i.iw
  %i.iy = shufflevector <4 x float> %i.ib, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.iz = fdiv <4 x float> %i.ix, %i.iy           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %19 = insertelement <4 x float> %i.it, float 1.000000e+00, i64 3
  store <4 x float> %19, ptr %i.b, align 16, !tbaa !82
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %20 = shufflevector <4 x float> %i.iz, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  store <4 x float> %20, ptr %i.ja, align 16, !tbaa !82
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jc = extractelement <4 x float> %i.iz, i64 3
  store float %i.jc, ptr %i.jb, align 16, !tbaa !82
  %i.jd = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.b)
  %.not.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit

_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit:    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jg = extractelement <2 x float> %i.ho, i64 0
  %i.jh = fsub float 1.000000e+00, %i.jg
  %i.ji = extractelement <2 x float> %i.ho, i64 1
  %i.jj = fsub float %i.jh, %i.ji
  %i.jk = insertelement <2 x float> %i.ho, float %i.jj, i64 1
  %i.jl = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jm = fdiv <2 x float> %i.jk, %i.jl           ; 3 uses
  %i.jn = fpext <2 x float> %i.jm to <2 x double> ; 2 uses
  %i.jo = load <4 x float>, ptr %i.jf, align 4, !tbaa !82
  %i.jp = load <5 x float>, ptr %21, align 8, !tbaa !82
  %i.jq = load <7 x float>, ptr %i.b, align 16, !tbaa !82
  %i.jr = shufflevector <7 x float> %i.jq, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.js = fpext <4 x float> %i.jr to <4 x double>
  %i.jt = load <2 x float>, ptr %i.je, align 4, !tbaa !82 ; 2 uses
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.jv = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.jx = fpext <4 x float> %i.jw to <4 x double>
  %i.jy = shufflevector <2 x double> %i.jn, <2 x double> poison, <4 x i32> zeroinitializer
  %i.jz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jy, <4 x double> %i.js, <4 x double> %i.jx)
  %i.ka = shufflevector <2 x float> %i.jt, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.kb = shufflevector <5 x float> %i.jp, <5 x float> %i.ka, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.kc = fpext <4 x float> %i.kb to <4 x double>
  %i.kd = shufflevector <2 x double> %i.jn, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ke = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kd, <4 x double> %i.kc, <4 x double> %i.jz)
  %i.kf = fptrunc <4 x double> %i.ke to <4 x float> ; 3 uses
  %i.kg = fmul <4 x float> %i.it, %i.kf
  store <4 x float> %i.kg, ptr %0, align 4, !tbaa !82
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = extractelement <4 x float> %i.kf, i64 1
  store float %i.ki, ptr %i.kh, align 4, !tbaa !82
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.kk = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.kl = fmul <4 x float> %i.iz, %i.kk
  store <4 x float> %i.kl, ptr %i.kj, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.km = extractelement <2 x float> %i.jm, i64 0
  store float %i.km, ptr %1, align 4, !tbaa !82
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 1.000000e+00, ptr %i.kn, align 4, !tbaa !82
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kp = extractelement <2 x float> %i.jm, i64 1
  store float %i.kp, ptr %i.ko, align 4, !tbaa !82
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) @_ZZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfoE4srgb, i64 36, i1 false), !tbaa !82
  store <2 x float> <float f0x3F735114, float 1.000000e+00>, ptr %1, align 4, !tbaa !82
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float f0x3F8B663F, ptr %i.kq, align 4, !tbaa !82
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.e, %bb.l, %bb.k, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit
  %.1 = phi i32 [ 1, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit ], [ 0, %bb.f ], [ 1, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.e ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL9invMatrixEPf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !82
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !82
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.b, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !82
  %i.q = extractelement <2 x double> %i.n, i64 0
  %i.r = fneg double %i.q                         ; 2 uses
  %i.s = load float, ptr %0, align 4, !tbaa !82
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.p, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.i, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 7 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.e, i64 0
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ac, %i.ab
  %i.ae = insertelement <2 x double> %i.z, double %i.e, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ae, <2 x double> %i.ad) ; 3 uses
  %i.ag = load <2 x float>, ptr %i.w, align 4, !tbaa !82
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 8 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aj = insertelement <2 x double> %i.ah, double %i.r, i64 1
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %i.af, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.al, <2 x double> %i.ak) ; 3 uses
  %i.an = extractelement <2 x double> %i.ah, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.ao)
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ogt double %i.as, 1.000000e+15
  br i1 %i.at, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.au = shufflevector <2 x double> %i.n, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = shufflevector <2 x double> %i.ab, <2 x double> %i.av, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x double> %i.aw, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.z, <2 x double> %i.ay)
  %i.ba = shufflevector <2 x double> %i.af, <2 x double> %i.az, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.bb = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <4 x double> %i.ba, %i.bc
  %i.be = fptrunc <4 x double> %i.bd to <4 x float>
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !82
  %i.bf = shufflevector <2 x double> %i.z, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bg = fneg <2 x double> %i.bf
  %i.bh = fmul <2 x double> %i.v, %i.bg
  %i.bi = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.n, <2 x double> %i.bh) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %i.bl = fmul double %i.bk, %i.ar
  %i.bm = insertelement <2 x double> %i.av, double %i.r, i64 0
  %i.bn = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = insertelement <2 x double> %i.ah, double %i.e, i64 0
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.bp, <2 x double> %i.bo)
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x double> %i.br, <4 x double> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = fmul <4 x double> %i.bt, %i.bc
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.a, align 4, !tbaa !82
  %i.bw = fptrunc double %i.bl to float
  store float %i.bw, ptr %i.c, align 4, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.062 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.loopexit ]
  ret i32 %.062
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
end_hunk_1
