Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/DPXColorConverter?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.en = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.en
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.ep = load <4 x float>, ptr %switch.load, align 16, !tbaa !80 ; 3 uses
  %i.eq = load <2 x float>, ptr %i.eo, align 16, !tbaa !80 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %switch.load, i64 24
  %i.es = load float, ptr %i.er, align 8, !tbaa !80
  %i.et = getelementptr inbounds nuw i8, ptr %switch.load, i64 28
  %i.eu = load float, ptr %i.et, align 4, !tbaa !80
  %i.ev = getelementptr inbounds nuw i8, ptr %switch.load, i64 32
  %i.ew = load float, ptr %i.ev, align 16, !tbaa !80
  %wide.trip.count.i138.i = zext nneg i32 %i.p to i64
  %i.ex = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ey = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ez = shufflevector <2 x float> %i.eq, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.ep, <2 x i32> <i32 0, i32 5>
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i137.i
  %indvars.iv.i139.i = phi i64 [ 0, %.lr.ph.i137.i ], [ %indvars.iv.next.i140.i, %bb.j ] ; 4 uses
  %i.fc = shl nuw nsw i64 %indvars.iv.i139.i, 1
  %i.fd = shl nuw i64 %indvars.iv.i139.i, 33
  %sext.i.i = ashr exact i64 %i.fd, 32            ; 2 uses
  %i.fe = or i64 %sext.i.i, 2
  %i.ff = getelementptr inbounds i8, ptr %2, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !77
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !77
  %i.fk = and i64 %sext.i.i, -4
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !77
  %i.fn = mul nuw nsw i64 %indvars.iv.i139.i, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 %i.fn ; 3 uses
  %i.fp = uitofp i8 %i.fj to float                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fr = insertelement <2 x i8> poison, i8 %i.fm, i64 0
  %i.fs = insertelement <2 x i8> %i.fr, i8 %i.fg, i64 1
  %i.ft = uitofp <2 x i8> %i.fs to <2 x float>
  %i.fu = fadd <2 x float> %i.ft, splat (float -1.275000e+02) ; 4 uses
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = fmul <2 x float> %i.fb, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.fy, <2 x float> %i.fw)
  %i.ga = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ga, <2 x float> %i.fz) ; 3 uses
  %i.gc = fcmp ogt <2 x float> %i.gb, splat (float 2.550000e+02) ; 2 uses
  %i.gd = extractelement <2 x i1> %i.gc, i64 1
  %i.ge = extractelement <2 x float> %i.gb, i64 1
  %i.gf = fptoui float %i.ge to i8
  %i.gg = select i1 %i.gd, i8 -1, i8 %i.gf
  store i8 %i.gg, ptr %i.fq, align 1, !tbaa !77
  %i.gh = extractelement <2 x i1> %i.gc, i64 0
  %i.gi = extractelement <2 x float> %i.gb, i64 0
  %i.gj = fptoui float %i.gi to i8
  %i.gk = select i1 %i.gh, i8 -1, i8 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !77
  %i.gm = extractelement <2 x float> %i.fu, i64 1
  %i.gn = fmul float %i.eu, %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fp, float %i.gn)
  %i.gp = extractelement <2 x float> %i.fu, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.gp, float %i.go) ; 2 uses
  %i.gr = fcmp ogt float %i.gq, 2.550000e+02
  %.sroa.speculated.2.i.i.i = select i1 %i.gr, float 2.550000e+02, float %i.gq
  %i.gs = fptoui float %.sroa.speculated.2.i.i.i to i8
  store i8 %i.gs, ptr %i.fo, align 1, !tbaa !77
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i138.i
  br i1 %exitcond.not.i141.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.j, !llvm.loop !16

bb.k:                                             ; preds = %bb.h
  %switch.tableidx468 = add i8 %i.h, -5           ; 2 uses
  %i.gt = icmp ult i8 %switch.tableidx468, 4
  br i1 %i.gt, label %switch.lookup469, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup469:                                 ; preds = %bb.k
  %i.gu = icmp sgt i32 %i.p, 0
  br i1 %i.gu, label %.lr.ph.i143.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i143.i:                                    ; preds = %switch.lookup469
  %i.gv = zext nneg i8 %switch.tableidx468 to i64
  %switch.gep470 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.gv
  %switch.load471 = load ptr, ptr %switch.gep470, align 8 ; 5 uses
  %i.gw = load float, ptr %switch.load471, align 16, !tbaa !80
  %i.gx = getelementptr inbounds nuw i8, ptr %switch.load471, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %switch.load471, i64 8
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !80
  %i.hb = getelementptr inbounds nuw i8, ptr %switch.load471, i64 12
  %i.hc = getelementptr inbounds nuw i8, ptr %switch.load471, i64 28
  %i.hd = load <4 x float>, ptr %i.hb, align 4, !tbaa !80 ; 3 uses
  %i.he = load <2 x float>, ptr %i.hc, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i144.i = zext nneg i32 %i.p to i64
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.hg = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hh = shufflevector <2 x float> %i.he, <2 x float> %i.hg, <2 x i32> <i32 1, i32 3>
  %i.hi = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.hd, <2 x i32> <i32 0, i32 5>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i143.i
  %indvars.iv.i145.i = phi i64 [ 0, %.lr.ph.i143.i ], [ %indvars.iv.next.i151.i, %bb.l ] ; 4 uses
  %i.hk = shl nuw i64 %indvars.iv.i145.i, 33
  %sext.i146.i = ashr exact i64 %i.hk, 32         ; 2 uses
  %i.hl = or i64 %sext.i146.i, 2
  %i.hm = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !79
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i145.i, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !79
  %i.hr = and i64 %sext.i146.i, -4
  %i.hs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !79
  %.idx27.i.i = mul nuw nsw i64 %indvars.iv.i145.i, 6
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i.i ; 2 uses
  %i.hv = uitofp i16 %i.hq to float               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hx = insertelement <2 x i16> poison, i16 %i.ht, i64 0
  %i.hy = insertelement <2 x i16> %i.hx, i16 %i.hn, i64 1
  %i.hz = uitofp <2 x i16> %i.hy to <2 x float>
  %i.ia = fadd <2 x float> %i.hz, splat (float -3.276750e+04) ; 4 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 1
  %i.ic = fmul float %i.gy, %i.ib
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.hv, float %i.ic)
  %i.ie = extractelement <2 x float> %i.ia, i64 0
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ie, float %i.id) ; 2 uses
  %i.ig = fcmp ogt float %i.if, 6.553500e+04
  %.sroa.speculated.i.i148.i = select i1 %i.ig, float 6.553500e+04, float %i.if
  %i.ih = fptoui float %.sroa.speculated.i.i148.i to i16
  store i16 %i.ih, ptr %i.hw, align 2, !tbaa !79
  %i.ii = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = fmul <2 x float> %i.hj, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.in, <2 x float> %i.im) ; 2 uses
  %i.ip = fcmp ogt <2 x float> %i.io, splat (float 6.553500e+04)
  %i.iq = select <2 x i1> %i.ip, <2 x float> splat (float 6.553500e+04), <2 x float> %i.io
  %i.ir = fptoui <2 x float> %i.iq to <2 x i16>
  store <2 x i16> %i.ir, ptr %i.hu, align 2, !tbaa !79
  %indvars.iv.next.i151.i = add nuw nsw i64 %indvars.iv.i145.i, 1 ; 2 uses
  %exitcond.not.i152.i = icmp eq i64 %indvars.iv.next.i151.i, %wide.trip.count.i144.i
  br i1 %exitcond.not.i152.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.l, !llvm.loop !17

bb.m:                                             ; preds = %bb.h
  %switch.tableidx472 = add i8 %i.h, -5           ; 2 uses
  %i.is = icmp ult i8 %switch.tableidx472, 4
  br i1 %i.is, label %switch.lookup473, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup473:                                 ; preds = %bb.m
  %i.it = icmp sgt i32 %i.p, 0
  br i1 %i.it, label %.lr.ph.i154.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i154.i:                                    ; preds = %switch.lookup473
  %i.iu = zext nneg i8 %switch.tableidx472 to i64
  %switch.gep474 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.iu
  %switch.load475 = load ptr, ptr %switch.gep474, align 8 ; 5 uses
  %i.iv = load float, ptr %switch.load475, align 16, !tbaa !80
  %i.iw = getelementptr inbounds nuw i8, ptr %switch.load475, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !80
  %i.iy = getelementptr inbounds nuw i8, ptr %switch.load475, i64 8
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !80
  %i.ja = getelementptr inbounds nuw i8, ptr %switch.load475, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %switch.load475, i64 28
  %i.jc = load <4 x float>, ptr %i.ja, align 4, !tbaa !80 ; 3 uses
  %i.jd = load <2 x float>, ptr %i.jb, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i155.i = zext nneg i32 %i.p to i64
  %i.je = shufflevector <4 x float> %i.jc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.jf = shufflevector <4 x float> %i.jc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.jg = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.jh = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> %i.jc, <2 x i32> <i32 0, i32 5>
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i154.i
  %indvars.iv.i156.i = phi i64 [ 0, %.lr.ph.i154.i ], [ %indvars.iv.next.i164.i, %bb.n ] ; 4 uses
  %i.jj = shl nuw i64 %indvars.iv.i156.i, 33
  %sext.i157.i = ashr exact i64 %i.jj, 32         ; 2 uses
  %i.jk = or i64 %sext.i157.i, 2
  %i.jl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !6
  %.idx.i158.i = shl nuw nsw i64 %indvars.iv.i156.i, 3
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i158.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !6
  %i.jq = and i64 %sext.i157.i, -4
  %i.jr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !6
  %.idx27.i160.i = mul nuw nsw i64 %indvars.iv.i156.i, 12
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i160.i ; 2 uses
  %i.ju = uitofp i32 %i.jp to float               ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = uitofp i32 %i.jm to float
  %i.jx = uitofp i32 %i.js to float
  %5 = insertelement <2 x float> poison, float %i.jx, i64 0
  %6 = insertelement <2 x float> %5, float %i.jw, i64 1
  %7 = fadd <2 x float> %6, splat (float f0xCF000000) ; 4 uses
  %8 = extractelement <2 x float> %7, i64 1
  %i.jy = fmul float %i.ix, %8
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.ju, float %i.jy)
  %9 = extractelement <2 x float> %7, i64 0
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.iz, float %9, float %i.jz) ; 2 uses
  %i.kb = fcmp ogt float %i.ka, f0x4F800000
  %.sroa.speculated.i.i161.i = select i1 %i.kb, float f0x4F800000, float %i.ka
  %i.kc = fptoui float %.sroa.speculated.i.i161.i to i32
  store i32 %i.kc, ptr %i.jv, align 4, !tbaa !6
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kd = fmul <2 x float> %i.ji, %10
  %i.ke = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.kf, <2 x float> %i.kd)
  %i.kh = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.kh, <2 x float> %i.kg) ; 2 uses
  %i.kj = fcmp ogt <2 x float> %i.ki, splat (float f0x4F800000)
  %i.kk = select <2 x i1> %i.kj, <2 x float> splat (float f0x4F800000), <2 x float> %i.ki
  %i.kl = fptoui <2 x float> %i.kk to <2 x i32>
  store <2 x i32> %i.kl, ptr %i.jt, align 4, !tbaa !6
  %indvars.iv.next.i164.i = add nuw nsw i64 %indvars.iv.i156.i, 1 ; 2 uses
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i164.i, %wide.trip.count.i155.i
  br i1 %exitcond.not.i165.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.n, !llvm.loop !18

