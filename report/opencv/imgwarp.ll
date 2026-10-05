Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic32fC4EPKfS3_iPKvmNS_5Size_IiEEPfS3_iS8_:bb.a
  %i.be = add nsw i32 %i.ba, 3
  %i.bf = icmp uge i32 %i.be, %i.n
  %i.bg = add nsw i32 %i.bc, 3
  %i.bh = icmp uge i32 %i.bg, %i.o
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %.sink.split
    i32 5, label %bb.i
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bj = icmp ult i32 %i.bb, %.sroa.speculated252.i
  %i.bk = icmp ult i32 %i.bd, %.sroa.speculated.i
  %i.bl = and i1 %i.bj, %i.bk
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.az, <2 x float> %i.ae)
  %i.bn = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %i.bo = fsub <2 x float> splat (float 1.000000e+00), %i.az ; 3 uses
  %i.bp = fmul <2 x float> %i.bo, %i.bo
  %i.bq = fmul <2 x float> %i.ag, %i.az
  %i.br = fmul <2 x float> %i.bq, %i.bp           ; 5 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bm, <2 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.bt = fsub <2 x float> splat (float 1.000000e+00), %i.br
  %i.bu = fsub <2 x float> %i.bt, %i.bs
  %i.bv = fmul <2 x float> %i.ag, %i.bn
  %i.bw = fmul <2 x float> %i.bo, %i.bv           ; 5 uses
  %i.bx = fsub <2 x float> %i.bu, %i.bw           ; 4 uses
  br i1 %i.bl, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.by = mul nsw i32 %i.bd, %i.v
  %i.bz = shl nsw i32 %i.bb, 4
  %i.ca = add nsw i32 %i.by, %i.bz
  %i.cb = sext i32 %i.ca to i64                   ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %3, i64 %i.cb ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cg = getelementptr inbounds i8, ptr %i.w, i64 %i.cb ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ck = getelementptr inbounds i8, ptr %i.y, i64 %i.cb ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.co = getelementptr inbounds i8, ptr %i.aa, i64 %i.cb ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cs = load <4 x float>, ptr %i.cc, align 4, !tbaa !52
  %i.ct = load <4 x float>, ptr %i.cd, align 4, !tbaa !52
  %i.cu = load <4 x float>, ptr %i.ce, align 4, !tbaa !52
  %i.cv = load <4 x float>, ptr %i.cf, align 4, !tbaa !52
  %i.cw = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cx = fmul <4 x float> %i.cw, %i.ct
  %i.cy = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cy, <4 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.da, <4 x float> %i.cz)
  %i.dc = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.dc, <4 x float> %i.db)
  %i.de = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.de, <4 x float> zeroinitializer)
  %i.dg = load <4 x float>, ptr %i.cg, align 4, !tbaa !52
  %i.dh = load <4 x float>, ptr %i.ch, align 4, !tbaa !52
  %i.di = load <4 x float>, ptr %i.ci, align 4, !tbaa !52
  %i.dj = load <4 x float>, ptr %i.cj, align 4, !tbaa !52
  %i.dk = fmul <4 x float> %i.cw, %i.dh
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.cy, <4 x float> %i.dk)
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.da, <4 x float> %i.dl)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dc, <4 x float> %i.dm)
  %i.do = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.do, <4 x float> %i.df)
  %i.dq = load <4 x float>, ptr %i.ck, align 4, !tbaa !52
  %i.dr = load <4 x float>, ptr %i.cl, align 4, !tbaa !52
  %i.ds = load <4 x float>, ptr %i.cm, align 4, !tbaa !52
  %i.dt = load <4 x float>, ptr %i.cn, align 4, !tbaa !52
  %i.du = fmul <4 x float> %i.cw, %i.dr
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.cy, <4 x float> %i.du)
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.da, <4 x float> %i.dv)
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dc, <4 x float> %i.dw)
  %i.dy = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dy, <4 x float> %i.dp)
  %i.ea = load <4 x float>, ptr %i.co, align 4, !tbaa !52
  %i.eb = load <4 x float>, ptr %i.cp, align 4, !tbaa !52
  %i.ec = load <4 x float>, ptr %i.cq, align 4, !tbaa !52
  %i.ed = load <4 x float>, ptr %i.cr, align 4, !tbaa !52
  %i.ee = fmul <4 x float> %i.cw, %i.eb
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.cy, <4 x float> %i.ee)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.da, <4 x float> %i.ef)
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.dc, <4 x float> %i.eg)
  %i.ei = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ei, <4 x float> %i.dz)
  br label %.sink.split

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.ek = select i1 %i.u, ptr %.0212339.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bb, i32 %i.bd, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ek)
  %i.el = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.em = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.en = shufflevector <16 x float> %i.el, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.eo = fmul <4 x float> %i.em, %i.en
  %i.ep = shufflevector <16 x float> %i.el, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.eq = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.eq, <4 x float> %i.eo)
  %i.es = shufflevector <16 x float> %i.el, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.et = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.et, <4 x float> %i.er)
  %i.ev = shufflevector <16 x float> %i.el, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ew = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.ew, <4 x float> %i.eu)
  %i.ey = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ey, <4 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bb, i32 %i.bd, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ek)
  %i.fa = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.fb = shufflevector <16 x float> %i.fa, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fc = fmul <4 x float> %i.em, %i.fb
  %i.fd = shufflevector <16 x float> %i.fa, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.eq, <4 x float> %i.fc)
  %i.ff = shufflevector <16 x float> %i.fa, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.et, <4 x float> %i.fe)
  %i.fh = shufflevector <16 x float> %i.fa, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.ew, <4 x float> %i.fg)
  %i.fj = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.fj, <4 x float> %i.ez)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bb, i32 %i.bd, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ek)
  %i.fl = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.fm = shufflevector <16 x float> %i.fl, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fn = fmul <4 x float> %i.em, %i.fm
  %i.fo = shufflevector <16 x float> %i.fl, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.eq, <4 x float> %i.fn)
  %i.fq = shufflevector <16 x float> %i.fl, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.et, <4 x float> %i.fp)
  %i.fs = shufflevector <16 x float> %i.fl, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.ew, <4 x float> %i.fr)
  %i.fu = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.fu, <4 x float> %i.fk)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bb, i32 %i.bd, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ek)
  %i.fw = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.fx = shufflevector <16 x float> %i.fw, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fy = fmul <4 x float> %i.em, %i.fx
  %i.fz = shufflevector <16 x float> %i.fw, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.eq, <4 x float> %i.fy)
  %i.gb = shufflevector <16 x float> %i.fw, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.et, <4 x float> %i.ga)
  %i.gd = shufflevector <16 x float> %i.fw, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.ew, <4 x float> %i.gc)
  %i.gf = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> %i.gf, <4 x float> %i.fv)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %.preheader.preheader.i
  %i.gh = phi <4 x float> [ %i.gg, %.preheader.preheader.i ], [ %i.ej, %bb.h ], [ %i.f, %bb.g ]
  store <4 x float> %i.gh, ptr %.0212339.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.gi = getelementptr i8, ptr %.0212339.i, i64 16
  %exitcond349.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count.i
  br i1 %exitcond349.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !158

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC1EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [1 x [4 x i32]], align 16         ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not105.i = icmp eq ptr %9, null
  br i1 %.not105.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load double, ptr %9, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi double [ %i.e, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %10 = bitcast i64 %5 to <2 x i32>
  %i.h = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %10, <2 x i32> splat (i32 16))
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.j = sub nsw <2 x i32> zeroinitializer, %i.i
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1)
  %i.l = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.m = uitofp nneg <2 x i32> %i.k to <2 x float> ; 2 uses
  %i.n = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.o = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.p = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated140.i = add nsw i32 %i.p, -3
  %i.q = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.q, -3
  %i.r = fadd float %i.d, 2.000000e+00
  %i.s = fadd float %i.d, 3.000000e+00
  %i.t = fneg float %i.s
  %i.u = icmp eq i32 %8, 5
  %i.v = trunc i64 %4 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.x = shl i64 %4, 1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %i.z = mul i64 %4, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %.099226.i = phi ptr [ %6, %.lr.ph.i ], [ %i.ew, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !52
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !52
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ag, i64 1 ; 2 uses
  %i.al = fcmp olt <2 x float> %i.ak, %i.l
  %i.am = select <2 x i1> %i.al, <2 x float> %i.l, <2 x float> %i.ak ; 2 uses
  %i.an = fcmp ogt <2 x float> %i.am, %i.m
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.m, <2 x float> %i.am ; 3 uses
  %11 = extractelement <2 x float> %i.ao, i64 1
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = extractelement <2 x float> %i.ao, i64 0
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = insertelement <2 x float> %15, float %12, i64 1
  %i.ap = fptosi <2 x float> %16 to <2 x i32>     ; 3 uses
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>
  %i.ar = fsub <2 x float> %i.ao, %i.aq           ; 5 uses
  %i.as = extractelement <2 x i32> %i.ap, i64 1   ; 2 uses
  %i.at = add nsw i32 %i.as, -1                   ; 6 uses
  %i.au = extractelement <2 x i32> %i.ap, i64 0   ; 2 uses
  %i.av = add nsw i32 %i.au, -1                   ; 6 uses
  %i.aw = add nsw i32 %i.as, 3
  %i.ax = icmp uge i32 %i.aw, %i.n
  %i.ay = add nsw i32 %i.au, 3
  %i.az = icmp uge i32 %i.ay, %i.o
  %i.ba = or i1 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %.sink.split.i
    i32 5, label %bb.i
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bb = icmp ult i32 %i.at, %.sroa.speculated140.i
  %i.bc = icmp ult i32 %i.av, %.sroa.speculated.i
  %i.bd = and i1 %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.ar, %i.ar           ; 3 uses
  %i.bf = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.bg = fsub float 1.000000e+00, %i.bf          ; 3 uses
  %i.bh = fmul float %i.d, %i.bf
  %i.bi = fmul float %i.bg, %i.bg
  %i.bj = extractelement <2 x float> %i.be, i64 1
  %i.bk = fmul float %i.d, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bh, i64 1
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bi, i64 1
  %i.bp = fmul <2 x float> %i.bm, %i.bo           ; 4 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ar, <2 x float> %i.ae)
  %17 = extractelement <2 x float> %i.bp, i64 1   ; 7 uses
  %18 = fsub float 1.000000e+00, %17
  %19 = extractelement <2 x float> %i.bp, i64 0   ; 8 uses
  %i.br = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.bs = fsub float 1.000000e+00, %i.br          ; 3 uses
  %20 = fmul float %i.bs, %i.bs
  %i.bt = fmul float %i.d, %i.br
  %i.bu = fmul float %i.bt, %20                   ; 3 uses
  %i.bv = extractelement <2 x float> %i.be, i64 0
  %i.bw = fmul float %i.d, %i.bv
  %i.bx = fmul float %i.bs, %i.bw                 ; 3 uses
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bq, <2 x float> splat (float 1.000000e+00)) ; 5 uses
  %21 = extractelement <2 x float> %i.by, i64 1   ; 5 uses
  %22 = fsub float %18, %21
  %23 = fsub float %22, %19                       ; 8 uses
  %24 = fsub float 1.000000e+00, %i.bu
  %25 = extractelement <2 x float> %i.by, i64 0   ; 2 uses
  %26 = fsub float %24, %25
  %27 = fsub float %26, %i.bx                     ; 2 uses
  br i1 %i.bd, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.bz = mul nsw i32 %i.av, %i.v
  %i.ca = shl nsw i32 %i.at, 3
  %i.cb = add nsw i32 %i.bz, %i.ca
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load <2 x double>, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %29 = getelementptr inbounds i8, ptr %i.w, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %29, i64 16
  %30 = load <2 x double>, ptr %i.cf, align 8, !tbaa !58
  %31 = fptrunc <2 x double> %30 to <2 x float>   ; 2 uses
  %32 = load <2 x double>, ptr %28, align 8, !tbaa !58 ; 2 uses
  %33 = extractelement <2 x double> %i.ce, i64 0
  %34 = fptrunc double %33 to float
  %i.cg = load <2 x double>, ptr %29, align 8, !tbaa !58 ; 2 uses
  %35 = shufflevector <2 x double> %32, <2 x double> %i.cg, <2 x i32> <i32 1, i32 2>
  %36 = fptrunc <2 x double> %35 to <2 x float>
  %37 = shufflevector <2 x double> %32, <2 x double> %i.cg, <2 x i32> <i32 0, i32 3>
  %38 = fptrunc <2 x double> %37 to <2 x float>
  %39 = insertelement <2 x float> %i.by, float %23, i64 0
  %40 = getelementptr inbounds i8, ptr %i.y, i64 %i.cc ; 2 uses
  %i.ch = load <2 x double>, ptr %40, align 8, !tbaa !58 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %42 = load <2 x double>, ptr %41, align 8, !tbaa !58
  %i.ci = fptrunc <2 x double> %42 to <2 x float> ; 2 uses
  %43 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %44 = shufflevector <2 x double> %i.ce, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cj = fptrunc <2 x double> %44 to <2 x float>
  %45 = fmul <2 x float> %43, %i.cj               ; 2 uses
  %46 = extractelement <2 x float> %45, i64 0
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %17, float %46)
  %i.ck = insertelement <2 x float> <float poison, float -0.000000e+00>, float %47, i64 0
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %39, <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %i.bp, <2 x float> %i.cl) ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = extractelement <2 x float> %i.cm, i64 1
  %i.cp = getelementptr inbounds i8, ptr %i.aa, i64 %i.cc ; 4 uses
  %48 = load double, ptr %i.cp, align 8, !tbaa !58
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %51 = load double, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %53 = load double, ptr %52, align 8, !tbaa !58
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %56 = load double, ptr %55, align 8, !tbaa !58
  %57 = fptrunc double %56 to float
  %58 = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bu, float 0.000000e+00)
  %i.cq = extractelement <2 x float> %31, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %23, float %i.co)
  %59 = extractelement <2 x float> %31, i64 1
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %19, float %i.cr)
  %61 = extractelement <2 x double> %i.ch, i64 0
  %i.cs = fptrunc double %61 to float
  %62 = extractelement <2 x float> %45, i64 1
  %63 = tail call float @llvm.fmuladd.f32(float %i.cs, float %17, float %62)
  %64 = extractelement <2 x float> %i.ci, i64 0
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %23, float %63)
  %66 = extractelement <2 x float> %i.ci, i64 1
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %19, float %65)
  %68 = fptrunc double %51 to float
  %69 = insertelement <2 x float> poison, float %60, i64 0
  %70 = insertelement <2 x float> %69, float %68, i64 1
  %71 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %58, i64 0
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %i.by, <2 x float> %71)
  %72 = insertelement <2 x float> poison, float %67, i64 0
  %i.cu = insertelement <2 x float> %72, float %49, i64 1
  %i.cv = insertelement <2 x float> %i.bp, float %27, i64 0
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.ct) ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1
  %73 = tail call float @llvm.fmuladd.f32(float %54, float %23, float %i.cx)
  %i.cy = tail call float @llvm.fmuladd.f32(float %57, float %19, float %73)
  %i.cz = extractelement <2 x float> %i.cw, i64 0
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bx, float %i.cz)
  %i.db = fpext float %i.da to double
  br label %.sink.split.i

