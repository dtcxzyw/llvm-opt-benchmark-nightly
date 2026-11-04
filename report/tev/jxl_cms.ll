Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jxl_cms?download=true
inline.NumInlined: 2967
inline.NumDeleted: 958
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK3jxl3cms13ColorEncoding17SameColorEncodingERKS1_:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i8, ptr %i.at, align 8, !tbaa !72, !range !35, !noundef !36 ; 2 uses
  %i.aw = load i8, ptr %i.au, align 8, !tbaa !72, !range !35, !noundef !36
  %.not.i4 = icmp eq i8 %i.av, %i.aw
  br i1 %.not.i4, label %bb.k, label %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread

bb.k:                                             ; preds = %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !73
  %.not6.i = icmp eq i32 %i.az, %i.bb
  br i1 %.not6.i, label %_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit, label %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !74
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !74
  %.not5.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not5.i, label %_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit, label %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread

_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit: ; preds = %bb.m, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !83, !range !35, !noundef !36
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !83, !range !35, !noundef !36
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = xor i1 %i.bl, true
  br label %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread

_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit.thread: ; preds = %bb.m, %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit, %bb.l, %bb.f, %bb.h, %bb.i, %bb.j, %bb.d, %bb.a, %bb.b, %bb.n, %_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit
  %i.bn = phi i1 [ false, %_ZNK3jxl3cms22CustomTransferFunction6IsSameERKS1_.exit ], [ false, %bb.f ], [ %i.bm, %bb.n ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.l ], [ false, %_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_.exit ], [ false, %bb.m ]
  ret i1 %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_122GetPrimariesLuminancesERKNS_3cms13ColorEncodingEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !71, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !68
  switch i32 %i.d, label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit [
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 11, label %bb.e
    i32 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !46
  %i.g = sitofp <2 x i32> %i.f to <2 x double>
  %i.h = fmul nnan <2 x double> %i.g, splat (double f0x3EB0C6F7A0B5ED8D)
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.e:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.f:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.i = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.h, %bb.c ], [ <double 3.127000e-01, double 3.290000e-01>, %bb.d ], [ <double 3.140000e-01, double 3.510000e-01>, %bb.e ], [ splat (double f0x3FD5555555555555), %bb.f ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 3 uses
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, f0x3D719799812DEA11
  br i1 %i.l, label %_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit
  %i.m = fdiv double 1.000000e+00, %i.j
  %i.n = fptrunc double %i.m to float
  %i.o = fpext float %i.n to double
  %i.p = extractelement <2 x double> %i.i, i64 0
  %i.q = fsub double 1.000000e+00, %i.p
  %i.r = fsub double %i.q, %i.j
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.u = insertelement <2 x double> poison, double %i.o, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.t, %i.v
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  br i1 %i.c, label %bb.h, label %_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76
  %i.aa = add i32 %i.z, -3
  %spec.select.i.i = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i, label %bb.i, label %_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !69
  switch i32 %i.ac, label %bb.m [
    i32 2, label %bb.j
    i32 1, label %.sink.split.i
    i32 9, label %bb.k
    i32 11, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load <4 x i32>, ptr %i.ad, align 4, !tbaa !46 ; 5 uses
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !46 ; 3 uses
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x i32> %i.af, <4 x i32> %i.ah, <2 x i32> <i32 0, i32 4>
  %i.aj = sitofp <2 x i32> %i.ai to <2 x double>
  %i.ak = shufflevector <4 x i32> %i.af, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.al = sitofp <2 x i32> %i.ak to <2 x double>
  %i.am = shufflevector <4 x i32> %i.af, <4 x i32> %i.ah, <2 x i32> <i32 1, i32 5>
  %i.an = sitofp <2 x i32> %i.am to <2 x double>
  %i.ao = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x i32> %i.af, <4 x i32> %i.ao, <2 x i32> <i32 2, i32 5>
  %i.aq = sitofp <2 x i32> %i.ap to <2 x double>
  %i.ar = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.as = shufflevector <4 x i32> %i.af, <4 x i32> %i.ar, <2 x i32> <i32 3, i32 5>
  %i.at = sitofp <2 x i32> %i.as to <2 x double>
  %i.au = fmul nnan <2 x double> %i.al, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.av = fmul nnan <2 x double> %i.aq, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.aw = fmul nnan <2 x double> %i.aj, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.ax = fmul nnan <2 x double> %i.an, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.ay = fmul nnan <2 x double> %i.at, splat (double f0x3EB0C6F7A0B5ED8D)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  br label %bb.m

.sink.split.i:                                    ; preds = %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %.sink.split.i
  %i.az = phi <2 x double> [ <double f0x3FD51EE2D783BD98, double f0x3FE3333A3D79C44D>, %.sink.split.i ], [ <double 2.920000e-01, double 7.970000e-01>, %bb.k ], [ <double 3.200000e-01, double 6.900000e-01>, %bb.l ], [ %i.au, %bb.j ], [ zeroinitializer, %bb.i ] ; 6 uses
  %i.ba = phi <2 x double> [ <double f0x3FD33343123D332B, double f0x3FC333445CF39860>, %.sink.split.i ], [ <double 1.700000e-01, double 1.310000e-01>, %bb.k ], [ <double 2.650000e-01, double 1.500000e-01>, %bb.l ], [ %i.av, %bb.j ], [ zeroinitializer, %bb.i ] ; 7 uses
  %i.bb = phi <2 x double> [ <double f0x3FD51EE2D783BD98, double f0x3FAEB7F41A1018F4>, %.sink.split.i ], [ <double 2.920000e-01, double 4.600000e-02>, %bb.k ], [ <double 3.200000e-01, double 6.000000e-02>, %bb.l ], [ %i.ax, %bb.j ], [ zeroinitializer, %bb.i ] ; 3 uses
  %i.bc = phi <2 x double> [ <double f0x3FE47ADE863B4B8E, double f0x3FC333445CF39860>, %.sink.split.i ], [ <double f0x3FE6A7EF9DB22D0E, double 1.310000e-01>, %bb.k ], [ <double 6.800000e-01, double 1.500000e-01>, %bb.l ], [ %i.aw, %bb.j ], [ zeroinitializer, %bb.i ] ; 4 uses
  %i.bd = phi <2 x double> [ <double f0x3FE3333A3D79C44D, double f0x3FAEB7F41A1018F4>, %.sink.split.i ], [ <double 7.970000e-01, double 4.600000e-02>, %bb.k ], [ <double 6.900000e-01, double 6.000000e-02>, %bb.l ], [ %i.ay, %bb.j ], [ zeroinitializer, %bb.i ]
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.bf = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.bg = fsub <2 x double> splat (double 1.000000e+00), %i.be
  %i.bh = fsub <2 x double> splat (double 1.000000e+00), %i.ba
  %i.bi = fsub <2 x double> %i.bg, %i.bf          ; 4 uses
  %i.bj = shufflevector <2 x double> %i.az, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bk = fsub <2 x double> %i.bh, %i.bj          ; 4 uses
  %i.bl = fneg <2 x double> %i.bk
  %i.bm = fmul <2 x double> %i.bf, %i.bl
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bi, <2 x double> %i.bm) ; 3 uses
  %i.bo = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bp = fneg <2 x double> %i.bi
  %i.bq = shufflevector <2 x double> %i.bn, <2 x double> %i.bp, <2 x i32> <i32 3, i32 1>
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bk, <2 x double> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bt, <2 x double> %i.br) ; 2 uses
  %i.bv = extractelement <2 x double> %i.ba, i64 1
  %i.bw = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bx = extractelement <2 x double> %i.bu, i64 1
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double %i.bx) ; 2 uses
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp olt double %i.bz, 1.000000e-10
  br i1 %i.ca, label %_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = fneg <2 x double> %i.bi
  %i.cc = shufflevector <2 x double> %i.ba, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x double> %i.az, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.ce = fneg <2 x double> %i.cd
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = shufflevector <2 x double> %i.bc, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x double> %i.az, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ch, <2 x double> %i.cf) ; 2 uses
  %i.cj = fneg <2 x double> %i.bd
  %i.ck = fmul <2 x double> %i.ba, %i.cb
  %i.cl = fdiv double 1.000000e+00, %i.by         ; 4 uses
  %i.cm = fmul double %i.bw, %i.cl
  %i.cn = extractelement <2 x double> %i.ci, i64 1
  %i.co = fmul double %i.cn, %i.cl
  %i.cp = extractelement <2 x double> %i.ci, i64 0
  %i.cq = fmul double %i.cp, %i.cl
  %i.cr = fpext <2 x float> %i.x to <2 x double>  ; 4 uses
  %i.cs = fmul nnan <2 x double> %i.be, %i.cj
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bf, <2 x double> %i.cs)
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bk, <2 x double> %i.ck)
  %i.cv = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cx = fmul <2 x double> %i.bn, %i.cw
  %i.cy = fmul <2 x double> %i.cu, %i.cw
  %i.cz = fmul <2 x double> %i.ct, %i.cw
  %i.da = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.da, <2 x double> %i.cy)
  %i.dc = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.dc, <2 x double> %i.db)
  %i.de = fmul <2 x double> %i.az, %i.dd
  %i.df = fptrunc <2 x double> %i.de to <2 x float>
  store <2 x float> %i.df, ptr %1, align 4, !tbaa !37
  %i.dg = extractelement <2 x double> %i.cr, i64 1
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.dg, double %i.co)
  %i.di = extractelement <2 x double> %i.cr, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.di, double %i.dh)
  %i.dk = extractelement <2 x double> %i.bb, i64 1
  %i.dl = fmul double %i.dk, %i.dj
  %i.dm = fptrunc double %i.dl to float
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.dm, ptr %i.dn, align 4, !tbaa !37
  br label %_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit

_ZN3jxlL20CIEXYZFromWhiteCIExyEddRNSt3__15arrayIfLm3EEE.exit: ; preds = %bb.n, %bb.m, %bb.h, %bb.g, %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit
  %.sroa.025.2 = phi i32 [ 1, %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit ], [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.n ], [ 1, %bb.m ]
  ret i32 %.sroa.025.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3jxl3cms13ColorEncoding14SameColorSpaceERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !68
  %.not12 = icmp eq i32 %i.e, %i.f
  br i1 %.not12, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.e, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.j = load <2 x i32>, ptr %i.h, align 4
  %i.k = load <2 x i32>, ptr %i.i, align 4
  %i.l = icmp eq <2 x i32> %i.j, %i.k             ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = add i32 %i.b, -3
  %spec.select.i = icmp ult i32 %i.p, -2
  br i1 %spec.select.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69
  %.not14 = icmp eq i32 %i.r, %i.t
  br i1 %.not14, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %i.r, 2
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load <2 x i32>, ptr %i.v, align 4
  %i.y = load <2 x i32>, ptr %i.w, align 4
  %i.z = icmp eq <2 x i32> %i.x, %i.y             ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 0
  %i.ab = extractelement <2 x i1> %i.z, i64 1
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.af = load <2 x i32>, ptr %i.ad, align 4
  %i.ag = load <2 x i32>, ptr %i.ae, align 4
  %i.ah = icmp eq <2 x i32> %i.af, %i.ag          ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %i.aj = extractelement <2 x i1> %i.ah, i64 1
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.an = load <2 x i32>, ptr %i.al, align 4
  %i.ao = load <2 x i32>, ptr %i.am, align 4
  %i.ap = icmp eq <2 x i32> %i.an, %i.ao          ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 0
  %i.ar = extractelement <2 x i1> %i.ap, i64 1
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.e
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl3cms13ColorEncodingC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %1, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #31
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !80
  store ptr %i.l, ptr %i.c, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.e, i64 %i.j, i1 false)
  store ptr %i.m, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit: ; preds = %bb.a, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.n, ptr noundef nonnull align 8 dereferenceable(52) %i.o, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_114AllocateBufferEmmPNSt3__16vectorIfNS1_9allocatorIfEEEEPNS2_IPfNS3_IS7_EEEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef initializes((8, 16)) %3) unnamed_addr #7 {
bb.a:
  %i.a = add i64 %0, 31
  %i.b = and i64 %i.a, -32                        ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = add i64 %i.c, 32                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.d, %i.k
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m) #27
  %.pre = load ptr, ptr %2, align 8, !tbaa !86
  %.pre26 = ptrtoint ptr %.pre to i64
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  store ptr %i.o, ptr %i.e, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre26, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.pre-phi, 127
  %i.q = and i64 %i.p, -128
  %i.r = sub i64 %i.q, %.pre-phi
  %i.s = lshr i64 %i.r, 2
end_hunk_0