bb.o:                                             ; preds = %bb.h
  %switch.tableidx476 = add i8 %i.h, -5           ; 2 uses
  %i.km = icmp ult i8 %switch.tableidx476, 4
  br i1 %i.km, label %switch.lookup477, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup477:                                 ; preds = %bb.o
  %i.kn = icmp sgt i32 %i.p, 0
  br i1 %i.kn, label %.lr.ph.i167.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i167.i:                                    ; preds = %switch.lookup477
  %i.ko = zext nneg i8 %switch.tableidx476 to i64
  %switch.gep478 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ko
  %switch.load479 = load ptr, ptr %switch.gep478, align 8 ; 5 uses
  %i.kp = load float, ptr %switch.load479, align 16, !tbaa !80
  %i.kq = getelementptr inbounds nuw i8, ptr %switch.load479, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !80
  %i.ks = getelementptr inbounds nuw i8, ptr %switch.load479, i64 8
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !80
  %i.ku = getelementptr inbounds nuw i8, ptr %switch.load479, i64 12
  %i.kv = getelementptr inbounds nuw i8, ptr %switch.load479, i64 28
  %i.kw = load <4 x float>, ptr %i.ku, align 4, !tbaa !80 ; 3 uses
  %i.kx = load <2 x float>, ptr %i.kv, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i168.i = zext nneg i32 %i.p to i64
  %i.ky = shufflevector <4 x float> %i.kw, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.kz = shufflevector <4 x float> %i.kw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> %i.kz, <2 x i32> <i32 1, i32 3>
  %i.lb = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> %i.kw, <2 x i32> <i32 0, i32 5>
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i177.i, %bb.p ] ; 4 uses
  %i.ld = shl nuw i64 %indvars.iv.i169.i, 33
  %sext.i170.i = ashr exact i64 %i.ld, 32         ; 2 uses
  %i.le = or i64 %sext.i170.i, 2
  %i.lf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !80
  %.idx.i171.i = shl nuw nsw i64 %indvars.iv.i169.i, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i171.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load float, ptr %i.li, align 4, !tbaa !80 ; 2 uses
  %i.lk = and i64 %sext.i170.i, -4
  %i.ll = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lk
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !80
  %.idx27.i173.i = mul nuw nsw i64 %indvars.iv.i169.i, 12
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i173.i ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.lg, i64 1
  %i.lr = fadd <2 x float> %i.lq, splat (float -5.000000e-01) ; 4 uses
  %i.ls = extractelement <2 x float> %i.lr, i64 1
  %i.lt = fmul float %i.kr, %i.ls
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.kp, float %i.lj, float %i.lt)
  %i.lv = extractelement <2 x float> %i.lr, i64 0
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.lv, float %i.lu) ; 2 uses
  %i.lx = fcmp ogt float %i.lw, 1.000000e+00
  %.sroa.speculated.i.i174.i = select i1 %i.lx, float 1.000000e+00, float %i.lw ; 2 uses
  %i.ly = fcmp ogt float %.sroa.speculated.i.i174.i, 0.000000e+00
  %.sroa.speculated14.i.i.i = select i1 %i.ly, float %.sroa.speculated.i.i174.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i.i, ptr %i.lo, align 4, !tbaa !80
  %i.lz = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ma = fmul <2 x float> %i.lc, %i.lz
  %i.mb = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.mc, <2 x float> %i.ma)
  %i.me = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.me, <2 x float> %i.md) ; 2 uses
  %i.mg = fcmp ogt <2 x float> %i.mf, splat (float 1.000000e+00)
  %i.mh = select <2 x i1> %i.mg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mf ; 2 uses
  %i.mi = fcmp ogt <2 x float> %i.mh, zeroinitializer
  %i.mj = select <2 x i1> %i.mi, <2 x float> %i.mh, <2 x float> zeroinitializer
  store <2 x float> %i.mj, ptr %i.ln, align 4, !tbaa !80
  %indvars.iv.next.i177.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i178.i = icmp eq i64 %indvars.iv.next.i177.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i178.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.p, !llvm.loop !19

bb.q:                                             ; preds = %bb.h
  %switch.tableidx480 = add i8 %i.h, -5           ; 2 uses
  %i.mk = icmp ult i8 %switch.tableidx480, 4
  br i1 %i.mk, label %switch.lookup481, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup481:                                 ; preds = %bb.q
  %i.ml = icmp sgt i32 %i.p, 0
  br i1 %i.ml, label %.lr.ph.i180.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i180.i:                                    ; preds = %switch.lookup481
  %i.mm = zext nneg i8 %switch.tableidx480 to i64
  %switch.gep482 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.mm
  %switch.load483 = load ptr, ptr %switch.gep482, align 8 ; 4 uses
  %i.mn = load float, ptr %switch.load483, align 16, !tbaa !80
  %i.mo = fpext float %i.mn to double
  %i.mp = getelementptr inbounds nuw i8, ptr %switch.load483, i64 4
  %i.mq = load <2 x float>, ptr %i.mp, align 4, !tbaa !80
  %i.mr = getelementptr inbounds nuw i8, ptr %switch.load483, i64 12
  %i.ms = getelementptr inbounds nuw i8, ptr %switch.load483, i64 28
  %i.mt = load <4 x float>, ptr %i.mr, align 4, !tbaa !80 ; 3 uses
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.mv = fpext <2 x float> %i.mu to <2 x double>
  %i.mw = load <2 x float>, ptr %i.ms, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i181.i = zext nneg i32 %i.p to i64
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mt, <2 x i32> <i32 0, i32 5>
  %i.mz = shufflevector <4 x float> %i.mt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.na = shufflevector <2 x float> %i.mw, <2 x float> %i.mz, <2 x i32> <i32 1, i32 3>
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i180.i
  %indvars.iv.i182.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i193.i, %bb.r ] ; 4 uses
  %i.nb = shl nuw i64 %indvars.iv.i182.i, 33
  %sext.i183.i = ashr exact i64 %i.nb, 32         ; 2 uses
  %i.nc = or i64 %sext.i183.i, 2
  %i.nd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !82
  %.idx.i184.i = shl nuw nsw i64 %indvars.iv.i182.i, 4
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i184.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !82 ; 2 uses
  %i.ni = and i64 %sext.i183.i, -4
  %i.nj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !82
  %.idx27.i186.i = mul nuw nsw i64 %indvars.iv.i182.i, 24
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i186.i ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nk, i64 1
  %i.np = fptrunc <2 x double> %i.no to <2 x float>
  %i.nq = fadd <2 x float> %i.np, splat (float -5.000000e-01) ; 3 uses
  %i.nr = fmul <2 x float> %i.mq, %i.nq
  %i.ns = fpext <2 x float> %i.nr to <2 x double> ; 2 uses
  %i.nt = extractelement <2 x double> %i.ns, i64 0
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.nh, double %i.nt)
  %i.nv = extractelement <2 x double> %i.ns, i64 1
  %i.nw = fadd double %i.nu, %i.nv
  %i.nx = fptrunc double %i.nw to float           ; 2 uses
  %i.ny = fcmp ogt float %i.nx, 1.000000e+00
  %.sroa.speculated.i.i187.i = select i1 %i.ny, float 1.000000e+00, float %i.nx ; 2 uses
  %i.nz = fpext float %.sroa.speculated.i.i187.i to double
  %i.oa = fcmp ogt float %.sroa.speculated.i.i187.i, 0.000000e+00
  %.sroa.speculated14.i.i188.i = select i1 %i.oa, double %i.nz, double 0.000000e+00
  store double %.sroa.speculated14.i.i188.i, ptr %i.nm, align 8, !tbaa !82
  %i.ob = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x float> %i.my, %i.ob
  %i.od = fpext <2 x float> %i.oc to <2 x double>
  %i.oe = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.of, <2 x double> %i.od)
  %i.oh = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = fmul <2 x float> %i.na, %i.oh
  %i.oj = fpext <2 x float> %i.oi to <2 x double>
  %i.ok = fadd <2 x double> %i.og, %i.oj
  %i.ol = fptrunc <2 x double> %i.ok to <2 x float> ; 2 uses
  %i.om = fcmp ogt <2 x float> %i.ol, splat (float 1.000000e+00)
  %i.on = select <2 x i1> %i.om, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ol ; 2 uses
  %i.oo = fpext <2 x float> %i.on to <2 x double>
  %i.op = fcmp ogt <2 x float> %i.on, zeroinitializer
  %i.oq = select <2 x i1> %i.op, <2 x double> %i.oo, <2 x double> zeroinitializer
  store <2 x double> %i.oq, ptr %i.nl, align 8, !tbaa !82
  %indvars.iv.next.i193.i = add nuw nsw i64 %indvars.iv.i182.i, 1 ; 2 uses
  %exitcond.not.i194.i = icmp eq i64 %indvars.iv.next.i193.i, %wide.trip.count.i181.i
  br i1 %exitcond.not.i194.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.r, !llvm.loop !20

bb.s:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %switch.tableidx484 = add i8 %i.h, -5           ; 2 uses
  %i.or = icmp ult i8 %switch.tableidx484, 4
  br i1 %i.or, label %switch.lookup485, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup485:                                 ; preds = %bb.t
  %i.os = icmp sgt i32 %i.p, 0
  br i1 %i.os, label %.lr.ph.i196.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i196.i:                                    ; preds = %switch.lookup485
  %i.ot = zext nneg i8 %switch.tableidx484 to i64
  %switch.gep486 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ot
  %switch.load487 = load ptr, ptr %switch.gep486, align 8 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %switch.load487, i64 16
  %i.ov = load <4 x float>, ptr %switch.load487, align 16, !tbaa !80 ; 7 uses
  %i.ow = load <2 x float>, ptr %i.ou, align 16, !tbaa !80 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %switch.load487, i64 24
  %i.oy = load float, ptr %i.ox, align 8, !tbaa !80 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %switch.load487, i64 28
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !80 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %switch.load487, i64 32
end_hunk_0
begin_hunk_1_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %indvars.iv.i208.i.ph = phi i64 [ 0, %vector.memcheck377 ], [ 0, %.lr.ph.i206.i ], [ %n.vec386, %middle.block409 ]
  %i.zp = shufflevector <2 x float> %i.vm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> %i.vl, <2 x i32> <i32 0, i32 5>
  %i.zr = shufflevector <4 x float> %i.vl, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.zs = shufflevector <4 x float> %i.vl, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.zt = shufflevector <2 x float> %i.vm, <2 x float> %i.zs, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph383

scalar.ph383:                                     ; preds = %scalar.ph383.preheader, %scalar.ph383
  %indvars.iv.i208.i = phi i64 [ %indvars.iv.next.i214.i, %scalar.ph383 ], [ %indvars.iv.i208.i.ph, %scalar.ph383.preheader ] ; 2 uses
  %i.zu = mul nuw nsw i64 %indvars.iv.i208.i, 3   ; 2 uses
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.zu ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 2
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.zy = load i16, ptr %i.zw, align 2, !tbaa !79
  %i.zz = uitofp i16 %i.zy to float               ; 2 uses
  %i.aaa = load i16, ptr %i.zv, align 2, !tbaa !79
  %i.aab = load i16, ptr %i.zx, align 2, !tbaa !79
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.zu ; 2 uses
  %i.aad = insertelement <2 x i16> poison, i16 %i.aab, i64 0
  %i.aae = insertelement <2 x i16> %i.aad, i16 %i.aaa, i64 1
  %i.aaf = uitofp <2 x i16> %i.aae to <2 x float>
  %i.aag = fadd <2 x float> %i.aaf, splat (float -3.276750e+04) ; 4 uses
  %i.aah = extractelement <2 x float> %i.aag, i64 1
  %i.aai = fmul float %i.vg, %i.aah
  %i.aaj = tail call float @llvm.fmuladd.f32(float %i.ve, float %i.zz, float %i.aai)
  %i.aak = extractelement <2 x float> %i.aag, i64 0
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.aak, float %i.aaj) ; 2 uses
  %i.aam = fcmp ogt float %i.aal, 6.553500e+04
  %.sroa.speculated.i.i209.i = select i1 %i.aam, float 6.553500e+04, float %i.aal
  %i.aan = fptoui float %.sroa.speculated.i.i209.i to i16
  %i.aao = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aap = fmul <2 x float> %i.zq, %i.aao
  %i.aaq = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zr, <2 x float> %i.aar, <2 x float> %i.aap)
  %i.aat = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aau = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zt, <2 x float> %i.aat, <2 x float> %i.aas) ; 2 uses
  %i.aav = fcmp ogt <2 x float> %i.aau, splat (float 6.553500e+04)
  %i.aaw = select <2 x i1> %i.aav, <2 x float> splat (float 6.553500e+04), <2 x float> %i.aau
  %i.aax = fptoui <2 x float> %i.aaw to <2 x i16>
  store <2 x i16> %i.aax, ptr %i.aac, align 2
  %.sroa.5.0..sroa_idx.i213.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  store i16 %i.aan, ptr %.sroa.5.0..sroa_idx.i213.i, align 2
  %indvars.iv.next.i214.i = add nuw nsw i64 %indvars.iv.i208.i, 1 ; 2 uses
  %exitcond.not.i215.i = icmp eq i64 %indvars.iv.next.i214.i, %wide.trip.count.i207.i
  br i1 %exitcond.not.i215.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph383, !llvm.loop !30

