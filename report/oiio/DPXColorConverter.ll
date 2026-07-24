inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %switch.gep483 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.iy
  %switch.load484 = load ptr, ptr %switch.gep483, align 8 ; 5 uses
  %i.iz = load float, ptr %switch.load484, align 16, !tbaa !23
  %i.ja = getelementptr inbounds nuw i8, ptr %switch.load484, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %switch.load484, i64 8
  %i.jd = load float, ptr %i.jc, align 8, !tbaa !23
  %i.je = getelementptr inbounds nuw i8, ptr %switch.load484, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %switch.load484, i64 28
  %i.jg = load <4 x float>, ptr %i.je, align 4, !tbaa !23 ; 3 uses
  %i.jh = load <2 x float>, ptr %i.jf, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i155.i = zext nneg i32 %i.t to i64
  %i.ji = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.jj = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.jk = shufflevector <2 x float> %i.jh, <2 x float> %i.jj, <2 x i32> <i32 1, i32 3>
  %i.jl = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> %i.jg, <2 x i32> <i32 0, i32 5>
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i154.i
  %indvars.iv.i156.i = phi i64 [ 0, %.lr.ph.i154.i ], [ %indvars.iv.next.i164.i, %bb.n ] ; 4 uses
  %i.jn = shl nuw i64 %indvars.iv.i156.i, 33
  %sext.i157.i = ashr exact i64 %i.jn, 32         ; 2 uses
  %i.jo = or i64 %sext.i157.i, 2
  %i.jp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %.idx.i158.i = shl nuw nsw i64 %indvars.iv.i156.i, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i158.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3
  %i.ju = and i64 %sext.i157.i, -4
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3
  %.idx27.i160.i = mul nuw nsw i64 %indvars.iv.i156.i, 12
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i160.i ; 2 uses
  %i.jy = uitofp i32 %i.jt to float               ; 2 uses
  %i.jz = uitofp i32 %i.jq to float
  %i.ka = fadd nnan float %i.jz, f0xCF000000      ; 2 uses
  %i.kb = fmul float %i.jb, %i.ka
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.jy, float %i.kb)
  %i.kd = uitofp i32 %i.jw to float
  %i.ke = fadd float %i.kd, f0xCF000000           ; 2 uses
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.ke, float %i.kc) ; 2 uses
  %i.kg = fcmp ogt float %i.kf, f0x4F800000
  %.sroa.speculated.i.i161.i = select i1 %i.kg, float f0x4F800000, float %i.kf
  %i.kh = fptoui float %.sroa.speculated.i.i161.i to i32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !3
  %i.kj = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.jm, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.kn, <2 x float> %i.kl)
  %i.kp = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.kq, <2 x float> %i.ko) ; 2 uses
  %i.ks = fcmp ogt <2 x float> %i.kr, splat (float f0x4F800000)
  %i.kt = select <2 x i1> %i.ks, <2 x float> splat (float f0x4F800000), <2 x float> %i.kr
  %i.ku = fptoui <2 x float> %i.kt to <2 x i32>
  store <2 x i32> %i.ku, ptr %i.jx, align 4, !tbaa !3
  %indvars.iv.next.i164.i = add nuw nsw i64 %indvars.iv.i156.i, 1 ; 2 uses
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i164.i, %wide.trip.count.i155.i
  br i1 %exitcond.not.i165.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.n, !llvm.loop !30

bb.o:                                             ; preds = %bb.h
  %switch.tableidx485 = add i8 %i.h, -5           ; 2 uses
  %i.kv = icmp ult i8 %switch.tableidx485, 4
  br i1 %i.kv, label %switch.lookup486, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup486:                                 ; preds = %bb.o
  %i.kw = icmp sgt i32 %i.t, 0
  br i1 %i.kw, label %.lr.ph.i167.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i167.i:                                    ; preds = %switch.lookup486
  %i.kx = zext nneg i8 %switch.tableidx485 to i64
  %switch.gep487 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.kx
  %switch.load488 = load ptr, ptr %switch.gep487, align 8 ; 5 uses
  %i.ky = load float, ptr %switch.load488, align 16, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %switch.load488, i64 4
  %i.la = load float, ptr %i.kz, align 4, !tbaa !23
  %i.lb = getelementptr inbounds nuw i8, ptr %switch.load488, i64 8
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !23
  %i.ld = getelementptr inbounds nuw i8, ptr %switch.load488, i64 12
  %i.le = getelementptr inbounds nuw i8, ptr %switch.load488, i64 28
  %i.lf = load <4 x float>, ptr %i.ld, align 4, !tbaa !23 ; 3 uses
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i168.i = zext nneg i32 %i.t to i64
  %i.lh = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.li = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.lj = shufflevector <2 x float> %i.lg, <2 x float> %i.li, <2 x i32> <i32 1, i32 3>
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> %i.lf, <2 x i32> <i32 0, i32 5>
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i177.i, %bb.p ] ; 4 uses
  %i.lm = shl nuw i64 %indvars.iv.i169.i, 33
  %sext.i170.i = ashr exact i64 %i.lm, 32         ; 2 uses
  %i.ln = or i64 %sext.i170.i, 2
  %i.lo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !23
  %.idx.i171.i = shl nuw nsw i64 %indvars.iv.i169.i, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i171.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !23 ; 2 uses
  %i.lt = and i64 %sext.i170.i, -4
  %i.lu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !23
  %.idx27.i173.i = mul nuw nsw i64 %indvars.iv.i169.i, 12
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i173.i ; 2 uses
  %i.lx = fadd float %i.lp, -5.000000e-01         ; 2 uses
  %i.ly = fmul float %i.la, %i.lx
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ls, float %i.ly)
  %i.ma = fadd float %i.lv, -5.000000e-01         ; 2 uses
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.ma, float %i.lz) ; 2 uses
  %i.mc = fcmp ogt float %i.mb, 1.000000e+00
  %.sroa.speculated.i.i174.i = select i1 %i.mc, float 1.000000e+00, float %i.mb ; 2 uses
  %i.md = fcmp ogt float %.sroa.speculated.i.i174.i, 0.000000e+00
  %.sroa.speculated14.i.i.i = select i1 %i.md, float %.sroa.speculated.i.i174.i, float 0.000000e+00
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store float %.sroa.speculated14.i.i.i, ptr %i.me, align 4, !tbaa !23
  %i.mf = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x float> %i.ll, %i.mg
  %i.mi = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.mj, <2 x float> %i.mh)
  %i.ml = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.mm, <2 x float> %i.mk) ; 2 uses
  %i.mo = fcmp ogt <2 x float> %i.mn, splat (float 1.000000e+00)
  %i.mp = select <2 x i1> %i.mo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mn ; 2 uses
  %i.mq = fcmp ogt <2 x float> %i.mp, zeroinitializer
  %i.mr = select <2 x i1> %i.mq, <2 x float> %i.mp, <2 x float> zeroinitializer
  store <2 x float> %i.mr, ptr %i.lw, align 4, !tbaa !23
  %indvars.iv.next.i177.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i178.i = icmp eq i64 %indvars.iv.next.i177.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i178.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.p, !llvm.loop !31

bb.q:                                             ; preds = %bb.h
  %switch.tableidx489 = add i8 %i.h, -5           ; 2 uses
  %i.ms = icmp ult i8 %switch.tableidx489, 4
  br i1 %i.ms, label %switch.lookup490, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup490:                                 ; preds = %bb.q
  %i.mt = icmp sgt i32 %i.t, 0
  br i1 %i.mt, label %.lr.ph.i180.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i180.i:                                    ; preds = %switch.lookup490
  %i.mu = zext nneg i8 %switch.tableidx489 to i64
  %switch.gep491 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.mu
  %switch.load492 = load ptr, ptr %switch.gep491, align 8 ; 5 uses
  %i.mv = load float, ptr %switch.load492, align 16, !tbaa !23
  %i.mw = fpext float %i.mv to double
  %i.mx = getelementptr inbounds nuw i8, ptr %switch.load492, i64 4
  %i.my = load float, ptr %i.mx, align 4, !tbaa !23
  %i.mz = getelementptr inbounds nuw i8, ptr %switch.load492, i64 8
  %i.na = load float, ptr %i.mz, align 8, !tbaa !23
  %i.nb = getelementptr inbounds nuw i8, ptr %switch.load492, i64 12
  %i.nc = getelementptr inbounds nuw i8, ptr %switch.load492, i64 28
  %i.nd = load <4 x float>, ptr %i.nb, align 4, !tbaa !23 ; 3 uses
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.nf = fpext <2 x float> %i.ne to <2 x double>
  %i.ng = load <2 x float>, ptr %i.nc, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i181.i = zext nneg i32 %i.t to i64
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.nd, <2 x i32> <i32 0, i32 5>
  %i.nj = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.nk = shufflevector <2 x float> %i.ng, <2 x float> %i.nj, <2 x i32> <i32 1, i32 3>
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i180.i
  %indvars.iv.i182.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i193.i, %bb.r ] ; 4 uses
  %i.nl = shl nuw i64 %indvars.iv.i182.i, 33
  %sext.i183.i = ashr exact i64 %i.nl, 32         ; 2 uses
  %i.nm = or i64 %sext.i183.i, 2
  %i.nn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !25
  %.idx.i184.i = shl nuw nsw i64 %indvars.iv.i182.i, 4
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i184.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !25 ; 2 uses
  %i.ns = and i64 %sext.i183.i, -4
  %i.nt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !25
  %.idx27.i186.i = mul nuw nsw i64 %indvars.iv.i182.i, 24
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i186.i ; 2 uses
  %i.nw = fptrunc double %i.no to float
  %i.nx = fadd float %i.nw, -5.000000e-01         ; 2 uses
  %i.ny = fmul float %i.my, %i.nx
  %i.nz = fpext float %i.ny to double
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.mw, double %i.nr, double %i.nz)
  %i.ob = fptrunc double %i.nu to float
  %i.oc = fadd float %i.ob, -5.000000e-01         ; 2 uses
  %i.od = fmul float %i.na, %i.oc
  %i.oe = fpext float %i.od to double
  %i.of = fadd double %i.oa, %i.oe
  %i.og = fptrunc double %i.of to float           ; 2 uses
  %i.oh = fcmp ogt float %i.og, 1.000000e+00
  %.sroa.speculated.i.i187.i = select i1 %i.oh, float 1.000000e+00, float %i.og
  %i.oi = fpext float %.sroa.speculated.i.i187.i to double ; 2 uses
  %i.oj = fcmp ogt double %i.oi, 0.000000e+00
  %.sroa.speculated14.i.i188.i = select i1 %i.oj, double %i.oi, double 0.000000e+00
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store double %.sroa.speculated14.i.i188.i, ptr %i.ok, align 8, !tbaa !25
  %i.ol = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %i.ni, %i.om
  %i.oo = fpext <2 x float> %i.on to <2 x double>
  %i.op = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.oq = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> zeroinitializer
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.oq, <2 x double> %i.oo)
  %i.os = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.nk, %i.ot
  %i.ov = fpext <2 x float> %i.ou to <2 x double>
  %i.ow = fadd <2 x double> %i.or, %i.ov
  %i.ox = fptrunc <2 x double> %i.ow to <2 x float> ; 2 uses
  %i.oy = fcmp ogt <2 x float> %i.ox, splat (float 1.000000e+00)
  %i.oz = select <2 x i1> %i.oy, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ox
  %i.pa = fpext <2 x float> %i.oz to <2 x double> ; 2 uses
  %i.pb = fcmp ogt <2 x double> %i.pa, zeroinitializer
  %i.pc = select <2 x i1> %i.pb, <2 x double> %i.pa, <2 x double> zeroinitializer
  store <2 x double> %i.pc, ptr %i.nv, align 8, !tbaa !25
  %indvars.iv.next.i193.i = add nuw nsw i64 %indvars.iv.i182.i, 1 ; 2 uses
  %exitcond.not.i194.i = icmp eq i64 %indvars.iv.next.i193.i, %wide.trip.count.i181.i
  br i1 %exitcond.not.i194.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.r, !llvm.loop !32