.preheader.i:                                     ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.dc = select i1 %i.u, ptr %.099226.i, ptr %9  ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.at, i32 %i.av, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.dc)
  %i.dd = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.de = sitofp <4 x i32> %i.dd to <4 x float>   ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 1
  %i.dg = fmul float %21, %i.df
  %i.dh = extractelement <4 x float> %i.de, i64 0
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %17, float %i.dg)
  %i.dj = extractelement <4 x float> %i.de, i64 2
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %23, float %i.di)
  %i.dl = extractelement <4 x float> %i.de, i64 3
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %19, float %i.dk)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.bu, float 0.000000e+00)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.at, i32 %i.av, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.dc)
  %i.do = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.dp = sitofp <4 x i32> %i.do to <4 x float>   ; 4 uses
  %i.dq = extractelement <4 x float> %i.dp, i64 1
  %i.dr = fmul float %21, %i.dq
  %i.ds = extractelement <4 x float> %i.dp, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %17, float %i.dr)
  %i.du = extractelement <4 x float> %i.dp, i64 2
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %23, float %i.dt)
  %i.dw = extractelement <4 x float> %i.dp, i64 3
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %19, float %i.dv)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %25, float %i.dn)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.at, i32 %i.av, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.dc)
  %i.dz = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.ea = sitofp <4 x i32> %i.dz to <4 x float>   ; 4 uses
  %i.eb = extractelement <4 x float> %i.ea, i64 1
  %i.ec = fmul float %21, %i.eb
  %i.ed = extractelement <4 x float> %i.ea, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %17, float %i.ec)
  %i.ef = extractelement <4 x float> %i.ea, i64 2
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float %23, float %i.ee)
  %i.eh = extractelement <4 x float> %i.ea, i64 3
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %19, float %i.eg)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %27, float %i.dy)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.at, i32 %i.av, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.dc)
  %i.ek = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.el = sitofp <4 x i32> %i.ek to <4 x float>   ; 4 uses
  %i.em = extractelement <4 x float> %i.el, i64 1
  %i.en = fmul float %21, %i.em
  %i.eo = extractelement <4 x float> %i.el, i64 0
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %17, float %i.en)
  %i.eq = extractelement <4 x float> %i.el, i64 2
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %23, float %i.ep)
  %i.es = extractelement <4 x float> %i.el, i64 3
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %19, float %i.er)
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.bx, float %i.ej)
  %i.ev = fpext float %i.eu to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.i, %bb.h, %bb.g
  %.sink.i = phi double [ %i.db, %bb.h ], [ %i.ev, %.preheader.i ], [ %i.f, %bb.g ]
  store double %.sink.i, ptr %.099226.i, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.099226.i, i64 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !159

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC2EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [2 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 3 uses
  %.not142.i = icmp eq ptr %9, null
  br i1 %.not142.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load double, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi double [ %i.e, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.5.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.i = bitcast i64 %5 to <2 x i32>
  %i.j = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.i, <2 x i32> splat (i32 16))
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.l = sub nsw <2 x i32> zeroinitializer, %i.k
  %i.m = shl nuw nsw <2 x i32> %i.k, splat (i32 1)
  %i.n = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.o = uitofp nneg <2 x i32> %i.m to <2 x float> ; 2 uses
  %i.p = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.q = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.r = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated176.i = add nsw i32 %i.r, -3
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.s, -3
  %i.t = fadd float %i.d, 2.000000e+00
  %i.u = fadd float %i.d, 3.000000e+00
  %i.v = fneg float %i.u
  %i.w = icmp eq i32 %8, 5
  %i.x = trunc i64 %4 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.z = shl i64 %4, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = mul i64 %4, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %10 = insertelement <2 x float> poison, float %i.d, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0136263.i = phi ptr [ %6, %.lr.ph.i ], [ %i.ho, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !52
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.aj, i64 1 ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.n
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.n, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp ogt <2 x float> %i.ap, %i.o
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.o, <2 x float> %i.ap ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = tail call float @llvm.floor.f32(float %i.au)
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.at, i64 1
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>   ; 3 uses
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = fsub <2 x float> %i.ar, %i.az           ; 5 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 1   ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1                   ; 6 uses
  %i.bd = extractelement <2 x i32> %i.ay, i64 0   ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 6 uses
  %i.bf = add nsw i32 %i.bb, 3
  %i.bg = icmp uge i32 %i.bf, %i.p
  %i.bh = add nsw i32 %i.bd, 3
  %i.bi = icmp uge i32 %i.bh, %i.q
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bk = icmp ult i32 %i.bc, %.sroa.speculated176.i
  %i.bl = icmp ult i32 %i.be, %.sroa.speculated.i
  %i.bm = and i1 %i.bk, %i.bl
  %12 = fsub <2 x float> splat (float 1.000000e+00), %i.ba ; 3 uses
  %13 = fmul <2 x float> %11, %i.ba
  %14 = fmul <2 x float> %12, %12
  %15 = fmul <2 x float> %13, %14                 ; 8 uses
  %i.bn = fmul <2 x float> %i.ba, %i.ba           ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ba, <2 x float> %i.ah)
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> splat (float 1.000000e+00)) ; 7 uses
  %16 = fmul <2 x float> %11, %i.bn
  %17 = fmul <2 x float> %12, %16                 ; 7 uses
  %i.bq = fsub <2 x float> splat (float 1.000000e+00), %15
  %i.br = fsub <2 x float> %i.bq, %i.bp
  %i.bs = fsub <2 x float> %i.br, %17             ; 6 uses
  br i1 %i.bm, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.bt = mul nsw i32 %i.be, %i.x
  %i.bu = shl nsw i32 %i.bc, 4
  %i.bv = add nsw i32 %i.bt, %i.bu
  %i.bw = sext i32 %i.bv to i64                   ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %3, i64 %i.bw ; 7 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !58
  %i.bz = fptrunc double %i.by to float
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !58
  %i.ce = extractelement <2 x float> %i.bp, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !58
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !58
  %18 = fptrunc double %i.ci to float
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !58
  %19 = fptrunc double %i.ck to float
  %i.cl = load double, ptr %i.cb, align 8, !tbaa !58
  %i.cm = fptrunc double %i.cl to float
  %i.cn = extractelement <2 x float> %15, i64 1   ; 3 uses
  %i.co = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cd, i64 1
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = load <2 x double>, ptr %i.ca, align 8, !tbaa !58
  %i.cs = fptrunc <2 x double> %i.cr to <2 x float>
  %i.ct = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cu = fmul <2 x float> %i.ct, %i.cs           ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cn, float %i.cv)
  %20 = extractelement <2 x float> %i.bs, i64 1   ; 6 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cm, float %20, float %i.cw)
  %21 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %22 = shufflevector <2 x float> %21, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  %i.cy = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cx, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %22, <2 x float> %i.cz) ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 1
  %23 = extractelement <2 x float> %15, i64 0
  %i.dc = extractelement <2 x float> %i.da, i64 0
  %i.dd = getelementptr inbounds i8, ptr %i.y, i64 %i.bw ; 7 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !58
  %24 = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dg = load double, ptr %i.df, align 8, !tbaa !58
  %25 = fptrunc double %i.dg to float
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.di = load double, ptr %i.dh, align 8, !tbaa !58
  %i.dj = fptrunc double %i.di to float
  %i.dk = tail call float @llvm.fmuladd.f32(float %18, float %20, float %i.dc)
  %26 = extractelement <2 x float> %17, i64 1     ; 5 uses
  %27 = tail call float @llvm.fmuladd.f32(float %19, float %26, float %i.dk)
  %i.dl = fptrunc double %i.de to float
  %i.dm = insertelement <2 x float> poison, float %27, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dl, i64 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !58
  %28 = fptrunc double %i.dp to float
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !58
  %29 = fptrunc double %i.dr to float
  %30 = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.ds = load double, ptr %30, align 8, !tbaa !58
  %i.dt = fptrunc double %i.ds to float
  %31 = load <2 x double>, ptr %24, align 8, !tbaa !58
  %i.du = fptrunc <2 x double> %31 to <2 x float>
  %32 = fmul <2 x float> %i.ct, %i.du             ; 2 uses
  %33 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %32, <2 x i32> <i32 0, i32 2>
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %15, <2 x float> %33) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 1
  %i.dx = extractelement <2 x float> %32, i64 1
  %34 = extractelement <2 x float> %i.dv, i64 0
  %i.dy = extractelement <2 x float> %i.bp, i64 0
  %i.dz = getelementptr inbounds i8, ptr %i.aa, i64 %i.bw ; 8 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !58
  %35 = fptrunc double %i.ea to float
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !58
  %36 = fptrunc double %i.ec to float
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !58
  %i.ef = fptrunc double %i.ee to float
  %37 = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %38 = load double, ptr %37, align 8, !tbaa !58
  %i.eg = fptrunc double %38 to float
  %i.eh = fmul float %i.ce, %36
  %39 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %40 = load double, ptr %39, align 8, !tbaa !58
  %41 = fptrunc double %40 to float
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.el = load double, ptr %i.ek, align 8, !tbaa !58
  %i.em = fptrunc double %i.el to float
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eo = load double, ptr %i.en, align 8, !tbaa !58
  %42 = fptrunc double %i.eo to float
  %43 = tail call float @llvm.fmuladd.f32(float %i.db, float %23, float 0.000000e+00)
  %i.ep = tail call float @llvm.fmuladd.f32(float %25, float %20, float %i.dw)
  %44 = tail call float @llvm.fmuladd.f32(float %i.dj, float %26, float %i.ep)
  %45 = tail call float @llvm.fmuladd.f32(float %35, float %i.cn, float %i.eh)
  %46 = tail call float @llvm.fmuladd.f32(float %i.ef, float %20, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %i.eg, float %26, float %46)
  %i.eq = fptrunc double %i.ej to float
  %48 = insertelement <2 x float> poison, float %44, i64 0
  %i.er = insertelement <2 x float> %48, float %i.eq, i64 1
  %i.es = insertelement <2 x float> <float poison, float -0.000000e+00>, float %43, i64 0
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.bp, <2 x float> %i.es)
  %i.eu = insertelement <2 x float> poison, float %47, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %41, i64 1
  %49 = shufflevector <2 x float> %i.bs, <2 x float> %15, <2 x i32> <i32 0, i32 3>
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %49, <2 x float> %i.et) ; 2 uses
  %51 = extractelement <2 x float> %50, i64 1
  %i.ew = getelementptr inbounds i8, ptr %i.ac, i64 %i.bw ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %54 = tail call float @llvm.fmuladd.f32(float %28, float %i.cn, float %i.dx)
  %55 = tail call float @llvm.fmuladd.f32(float %29, float %20, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %i.dt, float %26, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %i.dy, float %34)
  %58 = tail call float @llvm.fmuladd.f32(float %i.em, float %20, float %51)
  %59 = tail call float @llvm.fmuladd.f32(float %42, float %26, float %58)
  %i.ey = extractelement <2 x float> %i.bs, i64 0
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %i.ey, float %57)
  %i.ez = load <2 x double>, ptr %i.ew, align 8, !tbaa !58
  %i.fa = fptrunc <2 x double> %i.ez to <2 x float>
  %61 = load <2 x double>, ptr %i.ex, align 8, !tbaa !58
  %62 = fptrunc <2 x double> %61 to <2 x float>
  %63 = load <2 x double>, ptr %52, align 8, !tbaa !58
  %64 = fptrunc <2 x double> %63 to <2 x float>
  %65 = load <2 x double>, ptr %53, align 8, !tbaa !58
  %66 = fptrunc <2 x double> %65 to <2 x float>
  %67 = fmul <2 x float> %i.ct, %62
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %21, <2 x float> %67)
  %69 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %64, <2 x float> %69, <2 x float> %68)
  %71 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %71, <2 x float> %70)
  %73 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = insertelement <2 x float> %50, float %60, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %72, <2 x float> %73, <2 x float> %i.fb)
  %74 = fpext <2 x float> %i.fc to <2 x double>   ; 2 uses
  %75 = extractelement <2 x double> %74, i64 0
  store double %75, ptr %.0136263.i, align 8, !tbaa !58
  %76 = extractelement <2 x double> %74, i64 1
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  store double %.sroa.0.0.i, ptr %.0136263.i, align 8
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.fd = select i1 %i.w, ptr %.0136263.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.fd)
  %i.fe = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.ff = sitofp <4 x i32> %i.fe to <4 x float>   ; 4 uses
  %i.fg = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.fh = sitofp <4 x i32> %i.fg to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.fd)
  %i.fi = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.fj = sitofp <4 x i32> %i.fi to <4 x float>   ; 4 uses
  %i.fk = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.fl = sitofp <4 x i32> %i.fk to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.fd)
  %i.fm = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.fn = sitofp <4 x i32> %i.fm to <4 x float>   ; 4 uses
  %i.fo = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.fp = sitofp <4 x i32> %i.fo to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.fd)
  %i.fq = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.fr = sitofp <4 x i32> %i.fq to <4 x float>   ; 4 uses
  %i.fs = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.ft = sitofp <4 x i32> %i.fs to <4 x float>   ; 4 uses
  %i.fu = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.fv = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <2 x i32> <i32 1, i32 5>
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <2 x i32> <i32 0, i32 4>
  %i.fy = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.fw)
  %i.ga = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <2 x i32> <i32 2, i32 6>
  %i.gb = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz)
  %i.gd = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <2 x i32> <i32 3, i32 7>
  %77 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %77, <2 x float> %i.gc)
  %i.ge = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> %i.ge, <2 x float> zeroinitializer)
  %i.gg = shufflevector <4 x float> %i.fl, <4 x float> %i.fj, <2 x i32> <i32 1, i32 5>
  %i.gh = fmul <2 x float> %i.fu, %i.gg
  %i.gi = shufflevector <4 x float> %i.fl, <4 x float> %i.fj, <2 x i32> <i32 0, i32 4>
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.fy, <2 x float> %i.gh)
  %i.gk = shufflevector <4 x float> %i.fl, <4 x float> %i.fj, <2 x i32> <i32 2, i32 6>
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gb, <2 x float> %i.gj)
  %i.gm = shufflevector <4 x float> %i.fl, <4 x float> %i.fj, <2 x i32> <i32 3, i32 7>
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %77, <2 x float> %i.gl)
  %i.go = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gf)
  %i.gq = shufflevector <4 x float> %i.fp, <4 x float> %i.fn, <2 x i32> <i32 1, i32 5>
  %i.gr = fmul <2 x float> %i.fu, %i.gq
  %i.gs = shufflevector <4 x float> %i.fp, <4 x float> %i.fn, <2 x i32> <i32 0, i32 4>
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.fy, <2 x float> %i.gr)
  %i.gu = shufflevector <4 x float> %i.fp, <4 x float> %i.fn, <2 x i32> <i32 2, i32 6>
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gb, <2 x float> %i.gt)
  %i.gw = shufflevector <4 x float> %i.fp, <4 x float> %i.fn, <2 x i32> <i32 3, i32 7>
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %77, <2 x float> %i.gv)
  %i.gy = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gy, <2 x float> %i.gp)
  %i.ha = shufflevector <4 x float> %i.ft, <4 x float> %i.fr, <2 x i32> <i32 1, i32 5>
  %i.hb = fmul <2 x float> %i.fu, %i.ha
  %i.hc = shufflevector <4 x float> %i.ft, <4 x float> %i.fr, <2 x i32> <i32 0, i32 4>
  %i.hd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.fy, <2 x float> %i.hb)
  %i.he = shufflevector <4 x float> %i.ft, <4 x float> %i.fr, <2 x i32> <i32 2, i32 6>
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.gb, <2 x float> %i.hd)
  %i.hg = shufflevector <4 x float> %i.ft, <4 x float> %i.fr, <2 x i32> <i32 3, i32 7>
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %77, <2 x float> %i.hf)
  %i.hi = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hi, <2 x float> %i.gz)
  %i.hk = fpext <2 x float> %i.hj to <2 x double> ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 1
  store double %i.hl, ptr %.0136263.i, align 8, !tbaa !58
  %i.hm = extractelement <2 x double> %i.hk, i64 0
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.i, %bb.h
  %.sink.i = phi double [ %76, %bb.h ], [ %i.hm, %.preheader.preheader.i ], [ %.sroa.5.0.i, %bb.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0136263.i, i64 8
  store double %.sink.i, ptr %i.hn, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0136263.i, i64 16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !160

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC3EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [3 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not180.i = icmp eq ptr %9, null
  br i1 %.not180.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <2 x double>, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = phi <2 x double> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.j = bitcast i64 %5 to <2 x i32>
  %i.k = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.j, <2 x i32> splat (i32 16)) ; 2 uses
  %i.l = sub nsw <2 x i32> zeroinitializer, %i.k
  %i.m = shl nuw nsw <2 x i32> %i.k, splat (i32 1)
  %i.n = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.o = uitofp nneg <2 x i32> %i.m to <2 x float> ; 2 uses
  %i.p = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.q = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.r = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated214.i = add nsw i32 %i.r, -3
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.s, -3
  %i.t = fadd float %i.d, 2.000000e+00
  %i.u = fadd float %i.d, 3.000000e+00
  %i.v = fneg float %i.u
  %i.w = icmp eq i32 %8, 5
  %i.x = trunc i64 %4 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.z = shl i64 %4, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = mul i64 %4, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0174301.i = phi ptr [ %6, %.lr.ph.i ], [ %i.mp, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !52
  %i.am = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.al, i64 1 ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.n
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.n, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp ogt <2 x float> %i.ap, %i.o
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.o, <2 x float> %i.ap ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = tail call float @llvm.floor.f32(float %i.au)
  %i.aw = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>   ; 3 uses
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = fsub <2 x float> %i.ar, %i.az           ; 5 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 0   ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1                   ; 6 uses
  %i.bd = extractelement <2 x i32> %i.ay, i64 1   ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 6 uses
  %i.bf = add nsw i32 %i.bb, 3
  %i.bg = icmp uge i32 %i.bf, %i.p
  %i.bh = add nsw i32 %i.bd, 3
  %i.bi = icmp uge i32 %i.bh, %i.q
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bk = icmp ult i32 %i.bc, %.sroa.speculated214.i
  %i.bl = icmp ult i32 %i.be, %.sroa.speculated.i
  %i.bm = and i1 %i.bk, %i.bl
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ba, <2 x float> %i.ah)
  %i.bo = fmul <2 x float> %i.ba, %i.ba           ; 3 uses
  %i.bp = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bq = fsub float 1.000000e+00, %i.bp          ; 3 uses
  %i.br = fmul float %i.d, %i.bp
  %i.bs = extractelement <2 x float> %i.bo, i64 0
  %i.bt = fmul float %i.bq, %i.bq
  %i.bu = fmul float %i.d, %i.bs
  %i.bv = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.br, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bt, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by           ; 9 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1 ; 7 uses
  %i.cb = extractelement <2 x float> %i.bz, i64 0 ; 7 uses
  %i.cc = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.cd = fsub float 1.000000e+00, %i.cc          ; 3 uses
  %i.ce = fmul float %i.d, %i.cc
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 1.000000e+00)) ; 9 uses
  %i.cg = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ch = extractelement <2 x float> %i.bo, i64 1
  %i.ci = fmul float %i.cd, %i.cd
  %i.cj = fmul float %i.ce, %i.ci                 ; 5 uses
  %i.ck = insertelement <2 x float> %i.cg, float %i.cj, i64 1
  %i.cl = fsub <2 x float> splat (float 1.000000e+00), %i.ck
  %i.cm = fsub <2 x float> %i.cl, %i.cf
  %i.cn = fmul float %i.d, %i.ch
  %i.co = fmul float %i.cd, %i.cn                 ; 5 uses
  %i.cp = insertelement <2 x float> %i.bz, float %i.co, i64 1
  %i.cq = fsub <2 x float> %i.cm, %i.cp           ; 8 uses
  br i1 %i.bm, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.cr = mul nsw i32 %i.be, %i.x
  %i.cs = mul nsw i32 %i.bc, 24
  %i.ct = add nsw i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !58
  %i.db = fptrunc double %i.da to float
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !58
  %i.de = fptrunc double %i.dd to float
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.dg = load double, ptr %i.df, align 8, !tbaa !58
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.di = load double, ptr %i.dh, align 8, !tbaa !58
  %i.dj = extractelement <2 x float> %i.cf, i64 0 ; 4 uses
  %i.dk = fmul float %i.dj, %i.de
  %i.dl = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.y, i64 %i.cu ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dv = load double, ptr %i.du, align 8, !tbaa !58
  %10 = fptrunc double %i.dv to float
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !58
  %11 = fptrunc double %i.dx to float
  %i.dy = fptrunc double %i.dg to float
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.db, float %i.ca, float %i.dk)
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dl, float %i.dz)
  %i.eb = insertelement <2 x double> poison, double %i.di, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dr, i64 1
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  %i.ee = fptrunc double %i.dt to float
  %i.ef = fmul float %i.dj, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ef, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.bz, <2 x float> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.cj, float 0.000000e+00)
  %i.el = extractelement <2 x float> %i.ei, i64 1
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %i.dl, float %i.el)
  %13 = tail call float @llvm.fmuladd.f32(float %11, float %i.cb, float %12)
  %i.em = extractelement <2 x float> %i.cf, i64 1
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %i.em, float %i.ek)
  %i.en = getelementptr inbounds i8, ptr %i.aa, i64 %i.cu ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !58
  %15 = fptrunc double %i.es to float
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !58
  %i.ev = fptrunc double %i.eu to float
  %16 = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %17 = load double, ptr %16, align 8, !tbaa !58
  %i.ew = fptrunc double %17 to float
  %18 = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %19 = load double, ptr %18, align 8, !tbaa !58
  %20 = fptrunc double %19 to float
  %21 = fmul float %i.dj, %i.ev
  %22 = tail call float @llvm.fmuladd.f32(float %15, float %i.ca, float %21)
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.dl, float %22)
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %i.cb, float %i.ex)
  %i.ey = extractelement <2 x float> %i.cq, i64 1
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %i.ey, float %14)
  %i.ez = getelementptr inbounds i8, ptr %i.ac, i64 %i.cu ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !58
  %i.ff = fptrunc double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !58
  %i.fi = fptrunc double %i.fh to float
  %25 = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %26 = load double, ptr %25, align 8, !tbaa !58
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %29 = load double, ptr %28, align 8, !tbaa !58
  %i.fj = fptrunc double %29 to float
  %i.fk = fmul float %i.dj, %i.fi
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ca, float %i.fk)
  %i.fm = tail call float @llvm.fmuladd.f32(float %27, float %i.dl, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.cb, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.co, float %24)
  %i.fp = load <2 x double>, ptr %i.cv, align 8, !tbaa !58
  %i.fq = fptrunc <2 x double> %i.fp to <2 x float>
  %i.fr = load <2 x double>, ptr %i.cw, align 8, !tbaa !58
  %i.fs = fptrunc <2 x double> %i.fr to <2 x float>
  %i.ft = load <2 x double>, ptr %i.cx, align 8, !tbaa !58
  %i.fu = fptrunc <2 x double> %i.ft to <2 x float>
  %i.fv = load <2 x double>, ptr %i.cy, align 8, !tbaa !58
  %i.fw = fptrunc <2 x double> %i.fv to <2 x float>
  %i.fx = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fy = fmul <2 x float> %i.fx, %i.fs
  %i.fz = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fz, <2 x float> %i.fy)
  %i.gb = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.gb, <2 x float> %i.ga)
  %i.gd = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.gd, <2 x float> %i.gc)
  %i.gf = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gg, <2 x float> zeroinitializer)
  %i.gi = load <2 x double>, ptr %i.dm, align 8, !tbaa !58
  %i.gj = fptrunc <2 x double> %i.gi to <2 x float>
  %i.gk = load <2 x double>, ptr %i.dn, align 8, !tbaa !58
  %i.gl = fptrunc <2 x double> %i.gk to <2 x float>
  %i.gm = load <2 x double>, ptr %i.do, align 8, !tbaa !58
  %i.gn = fptrunc <2 x double> %i.gm to <2 x float>
  %i.go = load <2 x double>, ptr %i.dp, align 8, !tbaa !58
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = fmul <2 x float> %i.fx, %i.gl
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.fz, <2 x float> %i.gq)
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gb, <2 x float> %i.gr)
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gd, <2 x float> %i.gs)
  %i.gu = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gu, <2 x float> %i.gh)
  %i.gw = load <2 x double>, ptr %i.en, align 8, !tbaa !58
  %i.gx = fptrunc <2 x double> %i.gw to <2 x float>
  %i.gy = load <2 x double>, ptr %i.eo, align 8, !tbaa !58
  %i.gz = fptrunc <2 x double> %i.gy to <2 x float>
  %i.ha = load <2 x double>, ptr %i.ep, align 8, !tbaa !58
  %i.hb = fptrunc <2 x double> %i.ha to <2 x float>
  %i.hc = load <2 x double>, ptr %i.eq, align 8, !tbaa !58
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float>
  %i.he = fmul <2 x float> %i.fx, %i.gz
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.fz, <2 x float> %i.he)
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gb, <2 x float> %i.hf)
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.gd, <2 x float> %i.hg)
  %i.hi = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hi, <2 x float> %i.gv)
  %i.hk = load <2 x double>, ptr %i.ez, align 8, !tbaa !58
  %i.hl = fptrunc <2 x double> %i.hk to <2 x float>
  %i.hm = load <2 x double>, ptr %i.fa, align 8, !tbaa !58
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = load <2 x double>, ptr %i.fb, align 8, !tbaa !58
  %i.hp = fptrunc <2 x double> %i.ho to <2 x float>
  %i.hq = load <2 x double>, ptr %i.fc, align 8, !tbaa !58
  %i.hr = fptrunc <2 x double> %i.hq to <2 x float>
  %i.hs = fmul <2 x float> %i.fx, %i.hn
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.fz, <2 x float> %i.hs)
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.gb, <2 x float> %i.ht)
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.gd, <2 x float> %i.hu)
  %i.hw = insertelement <2 x float> poison, float %i.co, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hx, <2 x float> %i.hj)
  %i.hz = fpext <2 x float> %i.hy to <2 x double>
  store <2 x double> %i.hz, ptr %.0174301.i, align 8, !tbaa !58
  %i.ia = fpext float %i.fo to double
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  store <2 x double> %i.h, ptr %.0174301.i, align 8
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.ib = select i1 %i.w, ptr %.0174301.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ib)
  %i.ic = extractelement <2 x float> %i.cf, i64 0 ; 4 uses
  %i.id = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.ie = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.if = sitofp <4 x i32> %i.ie to <4 x float>   ; 4 uses
  %i.ig = extractelement <4 x float> %i.if, i64 1
  %i.ih = fmul float %i.ic, %i.ig
  %i.ii = extractelement <4 x float> %i.if, i64 0
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.ca, float %i.ih)
  %i.ik = extractelement <4 x float> %i.if, i64 2
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.id, float %i.ij)
  %i.im = extractelement <4 x float> %i.if, i64 3
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %i.cb, float %i.il)
  %i.io = tail call float @llvm.fmuladd.f32(float %i.in, float %i.cj, float 0.000000e+00)
  %i.ip = extractelement <2 x float> %i.cf, i64 1
  %i.iq = extractelement <2 x float> %i.cq, i64 1
  %i.ir = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.is = shufflevector <8 x i32> %i.ir, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.it = sitofp <2 x i32> %i.is to <2 x float>
  %i.iu = shufflevector <8 x i32> %i.ir, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.iv = sitofp <2 x i32> %i.iu to <2 x float>
  %i.iw = shufflevector <8 x i32> %i.ir, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.ix = sitofp <2 x i32> %i.iw to <2 x float>
  %i.iy = shufflevector <8 x i32> %i.ir, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.iz = sitofp <2 x i32> %i.iy to <2 x float>
  %i.ja = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jb = fmul <2 x float> %i.ja, %i.iv
  %i.jc = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.jc, <2 x float> %i.jb)
  %i.je = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.je, <2 x float> %i.jd)
  %i.jg = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.jg, <2 x float> %i.jf)
  %i.ji = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jj, <2 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ib)
  %i.jl = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.jm = shufflevector <8 x i32> %i.jl, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.jn = sitofp <2 x i32> %i.jm to <2 x float>
  %i.jo = shufflevector <8 x i32> %i.jl, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.jp = sitofp <2 x i32> %i.jo to <2 x float>
  %i.jq = shufflevector <8 x i32> %i.jl, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.jr = sitofp <2 x i32> %i.jq to <2 x float>
  %i.js = shufflevector <8 x i32> %i.jl, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.jt = sitofp <2 x i32> %i.js to <2 x float>
  %i.ju = fmul <2 x float> %i.ja, %i.jp
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jc, <2 x float> %i.ju)
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.je, <2 x float> %i.jv)
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.jg, <2 x float> %i.jw)
  %i.jy = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.jy, <2 x float> %i.jk)
  %i.ka = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.kb = sitofp <4 x i32> %i.ka to <4 x float>   ; 4 uses
  %i.kc = extractelement <4 x float> %i.kb, i64 1
  %i.kd = fmul float %i.ic, %i.kc
  %i.ke = extractelement <4 x float> %i.kb, i64 0
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.ca, float %i.kd)
  %i.kg = extractelement <4 x float> %i.kb, i64 2
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.kg, float %i.id, float %i.kf)
  %i.ki = extractelement <4 x float> %i.kb, i64 3
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.cb, float %i.kh)
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.ip, float %i.io)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ib)
  %i.kl = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.km = shufflevector <8 x i32> %i.kl, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.kn = sitofp <2 x i32> %i.km to <2 x float>
  %i.ko = shufflevector <8 x i32> %i.kl, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.kp = sitofp <2 x i32> %i.ko to <2 x float>
  %i.kq = shufflevector <8 x i32> %i.kl, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.kr = sitofp <2 x i32> %i.kq to <2 x float>
  %i.ks = shufflevector <8 x i32> %i.kl, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.kt = sitofp <2 x i32> %i.ks to <2 x float>
  %i.ku = fmul <2 x float> %i.ja, %i.kp
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.jc, <2 x float> %i.ku)
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.je, <2 x float> %i.kv)
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.jg, <2 x float> %i.kw)
  %i.ky = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.ky, <2 x float> %i.jz)
  %i.la = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.lb = sitofp <4 x i32> %i.la to <4 x float>   ; 4 uses
  %i.lc = extractelement <4 x float> %i.lb, i64 1
  %i.ld = fmul float %i.ic, %i.lc
  %i.le = extractelement <4 x float> %i.lb, i64 0
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.le, float %i.ca, float %i.ld)
  %i.lg = extractelement <4 x float> %i.lb, i64 2
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.id, float %i.lf)
  %i.li = extractelement <4 x float> %i.lb, i64 3
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.li, float %i.cb, float %i.lh)
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.iq, float %i.kk)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ib)
  %i.ll = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.lm = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.ln = sitofp <2 x i32> %i.lm to <2 x float>
  %i.lo = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.lp = sitofp <2 x i32> %i.lo to <2 x float>
  %i.lq = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>
  %i.ls = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.lt = sitofp <2 x i32> %i.ls to <2 x float>
  %i.lu = fmul <2 x float> %i.ja, %i.lp
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.jc, <2 x float> %i.lu)
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.je, <2 x float> %i.lv)
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.jg, <2 x float> %i.lw)
  %i.ly = insertelement <2 x float> poison, float %i.co, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.lz, <2 x float> %i.kz)
  %i.mb = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.mc = sitofp <4 x i32> %i.mb to <4 x float>   ; 4 uses
  %i.md = extractelement <4 x float> %i.mc, i64 1
  %i.me = fmul float %i.ic, %i.md
  %i.mf = extractelement <4 x float> %i.mc, i64 0
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.ca, float %i.me)
  %i.mh = extractelement <4 x float> %i.mc, i64 2
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.id, float %i.mg)
  %i.mj = extractelement <4 x float> %i.mc, i64 3
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mj, float %i.cb, float %i.mi)
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.co, float %i.lk)
  %i.mm = fpext <2 x float> %i.ma to <2 x double>
  store <2 x double> %i.mm, ptr %.0174301.i, align 8, !tbaa !58
  %i.mn = fpext float %i.ml to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.i, %bb.h
  %.sink.i = phi double [ %i.ia, %bb.h ], [ %i.mn, %.preheader.preheader.i ], [ %.sroa.6.0.i, %bb.i ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0174301.i, i64 16
  store double %.sink.i, ptr %i.mo, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0174301.i, i64 24
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !161

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC4EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [4 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 5 uses
  %.not218.i = icmp eq ptr %9, null
  br i1 %.not218.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <2 x double>, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi <2 x double> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.i = phi <2 x double> [ %i.g, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.k = bitcast i64 %5 to <2 x i32>
  %i.l = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.k, <2 x i32> splat (i32 16)) ; 2 uses
  %i.m = sub nsw <2 x i32> zeroinitializer, %i.l
  %i.n = shl nuw nsw <2 x i32> %i.l, splat (i32 1)
  %i.o = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.p = uitofp nneg <2 x i32> %i.n to <2 x float> ; 2 uses
  %i.q = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
end_hunk_0