bb.v:                                             ; preds = %bb.s
  %switch.tableidx492 = add i8 %i.h, -5           ; 2 uses
  %i.aay = icmp ult i8 %switch.tableidx492, 4
  br i1 %i.aay, label %switch.lookup493, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup493:                                 ; preds = %bb.v
  %i.aaz = icmp sgt i32 %i.p, 0
  br i1 %i.aaz, label %.lr.ph.i217.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i217.i:                                    ; preds = %switch.lookup493
  %i.aba = zext nneg i8 %switch.tableidx492 to i64
  %switch.gep494 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aba
  %switch.load495 = load ptr, ptr %switch.gep494, align 8 ; 5 uses
  %i.abb = load float, ptr %switch.load495, align 16, !tbaa !80 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %switch.load495, i64 4
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !80 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %switch.load495, i64 8
  %i.abf = load float, ptr %i.abe, align 8, !tbaa !80 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %switch.load495, i64 12
  %i.abh = getelementptr inbounds nuw i8, ptr %switch.load495, i64 28
  %i.abi = load <4 x float>, ptr %i.abg, align 4, !tbaa !80 ; 7 uses
  %i.abj = load <2 x float>, ptr %i.abh, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i218.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check349 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check349, label %scalar.ph348.preheader, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i217.i
  %i.abk = mul nuw nsw i64 %wide.trip.count.i218.i, 12 ; 2 uses
  %scevgep343 = getelementptr i8, ptr %3, i64 %i.abk
  %scevgep344 = getelementptr i8, ptr %2, i64 %i.abk
  %bound0345 = icmp ult ptr %3, %scevgep344
  %bound1346 = icmp ult ptr %2, %scevgep343
  %found.conflict347 = and i1 %bound0345, %bound1346
  br i1 %found.conflict347, label %scalar.ph348.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck342
  %n.vec351 = and i64 %wide.trip.count.i218.i, 2147483644 ; 3 uses
  %broadcast.splatinsert352 = insertelement <4 x float> poison, float %i.abb, i64 0
  %broadcast.splat353 = shufflevector <4 x float> %broadcast.splatinsert352, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <4 x float> poison, float %i.abd, i64 0
  %broadcast.splat355 = shufflevector <4 x float> %broadcast.splatinsert354, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <4 x float> poison, float %i.abf, i64 0
  %broadcast.splat357 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat359 = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat361 = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat363 = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat365 = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat367 = shufflevector <2 x float> %i.abj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat369 = shufflevector <2 x float> %i.abj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph350
  %index371 = phi i64 [ 0, %vector.ph350 ], [ %index.next373, %vector.body370 ] ; 5 uses
  %i.abl = mul nuw nsw i64 %index371, 3           ; 2 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abl ; 3 uses
  %.idx458 = mul nuw i64 %index371, 12
  %i.abn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx458 ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 12
  %.idx459 = mul nuw i64 %index371, 12
  %i.abp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx459 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %.idx460 = mul nuw i64 %index371, 12
  %i.abr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx460 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 36
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abm, i64 4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abp, i64 28
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 40
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abn, i64 20
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abr, i64 44
  %i.acb = load i32, ptr %i.abt, align 4, !tbaa !6, !alias.scope !89
  %i.acc = load i32, ptr %i.abu, align 4, !tbaa !6, !alias.scope !89
  %i.acd = load i32, ptr %i.abv, align 4, !tbaa !6, !alias.scope !89
  %i.ace = load i32, ptr %i.abw, align 4, !tbaa !6, !alias.scope !89
  %i.acf = insertelement <4 x i32> poison, i32 %i.acb, i64 0
  %i.acg = insertelement <4 x i32> %i.acf, i32 %i.acc, i64 1
  %i.ach = insertelement <4 x i32> %i.acg, i32 %i.acd, i64 2
  %i.aci = insertelement <4 x i32> %i.ach, i32 %i.ace, i64 3
  %i.acj = uitofp <4 x i32> %i.aci to <4 x float> ; 3 uses
  %i.ack = load i32, ptr %i.abm, align 4, !tbaa !6, !alias.scope !89
  %i.acl = load i32, ptr %i.abo, align 4, !tbaa !6, !alias.scope !89
  %i.acm = load i32, ptr %i.abq, align 4, !tbaa !6, !alias.scope !89
  %i.acn = load i32, ptr %i.abs, align 4, !tbaa !6, !alias.scope !89
  %i.aco = insertelement <4 x i32> poison, i32 %i.ack, i64 0
  %i.acp = insertelement <4 x i32> %i.aco, i32 %i.acl, i64 1
  %i.acq = insertelement <4 x i32> %i.acp, i32 %i.acm, i64 2
  %i.acr = insertelement <4 x i32> %i.acq, i32 %i.acn, i64 3
  %i.acs = uitofp <4 x i32> %i.acr to <4 x float>
  %i.act = fadd nnan <4 x float> %i.acs, splat (float f0xCF000000) ; 3 uses
  %i.acu = fmul <4 x float> %broadcast.splat355, %i.act
  %i.acv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat353, <4 x float> %i.acj, <4 x float> %i.acu)
  %i.acw = load i32, ptr %i.abx, align 4, !tbaa !6, !alias.scope !89
  %i.acx = load i32, ptr %i.aby, align 4, !tbaa !6, !alias.scope !89
  %i.acy = load i32, ptr %i.abz, align 4, !tbaa !6, !alias.scope !89
  %i.acz = load i32, ptr %i.aca, align 4, !tbaa !6, !alias.scope !89
  %i.ada = insertelement <4 x i32> poison, i32 %i.acw, i64 0
  %i.adb = insertelement <4 x i32> %i.ada, i32 %i.acx, i64 1
  %i.adc = insertelement <4 x i32> %i.adb, i32 %i.acy, i64 2
  %i.add = insertelement <4 x i32> %i.adc, i32 %i.acz, i64 3
  %i.ade = uitofp <4 x i32> %i.add to <4 x float>
  %i.adf = fadd <4 x float> %i.ade, splat (float f0xCF000000) ; 3 uses
  %i.adg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat357, <4 x float> %i.adf, <4 x float> %i.acv) ; 2 uses
  %i.adh = fcmp ogt <4 x float> %i.adg, splat (float f0x4F800000)
  %i.adi = select <4 x i1> %i.adh, <4 x float> splat (float f0x4F800000), <4 x float> %i.adg
  %i.adj = fptoui <4 x float> %i.adi to <4 x i32>
  %i.adk = fmul <4 x float> %broadcast.splat361, %i.act
  %i.adl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat359, <4 x float> %i.acj, <4 x float> %i.adk)
  %i.adm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat363, <4 x float> %i.adf, <4 x float> %i.adl) ; 2 uses
  %i.adn = fmul <4 x float> %broadcast.splat367, %i.act
  %i.ado = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat365, <4 x float> %i.acj, <4 x float> %i.adn)
  %i.adp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat369, <4 x float> %i.adf, <4 x float> %i.ado) ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abl
  %i.adr = shufflevector <4 x float> %i.adp, <4 x float> %i.adm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ads = fcmp ogt <8 x float> %i.adr, splat (float f0x4F800000)
  %i.adt = shufflevector <4 x float> %i.adp, <4 x float> %i.adm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adu = select <8 x i1> %i.ads, <8 x float> splat (float f0x4F800000), <8 x float> %i.adt
  %i.adv = fptoui <8 x float> %i.adu to <8 x i32>
  %i.adw = shufflevector <4 x i32> %i.adj, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec372 = shufflevector <8 x i32> %i.adv, <8 x i32> %i.adw, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec372, ptr %i.adq, align 4, !alias.scope !90, !noalias !89
  %index.next373 = add nuw i64 %index371, 4       ; 2 uses
  %i.adx = icmp eq i64 %index.next373, %n.vec351
  br i1 %i.adx, label %middle.block374, label %vector.body370, !llvm.loop !34

middle.block374:                                  ; preds = %vector.body370
  %cmp.n375 = icmp eq i64 %n.vec351, %wide.trip.count.i218.i
  br i1 %cmp.n375, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph348.preheader

scalar.ph348.preheader:                           ; preds = %vector.memcheck342, %.lr.ph.i217.i, %middle.block374
  %indvars.iv.i219.i.ph = phi i64 [ 0, %vector.memcheck342 ], [ 0, %.lr.ph.i217.i ], [ %n.vec351, %middle.block374 ]
  %i.ady = shufflevector <2 x float> %i.abj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> %i.abi, <2 x i32> <i32 0, i32 5>
  %i.aea = shufflevector <4 x float> %i.abi, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aeb = shufflevector <4 x float> %i.abi, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aec = shufflevector <2 x float> %i.abj, <2 x float> %i.aeb, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph348

scalar.ph348:                                     ; preds = %scalar.ph348.preheader, %scalar.ph348
  %indvars.iv.i219.i = phi i64 [ %indvars.iv.next.i225.i, %scalar.ph348 ], [ %indvars.iv.i219.i.ph, %scalar.ph348.preheader ] ; 2 uses
  %i.aed = mul nuw nsw i64 %indvars.iv.i219.i, 3  ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aed ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeh = load i32, ptr %i.aef, align 4, !tbaa !6
  %i.aei = uitofp i32 %i.aeh to float             ; 2 uses
  %i.aej = load i32, ptr %i.aee, align 4, !tbaa !6
  %i.aek = load i32, ptr %i.aeg, align 4, !tbaa !6
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aed ; 2 uses
  %i.aem = uitofp i32 %i.aej to float
  %i.aen = uitofp i32 %i.aek to float
  %11 = insertelement <2 x float> poison, float %i.aen, i64 0
  %12 = insertelement <2 x float> %11, float %i.aem, i64 1
  %13 = fadd <2 x float> %12, splat (float f0xCF000000) ; 4 uses
  %14 = extractelement <2 x float> %13, i64 1
  %i.aeo = fmul float %i.abd, %14
  %i.aep = tail call float @llvm.fmuladd.f32(float %i.abb, float %i.aei, float %i.aeo)
  %15 = extractelement <2 x float> %13, i64 0
  %i.aeq = tail call float @llvm.fmuladd.f32(float %i.abf, float %15, float %i.aep) ; 2 uses
  %i.aer = fcmp ogt float %i.aeq, f0x4F800000
  %.sroa.speculated.i.i220.i = select i1 %i.aer, float f0x4F800000, float %i.aeq
  %i.aes = fptoui float %.sroa.speculated.i.i220.i to i32
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aet = fmul <2 x float> %i.adz, %16
  %i.aeu = insertelement <2 x float> poison, float %i.aei, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aea, <2 x float> %i.aev, <2 x float> %i.aet)
  %i.aex = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aec, <2 x float> %i.aex, <2 x float> %i.aew) ; 2 uses
  %i.aez = fcmp ogt <2 x float> %i.aey, splat (float f0x4F800000)
  %i.afa = select <2 x i1> %i.aez, <2 x float> splat (float f0x4F800000), <2 x float> %i.aey
  %i.afb = fptoui <2 x float> %i.afa to <2 x i32>
  store <2 x i32> %i.afb, ptr %i.ael, align 4
  %.sroa.5.0..sroa_idx.i224.i = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i32 %i.aes, ptr %.sroa.5.0..sroa_idx.i224.i, align 4
  %indvars.iv.next.i225.i = add nuw nsw i64 %indvars.iv.i219.i, 1 ; 2 uses
  %exitcond.not.i226.i = icmp eq i64 %indvars.iv.next.i225.i, %wide.trip.count.i218.i
  br i1 %exitcond.not.i226.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph348, !llvm.loop !35

bb.w:                                             ; preds = %bb.s
  %switch.tableidx496 = add i8 %i.h, -5           ; 2 uses
  %i.afc = icmp ult i8 %switch.tableidx496, 4
  br i1 %i.afc, label %switch.lookup497, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup497:                                 ; preds = %bb.w
  %i.afd = icmp sgt i32 %i.p, 0
  br i1 %i.afd, label %.lr.ph.i228.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i228.i:                                    ; preds = %switch.lookup497
  %i.afe = zext nneg i8 %switch.tableidx496 to i64
  %switch.gep498 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.afe
  %switch.load499 = load ptr, ptr %switch.gep498, align 8 ; 5 uses
  %i.aff = load float, ptr %switch.load499, align 16, !tbaa !80 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %switch.load499, i64 4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !80 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %switch.load499, i64 8
  %i.afj = load float, ptr %i.afi, align 8, !tbaa !80 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %switch.load499, i64 12
  %i.afl = getelementptr inbounds nuw i8, ptr %switch.load499, i64 28
  %i.afm = load <4 x float>, ptr %i.afk, align 4, !tbaa !80 ; 7 uses
  %i.afn = load <2 x float>, ptr %i.afl, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i229.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check314 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck307