bb.s:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %switch.tableidx493 = add i8 %i.h, -5           ; 2 uses
  %i.pd = icmp ult i8 %switch.tableidx493, 4
  br i1 %i.pd, label %switch.lookup494, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup494:                                 ; preds = %bb.t
  %i.pe = icmp sgt i32 %i.t, 0
  br i1 %i.pe, label %.lr.ph.i196.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i196.i:                                    ; preds = %switch.lookup494
  %i.pf = zext nneg i8 %switch.tableidx493 to i64
  %switch.gep495 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.pf
  %switch.load496 = load ptr, ptr %switch.gep495, align 8 ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %switch.load496, i64 16
  %i.ph = load <4 x float>, ptr %switch.load496, align 16, !tbaa !23 ; 7 uses
  %i.pi = load <2 x float>, ptr %i.pg, align 16, !tbaa !23 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %switch.load496, i64 24
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !23 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %switch.load496, i64 28
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !23 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %switch.load496, i64 32
  %i.po = load float, ptr %i.pn, align 16, !tbaa !23 ; 2 uses
  %wide.trip.count.i197.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check427 = icmp ult i32 %i.t, 8
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph.i196.i
  %i.pp = mul nuw nsw i64 %wide.trip.count.i197.i, 3 ; 2 uses
  %scevgep421 = getelementptr i8, ptr %3, i64 %i.pp
  %scevgep422 = getelementptr i8, ptr %2, i64 %i.pp
  %bound0423 = icmp ult ptr %3, %scevgep422
  %bound1424 = icmp ult ptr %2, %scevgep421
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck420
  %n.vec430 = and i64 %wide.trip.count.i197.i, 2147483640 ; 3 uses
  %broadcast.splat432 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat434 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat436 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat438 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat440 = shufflevector <2 x float> %i.pi, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat442 = shufflevector <2 x float> %i.pi, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert443 = insertelement <8 x float> poison, float %i.pk, i64 0
  %broadcast.splat444 = shufflevector <8 x float> %broadcast.splatinsert443, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert445 = insertelement <8 x float> poison, float %i.pm, i64 0
  %broadcast.splat446 = shufflevector <8 x float> %broadcast.splatinsert445, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.po, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph428
  %index450 = phi i64 [ 0, %vector.ph428 ], [ %index.next452, %vector.body449 ] ; 9 uses
  %i.pq = mul nuw nsw i64 %index450, 3            ; 2 uses
  %i.pr = mul nuw i64 %index450, 3
  %i.ps = mul nuw i64 %index450, 3
  %i.pt = mul nuw i64 %index450, 3
  %i.pu = mul nuw i64 %index450, 3
  %i.pv = mul nuw i64 %index450, 3
  %i.pw = mul nuw i64 %index450, 3
  %i.px = mul nuw i64 %index450, 3
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 %i.pq ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 %i.pr ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ps ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 6
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pt ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 9
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.pu ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 %i.pv ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 15
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 %i.pw ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 18
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 %i.px ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 21
  %i.qn = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qb, i64 7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 13
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qj, i64 19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 22
  %i.qv = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pz, i64 5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qd, i64 11
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qf, i64 14
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qh, i64 17
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qj, i64 20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ql, i64 23
  %i.rd = load i8, ptr %i.qn, align 1, !tbaa !17, !alias.scope !33
  %i.re = load i8, ptr %i.qo, align 1, !tbaa !17, !alias.scope !33
  %i.rf = load i8, ptr %i.qp, align 1, !tbaa !17, !alias.scope !33
  %i.rg = load i8, ptr %i.qq, align 1, !tbaa !17, !alias.scope !33
  %i.rh = load i8, ptr %i.qr, align 1, !tbaa !17, !alias.scope !33
  %i.ri = load i8, ptr %i.qs, align 1, !tbaa !17, !alias.scope !33
  %i.rj = load i8, ptr %i.qt, align 1, !tbaa !17, !alias.scope !33
  %i.rk = load i8, ptr %i.qu, align 1, !tbaa !17, !alias.scope !33
  %i.rl = insertelement <8 x i8> poison, i8 %i.rd, i64 0
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 1
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 2
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 3
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 4
  %i.rq = insertelement <8 x i8> %i.rp, i8 %i.ri, i64 5
  %i.rr = insertelement <8 x i8> %i.rq, i8 %i.rj, i64 6
  %i.rs = insertelement <8 x i8> %i.rr, i8 %i.rk, i64 7
  %i.rt = uitofp <8 x i8> %i.rs to <8 x float>    ; 3 uses
  %i.ru = load i8, ptr %i.py, align 1, !tbaa !17, !alias.scope !33
  %i.rv = load i8, ptr %i.qa, align 1, !tbaa !17, !alias.scope !33
  %i.rw = load i8, ptr %i.qc, align 1, !tbaa !17, !alias.scope !33
  %i.rx = load i8, ptr %i.qe, align 1, !tbaa !17, !alias.scope !33
  %i.ry = load i8, ptr %i.qg, align 1, !tbaa !17, !alias.scope !33
  %i.rz = load i8, ptr %i.qi, align 1, !tbaa !17, !alias.scope !33
  %i.sa = load i8, ptr %i.qk, align 1, !tbaa !17, !alias.scope !33
  %i.sb = load i8, ptr %i.qm, align 1, !tbaa !17, !alias.scope !33
  %i.sc = insertelement <8 x i8> poison, i8 %i.ru, i64 0
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 1
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 2
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 3
  %i.sg = insertelement <8 x i8> %i.sf, i8 %i.ry, i64 4
  %i.sh = insertelement <8 x i8> %i.sg, i8 %i.rz, i64 5
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 6
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 7
  %i.sk = uitofp <8 x i8> %i.sj to <8 x float>
  %i.sl = fadd nnan <8 x float> %i.sk, splat (float -1.275000e+02) ; 3 uses
  %i.sm = fmul <8 x float> %broadcast.splat434, %i.sl
  %i.sn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat432, <8 x float> %i.rt, <8 x float> %i.sm)
  %i.so = load i8, ptr %i.qv, align 1, !tbaa !17, !alias.scope !33
  %i.sp = load i8, ptr %i.qw, align 1, !tbaa !17, !alias.scope !33
  %i.sq = load i8, ptr %i.qx, align 1, !tbaa !17, !alias.scope !33
  %i.sr = load i8, ptr %i.qy, align 1, !tbaa !17, !alias.scope !33
  %i.ss = load i8, ptr %i.qz, align 1, !tbaa !17, !alias.scope !33
  %i.st = load i8, ptr %i.ra, align 1, !tbaa !17, !alias.scope !33
  %i.su = load i8, ptr %i.rb, align 1, !tbaa !17, !alias.scope !33
  %i.sv = load i8, ptr %i.rc, align 1, !tbaa !17, !alias.scope !33
  %i.sw = insertelement <8 x i8> poison, i8 %i.so, i64 0
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 1
  %i.sy = insertelement <8 x i8> %i.sx, i8 %i.sq, i64 2
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 3
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 4
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 5
  %i.tc = insertelement <8 x i8> %i.tb, i8 %i.su, i64 6
  %i.td = insertelement <8 x i8> %i.tc, i8 %i.sv, i64 7
  %i.te = uitofp <8 x i8> %i.td to <8 x float>
  %i.tf = fadd <8 x float> %i.te, splat (float -1.275000e+02) ; 3 uses
  %i.tg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> %i.tf, <8 x float> %i.sn) ; 2 uses
  %i.th = fcmp ogt <8 x float> %i.tg, splat (float 2.550000e+02)
  %i.ti = select <8 x i1> %i.th, <8 x float> splat (float 2.550000e+02), <8 x float> %i.tg
  %i.tj = fptoui <8 x float> %i.ti to <8 x i8>
  %i.tk = fmul <8 x float> %broadcast.splat440, %i.sl
  %i.tl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat438, <8 x float> %i.rt, <8 x float> %i.tk)
  %i.tm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat442, <8 x float> %i.tf, <8 x float> %i.tl) ; 2 uses
  %i.tn = fmul <8 x float> %broadcast.splat446, %i.sl
  %i.to = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat444, <8 x float> %i.rt, <8 x float> %i.tn)
  %i.tp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat448, <8 x float> %i.tf, <8 x float> %i.to) ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 %i.pq
  %i.tr = shufflevector <8 x float> %i.tp, <8 x float> %i.tm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ts = fcmp ogt <16 x float> %i.tr, splat (float 2.550000e+02)
  %i.tt = shufflevector <8 x float> %i.tp, <8 x float> %i.tm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tu = select <16 x i1> %i.ts, <16 x float> splat (float 2.550000e+02), <16 x float> %i.tt
  %i.tv = fptoui <16 x float> %i.tu to <16 x i8>
  %i.tw = shufflevector <8 x i8> %i.tj, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec451 = shufflevector <16 x i8> %i.tv, <16 x i8> %i.tw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec451, ptr %i.tq, align 1, !alias.scope !36, !noalias !33
  %index.next452 = add nuw i64 %index450, 8       ; 2 uses
  %i.tx = icmp eq i64 %index.next452, %n.vec430
  br i1 %i.tx, label %middle.block453, label %vector.body449, !llvm.loop !38

middle.block453:                                  ; preds = %vector.body449
  %cmp.n454 = icmp eq i64 %n.vec430, %wide.trip.count.i197.i
  br i1 %cmp.n454, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck420, %.lr.ph.i196.i, %middle.block453
  %indvars.iv.i198.i.ph = phi i64 [ 0, %vector.memcheck420 ], [ 0, %.lr.ph.i196.i ], [ %n.vec430, %middle.block453 ]
  %i.ty = shufflevector <2 x float> %i.pi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> %i.ph, <2 x i32> <i32 0, i32 5>
  %i.ua = shufflevector <4 x float> %i.ph, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ub = shufflevector <4 x float> %i.ph, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.uc = shufflevector <2 x float> %i.pi, <2 x float> %i.ub, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv.i198.i = phi i64 [ %indvars.iv.next.i203.i, %scalar.ph426 ], [ %indvars.iv.i198.i.ph, %scalar.ph426.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 20
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agk, i64 32
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agm, i64 44
  %i.agw = load float, ptr %i.ago, align 4, !tbaa !23, !alias.scope !56
  %i.agx = load float, ptr %i.agp, align 4, !tbaa !23, !alias.scope !56
  %i.agy = load float, ptr %i.agq, align 4, !tbaa !23, !alias.scope !56
  %i.agz = load float, ptr %i.agr, align 4, !tbaa !23, !alias.scope !56
  %i.aha = insertelement <4 x float> poison, float %i.agw, i64 0
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 1
  %i.ahc = insertelement <4 x float> %i.ahb, float %i.agy, i64 2
  %i.ahd = insertelement <4 x float> %i.ahc, float %i.agz, i64 3 ; 3 uses
  %i.ahe = load float, ptr %i.agh, align 4, !tbaa !23, !alias.scope !56
  %i.ahf = load float, ptr %i.agj, align 4, !tbaa !23, !alias.scope !56
  %i.ahg = load float, ptr %i.agl, align 4, !tbaa !23, !alias.scope !56
  %i.ahh = load float, ptr %i.agn, align 4, !tbaa !23, !alias.scope !56
  %i.ahi = insertelement <4 x float> poison, float %i.ahe, i64 0
  %i.ahj = insertelement <4 x float> %i.ahi, float %i.ahf, i64 1
  %i.ahk = insertelement <4 x float> %i.ahj, float %i.ahg, i64 2
  %i.ahl = insertelement <4 x float> %i.ahk, float %i.ahh, i64 3
  %i.ahm = fadd <4 x float> %i.ahl, splat (float -5.000000e-01) ; 3 uses
  %i.ahn = fmul <4 x float> %broadcast.splat326, %i.ahm
  %i.aho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.ahd, <4 x float> %i.ahn)
  %i.ahp = load float, ptr %i.ags, align 4, !tbaa !23, !alias.scope !56
  %i.ahq = load float, ptr %i.agt, align 4, !tbaa !23, !alias.scope !56
  %i.ahr = load float, ptr %i.agu, align 4, !tbaa !23, !alias.scope !56
  %i.ahs = load float, ptr %i.agv, align 4, !tbaa !23, !alias.scope !56
  %i.aht = insertelement <4 x float> poison, float %i.ahp, i64 0
  %i.ahu = insertelement <4 x float> %i.aht, float %i.ahq, i64 1
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 2
  %i.ahw = insertelement <4 x float> %i.ahv, float %i.ahs, i64 3
  %i.ahx = fadd <4 x float> %i.ahw, splat (float -5.000000e-01) ; 3 uses
  %i.ahy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.ahx, <4 x float> %i.aho) ; 2 uses
  %i.ahz = fcmp ogt <4 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = select <4 x i1> %i.ahz, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ahy ; 2 uses
  %i.aib = fcmp ogt <4 x float> %i.aia, zeroinitializer
  %i.aic = select <4 x i1> %i.aib, <4 x float> %i.aia, <4 x float> zeroinitializer
  %i.aid = fmul <4 x float> %broadcast.splat332, %i.ahm
  %i.aie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.ahd, <4 x float> %i.aid)
  %i.aif = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat334, <4 x float> %i.ahx, <4 x float> %i.aie) ; 2 uses
  %i.aig = fcmp ogt <4 x float> %i.aif, splat (float 1.000000e+00)
  %i.aih = select <4 x i1> %i.aig, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aif ; 2 uses
  %i.aii = fmul <4 x float> %broadcast.splat338, %i.ahm
  %i.aij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat336, <4 x float> %i.ahd, <4 x float> %i.aii)
  %i.aik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> %i.ahx, <4 x float> %i.aij) ; 2 uses
  %i.ail = fcmp ogt <4 x float> %i.aik, splat (float 1.000000e+00)
  %i.aim = select <4 x i1> %i.ail, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aik ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agg
  %i.aio = shufflevector <4 x float> %i.aim, <4 x float> %i.aih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aip = fcmp ogt <8 x float> %i.aio, zeroinitializer
  %i.aiq = shufflevector <4 x float> %i.aim, <4 x float> %i.aih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.air = select <8 x i1> %i.aip, <8 x float> %i.aiq, <8 x float> zeroinitializer
  %i.ais = shufflevector <4 x float> %i.aic, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec343 = shufflevector <8 x float> %i.air, <8 x float> %i.ais, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec343, ptr %i.ain, align 4, !alias.scope !59, !noalias !56
  %index.next344 = add nuw i64 %index342, 4       ; 2 uses
  %i.ait = icmp eq i64 %index.next344, %n.vec322
  br i1 %i.ait, label %middle.block345, label %vector.body341, !llvm.loop !61

middle.block345:                                  ; preds = %vector.body341
  %cmp.n346 = icmp eq i64 %n.vec322, %wide.trip.count.i229.i
  br i1 %cmp.n346, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph318.preheader

scalar.ph318.preheader:                           ; preds = %vector.memcheck312, %.lr.ph.i228.i, %middle.block345
  %indvars.iv.i230.i.ph = phi i64 [ 0, %vector.memcheck312 ], [ 0, %.lr.ph.i228.i ], [ %n.vec322, %middle.block345 ]
  %i.aiu = shufflevector <2 x float> %i.age, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> %i.agd, <2 x i32> <i32 0, i32 5>
  %i.aiw = shufflevector <4 x float> %i.agd, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aix = shufflevector <4 x float> %i.agd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aiy = shufflevector <2 x float> %i.age, <2 x float> %i.aix, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph318