vector.memcheck307:                               ; preds = %.lr.ph.i228.i
  %i.afo = mul nuw nsw i64 %wide.trip.count.i229.i, 12 ; 2 uses
  %scevgep308 = getelementptr i8, ptr %3, i64 %i.afo
  %scevgep309 = getelementptr i8, ptr %2, i64 %i.afo
  %bound0310 = icmp ult ptr %3, %scevgep309
  %bound1311 = icmp ult ptr %2, %scevgep308
  %found.conflict312 = and i1 %bound0310, %bound1311
  br i1 %found.conflict312, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck307
  %n.vec316 = and i64 %wide.trip.count.i229.i, 2147483644 ; 3 uses
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.aff, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.afh, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.afj, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat324 = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat326 = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat328 = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat330 = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat332 = shufflevector <2 x float> %i.afn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat334 = shufflevector <2 x float> %i.afn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph315
  %index336 = phi i64 [ 0, %vector.ph315 ], [ %index.next338, %vector.body335 ] ; 5 uses
  %i.afp = mul nuw nsw i64 %index336, 3           ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afp ; 3 uses
  %.idx455 = mul nuw i64 %index336, 12
  %i.afr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx455 ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 12
  %.idx456 = mul nuw i64 %index336, 12
  %i.aft = getelementptr inbounds nuw i8, ptr %2, i64 %.idx456 ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 24
  %.idx457 = mul nuw i64 %index336, 12
  %i.afv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx457 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 36
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aft, i64 28
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afv, i64 40
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afr, i64 20
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aft, i64 32
  %i.age = getelementptr inbounds nuw i8, ptr %i.afv, i64 44
  %i.agf = load float, ptr %i.afx, align 4, !tbaa !80, !alias.scope !91
  %i.agg = load float, ptr %i.afy, align 4, !tbaa !80, !alias.scope !91
  %i.agh = load float, ptr %i.afz, align 4, !tbaa !80, !alias.scope !91
  %i.agi = load float, ptr %i.aga, align 4, !tbaa !80, !alias.scope !91
  %i.agj = insertelement <4 x float> poison, float %i.agf, i64 0
  %i.agk = insertelement <4 x float> %i.agj, float %i.agg, i64 1
  %i.agl = insertelement <4 x float> %i.agk, float %i.agh, i64 2
  %i.agm = insertelement <4 x float> %i.agl, float %i.agi, i64 3 ; 3 uses
  %i.agn = load float, ptr %i.afq, align 4, !tbaa !80, !alias.scope !91
  %i.ago = load float, ptr %i.afs, align 4, !tbaa !80, !alias.scope !91
  %i.agp = load float, ptr %i.afu, align 4, !tbaa !80, !alias.scope !91
  %i.agq = load float, ptr %i.afw, align 4, !tbaa !80, !alias.scope !91
  %i.agr = insertelement <4 x float> poison, float %i.agn, i64 0
  %i.ags = insertelement <4 x float> %i.agr, float %i.ago, i64 1
  %i.agt = insertelement <4 x float> %i.ags, float %i.agp, i64 2
  %i.agu = insertelement <4 x float> %i.agt, float %i.agq, i64 3
  %i.agv = fadd <4 x float> %i.agu, splat (float -5.000000e-01) ; 3 uses
  %i.agw = fmul <4 x float> %broadcast.splat320, %i.agv
  %i.agx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat318, <4 x float> %i.agm, <4 x float> %i.agw)
  %i.agy = load float, ptr %i.agb, align 4, !tbaa !80, !alias.scope !91
  %i.agz = load float, ptr %i.agc, align 4, !tbaa !80, !alias.scope !91
  %i.aha = load float, ptr %i.agd, align 4, !tbaa !80, !alias.scope !91
  %i.ahb = load float, ptr %i.age, align 4, !tbaa !80, !alias.scope !91
  %i.ahc = insertelement <4 x float> poison, float %i.agy, i64 0
  %i.ahd = insertelement <4 x float> %i.ahc, float %i.agz, i64 1
  %i.ahe = insertelement <4 x float> %i.ahd, float %i.aha, i64 2
  %i.ahf = insertelement <4 x float> %i.ahe, float %i.ahb, i64 3
  %i.ahg = fadd <4 x float> %i.ahf, splat (float -5.000000e-01) ; 3 uses
  %i.ahh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.ahg, <4 x float> %i.agx) ; 2 uses
  %i.ahi = fcmp ogt <4 x float> %i.ahh, splat (float 1.000000e+00)
  %i.ahj = select <4 x i1> %i.ahi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ahh ; 2 uses
  %i.ahk = fcmp ogt <4 x float> %i.ahj, zeroinitializer
  %i.ahl = select <4 x i1> %i.ahk, <4 x float> %i.ahj, <4 x float> zeroinitializer
  %i.ahm = fmul <4 x float> %broadcast.splat326, %i.agv
  %i.ahn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.agm, <4 x float> %i.ahm)
  %i.aho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.ahg, <4 x float> %i.ahn) ; 2 uses
  %i.ahp = fcmp ogt <4 x float> %i.aho, splat (float 1.000000e+00)
  %i.ahq = select <4 x i1> %i.ahp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aho ; 2 uses
  %i.ahr = fmul <4 x float> %broadcast.splat332, %i.agv
  %i.ahs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.agm, <4 x float> %i.ahr)
  %i.aht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat334, <4 x float> %i.ahg, <4 x float> %i.ahs) ; 2 uses
  %i.ahu = fcmp ogt <4 x float> %i.aht, splat (float 1.000000e+00)
  %i.ahv = select <4 x i1> %i.ahu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aht ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afp
  %i.ahx = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahy = fcmp ogt <8 x float> %i.ahx, zeroinitializer
  %i.ahz = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aia = select <8 x i1> %i.ahy, <8 x float> %i.ahz, <8 x float> zeroinitializer
  %i.aib = shufflevector <4 x float> %i.ahl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec337 = shufflevector <8 x float> %i.aia, <8 x float> %i.aib, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec337, ptr %i.ahw, align 4, !alias.scope !92, !noalias !91
  %index.next338 = add nuw i64 %index336, 4       ; 2 uses
  %i.aic = icmp eq i64 %index.next338, %n.vec316
  br i1 %i.aic, label %middle.block339, label %vector.body335, !llvm.loop !39

middle.block339:                                  ; preds = %vector.body335
  %cmp.n340 = icmp eq i64 %n.vec316, %wide.trip.count.i229.i
  br i1 %cmp.n340, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck307, %.lr.ph.i228.i, %middle.block339
  %indvars.iv.i230.i.ph = phi i64 [ 0, %vector.memcheck307 ], [ 0, %.lr.ph.i228.i ], [ %n.vec316, %middle.block339 ]
  %i.aid = shufflevector <2 x float> %i.afn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> %i.afm, <2 x i32> <i32 0, i32 5>
  %i.aif = shufflevector <4 x float> %i.afm, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aig = shufflevector <4 x float> %i.afm, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aih = shufflevector <2 x float> %i.afn, <2 x float> %i.aig, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.preheader, %scalar.ph313
  %indvars.iv.i230.i = phi i64 [ %indvars.iv.next.i239.i, %scalar.ph313 ], [ %indvars.iv.i230.i.ph, %scalar.ph313.preheader ] ; 2 uses
  %i.aii = mul nuw nsw i64 %indvars.iv.i230.i, 3  ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aii ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.aim = load float, ptr %i.aik, align 4, !tbaa !80 ; 2 uses
  %i.ain = load float, ptr %i.aij, align 4, !tbaa !80
  %i.aio = load float, ptr %i.ail, align 4, !tbaa !80
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aii ; 2 uses
  %i.aiq = insertelement <2 x float> poison, float %i.aio, i64 0
  %i.air = insertelement <2 x float> %i.aiq, float %i.ain, i64 1
  %i.ais = fadd <2 x float> %i.air, splat (float -5.000000e-01) ; 4 uses
  %i.ait = extractelement <2 x float> %i.ais, i64 1
  %i.aiu = fmul float %i.afh, %i.ait
  %i.aiv = tail call float @llvm.fmuladd.f32(float %i.aff, float %i.aim, float %i.aiu)
  %i.aiw = extractelement <2 x float> %i.ais, i64 0
  %i.aix = tail call float @llvm.fmuladd.f32(float %i.afj, float %i.aiw, float %i.aiv) ; 2 uses
  %i.aiy = fcmp ogt float %i.aix, 1.000000e+00
  %.sroa.speculated.i.i231.i = select i1 %i.aiy, float 1.000000e+00, float %i.aix ; 2 uses
  %i.aiz = fcmp ogt float %.sroa.speculated.i.i231.i, 0.000000e+00
  %.sroa.speculated14.i.i232.i = select i1 %i.aiz, float %.sroa.speculated.i.i231.i, float 0.000000e+00
  %i.aja = shufflevector <2 x float> %i.ais, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ajb = fmul <2 x float> %i.aie, %i.aja
  %i.ajc = insertelement <2 x float> poison, float %i.aim, i64 0
  %i.ajd = shufflevector <2 x float> %i.ajc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aje = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aif, <2 x float> %i.ajd, <2 x float> %i.ajb)
  %i.ajf = shufflevector <2 x float> %i.ais, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aih, <2 x float> %i.ajf, <2 x float> %i.aje) ; 2 uses
  %i.ajh = fcmp ogt <2 x float> %i.ajg, splat (float 1.000000e+00)
  %i.aji = select <2 x i1> %i.ajh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ajg ; 2 uses
  %i.ajj = fcmp ogt <2 x float> %i.aji, zeroinitializer
  %i.ajk = select <2 x i1> %i.ajj, <2 x float> %i.aji, <2 x float> zeroinitializer
  store <2 x float> %i.ajk, ptr %i.aip, align 4
  %.sroa.5.0..sroa_idx.i238.i = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  store float %.sroa.speculated14.i.i232.i, ptr %.sroa.5.0..sroa_idx.i238.i, align 4
  %indvars.iv.next.i239.i = add nuw nsw i64 %indvars.iv.i230.i, 1 ; 2 uses
  %exitcond.not.i240.i = icmp eq i64 %indvars.iv.next.i239.i, %wide.trip.count.i229.i
  br i1 %exitcond.not.i240.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph313, !llvm.loop !40

bb.x:                                             ; preds = %bb.s
  %switch.tableidx500 = add i8 %i.h, -5           ; 2 uses
  %i.ajl = icmp ult i8 %switch.tableidx500, 4
  br i1 %i.ajl, label %switch.lookup501, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup501:                                 ; preds = %bb.x
  %i.ajm = icmp sgt i32 %i.p, 0
  br i1 %i.ajm, label %.lr.ph.i242.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

end_hunk_1
begin_hunk_2_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.aoo = shufflevector <4 x float> %i.aof, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aop = shufflevector <2 x float> %i.aog, <2 x float> %i.aoo, <2 x i32> <i32 1, i32 3>
  %i.aoq = shufflevector <2 x float> %i.aog, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aor = shufflevector <4 x float> %i.aoq, <4 x float> %i.aof, <2 x i32> <i32 0, i32 5>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i256.i
  %indvars.iv.i258.i = phi i64 [ 0, %.lr.ph.i256.i ], [ %indvars.iv.next.i262.i, %bb.aa ] ; 5 uses
  %i.aos = or i64 %indvars.iv.i258.i, 1
  %i.aot = mul i64 %i.aos, 3
  %i.aou = and i64 %i.aot, 4294967295
  %i.aov = getelementptr inbounds nuw i8, ptr %2, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !77
  %i.aox = mul nuw nsw i64 %indvars.iv.i258.i, 3
  %i.aoy = getelementptr inbounds nuw i8, ptr %2, i64 %i.aox ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 1
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !77
  %i.apb = and i64 %indvars.iv.i258.i, 2147483646
  %i.apc = mul nuw nsw i64 %i.apb, 3
  %i.apd = and i64 %i.apc, 4294967294
  %i.ape = getelementptr inbounds nuw i8, ptr %2, i64 %i.apd
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !77
  %i.apg = shl nuw nsw i64 %indvars.iv.i258.i, 2
  %i.aph = getelementptr inbounds nuw i8, ptr %3, i64 %i.apg ; 4 uses
  %i.api = uitofp i8 %i.apa to float              ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 2
  %i.apk = insertelement <2 x i8> poison, i8 %i.apf, i64 0
  %i.apl = insertelement <2 x i8> %i.apk, i8 %i.aow, i64 1
  %i.apm = uitofp <2 x i8> %i.apl to <2 x float>
  %i.apn = fadd <2 x float> %i.apm, splat (float -1.275000e+02) ; 4 uses
  %i.apo = shufflevector <2 x float> %i.apn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.app = fmul <2 x float> %i.aor, %i.apo
  %i.apq = insertelement <2 x float> poison, float %i.api, i64 0
  %i.apr = shufflevector <2 x float> %i.apq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aps = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aon, <2 x float> %i.apr, <2 x float> %i.app)
  %i.apt = shufflevector <2 x float> %i.apn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aop, <2 x float> %i.apt, <2 x float> %i.aps) ; 3 uses
  %i.apv = fcmp ogt <2 x float> %i.apu, splat (float 2.550000e+02) ; 2 uses
  %i.apw = extractelement <2 x i1> %i.apv, i64 1
  %i.apx = extractelement <2 x float> %i.apu, i64 1
  %i.apy = fptoui float %i.apx to i8
  %i.apz = select i1 %i.apw, i8 -1, i8 %i.apy
  store i8 %i.apz, ptr %i.apj, align 1, !tbaa !77
  %i.aqa = extractelement <2 x i1> %i.apv, i64 0
  %i.aqb = extractelement <2 x float> %i.apu, i64 0
  %i.aqc = fptoui float %i.aqb to i8
  %i.aqd = select i1 %i.aqa, i8 -1, i8 %i.aqc
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aph, i64 1
  store i8 %i.aqd, ptr %i.aqe, align 1, !tbaa !77
  %i.aqf = extractelement <2 x float> %i.apn, i64 1
  %i.aqg = fmul float %i.aok, %i.aqf
  %i.aqh = tail call float @llvm.fmuladd.f32(float %i.aoi, float %i.api, float %i.aqg)
  %i.aqi = extractelement <2 x float> %i.apn, i64 0
  %i.aqj = tail call float @llvm.fmuladd.f32(float %i.aom, float %i.aqi, float %i.aqh) ; 2 uses
  %i.aqk = fcmp ogt float %i.aqj, 2.550000e+02
  %.sroa.speculated.2.i.i261.i = select i1 %i.aqk, float 2.550000e+02, float %i.aqj
  %i.aql = fptoui float %.sroa.speculated.2.i.i261.i to i8
  store i8 %i.aql, ptr %i.aph, align 1, !tbaa !77
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aoy, i64 2
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !77
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aph, i64 3
  store i8 %i.aqn, ptr %i.aqo, align 1, !tbaa !77
  %indvars.iv.next.i262.i = add nuw nsw i64 %indvars.iv.i258.i, 1 ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %indvars.iv.next.i262.i, %wide.trip.count.i257.i
  br i1 %exitcond.not.i263.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.aa, !llvm.loop !46

bb.ab:                                            ; preds = %bb.y
  %switch.tableidx508 = add i8 %i.h, -5           ; 2 uses
  %i.aqp = icmp ult i8 %switch.tableidx508, 4
  br i1 %i.aqp, label %switch.lookup509, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup509:                                 ; preds = %bb.ab
  %i.aqq = icmp sgt i32 %i.p, 0
  br i1 %i.aqq, label %.lr.ph.i265.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i265.i:                                    ; preds = %switch.lookup509
  %i.aqr = zext nneg i8 %switch.tableidx508 to i64
  %switch.gep510 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aqr
  %switch.load511 = load ptr, ptr %switch.gep510, align 8 ; 5 uses
  %i.aqs = load float, ptr %switch.load511, align 16, !tbaa !80
  %i.aqt = getelementptr inbounds nuw i8, ptr %switch.load511, i64 4
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !80
  %i.aqv = getelementptr inbounds nuw i8, ptr %switch.load511, i64 8
  %i.aqw = load float, ptr %i.aqv, align 8, !tbaa !80
  %i.aqx = getelementptr inbounds nuw i8, ptr %switch.load511, i64 12
  %i.aqy = getelementptr inbounds nuw i8, ptr %switch.load511, i64 28
  %i.aqz = load <4 x float>, ptr %i.aqx, align 4, !tbaa !80 ; 3 uses
  %i.ara = load <2 x float>, ptr %i.aqy, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i266.i = zext nneg i32 %i.p to i64
  %i.arb = shufflevector <4 x float> %i.aqz, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.arc = shufflevector <4 x float> %i.aqz, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ard = shufflevector <2 x float> %i.ara, <2 x float> %i.arc, <2 x i32> <i32 1, i32 3>
  %i.are = shufflevector <2 x float> %i.ara, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.arf = shufflevector <4 x float> %i.are, <4 x float> %i.aqz, <2 x i32> <i32 0, i32 5>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i265.i
  %indvars.iv.i267.i = phi i64 [ 0, %.lr.ph.i265.i ], [ %indvars.iv.next.i272.i, %bb.ac ] ; 5 uses
  %i.arg = or i64 %indvars.iv.i267.i, 1
  %i.arh = mul i64 %i.arg, 3
  %i.ari = and i64 %i.arh, 4294967295
  %i.arj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ari
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !79
  %.idx.i268.i = mul nuw nsw i64 %indvars.iv.i267.i, 6
  %i.arl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i268.i ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 2
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !79
  %i.aro = and i64 %indvars.iv.i267.i, 2147483646
  %i.arp = mul nuw nsw i64 %i.aro, 3
  %i.arq = and i64 %i.arp, 4294967294
  %i.arr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.arq
  %i.ars = load i16, ptr %i.arr, align 2, !tbaa !79
  %.idx30.i.i = shl nuw nsw i64 %indvars.iv.i267.i, 3
  %i.art = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i.i ; 3 uses
  %i.aru = uitofp i16 %i.arn to float             ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 4
  %i.arw = insertelement <2 x i16> poison, i16 %i.ars, i64 0
  %i.arx = insertelement <2 x i16> %i.arw, i16 %i.ark, i64 1
  %i.ary = uitofp <2 x i16> %i.arx to <2 x float>
  %i.arz = fadd <2 x float> %i.ary, splat (float -3.276750e+04) ; 4 uses
  %i.asa = extractelement <2 x float> %i.arz, i64 1
  %i.asb = fmul float %i.aqu, %i.asa
  %i.asc = tail call float @llvm.fmuladd.f32(float %i.aqs, float %i.aru, float %i.asb)
  %i.asd = extractelement <2 x float> %i.arz, i64 0
  %i.ase = tail call float @llvm.fmuladd.f32(float %i.aqw, float %i.asd, float %i.asc) ; 2 uses
  %i.asf = fcmp ogt float %i.ase, 6.553500e+04
  %.sroa.speculated.i.i269.i = select i1 %i.asf, float 6.553500e+04, float %i.ase
  %i.asg = fptoui float %.sroa.speculated.i.i269.i to i16
  store i16 %i.asg, ptr %i.arv, align 2, !tbaa !79
  %i.ash = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asi = fmul <2 x float> %i.arf, %i.ash
  %i.asj = insertelement <2 x float> poison, float %i.aru, i64 0
  %i.ask = shufflevector <2 x float> %i.asj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arb, <2 x float> %i.ask, <2 x float> %i.asi)
  %i.asm = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ard, <2 x float> %i.asm, <2 x float> %i.asl) ; 2 uses
  %i.aso = fcmp ogt <2 x float> %i.asn, splat (float 6.553500e+04)
  %i.asp = select <2 x i1> %i.aso, <2 x float> splat (float 6.553500e+04), <2 x float> %i.asn
  %i.asq = fptoui <2 x float> %i.asp to <2 x i16>
  store <2 x i16> %i.asq, ptr %i.art, align 2, !tbaa !79
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arl, i64 4
  %i.ass = load i16, ptr %i.asr, align 2, !tbaa !79
  %i.ast = getelementptr inbounds nuw i8, ptr %i.art, i64 6
  store i16 %i.ass, ptr %i.ast, align 2, !tbaa !79
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i267.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i266.i
  br i1 %exitcond.not.i273.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ac, !llvm.loop !47

bb.ad:                                            ; preds = %bb.y
  %switch.tableidx512 = add i8 %i.h, -5           ; 2 uses
  %i.asu = icmp ult i8 %switch.tableidx512, 4
  br i1 %i.asu, label %switch.lookup513, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup513:                                 ; preds = %bb.ad
  %i.asv = icmp sgt i32 %i.p, 0
  br i1 %i.asv, label %.lr.ph.i275.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i275.i:                                    ; preds = %switch.lookup513
  %i.asw = zext nneg i8 %switch.tableidx512 to i64
  %switch.gep514 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.asw
  %switch.load515 = load ptr, ptr %switch.gep514, align 8 ; 5 uses
  %i.asx = load float, ptr %switch.load515, align 16, !tbaa !80
  %i.asy = getelementptr inbounds nuw i8, ptr %switch.load515, i64 4
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !80
  %i.ata = getelementptr inbounds nuw i8, ptr %switch.load515, i64 8
  %i.atb = load float, ptr %i.ata, align 8, !tbaa !80
  %i.atc = getelementptr inbounds nuw i8, ptr %switch.load515, i64 12
  %i.atd = getelementptr inbounds nuw i8, ptr %switch.load515, i64 28
  %i.ate = load <4 x float>, ptr %i.atc, align 4, !tbaa !80 ; 3 uses
  %i.atf = load <2 x float>, ptr %i.atd, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i276.i = zext nneg i32 %i.p to i64
  %i.atg = shufflevector <4 x float> %i.ate, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ath = shufflevector <4 x float> %i.ate, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ati = shufflevector <2 x float> %i.atf, <2 x float> %i.ath, <2 x i32> <i32 1, i32 3>
  %i.atj = shufflevector <2 x float> %i.atf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atk = shufflevector <4 x float> %i.atj, <4 x float> %i.ate, <2 x i32> <i32 0, i32 5>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i275.i
  %indvars.iv.i277.i = phi i64 [ 0, %.lr.ph.i275.i ], [ %indvars.iv.next.i283.i, %bb.ae ] ; 5 uses
  %i.atl = or i64 %indvars.iv.i277.i, 1
  %i.atm = mul i64 %i.atl, 3
  %i.atn = and i64 %i.atm, 4294967295
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.atn
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !6
  %.idx.i278.i = mul nuw nsw i64 %indvars.iv.i277.i, 12
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i278.i ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 4
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !6
  %i.att = and i64 %indvars.iv.i277.i, 2147483646
  %i.atu = mul nuw nsw i64 %i.att, 3
  %i.atv = and i64 %i.atu, 4294967294
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.atv
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !6
  %.idx30.i279.i = shl nuw nsw i64 %indvars.iv.i277.i, 4
  %i.aty = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i279.i ; 3 uses
  %i.atz = uitofp i32 %i.ats to float             ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.aub = uitofp i32 %i.atp to float
  %i.auc = uitofp i32 %i.atx to float
  %17 = insertelement <2 x float> poison, float %i.auc, i64 0
  %18 = insertelement <2 x float> %17, float %i.aub, i64 1
  %19 = fadd <2 x float> %18, splat (float f0xCF000000) ; 4 uses
  %20 = extractelement <2 x float> %19, i64 1
  %i.aud = fmul float %i.asz, %20
  %i.aue = tail call float @llvm.fmuladd.f32(float %i.asx, float %i.atz, float %i.aud)
  %21 = extractelement <2 x float> %19, i64 0
  %i.auf = tail call float @llvm.fmuladd.f32(float %i.atb, float %21, float %i.aue) ; 2 uses
  %i.aug = fcmp ogt float %i.auf, f0x4F800000
  %.sroa.speculated.i.i280.i = select i1 %i.aug, float f0x4F800000, float %i.auf
  %i.auh = fptoui float %.sroa.speculated.i.i280.i to i32
  store i32 %i.auh, ptr %i.aua, align 4, !tbaa !6
  %22 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aui = fmul <2 x float> %i.atk, %22
  %i.auj = insertelement <2 x float> poison, float %i.atz, i64 0
  %i.auk = shufflevector <2 x float> %i.auj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aul = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> %i.auk, <2 x float> %i.aui)
  %i.aum = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aun = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ati, <2 x float> %i.aum, <2 x float> %i.aul) ; 2 uses
  %i.auo = fcmp ogt <2 x float> %i.aun, splat (float f0x4F800000)
  %i.aup = select <2 x i1> %i.auo, <2 x float> splat (float f0x4F800000), <2 x float> %i.aun
  %i.auq = fptoui <2 x float> %i.aup to <2 x i32>
  store <2 x i32> %i.auq, ptr %i.aty, align 4, !tbaa !6
  %i.aur = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !6
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aty, i64 12
  store i32 %i.aus, ptr %i.aut, align 4, !tbaa !6
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %wide.trip.count.i276.i
  br i1 %exitcond.not.i284.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ae, !llvm.loop !48