scalar.ph318:                                     ; preds = %scalar.ph318.preheader, %scalar.ph318
  %indvars.iv.i230.i = phi i64 [ %indvars.iv.next.i239.i, %scalar.ph318 ], [ %indvars.iv.i230.i.ph, %scalar.ph318.preheader ] ; 2 uses
  %i.aiz = mul nuw nsw i64 %indvars.iv.i230.i, 3  ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aiz ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajd = load float, ptr %i.ajb, align 4, !tbaa !23 ; 2 uses
  %i.aje = load float, ptr %i.aja, align 4, !tbaa !23
  %i.ajf = fadd float %i.aje, -5.000000e-01       ; 2 uses
  %i.ajg = fmul float %i.afy, %i.ajf
  %i.ajh = tail call float @llvm.fmuladd.f32(float %i.afw, float %i.ajd, float %i.ajg)
  %i.aji = load float, ptr %i.ajc, align 4, !tbaa !23
  %i.ajj = fadd float %i.aji, -5.000000e-01       ; 2 uses
  %i.ajk = tail call float @llvm.fmuladd.f32(float %i.aga, float %i.ajj, float %i.ajh) ; 2 uses
  %i.ajl = fcmp ogt float %i.ajk, 1.000000e+00
  %.sroa.speculated.i.i231.i = select i1 %i.ajl, float 1.000000e+00, float %i.ajk ; 2 uses
  %i.ajm = fcmp ogt float %.sroa.speculated.i.i231.i, 0.000000e+00
  %.sroa.speculated14.i.i232.i = select i1 %i.ajm, float %.sroa.speculated.i.i231.i, float 0.000000e+00
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aiz ; 2 uses
  %i.ajo = insertelement <2 x float> poison, float %i.ajf, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajq = fmul <2 x float> %i.aiv, %i.ajp
  %i.ajr = insertelement <2 x float> poison, float %i.ajd, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiw, <2 x float> %i.ajs, <2 x float> %i.ajq)
  %i.aju = insertelement <2 x float> poison, float %i.ajj, i64 0
  %i.ajv = shufflevector <2 x float> %i.aju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiy, <2 x float> %i.ajv, <2 x float> %i.ajt) ; 2 uses
  %i.ajx = fcmp ogt <2 x float> %i.ajw, splat (float 1.000000e+00)
  %i.ajy = select <2 x i1> %i.ajx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ajw ; 2 uses
  %i.ajz = fcmp ogt <2 x float> %i.ajy, zeroinitializer
  %i.aka = select <2 x i1> %i.ajz, <2 x float> %i.ajy, <2 x float> zeroinitializer
  store <2 x float> %i.aka, ptr %i.ajn, align 4
  %.sroa.5.0..sroa_idx.i238.i = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store float %.sroa.speculated14.i.i232.i, ptr %.sroa.5.0..sroa_idx.i238.i, align 4
  %indvars.iv.next.i239.i = add nuw nsw i64 %indvars.iv.i230.i, 1 ; 2 uses
  %exitcond.not.i240.i = icmp eq i64 %indvars.iv.next.i239.i, %wide.trip.count.i229.i
  br i1 %exitcond.not.i240.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph318, !llvm.loop !62

bb.x:                                             ; preds = %bb.s
  %switch.tableidx509 = add i8 %i.h, -5           ; 2 uses
  %i.akb = icmp ult i8 %switch.tableidx509, 4
  br i1 %i.akb, label %switch.lookup510, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup510:                                 ; preds = %bb.x
  %i.akc = icmp sgt i32 %i.t, 0
  br i1 %i.akc, label %.lr.ph.i242.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i242.i:                                    ; preds = %switch.lookup510
  %i.akd = zext nneg i8 %switch.tableidx509 to i64
  %switch.gep511 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.akd
  %switch.load512 = load ptr, ptr %switch.gep511, align 8 ; 5 uses
  %i.ake = load float, ptr %switch.load512, align 16, !tbaa !23
  %i.akf = fpext float %i.ake to double           ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %switch.load512, i64 4
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !23 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %switch.load512, i64 8
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !23 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %switch.load512, i64 12
  %i.akl = getelementptr inbounds nuw i8, ptr %switch.load512, i64 28
  %i.akm = load <4 x float>, ptr %i.akk, align 4, !tbaa !23 ; 5 uses
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ako = fpext <2 x float> %i.akn to <2 x double> ; 3 uses
  %i.akp = load <2 x float>, ptr %i.akl, align 4, !tbaa !23 ; 4 uses
  %wide.trip.count.i243.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check283 = icmp eq i32 %i.t, 1
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph.i242.i
  %i.akq = mul nuw nsw i64 %wide.trip.count.i243.i, 24 ; 2 uses
  %scevgep277 = getelementptr i8, ptr %3, i64 %i.akq
  %scevgep278 = getelementptr i8, ptr %2, i64 %i.akq
  %bound0279 = icmp ult ptr %3, %scevgep278
  %bound1280 = icmp ult ptr %2, %scevgep277
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec286 = and i64 %wide.trip.count.i243.i, 2147483646 ; 3 uses
  %broadcast.splatinsert287 = insertelement <2 x double> poison, double %i.akf, i64 0
  %broadcast.splat288 = shufflevector <2 x double> %broadcast.splatinsert287, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <2 x float> poison, float %i.akh, i64 0
  %broadcast.splat290 = shufflevector <2 x float> %broadcast.splatinsert289, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <2 x float> poison, float %i.akj, i64 0
  %broadcast.splat292 = shufflevector <2 x float> %broadcast.splatinsert291, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x double> %i.ako, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat296 = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat298 = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat300 = shufflevector <2 x double> %i.ako, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat302 = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat304 = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph284
  %index306 = phi i64 [ 0, %vector.ph284 ], [ %index.next308, %vector.body305 ] ; 3 uses
  %i.akr = mul nuw nsw i64 %index306, 3           ; 2 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.akr ; 3 uses
  %.idx463 = mul nuw i64 %index306, 24
  %i.akt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx463 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 32
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akt, i64 40
  %i.akz = load double, ptr %i.akv, align 8, !tbaa !25, !alias.scope !63
  %i.ala = load double, ptr %i.akw, align 8, !tbaa !25, !alias.scope !63
  %i.alb = insertelement <2 x double> poison, double %i.akz, i64 0
  %i.alc = insertelement <2 x double> %i.alb, double %i.ala, i64 1 ; 3 uses
  %i.ald = load double, ptr %i.aks, align 8, !tbaa !25, !alias.scope !63
  %i.ale = load double, ptr %i.aku, align 8, !tbaa !25, !alias.scope !63
  %i.alf = insertelement <2 x double> poison, double %i.ald, i64 0
  %i.alg = insertelement <2 x double> %i.alf, double %i.ale, i64 1
  %i.alh = fptrunc <2 x double> %i.alg to <2 x float>
  %i.ali = fadd <2 x float> %i.alh, splat (float -5.000000e-01) ; 3 uses
  %i.alj = fmul <2 x float> %broadcast.splat290, %i.ali
  %i.alk = fpext <2 x float> %i.alj to <2 x double>
  %i.all = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat288, <2 x double> %i.alc, <2 x double> %i.alk)
  %i.alm = load double, ptr %i.akx, align 8, !tbaa !25, !alias.scope !63
  %i.aln = load double, ptr %i.aky, align 8, !tbaa !25, !alias.scope !63
  %i.alo = insertelement <2 x double> poison, double %i.alm, i64 0
  %i.alp = insertelement <2 x double> %i.alo, double %i.aln, i64 1
  %i.alq = fptrunc <2 x double> %i.alp to <2 x float>
  %i.alr = fadd <2 x float> %i.alq, splat (float -5.000000e-01) ; 3 uses
  %i.als = fmul <2 x float> %broadcast.splat292, %i.alr
  %i.alt = fpext <2 x float> %i.als to <2 x double>
  %i.alu = fadd <2 x double> %i.all, %i.alt
  %i.alv = fptrunc <2 x double> %i.alu to <2 x float> ; 2 uses
  %i.alw = fcmp ogt <2 x float> %i.alv, splat (float 1.000000e+00)
  %i.alx = select <2 x i1> %i.alw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.alv
  %i.aly = fpext <2 x float> %i.alx to <2 x double> ; 2 uses
  %i.alz = fcmp ogt <2 x double> %i.aly, zeroinitializer
  %i.ama = select <2 x i1> %i.alz, <2 x double> %i.aly, <2 x double> zeroinitializer
  %i.amb = fmul <2 x float> %broadcast.splat296, %i.ali
  %i.amc = fpext <2 x float> %i.amb to <2 x double>
  %i.amd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat294, <2 x double> %i.alc, <2 x double> %i.amc)
  %i.ame = fmul <2 x float> %broadcast.splat298, %i.alr
  %i.amf = fpext <2 x float> %i.ame to <2 x double>
  %i.amg = fadd <2 x double> %i.amd, %i.amf
  %i.amh = fptrunc <2 x double> %i.amg to <2 x float> ; 2 uses
  %i.ami = fcmp ogt <2 x float> %i.amh, splat (float 1.000000e+00)
  %i.amj = select <2 x i1> %i.ami, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amh
  %i.amk = fpext <2 x float> %i.amj to <2 x double> ; 2 uses
  %i.aml = fmul <2 x float> %broadcast.splat302, %i.ali
  %i.amm = fpext <2 x float> %i.aml to <2 x double>
  %i.amn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat300, <2 x double> %i.alc, <2 x double> %i.amm)
  %i.amo = fmul <2 x float> %broadcast.splat304, %i.alr
  %i.amp = fpext <2 x float> %i.amo to <2 x double>
  %i.amq = fadd <2 x double> %i.amn, %i.amp
  %i.amr = fptrunc <2 x double> %i.amq to <2 x float> ; 2 uses
  %i.ams = fcmp ogt <2 x float> %i.amr, splat (float 1.000000e+00)
  %i.amt = select <2 x i1> %i.ams, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amr
  %i.amu = fpext <2 x float> %i.amt to <2 x double> ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.akr
  %6 = shufflevector <2 x double> %i.amu, <2 x double> %i.amk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = fcmp ogt <4 x double> %6, zeroinitializer
  %i.amv = shufflevector <2 x double> %i.amu, <2 x double> %i.amk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = select <4 x i1> %7, <4 x double> %i.amv, <4 x double> zeroinitializer
  %i.amw = shufflevector <2 x double> %i.ama, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec307 = shufflevector <4 x double> %8, <4 x double> %i.amw, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec307, ptr %5, align 8, !alias.scope !66, !noalias !63
  %index.next308 = add nuw i64 %index306, 2       ; 2 uses
  %i.amx = icmp eq i64 %index.next308, %n.vec286
  br i1 %i.amx, label %middle.block309, label %vector.body305, !llvm.loop !68

middle.block309:                                  ; preds = %vector.body305
  %cmp.n310 = icmp eq i64 %n.vec286, %wide.trip.count.i243.i
  br i1 %cmp.n310, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck276, %.lr.ph.i242.i, %middle.block309
  %indvars.iv.i244.i.ph = phi i64 [ 0, %vector.memcheck276 ], [ 0, %.lr.ph.i242.i ], [ %n.vec286, %middle.block309 ]
  %i.amy = shufflevector <2 x float> %i.akp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amz = shufflevector <4 x float> %i.amy, <4 x float> %i.akm, <2 x i32> <i32 0, i32 5>
  %i.ana = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.anb = shufflevector <2 x float> %i.akp, <2 x float> %i.ana, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv.i244.i = phi i64 [ %indvars.iv.next.i253.i, %scalar.ph282 ], [ %indvars.iv.i244.i.ph, %scalar.ph282.preheader ] ; 2 uses
  %i.anc = mul nuw nsw i64 %indvars.iv.i244.i, 3  ; 2 uses
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.anc ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.ang = load double, ptr %i.ane, align 8, !tbaa !25 ; 2 uses
  %i.anh = load double, ptr %i.and, align 8, !tbaa !25
  %i.ani = fptrunc double %i.anh to float
  %i.anj = fadd float %i.ani, -5.000000e-01       ; 2 uses
  %i.ank = fmul float %i.akh, %i.anj
  %i.anl = fpext float %i.ank to double
  %i.anm = tail call double @llvm.fmuladd.f64(double %i.akf, double %i.ang, double %i.anl)
  %i.ann = load double, ptr %i.anf, align 8, !tbaa !25
  %i.ano = fptrunc double %i.ann to float
  %i.anp = fadd float %i.ano, -5.000000e-01       ; 2 uses
  %i.anq = fmul float %i.akj, %i.anp
  %i.anr = fpext float %i.anq to double
  %i.ans = fadd double %i.anm, %i.anr
  %i.ant = fptrunc double %i.ans to float         ; 2 uses
  %i.anu = fcmp ogt float %i.ant, 1.000000e+00
  %.sroa.speculated.i.i245.i = select i1 %i.anu, float 1.000000e+00, float %i.ant
  %i.anv = fpext float %.sroa.speculated.i.i245.i to double ; 2 uses
  %i.anw = fcmp ogt double %i.anv, 0.000000e+00
  %.sroa.speculated14.i.i246.i = select i1 %i.anw, double %i.anv, double 0.000000e+00
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.anc ; 2 uses
  %i.any = insertelement <2 x float> poison, float %i.anj, i64 0
  %i.anz = shufflevector <2 x float> %i.any, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoa = fmul <2 x float> %i.amz, %i.anz
  %i.aob = fpext <2 x float> %i.aoa to <2 x double>
  %i.aoc = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.aod = shufflevector <2 x double> %i.aoc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ako, <2 x double> %i.aod, <2 x double> %i.aob)
  %i.aof = insertelement <2 x float> poison, float %i.anp, i64 0
  %i.aog = shufflevector <2 x float> %i.aof, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoh = fmul <2 x float> %i.anb, %i.aog
  %i.aoi = fpext <2 x float> %i.aoh to <2 x double>
  %i.aoj = fadd <2 x double> %i.aoe, %i.aoi
  %i.aok = fptrunc <2 x double> %i.aoj to <2 x float> ; 2 uses
  %i.aol = fcmp ogt <2 x float> %i.aok, splat (float 1.000000e+00)
  %i.aom = select <2 x i1> %i.aol, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aok
  %i.aon = fpext <2 x float> %i.aom to <2 x double> ; 2 uses
  %i.aoo = fcmp ogt <2 x double> %i.aon, zeroinitializer
  %i.aop = select <2 x i1> %i.aoo, <2 x double> %i.aon, <2 x double> zeroinitializer
  store <2 x double> %i.aop, ptr %i.anx, align 8
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  store double %.sroa.speculated14.i.i246.i, ptr %.sroa.5.0..sroa_idx.i252.i, align 8
  %indvars.iv.next.i253.i = add nuw nsw i64 %indvars.iv.i244.i, 1 ; 2 uses
  %exitcond.not.i254.i = icmp eq i64 %indvars.iv.next.i253.i, %wide.trip.count.i243.i
  br i1 %exitcond.not.i254.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph282, !llvm.loop !69

bb.y:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 3, label %bb.af
    i32 4, label %bb.ah
  ]

bb.z:                                             ; preds = %bb.y
  %switch.tableidx513 = add i8 %i.h, -5           ; 2 uses
  %i.aoq = icmp ult i8 %switch.tableidx513, 4
  br i1 %i.aoq, label %switch.lookup514, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup514:                                 ; preds = %bb.z
  %i.aor = icmp sgt i32 %i.t, 0
  br i1 %i.aor, label %.lr.ph.i256.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i256.i:                                    ; preds = %switch.lookup514
  %i.aos = zext nneg i8 %switch.tableidx513 to i64
  %switch.gep515 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aos
  %switch.load516 = load ptr, ptr %switch.gep515, align 8 ; 5 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %switch.load516, i64 16
  %i.aou = load <4 x float>, ptr %switch.load516, align 16, !tbaa !23 ; 3 uses
  %i.aov = load <2 x float>, ptr %i.aot, align 16, !tbaa !23 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %switch.load516, i64 24
  %i.aox = load float, ptr %i.aow, align 8, !tbaa !23
  %i.aoy = getelementptr inbounds nuw i8, ptr %switch.load516, i64 28
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !23
  %i.apa = getelementptr inbounds nuw i8, ptr %switch.load516, i64 32
  %i.apb = load float, ptr %i.apa, align 16, !tbaa !23
  %wide.trip.count.i257.i = zext nneg i32 %i.t to i64
  %i.apc = shufflevector <4 x float> %i.aou, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.apd = shufflevector <4 x float> %i.aou, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ape = shufflevector <2 x float> %i.aov, <2 x float> %i.apd, <2 x i32> <i32 1, i32 3>
  %i.apf = shufflevector <2 x float> %i.aov, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> %i.aou, <2 x i32> <i32 0, i32 5>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i256.i
  %indvars.iv.i258.i = phi i64 [ 0, %.lr.ph.i256.i ], [ %indvars.iv.next.i262.i, %bb.aa ] ; 5 uses
  %i.aph = or i64 %indvars.iv.i258.i, 1
  %i.api = mul i64 %i.aph, 3
  %i.apj = and i64 %i.api, 4294967295
  %i.apk = getelementptr inbounds nuw i8, ptr %2, i64 %i.apj
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !17
  %i.apm = mul nuw nsw i64 %indvars.iv.i258.i, 3
  %i.apn = getelementptr inbounds nuw i8, ptr %2, i64 %i.apm ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 1
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !17
  %i.apq = and i64 %indvars.iv.i258.i, 2147483646
  %i.apr = mul nuw nsw i64 %i.apq, 3
  %i.aps = and i64 %i.apr, 4294967294
  %i.apt = getelementptr inbounds nuw i8, ptr %2, i64 %i.aps
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !17
  %i.apv = shl nuw nsw i64 %indvars.iv.i258.i, 2
  %i.apw = getelementptr inbounds nuw i8, ptr %3, i64 %i.apv ; 4 uses
  %i.apx = uitofp i8 %i.app to float              ; 2 uses
  %i.apy = uitofp i8 %i.apl to float
  %i.apz = fadd nnan float %i.apy, -1.275000e+02  ; 2 uses
  %i.aqa = uitofp i8 %i.apu to float
  %i.aqb = fadd float %i.aqa, -1.275000e+02       ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apw, i64 2
  %i.aqd = insertelement <2 x float> poison, float %i.apz, i64 0
  %i.aqe = shufflevector <2 x float> %i.aqd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqf = fmul <2 x float> %i.apg, %i.aqe
  %i.aqg = insertelement <2 x float> poison, float %i.apx, i64 0
  %i.aqh = shufflevector <2 x float> %i.aqg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apc, <2 x float> %i.aqh, <2 x float> %i.aqf)
  %i.aqj = insertelement <2 x float> poison, float %i.aqb, i64 0
  %i.aqk = shufflevector <2 x float> %i.aqj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aql = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ape, <2 x float> %i.aqk, <2 x float> %i.aqi) ; 3 uses
  %i.aqm = fcmp ogt <2 x float> %i.aql, splat (float 2.550000e+02) ; 2 uses
  %i.aqn = extractelement <2 x i1> %i.aqm, i64 1
  %i.aqo = extractelement <2 x float> %i.aql, i64 1
  %i.aqp = fptoui float %i.aqo to i8
  %i.aqq = select i1 %i.aqn, i8 -1, i8 %i.aqp
  store i8 %i.aqq, ptr %i.aqc, align 1, !tbaa !17
  %i.aqr = extractelement <2 x i1> %i.aqm, i64 0
  %i.aqs = extractelement <2 x float> %i.aql, i64 0
  %i.aqt = fptoui float %i.aqs to i8
  %i.aqu = select i1 %i.aqr, i8 -1, i8 %i.aqt
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apw, i64 1
  store i8 %i.aqu, ptr %i.aqv, align 1, !tbaa !17
  %i.aqw = fmul float %i.aoz, %i.apz
  %i.aqx = tail call float @llvm.fmuladd.f32(float %i.aox, float %i.apx, float %i.aqw)
  %i.aqy = tail call float @llvm.fmuladd.f32(float %i.apb, float %i.aqb, float %i.aqx) ; 2 uses
  %i.aqz = fcmp ogt float %i.aqy, 2.550000e+02
  %.sroa.speculated.2.i.i261.i = select i1 %i.aqz, float 2.550000e+02, float %i.aqy
  %i.ara = fptoui float %.sroa.speculated.2.i.i261.i to i8
  store i8 %i.ara, ptr %i.apw, align 1, !tbaa !17
  %i.arb = getelementptr inbounds nuw i8, ptr %i.apn, i64 2
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !17
  %i.ard = getelementptr inbounds nuw i8, ptr %i.apw, i64 3
  store i8 %i.arc, ptr %i.ard, align 1, !tbaa !17
  %indvars.iv.next.i262.i = add nuw nsw i64 %indvars.iv.i258.i, 1 ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %indvars.iv.next.i262.i, %wide.trip.count.i257.i
  br i1 %exitcond.not.i263.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.aa, !llvm.loop !70

bb.ab:                                            ; preds = %bb.y
  %switch.tableidx517 = add i8 %i.h, -5           ; 2 uses
  %i.are = icmp ult i8 %switch.tableidx517, 4
  br i1 %i.are, label %switch.lookup518, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup518:                                 ; preds = %bb.ab
  %i.arf = icmp sgt i32 %i.t, 0
  br i1 %i.arf, label %.lr.ph.i265.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i265.i:                                    ; preds = %switch.lookup518
  %i.arg = zext nneg i8 %switch.tableidx517 to i64
  %switch.gep519 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.arg
  %switch.load520 = load ptr, ptr %switch.gep519, align 8 ; 5 uses
  %i.arh = load float, ptr %switch.load520, align 16, !tbaa !23
  %i.ari = getelementptr inbounds nuw i8, ptr %switch.load520, i64 4
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !23
  %i.ark = getelementptr inbounds nuw i8, ptr %switch.load520, i64 8
  %i.arl = load float, ptr %i.ark, align 8, !tbaa !23
  %i.arm = getelementptr inbounds nuw i8, ptr %switch.load520, i64 12
  %i.arn = getelementptr inbounds nuw i8, ptr %switch.load520, i64 28
  %i.aro = load <4 x float>, ptr %i.arm, align 4, !tbaa !23 ; 3 uses
  %i.arp = load <2 x float>, ptr %i.arn, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i266.i = zext nneg i32 %i.t to i64
  %i.arq = shufflevector <4 x float> %i.aro, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.arr = shufflevector <4 x float> %i.aro, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ars = shufflevector <2 x float> %i.arp, <2 x float> %i.arr, <2 x i32> <i32 1, i32 3>
  %i.art = shufflevector <2 x float> %i.arp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aru = shufflevector <4 x float> %i.art, <4 x float> %i.aro, <2 x i32> <i32 0, i32 5>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i265.i
  %indvars.iv.i267.i = phi i64 [ 0, %.lr.ph.i265.i ], [ %indvars.iv.next.i272.i, %bb.ac ] ; 5 uses
  %i.arv = or i64 %indvars.iv.i267.i, 1
  %i.arw = mul i64 %i.arv, 3
  %i.arx = and i64 %i.arw, 4294967295
  %i.ary = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.arx
  %i.arz = load i16, ptr %i.ary, align 2, !tbaa !20
  %.idx.i268.i = mul nuw nsw i64 %indvars.iv.i267.i, 6
  %i.asa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i268.i ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 2
  %i.asc = load i16, ptr %i.asb, align 2, !tbaa !20
  %i.asd = and i64 %indvars.iv.i267.i, 2147483646
  %i.ase = mul nuw nsw i64 %i.asd, 3
  %i.asf = and i64 %i.ase, 4294967294
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.asf
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !20
  %.idx30.i.i = shl nuw nsw i64 %indvars.iv.i267.i, 3
  %i.asi = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i.i ; 3 uses
  %i.asj = uitofp i16 %i.asc to float             ; 2 uses
  %i.ask = uitofp i16 %i.arz to float
  %i.asl = fadd nnan float %i.ask, -3.276750e+04  ; 2 uses
  %i.asm = fmul float %i.arj, %i.asl
  %i.asn = tail call float @llvm.fmuladd.f32(float %i.arh, float %i.asj, float %i.asm)
  %i.aso = uitofp i16 %i.ash to float
  %i.asp = fadd float %i.aso, -3.276750e+04       ; 2 uses
  %i.asq = tail call float @llvm.fmuladd.f32(float %i.arl, float %i.asp, float %i.asn) ; 2 uses
  %i.asr = fcmp ogt float %i.asq, 6.553500e+04
  %.sroa.speculated.i.i269.i = select i1 %i.asr, float 6.553500e+04, float %i.asq
  %i.ass = fptoui float %.sroa.speculated.i.i269.i to i16
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asi, i64 4
  store i16 %i.ass, ptr %i.ast, align 2, !tbaa !20
  %i.asu = insertelement <2 x float> poison, float %i.asl, i64 0
  %i.asv = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asw = fmul <2 x float> %i.aru, %i.asv
  %i.asx = insertelement <2 x float> poison, float %i.asj, i64 0
  %i.asy = shufflevector <2 x float> %i.asx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arq, <2 x float> %i.asy, <2 x float> %i.asw)
  %i.ata = insertelement <2 x float> poison, float %i.asp, i64 0
  %i.atb = shufflevector <2 x float> %i.ata, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ars, <2 x float> %i.atb, <2 x float> %i.asz) ; 2 uses
  %i.atd = fcmp ogt <2 x float> %i.atc, splat (float 6.553500e+04)
  %i.ate = select <2 x i1> %i.atd, <2 x float> splat (float 6.553500e+04), <2 x float> %i.atc
  %i.atf = fptoui <2 x float> %i.ate to <2 x i16>
  store <2 x i16> %i.atf, ptr %i.asi, align 2, !tbaa !20
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asa, i64 4
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !20
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asi, i64 6
  store i16 %i.ath, ptr %i.ati, align 2, !tbaa !20
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i267.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i266.i
  br i1 %exitcond.not.i273.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ac, !llvm.loop !71

bb.ad:                                            ; preds = %bb.y
  %switch.tableidx521 = add i8 %i.h, -5           ; 2 uses
  %i.atj = icmp ult i8 %switch.tableidx521, 4
  br i1 %i.atj, label %switch.lookup522, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup522:                                 ; preds = %bb.ad
  %i.atk = icmp sgt i32 %i.t, 0
  br i1 %i.atk, label %.lr.ph.i275.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i275.i:                                    ; preds = %switch.lookup522
  %i.atl = zext nneg i8 %switch.tableidx521 to i64
end_hunk_1
begin_hunk_2_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.atx = shufflevector <2 x float> %i.atu, <2 x float> %i.atw, <2 x i32> <i32 1, i32 3>
  %i.aty = shufflevector <2 x float> %i.atu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atz = shufflevector <4 x float> %i.aty, <4 x float> %i.att, <2 x i32> <i32 0, i32 5>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i275.i
  %indvars.iv.i277.i = phi i64 [ 0, %.lr.ph.i275.i ], [ %indvars.iv.next.i283.i, %bb.ae ] ; 5 uses
  %i.aua = or i64 %indvars.iv.i277.i, 1
  %i.aub = mul i64 %i.aua, 3
  %i.auc = and i64 %i.aub, 4294967295
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.auc
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !3
  %.idx.i278.i = mul nuw nsw i64 %indvars.iv.i277.i, 12
  %i.auf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i278.i ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 4
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !3
  %i.aui = and i64 %indvars.iv.i277.i, 2147483646
  %i.auj = mul nuw nsw i64 %i.aui, 3
  %i.auk = and i64 %i.auj, 4294967294
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !3
  %.idx30.i279.i = shl nuw nsw i64 %indvars.iv.i277.i, 4
  %i.aun = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i279.i ; 3 uses
  %i.auo = uitofp i32 %i.auh to float             ; 2 uses
  %i.aup = uitofp i32 %i.aue to float
  %i.auq = fadd nnan float %i.aup, f0xCF000000    ; 2 uses
  %i.aur = fmul float %i.ato, %i.auq
  %i.aus = tail call float @llvm.fmuladd.f32(float %i.atm, float %i.auo, float %i.aur)
  %i.aut = uitofp i32 %i.aum to float
  %i.auu = fadd float %i.aut, f0xCF000000         ; 2 uses
  %i.auv = tail call float @llvm.fmuladd.f32(float %i.atq, float %i.auu, float %i.aus) ; 2 uses
  %i.auw = fcmp ogt float %i.auv, f0x4F800000
  %.sroa.speculated.i.i280.i = select i1 %i.auw, float f0x4F800000, float %i.auv
  %i.aux = fptoui float %.sroa.speculated.i.i280.i to i32
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aun, i64 8
  store i32 %i.aux, ptr %i.auy, align 4, !tbaa !3
  %i.auz = insertelement <2 x float> poison, float %i.auq, i64 0
  %i.ava = shufflevector <2 x float> %i.auz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avb = fmul <2 x float> %i.atz, %i.ava
  %i.avc = insertelement <2 x float> poison, float %i.auo, i64 0
  %i.avd = shufflevector <2 x float> %i.avc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ave = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atv, <2 x float> %i.avd, <2 x float> %i.avb)
  %i.avf = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.avg = shufflevector <2 x float> %i.avf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atx, <2 x float> %i.avg, <2 x float> %i.ave) ; 2 uses
  %i.avi = fcmp ogt <2 x float> %i.avh, splat (float f0x4F800000)
  %i.avj = select <2 x i1> %i.avi, <2 x float> splat (float f0x4F800000), <2 x float> %i.avh
  %i.avk = fptoui <2 x float> %i.avj to <2 x i32>
  store <2 x i32> %i.avk, ptr %i.aun, align 4, !tbaa !3
  %i.avl = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !3
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aun, i64 12
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !3
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %wide.trip.count.i276.i
  br i1 %exitcond.not.i284.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ae, !llvm.loop !72