bb.af:                                            ; preds = %bb.y
  %switch.tableidx516 = add i8 %i.h, -5           ; 2 uses
  %i.auu = icmp ult i8 %switch.tableidx516, 4
  br i1 %i.auu, label %switch.lookup517, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup517:                                 ; preds = %bb.af
  %i.auv = icmp sgt i32 %i.p, 0
  br i1 %i.auv, label %.lr.ph.i286.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i286.i:                                    ; preds = %switch.lookup517
  %i.auw = zext nneg i8 %switch.tableidx516 to i64
  %switch.gep518 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.auw
  %switch.load519 = load ptr, ptr %switch.gep518, align 8 ; 5 uses
  %i.aux = load float, ptr %switch.load519, align 16, !tbaa !80
  %i.auy = getelementptr inbounds nuw i8, ptr %switch.load519, i64 4
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !80
  %i.ava = getelementptr inbounds nuw i8, ptr %switch.load519, i64 8
  %i.avb = load float, ptr %i.ava, align 8, !tbaa !80
  %i.avc = getelementptr inbounds nuw i8, ptr %switch.load519, i64 12
  %i.avd = getelementptr inbounds nuw i8, ptr %switch.load519, i64 28
  %i.ave = load <4 x float>, ptr %i.avc, align 4, !tbaa !80 ; 3 uses
  %i.avf = load <2 x float>, ptr %i.avd, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i287.i = zext nneg i32 %i.p to i64
  %i.avg = shufflevector <4 x float> %i.ave, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.avh = shufflevector <4 x float> %i.ave, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.avi = shufflevector <2 x float> %i.avf, <2 x float> %i.avh, <2 x i32> <i32 1, i32 3>
  %i.avj = shufflevector <2 x float> %i.avf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.avk = shufflevector <4 x float> %i.avj, <4 x float> %i.ave, <2 x i32> <i32 0, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i286.i
  %indvars.iv.i288.i = phi i64 [ 0, %.lr.ph.i286.i ], [ %indvars.iv.next.i297.i, %bb.ag ] ; 5 uses
  %i.avl = or i64 %indvars.iv.i288.i, 1
  %i.avm = mul i64 %i.avl, 3
  %i.avn = and i64 %i.avm, 4294967295
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.avn
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !80
  %.idx.i289.i = mul nuw nsw i64 %indvars.iv.i288.i, 12
  %i.avq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i289.i ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !80 ; 2 uses
  %i.avt = and i64 %indvars.iv.i288.i, 2147483646
  %i.avu = mul nuw nsw i64 %i.avt, 3
  %i.avv = and i64 %i.avu, 4294967294
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.avv
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !80
  %.idx30.i290.i = shl nuw nsw i64 %indvars.iv.i288.i, 4
  %i.avy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i290.i ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awa = insertelement <2 x float> poison, float %i.avx, i64 0
  %i.awb = insertelement <2 x float> %i.awa, float %i.avp, i64 1
  %i.awc = fadd <2 x float> %i.awb, splat (float -5.000000e-01) ; 4 uses
  %i.awd = extractelement <2 x float> %i.awc, i64 1
  %i.awe = fmul float %i.auz, %i.awd
  %i.awf = tail call float @llvm.fmuladd.f32(float %i.aux, float %i.avs, float %i.awe)
  %i.awg = extractelement <2 x float> %i.awc, i64 0
  %i.awh = tail call float @llvm.fmuladd.f32(float %i.avb, float %i.awg, float %i.awf) ; 2 uses
  %i.awi = fcmp ogt float %i.awh, 1.000000e+00
  %.sroa.speculated.i.i291.i = select i1 %i.awi, float 1.000000e+00, float %i.awh ; 2 uses
  %i.awj = fcmp ogt float %.sroa.speculated.i.i291.i, 0.000000e+00
  %.sroa.speculated14.i.i292.i = select i1 %i.awj, float %.sroa.speculated.i.i291.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i292.i, ptr %i.avz, align 4, !tbaa !80
  %i.awk = shufflevector <2 x float> %i.awc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.awl = fmul <2 x float> %i.avk, %i.awk
  %i.awm = insertelement <2 x float> poison, float %i.avs, i64 0
  %i.awn = shufflevector <2 x float> %i.awm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avg, <2 x float> %i.awn, <2 x float> %i.awl)
  %i.awp = shufflevector <2 x float> %i.awc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avi, <2 x float> %i.awp, <2 x float> %i.awo) ; 2 uses
  %i.awr = fcmp ogt <2 x float> %i.awq, splat (float 1.000000e+00)
  %i.aws = select <2 x i1> %i.awr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.awq ; 2 uses
  %i.awt = fcmp ogt <2 x float> %i.aws, zeroinitializer
  %i.awu = select <2 x i1> %i.awt, <2 x float> %i.aws, <2 x float> zeroinitializer
  store <2 x float> %i.awu, ptr %i.avy, align 4, !tbaa !80
  %i.awv = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !80
  %i.awx = getelementptr inbounds nuw i8, ptr %i.avy, i64 12
  store float %i.aww, ptr %i.awx, align 4, !tbaa !80
  %indvars.iv.next.i297.i = add nuw nsw i64 %indvars.iv.i288.i, 1 ; 2 uses
  %exitcond.not.i298.i = icmp eq i64 %indvars.iv.next.i297.i, %wide.trip.count.i287.i
  br i1 %exitcond.not.i298.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ag, !llvm.loop !49

bb.ah:                                            ; preds = %bb.y
  %switch.tableidx520 = add i8 %i.h, -5           ; 2 uses
  %i.awy = icmp ult i8 %switch.tableidx520, 4
  br i1 %i.awy, label %switch.lookup521, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup521:                                 ; preds = %bb.ah
  %i.awz = icmp sgt i32 %i.p, 0
  br i1 %i.awz, label %.lr.ph.i300.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i300.i:                                    ; preds = %switch.lookup521
  %i.axa = zext nneg i8 %switch.tableidx520 to i64
  %switch.gep522 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.axa
  %switch.load523 = load ptr, ptr %switch.gep522, align 8 ; 4 uses
  %i.axb = load float, ptr %switch.load523, align 16, !tbaa !80
  %i.axc = fpext float %i.axb to double
  %i.axd = getelementptr inbounds nuw i8, ptr %switch.load523, i64 4
  %i.axe = load <2 x float>, ptr %i.axd, align 4, !tbaa !80
  %i.axf = getelementptr inbounds nuw i8, ptr %switch.load523, i64 12
  %i.axg = getelementptr inbounds nuw i8, ptr %switch.load523, i64 28
  %i.axh = load <4 x float>, ptr %i.axf, align 4, !tbaa !80 ; 3 uses
  %i.axi = shufflevector <4 x float> %i.axh, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.axj = fpext <2 x float> %i.axi to <2 x double>
  %i.axk = load <2 x float>, ptr %i.axg, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i301.i = zext nneg i32 %i.p to i64
  %i.axl = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.axm = shufflevector <4 x float> %i.axl, <4 x float> %i.axh, <2 x i32> <i32 0, i32 5>
  %i.axn = shufflevector <4 x float> %i.axh, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.axo = shufflevector <2 x float> %i.axk, <2 x float> %i.axn, <2 x i32> <i32 1, i32 3>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i300.i
  %indvars.iv.i302.i = phi i64 [ 0, %.lr.ph.i300.i ], [ %indvars.iv.next.i311.i, %bb.ai ] ; 5 uses
  %i.axp = or i64 %indvars.iv.i302.i, 1
  %i.axq = mul i64 %i.axp, 3
  %i.axr = and i64 %i.axq, 4294967295
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.axr
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !82
  %.idx.i303.i = mul nuw nsw i64 %indvars.iv.i302.i, 24
  %i.axu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i303.i ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !82 ; 2 uses
  %i.axx = and i64 %indvars.iv.i302.i, 2147483646
  %i.axy = mul nuw nsw i64 %i.axx, 3
  %i.axz = and i64 %i.axy, 4294967294
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.axz
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !82
  %.idx30.i304.i = shl nuw nsw i64 %indvars.iv.i302.i, 5
  %i.ayc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i304.i ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 16
  %i.aye = insertelement <2 x double> poison, double %i.axt, i64 0
  %i.ayf = insertelement <2 x double> %i.aye, double %i.ayb, i64 1
  %i.ayg = fptrunc <2 x double> %i.ayf to <2 x float>
  %i.ayh = fadd <2 x float> %i.ayg, splat (float -5.000000e-01) ; 3 uses
  %i.ayi = fmul <2 x float> %i.axe, %i.ayh
  %i.ayj = fpext <2 x float> %i.ayi to <2 x double> ; 2 uses
  %i.ayk = extractelement <2 x double> %i.ayj, i64 0
  %i.ayl = tail call double @llvm.fmuladd.f64(double %i.axc, double %i.axw, double %i.ayk)
  %i.aym = extractelement <2 x double> %i.ayj, i64 1
  %i.ayn = fadd double %i.ayl, %i.aym
  %i.ayo = fptrunc double %i.ayn to float         ; 2 uses
  %i.ayp = fcmp ogt float %i.ayo, 1.000000e+00
  %.sroa.speculated.i.i305.i = select i1 %i.ayp, float 1.000000e+00, float %i.ayo ; 2 uses
  %i.ayq = fpext float %.sroa.speculated.i.i305.i to double
  %i.ayr = fcmp ogt float %.sroa.speculated.i.i305.i, 0.000000e+00
  %.sroa.speculated14.i.i306.i = select i1 %i.ayr, double %i.ayq, double 0.000000e+00
  store double %.sroa.speculated14.i.i306.i, ptr %i.ayd, align 8, !tbaa !82
  %i.ays = shufflevector <2 x float> %i.ayh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayt = fmul <2 x float> %i.axm, %i.ays
  %i.ayu = fpext <2 x float> %i.ayt to <2 x double>
  %i.ayv = insertelement <2 x double> poison, double %i.axw, i64 0
  %i.ayw = shufflevector <2 x double> %i.ayv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axj, <2 x double> %i.ayw, <2 x double> %i.ayu)
  %i.ayy = shufflevector <2 x float> %i.ayh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ayz = fmul <2 x float> %i.axo, %i.ayy
  %i.aza = fpext <2 x float> %i.ayz to <2 x double>
  %i.azb = fadd <2 x double> %i.ayx, %i.aza
  %i.azc = fptrunc <2 x double> %i.azb to <2 x float> ; 2 uses
  %i.azd = fcmp ogt <2 x float> %i.azc, splat (float 1.000000e+00)
  %i.aze = select <2 x i1> %i.azd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.azc ; 2 uses
  %i.azf = fpext <2 x float> %i.aze to <2 x double>
  %i.azg = fcmp ogt <2 x float> %i.aze, zeroinitializer
  %i.azh = select <2 x i1> %i.azg, <2 x double> %i.azf, <2 x double> zeroinitializer
  store <2 x double> %i.azh, ptr %i.ayc, align 8, !tbaa !82
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.azj = load double, ptr %i.azi, align 8, !tbaa !82
  %i.azk = getelementptr inbounds nuw i8, ptr %i.ayc, i64 24
  store double %i.azj, ptr %i.azk, align 8, !tbaa !82
  %indvars.iv.next.i311.i = add nuw nsw i64 %indvars.iv.i302.i, 1 ; 2 uses
  %exitcond.not.i312.i = icmp eq i64 %indvars.iv.next.i311.i, %wide.trip.count.i301.i
  br i1 %exitcond.not.i312.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ai, !llvm.loop !50

bb.aj:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %switch.tableidx524 = add i8 %i.h, -5           ; 2 uses
  %i.azl = icmp ult i8 %switch.tableidx524, 4
  br i1 %i.azl, label %switch.lookup525, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit
end_hunk_2
begin_hunk_3_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.bim = insertelement <2 x i16> %i.bil, i16 %i.big, i64 1
  %i.bin = uitofp <2 x i16> %i.bim to <2 x float>
  %i.bio = fadd <2 x float> %i.bin, splat (float -3.276750e+04) ; 4 uses
  %i.bip = shufflevector <2 x float> %i.bio, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.biq = fmul <2 x float> %i.bhx, %i.bip
  %i.bir = insertelement <2 x float> poison, float %i.bif, i64 0
  %i.bis = shufflevector <2 x float> %i.bir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bit = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhy, <2 x float> %i.bis, <2 x float> %i.biq)
  %i.biu = shufflevector <2 x float> %i.bio, <2 x float> poison, <2 x i32> zeroinitializer
  %i.biv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhz, <2 x float> %i.biu, <2 x float> %i.bit) ; 2 uses
  %i.biw = fcmp ogt <2 x float> %i.biv, splat (float 6.553500e+04)
  %i.bix = select <2 x i1> %i.biw, <2 x float> splat (float 6.553500e+04), <2 x float> %i.biv
  %i.biy = fptoui <2 x float> %i.bix to <2 x i16>
  %i.biz = extractelement <2 x float> %i.bio, i64 1
  %i.bja = fmul float %i.bfi, %i.biz
  %i.bjb = tail call float @llvm.fmuladd.f32(float %i.bfg, float %i.bif, float %i.bja)
  %i.bjc = extractelement <2 x float> %i.bio, i64 0
  %i.bjd = tail call float @llvm.fmuladd.f32(float %i.bfk, float %i.bjc, float %i.bjb) ; 2 uses
  %i.bje = fcmp ogt float %i.bjd, 6.553500e+04
  %.sroa.speculated.2.i.i328.i = select i1 %i.bje, float 6.553500e+04, float %i.bjd
  %i.bjf = fptoui float %.sroa.speculated.2.i.i328.i to i16
  %i.bjg = zext <2 x i16> %i.biy to <2 x i64>
  %i.bjh = shl nuw nsw <2 x i64> %i.bjg, <i64 32, i64 16> ; 2 uses
  %i.bji = extractelement <2 x i64> %i.bjh, i64 0
  %.sroa.5.0.insert.insert.i333.i = or disjoint i64 %i.bji, %.sroa.6.0.insert.shift.i330.i
  %i.bjj = extractelement <2 x i64> %i.bjh, i64 1
  %.sroa.4.0.insert.insert.i336.i = or disjoint i64 %.sroa.5.0.insert.insert.i333.i, %i.bjj
  %.sroa.0.0.insert.ext.i337.i = zext i16 %i.bjf to i64
  %.sroa.0.0.insert.insert.i338.i = or disjoint i64 %.sroa.4.0.insert.insert.i336.i, %.sroa.0.0.insert.ext.i337.i
  store i64 %.sroa.0.0.insert.insert.i338.i, ptr %i.bik, align 2
  %indvars.iv.next.i339.i = add nuw nsw i64 %indvars.iv.i325.i, 1 ; 2 uses
  %exitcond.not.i340.i = icmp eq i64 %indvars.iv.next.i339.i, %wide.trip.count.i324.i
  br i1 %exitcond.not.i340.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph210, !llvm.loop !60