bb.af:                                            ; preds = %bb.y
  %switch.tableidx525 = add i8 %i.h, -5           ; 2 uses
  %i.avo = icmp ult i8 %switch.tableidx525, 4
  br i1 %i.avo, label %switch.lookup526, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup526:                                 ; preds = %bb.af
  %i.avp = icmp sgt i32 %i.t, 0
  br i1 %i.avp, label %.lr.ph.i286.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i286.i:                                    ; preds = %switch.lookup526
  %i.avq = zext nneg i8 %switch.tableidx525 to i64
  %switch.gep527 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.avq
  %switch.load528 = load ptr, ptr %switch.gep527, align 8 ; 5 uses
  %i.avr = load float, ptr %switch.load528, align 16, !tbaa !23
  %i.avs = getelementptr inbounds nuw i8, ptr %switch.load528, i64 4
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !23
  %i.avu = getelementptr inbounds nuw i8, ptr %switch.load528, i64 8
  %i.avv = load float, ptr %i.avu, align 8, !tbaa !23
  %i.avw = getelementptr inbounds nuw i8, ptr %switch.load528, i64 12
  %i.avx = getelementptr inbounds nuw i8, ptr %switch.load528, i64 28
  %i.avy = load <4 x float>, ptr %i.avw, align 4, !tbaa !23 ; 3 uses
  %i.avz = load <2 x float>, ptr %i.avx, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i287.i = zext nneg i32 %i.t to i64
  %i.awa = shufflevector <4 x float> %i.avy, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.awb = shufflevector <4 x float> %i.avy, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.awc = shufflevector <2 x float> %i.avz, <2 x float> %i.awb, <2 x i32> <i32 1, i32 3>
  %i.awd = shufflevector <2 x float> %i.avz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.awe = shufflevector <4 x float> %i.awd, <4 x float> %i.avy, <2 x i32> <i32 0, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i286.i
  %indvars.iv.i288.i = phi i64 [ 0, %.lr.ph.i286.i ], [ %indvars.iv.next.i297.i, %bb.ag ] ; 5 uses
  %i.awf = or i64 %indvars.iv.i288.i, 1
  %i.awg = mul i64 %i.awf, 3
  %i.awh = and i64 %i.awg, 4294967295
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awh
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !23
  %.idx.i289.i = mul nuw nsw i64 %indvars.iv.i288.i, 12
  %i.awk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i289.i ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !23 ; 2 uses
  %i.awn = and i64 %indvars.iv.i288.i, 2147483646
  %i.awo = mul nuw nsw i64 %i.awn, 3
  %i.awp = and i64 %i.awo, 4294967294
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awp
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !23
  %.idx30.i290.i = shl nuw nsw i64 %indvars.iv.i288.i, 4
  %i.aws = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i290.i ; 3 uses
  %i.awt = fadd float %i.awj, -5.000000e-01       ; 2 uses
  %i.awu = fmul float %i.avt, %i.awt
  %i.awv = tail call float @llvm.fmuladd.f32(float %i.avr, float %i.awm, float %i.awu)
  %i.aww = fadd float %i.awr, -5.000000e-01       ; 2 uses
  %i.awx = tail call float @llvm.fmuladd.f32(float %i.avv, float %i.aww, float %i.awv) ; 2 uses
  %i.awy = fcmp ogt float %i.awx, 1.000000e+00
  %.sroa.speculated.i.i291.i = select i1 %i.awy, float 1.000000e+00, float %i.awx ; 2 uses
  %i.awz = fcmp ogt float %.sroa.speculated.i.i291.i, 0.000000e+00
  %.sroa.speculated14.i.i292.i = select i1 %i.awz, float %.sroa.speculated.i.i291.i, float 0.000000e+00
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  store float %.sroa.speculated14.i.i292.i, ptr %i.axa, align 4, !tbaa !23
  %i.axb = insertelement <2 x float> poison, float %i.awt, i64 0
  %i.axc = shufflevector <2 x float> %i.axb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axd = fmul <2 x float> %i.awe, %i.axc
  %i.axe = insertelement <2 x float> poison, float %i.awm, i64 0
  %i.axf = shufflevector <2 x float> %i.axe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awa, <2 x float> %i.axf, <2 x float> %i.axd)
  %i.axh = insertelement <2 x float> poison, float %i.aww, i64 0
  %i.axi = shufflevector <2 x float> %i.axh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awc, <2 x float> %i.axi, <2 x float> %i.axg) ; 2 uses
  %i.axk = fcmp ogt <2 x float> %i.axj, splat (float 1.000000e+00)
  %i.axl = select <2 x i1> %i.axk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.axj ; 2 uses
  %i.axm = fcmp ogt <2 x float> %i.axl, zeroinitializer
  %i.axn = select <2 x i1> %i.axm, <2 x float> %i.axl, <2 x float> zeroinitializer
  store <2 x float> %i.axn, ptr %i.aws, align 4, !tbaa !23
  %i.axo = getelementptr inbounds nuw i8, ptr %i.awk, i64 8
  %i.axp = load float, ptr %i.axo, align 4, !tbaa !23
  %i.axq = getelementptr inbounds nuw i8, ptr %i.aws, i64 12
  store float %i.axp, ptr %i.axq, align 4, !tbaa !23
  %indvars.iv.next.i297.i = add nuw nsw i64 %indvars.iv.i288.i, 1 ; 2 uses
  %exitcond.not.i298.i = icmp eq i64 %indvars.iv.next.i297.i, %wide.trip.count.i287.i
  br i1 %exitcond.not.i298.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ag, !llvm.loop !73

bb.ah:                                            ; preds = %bb.y
  %switch.tableidx529 = add i8 %i.h, -5           ; 2 uses
  %i.axr = icmp ult i8 %switch.tableidx529, 4
  br i1 %i.axr, label %switch.lookup530, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup530:                                 ; preds = %bb.ah
  %i.axs = icmp sgt i32 %i.t, 0
  br i1 %i.axs, label %.lr.ph.i300.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i300.i:                                    ; preds = %switch.lookup530
  %i.axt = zext nneg i8 %switch.tableidx529 to i64
  %switch.gep531 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.axt
  %switch.load532 = load ptr, ptr %switch.gep531, align 8 ; 5 uses
  %i.axu = load float, ptr %switch.load532, align 16, !tbaa !23
  %i.axv = fpext float %i.axu to double
  %i.axw = getelementptr inbounds nuw i8, ptr %switch.load532, i64 4
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !23
  %i.axy = getelementptr inbounds nuw i8, ptr %switch.load532, i64 8
  %i.axz = load float, ptr %i.axy, align 8, !tbaa !23
  %i.aya = getelementptr inbounds nuw i8, ptr %switch.load532, i64 12
  %i.ayb = getelementptr inbounds nuw i8, ptr %switch.load532, i64 28
  %i.ayc = load <4 x float>, ptr %i.aya, align 4, !tbaa !23 ; 3 uses
  %i.ayd = shufflevector <4 x float> %i.ayc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aye = fpext <2 x float> %i.ayd to <2 x double>
  %i.ayf = load <2 x float>, ptr %i.ayb, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i301.i = zext nneg i32 %i.t to i64
  %i.ayg = shufflevector <2 x float> %i.ayf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ayh = shufflevector <4 x float> %i.ayg, <4 x float> %i.ayc, <2 x i32> <i32 0, i32 5>
  %i.ayi = shufflevector <4 x float> %i.ayc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ayj = shufflevector <2 x float> %i.ayf, <2 x float> %i.ayi, <2 x i32> <i32 1, i32 3>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i300.i
  %indvars.iv.i302.i = phi i64 [ 0, %.lr.ph.i300.i ], [ %indvars.iv.next.i311.i, %bb.ai ] ; 5 uses
  %i.ayk = or i64 %indvars.iv.i302.i, 1
  %i.ayl = mul i64 %i.ayk, 3
  %i.aym = and i64 %i.ayl, 4294967295
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aym
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !25
  %.idx.i303.i = mul nuw nsw i64 %indvars.iv.i302.i, 24
  %i.ayp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i303.i ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  %i.ayr = load double, ptr %i.ayq, align 8, !tbaa !25 ; 2 uses
  %i.ays = and i64 %indvars.iv.i302.i, 2147483646
  %i.ayt = mul nuw nsw i64 %i.ays, 3
  %i.ayu = and i64 %i.ayt, 4294967294
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ayu
  %i.ayw = load double, ptr %i.ayv, align 8, !tbaa !25
  %.idx30.i304.i = shl nuw nsw i64 %indvars.iv.i302.i, 5
  %i.ayx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i304.i ; 3 uses
  %i.ayy = fptrunc double %i.ayo to float
  %i.ayz = fadd float %i.ayy, -5.000000e-01       ; 2 uses
  %i.aza = fmul float %i.axx, %i.ayz
  %i.azb = fpext float %i.aza to double
  %i.azc = tail call double @llvm.fmuladd.f64(double %i.axv, double %i.ayr, double %i.azb)
  %i.azd = fptrunc double %i.ayw to float
  %i.aze = fadd float %i.azd, -5.000000e-01       ; 2 uses
  %i.azf = fmul float %i.axz, %i.aze
  %i.azg = fpext float %i.azf to double
  %i.azh = fadd double %i.azc, %i.azg
  %i.azi = fptrunc double %i.azh to float         ; 2 uses
  %i.azj = fcmp ogt float %i.azi, 1.000000e+00
  %.sroa.speculated.i.i305.i = select i1 %i.azj, float 1.000000e+00, float %i.azi
  %i.azk = fpext float %.sroa.speculated.i.i305.i to double ; 2 uses
  %i.azl = fcmp ogt double %i.azk, 0.000000e+00
  %.sroa.speculated14.i.i306.i = select i1 %i.azl, double %i.azk, double 0.000000e+00
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  store double %.sroa.speculated14.i.i306.i, ptr %i.azm, align 8, !tbaa !25
  %i.azn = insertelement <2 x float> poison, float %i.ayz, i64 0
  %i.azo = shufflevector <2 x float> %i.azn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azp = fmul <2 x float> %i.ayh, %i.azo
  %i.azq = fpext <2 x float> %i.azp to <2 x double>
  %i.azr = insertelement <2 x double> poison, double %i.ayr, i64 0
  %i.azs = shufflevector <2 x double> %i.azr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aye, <2 x double> %i.azs, <2 x double> %i.azq)
  %i.azu = insertelement <2 x float> poison, float %i.aze, i64 0
  %i.azv = shufflevector <2 x float> %i.azu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azw = fmul <2 x float> %i.ayj, %i.azv
  %i.azx = fpext <2 x float> %i.azw to <2 x double>
  %i.azy = fadd <2 x double> %i.azt, %i.azx
  %i.azz = fptrunc <2 x double> %i.azy to <2 x float> ; 2 uses
  %i.baa = fcmp ogt <2 x float> %i.azz, splat (float 1.000000e+00)
  %i.bab = select <2 x i1> %i.baa, <2 x float> splat (float 1.000000e+00), <2 x float> %i.azz
  %i.bac = fpext <2 x float> %i.bab to <2 x double> ; 2 uses
  %i.bad = fcmp ogt <2 x double> %i.bac, zeroinitializer
  %i.bae = select <2 x i1> %i.bad, <2 x double> %i.bac, <2 x double> zeroinitializer
  store <2 x double> %i.bae, ptr %i.ayx, align 8, !tbaa !25
  %i.baf = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !25
  %i.bah = getelementptr inbounds nuw i8, ptr %i.ayx, i64 24
  store double %i.bag, ptr %i.bah, align 8, !tbaa !25
  %indvars.iv.next.i311.i = add nuw nsw i64 %indvars.iv.i302.i, 1 ; 2 uses
  %exitcond.not.i312.i = icmp eq i64 %indvars.iv.next.i311.i, %wide.trip.count.i301.i
  br i1 %exitcond.not.i312.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ai, !llvm.loop !74

bb.aj:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %switch.tableidx533 = add i8 %i.h, -5           ; 2 uses
  %i.bai = icmp ult i8 %switch.tableidx533, 4
  br i1 %i.bai, label %switch.lookup534, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup534:                                 ; preds = %bb.ak
  %i.baj = icmp sgt i32 %i.t, 0
  br i1 %i.baj, label %.lr.ph.i314.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i314.i:                                    ; preds = %switch.lookup534
  %i.bak = zext nneg i8 %switch.tableidx533 to i64
  %switch.gep535 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bak
  %switch.load536 = load ptr, ptr %switch.gep535, align 8 ; 5 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %switch.load536, i64 16
  %i.bam = load <4 x float>, ptr %switch.load536, align 16, !tbaa !23 ; 7 uses
  %i.ban = load <2 x float>, ptr %i.bal, align 16, !tbaa !23 ; 4 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %switch.load536, i64 24
  %i.bap = load float, ptr %i.bao, align 8, !tbaa !23 ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %switch.load536, i64 28
  %i.bar = load float, ptr %i.baq, align 4, !tbaa !23 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %switch.load536, i64 32
  %i.bat = load float, ptr %i.bas, align 16, !tbaa !23 ; 2 uses
  %wide.trip.count.i315.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check248 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check248, label %scalar.ph247.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.i314.i
  %i.bau = shl nuw nsw i64 %wide.trip.count.i315.i, 2 ; 2 uses
  %scevgep242 = getelementptr i8, ptr %3, i64 %i.bau
  %scevgep243 = getelementptr i8, ptr %2, i64 %i.bau
  %bound0244 = icmp ult ptr %3, %scevgep243
  %bound1245 = icmp ult ptr %2, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %scalar.ph247.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck241
  %n.vec251 = and i64 %wide.trip.count.i315.i, 2147483644 ; 3 uses
  %broadcast.splat253 = shufflevector <4 x float> %i.bam, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat255 = shufflevector <4 x float> %i.bam, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat257 = shufflevector <4 x float> %i.bam, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat259 = shufflevector <4 x float> %i.bam, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat261 = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat263 = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %i.bap, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x float> poison, float %i.bar, i64 0
  %broadcast.splat267 = shufflevector <4 x float> %broadcast.splatinsert266, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert268 = insertelement <4 x float> poison, float %i.bat, i64 0
  %broadcast.splat269 = shufflevector <4 x float> %broadcast.splatinsert268, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph249
  %index271 = phi i64 [ 0, %vector.ph249 ], [ %index.next272, %vector.body270 ] ; 5 uses
  %i.bav = shl nuw nsw i64 %index271, 2           ; 2 uses
  %i.baw = shl i64 %index271, 2
  %i.bax = shl i64 %index271, 2
  %i.bay = shl i64 %index271, 2
  %i.baz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bav ; 4 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %2, i64 %i.baw ; 4 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 4
  %i.bbc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bax ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %2, i64 %i.bay ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 12
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baz, i64 1
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bba, i64 5
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbc, i64 9
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbe, i64 13
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bba, i64 6
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbc, i64 10
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbe, i64 14
  %i.bbo = load i8, ptr %i.bbg, align 1, !tbaa !17, !alias.scope !75
  %i.bbp = load i8, ptr %i.bbh, align 1, !tbaa !17, !alias.scope !75
  %i.bbq = load i8, ptr %i.bbi, align 1, !tbaa !17, !alias.scope !75
  %i.bbr = load i8, ptr %i.bbj, align 1, !tbaa !17, !alias.scope !75
  %i.bbs = insertelement <4 x i8> poison, i8 %i.bbo, i64 0
  %i.bbt = insertelement <4 x i8> %i.bbs, i8 %i.bbp, i64 1
  %i.bbu = insertelement <4 x i8> %i.bbt, i8 %i.bbq, i64 2
  %i.bbv = insertelement <4 x i8> %i.bbu, i8 %i.bbr, i64 3
  %i.bbw = uitofp <4 x i8> %i.bbv to <4 x float>  ; 3 uses
  %i.bbx = load i8, ptr %i.baz, align 1, !tbaa !17, !alias.scope !75
  %i.bby = load i8, ptr %i.bbb, align 1, !tbaa !17, !alias.scope !75
  %i.bbz = load i8, ptr %i.bbd, align 1, !tbaa !17, !alias.scope !75
  %i.bca = load i8, ptr %i.bbf, align 1, !tbaa !17, !alias.scope !75
  %i.bcb = insertelement <4 x i8> poison, i8 %i.bbx, i64 0
  %i.bcc = insertelement <4 x i8> %i.bcb, i8 %i.bby, i64 1
  %i.bcd = insertelement <4 x i8> %i.bcc, i8 %i.bbz, i64 2
  %i.bce = insertelement <4 x i8> %i.bcd, i8 %i.bca, i64 3
  %i.bcf = uitofp <4 x i8> %i.bce to <4 x float>
  %i.bcg = fadd nnan <4 x float> %i.bcf, splat (float -1.275000e+02) ; 3 uses
  %i.bch = fmul <4 x float> %broadcast.splat255, %i.bcg
  %i.bci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat253, <4 x float> %i.bbw, <4 x float> %i.bch)
  %i.bcj = load i8, ptr %i.bbk, align 1, !tbaa !17, !alias.scope !75
  %i.bck = load i8, ptr %i.bbl, align 1, !tbaa !17, !alias.scope !75
  %i.bcl = load i8, ptr %i.bbm, align 1, !tbaa !17, !alias.scope !75
  %i.bcm = load i8, ptr %i.bbn, align 1, !tbaa !17, !alias.scope !75
  %i.bcn = insertelement <4 x i8> poison, i8 %i.bcj, i64 0
  %i.bco = insertelement <4 x i8> %i.bcn, i8 %i.bck, i64 1
  %i.bcp = insertelement <4 x i8> %i.bco, i8 %i.bcl, i64 2
  %i.bcq = insertelement <4 x i8> %i.bcp, i8 %i.bcm, i64 3
  %i.bcr = uitofp <4 x i8> %i.bcq to <4 x float>
  %i.bcs = fadd <4 x float> %i.bcr, splat (float -1.275000e+02) ; 3 uses
  %i.bct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat257, <4 x float> %i.bcs, <4 x float> %i.bci) ; 2 uses
  %i.bcu = fcmp ogt <4 x float> %i.bct, splat (float 2.550000e+02)
  %i.bcv = select <4 x i1> %i.bcu, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bct
  %i.bcw = fptoui <4 x float> %i.bcv to <4 x i8>
  %i.bcx = fmul <4 x float> %broadcast.splat261, %i.bcg
  %i.bcy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat259, <4 x float> %i.bbw, <4 x float> %i.bcx)
  %i.bcz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat263, <4 x float> %i.bcs, <4 x float> %i.bcy) ; 2 uses
  %i.bda = fcmp ogt <4 x float> %i.bcz, splat (float 2.550000e+02)
  %i.bdb = select <4 x i1> %i.bda, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bcz
  %i.bdc = fptoui <4 x float> %i.bdb to <4 x i8>
  %i.bdd = fmul <4 x float> %broadcast.splat267, %i.bcg
  %i.bde = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat265, <4 x float> %i.bbw, <4 x float> %i.bdd)
  %i.bdf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat269, <4 x float> %i.bcs, <4 x float> %i.bde) ; 2 uses
  %i.bdg = fcmp ogt <4 x float> %i.bdf, splat (float 2.550000e+02)
  %i.bdh = select <4 x i1> %i.bdg, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bdf
  %i.bdi = fptoui <4 x float> %i.bdh to <4 x i8>
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.baz, i64 3
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bba, i64 7
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bbc, i64 11
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bbe, i64 15
  %i.bdn = load i8, ptr %i.bdj, align 1, !tbaa !17, !alias.scope !75
  %i.bdo = load i8, ptr %i.bdk, align 1, !tbaa !17, !alias.scope !75
  %i.bdp = load i8, ptr %i.bdl, align 1, !tbaa !17, !alias.scope !75
  %i.bdq = load i8, ptr %i.bdm, align 1, !tbaa !17, !alias.scope !75
  %i.bdr = insertelement <4 x i8> poison, i8 %i.bdn, i64 0
  %i.bds = insertelement <4 x i8> %i.bdr, i8 %i.bdo, i64 1
  %i.bdt = insertelement <4 x i8> %i.bds, i8 %i.bdp, i64 2
  %i.bdu = insertelement <4 x i8> %i.bdt, i8 %i.bdq, i64 3
  %i.bdv = getelementptr inbounds nuw i8, ptr %3, i64 %i.bav
  %i.bdw = zext <4 x i8> %i.bdu to <4 x i32>
  %i.bdx = shl nuw <4 x i32> %i.bdw, splat (i32 24)
  %i.bdy = zext <4 x i8> %i.bcw to <4 x i32>
  %i.bdz = shl nuw nsw <4 x i32> %i.bdy, splat (i32 16)
  %i.bea = or disjoint <4 x i32> %i.bdz, %i.bdx
  %i.beb = zext <4 x i8> %i.bdc to <4 x i32>
  %i.bec = shl nuw nsw <4 x i32> %i.beb, splat (i32 8)
  %i.bed = or disjoint <4 x i32> %i.bea, %i.bec
  %i.bee = zext <4 x i8> %i.bdi to <4 x i32>
  %i.bef = or disjoint <4 x i32> %i.bed, %i.bee
  store <4 x i32> %i.bef, ptr %i.bdv, align 1, !alias.scope !78, !noalias !75
  %index.next272 = add nuw i64 %index271, 4       ; 2 uses
  %i.beg = icmp eq i64 %index.next272, %n.vec251
  br i1 %i.beg, label %middle.block273, label %vector.body270, !llvm.loop !80

middle.block273:                                  ; preds = %vector.body270
  %cmp.n274 = icmp eq i64 %n.vec251, %wide.trip.count.i315.i
  br i1 %cmp.n274, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph247.preheader

scalar.ph247.preheader:                           ; preds = %vector.memcheck241, %.lr.ph.i314.i, %middle.block273
  %indvars.iv.i316.i.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.i314.i ], [ %n.vec251, %middle.block273 ]
  %i.beh = shufflevector <4 x float> %i.bam, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bei = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bej = shufflevector <4 x float> %i.bam, <4 x float> %i.bei, <2 x i32> <i32 1, i32 4>
  %i.bek = shufflevector <4 x float> %i.bam, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bel = shufflevector <2 x float> %i.beh, <2 x float> %i.ban, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph247

scalar.ph247:                                     ; preds = %scalar.ph247.preheader, %scalar.ph247
  %indvars.iv.i316.i = phi i64 [ %indvars.iv.next.i320.i, %scalar.ph247 ], [ %indvars.iv.i316.i.ph, %scalar.ph247.preheader ] ; 2 uses
  %i.bem = shl nuw nsw i64 %indvars.iv.i316.i, 2  ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %2, i64 %i.bem ; 4 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 1
  %i.bep = getelementptr inbounds nuw i8, ptr %i.ben, i64 2
  %i.beq = load i8, ptr %i.beo, align 1, !tbaa !17
  %i.ber = uitofp i8 %i.beq to float              ; 2 uses
  %i.bes = load i8, ptr %i.ben, align 1, !tbaa !17
  %i.bet = uitofp i8 %i.bes to float
  %i.beu = fadd nnan float %i.bet, -1.275000e+02  ; 2 uses
  %i.bev = load i8, ptr %i.bep, align 1, !tbaa !17
  %i.bew = uitofp i8 %i.bev to float
  %i.bex = fadd float %i.bew, -1.275000e+02       ; 2 uses
  %i.bey = fmul float %i.bar, %i.beu
  %i.bez = tail call float @llvm.fmuladd.f32(float %i.bap, float %i.ber, float %i.bey)
  %i.bfa = tail call float @llvm.fmuladd.f32(float %i.bat, float %i.bex, float %i.bez) ; 2 uses
  %i.bfb = fcmp ogt float %i.bfa, 2.550000e+02
  %.sroa.speculated.2.i.i319.i = select i1 %i.bfb, float 2.550000e+02, float %i.bfa
  %i.bfc = fptoui float %.sroa.speculated.2.i.i319.i to i8
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.ben, i64 3
end_hunk_2
begin_hunk_3_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.bqt = insertelement <4 x float> poison, float %i.bqp, i64 0
  %i.bqu = insertelement <4 x float> %i.bqt, float %i.bqq, i64 1
  %i.bqv = insertelement <4 x float> %i.bqu, float %i.bqr, i64 2
  %i.bqw = insertelement <4 x float> %i.bqv, float %i.bqs, i64 3
  %i.bqx = fadd <4 x float> %i.bqw, splat (float -5.000000e-01) ; 3 uses
  %i.bqy = fmul <4 x float> %broadcast.splat148, %i.bqx
  %i.bqz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat146, <4 x float> %i.bqo, <4 x float> %i.bqy)
  %i.bra = load float, ptr %i.bqd, align 4, !tbaa !23, !alias.scope !96
  %i.brb = load float, ptr %i.bqe, align 4, !tbaa !23, !alias.scope !96
  %i.brc = load float, ptr %i.bqf, align 4, !tbaa !23, !alias.scope !96
  %i.brd = load float, ptr %i.bqg, align 4, !tbaa !23, !alias.scope !96
  %i.bre = insertelement <4 x float> poison, float %i.bra, i64 0
  %i.brf = insertelement <4 x float> %i.bre, float %i.brb, i64 1
  %i.brg = insertelement <4 x float> %i.brf, float %i.brc, i64 2
  %i.brh = insertelement <4 x float> %i.brg, float %i.brd, i64 3
  %i.bri = fadd <4 x float> %i.brh, splat (float -5.000000e-01) ; 3 uses
  %i.brj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %i.bri, <4 x float> %i.bqz) ; 2 uses
  %i.brk = fcmp ogt <4 x float> %i.brj, splat (float 1.000000e+00)
  %i.brl = select <4 x i1> %i.brk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brj ; 2 uses
  %i.brm = fcmp ogt <4 x float> %i.brl, zeroinitializer
  %i.brn = select <4 x i1> %i.brm, <4 x float> %i.brl, <4 x float> zeroinitializer
  %i.bro = fmul <4 x float> %broadcast.splat154, %i.bqx
  %i.brp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat152, <4 x float> %i.bqo, <4 x float> %i.bro)
  %i.brq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat156, <4 x float> %i.bri, <4 x float> %i.brp) ; 2 uses
  %i.brr = fcmp ogt <4 x float> %i.brq, splat (float 1.000000e+00)
  %i.brs = select <4 x i1> %i.brr, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brq ; 2 uses
  %i.brt = fmul <4 x float> %broadcast.splat160, %i.bqx
  %i.bru = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %i.bqo, <4 x float> %i.brt)
  %i.brv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat162, <4 x float> %i.bri, <4 x float> %i.bru) ; 2 uses
  %i.brw = fcmp ogt <4 x float> %i.brv, splat (float 1.000000e+00)
  %i.brx = select <4 x i1> %i.brw, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brv ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bps, i64 12
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bpt, i64 28
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bpv, i64 44
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bpx, i64 60
  %i.bsc = load float, ptr %i.bry, align 4, !tbaa !23, !alias.scope !96
  %i.bsd = load float, ptr %i.brz, align 4, !tbaa !23, !alias.scope !96
  %i.bse = load float, ptr %i.bsa, align 4, !tbaa !23, !alias.scope !96
  %i.bsf = load float, ptr %i.bsb, align 4, !tbaa !23, !alias.scope !96
  %i.bsg = insertelement <4 x float> poison, float %i.bsc, i64 0
  %i.bsh = insertelement <4 x float> %i.bsg, float %i.bsd, i64 1
  %i.bsi = insertelement <4 x float> %i.bsh, float %i.bse, i64 2
  %i.bsj = insertelement <4 x float> %i.bsi, float %i.bsf, i64 3
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bpr
  %i.bsl = shufflevector <4 x float> %i.brx, <4 x float> %i.brs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsm = fcmp ogt <8 x float> %i.bsl, zeroinitializer
  %i.bsn = shufflevector <4 x float> %i.brx, <4 x float> %i.brs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bso = select <8 x i1> %i.bsm, <8 x float> %i.bsn, <8 x float> zeroinitializer
  %i.bsp = shufflevector <4 x float> %i.brn, <4 x float> %i.bsj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec165 = shufflevector <8 x float> %i.bso, <8 x float> %i.bsp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec165, ptr %i.bsk, align 4, !alias.scope !99, !noalias !96
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.bsq = icmp eq i64 %index.next166, %n.vec144
  br i1 %i.bsq, label %middle.block167, label %vector.body163, !llvm.loop !101