bb.am:                                            ; preds = %bb.aj
  %switch.tableidx532 = add i8 %i.h, -5           ; 2 uses
  %i.bjk = icmp ult i8 %switch.tableidx532, 4
  br i1 %i.bjk, label %switch.lookup533, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup533:                                 ; preds = %bb.am
  %i.bjl = icmp sgt i32 %i.p, 0
  br i1 %i.bjl, label %.lr.ph.i342.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i342.i:                                    ; preds = %switch.lookup533
  %i.bjm = zext nneg i8 %switch.tableidx532 to i64
  %switch.gep534 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bjm
  %switch.load535 = load ptr, ptr %switch.gep534, align 8 ; 5 uses
  %i.bjn = load float, ptr %switch.load535, align 16, !tbaa !80 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %switch.load535, i64 4
  %i.bjp = load float, ptr %i.bjo, align 4, !tbaa !80 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %switch.load535, i64 8
  %i.bjr = load float, ptr %i.bjq, align 8, !tbaa !80 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %switch.load535, i64 12
  %i.bjt = getelementptr inbounds nuw i8, ptr %switch.load535, i64 28
  %i.bju = load <4 x float>, ptr %i.bjs, align 4, !tbaa !80 ; 7 uses
  %i.bjv = load <2 x float>, ptr %i.bjt, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i343.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check176 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i342.i
  %i.bjw = shl nuw nsw i64 %wide.trip.count.i343.i, 4 ; 2 uses
  %scevgep170 = getelementptr i8, ptr %3, i64 %i.bjw
  %scevgep171 = getelementptr i8, ptr %2, i64 %i.bjw
  %bound0172 = icmp ult ptr %3, %scevgep171
  %bound1173 = icmp ult ptr %2, %scevgep170
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %scalar.ph175.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck169
  %n.vec178 = and i64 %wide.trip.count.i343.i, 2147483644 ; 3 uses
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.bjn, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %i.bjp, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.bjr, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat186 = shufflevector <4 x float> %i.bju, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat188 = shufflevector <4 x float> %i.bju, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat190 = shufflevector <4 x float> %i.bju, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat192 = shufflevector <4 x float> %i.bju, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat194 = shufflevector <2 x float> %i.bjv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat196 = shufflevector <2 x float> %i.bjv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph177
  %index198 = phi i64 [ 0, %vector.ph177 ], [ %index.next200, %vector.body197 ] ; 5 uses
  %i.bjx = shl nuw nsw i64 %index198, 2           ; 2 uses
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bjx ; 4 uses
  %.idx450 = shl i64 %index198, 4
  %i.bjz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx450 ; 4 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 16
  %.idx451 = shl i64 %index198, 4
  %i.bkb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx451 ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 32
  %.idx452 = shl i64 %index198, 4
  %i.bkd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx452 ; 4 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 48
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjy, i64 4
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjz, i64 20
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkb, i64 36
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkd, i64 52
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bjz, i64 24
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkb, i64 40
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkd, i64 56
  %i.bkn = load i32, ptr %i.bkf, align 4, !tbaa !6, !alias.scope !99
  %i.bko = load i32, ptr %i.bkg, align 4, !tbaa !6, !alias.scope !99
  %i.bkp = load i32, ptr %i.bkh, align 4, !tbaa !6, !alias.scope !99
  %i.bkq = load i32, ptr %i.bki, align 4, !tbaa !6, !alias.scope !99
  %i.bkr = insertelement <4 x i32> poison, i32 %i.bkn, i64 0
  %i.bks = insertelement <4 x i32> %i.bkr, i32 %i.bko, i64 1
  %i.bkt = insertelement <4 x i32> %i.bks, i32 %i.bkp, i64 2
  %i.bku = insertelement <4 x i32> %i.bkt, i32 %i.bkq, i64 3
  %i.bkv = uitofp <4 x i32> %i.bku to <4 x float> ; 3 uses
  %i.bkw = load i32, ptr %i.bjy, align 4, !tbaa !6, !alias.scope !99
  %i.bkx = load i32, ptr %i.bka, align 4, !tbaa !6, !alias.scope !99
  %i.bky = load i32, ptr %i.bkc, align 4, !tbaa !6, !alias.scope !99
  %i.bkz = load i32, ptr %i.bke, align 4, !tbaa !6, !alias.scope !99
  %i.bla = insertelement <4 x i32> poison, i32 %i.bkw, i64 0
  %i.blb = insertelement <4 x i32> %i.bla, i32 %i.bkx, i64 1
  %i.blc = insertelement <4 x i32> %i.blb, i32 %i.bky, i64 2
  %i.bld = insertelement <4 x i32> %i.blc, i32 %i.bkz, i64 3
  %i.ble = uitofp <4 x i32> %i.bld to <4 x float>
  %i.blf = fadd nnan <4 x float> %i.ble, splat (float f0xCF000000) ; 3 uses
  %i.blg = fmul <4 x float> %broadcast.splat182, %i.blf
  %i.blh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat180, <4 x float> %i.bkv, <4 x float> %i.blg)
  %i.bli = load i32, ptr %i.bkj, align 4, !tbaa !6, !alias.scope !99
  %i.blj = load i32, ptr %i.bkk, align 4, !tbaa !6, !alias.scope !99
  %i.blk = load i32, ptr %i.bkl, align 4, !tbaa !6, !alias.scope !99
  %i.bll = load i32, ptr %i.bkm, align 4, !tbaa !6, !alias.scope !99
  %i.blm = insertelement <4 x i32> poison, i32 %i.bli, i64 0
  %i.bln = insertelement <4 x i32> %i.blm, i32 %i.blj, i64 1
  %i.blo = insertelement <4 x i32> %i.bln, i32 %i.blk, i64 2
  %i.blp = insertelement <4 x i32> %i.blo, i32 %i.bll, i64 3
  %i.blq = uitofp <4 x i32> %i.blp to <4 x float>
  %i.blr = fadd <4 x float> %i.blq, splat (float f0xCF000000) ; 3 uses
  %i.bls = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat184, <4 x float> %i.blr, <4 x float> %i.blh) ; 2 uses
  %i.blt = fcmp ogt <4 x float> %i.bls, splat (float f0x4F800000)
  %i.blu = select <4 x i1> %i.blt, <4 x float> splat (float f0x4F800000), <4 x float> %i.bls
  %i.blv = fptoui <4 x float> %i.blu to <4 x i32>
  %i.blw = fmul <4 x float> %broadcast.splat188, %i.blf
  %i.blx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat186, <4 x float> %i.bkv, <4 x float> %i.blw)
  %i.bly = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat190, <4 x float> %i.blr, <4 x float> %i.blx) ; 2 uses
  %i.blz = fmul <4 x float> %broadcast.splat194, %i.blf
  %i.bma = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat192, <4 x float> %i.bkv, <4 x float> %i.blz)
  %i.bmb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat196, <4 x float> %i.blr, <4 x float> %i.bma) ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bjy, i64 12
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bjz, i64 28
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bkb, i64 44
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bkd, i64 60
  %i.bmg = load i32, ptr %i.bmc, align 4, !tbaa !6, !alias.scope !99
  %i.bmh = load i32, ptr %i.bmd, align 4, !tbaa !6, !alias.scope !99
  %i.bmi = load i32, ptr %i.bme, align 4, !tbaa !6, !alias.scope !99
  %i.bmj = load i32, ptr %i.bmf, align 4, !tbaa !6, !alias.scope !99
  %i.bmk = insertelement <4 x i32> poison, i32 %i.bmg, i64 0
  %i.bml = insertelement <4 x i32> %i.bmk, i32 %i.bmh, i64 1
  %i.bmm = insertelement <4 x i32> %i.bml, i32 %i.bmi, i64 2
  %i.bmn = insertelement <4 x i32> %i.bmm, i32 %i.bmj, i64 3
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bjx
  %i.bmp = shufflevector <4 x float> %i.bmb, <4 x float> %i.bly, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmq = fcmp ogt <8 x float> %i.bmp, splat (float f0x4F800000)
  %i.bmr = shufflevector <4 x float> %i.bmb, <4 x float> %i.bly, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bms = select <8 x i1> %i.bmq, <8 x float> splat (float f0x4F800000), <8 x float> %i.bmr
  %i.bmt = fptoui <8 x float> %i.bms to <8 x i32>
  %i.bmu = shufflevector <4 x i32> %i.blv, <4 x i32> %i.bmn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec199 = shufflevector <8 x i32> %i.bmt, <8 x i32> %i.bmu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec199, ptr %i.bmo, align 4, !alias.scope !100, !noalias !99
  %index.next200 = add nuw i64 %index198, 4       ; 2 uses
  %i.bmv = icmp eq i64 %index.next200, %n.vec178
  br i1 %i.bmv, label %middle.block201, label %vector.body197, !llvm.loop !64

middle.block201:                                  ; preds = %vector.body197
  %cmp.n202 = icmp eq i64 %n.vec178, %wide.trip.count.i343.i
  br i1 %cmp.n202, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %vector.memcheck169, %.lr.ph.i342.i, %middle.block201
  %indvars.iv.i344.i.ph = phi i64 [ 0, %vector.memcheck169 ], [ 0, %.lr.ph.i342.i ], [ %n.vec178, %middle.block201 ]
  %i.bmw = shufflevector <2 x float> %i.bjv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bmx = shufflevector <4 x float> %i.bmw, <4 x float> %i.bju, <2 x i32> <i32 0, i32 5>
  %i.bmy = shufflevector <4 x float> %i.bju, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bmz = shufflevector <4 x float> %i.bju, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bna = shufflevector <2 x float> %i.bjv, <2 x float> %i.bmz, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %indvars.iv.i344.i = phi i64 [ %indvars.iv.next.i350.i, %scalar.ph175 ], [ %indvars.iv.i344.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %i.bnb = shl nuw nsw i64 %indvars.iv.i344.i, 2  ; 2 uses
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bnb ; 4 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 4
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bnf = load i32, ptr %i.bnd, align 4, !tbaa !6
  %i.bng = uitofp i32 %i.bnf to float             ; 2 uses
  %i.bnh = load i32, ptr %i.bnc, align 4, !tbaa !6
  %i.bni = load i32, ptr %i.bne, align 4, !tbaa !6
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnc, i64 12
  %i.bnk = load i32, ptr %i.bnj, align 4, !tbaa !6
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bnb ; 3 uses
  %i.bnm = uitofp i32 %i.bnh to float
  %i.bnn = uitofp i32 %i.bni to float
  %23 = insertelement <2 x float> poison, float %i.bnn, i64 0
  %24 = insertelement <2 x float> %23, float %i.bnm, i64 1
  %25 = fadd <2 x float> %24, splat (float f0xCF000000) ; 4 uses
  %26 = extractelement <2 x float> %25, i64 1
  %i.bno = fmul float %i.bjp, %26
  %i.bnp = tail call float @llvm.fmuladd.f32(float %i.bjn, float %i.bng, float %i.bno)
  %27 = extractelement <2 x float> %25, i64 0
  %i.bnq = tail call float @llvm.fmuladd.f32(float %i.bjr, float %27, float %i.bnp) ; 2 uses
  %i.bnr = fcmp ogt float %i.bnq, f0x4F800000
  %.sroa.speculated.i.i345.i = select i1 %i.bnr, float f0x4F800000, float %i.bnq
  %i.bns = fptoui float %.sroa.speculated.i.i345.i to i32
  %28 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bnt = fmul <2 x float> %i.bmx, %28
  %i.bnu = insertelement <2 x float> poison, float %i.bng, i64 0
  %i.bnv = shufflevector <2 x float> %i.bnu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmy, <2 x float> %i.bnv, <2 x float> %i.bnt)
  %i.bnx = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bny = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bna, <2 x float> %i.bnx, <2 x float> %i.bnw) ; 2 uses
  %i.bnz = fcmp ogt <2 x float> %i.bny, splat (float f0x4F800000)
  %i.boa = select <2 x i1> %i.bnz, <2 x float> splat (float f0x4F800000), <2 x float> %i.bny
  %i.bob = fptoui <2 x float> %i.boa to <2 x i32>
  store <2 x i32> %i.bob, ptr %i.bnl, align 4
  %.sroa.5.0..sroa_idx.i349.i = getelementptr inbounds nuw i8, ptr %i.bnl, i64 8
  store i32 %i.bns, ptr %.sroa.5.0..sroa_idx.i349.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bnl, i64 12
  store i32 %i.bnk, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %indvars.iv.next.i350.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i351.i = icmp eq i64 %indvars.iv.next.i350.i, %wide.trip.count.i343.i
  br i1 %exitcond.not.i351.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph175, !llvm.loop !65