middle.block167:                                  ; preds = %vector.body163
  %cmp.n168 = icmp eq i64 %n.vec144, %wide.trip.count.i354.i
  br i1 %cmp.n168, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck134, %.lr.ph.i353.i, %middle.block167
  %indvars.iv.i355.i.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.i353.i ], [ %n.vec144, %middle.block167 ]
  %i.bsr = shufflevector <2 x float> %i.bpp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bss = shufflevector <4 x float> %i.bsr, <4 x float> %i.bpo, <2 x i32> <i32 0, i32 5>
  %i.bst = shufflevector <4 x float> %i.bpo, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bsu = shufflevector <4 x float> %i.bpo, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bsv = shufflevector <2 x float> %i.bpp, <2 x float> %i.bsu, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i355.i = phi i64 [ %indvars.iv.next.i365.i, %scalar.ph140 ], [ %indvars.iv.i355.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.bsw = shl nuw nsw i64 %indvars.iv.i355.i, 2  ; 2 uses
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bsw ; 4 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 4
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsx, i64 8
  %i.bta = load float, ptr %i.bsy, align 4, !tbaa !23 ; 2 uses
  %i.btb = load float, ptr %i.bsx, align 4, !tbaa !23
  %i.btc = fadd float %i.btb, -5.000000e-01       ; 2 uses
  %i.btd = fmul float %i.bpj, %i.btc
  %i.bte = tail call float @llvm.fmuladd.f32(float %i.bph, float %i.bta, float %i.btd)
  %i.btf = load float, ptr %i.bsz, align 4, !tbaa !23
  %i.btg = fadd float %i.btf, -5.000000e-01       ; 2 uses
  %i.bth = tail call float @llvm.fmuladd.f32(float %i.bpl, float %i.btg, float %i.bte) ; 2 uses
  %i.bti = fcmp ogt float %i.bth, 1.000000e+00
  %.sroa.speculated.i.i356.i = select i1 %i.bti, float 1.000000e+00, float %i.bth ; 2 uses
  %i.btj = fcmp ogt float %.sroa.speculated.i.i356.i, 0.000000e+00
  %.sroa.speculated14.i.i357.i = select i1 %i.btj, float %.sroa.speculated.i.i356.i, float 0.000000e+00
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bsx, i64 12
  %i.btl = load float, ptr %i.btk, align 4, !tbaa !23
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bsw ; 3 uses
  %i.btn = insertelement <2 x float> poison, float %i.btc, i64 0
  %i.bto = shufflevector <2 x float> %i.btn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btp = fmul <2 x float> %i.bss, %i.bto
  %i.btq = insertelement <2 x float> poison, float %i.bta, i64 0
  %i.btr = shufflevector <2 x float> %i.btq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bts = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bst, <2 x float> %i.btr, <2 x float> %i.btp)
  %i.btt = insertelement <2 x float> poison, float %i.btg, i64 0
  %i.btu = shufflevector <2 x float> %i.btt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsv, <2 x float> %i.btu, <2 x float> %i.bts) ; 2 uses
  %i.btw = fcmp ogt <2 x float> %i.btv, splat (float 1.000000e+00)
  %i.btx = select <2 x i1> %i.btw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.btv ; 2 uses
  %i.bty = fcmp ogt <2 x float> %i.btx, zeroinitializer
  %i.btz = select <2 x i1> %i.bty, <2 x float> %i.btx, <2 x float> zeroinitializer
  store <2 x float> %i.btz, ptr %i.btm, align 4
  %.sroa.5.0..sroa_idx.i363.i = getelementptr inbounds nuw i8, ptr %i.btm, i64 8
  store float %.sroa.speculated14.i.i357.i, ptr %.sroa.5.0..sroa_idx.i363.i, align 4
  %.sroa.6.0..sroa_idx.i364.i = getelementptr inbounds nuw i8, ptr %i.btm, i64 12
  store float %i.btl, ptr %.sroa.6.0..sroa_idx.i364.i, align 4
  %indvars.iv.next.i365.i = add nuw nsw i64 %indvars.iv.i355.i, 1 ; 2 uses
  %exitcond.not.i366.i = icmp eq i64 %indvars.iv.next.i365.i, %wide.trip.count.i354.i
  br i1 %exitcond.not.i366.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140, !llvm.loop !102

bb.ao:                                            ; preds = %bb.aj
  %switch.tableidx549 = add i8 %i.h, -5           ; 2 uses
  %i.bua = icmp ult i8 %switch.tableidx549, 4
  br i1 %i.bua, label %switch.lookup550, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup550:                                 ; preds = %bb.ao
  %i.bub = icmp sgt i32 %i.t, 0
  br i1 %i.bub, label %.lr.ph.i368.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i368.i:                                    ; preds = %switch.lookup550
  %i.buc = zext nneg i8 %switch.tableidx549 to i64
  %switch.gep551 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.buc
  %switch.load552 = load ptr, ptr %switch.gep551, align 8 ; 5 uses
  %i.bud = load float, ptr %switch.load552, align 16, !tbaa !23
  %i.bue = fpext float %i.bud to double           ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %switch.load552, i64 4
  %i.bug = load float, ptr %i.buf, align 4, !tbaa !23 ; 2 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %switch.load552, i64 8
  %i.bui = load float, ptr %i.buh, align 8, !tbaa !23 ; 2 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %switch.load552, i64 12
  %i.buk = getelementptr inbounds nuw i8, ptr %switch.load552, i64 28
  %i.bul = load <4 x float>, ptr %i.buj, align 4, !tbaa !23 ; 5 uses
  %i.bum = shufflevector <4 x float> %i.bul, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bun = fpext <2 x float> %i.bum to <2 x double> ; 3 uses
  %i.buo = load <2 x float>, ptr %i.buk, align 4, !tbaa !23 ; 4 uses
  %wide.trip.count.i369.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check = icmp eq i32 %i.t, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i368.i
  %i.bup = shl nuw nsw i64 %wide.trip.count.i369.i, 5 ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.bup
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.bup
  %bound0 = icmp ult ptr %3, %scevgep117
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i369.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bue, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <2 x float> poison, float %i.bug, i64 0
  %broadcast.splat119 = shufflevector <2 x float> %broadcast.splatinsert118, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <2 x float> poison, float %i.bui, i64 0
  %broadcast.splat121 = shufflevector <2 x float> %broadcast.splatinsert120, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat123 = shufflevector <2 x double> %i.bun, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat125 = shufflevector <4 x float> %i.bul, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat127 = shufflevector <4 x float> %i.bul, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat129 = shufflevector <2 x double> %i.bun, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat131 = shufflevector <2 x float> %i.buo, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <2 x float> %i.buo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.buq = shl nuw nsw i64 %index, 2              ; 2 uses
  %i.bur = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.buq ; 4 uses
  %.idx = shl i64 %index, 5
  %i.bus = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bur, i64 8
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bus, i64 40
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bur, i64 16
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bus, i64 48
  %i.buy = load double, ptr %i.buu, align 8, !tbaa !25, !alias.scope !103
  %i.buz = load double, ptr %i.buv, align 8, !tbaa !25, !alias.scope !103
  %i.bva = insertelement <2 x double> poison, double %i.buy, i64 0
  %i.bvb = insertelement <2 x double> %i.bva, double %i.buz, i64 1 ; 3 uses
  %i.bvc = load double, ptr %i.bur, align 8, !tbaa !25, !alias.scope !103
  %i.bvd = load double, ptr %i.but, align 8, !tbaa !25, !alias.scope !103
  %i.bve = insertelement <2 x double> poison, double %i.bvc, i64 0
  %i.bvf = insertelement <2 x double> %i.bve, double %i.bvd, i64 1
  %i.bvg = fptrunc <2 x double> %i.bvf to <2 x float>
  %i.bvh = fadd <2 x float> %i.bvg, splat (float -5.000000e-01) ; 3 uses
  %i.bvi = fmul <2 x float> %broadcast.splat119, %i.bvh
  %i.bvj = fpext <2 x float> %i.bvi to <2 x double>
  %i.bvk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.bvb, <2 x double> %i.bvj)
  %i.bvl = load double, ptr %i.buw, align 8, !tbaa !25, !alias.scope !103
  %i.bvm = load double, ptr %i.bux, align 8, !tbaa !25, !alias.scope !103
  %i.bvn = insertelement <2 x double> poison, double %i.bvl, i64 0
  %i.bvo = insertelement <2 x double> %i.bvn, double %i.bvm, i64 1
  %i.bvp = fptrunc <2 x double> %i.bvo to <2 x float>
  %i.bvq = fadd <2 x float> %i.bvp, splat (float -5.000000e-01) ; 3 uses
  %i.bvr = fmul <2 x float> %broadcast.splat121, %i.bvq
  %i.bvs = fpext <2 x float> %i.bvr to <2 x double>
  %i.bvt = fadd <2 x double> %i.bvk, %i.bvs
  %i.bvu = fptrunc <2 x double> %i.bvt to <2 x float> ; 2 uses
  %i.bvv = fcmp ogt <2 x float> %i.bvu, splat (float 1.000000e+00)
  %i.bvw = select <2 x i1> %i.bvv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bvu
  %i.bvx = fpext <2 x float> %i.bvw to <2 x double> ; 2 uses
  %i.bvy = fcmp ogt <2 x double> %i.bvx, zeroinitializer
  %i.bvz = select <2 x i1> %i.bvy, <2 x double> %i.bvx, <2 x double> zeroinitializer
  %i.bwa = fmul <2 x float> %broadcast.splat125, %i.bvh
  %i.bwb = fpext <2 x float> %i.bwa to <2 x double>
  %i.bwc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %i.bvb, <2 x double> %i.bwb)
  %i.bwd = fmul <2 x float> %broadcast.splat127, %i.bvq
  %i.bwe = fpext <2 x float> %i.bwd to <2 x double>
  %i.bwf = fadd <2 x double> %i.bwc, %i.bwe
  %i.bwg = fptrunc <2 x double> %i.bwf to <2 x float> ; 2 uses
  %i.bwh = fcmp ogt <2 x float> %i.bwg, splat (float 1.000000e+00)
  %i.bwi = select <2 x i1> %i.bwh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bwg
  %i.bwj = fpext <2 x float> %i.bwi to <2 x double> ; 2 uses
  %i.bwk = fmul <2 x float> %broadcast.splat131, %i.bvh
  %i.bwl = fpext <2 x float> %i.bwk to <2 x double>
  %i.bwm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %i.bvb, <2 x double> %i.bwl)
  %i.bwn = fmul <2 x float> %broadcast.splat133, %i.bvq
  %i.bwo = fpext <2 x float> %i.bwn to <2 x double>
  %i.bwp = fadd <2 x double> %i.bwm, %i.bwo
  %i.bwq = fptrunc <2 x double> %i.bwp to <2 x float> ; 2 uses
  %i.bwr = fcmp ogt <2 x float> %i.bwq, splat (float 1.000000e+00)
  %i.bws = select <2 x i1> %i.bwr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bwq
  %i.bwt = fpext <2 x float> %i.bws to <2 x double> ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bur, i64 24
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bus, i64 56
  %i.bww = load double, ptr %i.bwu, align 8, !tbaa !25, !alias.scope !103
  %i.bwx = load double, ptr %i.bwv, align 8, !tbaa !25, !alias.scope !103
  %i.bwy = insertelement <2 x double> poison, double %i.bww, i64 0
  %i.bwz = insertelement <2 x double> %i.bwy, double %i.bwx, i64 1
  %i.bxa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.buq
  %9 = shufflevector <2 x double> %i.bwt, <2 x double> %i.bwj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = fcmp ogt <4 x double> %9, zeroinitializer
  %i.bxb = shufflevector <2 x double> %i.bwt, <2 x double> %i.bwj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = select <4 x i1> %10, <4 x double> %i.bxb, <4 x double> zeroinitializer
  %i.bxc = shufflevector <2 x double> %i.bvz, <2 x double> %i.bwz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %11, <4 x double> %i.bxc, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bxa, align 8, !alias.scope !106, !noalias !103
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bxd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bxd, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i369.i
  br i1 %cmp.n, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i368.i, %middle.block
  %indvars.iv.i370.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i368.i ], [ %n.vec, %middle.block ]
  %i.bxe = shufflevector <2 x float> %i.buo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bxf = shufflevector <4 x float> %i.bxe, <4 x float> %i.bul, <2 x i32> <i32 0, i32 5>
  %i.bxg = shufflevector <4 x float> %i.bul, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bxh = shufflevector <2 x float> %i.buo, <2 x float> %i.bxg, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i370.i = phi i64 [ %indvars.iv.next.i380.i, %scalar.ph ], [ %indvars.iv.i370.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bxi = shl nuw nsw i64 %indvars.iv.i370.i, 2  ; 2 uses
  %i.bxj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bxi ; 4 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 8
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxj, i64 16
  %i.bxm = load double, ptr %i.bxk, align 8, !tbaa !25 ; 2 uses
  %i.bxn = load double, ptr %i.bxj, align 8, !tbaa !25
  %i.bxo = fptrunc double %i.bxn to float
  %i.bxp = fadd float %i.bxo, -5.000000e-01       ; 2 uses
  %i.bxq = fmul float %i.bug, %i.bxp
  %i.bxr = fpext float %i.bxq to double
  %i.bxs = tail call double @llvm.fmuladd.f64(double %i.bue, double %i.bxm, double %i.bxr)
  %i.bxt = load double, ptr %i.bxl, align 8, !tbaa !25
  %i.bxu = fptrunc double %i.bxt to float
  %i.bxv = fadd float %i.bxu, -5.000000e-01       ; 2 uses
  %i.bxw = fmul float %i.bui, %i.bxv
  %i.bxx = fpext float %i.bxw to double
  %i.bxy = fadd double %i.bxs, %i.bxx
  %i.bxz = fptrunc double %i.bxy to float         ; 2 uses
  %i.bya = fcmp ogt float %i.bxz, 1.000000e+00
  %.sroa.speculated.i.i371.i = select i1 %i.bya, float 1.000000e+00, float %i.bxz
  %i.byb = fpext float %.sroa.speculated.i.i371.i to double ; 2 uses
  %i.byc = fcmp ogt double %i.byb, 0.000000e+00
  %.sroa.speculated14.i.i372.i = select i1 %i.byc, double %i.byb, double 0.000000e+00
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bxj, i64 24
  %i.bye = load double, ptr %i.byd, align 8, !tbaa !25
  %i.byf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bxi ; 3 uses
  %i.byg = insertelement <2 x float> poison, float %i.bxp, i64 0
  %i.byh = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byi = fmul <2 x float> %i.bxf, %i.byh
  %i.byj = fpext <2 x float> %i.byi to <2 x double>
  %i.byk = insertelement <2 x double> poison, double %i.bxm, i64 0
  %i.byl = shufflevector <2 x double> %i.byk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bym = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bun, <2 x double> %i.byl, <2 x double> %i.byj)
  %i.byn = insertelement <2 x float> poison, float %i.bxv, i64 0
  %i.byo = shufflevector <2 x float> %i.byn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byp = fmul <2 x float> %i.bxh, %i.byo
  %i.byq = fpext <2 x float> %i.byp to <2 x double>
  %i.byr = fadd <2 x double> %i.bym, %i.byq
  %i.bys = fptrunc <2 x double> %i.byr to <2 x float> ; 2 uses
  %i.byt = fcmp ogt <2 x float> %i.bys, splat (float 1.000000e+00)
  %i.byu = select <2 x i1> %i.byt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bys
  %i.byv = fpext <2 x float> %i.byu to <2 x double> ; 2 uses
  %i.byw = fcmp ogt <2 x double> %i.byv, zeroinitializer
  %i.byx = select <2 x i1> %i.byw, <2 x double> %i.byv, <2 x double> zeroinitializer
  store <2 x double> %i.byx, ptr %i.byf, align 8
  %.sroa.5.0..sroa_idx.i378.i = getelementptr inbounds nuw i8, ptr %i.byf, i64 16
  store double %.sroa.speculated14.i.i372.i, ptr %.sroa.5.0..sroa_idx.i378.i, align 8
  %.sroa.6.0..sroa_idx.i379.i = getelementptr inbounds nuw i8, ptr %i.byf, i64 24
  store double %i.bye, ptr %.sroa.6.0..sroa_idx.i379.i, align 8
  %indvars.iv.next.i380.i = add nuw nsw i64 %indvars.iv.i370.i, 1 ; 2 uses
  %exitcond.not.i381.i = icmp eq i64 %indvars.iv.next.i380.i, %wide.trip.count.i369.i
  br i1 %exitcond.not.i381.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph, !llvm.loop !109

bb.ap:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit.thread, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa: ; preds = %.lr.ph.i103.i
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i103.i.epil.preheader

.lr.ph.i103.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa, %.lr.ph.preheader.i101.i
  %indvars.iv.i104.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i101.i ], [ %indvars.iv.next.i108.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa ]
  %lcmp.mod590 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod590)
  %i.byy = shl nuw nsw i64 %indvars.iv.i104.i.epil.init, 2 ; 4 uses
  %i.byz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.byy
  %i.bza = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.byy
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bza, i64 6
  %i.bzc = load i16, ptr %i.bzb, align 2, !tbaa !20
  %i.bzd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.byy ; 2 uses
  %i.bze = or disjoint i64 %i.byy, 2              ; 2 uses
  %i.bzf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bze
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzd, i64 2
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bze
  %i.bzi = load <2 x i16>, ptr %i.byz, align 2
  store i16 %i.bzc, ptr %i.bzd, align 2, !tbaa !20
  %i.bzj = load i16, ptr %i.bzf, align 2, !tbaa !20
  store i16 %i.bzj, ptr %i.bzg, align 2, !tbaa !20
  %i.bzk = shufflevector <2 x i16> %i.bzi, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bzk, ptr %i.bzh, align 2, !tbaa !20
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa: ; preds = %.lr.ph.i112.i
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i112.i.epil.preheader

.lr.ph.i112.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa, %.lr.ph.preheader.i110.i
  %indvars.iv.i113.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i110.i ], [ %indvars.iv.next.i117.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa ]
  %lcmp.mod585 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.bzl = shl nuw nsw i64 %indvars.iv.i113.i.epil.init, 2 ; 4 uses
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzl
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzl
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzn, i64 12
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !3
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bzl ; 2 uses
  %i.bzr = or disjoint i64 %i.bzl, 2              ; 2 uses
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzr
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzq, i64 4
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bzr
  %i.bzv = load <2 x i32>, ptr %i.bzm, align 4
  store i32 %i.bzp, ptr %i.bzq, align 4, !tbaa !3
  %i.bzw = load i32, ptr %i.bzs, align 4, !tbaa !3
  store i32 %i.bzw, ptr %i.bzt, align 4, !tbaa !3
  %i.bzx = shufflevector <2 x i32> %i.bzv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bzx, ptr %i.bzu, align 4, !tbaa !3
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa: ; preds = %.lr.ph.i121.i
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod579.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i121.i.epil.preheader

.lr.ph.i121.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa, %.lr.ph.preheader.i119.i
  %indvars.iv.i122.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i119.i ], [ %indvars.iv.next.i126.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa ]
  %lcmp.mod580 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod580)
  %i.bzy = shl nuw nsw i64 %indvars.iv.i122.i.epil.init, 2 ; 4 uses
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzy
  %i.caa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzy
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 12
  %i.cac = load float, ptr %i.cab, align 4, !tbaa !23
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bzy ; 2 uses
  %i.cae = or disjoint i64 %i.bzy, 2              ; 2 uses
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cae
  %i.cag = getelementptr inbounds nuw i8, ptr %i.cad, i64 4
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cae
  %i.cai = load <2 x float>, ptr %i.bzz, align 4
  store float %i.cac, ptr %i.cad, align 4, !tbaa !23
  %i.caj = load float, ptr %i.caf, align 4, !tbaa !23
  store float %i.caj, ptr %i.cag, align 4, !tbaa !23
  %i.cak = shufflevector <2 x float> %i.cai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cak, ptr %i.cah, align 4, !tbaa !23
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa: ; preds = %.lr.ph.i130.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i130.i.epil.preheader

.lr.ph.i130.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa, %.lr.ph.preheader.i128.i
  %indvars.iv.i131.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i128.i ], [ %indvars.iv.next.i135.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa ]
  %lcmp.mod577 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod577)
  %i.cal = shl nuw nsw i64 %indvars.iv.i131.i.epil.init, 2 ; 4 uses
  %i.cam = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cal
  %i.can = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cal
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 24
  %i.cap = load double, ptr %i.cao, align 8, !tbaa !25
  %i.caq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cal ; 2 uses
  %i.car = or disjoint i64 %i.cal, 2              ; 2 uses
  %i.cas = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.car
  %i.cat = getelementptr inbounds nuw i8, ptr %i.caq, i64 8
  %i.cau = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.car
  %i.cav = load <2 x double>, ptr %i.cam, align 8
  store double %i.cap, ptr %i.caq, align 8, !tbaa !25
  %i.caw = load double, ptr %i.cas, align 8, !tbaa !25
  store double %i.caw, ptr %i.cat, align 8, !tbaa !25
  %i.cax = shufflevector <2 x double> %i.cav, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cax, ptr %i.cau, align 8, !tbaa !25
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit: ; preds = %scalar.ph, %scalar.ph140, %scalar.ph176, %scalar.ph212, %scalar.ph247, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %scalar.ph282, %scalar.ph318, %scalar.ph354, %scalar.ph390, %scalar.ph426, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %.lr.ph.i130.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa, %.lr.ph.i121.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa, %.lr.ph.i112.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa, %.lr.ph.i103.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa, %.lr.ph.i.i, %middle.block, %middle.block167, %middle.block203, %middle.block238, %middle.block273, %middle.block309, %middle.block345, %middle.block381, %middle.block417, %middle.block453, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %switch.lookup, %switch.lookup478, %switch.lookup482, %switch.lookup486, %switch.lookup490, %bb.s, %switch.lookup494, %switch.lookup498, %switch.lookup502, %switch.lookup506, %switch.lookup510, %bb.y, %switch.lookup514, %switch.lookup518, %switch.lookup522, %switch.lookup526, %switch.lookup530, %bb.aj, %switch.lookup534, %switch.lookup538, %switch.lookup542, %switch.lookup546, %switch.lookup550, %bb.ap
  %.0.i13 = phi i1 [ false, %bb.ap ], [ true, %bb.n ], [ true, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit ], [ false, %bb.aj ], [ true, %middle.block453 ], [ true, %middle.block417 ], [ true, %middle.block381 ], [ true, %middle.block345 ], [ false, %bb.b ], [ true, %middle.block309 ], [ true, %scalar.ph318 ], [ true, %scalar.ph282 ], [ true, %bb.aa ], [ true, %bb.ac ], [ false, %bb.h ], [ true, %bb.ae ], [ true, %middle.block273 ], [ true, %middle.block238 ], [ true, %middle.block203 ], [ true, %middle.block167 ], [ false, %bb.s ], [ true, %middle.block ], [ true, %scalar.ph140 ], [ true, %.lr.ph.i.i ], [ true, %.lr.ph.i103.i.epil.preheader ], [ true, %.lr.ph.i112.i.epil.preheader ], [ false, %bb.y ], [ true, %.lr.ph.i121.i.epil.preheader ], [ true, %.lr.ph.i130.i.epil.preheader ], [ true, %bb.j ], [ true, %bb.l ], [ true, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.i ], [ true, %switch.lookup ], [ false, %bb.k ], [ true, %switch.lookup478 ], [ false, %bb.m ], [ true, %switch.lookup482 ], [ false, %bb.o ], [ true, %switch.lookup486 ], [ false, %bb.q ], [ true, %switch.lookup490 ], [ false, %bb.t ], [ true, %switch.lookup494 ], [ false, %bb.u ], [ true, %switch.lookup498 ], [ false, %bb.v ], [ true, %switch.lookup502 ], [ false, %bb.w ], [ true, %switch.lookup506 ], [ false, %bb.x ], [ true, %switch.lookup510 ], [ false, %bb.z ], [ true, %switch.lookup514 ], [ false, %bb.ab ], [ true, %switch.lookup518 ], [ false, %bb.ad ], [ true, %switch.lookup522 ], [ false, %bb.af ], [ true, %switch.lookup526 ], [ false, %bb.ah ], [ true, %switch.lookup530 ], [ false, %bb.ak ], [ true, %switch.lookup534 ], [ false, %bb.al ], [ true, %switch.lookup538 ], [ false, %bb.am ], [ true, %switch.lookup542 ], [ false, %bb.an ], [ true, %switch.lookup546 ], [ false, %bb.ao ], [ true, %switch.lookup550 ], [ true, %bb.p ], [ true, %bb.r ], [ true, %scalar.ph426 ], [ true, %scalar.ph390 ], [ true, %scalar.ph354 ], [ true, %bb.ag ], [ true, %bb.ai ], [ true, %scalar.ph247 ], [ true, %scalar.ph212 ], [ true, %scalar.ph176 ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa ], [ true, %scalar.ph ]
  ret i1 %.0.i13
}

declare noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN3dpx15ConvertToNativeENS_10DescriptorENS_8DataSizeENS_14CharacteristicEiiPKvPv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -2
  %switch.i = icmp eq i32 %i.a, 50
  ret i1 %switch.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !5, i64 20}
!8 = !{!"_ZTSN3dpx12ImageElementE", !4, i64 0, !4, i64 4, !9, i64 8, !4, i64 12, !9, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !10, i64 24, !10, i64 26, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40}
!9 = !{!"float", !5, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!12, !4, i64 8}
!12 = !{!"_ZTSN3dpx5BlockE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!12, !4, i64 0}
!14 = !{!12, !4, i64 12}
!15 = !{!12, !4, i64 4}
!16 = !{!8, !5, i64 22}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10, !10, i64 0}
end_hunk_3