bb.an:                                            ; preds = %bb.aj
  %switch.tableidx536 = add i8 %i.h, -5           ; 2 uses
  %i.boc = icmp ult i8 %switch.tableidx536, 4
  br i1 %i.boc, label %switch.lookup537, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup537:                                 ; preds = %bb.an
  %i.bod = icmp sgt i32 %i.p, 0
  br i1 %i.bod, label %.lr.ph.i353.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i353.i:                                    ; preds = %switch.lookup537
  %i.boe = zext nneg i8 %switch.tableidx536 to i64
  %switch.gep538 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.boe
  %switch.load539 = load ptr, ptr %switch.gep538, align 8 ; 5 uses
  %i.bof = load float, ptr %switch.load539, align 16, !tbaa !80 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %switch.load539, i64 4
  %i.boh = load float, ptr %i.bog, align 4, !tbaa !80 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %switch.load539, i64 8
  %i.boj = load float, ptr %i.boi, align 8, !tbaa !80 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %switch.load539, i64 12
  %i.bol = getelementptr inbounds nuw i8, ptr %switch.load539, i64 28
  %i.bom = load <4 x float>, ptr %i.bok, align 4, !tbaa !80 ; 7 uses
  %i.bon = load <2 x float>, ptr %i.bol, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i354.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check141 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.i353.i
  %i.boo = shl nuw nsw i64 %wide.trip.count.i354.i, 4 ; 2 uses
  %scevgep135 = getelementptr i8, ptr %3, i64 %i.boo
  %scevgep136 = getelementptr i8, ptr %2, i64 %i.boo
  %bound0137 = icmp ult ptr %3, %scevgep136
  %bound1138 = icmp ult ptr %2, %scevgep135
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck134
  %n.vec143 = and i64 %wide.trip.count.i354.i, 2147483644 ; 3 uses
  %broadcast.splatinsert144 = insertelement <4 x float> poison, float %i.bof, i64 0
  %broadcast.splat145 = shufflevector <4 x float> %broadcast.splatinsert144, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <4 x float> poison, float %i.boh, i64 0
  %broadcast.splat147 = shufflevector <4 x float> %broadcast.splatinsert146, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.boj, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat151 = shufflevector <4 x float> %i.bom, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat153 = shufflevector <4 x float> %i.bom, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat155 = shufflevector <4 x float> %i.bom, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat157 = shufflevector <4 x float> %i.bom, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat159 = shufflevector <2 x float> %i.bon, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat161 = shufflevector <2 x float> %i.bon, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph142
  %index163 = phi i64 [ 0, %vector.ph142 ], [ %index.next165, %vector.body162 ] ; 5 uses
  %i.bop = shl nuw nsw i64 %index163, 2           ; 2 uses
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bop ; 4 uses
  %.idx447 = shl i64 %index163, 4
  %i.bor = getelementptr inbounds nuw i8, ptr %2, i64 %.idx447 ; 4 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 16
  %.idx448 = shl i64 %index163, 4
  %i.bot = getelementptr inbounds nuw i8, ptr %2, i64 %.idx448 ; 4 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 32
  %.idx449 = shl i64 %index163, 4
  %i.bov = getelementptr inbounds nuw i8, ptr %2, i64 %.idx449 ; 4 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 48
  %i.box = getelementptr inbounds nuw i8, ptr %i.boq, i64 4
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bor, i64 20
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bot, i64 36
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bov, i64 52
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.boq, i64 8
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bor, i64 24
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bot, i64 40
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bov, i64 56
  %i.bpf = load float, ptr %i.box, align 4, !tbaa !80, !alias.scope !101
  %i.bpg = load float, ptr %i.boy, align 4, !tbaa !80, !alias.scope !101
  %i.bph = load float, ptr %i.boz, align 4, !tbaa !80, !alias.scope !101
  %i.bpi = load float, ptr %i.bpa, align 4, !tbaa !80, !alias.scope !101
  %i.bpj = insertelement <4 x float> poison, float %i.bpf, i64 0
  %i.bpk = insertelement <4 x float> %i.bpj, float %i.bpg, i64 1
  %i.bpl = insertelement <4 x float> %i.bpk, float %i.bph, i64 2
  %i.bpm = insertelement <4 x float> %i.bpl, float %i.bpi, i64 3 ; 3 uses
  %i.bpn = load float, ptr %i.boq, align 4, !tbaa !80, !alias.scope !101
  %i.bpo = load float, ptr %i.bos, align 4, !tbaa !80, !alias.scope !101
  %i.bpp = load float, ptr %i.bou, align 4, !tbaa !80, !alias.scope !101
  %i.bpq = load float, ptr %i.bow, align 4, !tbaa !80, !alias.scope !101
  %i.bpr = insertelement <4 x float> poison, float %i.bpn, i64 0
  %i.bps = insertelement <4 x float> %i.bpr, float %i.bpo, i64 1
  %i.bpt = insertelement <4 x float> %i.bps, float %i.bpp, i64 2
  %i.bpu = insertelement <4 x float> %i.bpt, float %i.bpq, i64 3
  %i.bpv = fadd <4 x float> %i.bpu, splat (float -5.000000e-01) ; 3 uses
  %i.bpw = fmul <4 x float> %broadcast.splat147, %i.bpv
  %i.bpx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat145, <4 x float> %i.bpm, <4 x float> %i.bpw)
  %i.bpy = load float, ptr %i.bpb, align 4, !tbaa !80, !alias.scope !101
  %i.bpz = load float, ptr %i.bpc, align 4, !tbaa !80, !alias.scope !101
  %i.bqa = load float, ptr %i.bpd, align 4, !tbaa !80, !alias.scope !101
  %i.bqb = load float, ptr %i.bpe, align 4, !tbaa !80, !alias.scope !101
  %i.bqc = insertelement <4 x float> poison, float %i.bpy, i64 0
  %i.bqd = insertelement <4 x float> %i.bqc, float %i.bpz, i64 1
  %i.bqe = insertelement <4 x float> %i.bqd, float %i.bqa, i64 2
  %i.bqf = insertelement <4 x float> %i.bqe, float %i.bqb, i64 3
  %i.bqg = fadd <4 x float> %i.bqf, splat (float -5.000000e-01) ; 3 uses
  %i.bqh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %i.bqg, <4 x float> %i.bpx) ; 2 uses
  %i.bqi = fcmp ogt <4 x float> %i.bqh, splat (float 1.000000e+00)
  %i.bqj = select <4 x i1> %i.bqi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bqh ; 2 uses
  %i.bqk = fcmp ogt <4 x float> %i.bqj, zeroinitializer
  %i.bql = select <4 x i1> %i.bqk, <4 x float> %i.bqj, <4 x float> zeroinitializer
  %i.bqm = fmul <4 x float> %broadcast.splat153, %i.bpv
  %i.bqn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat151, <4 x float> %i.bpm, <4 x float> %i.bqm)
  %i.bqo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %i.bqg, <4 x float> %i.bqn) ; 2 uses
  %i.bqp = fcmp ogt <4 x float> %i.bqo, splat (float 1.000000e+00)
  %i.bqq = select <4 x i1> %i.bqp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bqo ; 2 uses
  %i.bqr = fmul <4 x float> %broadcast.splat159, %i.bpv
  %i.bqs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat157, <4 x float> %i.bpm, <4 x float> %i.bqr)
  %i.bqt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat161, <4 x float> %i.bqg, <4 x float> %i.bqs) ; 2 uses
  %i.bqu = fcmp ogt <4 x float> %i.bqt, splat (float 1.000000e+00)
  %i.bqv = select <4 x i1> %i.bqu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bqt ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.boq, i64 12
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bor, i64 28
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bot, i64 44
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bov, i64 60
  %i.bra = load float, ptr %i.bqw, align 4, !tbaa !80, !alias.scope !101
  %i.brb = load float, ptr %i.bqx, align 4, !tbaa !80, !alias.scope !101
  %i.brc = load float, ptr %i.bqy, align 4, !tbaa !80, !alias.scope !101
  %i.brd = load float, ptr %i.bqz, align 4, !tbaa !80, !alias.scope !101
  %i.bre = insertelement <4 x float> poison, float %i.bra, i64 0
  %i.brf = insertelement <4 x float> %i.bre, float %i.brb, i64 1
  %i.brg = insertelement <4 x float> %i.brf, float %i.brc, i64 2
  %i.brh = insertelement <4 x float> %i.brg, float %i.brd, i64 3
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bop
  %i.brj = shufflevector <4 x float> %i.bqv, <4 x float> %i.bqq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brk = fcmp ogt <8 x float> %i.brj, zeroinitializer
  %i.brl = shufflevector <4 x float> %i.bqv, <4 x float> %i.bqq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brm = select <8 x i1> %i.brk, <8 x float> %i.brl, <8 x float> zeroinitializer
  %i.brn = shufflevector <4 x float> %i.bql, <4 x float> %i.brh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec164 = shufflevector <8 x float> %i.brm, <8 x float> %i.brn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec164, ptr %i.bri, align 4, !alias.scope !102, !noalias !101
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.bro = icmp eq i64 %index.next165, %n.vec143
  br i1 %i.bro, label %middle.block166, label %vector.body162, !llvm.loop !69

middle.block166:                                  ; preds = %vector.body162
  %cmp.n167 = icmp eq i64 %n.vec143, %wide.trip.count.i354.i
  br i1 %cmp.n167, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck134, %.lr.ph.i353.i, %middle.block166
  %indvars.iv.i355.i.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.i353.i ], [ %n.vec143, %middle.block166 ]
  %i.brp = shufflevector <2 x float> %i.bon, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.brq = shufflevector <4 x float> %i.brp, <4 x float> %i.bom, <2 x i32> <i32 0, i32 5>
  %i.brr = shufflevector <4 x float> %i.bom, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.brs = shufflevector <4 x float> %i.bom, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.brt = shufflevector <2 x float> %i.bon, <2 x float> %i.brs, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i355.i = phi i64 [ %indvars.iv.next.i365.i, %scalar.ph140 ], [ %indvars.iv.i355.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.bru = shl nuw nsw i64 %indvars.iv.i355.i, 2  ; 2 uses
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bru ; 4 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 4
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brv, i64 8
  %i.bry = load float, ptr %i.brw, align 4, !tbaa !80 ; 2 uses
  %i.brz = load float, ptr %i.brv, align 4, !tbaa !80
  %i.bsa = load float, ptr %i.brx, align 4, !tbaa !80
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brv, i64 12
  %i.bsc = load float, ptr %i.bsb, align 4, !tbaa !80
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bru ; 3 uses
  %i.bse = insertelement <2 x float> poison, float %i.bsa, i64 0
  %i.bsf = insertelement <2 x float> %i.bse, float %i.brz, i64 1
  %i.bsg = fadd <2 x float> %i.bsf, splat (float -5.000000e-01) ; 4 uses
  %i.bsh = extractelement <2 x float> %i.bsg, i64 1
  %i.bsi = fmul float %i.boh, %i.bsh
  %i.bsj = tail call float @llvm.fmuladd.f32(float %i.bof, float %i.bry, float %i.bsi)
  %i.bsk = extractelement <2 x float> %i.bsg, i64 0
  %i.bsl = tail call float @llvm.fmuladd.f32(float %i.boj, float %i.bsk, float %i.bsj) ; 2 uses
  %i.bsm = fcmp ogt float %i.bsl, 1.000000e+00
  %.sroa.speculated.i.i356.i = select i1 %i.bsm, float 1.000000e+00, float %i.bsl ; 2 uses
  %i.bsn = fcmp ogt float %.sroa.speculated.i.i356.i, 0.000000e+00
  %.sroa.speculated14.i.i357.i = select i1 %i.bsn, float %.sroa.speculated.i.i356.i, float 0.000000e+00
  %i.bso = shufflevector <2 x float> %i.bsg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bsp = fmul <2 x float> %i.brq, %i.bso
  %i.bsq = insertelement <2 x float> poison, float %i.bry, i64 0
  %i.bsr = shufflevector <2 x float> %i.bsq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bss = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brr, <2 x float> %i.bsr, <2 x float> %i.bsp)
  %i.bst = shufflevector <2 x float> %i.bsg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brt, <2 x float> %i.bst, <2 x float> %i.bss) ; 2 uses
  %i.bsv = fcmp ogt <2 x float> %i.bsu, splat (float 1.000000e+00)
  %i.bsw = select <2 x i1> %i.bsv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bsu ; 2 uses
  %i.bsx = fcmp ogt <2 x float> %i.bsw, zeroinitializer
  %i.bsy = select <2 x i1> %i.bsx, <2 x float> %i.bsw, <2 x float> zeroinitializer
end_hunk_3
