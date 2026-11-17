Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/DPXColorConverter?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.bn = or disjoint i64 %i.bh, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.br = load <2 x i32>, ptr %i.bi, align 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !6
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !6
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !6
  %i.bt = shufflevector <2 x i32> %i.br, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bt, ptr %i.bq, align 4, !tbaa !6
  %indvars.iv.next.i117.i = shl i64 %indvars.iv.i113.i, 2 ; 2 uses
  %i.bu = or disjoint i64 %indvars.iv.next.i117.i, 4 ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !6
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bu ; 2 uses
  %i.ca = or disjoint i64 %indvars.iv.next.i117.i, 6 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ca
  %i.ce = load <2 x i32>, ptr %i.bv, align 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !6
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !6
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !6
  %i.cg = shufflevector <2 x i32> %i.ce, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cg, ptr %i.cd, align 4, !tbaa !6
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i113.i, 2 ; 2 uses
  %niter605.next.1 = add i64 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i64 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit572.unr-lcssa, label %.lr.ph.i112.i, !llvm.loop !19

bb.f:                                             ; preds = %bb.b
  %i.ch = icmp sgt i32 %i.p, 0
  br i1 %i.ch, label %.lr.ph.preheader.i119.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i119.i:                          ; preds = %bb.f
  %wide.trip.count.i120.i = zext nneg i32 %i.p to i64 ; 2 uses
  %xtraiter596 = and i64 %wide.trip.count.i120.i, 1
  %i.ci = icmp eq i32 %i.p, 1
  br i1 %i.ci, label %.lr.ph.i121.i.epil.preheader, label %.lr.ph.preheader.i119.i.new

.lr.ph.preheader.i119.i.new:                      ; preds = %.lr.ph.preheader.i119.i
  %unroll_iter599 = and i64 %wide.trip.count.i120.i, 2147483646
  br label %.lr.ph.i121.i

.lr.ph.i121.i:                                    ; preds = %.lr.ph.i121.i, %.lr.ph.preheader.i119.i.new
  %indvars.iv.i122.i = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %indvars.iv.next.i126.i.1, %.lr.ph.i121.i ] ; 3 uses
  %niter600 = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %niter600.next.1, %.lr.ph.i121.i ]
  %i.cj = shl nuw nsw i64 %indvars.iv.i122.i, 2   ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !87
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj ; 2 uses
  %i.cp = or disjoint i64 %i.cj, 2                ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp
  %i.ct = load <2 x float>, ptr %i.ck, align 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !87
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !87
  store float %i.cu, ptr %i.cr, align 4, !tbaa !87
  %i.cv = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cv, ptr %i.cs, align 4, !tbaa !87
  %indvars.iv.next.i126.i = shl i64 %indvars.iv.i122.i, 2 ; 2 uses
  %i.cw = or disjoint i64 %indvars.iv.next.i126.i, 4 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load float, ptr %i.cz, align 4, !tbaa !87
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cw ; 2 uses
  %i.dc = or disjoint i64 %indvars.iv.next.i126.i, 6 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dc
  %i.dg = load <2 x float>, ptr %i.cx, align 4
  store float %i.da, ptr %i.db, align 4, !tbaa !87
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !87
  store float %i.dh, ptr %i.de, align 4, !tbaa !87
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.di, ptr %i.df, align 4, !tbaa !87
  %indvars.iv.next.i126.i.1 = add nuw nsw i64 %indvars.iv.i122.i, 2 ; 2 uses
  %niter600.next.1 = add i64 %niter600, 2         ; 2 uses
  %niter600.ncmp.1 = icmp eq i64 %niter600.next.1, %unroll_iter599
  br i1 %niter600.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit573.unr-lcssa, label %.lr.ph.i121.i, !llvm.loop !20

bb.g:                                             ; preds = %bb.b
  %i.dj = icmp sgt i32 %i.p, 0
  br i1 %i.dj, label %.lr.ph.preheader.i128.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i128.i:                          ; preds = %bb.g
  %wide.trip.count.i129.i = zext nneg i32 %i.p to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i129.i, 1
  %i.dk = icmp eq i32 %i.p, 1
  br i1 %i.dk, label %.lr.ph.i130.i.epil.preheader, label %.lr.ph.preheader.i128.i.new

.lr.ph.preheader.i128.i.new:                      ; preds = %.lr.ph.preheader.i128.i
  %unroll_iter = and i64 %wide.trip.count.i129.i, 2147483646
  br label %.lr.ph.i130.i

.lr.ph.i130.i:                                    ; preds = %.lr.ph.i130.i, %.lr.ph.preheader.i128.i.new
  %indvars.iv.i131.i = phi i64 [ 0, %.lr.ph.preheader.i128.i.new ], [ %indvars.iv.next.i135.i.1, %.lr.ph.i130.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i128.i.new ], [ %niter.next.1, %.lr.ph.i130.i ]
  %i.dl = shl nuw nsw i64 %indvars.iv.i131.i, 2   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load double, ptr %i.do, align 8, !tbaa !89
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dl ; 2 uses
  %i.dr = or disjoint i64 %i.dl, 2                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dr
  %i.dv = load <2 x double>, ptr %i.dm, align 8
  store double %i.dp, ptr %i.dq, align 8, !tbaa !89
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !89
  store double %i.dw, ptr %i.dt, align 8, !tbaa !89
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.dx, ptr %i.du, align 8, !tbaa !89
  %indvars.iv.next.i135.i = shl i64 %indvars.iv.i131.i, 2 ; 2 uses
  %i.dy = or disjoint i64 %indvars.iv.next.i135.i, 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !89
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dy ; 2 uses
  %i.ee = or disjoint i64 %indvars.iv.next.i135.i, 6 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ee
  %i.ei = load <2 x double>, ptr %i.dz, align 8
  store double %i.ec, ptr %i.ed, align 8, !tbaa !89
  %i.ej = load double, ptr %i.ef, align 8, !tbaa !89
  store double %i.ej, ptr %i.eg, align 8, !tbaa !89
  %i.ek = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ek, ptr %i.eh, align 8, !tbaa !89
  %indvars.iv.next.i135.i.1 = add nuw nsw i64 %indvars.iv.i131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit574.unr-lcssa, label %.lr.ph.i130.i, !llvm.loop !21

bb.h:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
    i32 3, label %bb.o
    i32 4, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %switch.tableidx = add i8 %i.h, -5              ; 2 uses
  %i.el = icmp ult i8 %switch.tableidx, 4
  br i1 %i.el, label %switch.lookup, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup:                                    ; preds = %bb.i
  %i.em = icmp sgt i32 %i.p, 0
  br i1 %i.em, label %.lr.ph.i137.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i137.i:                                    ; preds = %switch.lookup
  %i.en = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.en
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.ep = load <4 x float>, ptr %switch.load, align 16, !tbaa !87 ; 3 uses
  %i.eq = load <2 x float>, ptr %i.eo, align 16, !tbaa !87 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %switch.load, i64 24
  %i.es = load float, ptr %i.er, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %switch.load, i64 28
  %i.eu = load float, ptr %i.et, align 4, !tbaa !87
  %i.ev = getelementptr inbounds nuw i8, ptr %switch.load, i64 32
  %i.ew = load float, ptr %i.ev, align 16, !tbaa !87
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
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !84
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !84
  %i.fk = and i64 %sext.i.i, -4
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84
  %i.fn = mul nuw nsw i64 %indvars.iv.i139.i, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 %i.fn ; 3 uses
  %i.fp = uitofp i8 %i.fj to float                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fr = uitofp i8 %i.fg to float
  %i.fs = fadd nnan float %i.fr, -1.275000e+02    ; 2 uses
  %i.ft = uitofp i8 %i.fm to float
  %i.fu = fadd float %i.ft, -1.275000e+02         ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fb, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.fz, <2 x float> %i.fx)
  %i.gb = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.gc, <2 x float> %i.ga) ; 3 uses
  %i.ge = fcmp ogt <2 x float> %i.gd, splat (float 2.550000e+02) ; 2 uses
  %i.gf = extractelement <2 x i1> %i.ge, i64 1
  %i.gg = extractelement <2 x float> %i.gd, i64 1
  %i.gh = fptoui float %i.gg to i8
  %i.gi = select i1 %i.gf, i8 -1, i8 %i.gh
  store i8 %i.gi, ptr %i.fq, align 1, !tbaa !84
  %i.gj = extractelement <2 x i1> %i.ge, i64 0
  %i.gk = extractelement <2 x float> %i.gd, i64 0
  %i.gl = fptoui float %i.gk to i8
  %i.gm = select i1 %i.gj, i8 -1, i8 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !84
  %i.go = fmul float %i.eu, %i.fs
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fp, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fu, float %i.gp) ; 2 uses
  %i.gr = fcmp ogt float %i.gq, 2.550000e+02
  %.sroa.speculated.2.i.i.i = select i1 %i.gr, float 2.550000e+02, float %i.gq
  %i.gs = fptoui float %.sroa.speculated.2.i.i.i to i8
  store i8 %i.gs, ptr %i.fo, align 1, !tbaa !84
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i138.i
  br i1 %exitcond.not.i141.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.j, !llvm.loop !22

bb.k:                                             ; preds = %bb.h
  %switch.tableidx495 = add i8 %i.h, -5           ; 2 uses
  %i.gt = icmp ult i8 %switch.tableidx495, 4
  br i1 %i.gt, label %switch.lookup496, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup496:                                 ; preds = %bb.k
  %i.gu = icmp sgt i32 %i.p, 0
  br i1 %i.gu, label %.lr.ph.i143.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i143.i:                                    ; preds = %switch.lookup496
  %i.gv = zext nneg i8 %switch.tableidx495 to i64
  %switch.gep497 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.gv
  %switch.load498 = load ptr, ptr %switch.gep497, align 8 ; 5 uses
  %i.gw = load float, ptr %switch.load498, align 16, !tbaa !87
  %i.gx = getelementptr inbounds nuw i8, ptr %switch.load498, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !87
  %i.gz = getelementptr inbounds nuw i8, ptr %switch.load498, i64 8
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %switch.load498, i64 12
  %i.hc = getelementptr inbounds nuw i8, ptr %switch.load498, i64 28
  %i.hd = load <4 x float>, ptr %i.hb, align 4, !tbaa !87 ; 3 uses
  %i.he = load <2 x float>, ptr %i.hc, align 4, !tbaa !87 ; 2 uses
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
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !86
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i145.i, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !86
  %i.hr = and i64 %sext.i146.i, -4
  %i.hs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !86
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
  store i16 %i.ih, ptr %i.hw, align 2, !tbaa !86
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
  store <2 x i16> %i.ir, ptr %i.hu, align 2, !tbaa !86
  %indvars.iv.next.i151.i = add nuw nsw i64 %indvars.iv.i145.i, 1 ; 2 uses
  %exitcond.not.i152.i = icmp eq i64 %indvars.iv.next.i151.i, %wide.trip.count.i144.i
  br i1 %exitcond.not.i152.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.l, !llvm.loop !23

bb.m:                                             ; preds = %bb.h
  %switch.tableidx499 = add i8 %i.h, -5           ; 2 uses
  %i.is = icmp ult i8 %switch.tableidx499, 4
  br i1 %i.is, label %switch.lookup500, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup500:                                 ; preds = %bb.m
  %i.it = icmp sgt i32 %i.p, 0
  br i1 %i.it, label %.lr.ph.i154.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i154.i:                                    ; preds = %switch.lookup500
  %i.iu = zext nneg i8 %switch.tableidx499 to i64
  %switch.gep501 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.iu
  %switch.load502 = load ptr, ptr %switch.gep501, align 8 ; 5 uses
  %i.iv = load float, ptr %switch.load502, align 16, !tbaa !87
  %i.iw = getelementptr inbounds nuw i8, ptr %switch.load502, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !87
  %i.iy = getelementptr inbounds nuw i8, ptr %switch.load502, i64 8
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !87
  %i.ja = getelementptr inbounds nuw i8, ptr %switch.load502, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %switch.load502, i64 28
  %i.jc = load <4 x float>, ptr %i.ja, align 4, !tbaa !87 ; 3 uses
  %i.jd = load <2 x float>, ptr %i.jb, align 4, !tbaa !87 ; 2 uses
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
  %i.jx = fadd nnan float %i.jw, f0xCF000000      ; 2 uses
  %i.jy = fmul float %i.ix, %i.jx
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.ju, float %i.jy)
  %i.ka = uitofp i32 %i.js to float
  %i.kb = fadd float %i.ka, f0xCF000000           ; 2 uses
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.kb, float %i.jz) ; 2 uses
  %i.kd = fcmp ogt float %i.kc, f0x4F800000
  %.sroa.speculated.i.i161.i = select i1 %i.kd, float f0x4F800000, float %i.kc
  %i.ke = fptoui float %.sroa.speculated.i.i161.i to i32
  store i32 %i.ke, ptr %i.jv, align 4, !tbaa !6
  %i.kf = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %i.ji, %i.kg
  %i.ki = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.kj, <2 x float> %i.kh)
  %i.kl = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.km, <2 x float> %i.kk) ; 2 uses
  %i.ko = fcmp ogt <2 x float> %i.kn, splat (float f0x4F800000)
  %i.kp = select <2 x i1> %i.ko, <2 x float> splat (float f0x4F800000), <2 x float> %i.kn
  %i.kq = fptoui <2 x float> %i.kp to <2 x i32>
  store <2 x i32> %i.kq, ptr %i.jt, align 4, !tbaa !6
  %indvars.iv.next.i164.i = add nuw nsw i64 %indvars.iv.i156.i, 1 ; 2 uses
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i164.i, %wide.trip.count.i155.i
  br i1 %exitcond.not.i165.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.n, !llvm.loop !24

bb.o:                                             ; preds = %bb.h
  %switch.tableidx503 = add i8 %i.h, -5           ; 2 uses
  %i.kr = icmp ult i8 %switch.tableidx503, 4
  br i1 %i.kr, label %switch.lookup504, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup504:                                 ; preds = %bb.o
  %i.ks = icmp sgt i32 %i.p, 0
  br i1 %i.ks, label %.lr.ph.i167.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i167.i:                                    ; preds = %switch.lookup504
  %i.kt = zext nneg i8 %switch.tableidx503 to i64
  %switch.gep505 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.kt
  %switch.load506 = load ptr, ptr %switch.gep505, align 8 ; 5 uses
  %i.ku = load float, ptr %switch.load506, align 16, !tbaa !87
  %i.kv = getelementptr inbounds nuw i8, ptr %switch.load506, i64 4
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %switch.load506, i64 8
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !87
  %i.kz = getelementptr inbounds nuw i8, ptr %switch.load506, i64 12
  %i.la = getelementptr inbounds nuw i8, ptr %switch.load506, i64 28
  %i.lb = load <4 x float>, ptr %i.kz, align 4, !tbaa !87 ; 3 uses
  %i.lc = load <2 x float>, ptr %i.la, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i168.i = zext nneg i32 %i.p to i64
  %i.ld = shufflevector <4 x float> %i.lb, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.le = shufflevector <4 x float> %i.lb, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.lf = shufflevector <2 x float> %i.lc, <2 x float> %i.le, <2 x i32> <i32 1, i32 3>
  %i.lg = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> %i.lb, <2 x i32> <i32 0, i32 5>
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i177.i, %bb.p ] ; 4 uses
  %i.li = shl nuw i64 %indvars.iv.i169.i, 33
  %sext.i170.i = ashr exact i64 %i.li, 32         ; 2 uses
  %i.lj = or i64 %sext.i170.i, 2
  %i.lk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !87
  %.idx.i171.i = shl nuw nsw i64 %indvars.iv.i169.i, 3
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i171.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !87 ; 2 uses
  %i.lp = and i64 %sext.i170.i, -4
  %i.lq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !87
  %.idx27.i173.i = mul nuw nsw i64 %indvars.iv.i169.i, 12
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i173.i ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = fadd float %i.ll, -5.000000e-01         ; 2 uses
  %i.lv = fmul float %i.kw, %i.lu
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.lo, float %i.lv)
  %i.lx = fadd float %i.lr, -5.000000e-01         ; 2 uses
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.lx, float %i.lw) ; 2 uses
  %i.lz = fcmp ogt float %i.ly, 1.000000e+00
  %.sroa.speculated.i.i174.i = select i1 %i.lz, float 1.000000e+00, float %i.ly ; 2 uses
  %i.ma = fcmp ogt float %.sroa.speculated.i.i174.i, 0.000000e+00
  %.sroa.speculated14.i.i.i = select i1 %i.ma, float %.sroa.speculated.i.i174.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i.i, ptr %i.lt, align 4, !tbaa !87
  %i.mb = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.lh, %i.mc
  %i.me = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.mf, <2 x float> %i.md)
  %i.mh = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> %i.mi, <2 x float> %i.mg) ; 2 uses
  %i.mk = fcmp ogt <2 x float> %i.mj, splat (float 1.000000e+00)
  %i.ml = select <2 x i1> %i.mk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mj ; 2 uses
  %i.mm = fcmp ogt <2 x float> %i.ml, zeroinitializer
  %i.mn = select <2 x i1> %i.mm, <2 x float> %i.ml, <2 x float> zeroinitializer
  store <2 x float> %i.mn, ptr %i.ls, align 4, !tbaa !87
  %indvars.iv.next.i177.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i178.i = icmp eq i64 %indvars.iv.next.i177.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i178.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.p, !llvm.loop !25

bb.q:                                             ; preds = %bb.h
  %switch.tableidx507 = add i8 %i.h, -5           ; 2 uses
  %i.mo = icmp ult i8 %switch.tableidx507, 4
  br i1 %i.mo, label %switch.lookup508, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup508:                                 ; preds = %bb.q
  %i.mp = icmp sgt i32 %i.p, 0
  br i1 %i.mp, label %.lr.ph.i180.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i180.i:                                    ; preds = %switch.lookup508
  %i.mq = zext nneg i8 %switch.tableidx507 to i64
  %switch.gep509 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.mq
  %switch.load510 = load ptr, ptr %switch.gep509, align 8 ; 4 uses
  %i.mr = load float, ptr %switch.load510, align 16, !tbaa !87
  %i.ms = fpext float %i.mr to double
  %i.mt = getelementptr inbounds nuw i8, ptr %switch.load510, i64 4
  %i.mu = load <2 x float>, ptr %i.mt, align 4, !tbaa !87
  %i.mv = getelementptr inbounds nuw i8, ptr %switch.load510, i64 12
  %i.mw = getelementptr inbounds nuw i8, ptr %switch.load510, i64 28
  %i.mx = load <4 x float>, ptr %i.mv, align 4, !tbaa !87 ; 3 uses
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.mz = fpext <2 x float> %i.my to <2 x double>
  %i.na = load <2 x float>, ptr %i.mw, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i181.i = zext nneg i32 %i.p to i64
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> %i.mx, <2 x i32> <i32 0, i32 5>
  %i.nd = shufflevector <4 x float> %i.mx, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ne = shufflevector <2 x float> %i.na, <2 x float> %i.nd, <2 x i32> <i32 1, i32 3>
  %i.nf = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ms, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i180.i
  %indvars.iv.i182.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i193.i, %bb.r ] ; 4 uses
  %i.ng = shl nuw i64 %indvars.iv.i182.i, 33
  %sext.i183.i = ashr exact i64 %i.ng, 32         ; 2 uses
  %i.nh = or i64 %sext.i183.i, 2
  %i.ni = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nh
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !89
  %.idx.i184.i = shl nuw nsw i64 %indvars.iv.i182.i, 4
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i184.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !89 ; 2 uses
  %i.nn = and i64 %sext.i183.i, -4
  %i.no = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nn
  %i.np = load double, ptr %i.no, align 8, !tbaa !89
  %.idx27.i186.i = mul nuw nsw i64 %indvars.iv.i182.i, 24
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i186.i ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.np, i64 1
  %i.nu = fptrunc <2 x double> %i.nt to <2 x float>
  %i.nv = fadd <2 x float> %i.nu, splat (float -5.000000e-01) ; 3 uses
  %i.nw = fmul <2 x float> %i.mu, %i.nv
  %i.nx = fpext <2 x float> %i.nw to <2 x double>
  %i.ny = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.nm, i64 0
  %i.nz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.ny, <2 x double> %i.nx)
  %i.oa = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.nz)
  %i.ob = fptrunc double %i.oa to float           ; 2 uses
  %i.oc = fcmp ogt float %i.ob, 1.000000e+00
  %.sroa.speculated.i.i187.i = select i1 %i.oc, float 1.000000e+00, float %i.ob ; 2 uses
  %i.od = fpext float %.sroa.speculated.i.i187.i to double
  %i.oe = fcmp ogt float %.sroa.speculated.i.i187.i, 0.000000e+00
  %.sroa.speculated14.i.i188.i = select i1 %i.oe, double %i.od, double 0.000000e+00
  store double %.sroa.speculated14.i.i188.i, ptr %i.nr, align 8, !tbaa !89
  %i.of = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.og = fmul <2 x float> %i.nc, %i.of
  %i.oh = fpext <2 x float> %i.og to <2 x double>
  %i.oi = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.oj, <2 x double> %i.oh)
  %i.ol = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.om = fmul <2 x float> %i.ne, %i.ol
  %i.on = fpext <2 x float> %i.om to <2 x double>
  %i.oo = fadd <2 x double> %i.ok, %i.on
  %i.op = fptrunc <2 x double> %i.oo to <2 x float> ; 2 uses
  %i.oq = fcmp ogt <2 x float> %i.op, splat (float 1.000000e+00)
  %i.or = select <2 x i1> %i.oq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.op ; 2 uses
  %i.os = fpext <2 x float> %i.or to <2 x double>
  %i.ot = fcmp ogt <2 x float> %i.or, zeroinitializer
  %i.ou = select <2 x i1> %i.ot, <2 x double> %i.os, <2 x double> zeroinitializer
  store <2 x double> %i.ou, ptr %i.nq, align 8, !tbaa !89
  %indvars.iv.next.i193.i = add nuw nsw i64 %indvars.iv.i182.i, 1 ; 2 uses
  %exitcond.not.i194.i = icmp eq i64 %indvars.iv.next.i193.i, %wide.trip.count.i181.i
  br i1 %exitcond.not.i194.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.r, !llvm.loop !26

bb.s:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %switch.tableidx511 = add i8 %i.h, -5           ; 2 uses
  %i.ov = icmp ult i8 %switch.tableidx511, 4
  br i1 %i.ov, label %switch.lookup512, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup512:                                 ; preds = %bb.t
  %i.ow = icmp sgt i32 %i.p, 0
  br i1 %i.ow, label %.lr.ph.i196.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i196.i:                                    ; preds = %switch.lookup512
  %i.ox = zext nneg i8 %switch.tableidx511 to i64
  %switch.gep513 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ox
  %switch.load514 = load ptr, ptr %switch.gep513, align 8 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %switch.load514, i64 16
  %i.oz = load <4 x float>, ptr %switch.load514, align 16, !tbaa !87 ; 7 uses
  %i.pa = load <2 x float>, ptr %i.oy, align 16, !tbaa !87 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %switch.load514, i64 24
  %i.pc = load float, ptr %i.pb, align 8, !tbaa !87 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %switch.load514, i64 28
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !87 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %switch.load514, i64 32
  %i.pg = load float, ptr %i.pf, align 16, !tbaa !87 ; 2 uses
  %wide.trip.count.i197.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check442 = icmp ult i32 %i.p, 8
  br i1 %min.iters.check442, label %scalar.ph441.preheader, label %vector.memcheck443

vector.memcheck443:                               ; preds = %.lr.ph.i196.i
  %i.ph = mul nuw nsw i64 %wide.trip.count.i197.i, 3 ; 2 uses
  %i.pi = getelementptr i8, ptr %3, i64 %i.ph
  %i.pj = getelementptr i8, ptr %2, i64 %i.ph
  %bound0444 = icmp ult ptr %3, %i.pj
  %bound1445 = icmp ult ptr %2, %i.pi
  %found.conflict446 = and i1 %bound0444, %bound1445
  br i1 %found.conflict446, label %scalar.ph441.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %vector.memcheck443
  %n.vec448 = and i64 %wide.trip.count.i197.i, 2147483640 ; 3 uses
  %broadcast.splat450 = shufflevector <4 x float> %i.oz, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat452 = shufflevector <4 x float> %i.oz, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat454 = shufflevector <4 x float> %i.oz, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat456 = shufflevector <4 x float> %i.oz, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat458 = shufflevector <2 x float> %i.pa, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat460 = shufflevector <2 x float> %i.pa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert461 = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat462 = shufflevector <8 x float> %broadcast.splatinsert461, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert463 = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat464 = shufflevector <8 x float> %broadcast.splatinsert463, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert465 = insertelement <8 x float> poison, float %i.pg, i64 0
  %broadcast.splat466 = shufflevector <8 x float> %broadcast.splatinsert465, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph447
  %index468 = phi i64 [ 0, %vector.ph447 ], [ %index.next470, %vector.body467 ] ; 9 uses
  %i.pk = mul nuw nsw i64 %index468, 3            ; 2 uses
  %i.pl = mul nuw i64 %index468, 3
  %i.pm = mul nuw i64 %index468, 3
  %i.pn = mul nuw i64 %index468, 3
  %i.po = mul nuw i64 %index468, 3
  %i.pp = mul nuw i64 %index468, 3
  %i.pq = mul nuw i64 %index468, 3
  %i.pr = mul nuw i64 %index468, 3
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 %i.pk ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 %i.pl ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 3
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 %i.pm ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 6
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 9
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 %i.po ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 %i.pp ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 15
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pq ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 18
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.pr ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 21
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 7
  %i.qk = getelementptr inbounds nuw i8, ptr %i.px, i64 10
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 13
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qd, i64 19
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 22
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pt, i64 5
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.px, i64 11
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pz, i64 14
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qb, i64 17
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qd, i64 20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qf, i64 23
  %i.qx = load i8, ptr %i.qh, align 1, !tbaa !84, !alias.scope !90
  %i.qy = load i8, ptr %i.qi, align 1, !tbaa !84, !alias.scope !90
  %i.qz = load i8, ptr %i.qj, align 1, !tbaa !84, !alias.scope !90
  %i.ra = load i8, ptr %i.qk, align 1, !tbaa !84, !alias.scope !90
  %i.rb = load i8, ptr %i.ql, align 1, !tbaa !84, !alias.scope !90
  %i.rc = load i8, ptr %i.qm, align 1, !tbaa !84, !alias.scope !90
  %i.rd = load i8, ptr %i.qn, align 1, !tbaa !84, !alias.scope !90
  %i.re = load i8, ptr %i.qo, align 1, !tbaa !84, !alias.scope !90
  %i.rf = insertelement <8 x i8> poison, i8 %i.qx, i64 0
  %i.rg = insertelement <8 x i8> %i.rf, i8 %i.qy, i64 1
  %i.rh = insertelement <8 x i8> %i.rg, i8 %i.qz, i64 2
  %i.ri = insertelement <8 x i8> %i.rh, i8 %i.ra, i64 3
  %i.rj = insertelement <8 x i8> %i.ri, i8 %i.rb, i64 4
  %i.rk = insertelement <8 x i8> %i.rj, i8 %i.rc, i64 5
  %i.rl = insertelement <8 x i8> %i.rk, i8 %i.rd, i64 6
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 7
  %i.rn = uitofp <8 x i8> %i.rm to <8 x float>    ; 3 uses
  %i.ro = load i8, ptr %i.ps, align 1, !tbaa !84, !alias.scope !90
  %i.rp = load i8, ptr %i.pu, align 1, !tbaa !84, !alias.scope !90
  %i.rq = load i8, ptr %i.pw, align 1, !tbaa !84, !alias.scope !90
  %i.rr = load i8, ptr %i.py, align 1, !tbaa !84, !alias.scope !90
  %i.rs = load i8, ptr %i.qa, align 1, !tbaa !84, !alias.scope !90
  %i.rt = load i8, ptr %i.qc, align 1, !tbaa !84, !alias.scope !90
  %i.ru = load i8, ptr %i.qe, align 1, !tbaa !84, !alias.scope !90
  %i.rv = load i8, ptr %i.qg, align 1, !tbaa !84, !alias.scope !90
  %i.rw = insertelement <8 x i8> poison, i8 %i.ro, i64 0
  %i.rx = insertelement <8 x i8> %i.rw, i8 %i.rp, i64 1
  %i.ry = insertelement <8 x i8> %i.rx, i8 %i.rq, i64 2
  %i.rz = insertelement <8 x i8> %i.ry, i8 %i.rr, i64 3
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rs, i64 4
  %i.sb = insertelement <8 x i8> %i.sa, i8 %i.rt, i64 5
  %i.sc = insertelement <8 x i8> %i.sb, i8 %i.ru, i64 6
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 7
  %i.se = uitofp <8 x i8> %i.sd to <8 x float>
  %i.sf = fadd nnan <8 x float> %i.se, splat (float -1.275000e+02) ; 3 uses
  %i.sg = fmul <8 x float> %broadcast.splat452, %i.sf
  %i.sh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat450, <8 x float> %i.rn, <8 x float> %i.sg)
  %i.si = load i8, ptr %i.qp, align 1, !tbaa !84, !alias.scope !90
  %i.sj = load i8, ptr %i.qq, align 1, !tbaa !84, !alias.scope !90
  %i.sk = load i8, ptr %i.qr, align 1, !tbaa !84, !alias.scope !90
  %i.sl = load i8, ptr %i.qs, align 1, !tbaa !84, !alias.scope !90
  %i.sm = load i8, ptr %i.qt, align 1, !tbaa !84, !alias.scope !90
  %i.sn = load i8, ptr %i.qu, align 1, !tbaa !84, !alias.scope !90
  %i.so = load i8, ptr %i.qv, align 1, !tbaa !84, !alias.scope !90
  %i.sp = load i8, ptr %i.qw, align 1, !tbaa !84, !alias.scope !90
  %i.sq = insertelement <8 x i8> poison, i8 %i.si, i64 0
  %i.sr = insertelement <8 x i8> %i.sq, i8 %i.sj, i64 1
  %i.ss = insertelement <8 x i8> %i.sr, i8 %i.sk, i64 2
  %i.st = insertelement <8 x i8> %i.ss, i8 %i.sl, i64 3
  %i.su = insertelement <8 x i8> %i.st, i8 %i.sm, i64 4
  %i.sv = insertelement <8 x i8> %i.su, i8 %i.sn, i64 5
  %i.sw = insertelement <8 x i8> %i.sv, i8 %i.so, i64 6
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 7
  %i.sy = uitofp <8 x i8> %i.sx to <8 x float>
  %i.sz = fadd <8 x float> %i.sy, splat (float -1.275000e+02) ; 3 uses
  %i.ta = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat454, <8 x float> %i.sz, <8 x float> %i.sh) ; 2 uses
  %i.tb = fcmp ogt <8 x float> %i.ta, splat (float 2.550000e+02)
  %i.tc = select <8 x i1> %i.tb, <8 x float> splat (float 2.550000e+02), <8 x float> %i.ta
  %i.td = fptoui <8 x float> %i.tc to <8 x i8>
  %i.te = fmul <8 x float> %broadcast.splat458, %i.sf
  %i.tf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat456, <8 x float> %i.rn, <8 x float> %i.te)
  %i.tg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat460, <8 x float> %i.sz, <8 x float> %i.tf) ; 2 uses
  %i.th = fmul <8 x float> %broadcast.splat464, %i.sf
  %i.ti = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat462, <8 x float> %i.rn, <8 x float> %i.th)
  %i.tj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat466, <8 x float> %i.sz, <8 x float> %i.ti) ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 %i.pk
  %i.tl = shufflevector <8 x float> %i.tj, <8 x float> %i.tg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tm = fcmp ogt <16 x float> %i.tl, splat (float 2.550000e+02)
  %i.tn = shufflevector <8 x float> %i.tj, <8 x float> %i.tg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.to = select <16 x i1> %i.tm, <16 x float> splat (float 2.550000e+02), <16 x float> %i.tn
  %i.tp = fptoui <16 x float> %i.to to <16 x i8>
  %i.tq = shufflevector <8 x i8> %i.td, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec469 = shufflevector <16 x i8> %i.tp, <16 x i8> %i.tq, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec469, ptr %i.tk, align 1, !alias.scope !91, !noalias !90
  %index.next470 = add nuw i64 %index468, 8       ; 2 uses
  %i.tr = icmp eq i64 %index.next470, %n.vec448
  br i1 %i.tr, label %middle.block471, label %vector.body467, !llvm.loop !30

middle.block471:                                  ; preds = %vector.body467
  %cmp.n472 = icmp eq i64 %n.vec448, %wide.trip.count.i197.i
  br i1 %cmp.n472, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph441.preheader

scalar.ph441.preheader:                           ; preds = %vector.memcheck443, %.lr.ph.i196.i, %middle.block471
  %indvars.iv.i198.i.ph = phi i64 [ 0, %vector.memcheck443 ], [ 0, %.lr.ph.i196.i ], [ %n.vec448, %middle.block471 ]
  %i.ts = shufflevector <2 x float> %i.pa, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> %i.oz, <2 x i32> <i32 0, i32 5>
  %i.tu = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.tv = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.tw = shufflevector <2 x float> %i.pa, <2 x float> %i.tv, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph441

scalar.ph441:                                     ; preds = %scalar.ph441.preheader, %scalar.ph441
  %indvars.iv.i198.i = phi i64 [ %indvars.iv.next.i203.i, %scalar.ph441 ], [ %indvars.iv.i198.i.ph, %scalar.ph441.preheader ] ; 2 uses
  %i.tx = mul nuw nsw i64 %indvars.iv.i198.i, 3   ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %2, i64 %i.tx ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 2
  %i.ub = load i8, ptr %i.tz, align 1, !tbaa !84
  %i.uc = uitofp i8 %i.ub to float                ; 2 uses
  %i.ud = load i8, ptr %i.ty, align 1, !tbaa !84
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !84
  %i.uf = uitofp i8 %i.ud to float
  %i.ug = fadd nnan float %i.uf, -1.275000e+02    ; 2 uses
  %i.uh = uitofp i8 %i.ue to float
  %i.ui = fadd float %i.uh, -1.275000e+02         ; 2 uses
  %i.uj = insertelement <2 x float> poison, float %i.ug, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ul = fmul <2 x float> %i.tt, %i.uk
  %i.um = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %i.un, <2 x float> %i.ul)
  %i.up = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tw, <2 x float> %i.uq, <2 x float> %i.uo) ; 3 uses
  %i.us = fcmp ogt <2 x float> %i.ur, splat (float 2.550000e+02) ; 2 uses
  %i.ut = extractelement <2 x i1> %i.us, i64 1
  %i.uu = extractelement <2 x float> %i.ur, i64 1
  %i.uv = fptoui float %i.uu to i8
  %i.uw = select i1 %i.ut, i8 -1, i8 %i.uv
  %i.ux = extractelement <2 x i1> %i.us, i64 0
  %i.uy = extractelement <2 x float> %i.ur, i64 0
  %i.uz = fptoui float %i.uy to i8
  %i.va = select i1 %i.ux, i8 -1, i8 %i.uz
  %i.vb = fmul float %i.pe, %i.ug
  %i.vc = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.uc, float %i.vb)
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.pg, float %i.ui, float %i.vc) ; 2 uses
  %i.ve = fcmp ogt float %i.vd, 2.550000e+02
  %.sroa.speculated.2.i.i201.i = select i1 %i.ve, float 2.550000e+02, float %i.vd
  %i.vf = fptoui float %.sroa.speculated.2.i.i201.i to i8
  %i.vg = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  store i8 %i.vf, ptr %i.vg, align 1
  %.sroa.4.0..sroa_idx.i202.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  store i8 %i.va, ptr %.sroa.4.0..sroa_idx.i202.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 2
  store i8 %i.uw, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next.i203.i = add nuw nsw i64 %indvars.iv.i198.i, 1 ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %indvars.iv.next.i203.i, %wide.trip.count.i197.i
  br i1 %exitcond.not.i204.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph441, !llvm.loop !31

bb.u:                                             ; preds = %bb.s
  %switch.tableidx515 = add i8 %i.h, -5           ; 2 uses
  %i.vh = icmp ult i8 %switch.tableidx515, 4
  br i1 %i.vh, label %switch.lookup516, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup516:                                 ; preds = %bb.u
  %i.vi = icmp sgt i32 %i.p, 0
  br i1 %i.vi, label %.lr.ph.i206.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i206.i:                                    ; preds = %switch.lookup516
  %i.vj = zext nneg i8 %switch.tableidx515 to i64
  %switch.gep517 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.vj
  %switch.load518 = load ptr, ptr %switch.gep517, align 8 ; 5 uses
  %i.vk = load float, ptr %switch.load518, align 16, !tbaa !87 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %switch.load518, i64 4
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !87 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %switch.load518, i64 8
  %i.vo = load float, ptr %i.vn, align 8, !tbaa !87 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %switch.load518, i64 12
  %i.vq = getelementptr inbounds nuw i8, ptr %switch.load518, i64 28
  %i.vr = load <4 x float>, ptr %i.vp, align 4, !tbaa !87 ; 7 uses
  %i.vs = load <2 x float>, ptr %i.vq, align 4, !tbaa !87 ; 4 uses
  %wide.trip.count.i207.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check404 = icmp ult i32 %i.p, 8
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.memcheck405

vector.memcheck405:                               ; preds = %.lr.ph.i206.i
  %i.vt = mul nuw nsw i64 %wide.trip.count.i207.i, 6 ; 2 uses
  %i.vu = getelementptr i8, ptr %3, i64 %i.vt
  %i.vv = getelementptr i8, ptr %2, i64 %i.vt
  %bound0406 = icmp ult ptr %3, %i.vv
  %bound1407 = icmp ult ptr %2, %i.vu
  %found.conflict408 = and i1 %bound0406, %bound1407
  br i1 %found.conflict408, label %scalar.ph403.preheader, label %vector.ph409

vector.ph409:                                     ; preds = %vector.memcheck405
  %n.vec410 = and i64 %wide.trip.count.i207.i, 2147483640 ; 3 uses
  %broadcast.splatinsert411 = insertelement <8 x float> poison, float %i.vk, i64 0
  %broadcast.splat412 = shufflevector <8 x float> %broadcast.splatinsert411, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert413 = insertelement <8 x float> poison, float %i.vm, i64 0
  %broadcast.splat414 = shufflevector <8 x float> %broadcast.splatinsert413, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert415 = insertelement <8 x float> poison, float %i.vo, i64 0
  %broadcast.splat416 = shufflevector <8 x float> %broadcast.splatinsert415, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat418 = shufflevector <4 x float> %i.vr, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat420 = shufflevector <4 x float> %i.vr, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat422 = shufflevector <4 x float> %i.vr, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat424 = shufflevector <4 x float> %i.vr, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat426 = shufflevector <2 x float> %i.vs, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat428 = shufflevector <2 x float> %i.vs, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph409
  %index430 = phi i64 [ 0, %vector.ph409 ], [ %index.next432, %vector.body429 ] ; 9 uses
  %i.vw = mul nuw nsw i64 %index430, 3            ; 2 uses
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.vw ; 3 uses
  %.idx488 = mul nuw i64 %index430, 6
  %i.vy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx488 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 6
  %.idx489 = mul nuw i64 %index430, 6
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx489 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  %.idx490 = mul nuw i64 %index430, 6
  %i.wc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx490 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 18
  %.idx491 = mul nuw i64 %index430, 6
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 %.idx491 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %.idx492 = mul nuw i64 %index430, 6
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx492 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 30
  %.idx493 = mul nuw i64 %index430, 6
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx493 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %.idx494 = mul nuw i64 %index430, 6
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx494 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 42
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wa, i64 14
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 20
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 26
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wi, i64 38
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 44
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vy, i64 10
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wc, i64 22
  %i.wy = getelementptr inbounds nuw i8, ptr %i.we, i64 28
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wg, i64 34
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wk, i64 46
  %i.xc = load i16, ptr %i.wm, align 2, !tbaa !86, !alias.scope !94
  %i.xd = load i16, ptr %i.wn, align 2, !tbaa !86, !alias.scope !94
  %i.xe = load i16, ptr %i.wo, align 2, !tbaa !86, !alias.scope !94
  %i.xf = load i16, ptr %i.wp, align 2, !tbaa !86, !alias.scope !94
  %i.xg = load i16, ptr %i.wq, align 2, !tbaa !86, !alias.scope !94
  %i.xh = load i16, ptr %i.wr, align 2, !tbaa !86, !alias.scope !94
  %i.xi = load i16, ptr %i.ws, align 2, !tbaa !86, !alias.scope !94
  %i.xj = load i16, ptr %i.wt, align 2, !tbaa !86, !alias.scope !94
  %i.xk = insertelement <8 x i16> poison, i16 %i.xc, i64 0
  %i.xl = insertelement <8 x i16> %i.xk, i16 %i.xd, i64 1
  %i.xm = insertelement <8 x i16> %i.xl, i16 %i.xe, i64 2
  %i.xn = insertelement <8 x i16> %i.xm, i16 %i.xf, i64 3
  %i.xo = insertelement <8 x i16> %i.xn, i16 %i.xg, i64 4
  %i.xp = insertelement <8 x i16> %i.xo, i16 %i.xh, i64 5
  %i.xq = insertelement <8 x i16> %i.xp, i16 %i.xi, i64 6
  %i.xr = insertelement <8 x i16> %i.xq, i16 %i.xj, i64 7
  %i.xs = uitofp <8 x i16> %i.xr to <8 x float>   ; 3 uses
  %i.xt = load i16, ptr %i.vx, align 2, !tbaa !86, !alias.scope !94
  %i.xu = load i16, ptr %i.vz, align 2, !tbaa !86, !alias.scope !94
  %i.xv = load i16, ptr %i.wb, align 2, !tbaa !86, !alias.scope !94
  %i.xw = load i16, ptr %i.wd, align 2, !tbaa !86, !alias.scope !94
  %i.xx = load i16, ptr %i.wf, align 2, !tbaa !86, !alias.scope !94
  %i.xy = load i16, ptr %i.wh, align 2, !tbaa !86, !alias.scope !94
  %i.xz = load i16, ptr %i.wj, align 2, !tbaa !86, !alias.scope !94
  %i.ya = load i16, ptr %i.wl, align 2, !tbaa !86, !alias.scope !94
  %i.yb = insertelement <8 x i16> poison, i16 %i.xt, i64 0
  %i.yc = insertelement <8 x i16> %i.yb, i16 %i.xu, i64 1
  %i.yd = insertelement <8 x i16> %i.yc, i16 %i.xv, i64 2
  %i.ye = insertelement <8 x i16> %i.yd, i16 %i.xw, i64 3
  %i.yf = insertelement <8 x i16> %i.ye, i16 %i.xx, i64 4
  %i.yg = insertelement <8 x i16> %i.yf, i16 %i.xy, i64 5
  %i.yh = insertelement <8 x i16> %i.yg, i16 %i.xz, i64 6
  %i.yi = insertelement <8 x i16> %i.yh, i16 %i.ya, i64 7
  %i.yj = uitofp <8 x i16> %i.yi to <8 x float>
  %i.yk = fadd nnan <8 x float> %i.yj, splat (float -3.276750e+04) ; 3 uses
  %i.yl = fmul <8 x float> %broadcast.splat414, %i.yk
  %i.ym = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat412, <8 x float> %i.xs, <8 x float> %i.yl)
  %i.yn = load i16, ptr %i.wu, align 2, !tbaa !86, !alias.scope !94
  %i.yo = load i16, ptr %i.wv, align 2, !tbaa !86, !alias.scope !94
  %i.yp = load i16, ptr %i.ww, align 2, !tbaa !86, !alias.scope !94
  %i.yq = load i16, ptr %i.wx, align 2, !tbaa !86, !alias.scope !94
  %i.yr = load i16, ptr %i.wy, align 2, !tbaa !86, !alias.scope !94
  %i.ys = load i16, ptr %i.wz, align 2, !tbaa !86, !alias.scope !94
  %i.yt = load i16, ptr %i.xa, align 2, !tbaa !86, !alias.scope !94
  %i.yu = load i16, ptr %i.xb, align 2, !tbaa !86, !alias.scope !94
  %i.yv = insertelement <8 x i16> poison, i16 %i.yn, i64 0
  %i.yw = insertelement <8 x i16> %i.yv, i16 %i.yo, i64 1
  %i.yx = insertelement <8 x i16> %i.yw, i16 %i.yp, i64 2
  %i.yy = insertelement <8 x i16> %i.yx, i16 %i.yq, i64 3
  %i.yz = insertelement <8 x i16> %i.yy, i16 %i.yr, i64 4
  %i.za = insertelement <8 x i16> %i.yz, i16 %i.ys, i64 5
  %i.zb = insertelement <8 x i16> %i.za, i16 %i.yt, i64 6
  %i.zc = insertelement <8 x i16> %i.zb, i16 %i.yu, i64 7
  %i.zd = uitofp <8 x i16> %i.zc to <8 x float>
  %i.ze = fadd <8 x float> %i.zd, splat (float -3.276750e+04) ; 3 uses
  %i.zf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat416, <8 x float> %i.ze, <8 x float> %i.ym) ; 2 uses
  %i.zg = fcmp ogt <8 x float> %i.zf, splat (float 6.553500e+04)
  %i.zh = select <8 x i1> %i.zg, <8 x float> splat (float 6.553500e+04), <8 x float> %i.zf
  %i.zi = fptoui <8 x float> %i.zh to <8 x i16>
  %i.zj = fmul <8 x float> %broadcast.splat420, %i.yk
  %i.zk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat418, <8 x float> %i.xs, <8 x float> %i.zj)
  %i.zl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat422, <8 x float> %i.ze, <8 x float> %i.zk) ; 2 uses
  %i.zm = fmul <8 x float> %broadcast.splat426, %i.yk
  %i.zn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat424, <8 x float> %i.xs, <8 x float> %i.zm)
  %i.zo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat428, <8 x float> %i.ze, <8 x float> %i.zn) ; 2 uses
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.vw
  %i.zq = shufflevector <8 x float> %i.zo, <8 x float> %i.zl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zr = fcmp ogt <16 x float> %i.zq, splat (float 6.553500e+04)
  %i.zs = shufflevector <8 x float> %i.zo, <8 x float> %i.zl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zt = select <16 x i1> %i.zr, <16 x float> splat (float 6.553500e+04), <16 x float> %i.zs
  %i.zu = fptoui <16 x float> %i.zt to <16 x i16>
  %i.zv = shufflevector <8 x i16> %i.zi, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec431 = shufflevector <16 x i16> %i.zu, <16 x i16> %i.zv, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec431, ptr %i.zp, align 2, !alias.scope !95, !noalias !94
  %index.next432 = add nuw i64 %index430, 8       ; 2 uses
  %i.zw = icmp eq i64 %index.next432, %n.vec410
  br i1 %i.zw, label %middle.block433, label %vector.body429, !llvm.loop !35

middle.block433:                                  ; preds = %vector.body429
  %cmp.n434 = icmp eq i64 %n.vec410, %wide.trip.count.i207.i
  br i1 %cmp.n434, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %vector.memcheck405, %.lr.ph.i206.i, %middle.block433
  %indvars.iv.i208.i.ph = phi i64 [ 0, %vector.memcheck405 ], [ 0, %.lr.ph.i206.i ], [ %n.vec410, %middle.block433 ]
  %i.zx = shufflevector <2 x float> %i.vs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> %i.vr, <2 x i32> <i32 0, i32 5>
  %i.zz = shufflevector <4 x float> %i.vr, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aaa = shufflevector <4 x float> %i.vr, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aab = shufflevector <2 x float> %i.vs, <2 x float> %i.aaa, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %indvars.iv.i208.i = phi i64 [ %indvars.iv.next.i214.i, %scalar.ph403 ], [ %indvars.iv.i208.i.ph, %scalar.ph403.preheader ] ; 2 uses
  %i.aac = mul nuw nsw i64 %indvars.iv.i208.i, 3  ; 2 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aac ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aag = load i16, ptr %i.aae, align 2, !tbaa !86
  %i.aah = uitofp i16 %i.aag to float             ; 2 uses
  %i.aai = load i16, ptr %i.aad, align 2, !tbaa !86
  %i.aaj = load i16, ptr %i.aaf, align 2, !tbaa !86
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aac ; 2 uses
  %i.aal = insertelement <2 x i16> poison, i16 %i.aaj, i64 0
  %i.aam = insertelement <2 x i16> %i.aal, i16 %i.aai, i64 1
  %i.aan = uitofp <2 x i16> %i.aam to <2 x float>
  %i.aao = fadd <2 x float> %i.aan, splat (float -3.276750e+04) ; 4 uses
  %i.aap = extractelement <2 x float> %i.aao, i64 1
  %i.aaq = fmul float %i.vm, %i.aap
  %i.aar = tail call float @llvm.fmuladd.f32(float %i.vk, float %i.aah, float %i.aaq)
  %i.aas = extractelement <2 x float> %i.aao, i64 0
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.vo, float %i.aas, float %i.aar) ; 2 uses
  %i.aau = fcmp ogt float %i.aat, 6.553500e+04
  %.sroa.speculated.i.i209.i = select i1 %i.aau, float 6.553500e+04, float %i.aat
  %i.aav = fptoui float %.sroa.speculated.i.i209.i to i16
  %i.aaw = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aax = fmul <2 x float> %i.zy, %i.aaw
  %i.aay = insertelement <2 x float> poison, float %i.aah, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.aaz, <2 x float> %i.aax)
  %i.abb = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.abb, <2 x float> %i.aba) ; 2 uses
  %i.abd = fcmp ogt <2 x float> %i.abc, splat (float 6.553500e+04)
  %i.abe = select <2 x i1> %i.abd, <2 x float> splat (float 6.553500e+04), <2 x float> %i.abc
  %i.abf = fptoui <2 x float> %i.abe to <2 x i16>
  store <2 x i16> %i.abf, ptr %i.aak, align 2
  %.sroa.5.0..sroa_idx.i213.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 4
  store i16 %i.aav, ptr %.sroa.5.0..sroa_idx.i213.i, align 2
  %indvars.iv.next.i214.i = add nuw nsw i64 %indvars.iv.i208.i, 1 ; 2 uses
  %exitcond.not.i215.i = icmp eq i64 %indvars.iv.next.i214.i, %wide.trip.count.i207.i
  br i1 %exitcond.not.i215.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph403, !llvm.loop !36

bb.v:                                             ; preds = %bb.s
  %switch.tableidx519 = add i8 %i.h, -5           ; 2 uses
  %i.abg = icmp ult i8 %switch.tableidx519, 4
  br i1 %i.abg, label %switch.lookup520, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup520:                                 ; preds = %bb.v
  %i.abh = icmp sgt i32 %i.p, 0
  br i1 %i.abh, label %.lr.ph.i217.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i217.i:                                    ; preds = %switch.lookup520
  %i.abi = zext nneg i8 %switch.tableidx519 to i64
  %switch.gep521 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.abi
  %switch.load522 = load ptr, ptr %switch.gep521, align 8 ; 5 uses
  %i.abj = load float, ptr %switch.load522, align 16, !tbaa !87 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %switch.load522, i64 4
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !87 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %switch.load522, i64 8
  %i.abn = load float, ptr %i.abm, align 8, !tbaa !87 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %switch.load522, i64 12
  %i.abp = getelementptr inbounds nuw i8, ptr %switch.load522, i64 28
  %i.abq = load <4 x float>, ptr %i.abo, align 4, !tbaa !87 ; 7 uses
  %i.abr = load <2 x float>, ptr %i.abp, align 4, !tbaa !87 ; 4 uses
  %wide.trip.count.i218.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check366 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.memcheck367

vector.memcheck367:                               ; preds = %.lr.ph.i217.i
  %i.abs = mul nuw nsw i64 %wide.trip.count.i218.i, 12 ; 2 uses
  %i.abt = getelementptr i8, ptr %3, i64 %i.abs
  %i.abu = getelementptr i8, ptr %2, i64 %i.abs
  %bound0368 = icmp ult ptr %3, %i.abu
  %bound1369 = icmp ult ptr %2, %i.abt
  %found.conflict370 = and i1 %bound0368, %bound1369
  br i1 %found.conflict370, label %scalar.ph365.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck367
  %n.vec372 = and i64 %wide.trip.count.i218.i, 2147483644 ; 3 uses
  %broadcast.splatinsert373 = insertelement <4 x float> poison, float %i.abj, i64 0
  %broadcast.splat374 = shufflevector <4 x float> %broadcast.splatinsert373, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <4 x float> poison, float %i.abl, i64 0
  %broadcast.splat376 = shufflevector <4 x float> %broadcast.splatinsert375, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert377 = insertelement <4 x float> poison, float %i.abn, i64 0
  %broadcast.splat378 = shufflevector <4 x float> %broadcast.splatinsert377, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat380 = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat382 = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat384 = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat386 = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat388 = shufflevector <2 x float> %i.abr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat390 = shufflevector <2 x float> %i.abr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph371
  %index392 = phi i64 [ 0, %vector.ph371 ], [ %index.next394, %vector.body391 ] ; 5 uses
  %i.abv = mul nuw nsw i64 %index392, 3           ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abv ; 3 uses
  %.idx485 = mul nuw i64 %index392, 12
  %i.abx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx485 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  %.idx486 = mul nuw i64 %index392, 12
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx486 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 24
  %.idx487 = mul nuw i64 %index392, 12
  %i.acb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx487 ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 36
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abz, i64 28
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 40
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abx, i64 20
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abz, i64 32
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acb, i64 44
  %i.acl = load i32, ptr %i.acd, align 4, !tbaa !6, !alias.scope !96
  %i.acm = load i32, ptr %i.ace, align 4, !tbaa !6, !alias.scope !96
  %i.acn = load i32, ptr %i.acf, align 4, !tbaa !6, !alias.scope !96
  %i.aco = load i32, ptr %i.acg, align 4, !tbaa !6, !alias.scope !96
  %i.acp = insertelement <4 x i32> poison, i32 %i.acl, i64 0
  %i.acq = insertelement <4 x i32> %i.acp, i32 %i.acm, i64 1
  %i.acr = insertelement <4 x i32> %i.acq, i32 %i.acn, i64 2
  %i.acs = insertelement <4 x i32> %i.acr, i32 %i.aco, i64 3
  %i.act = uitofp <4 x i32> %i.acs to <4 x float> ; 3 uses
  %i.acu = load i32, ptr %i.abw, align 4, !tbaa !6, !alias.scope !96
  %i.acv = load i32, ptr %i.aby, align 4, !tbaa !6, !alias.scope !96
  %i.acw = load i32, ptr %i.aca, align 4, !tbaa !6, !alias.scope !96
  %i.acx = load i32, ptr %i.acc, align 4, !tbaa !6, !alias.scope !96
  %i.acy = insertelement <4 x i32> poison, i32 %i.acu, i64 0
  %i.acz = insertelement <4 x i32> %i.acy, i32 %i.acv, i64 1
  %i.ada = insertelement <4 x i32> %i.acz, i32 %i.acw, i64 2
  %i.adb = insertelement <4 x i32> %i.ada, i32 %i.acx, i64 3
  %i.adc = uitofp <4 x i32> %i.adb to <4 x float>
  %i.add = fadd nnan <4 x float> %i.adc, splat (float f0xCF000000) ; 3 uses
  %i.ade = fmul <4 x float> %broadcast.splat376, %i.add
  %i.adf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat374, <4 x float> %i.act, <4 x float> %i.ade)
  %i.adg = load i32, ptr %i.ach, align 4, !tbaa !6, !alias.scope !96
  %i.adh = load i32, ptr %i.aci, align 4, !tbaa !6, !alias.scope !96
  %i.adi = load i32, ptr %i.acj, align 4, !tbaa !6, !alias.scope !96
  %i.adj = load i32, ptr %i.ack, align 4, !tbaa !6, !alias.scope !96
  %i.adk = insertelement <4 x i32> poison, i32 %i.adg, i64 0
  %i.adl = insertelement <4 x i32> %i.adk, i32 %i.adh, i64 1
  %i.adm = insertelement <4 x i32> %i.adl, i32 %i.adi, i64 2
  %i.adn = insertelement <4 x i32> %i.adm, i32 %i.adj, i64 3
  %i.ado = uitofp <4 x i32> %i.adn to <4 x float>
  %i.adp = fadd <4 x float> %i.ado, splat (float f0xCF000000) ; 3 uses
  %i.adq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat378, <4 x float> %i.adp, <4 x float> %i.adf) ; 2 uses
  %i.adr = fcmp ogt <4 x float> %i.adq, splat (float f0x4F800000)
  %i.ads = select <4 x i1> %i.adr, <4 x float> splat (float f0x4F800000), <4 x float> %i.adq
  %i.adt = fptoui <4 x float> %i.ads to <4 x i32>
  %i.adu = fmul <4 x float> %broadcast.splat382, %i.add
  %i.adv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat380, <4 x float> %i.act, <4 x float> %i.adu)
  %i.adw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat384, <4 x float> %i.adp, <4 x float> %i.adv) ; 2 uses
  %i.adx = fmul <4 x float> %broadcast.splat388, %i.add
  %i.ady = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat386, <4 x float> %i.act, <4 x float> %i.adx)
  %i.adz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat390, <4 x float> %i.adp, <4 x float> %i.ady) ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abv
  %i.aeb = shufflevector <4 x float> %i.adz, <4 x float> %i.adw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aec = fcmp ogt <8 x float> %i.aeb, splat (float f0x4F800000)
  %i.aed = shufflevector <4 x float> %i.adz, <4 x float> %i.adw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aee = select <8 x i1> %i.aec, <8 x float> splat (float f0x4F800000), <8 x float> %i.aed
  %i.aef = fptoui <8 x float> %i.aee to <8 x i32>
  %i.aeg = shufflevector <4 x i32> %i.adt, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec393 = shufflevector <8 x i32> %i.aef, <8 x i32> %i.aeg, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec393, ptr %i.aea, align 4, !alias.scope !97, !noalias !96
  %index.next394 = add nuw i64 %index392, 4       ; 2 uses
  %i.aeh = icmp eq i64 %index.next394, %n.vec372
  br i1 %i.aeh, label %middle.block395, label %vector.body391, !llvm.loop !40

middle.block395:                                  ; preds = %vector.body391
  %cmp.n396 = icmp eq i64 %n.vec372, %wide.trip.count.i218.i
  br i1 %cmp.n396, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %vector.memcheck367, %.lr.ph.i217.i, %middle.block395
  %indvars.iv.i219.i.ph = phi i64 [ 0, %vector.memcheck367 ], [ 0, %.lr.ph.i217.i ], [ %n.vec372, %middle.block395 ]
  %i.aei = shufflevector <2 x float> %i.abr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> %i.abq, <2 x i32> <i32 0, i32 5>
  %i.aek = shufflevector <4 x float> %i.abq, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ael = shufflevector <4 x float> %i.abq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aem = shufflevector <2 x float> %i.abr, <2 x float> %i.ael, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.preheader, %scalar.ph365
  %indvars.iv.i219.i = phi i64 [ %indvars.iv.next.i225.i, %scalar.ph365 ], [ %indvars.iv.i219.i.ph, %scalar.ph365.preheader ] ; 2 uses
  %i.aen = mul nuw nsw i64 %indvars.iv.i219.i, 3  ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aen ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aer = load i32, ptr %i.aep, align 4, !tbaa !6
  %i.aes = uitofp i32 %i.aer to float             ; 2 uses
  %i.aet = load i32, ptr %i.aeo, align 4, !tbaa !6
  %i.aeu = load i32, ptr %i.aeq, align 4, !tbaa !6
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aen ; 2 uses
  %i.aew = uitofp i32 %i.aet to float
  %i.aex = fadd nnan float %i.aew, f0xCF000000    ; 2 uses
  %i.aey = fmul float %i.abl, %i.aex
  %i.aez = tail call float @llvm.fmuladd.f32(float %i.abj, float %i.aes, float %i.aey)
  %i.afa = uitofp i32 %i.aeu to float
  %i.afb = fadd float %i.afa, f0xCF000000         ; 2 uses
  %i.afc = tail call float @llvm.fmuladd.f32(float %i.abn, float %i.afb, float %i.aez) ; 2 uses
  %i.afd = fcmp ogt float %i.afc, f0x4F800000
  %.sroa.speculated.i.i220.i = select i1 %i.afd, float f0x4F800000, float %i.afc
  %i.afe = fptoui float %.sroa.speculated.i.i220.i to i32
  %i.aff = insertelement <2 x float> poison, float %i.aex, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = fmul <2 x float> %i.aej, %i.afg
  %i.afi = insertelement <2 x float> poison, float %i.aes, i64 0
  %i.afj = shufflevector <2 x float> %i.afi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.afj, <2 x float> %i.afh)
  %i.afl = insertelement <2 x float> poison, float %i.afb, i64 0
  %i.afm = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aem, <2 x float> %i.afm, <2 x float> %i.afk) ; 2 uses
  %i.afo = fcmp ogt <2 x float> %i.afn, splat (float f0x4F800000)
  %i.afp = select <2 x i1> %i.afo, <2 x float> splat (float f0x4F800000), <2 x float> %i.afn
  %i.afq = fptoui <2 x float> %i.afp to <2 x i32>
  store <2 x i32> %i.afq, ptr %i.aev, align 4
  %.sroa.5.0..sroa_idx.i224.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  store i32 %i.afe, ptr %.sroa.5.0..sroa_idx.i224.i, align 4
  %indvars.iv.next.i225.i = add nuw nsw i64 %indvars.iv.i219.i, 1 ; 2 uses
  %exitcond.not.i226.i = icmp eq i64 %indvars.iv.next.i225.i, %wide.trip.count.i218.i
  br i1 %exitcond.not.i226.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph365, !llvm.loop !41

bb.w:                                             ; preds = %bb.s
  %switch.tableidx523 = add i8 %i.h, -5           ; 2 uses
  %i.afr = icmp ult i8 %switch.tableidx523, 4
  br i1 %i.afr, label %switch.lookup524, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup524:                                 ; preds = %bb.w
  %i.afs = icmp sgt i32 %i.p, 0
  br i1 %i.afs, label %.lr.ph.i228.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i228.i:                                    ; preds = %switch.lookup524
  %i.aft = zext nneg i8 %switch.tableidx523 to i64
  %switch.gep525 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aft
  %switch.load526 = load ptr, ptr %switch.gep525, align 8 ; 5 uses
  %i.afu = load float, ptr %switch.load526, align 16, !tbaa !87 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %switch.load526, i64 4
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !87 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %switch.load526, i64 8
  %i.afy = load float, ptr %i.afx, align 8, !tbaa !87 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %switch.load526, i64 12
  %i.aga = getelementptr inbounds nuw i8, ptr %switch.load526, i64 28
  %i.agb = load <4 x float>, ptr %i.afz, align 4, !tbaa !87 ; 7 uses
  %i.agc = load <2 x float>, ptr %i.aga, align 4, !tbaa !87 ; 4 uses
  %wide.trip.count.i229.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check328 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check328, label %scalar.ph327.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i228.i
  %i.agd = mul nuw nsw i64 %wide.trip.count.i229.i, 12 ; 2 uses
  %i.age = getelementptr i8, ptr %3, i64 %i.agd
  %i.agf = getelementptr i8, ptr %2, i64 %i.agd
  %bound0330 = icmp ult ptr %3, %i.agf
  %bound1331 = icmp ult ptr %2, %i.age
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %scalar.ph327.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck329
  %n.vec334 = and i64 %wide.trip.count.i229.i, 2147483644 ; 3 uses
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.afu, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %i.afw, i64 0
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert339 = insertelement <4 x float> poison, float %i.afy, i64 0
  %broadcast.splat340 = shufflevector <4 x float> %broadcast.splatinsert339, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat342 = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat344 = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat346 = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat348 = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat350 = shufflevector <2 x float> %i.agc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat352 = shufflevector <2 x float> %i.agc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph333
  %index354 = phi i64 [ 0, %vector.ph333 ], [ %index.next356, %vector.body353 ] ; 5 uses
  %i.agg = mul nuw nsw i64 %index354, 3           ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.agg ; 3 uses
  %.idx482 = mul nuw i64 %index354, 12
  %i.agi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx482 ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 12
  %.idx483 = mul nuw i64 %index354, 12
  %i.agk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx483 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 24
  %.idx484 = mul nuw i64 %index354, 12
  %i.agm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx484 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 36
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agk, i64 28
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 20
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agk, i64 32
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agm, i64 44
  %i.agw = load float, ptr %i.ago, align 4, !tbaa !87, !alias.scope !98
  %i.agx = load float, ptr %i.agp, align 4, !tbaa !87, !alias.scope !98
  %i.agy = load float, ptr %i.agq, align 4, !tbaa !87, !alias.scope !98
  %i.agz = load float, ptr %i.agr, align 4, !tbaa !87, !alias.scope !98
  %i.aha = insertelement <4 x float> poison, float %i.agw, i64 0
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 1
  %i.ahc = insertelement <4 x float> %i.ahb, float %i.agy, i64 2
  %i.ahd = insertelement <4 x float> %i.ahc, float %i.agz, i64 3 ; 3 uses
  %i.ahe = load float, ptr %i.agh, align 4, !tbaa !87, !alias.scope !98
  %i.ahf = load float, ptr %i.agj, align 4, !tbaa !87, !alias.scope !98
  %i.ahg = load float, ptr %i.agl, align 4, !tbaa !87, !alias.scope !98
  %i.ahh = load float, ptr %i.agn, align 4, !tbaa !87, !alias.scope !98
  %i.ahi = insertelement <4 x float> poison, float %i.ahe, i64 0
  %i.ahj = insertelement <4 x float> %i.ahi, float %i.ahf, i64 1
  %i.ahk = insertelement <4 x float> %i.ahj, float %i.ahg, i64 2
  %i.ahl = insertelement <4 x float> %i.ahk, float %i.ahh, i64 3
  %i.ahm = fadd <4 x float> %i.ahl, splat (float -5.000000e-01) ; 3 uses
  %i.ahn = fmul <4 x float> %broadcast.splat338, %i.ahm
  %i.aho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat336, <4 x float> %i.ahd, <4 x float> %i.ahn)
  %i.ahp = load float, ptr %i.ags, align 4, !tbaa !87, !alias.scope !98
  %i.ahq = load float, ptr %i.agt, align 4, !tbaa !87, !alias.scope !98
  %i.ahr = load float, ptr %i.agu, align 4, !tbaa !87, !alias.scope !98
  %i.ahs = load float, ptr %i.agv, align 4, !tbaa !87, !alias.scope !98
  %i.aht = insertelement <4 x float> poison, float %i.ahp, i64 0
  %i.ahu = insertelement <4 x float> %i.aht, float %i.ahq, i64 1
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 2
  %i.ahw = insertelement <4 x float> %i.ahv, float %i.ahs, i64 3
  %i.ahx = fadd <4 x float> %i.ahw, splat (float -5.000000e-01) ; 3 uses
  %i.ahy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> %i.ahx, <4 x float> %i.aho) ; 2 uses
  %i.ahz = fcmp ogt <4 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = select <4 x i1> %i.ahz, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ahy ; 2 uses
  %i.aib = fcmp ogt <4 x float> %i.aia, zeroinitializer
  %i.aic = select <4 x i1> %i.aib, <4 x float> %i.aia, <4 x float> zeroinitializer
  %i.aid = fmul <4 x float> %broadcast.splat344, %i.ahm
  %i.aie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat342, <4 x float> %i.ahd, <4 x float> %i.aid)
  %i.aif = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat346, <4 x float> %i.ahx, <4 x float> %i.aie) ; 2 uses
  %i.aig = fcmp ogt <4 x float> %i.aif, splat (float 1.000000e+00)
  %i.aih = select <4 x i1> %i.aig, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aif ; 2 uses
  %i.aii = fmul <4 x float> %broadcast.splat350, %i.ahm
  %i.aij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat348, <4 x float> %i.ahd, <4 x float> %i.aii)
  %i.aik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat352, <4 x float> %i.ahx, <4 x float> %i.aij) ; 2 uses
  %i.ail = fcmp ogt <4 x float> %i.aik, splat (float 1.000000e+00)
  %i.aim = select <4 x i1> %i.ail, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aik ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agg
  %i.aio = shufflevector <4 x float> %i.aim, <4 x float> %i.aih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aip = fcmp ogt <8 x float> %i.aio, zeroinitializer
  %i.aiq = shufflevector <4 x float> %i.aim, <4 x float> %i.aih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.air = select <8 x i1> %i.aip, <8 x float> %i.aiq, <8 x float> zeroinitializer
  %i.ais = shufflevector <4 x float> %i.aic, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec355 = shufflevector <8 x float> %i.air, <8 x float> %i.ais, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec355, ptr %i.ain, align 4, !alias.scope !99, !noalias !98
  %index.next356 = add nuw i64 %index354, 4       ; 2 uses
  %i.ait = icmp eq i64 %index.next356, %n.vec334
  br i1 %i.ait, label %middle.block357, label %vector.body353, !llvm.loop !45

middle.block357:                                  ; preds = %vector.body353
  %cmp.n358 = icmp eq i64 %n.vec334, %wide.trip.count.i229.i
  br i1 %cmp.n358, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph327.preheader

scalar.ph327.preheader:                           ; preds = %vector.memcheck329, %.lr.ph.i228.i, %middle.block357
  %indvars.iv.i230.i.ph = phi i64 [ 0, %vector.memcheck329 ], [ 0, %.lr.ph.i228.i ], [ %n.vec334, %middle.block357 ]
  %i.aiu = shufflevector <2 x float> %i.agc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> %i.agb, <2 x i32> <i32 0, i32 5>
  %i.aiw = shufflevector <4 x float> %i.agb, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aix = shufflevector <4 x float> %i.agb, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aiy = shufflevector <2 x float> %i.agc, <2 x float> %i.aix, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph327

scalar.ph327:                                     ; preds = %scalar.ph327.preheader, %scalar.ph327
  %indvars.iv.i230.i = phi i64 [ %indvars.iv.next.i239.i, %scalar.ph327 ], [ %indvars.iv.i230.i.ph, %scalar.ph327.preheader ] ; 2 uses
  %i.aiz = mul nuw nsw i64 %indvars.iv.i230.i, 3  ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aiz ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajd = load float, ptr %i.ajb, align 4, !tbaa !87 ; 2 uses
  %i.aje = load float, ptr %i.aja, align 4, !tbaa !87
  %i.ajf = load float, ptr %i.ajc, align 4, !tbaa !87
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aiz ; 2 uses
  %i.ajh = fadd float %i.aje, -5.000000e-01       ; 2 uses
  %i.aji = fmul float %i.afw, %i.ajh
  %i.ajj = tail call float @llvm.fmuladd.f32(float %i.afu, float %i.ajd, float %i.aji)
  %i.ajk = fadd float %i.ajf, -5.000000e-01       ; 2 uses
  %i.ajl = tail call float @llvm.fmuladd.f32(float %i.afy, float %i.ajk, float %i.ajj) ; 2 uses
  %i.ajm = fcmp ogt float %i.ajl, 1.000000e+00
  %.sroa.speculated.i.i231.i = select i1 %i.ajm, float 1.000000e+00, float %i.ajl ; 2 uses
  %i.ajn = fcmp ogt float %.sroa.speculated.i.i231.i, 0.000000e+00
  %.sroa.speculated14.i.i232.i = select i1 %i.ajn, float %.sroa.speculated.i.i231.i, float 0.000000e+00
  %i.ajo = insertelement <2 x float> poison, float %i.ajh, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajq = fmul <2 x float> %i.aiv, %i.ajp
  %i.ajr = insertelement <2 x float> poison, float %i.ajd, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiw, <2 x float> %i.ajs, <2 x float> %i.ajq)
  %i.aju = insertelement <2 x float> poison, float %i.ajk, i64 0
  %i.ajv = shufflevector <2 x float> %i.aju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiy, <2 x float> %i.ajv, <2 x float> %i.ajt) ; 2 uses
  %i.ajx = fcmp ogt <2 x float> %i.ajw, splat (float 1.000000e+00)
  %i.ajy = select <2 x i1> %i.ajx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ajw ; 2 uses
  %i.ajz = fcmp ogt <2 x float> %i.ajy, zeroinitializer
  %i.aka = select <2 x i1> %i.ajz, <2 x float> %i.ajy, <2 x float> zeroinitializer
  store <2 x float> %i.aka, ptr %i.ajg, align 4
end_hunk_0
begin_hunk_1_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %broadcast.splat306 = shufflevector <4 x float> %i.akk, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat308 = shufflevector <4 x float> %i.akk, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat310 = shufflevector <2 x double> %i.akm, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat312 = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat314 = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph295
  %index316 = phi i64 [ 0, %vector.ph295 ], [ %index.next318, %vector.body315 ] ; 3 uses
  %i.akr = mul nuw nsw i64 %index316, 3           ; 2 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.akr ; 3 uses
  %.idx481 = mul nuw i64 %index316, 24
  %i.akt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx481 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 32
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akt, i64 40
  %i.akz = load double, ptr %i.akv, align 8, !tbaa !89, !alias.scope !100
  %i.ala = load double, ptr %i.akw, align 8, !tbaa !89, !alias.scope !100
  %i.alb = insertelement <2 x double> poison, double %i.akz, i64 0
  %i.alc = insertelement <2 x double> %i.alb, double %i.ala, i64 1 ; 3 uses
  %i.ald = load double, ptr %i.aks, align 8, !tbaa !89, !alias.scope !100
  %i.ale = load double, ptr %i.aku, align 8, !tbaa !89, !alias.scope !100
  %i.alf = insertelement <2 x double> poison, double %i.ald, i64 0
  %i.alg = insertelement <2 x double> %i.alf, double %i.ale, i64 1
  %i.alh = fptrunc <2 x double> %i.alg to <2 x float>
  %i.ali = fadd <2 x float> %i.alh, splat (float -5.000000e-01) ; 3 uses
  %i.alj = fmul <2 x float> %broadcast.splat300, %i.ali
  %i.alk = fpext <2 x float> %i.alj to <2 x double>
  %i.all = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat298, <2 x double> %i.alc, <2 x double> %i.alk)
  %i.alm = load double, ptr %i.akx, align 8, !tbaa !89, !alias.scope !100
  %i.aln = load double, ptr %i.aky, align 8, !tbaa !89, !alias.scope !100
  %i.alo = insertelement <2 x double> poison, double %i.alm, i64 0
  %i.alp = insertelement <2 x double> %i.alo, double %i.aln, i64 1
  %i.alq = fptrunc <2 x double> %i.alp to <2 x float>
  %i.alr = fadd <2 x float> %i.alq, splat (float -5.000000e-01) ; 3 uses
  %i.als = fmul <2 x float> %broadcast.splat302, %i.alr
  %i.alt = fpext <2 x float> %i.als to <2 x double>
  %i.alu = fadd <2 x double> %i.all, %i.alt
  %i.alv = fptrunc <2 x double> %i.alu to <2 x float> ; 2 uses
  %i.alw = fcmp ogt <2 x float> %i.alv, splat (float 1.000000e+00)
  %i.alx = select <2 x i1> %i.alw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.alv ; 2 uses
  %i.aly = fpext <2 x float> %i.alx to <2 x double>
  %i.alz = fcmp ogt <2 x float> %i.alx, zeroinitializer
  %i.ama = select <2 x i1> %i.alz, <2 x double> %i.aly, <2 x double> zeroinitializer
  %i.amb = fmul <2 x float> %broadcast.splat306, %i.ali
  %i.amc = fpext <2 x float> %i.amb to <2 x double>
  %i.amd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat304, <2 x double> %i.alc, <2 x double> %i.amc)
  %i.ame = fmul <2 x float> %broadcast.splat308, %i.alr
  %i.amf = fpext <2 x float> %i.ame to <2 x double>
  %i.amg = fadd <2 x double> %i.amd, %i.amf
  %i.amh = fptrunc <2 x double> %i.amg to <2 x float> ; 2 uses
  %i.ami = fcmp ogt <2 x float> %i.amh, splat (float 1.000000e+00)
  %i.amj = select <2 x i1> %i.ami, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amh ; 2 uses
  %i.amk = fpext <2 x float> %i.amj to <2 x double>
  %i.aml = fcmp ogt <2 x float> %i.amj, zeroinitializer
  %i.amm = select <2 x i1> %i.aml, <2 x double> %i.amk, <2 x double> zeroinitializer
  %i.amn = fmul <2 x float> %broadcast.splat312, %i.ali
  %i.amo = fpext <2 x float> %i.amn to <2 x double>
  %i.amp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat310, <2 x double> %i.alc, <2 x double> %i.amo)
  %i.amq = fmul <2 x float> %broadcast.splat314, %i.alr
  %i.amr = fpext <2 x float> %i.amq to <2 x double>
  %i.ams = fadd <2 x double> %i.amp, %i.amr
  %i.amt = fptrunc <2 x double> %i.ams to <2 x float> ; 2 uses
  %i.amu = fcmp ogt <2 x float> %i.amt, splat (float 1.000000e+00)
  %i.amv = select <2 x i1> %i.amu, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amt ; 2 uses
  %i.amw = fpext <2 x float> %i.amv to <2 x double>
  %i.amx = fcmp ogt <2 x float> %i.amv, zeroinitializer
  %i.amy = select <2 x i1> %i.amx, <2 x double> %i.amw, <2 x double> zeroinitializer
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.akr
  %i.ana = shufflevector <2 x double> %i.amy, <2 x double> %i.amm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.anb = shufflevector <2 x double> %i.ama, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec317 = shufflevector <4 x double> %i.ana, <4 x double> %i.anb, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec317, ptr %i.amz, align 8, !alias.scope !101, !noalias !100
  %index.next318 = add nuw i64 %index316, 2       ; 2 uses
  %i.anc = icmp eq i64 %index.next318, %n.vec296
  br i1 %i.anc, label %middle.block319, label %vector.body315, !llvm.loop !50

middle.block319:                                  ; preds = %vector.body315
  %cmp.n320 = icmp eq i64 %n.vec296, %wide.trip.count.i243.i
  br i1 %cmp.n320, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %vector.memcheck291, %.lr.ph.i242.i, %middle.block319
  %indvars.iv.i244.i.ph = phi i64 [ 0, %vector.memcheck291 ], [ 0, %.lr.ph.i242.i ], [ %n.vec296, %middle.block319 ]
  %i.and = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.akf, i64 0
  %i.ane = shufflevector <2 x float> %i.akn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.anf = shufflevector <4 x float> %i.ane, <4 x float> %i.akk, <2 x i32> <i32 0, i32 5>
  %i.ang = shufflevector <4 x float> %i.akk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.anh = shufflevector <2 x float> %i.akn, <2 x float> %i.ang, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.preheader, %scalar.ph289
  %indvars.iv.i244.i = phi i64 [ %indvars.iv.next.i253.i, %scalar.ph289 ], [ %indvars.iv.i244.i.ph, %scalar.ph289.preheader ] ; 2 uses
  %i.ani = mul nuw nsw i64 %indvars.iv.i244.i, 3  ; 2 uses
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ani ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  %i.anm = load double, ptr %i.ank, align 8, !tbaa !89 ; 2 uses
  %i.ann = load double, ptr %i.anj, align 8, !tbaa !89
  %i.ano = load double, ptr %i.anl, align 8, !tbaa !89
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ani ; 2 uses
  %i.anq = insertelement <2 x double> poison, double %i.ann, i64 0
  %i.anr = insertelement <2 x double> %i.anq, double %i.ano, i64 1
  %i.ans = fptrunc <2 x double> %i.anr to <2 x float>
  %i.ant = fadd <2 x float> %i.ans, splat (float -5.000000e-01) ; 3 uses
  %i.anu = fmul <2 x float> %i.akh, %i.ant
  %i.anv = fpext <2 x float> %i.anu to <2 x double>
  %i.anw = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.anm, i64 0
  %i.anx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.and, <2 x double> %i.anw, <2 x double> %i.anv)
  %i.any = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.anx)
  %i.anz = fptrunc double %i.any to float         ; 2 uses
  %i.aoa = fcmp ogt float %i.anz, 1.000000e+00
  %.sroa.speculated.i.i245.i = select i1 %i.aoa, float 1.000000e+00, float %i.anz ; 2 uses
  %i.aob = fpext float %.sroa.speculated.i.i245.i to double
  %i.aoc = fcmp ogt float %.sroa.speculated.i.i245.i, 0.000000e+00
  %.sroa.speculated14.i.i246.i = select i1 %i.aoc, double %i.aob, double 0.000000e+00
  %i.aod = shufflevector <2 x float> %i.ant, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoe = fmul <2 x float> %i.anf, %i.aod
  %i.aof = fpext <2 x float> %i.aoe to <2 x double>
  %i.aog = insertelement <2 x double> poison, double %i.anm, i64 0
  %i.aoh = shufflevector <2 x double> %i.aog, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akm, <2 x double> %i.aoh, <2 x double> %i.aof)
  %i.aoj = shufflevector <2 x float> %i.ant, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aok = fmul <2 x float> %i.anh, %i.aoj
  %i.aol = fpext <2 x float> %i.aok to <2 x double>
  %i.aom = fadd <2 x double> %i.aoi, %i.aol
  %i.aon = fptrunc <2 x double> %i.aom to <2 x float> ; 2 uses
  %i.aoo = fcmp ogt <2 x float> %i.aon, splat (float 1.000000e+00)
  %i.aop = select <2 x i1> %i.aoo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aon ; 2 uses
  %i.aoq = fpext <2 x float> %i.aop to <2 x double>
  %i.aor = fcmp ogt <2 x float> %i.aop, zeroinitializer
  %i.aos = select <2 x i1> %i.aor, <2 x double> %i.aoq, <2 x double> zeroinitializer
  store <2 x double> %i.aos, ptr %i.anp, align 8
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store double %.sroa.speculated14.i.i246.i, ptr %.sroa.5.0..sroa_idx.i252.i, align 8
  %indvars.iv.next.i253.i = add nuw nsw i64 %indvars.iv.i244.i, 1 ; 2 uses
  %exitcond.not.i254.i = icmp eq i64 %indvars.iv.next.i253.i, %wide.trip.count.i243.i
  br i1 %exitcond.not.i254.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph289, !llvm.loop !51

bb.y:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 3, label %bb.af
    i32 4, label %bb.ah
  ]

bb.z:                                             ; preds = %bb.y
  %switch.tableidx531 = add i8 %i.h, -5           ; 2 uses
  %i.aot = icmp ult i8 %switch.tableidx531, 4
  br i1 %i.aot, label %switch.lookup532, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup532:                                 ; preds = %bb.z
  %i.aou = icmp sgt i32 %i.p, 0
  br i1 %i.aou, label %.lr.ph.i256.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i256.i:                                    ; preds = %switch.lookup532
  %i.aov = zext nneg i8 %switch.tableidx531 to i64
  %switch.gep533 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aov
  %switch.load534 = load ptr, ptr %switch.gep533, align 8 ; 5 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %switch.load534, i64 16
  %i.aox = load <4 x float>, ptr %switch.load534, align 16, !tbaa !87 ; 3 uses
  %i.aoy = load <2 x float>, ptr %i.aow, align 16, !tbaa !87 ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %switch.load534, i64 24
  %i.apa = load float, ptr %i.aoz, align 8, !tbaa !87
  %i.apb = getelementptr inbounds nuw i8, ptr %switch.load534, i64 28
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !87
  %i.apd = getelementptr inbounds nuw i8, ptr %switch.load534, i64 32
  %i.ape = load float, ptr %i.apd, align 16, !tbaa !87
  %wide.trip.count.i257.i = zext nneg i32 %i.p to i64
  %i.apf = shufflevector <4 x float> %i.aox, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.apg = shufflevector <4 x float> %i.aox, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aph = shufflevector <2 x float> %i.aoy, <2 x float> %i.apg, <2 x i32> <i32 1, i32 3>
  %i.api = shufflevector <2 x float> %i.aoy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.apj = shufflevector <4 x float> %i.api, <4 x float> %i.aox, <2 x i32> <i32 0, i32 5>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i256.i
  %indvars.iv.i258.i = phi i64 [ 0, %.lr.ph.i256.i ], [ %indvars.iv.next.i262.i, %bb.aa ] ; 5 uses
  %i.apk = or i64 %indvars.iv.i258.i, 1
  %i.apl = mul i64 %i.apk, 3
  %i.apm = and i64 %i.apl, 4294967295
  %i.apn = getelementptr inbounds nuw i8, ptr %2, i64 %i.apm
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !84
  %i.app = mul nuw nsw i64 %indvars.iv.i258.i, 3
  %i.apq = getelementptr inbounds nuw i8, ptr %2, i64 %i.app ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 1
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !84
  %i.apt = and i64 %indvars.iv.i258.i, 2147483646
  %i.apu = mul nuw nsw i64 %i.apt, 3
  %i.apv = and i64 %i.apu, 4294967294
  %i.apw = getelementptr inbounds nuw i8, ptr %2, i64 %i.apv
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !84
  %i.apy = shl nuw nsw i64 %indvars.iv.i258.i, 2
  %i.apz = getelementptr inbounds nuw i8, ptr %3, i64 %i.apy ; 4 uses
  %i.aqa = uitofp i8 %i.aps to float              ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %i.aqc = uitofp i8 %i.apo to float
  %i.aqd = fadd nnan float %i.aqc, -1.275000e+02  ; 2 uses
  %i.aqe = uitofp i8 %i.apx to float
  %i.aqf = fadd float %i.aqe, -1.275000e+02       ; 2 uses
  %i.aqg = insertelement <2 x float> poison, float %i.aqd, i64 0
  %i.aqh = shufflevector <2 x float> %i.aqg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqi = fmul <2 x float> %i.apj, %i.aqh
  %i.aqj = insertelement <2 x float> poison, float %i.aqa, i64 0
  %i.aqk = shufflevector <2 x float> %i.aqj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aql = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apf, <2 x float> %i.aqk, <2 x float> %i.aqi)
  %i.aqm = insertelement <2 x float> poison, float %i.aqf, i64 0
  %i.aqn = shufflevector <2 x float> %i.aqm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aph, <2 x float> %i.aqn, <2 x float> %i.aql) ; 3 uses
  %i.aqp = fcmp ogt <2 x float> %i.aqo, splat (float 2.550000e+02) ; 2 uses
  %i.aqq = extractelement <2 x i1> %i.aqp, i64 1
  %i.aqr = extractelement <2 x float> %i.aqo, i64 1
  %i.aqs = fptoui float %i.aqr to i8
  %i.aqt = select i1 %i.aqq, i8 -1, i8 %i.aqs
  store i8 %i.aqt, ptr %i.aqb, align 1, !tbaa !84
  %i.aqu = extractelement <2 x i1> %i.aqp, i64 0
  %i.aqv = extractelement <2 x float> %i.aqo, i64 0
  %i.aqw = fptoui float %i.aqv to i8
  %i.aqx = select i1 %i.aqu, i8 -1, i8 %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.apz, i64 1
  store i8 %i.aqx, ptr %i.aqy, align 1, !tbaa !84
  %i.aqz = fmul float %i.apc, %i.aqd
  %i.ara = tail call float @llvm.fmuladd.f32(float %i.apa, float %i.aqa, float %i.aqz)
  %i.arb = tail call float @llvm.fmuladd.f32(float %i.ape, float %i.aqf, float %i.ara) ; 2 uses
  %i.arc = fcmp ogt float %i.arb, 2.550000e+02
  %.sroa.speculated.2.i.i261.i = select i1 %i.arc, float 2.550000e+02, float %i.arb
  %i.ard = fptoui float %.sroa.speculated.2.i.i261.i to i8
  store i8 %i.ard, ptr %i.apz, align 1, !tbaa !84
  %i.are = getelementptr inbounds nuw i8, ptr %i.apq, i64 2
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !84
  %i.arg = getelementptr inbounds nuw i8, ptr %i.apz, i64 3
  store i8 %i.arf, ptr %i.arg, align 1, !tbaa !84
  %indvars.iv.next.i262.i = add nuw nsw i64 %indvars.iv.i258.i, 1 ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %indvars.iv.next.i262.i, %wide.trip.count.i257.i
  br i1 %exitcond.not.i263.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.aa, !llvm.loop !52

bb.ab:                                            ; preds = %bb.y
  %switch.tableidx535 = add i8 %i.h, -5           ; 2 uses
  %i.arh = icmp ult i8 %switch.tableidx535, 4
  br i1 %i.arh, label %switch.lookup536, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup536:                                 ; preds = %bb.ab
  %i.ari = icmp sgt i32 %i.p, 0
  br i1 %i.ari, label %.lr.ph.i265.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i265.i:                                    ; preds = %switch.lookup536
  %i.arj = zext nneg i8 %switch.tableidx535 to i64
  %switch.gep537 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.arj
  %switch.load538 = load ptr, ptr %switch.gep537, align 8 ; 5 uses
  %i.ark = load float, ptr %switch.load538, align 16, !tbaa !87
  %i.arl = getelementptr inbounds nuw i8, ptr %switch.load538, i64 4
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !87
  %i.arn = getelementptr inbounds nuw i8, ptr %switch.load538, i64 8
  %i.aro = load float, ptr %i.arn, align 8, !tbaa !87
  %i.arp = getelementptr inbounds nuw i8, ptr %switch.load538, i64 12
  %i.arq = getelementptr inbounds nuw i8, ptr %switch.load538, i64 28
  %i.arr = load <4 x float>, ptr %i.arp, align 4, !tbaa !87 ; 3 uses
  %i.ars = load <2 x float>, ptr %i.arq, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i266.i = zext nneg i32 %i.p to i64
  %i.art = shufflevector <4 x float> %i.arr, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aru = shufflevector <4 x float> %i.arr, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.arv = shufflevector <2 x float> %i.ars, <2 x float> %i.aru, <2 x i32> <i32 1, i32 3>
  %i.arw = shufflevector <2 x float> %i.ars, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.arx = shufflevector <4 x float> %i.arw, <4 x float> %i.arr, <2 x i32> <i32 0, i32 5>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i265.i
  %indvars.iv.i267.i = phi i64 [ 0, %.lr.ph.i265.i ], [ %indvars.iv.next.i272.i, %bb.ac ] ; 5 uses
  %i.ary = or i64 %indvars.iv.i267.i, 1
  %i.arz = mul i64 %i.ary, 3
  %i.asa = and i64 %i.arz, 4294967295
  %i.asb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.asa
  %i.asc = load i16, ptr %i.asb, align 2, !tbaa !86
  %.idx.i268.i = mul nuw nsw i64 %indvars.iv.i267.i, 6
  %i.asd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i268.i ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 2
  %i.asf = load i16, ptr %i.ase, align 2, !tbaa !86
  %i.asg = and i64 %indvars.iv.i267.i, 2147483646
  %i.ash = mul nuw nsw i64 %i.asg, 3
  %i.asi = and i64 %i.ash, 4294967294
  %i.asj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.asi
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !86
  %.idx30.i.i = shl nuw nsw i64 %indvars.iv.i267.i, 3
  %i.asl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i.i ; 3 uses
  %i.asm = uitofp i16 %i.asf to float             ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asl, i64 4
  %i.aso = insertelement <2 x i16> poison, i16 %i.ask, i64 0
  %i.asp = insertelement <2 x i16> %i.aso, i16 %i.asc, i64 1
  %i.asq = uitofp <2 x i16> %i.asp to <2 x float>
  %i.asr = fadd <2 x float> %i.asq, splat (float -3.276750e+04) ; 4 uses
  %i.ass = extractelement <2 x float> %i.asr, i64 1
  %i.ast = fmul float %i.arm, %i.ass
  %i.asu = tail call float @llvm.fmuladd.f32(float %i.ark, float %i.asm, float %i.ast)
  %i.asv = extractelement <2 x float> %i.asr, i64 0
  %i.asw = tail call float @llvm.fmuladd.f32(float %i.aro, float %i.asv, float %i.asu) ; 2 uses
  %i.asx = fcmp ogt float %i.asw, 6.553500e+04
  %.sroa.speculated.i.i269.i = select i1 %i.asx, float 6.553500e+04, float %i.asw
  %i.asy = fptoui float %.sroa.speculated.i.i269.i to i16
  store i16 %i.asy, ptr %i.asn, align 2, !tbaa !86
  %i.asz = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ata = fmul <2 x float> %i.arx, %i.asz
  %i.atb = insertelement <2 x float> poison, float %i.asm, i64 0
  %i.atc = shufflevector <2 x float> %i.atb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.art, <2 x float> %i.atc, <2 x float> %i.ata)
  %i.ate = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arv, <2 x float> %i.ate, <2 x float> %i.atd) ; 2 uses
  %i.atg = fcmp ogt <2 x float> %i.atf, splat (float 6.553500e+04)
  %i.ath = select <2 x i1> %i.atg, <2 x float> splat (float 6.553500e+04), <2 x float> %i.atf
  %i.ati = fptoui <2 x float> %i.ath to <2 x i16>
  store <2 x i16> %i.ati, ptr %i.asl, align 2, !tbaa !86
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asd, i64 4
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !86
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asl, i64 6
  store i16 %i.atk, ptr %i.atl, align 2, !tbaa !86
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i267.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i266.i
  br i1 %exitcond.not.i273.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ac, !llvm.loop !53

bb.ad:                                            ; preds = %bb.y
  %switch.tableidx539 = add i8 %i.h, -5           ; 2 uses
  %i.atm = icmp ult i8 %switch.tableidx539, 4
  br i1 %i.atm, label %switch.lookup540, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup540:                                 ; preds = %bb.ad
  %i.atn = icmp sgt i32 %i.p, 0
  br i1 %i.atn, label %.lr.ph.i275.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i275.i:                                    ; preds = %switch.lookup540
  %i.ato = zext nneg i8 %switch.tableidx539 to i64
  %switch.gep541 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ato
  %switch.load542 = load ptr, ptr %switch.gep541, align 8 ; 5 uses
  %i.atp = load float, ptr %switch.load542, align 16, !tbaa !87
  %i.atq = getelementptr inbounds nuw i8, ptr %switch.load542, i64 4
  %i.atr = load float, ptr %i.atq, align 4, !tbaa !87
  %i.ats = getelementptr inbounds nuw i8, ptr %switch.load542, i64 8
  %i.att = load float, ptr %i.ats, align 8, !tbaa !87
  %i.atu = getelementptr inbounds nuw i8, ptr %switch.load542, i64 12
  %i.atv = getelementptr inbounds nuw i8, ptr %switch.load542, i64 28
  %i.atw = load <4 x float>, ptr %i.atu, align 4, !tbaa !87 ; 3 uses
  %i.atx = load <2 x float>, ptr %i.atv, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i276.i = zext nneg i32 %i.p to i64
  %i.aty = shufflevector <4 x float> %i.atw, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.atz = shufflevector <4 x float> %i.atw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aua = shufflevector <2 x float> %i.atx, <2 x float> %i.atz, <2 x i32> <i32 1, i32 3>
  %i.aub = shufflevector <2 x float> %i.atx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.auc = shufflevector <4 x float> %i.aub, <4 x float> %i.atw, <2 x i32> <i32 0, i32 5>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i275.i
  %indvars.iv.i277.i = phi i64 [ 0, %.lr.ph.i275.i ], [ %indvars.iv.next.i283.i, %bb.ae ] ; 5 uses
  %i.aud = or i64 %indvars.iv.i277.i, 1
  %i.aue = mul i64 %i.aud, 3
  %i.auf = and i64 %i.aue, 4294967295
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.auf
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !6
  %.idx.i278.i = mul nuw nsw i64 %indvars.iv.i277.i, 12
  %i.aui = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i278.i ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 4
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !6
  %i.aul = and i64 %indvars.iv.i277.i, 2147483646
  %i.aum = mul nuw nsw i64 %i.aul, 3
  %i.aun = and i64 %i.aum, 4294967294
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aun
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !6
  %.idx30.i279.i = shl nuw nsw i64 %indvars.iv.i277.i, 4
  %i.auq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i279.i ; 3 uses
  %i.aur = uitofp i32 %i.auk to float             ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %i.aut = uitofp i32 %i.auh to float
  %i.auu = fadd nnan float %i.aut, f0xCF000000    ; 2 uses
  %i.auv = fmul float %i.atr, %i.auu
  %i.auw = tail call float @llvm.fmuladd.f32(float %i.atp, float %i.aur, float %i.auv)
  %i.aux = uitofp i32 %i.aup to float
  %i.auy = fadd float %i.aux, f0xCF000000         ; 2 uses
  %i.auz = tail call float @llvm.fmuladd.f32(float %i.att, float %i.auy, float %i.auw) ; 2 uses
  %i.ava = fcmp ogt float %i.auz, f0x4F800000
  %.sroa.speculated.i.i280.i = select i1 %i.ava, float f0x4F800000, float %i.auz
  %i.avb = fptoui float %.sroa.speculated.i.i280.i to i32
  store i32 %i.avb, ptr %i.aus, align 4, !tbaa !6
  %i.avc = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.avd = shufflevector <2 x float> %i.avc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ave = fmul <2 x float> %i.auc, %i.avd
  %i.avf = insertelement <2 x float> poison, float %i.aur, i64 0
  %i.avg = shufflevector <2 x float> %i.avf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aty, <2 x float> %i.avg, <2 x float> %i.ave)
  %i.avi = insertelement <2 x float> poison, float %i.auy, i64 0
  %i.avj = shufflevector <2 x float> %i.avi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aua, <2 x float> %i.avj, <2 x float> %i.avh) ; 2 uses
  %i.avl = fcmp ogt <2 x float> %i.avk, splat (float f0x4F800000)
  %i.avm = select <2 x i1> %i.avl, <2 x float> splat (float f0x4F800000), <2 x float> %i.avk
  %i.avn = fptoui <2 x float> %i.avm to <2 x i32>
  store <2 x i32> %i.avn, ptr %i.auq, align 4, !tbaa !6
  %i.avo = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !6
  %i.avq = getelementptr inbounds nuw i8, ptr %i.auq, i64 12
  store i32 %i.avp, ptr %i.avq, align 4, !tbaa !6
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %wide.trip.count.i276.i
  br i1 %exitcond.not.i284.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ae, !llvm.loop !54

bb.af:                                            ; preds = %bb.y
  %switch.tableidx543 = add i8 %i.h, -5           ; 2 uses
  %i.avr = icmp ult i8 %switch.tableidx543, 4
  br i1 %i.avr, label %switch.lookup544, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup544:                                 ; preds = %bb.af
  %i.avs = icmp sgt i32 %i.p, 0
  br i1 %i.avs, label %.lr.ph.i286.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i286.i:                                    ; preds = %switch.lookup544
  %i.avt = zext nneg i8 %switch.tableidx543 to i64
  %switch.gep545 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.avt
  %switch.load546 = load ptr, ptr %switch.gep545, align 8 ; 5 uses
  %i.avu = load float, ptr %switch.load546, align 16, !tbaa !87
  %i.avv = getelementptr inbounds nuw i8, ptr %switch.load546, i64 4
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !87
  %i.avx = getelementptr inbounds nuw i8, ptr %switch.load546, i64 8
  %i.avy = load float, ptr %i.avx, align 8, !tbaa !87
  %i.avz = getelementptr inbounds nuw i8, ptr %switch.load546, i64 12
  %i.awa = getelementptr inbounds nuw i8, ptr %switch.load546, i64 28
  %i.awb = load <4 x float>, ptr %i.avz, align 4, !tbaa !87 ; 3 uses
  %i.awc = load <2 x float>, ptr %i.awa, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i287.i = zext nneg i32 %i.p to i64
  %i.awd = shufflevector <4 x float> %i.awb, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.awe = shufflevector <4 x float> %i.awb, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.awf = shufflevector <2 x float> %i.awc, <2 x float> %i.awe, <2 x i32> <i32 1, i32 3>
  %i.awg = shufflevector <2 x float> %i.awc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.awh = shufflevector <4 x float> %i.awg, <4 x float> %i.awb, <2 x i32> <i32 0, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i286.i
  %indvars.iv.i288.i = phi i64 [ 0, %.lr.ph.i286.i ], [ %indvars.iv.next.i297.i, %bb.ag ] ; 5 uses
  %i.awi = or i64 %indvars.iv.i288.i, 1
  %i.awj = mul i64 %i.awi, 3
  %i.awk = and i64 %i.awj, 4294967295
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awk
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !87
  %.idx.i289.i = mul nuw nsw i64 %indvars.iv.i288.i, 12
  %i.awn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i289.i ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 4
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !87 ; 2 uses
  %i.awq = and i64 %indvars.iv.i288.i, 2147483646
  %i.awr = mul nuw nsw i64 %i.awq, 3
  %i.aws = and i64 %i.awr, 4294967294
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aws
  %i.awu = load float, ptr %i.awt, align 4, !tbaa !87
  %.idx30.i290.i = shl nuw nsw i64 %indvars.iv.i288.i, 4
  %i.awv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i290.i ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  %i.awx = fadd float %i.awm, -5.000000e-01       ; 2 uses
  %i.awy = fmul float %i.avw, %i.awx
  %i.awz = tail call float @llvm.fmuladd.f32(float %i.avu, float %i.awp, float %i.awy)
  %i.axa = fadd float %i.awu, -5.000000e-01       ; 2 uses
  %i.axb = tail call float @llvm.fmuladd.f32(float %i.avy, float %i.axa, float %i.awz) ; 2 uses
  %i.axc = fcmp ogt float %i.axb, 1.000000e+00
  %.sroa.speculated.i.i291.i = select i1 %i.axc, float 1.000000e+00, float %i.axb ; 2 uses
  %i.axd = fcmp ogt float %.sroa.speculated.i.i291.i, 0.000000e+00
  %.sroa.speculated14.i.i292.i = select i1 %i.axd, float %.sroa.speculated.i.i291.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i292.i, ptr %i.aww, align 4, !tbaa !87
  %i.axe = insertelement <2 x float> poison, float %i.awx, i64 0
  %i.axf = shufflevector <2 x float> %i.axe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axg = fmul <2 x float> %i.awh, %i.axf
  %i.axh = insertelement <2 x float> poison, float %i.awp, i64 0
  %i.axi = shufflevector <2 x float> %i.axh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awd, <2 x float> %i.axi, <2 x float> %i.axg)
  %i.axk = insertelement <2 x float> poison, float %i.axa, i64 0
  %i.axl = shufflevector <2 x float> %i.axk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awf, <2 x float> %i.axl, <2 x float> %i.axj) ; 2 uses
  %i.axn = fcmp ogt <2 x float> %i.axm, splat (float 1.000000e+00)
  %i.axo = select <2 x i1> %i.axn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.axm ; 2 uses
  %i.axp = fcmp ogt <2 x float> %i.axo, zeroinitializer
  %i.axq = select <2 x i1> %i.axp, <2 x float> %i.axo, <2 x float> zeroinitializer
  store <2 x float> %i.axq, ptr %i.awv, align 4, !tbaa !87
  %i.axr = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !87
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  store float %i.axs, ptr %i.axt, align 4, !tbaa !87
  %indvars.iv.next.i297.i = add nuw nsw i64 %indvars.iv.i288.i, 1 ; 2 uses
  %exitcond.not.i298.i = icmp eq i64 %indvars.iv.next.i297.i, %wide.trip.count.i287.i
  br i1 %exitcond.not.i298.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ag, !llvm.loop !55

bb.ah:                                            ; preds = %bb.y
  %switch.tableidx547 = add i8 %i.h, -5           ; 2 uses
  %i.axu = icmp ult i8 %switch.tableidx547, 4
  br i1 %i.axu, label %switch.lookup548, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup548:                                 ; preds = %bb.ah
  %i.axv = icmp sgt i32 %i.p, 0
  br i1 %i.axv, label %.lr.ph.i300.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i300.i:                                    ; preds = %switch.lookup548
  %i.axw = zext nneg i8 %switch.tableidx547 to i64
  %switch.gep549 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.axw
  %switch.load550 = load ptr, ptr %switch.gep549, align 8 ; 4 uses
  %i.axx = load float, ptr %switch.load550, align 16, !tbaa !87
  %i.axy = fpext float %i.axx to double
  %i.axz = getelementptr inbounds nuw i8, ptr %switch.load550, i64 4
  %i.aya = load <2 x float>, ptr %i.axz, align 4, !tbaa !87
  %i.ayb = getelementptr inbounds nuw i8, ptr %switch.load550, i64 12
  %i.ayc = getelementptr inbounds nuw i8, ptr %switch.load550, i64 28
  %i.ayd = load <4 x float>, ptr %i.ayb, align 4, !tbaa !87 ; 3 uses
  %i.aye = shufflevector <4 x float> %i.ayd, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ayf = fpext <2 x float> %i.aye to <2 x double>
  %i.ayg = load <2 x float>, ptr %i.ayc, align 4, !tbaa !87 ; 2 uses
  %wide.trip.count.i301.i = zext nneg i32 %i.p to i64
  %i.ayh = shufflevector <2 x float> %i.ayg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ayi = shufflevector <4 x float> %i.ayh, <4 x float> %i.ayd, <2 x i32> <i32 0, i32 5>
  %i.ayj = shufflevector <4 x float> %i.ayd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ayk = shufflevector <2 x float> %i.ayg, <2 x float> %i.ayj, <2 x i32> <i32 1, i32 3>
  %i.ayl = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.axy, i64 0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i300.i
  %indvars.iv.i302.i = phi i64 [ 0, %.lr.ph.i300.i ], [ %indvars.iv.next.i311.i, %bb.ai ] ; 5 uses
  %i.aym = or i64 %indvars.iv.i302.i, 1
  %i.ayn = mul i64 %i.aym, 3
  %i.ayo = and i64 %i.ayn, 4294967295
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ayo
  %i.ayq = load double, ptr %i.ayp, align 8, !tbaa !89
  %.idx.i303.i = mul nuw nsw i64 %indvars.iv.i302.i, 24
  %i.ayr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i303.i ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !89 ; 2 uses
  %i.ayu = and i64 %indvars.iv.i302.i, 2147483646
  %i.ayv = mul nuw nsw i64 %i.ayu, 3
  %i.ayw = and i64 %i.ayv, 4294967294
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ayw
  %i.ayy = load double, ptr %i.ayx, align 8, !tbaa !89
  %.idx30.i304.i = shl nuw nsw i64 %indvars.iv.i302.i, 5
  %i.ayz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i304.i ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = insertelement <2 x double> poison, double %i.ayq, i64 0
  %i.azc = insertelement <2 x double> %i.azb, double %i.ayy, i64 1
  %i.azd = fptrunc <2 x double> %i.azc to <2 x float>
  %i.aze = fadd <2 x float> %i.azd, splat (float -5.000000e-01) ; 3 uses
  %i.azf = fmul <2 x float> %i.aya, %i.aze
  %i.azg = fpext <2 x float> %i.azf to <2 x double>
  %i.azh = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ayt, i64 0
  %i.azi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayl, <2 x double> %i.azh, <2 x double> %i.azg)
  %i.azj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.azi)
  %i.azk = fptrunc double %i.azj to float         ; 2 uses
  %i.azl = fcmp ogt float %i.azk, 1.000000e+00
  %.sroa.speculated.i.i305.i = select i1 %i.azl, float 1.000000e+00, float %i.azk ; 2 uses
  %i.azm = fpext float %.sroa.speculated.i.i305.i to double
  %i.azn = fcmp ogt float %.sroa.speculated.i.i305.i, 0.000000e+00
  %.sroa.speculated14.i.i306.i = select i1 %i.azn, double %i.azm, double 0.000000e+00
  store double %.sroa.speculated14.i.i306.i, ptr %i.aza, align 8, !tbaa !89
  %i.azo = shufflevector <2 x float> %i.aze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azp = fmul <2 x float> %i.ayi, %i.azo
  %i.azq = fpext <2 x float> %i.azp to <2 x double>
  %i.azr = insertelement <2 x double> poison, double %i.ayt, i64 0
  %i.azs = shufflevector <2 x double> %i.azr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayf, <2 x double> %i.azs, <2 x double> %i.azq)
  %i.azu = shufflevector <2 x float> %i.aze, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.azv = fmul <2 x float> %i.ayk, %i.azu
  %i.azw = fpext <2 x float> %i.azv to <2 x double>
  %i.azx = fadd <2 x double> %i.azt, %i.azw
  %i.azy = fptrunc <2 x double> %i.azx to <2 x float> ; 2 uses
  %i.azz = fcmp ogt <2 x float> %i.azy, splat (float 1.000000e+00)
  %i.baa = select <2 x i1> %i.azz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.azy ; 2 uses
  %i.bab = fpext <2 x float> %i.baa to <2 x double>
  %i.bac = fcmp ogt <2 x float> %i.baa, zeroinitializer
  %i.bad = select <2 x i1> %i.bac, <2 x double> %i.bab, <2 x double> zeroinitializer
  store <2 x double> %i.bad, ptr %i.ayz, align 8, !tbaa !89
  %i.bae = getelementptr inbounds nuw i8, ptr %i.ayr, i64 16
  %i.baf = load double, ptr %i.bae, align 8, !tbaa !89
  %i.bag = getelementptr inbounds nuw i8, ptr %i.ayz, i64 24
  store double %i.baf, ptr %i.bag, align 8, !tbaa !89
  %indvars.iv.next.i311.i = add nuw nsw i64 %indvars.iv.i302.i, 1 ; 2 uses
  %exitcond.not.i312.i = icmp eq i64 %indvars.iv.next.i311.i, %wide.trip.count.i301.i
  br i1 %exitcond.not.i312.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ai, !llvm.loop !56

bb.aj:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %switch.tableidx551 = add i8 %i.h, -5           ; 2 uses
  %i.bah = icmp ult i8 %switch.tableidx551, 4
  br i1 %i.bah, label %switch.lookup552, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup552:                                 ; preds = %bb.ak
  %i.bai = icmp sgt i32 %i.p, 0
  br i1 %i.bai, label %.lr.ph.i314.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i314.i:                                    ; preds = %switch.lookup552
  %i.baj = zext nneg i8 %switch.tableidx551 to i64
  %switch.gep553 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.baj
  %switch.load554 = load ptr, ptr %switch.gep553, align 8 ; 5 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %switch.load554, i64 16
  %i.bal = load <4 x float>, ptr %switch.load554, align 16, !tbaa !87 ; 7 uses
  %i.bam = load <2 x float>, ptr %i.bak, align 16, !tbaa !87 ; 4 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %switch.load554, i64 24
  %i.bao = load float, ptr %i.ban, align 8, !tbaa !87 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %switch.load554, i64 28
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !87 ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %switch.load554, i64 32
  %i.bas = load float, ptr %i.bar, align 16, !tbaa !87 ; 2 uses
  %wide.trip.count.i315.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check253 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check253, label %scalar.ph252.preheader, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph.i314.i
  %i.bat = shl nuw nsw i64 %wide.trip.count.i315.i, 2 ; 2 uses
  %i.bau = getelementptr i8, ptr %3, i64 %i.bat
  %i.bav = getelementptr i8, ptr %2, i64 %i.bat
  %bound0255 = icmp ult ptr %3, %i.bav
  %bound1256 = icmp ult ptr %2, %i.bau
  %found.conflict257 = and i1 %bound0255, %bound1256
  br i1 %found.conflict257, label %scalar.ph252.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck254
  %n.vec259 = and i64 %wide.trip.count.i315.i, 2147483644 ; 3 uses
  %broadcast.splat261 = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat263 = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat265 = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat267 = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat269 = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat271 = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert272 = insertelement <4 x float> poison, float %i.bao, i64 0
  %broadcast.splat273 = shufflevector <4 x float> %broadcast.splatinsert272, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert274 = insertelement <4 x float> poison, float %i.baq, i64 0
  %broadcast.splat275 = shufflevector <4 x float> %broadcast.splatinsert274, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <4 x float> poison, float %i.bas, i64 0
  %broadcast.splat277 = shufflevector <4 x float> %broadcast.splatinsert276, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph258
  %index279 = phi i64 [ 0, %vector.ph258 ], [ %index.next280, %vector.body278 ] ; 5 uses
  %i.baw = shl nuw nsw i64 %index279, 2           ; 2 uses
  %i.bax = shl i64 %index279, 2
  %i.bay = shl i64 %index279, 2
  %i.baz = shl i64 %index279, 2
  %i.bba = getelementptr inbounds nuw i8, ptr %2, i64 %i.baw ; 4 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %2, i64 %i.bax ; 4 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 4
  %i.bbd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bay ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 8
  %i.bbf = getelementptr inbounds nuw i8, ptr %2, i64 %i.baz ; 4 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 12
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bba, i64 1
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbb, i64 5
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbd, i64 9
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbf, i64 13
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bba, i64 2
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbb, i64 6
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbd, i64 10
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbf, i64 14
  %i.bbp = load i8, ptr %i.bbh, align 1, !tbaa !84, !alias.scope !102
  %i.bbq = load i8, ptr %i.bbi, align 1, !tbaa !84, !alias.scope !102
  %i.bbr = load i8, ptr %i.bbj, align 1, !tbaa !84, !alias.scope !102
  %i.bbs = load i8, ptr %i.bbk, align 1, !tbaa !84, !alias.scope !102
  %i.bbt = insertelement <4 x i8> poison, i8 %i.bbp, i64 0
  %i.bbu = insertelement <4 x i8> %i.bbt, i8 %i.bbq, i64 1
  %i.bbv = insertelement <4 x i8> %i.bbu, i8 %i.bbr, i64 2
  %i.bbw = insertelement <4 x i8> %i.bbv, i8 %i.bbs, i64 3
  %i.bbx = uitofp <4 x i8> %i.bbw to <4 x float>  ; 3 uses
  %i.bby = load i8, ptr %i.bba, align 1, !tbaa !84, !alias.scope !102
  %i.bbz = load i8, ptr %i.bbc, align 1, !tbaa !84, !alias.scope !102
  %i.bca = load i8, ptr %i.bbe, align 1, !tbaa !84, !alias.scope !102
  %i.bcb = load i8, ptr %i.bbg, align 1, !tbaa !84, !alias.scope !102
  %i.bcc = insertelement <4 x i8> poison, i8 %i.bby, i64 0
  %i.bcd = insertelement <4 x i8> %i.bcc, i8 %i.bbz, i64 1
  %i.bce = insertelement <4 x i8> %i.bcd, i8 %i.bca, i64 2
  %i.bcf = insertelement <4 x i8> %i.bce, i8 %i.bcb, i64 3
  %i.bcg = uitofp <4 x i8> %i.bcf to <4 x float>
  %i.bch = fadd nnan <4 x float> %i.bcg, splat (float -1.275000e+02) ; 3 uses
  %i.bci = fmul <4 x float> %broadcast.splat263, %i.bch
  %i.bcj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat261, <4 x float> %i.bbx, <4 x float> %i.bci)
  %i.bck = load i8, ptr %i.bbl, align 1, !tbaa !84, !alias.scope !102
  %i.bcl = load i8, ptr %i.bbm, align 1, !tbaa !84, !alias.scope !102
  %i.bcm = load i8, ptr %i.bbn, align 1, !tbaa !84, !alias.scope !102
  %i.bcn = load i8, ptr %i.bbo, align 1, !tbaa !84, !alias.scope !102
  %i.bco = insertelement <4 x i8> poison, i8 %i.bck, i64 0
  %i.bcp = insertelement <4 x i8> %i.bco, i8 %i.bcl, i64 1
  %i.bcq = insertelement <4 x i8> %i.bcp, i8 %i.bcm, i64 2
  %i.bcr = insertelement <4 x i8> %i.bcq, i8 %i.bcn, i64 3
  %i.bcs = uitofp <4 x i8> %i.bcr to <4 x float>
  %i.bct = fadd <4 x float> %i.bcs, splat (float -1.275000e+02) ; 3 uses
  %i.bcu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat265, <4 x float> %i.bct, <4 x float> %i.bcj) ; 2 uses
  %i.bcv = fcmp ogt <4 x float> %i.bcu, splat (float 2.550000e+02)
  %i.bcw = select <4 x i1> %i.bcv, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bcu
  %i.bcx = fptoui <4 x float> %i.bcw to <4 x i8>
  %i.bcy = fmul <4 x float> %broadcast.splat269, %i.bch
  %i.bcz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat267, <4 x float> %i.bbx, <4 x float> %i.bcy)
  %i.bda = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat271, <4 x float> %i.bct, <4 x float> %i.bcz) ; 2 uses
  %i.bdb = fcmp ogt <4 x float> %i.bda, splat (float 2.550000e+02)
  %i.bdc = select <4 x i1> %i.bdb, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bda
  %i.bdd = fptoui <4 x float> %i.bdc to <4 x i8>
  %i.bde = fmul <4 x float> %broadcast.splat275, %i.bch
  %i.bdf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat273, <4 x float> %i.bbx, <4 x float> %i.bde)
  %i.bdg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat277, <4 x float> %i.bct, <4 x float> %i.bdf) ; 2 uses
  %i.bdh = fcmp ogt <4 x float> %i.bdg, splat (float 2.550000e+02)
  %i.bdi = select <4 x i1> %i.bdh, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bdg
  %i.bdj = fptoui <4 x float> %i.bdi to <4 x i8>
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bba, i64 3
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bbb, i64 7
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bbd, i64 11
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bbf, i64 15
  %i.bdo = load i8, ptr %i.bdk, align 1, !tbaa !84, !alias.scope !102
  %i.bdp = load i8, ptr %i.bdl, align 1, !tbaa !84, !alias.scope !102
  %i.bdq = load i8, ptr %i.bdm, align 1, !tbaa !84, !alias.scope !102
  %i.bdr = load i8, ptr %i.bdn, align 1, !tbaa !84, !alias.scope !102
  %i.bds = insertelement <4 x i8> poison, i8 %i.bdo, i64 0
  %i.bdt = insertelement <4 x i8> %i.bds, i8 %i.bdp, i64 1
  %i.bdu = insertelement <4 x i8> %i.bdt, i8 %i.bdq, i64 2
  %i.bdv = insertelement <4 x i8> %i.bdu, i8 %i.bdr, i64 3
  %i.bdw = getelementptr inbounds nuw i8, ptr %3, i64 %i.baw
  %i.bdx = zext <4 x i8> %i.bdv to <4 x i32>
  %i.bdy = shl nuw <4 x i32> %i.bdx, splat (i32 24)
  %i.bdz = zext <4 x i8> %i.bcx to <4 x i32>
  %i.bea = shl nuw nsw <4 x i32> %i.bdz, splat (i32 16)
  %i.beb = or disjoint <4 x i32> %i.bea, %i.bdy
  %i.bec = zext <4 x i8> %i.bdd to <4 x i32>
  %i.bed = shl nuw nsw <4 x i32> %i.bec, splat (i32 8)
  %i.bee = or disjoint <4 x i32> %i.beb, %i.bed
  %i.bef = zext <4 x i8> %i.bdj to <4 x i32>
  %i.beg = or disjoint <4 x i32> %i.bee, %i.bef
  store <4 x i32> %i.beg, ptr %i.bdw, align 1, !alias.scope !103, !noalias !102
  %index.next280 = add nuw i64 %index279, 4       ; 2 uses
  %i.beh = icmp eq i64 %index.next280, %n.vec259
  br i1 %i.beh, label %middle.block281, label %vector.body278, !llvm.loop !60

middle.block281:                                  ; preds = %vector.body278
  %cmp.n282 = icmp eq i64 %n.vec259, %wide.trip.count.i315.i
  br i1 %cmp.n282, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph252.preheader

scalar.ph252.preheader:                           ; preds = %vector.memcheck254, %.lr.ph.i314.i, %middle.block281
  %indvars.iv.i316.i.ph = phi i64 [ 0, %vector.memcheck254 ], [ 0, %.lr.ph.i314.i ], [ %n.vec259, %middle.block281 ]
  %i.bei = shufflevector <4 x float> %i.bal, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bej = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bek = shufflevector <4 x float> %i.bal, <4 x float> %i.bej, <2 x i32> <i32 1, i32 4>
  %i.bel = shufflevector <4 x float> %i.bal, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bem = shufflevector <2 x float> %i.bei, <2 x float> %i.bam, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph252

scalar.ph252:                                     ; preds = %scalar.ph252.preheader, %scalar.ph252
  %indvars.iv.i316.i = phi i64 [ %indvars.iv.next.i320.i, %scalar.ph252 ], [ %indvars.iv.i316.i.ph, %scalar.ph252.preheader ] ; 2 uses
  %i.ben = shl nuw nsw i64 %indvars.iv.i316.i, 2  ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ben ; 4 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 1
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 2
  %i.ber = load i8, ptr %i.bep, align 1, !tbaa !84
  %i.bes = uitofp i8 %i.ber to float              ; 2 uses
  %i.bet = load i8, ptr %i.beo, align 1, !tbaa !84
  %i.beu = load i8, ptr %i.beq, align 1, !tbaa !84
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beo, i64 3
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !84
  %i.bex = getelementptr inbounds nuw i8, ptr %3, i64 %i.ben
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.bew to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24
  %i.bey = uitofp i8 %i.bet to float
  %i.bez = fadd nnan float %i.bey, -1.275000e+02  ; 2 uses
  %i.bfa = uitofp i8 %i.beu to float
  %i.bfb = fadd float %i.bfa, -1.275000e+02       ; 2 uses
  %i.bfc = insertelement <2 x float> poison, float %i.bez, i64 0
  %i.bfd = shufflevector <2 x float> %i.bfc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfe = fmul <2 x float> %i.bek, %i.bfd
  %i.bff = insertelement <2 x float> poison, float %i.bes, i64 0
  %i.bfg = shufflevector <2 x float> %i.bff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bel, <2 x float> %i.bfg, <2 x float> %i.bfe)
  %i.bfi = insertelement <2 x float> poison, float %i.bfb, i64 0
  %i.bfj = shufflevector <2 x float> %i.bfi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bem, <2 x float> %i.bfj, <2 x float> %i.bfh) ; 2 uses
  %i.bfl = fcmp ogt <2 x float> %i.bfk, splat (float 2.550000e+02)
  %i.bfm = select <2 x i1> %i.bfl, <2 x float> splat (float 2.550000e+02), <2 x float> %i.bfk
  %i.bfn = fptoui <2 x float> %i.bfm to <2 x i8>
  %i.bfo = fmul float %i.baq, %i.bez
  %i.bfp = tail call float @llvm.fmuladd.f32(float %i.bao, float %i.bes, float %i.bfo)
  %i.bfq = tail call float @llvm.fmuladd.f32(float %i.bas, float %i.bfb, float %i.bfp) ; 2 uses
  %i.bfr = fcmp ogt float %i.bfq, 2.550000e+02
  %.sroa.speculated.2.i.i319.i = select i1 %i.bfr, float 2.550000e+02, float %i.bfq
  %i.bfs = fptoui float %.sroa.speculated.2.i.i319.i to i8
  %i.bft = zext <2 x i8> %i.bfn to <2 x i32>
  %i.bfu = shl nuw nsw <2 x i32> %i.bft, <i32 16, i32 8> ; 2 uses
  %i.bfv = extractelement <2 x i32> %i.bfu, i64 0
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %i.bfv, %.sroa.6.0.insert.shift.i.i
  %i.bfw = extractelement <2 x i32> %i.bfu, i64 1
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %i.bfw
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.bfs to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.bex, align 1
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i316.i, 1 ; 2 uses
  %exitcond.not.i321.i = icmp eq i64 %indvars.iv.next.i320.i, %wide.trip.count.i315.i
  br i1 %exitcond.not.i321.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph252, !llvm.loop !61

bb.al:                                            ; preds = %bb.aj
  %switch.tableidx555 = add i8 %i.h, -5           ; 2 uses
  %i.bfx = icmp ult i8 %switch.tableidx555, 4
  br i1 %i.bfx, label %switch.lookup556, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup556:                                 ; preds = %bb.al
  %i.bfy = icmp sgt i32 %i.p, 0
  br i1 %i.bfy, label %.lr.ph.i323.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i323.i:                                    ; preds = %switch.lookup556
  %i.bfz = zext nneg i8 %switch.tableidx555 to i64
  %switch.gep557 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bfz
  %switch.load558 = load ptr, ptr %switch.gep557, align 8 ; 5 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %switch.load558, i64 16
  %i.bgb = load <4 x float>, ptr %switch.load558, align 16, !tbaa !87 ; 7 uses
  %i.bgc = load <2 x float>, ptr %i.bga, align 16, !tbaa !87 ; 4 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %switch.load558, i64 24
  %i.bge = load float, ptr %i.bgd, align 8, !tbaa !87 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %switch.load558, i64 28
  %i.bgg = load float, ptr %i.bgf, align 4, !tbaa !87 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %switch.load558, i64 32
  %i.bgi = load float, ptr %i.bgh, align 16, !tbaa !87 ; 2 uses
  %wide.trip.count.i324.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check216 = icmp eq i32 %i.p, 1
  br i1 %min.iters.check216, label %scalar.ph215.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i323.i
  %i.bgj = shl nuw nsw i64 %wide.trip.count.i324.i, 3 ; 2 uses
  %i.bgk = getelementptr i8, ptr %3, i64 %i.bgj
  %i.bgl = getelementptr i8, ptr %2, i64 %i.bgj
  %bound0218 = icmp ult ptr %3, %i.bgl
  %bound1219 = icmp ult ptr %2, %i.bgk
  %found.conflict220 = and i1 %bound0218, %bound1219
  br i1 %found.conflict220, label %scalar.ph215.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %wide.trip.count.i324.i, 2147483646 ; 3 uses
  %broadcast.splat224 = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat226 = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat228 = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat230 = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat232 = shufflevector <2 x float> %i.bgc, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat234 = shufflevector <2 x float> %i.bgc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert235 = insertelement <2 x float> poison, float %i.bge, i64 0
  %broadcast.splat236 = shufflevector <2 x float> %broadcast.splatinsert235, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <2 x float> poison, float %i.bgg, i64 0
  %broadcast.splat238 = shufflevector <2 x float> %broadcast.splatinsert237, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <2 x float> poison, float %i.bgi, i64 0
  %broadcast.splat240 = shufflevector <2 x float> %broadcast.splatinsert239, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph221
  %index242 = phi i64 [ 0, %vector.ph221 ], [ %index.next243, %vector.body241 ] ; 3 uses
  %i.bgm = shl nuw nsw i64 %index242, 2           ; 2 uses
  %i.bgn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bgm ; 4 uses
  %.idx480 = shl i64 %index242, 3
  %i.bgo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx480 ; 4 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 8
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 2
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgo, i64 10
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgn, i64 4
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgo, i64 12
  %i.bgu = load i16, ptr %i.bgq, align 2, !tbaa !86, !alias.scope !104
  %i.bgv = load i16, ptr %i.bgr, align 2, !tbaa !86, !alias.scope !104
  %i.bgw = insertelement <2 x i16> poison, i16 %i.bgu, i64 0
  %i.bgx = insertelement <2 x i16> %i.bgw, i16 %i.bgv, i64 1
  %i.bgy = uitofp <2 x i16> %i.bgx to <2 x float> ; 3 uses
  %i.bgz = load i16, ptr %i.bgn, align 2, !tbaa !86, !alias.scope !104
  %i.bha = load i16, ptr %i.bgp, align 2, !tbaa !86, !alias.scope !104
  %i.bhb = insertelement <2 x i16> poison, i16 %i.bgz, i64 0
  %i.bhc = insertelement <2 x i16> %i.bhb, i16 %i.bha, i64 1
  %i.bhd = uitofp <2 x i16> %i.bhc to <2 x float>
  %i.bhe = fadd nnan <2 x float> %i.bhd, splat (float -3.276750e+04) ; 3 uses
  %i.bhf = fmul <2 x float> %broadcast.splat226, %i.bhe
  %i.bhg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat224, <2 x float> %i.bgy, <2 x float> %i.bhf)
  %i.bhh = load i16, ptr %i.bgs, align 2, !tbaa !86, !alias.scope !104
  %i.bhi = load i16, ptr %i.bgt, align 2, !tbaa !86, !alias.scope !104
  %i.bhj = insertelement <2 x i16> poison, i16 %i.bhh, i64 0
  %i.bhk = insertelement <2 x i16> %i.bhj, i16 %i.bhi, i64 1
  %i.bhl = uitofp <2 x i16> %i.bhk to <2 x float>
  %i.bhm = fadd <2 x float> %i.bhl, splat (float -3.276750e+04) ; 3 uses
  %i.bhn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat228, <2 x float> %i.bhm, <2 x float> %i.bhg) ; 2 uses
  %i.bho = fcmp ogt <2 x float> %i.bhn, splat (float 6.553500e+04)
  %i.bhp = select <2 x i1> %i.bho, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bhn
  %i.bhq = fptoui <2 x float> %i.bhp to <2 x i16>
  %i.bhr = fmul <2 x float> %broadcast.splat232, %i.bhe
  %i.bhs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat230, <2 x float> %i.bgy, <2 x float> %i.bhr)
  %i.bht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat234, <2 x float> %i.bhm, <2 x float> %i.bhs) ; 2 uses
  %i.bhu = fcmp ogt <2 x float> %i.bht, splat (float 6.553500e+04)
  %i.bhv = select <2 x i1> %i.bhu, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bht
  %i.bhw = fptoui <2 x float> %i.bhv to <2 x i16>
  %i.bhx = fmul <2 x float> %broadcast.splat238, %i.bhe
  %i.bhy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat236, <2 x float> %i.bgy, <2 x float> %i.bhx)
  %i.bhz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat240, <2 x float> %i.bhm, <2 x float> %i.bhy) ; 2 uses
  %i.bia = fcmp ogt <2 x float> %i.bhz, splat (float 6.553500e+04)
  %i.bib = select <2 x i1> %i.bia, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bhz
  %i.bic = fptoui <2 x float> %i.bib to <2 x i16>
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bgn, i64 6
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgo, i64 14
  %i.bif = load i16, ptr %i.bid, align 2, !tbaa !86, !alias.scope !104
  %i.big = load i16, ptr %i.bie, align 2, !tbaa !86, !alias.scope !104
  %i.bih = insertelement <2 x i16> poison, i16 %i.bif, i64 0
  %i.bii = insertelement <2 x i16> %i.bih, i16 %i.big, i64 1
  %i.bij = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bgm
  %i.bik = zext <2 x i16> %i.bii to <2 x i64>
  %i.bil = shl nuw <2 x i64> %i.bik, splat (i64 48)
  %i.bim = zext <2 x i16> %i.bhq to <2 x i64>
  %i.bin = shl nuw nsw <2 x i64> %i.bim, splat (i64 32)
  %i.bio = or disjoint <2 x i64> %i.bin, %i.bil
  %i.bip = zext <2 x i16> %i.bhw to <2 x i64>
  %i.biq = shl nuw nsw <2 x i64> %i.bip, splat (i64 16)
  %i.bir = or disjoint <2 x i64> %i.bio, %i.biq
  %i.bis = zext <2 x i16> %i.bic to <2 x i64>
  %i.bit = or disjoint <2 x i64> %i.bir, %i.bis
  store <2 x i64> %i.bit, ptr %i.bij, align 2, !alias.scope !105, !noalias !104
  %index.next243 = add nuw i64 %index242, 2       ; 2 uses
  %i.biu = icmp eq i64 %index.next243, %n.vec222
  br i1 %i.biu, label %middle.block244, label %vector.body241, !llvm.loop !65

middle.block244:                                  ; preds = %vector.body241
  %cmp.n245 = icmp eq i64 %n.vec222, %wide.trip.count.i324.i
  br i1 %cmp.n245, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %vector.memcheck217, %.lr.ph.i323.i, %middle.block244
  %indvars.iv.i325.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.i323.i ], [ %n.vec222, %middle.block244 ]
  %i.biv = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.biw = shufflevector <2 x float> %i.bgc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bix = shufflevector <4 x float> %i.bgb, <4 x float> %i.biw, <2 x i32> <i32 1, i32 4>
  %i.biy = shufflevector <4 x float> %i.bgb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.biz = shufflevector <2 x float> %i.biv, <2 x float> %i.bgc, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %scalar.ph215
  %indvars.iv.i325.i = phi i64 [ %indvars.iv.next.i339.i, %scalar.ph215 ], [ %indvars.iv.i325.i.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.bja = shl nuw nsw i64 %indvars.iv.i325.i, 2  ; 2 uses
  %i.bjb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bja ; 4 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 2
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjb, i64 4
  %i.bje = load i16, ptr %i.bjc, align 2, !tbaa !86
  %i.bjf = uitofp i16 %i.bje to float             ; 2 uses
  %i.bjg = load i16, ptr %i.bjb, align 2, !tbaa !86
  %i.bjh = load i16, ptr %i.bjd, align 2, !tbaa !86
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjb, i64 6
  %i.bjj = load i16, ptr %i.bji, align 2, !tbaa !86
  %i.bjk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bja
  %.sroa.6.0.insert.ext.i329.i = zext i16 %i.bjj to i64
  %.sroa.6.0.insert.shift.i330.i = shl nuw i64 %.sroa.6.0.insert.ext.i329.i, 48
  %i.bjl = insertelement <2 x i16> poison, i16 %i.bjh, i64 0
  %i.bjm = insertelement <2 x i16> %i.bjl, i16 %i.bjg, i64 1
  %i.bjn = uitofp <2 x i16> %i.bjm to <2 x float>
  %i.bjo = fadd <2 x float> %i.bjn, splat (float -3.276750e+04) ; 4 uses
  %i.bjp = shufflevector <2 x float> %i.bjo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bjq = fmul <2 x float> %i.bix, %i.bjp
  %i.bjr = insertelement <2 x float> poison, float %i.bjf, i64 0
  %i.bjs = shufflevector <2 x float> %i.bjr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.biy, <2 x float> %i.bjs, <2 x float> %i.bjq)
  %i.bju = shufflevector <2 x float> %i.bjo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.biz, <2 x float> %i.bju, <2 x float> %i.bjt) ; 2 uses
  %i.bjw = fcmp ogt <2 x float> %i.bjv, splat (float 6.553500e+04)
  %i.bjx = select <2 x i1> %i.bjw, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bjv
  %i.bjy = fptoui <2 x float> %i.bjx to <2 x i16>
  %i.bjz = extractelement <2 x float> %i.bjo, i64 1
  %i.bka = fmul float %i.bgg, %i.bjz
  %i.bkb = tail call float @llvm.fmuladd.f32(float %i.bge, float %i.bjf, float %i.bka)
  %i.bkc = extractelement <2 x float> %i.bjo, i64 0
  %i.bkd = tail call float @llvm.fmuladd.f32(float %i.bgi, float %i.bkc, float %i.bkb) ; 2 uses
  %i.bke = fcmp ogt float %i.bkd, 6.553500e+04
  %.sroa.speculated.2.i.i328.i = select i1 %i.bke, float 6.553500e+04, float %i.bkd
  %i.bkf = fptoui float %.sroa.speculated.2.i.i328.i to i16
  %i.bkg = zext <2 x i16> %i.bjy to <2 x i64>
  %i.bkh = shl nuw nsw <2 x i64> %i.bkg, <i64 32, i64 16> ; 2 uses
  %i.bki = extractelement <2 x i64> %i.bkh, i64 0
  %.sroa.5.0.insert.insert.i333.i = or disjoint i64 %i.bki, %.sroa.6.0.insert.shift.i330.i
  %i.bkj = extractelement <2 x i64> %i.bkh, i64 1
  %.sroa.4.0.insert.insert.i336.i = or disjoint i64 %.sroa.5.0.insert.insert.i333.i, %i.bkj
  %.sroa.0.0.insert.ext.i337.i = zext i16 %i.bkf to i64
  %.sroa.0.0.insert.insert.i338.i = or disjoint i64 %.sroa.4.0.insert.insert.i336.i, %.sroa.0.0.insert.ext.i337.i
  store i64 %.sroa.0.0.insert.insert.i338.i, ptr %i.bjk, align 2
  %indvars.iv.next.i339.i = add nuw nsw i64 %indvars.iv.i325.i, 1 ; 2 uses
  %exitcond.not.i340.i = icmp eq i64 %indvars.iv.next.i339.i, %wide.trip.count.i324.i
  br i1 %exitcond.not.i340.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph215, !llvm.loop !66

bb.am:                                            ; preds = %bb.aj
  %switch.tableidx559 = add i8 %i.h, -5           ; 2 uses
  %i.bkk = icmp ult i8 %switch.tableidx559, 4
  br i1 %i.bkk, label %switch.lookup560, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup560:                                 ; preds = %bb.am
  %i.bkl = icmp sgt i32 %i.p, 0
  br i1 %i.bkl, label %.lr.ph.i342.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i342.i:                                    ; preds = %switch.lookup560
  %i.bkm = zext nneg i8 %switch.tableidx559 to i64
  %switch.gep561 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bkm
  %switch.load562 = load ptr, ptr %switch.gep561, align 8 ; 5 uses
  %i.bkn = load float, ptr %switch.load562, align 16, !tbaa !87 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %switch.load562, i64 4
  %i.bkp = load float, ptr %i.bko, align 4, !tbaa !87 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %switch.load562, i64 8
  %i.bkr = load float, ptr %i.bkq, align 8, !tbaa !87 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %switch.load562, i64 12
  %i.bkt = getelementptr inbounds nuw i8, ptr %switch.load562, i64 28
  %i.bku = load <4 x float>, ptr %i.bks, align 4, !tbaa !87 ; 7 uses
  %i.bkv = load <2 x float>, ptr %i.bkt, align 4, !tbaa !87 ; 4 uses
  %wide.trip.count.i343.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check178 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i342.i
  %i.bkw = shl nuw nsw i64 %wide.trip.count.i343.i, 4 ; 2 uses
  %i.bkx = getelementptr i8, ptr %3, i64 %i.bkw
  %i.bky = getelementptr i8, ptr %2, i64 %i.bkw
  %bound0180 = icmp ult ptr %3, %i.bky
  %bound1181 = icmp ult ptr %2, %i.bkx
  %found.conflict182 = and i1 %bound0180, %bound1181
  br i1 %found.conflict182, label %scalar.ph177.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck179
  %n.vec184 = and i64 %wide.trip.count.i343.i, 2147483644 ; 3 uses
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %i.bkn, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <4 x float> poison, float %i.bkp, i64 0
  %broadcast.splat188 = shufflevector <4 x float> %broadcast.splatinsert187, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %i.bkr, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat192 = shufflevector <4 x float> %i.bku, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat194 = shufflevector <4 x float> %i.bku, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat196 = shufflevector <4 x float> %i.bku, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat198 = shufflevector <4 x float> %i.bku, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat200 = shufflevector <2 x float> %i.bkv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat202 = shufflevector <2 x float> %i.bkv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph183
  %index204 = phi i64 [ 0, %vector.ph183 ], [ %index.next206, %vector.body203 ] ; 5 uses
  %i.bkz = shl nuw nsw i64 %index204, 2           ; 2 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bkz ; 4 uses
  %.idx477 = shl i64 %index204, 4
  %i.blb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx477 ; 4 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  %.idx478 = shl i64 %index204, 4
  %i.bld = getelementptr inbounds nuw i8, ptr %2, i64 %.idx478 ; 4 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 32
  %.idx479 = shl i64 %index204, 4
  %i.blf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx479 ; 4 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 48
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bla, i64 4
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blb, i64 20
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bld, i64 36
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blf, i64 52
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bla, i64 8
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blb, i64 24
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bld, i64 40
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blf, i64 56
  %i.blp = load i32, ptr %i.blh, align 4, !tbaa !6, !alias.scope !106
  %i.blq = load i32, ptr %i.bli, align 4, !tbaa !6, !alias.scope !106
  %i.blr = load i32, ptr %i.blj, align 4, !tbaa !6, !alias.scope !106
  %i.bls = load i32, ptr %i.blk, align 4, !tbaa !6, !alias.scope !106
  %i.blt = insertelement <4 x i32> poison, i32 %i.blp, i64 0
  %i.blu = insertelement <4 x i32> %i.blt, i32 %i.blq, i64 1
  %i.blv = insertelement <4 x i32> %i.blu, i32 %i.blr, i64 2
  %i.blw = insertelement <4 x i32> %i.blv, i32 %i.bls, i64 3
  %i.blx = uitofp <4 x i32> %i.blw to <4 x float> ; 3 uses
  %i.bly = load i32, ptr %i.bla, align 4, !tbaa !6, !alias.scope !106
  %i.blz = load i32, ptr %i.blc, align 4, !tbaa !6, !alias.scope !106
  %i.bma = load i32, ptr %i.ble, align 4, !tbaa !6, !alias.scope !106
  %i.bmb = load i32, ptr %i.blg, align 4, !tbaa !6, !alias.scope !106
  %i.bmc = insertelement <4 x i32> poison, i32 %i.bly, i64 0
  %i.bmd = insertelement <4 x i32> %i.bmc, i32 %i.blz, i64 1
  %i.bme = insertelement <4 x i32> %i.bmd, i32 %i.bma, i64 2
  %i.bmf = insertelement <4 x i32> %i.bme, i32 %i.bmb, i64 3
  %i.bmg = uitofp <4 x i32> %i.bmf to <4 x float>
  %i.bmh = fadd nnan <4 x float> %i.bmg, splat (float f0xCF000000) ; 3 uses
  %i.bmi = fmul <4 x float> %broadcast.splat188, %i.bmh
  %i.bmj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat186, <4 x float> %i.blx, <4 x float> %i.bmi)
  %i.bmk = load i32, ptr %i.bll, align 4, !tbaa !6, !alias.scope !106
  %i.bml = load i32, ptr %i.blm, align 4, !tbaa !6, !alias.scope !106
  %i.bmm = load i32, ptr %i.bln, align 4, !tbaa !6, !alias.scope !106
  %i.bmn = load i32, ptr %i.blo, align 4, !tbaa !6, !alias.scope !106
  %i.bmo = insertelement <4 x i32> poison, i32 %i.bmk, i64 0
  %i.bmp = insertelement <4 x i32> %i.bmo, i32 %i.bml, i64 1
  %i.bmq = insertelement <4 x i32> %i.bmp, i32 %i.bmm, i64 2
  %i.bmr = insertelement <4 x i32> %i.bmq, i32 %i.bmn, i64 3
  %i.bms = uitofp <4 x i32> %i.bmr to <4 x float>
  %i.bmt = fadd <4 x float> %i.bms, splat (float f0xCF000000) ; 3 uses
  %i.bmu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat190, <4 x float> %i.bmt, <4 x float> %i.bmj) ; 2 uses
  %i.bmv = fcmp ogt <4 x float> %i.bmu, splat (float f0x4F800000)
  %i.bmw = select <4 x i1> %i.bmv, <4 x float> splat (float f0x4F800000), <4 x float> %i.bmu
  %i.bmx = fptoui <4 x float> %i.bmw to <4 x i32>
  %i.bmy = fmul <4 x float> %broadcast.splat194, %i.bmh
  %i.bmz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat192, <4 x float> %i.blx, <4 x float> %i.bmy)
  %i.bna = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat196, <4 x float> %i.bmt, <4 x float> %i.bmz) ; 2 uses
  %i.bnb = fmul <4 x float> %broadcast.splat200, %i.bmh
  %i.bnc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat198, <4 x float> %i.blx, <4 x float> %i.bnb)
  %i.bnd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat202, <4 x float> %i.bmt, <4 x float> %i.bnc) ; 2 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bla, i64 12
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.blb, i64 28
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bld, i64 44
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.blf, i64 60
  %i.bni = load i32, ptr %i.bne, align 4, !tbaa !6, !alias.scope !106
  %i.bnj = load i32, ptr %i.bnf, align 4, !tbaa !6, !alias.scope !106
  %i.bnk = load i32, ptr %i.bng, align 4, !tbaa !6, !alias.scope !106
  %i.bnl = load i32, ptr %i.bnh, align 4, !tbaa !6, !alias.scope !106
  %i.bnm = insertelement <4 x i32> poison, i32 %i.bni, i64 0
  %i.bnn = insertelement <4 x i32> %i.bnm, i32 %i.bnj, i64 1
  %i.bno = insertelement <4 x i32> %i.bnn, i32 %i.bnk, i64 2
  %i.bnp = insertelement <4 x i32> %i.bno, i32 %i.bnl, i64 3
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bkz
  %i.bnr = shufflevector <4 x float> %i.bnd, <4 x float> %i.bna, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bns = fcmp ogt <8 x float> %i.bnr, splat (float f0x4F800000)
  %i.bnt = shufflevector <4 x float> %i.bnd, <4 x float> %i.bna, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnu = select <8 x i1> %i.bns, <8 x float> splat (float f0x4F800000), <8 x float> %i.bnt
  %i.bnv = fptoui <8 x float> %i.bnu to <8 x i32>
  %i.bnw = shufflevector <4 x i32> %i.bmx, <4 x i32> %i.bnp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec205 = shufflevector <8 x i32> %i.bnv, <8 x i32> %i.bnw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec205, ptr %i.bnq, align 4, !alias.scope !107, !noalias !106
  %index.next206 = add nuw i64 %index204, 4       ; 2 uses
  %i.bnx = icmp eq i64 %index.next206, %n.vec184
  br i1 %i.bnx, label %middle.block207, label %vector.body203, !llvm.loop !70

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %n.vec184, %wide.trip.count.i343.i
  br i1 %cmp.n208, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %vector.memcheck179, %.lr.ph.i342.i, %middle.block207
  %indvars.iv.i344.i.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.lr.ph.i342.i ], [ %n.vec184, %middle.block207 ]
  %i.bny = shufflevector <2 x float> %i.bkv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bnz = shufflevector <4 x float> %i.bny, <4 x float> %i.bku, <2 x i32> <i32 0, i32 5>
  %i.boa = shufflevector <4 x float> %i.bku, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bob = shufflevector <4 x float> %i.bku, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.boc = shufflevector <2 x float> %i.bkv, <2 x float> %i.bob, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph177

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv.i344.i = phi i64 [ %indvars.iv.next.i350.i, %scalar.ph177 ], [ %indvars.iv.i344.i.ph, %scalar.ph177.preheader ] ; 2 uses
  %i.bod = shl nuw nsw i64 %indvars.iv.i344.i, 2  ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bod ; 4 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 4
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boe, i64 8
  %i.boh = load i32, ptr %i.bof, align 4, !tbaa !6
  %i.boi = uitofp i32 %i.boh to float             ; 2 uses
  %i.boj = load i32, ptr %i.boe, align 4, !tbaa !6
  %i.bok = load i32, ptr %i.bog, align 4, !tbaa !6
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boe, i64 12
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !6
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bod ; 3 uses
  %i.boo = uitofp i32 %i.boj to float
  %i.bop = fadd nnan float %i.boo, f0xCF000000    ; 2 uses
  %i.boq = fmul float %i.bkp, %i.bop
  %i.bor = tail call float @llvm.fmuladd.f32(float %i.bkn, float %i.boi, float %i.boq)
  %i.bos = uitofp i32 %i.bok to float
  %i.bot = fadd float %i.bos, f0xCF000000         ; 2 uses
  %i.bou = tail call float @llvm.fmuladd.f32(float %i.bkr, float %i.bot, float %i.bor) ; 2 uses
  %i.bov = fcmp ogt float %i.bou, f0x4F800000
  %.sroa.speculated.i.i345.i = select i1 %i.bov, float f0x4F800000, float %i.bou
  %i.bow = fptoui float %.sroa.speculated.i.i345.i to i32
  %i.box = insertelement <2 x float> poison, float %i.bop, i64 0
  %i.boy = shufflevector <2 x float> %i.box, <2 x float> poison, <2 x i32> zeroinitializer
  %i.boz = fmul <2 x float> %i.bnz, %i.boy
  %i.bpa = insertelement <2 x float> poison, float %i.boi, i64 0
  %i.bpb = shufflevector <2 x float> %i.bpa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boa, <2 x float> %i.bpb, <2 x float> %i.boz)
  %i.bpd = insertelement <2 x float> poison, float %i.bot, i64 0
  %i.bpe = shufflevector <2 x float> %i.bpd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boc, <2 x float> %i.bpe, <2 x float> %i.bpc) ; 2 uses
  %i.bpg = fcmp ogt <2 x float> %i.bpf, splat (float f0x4F800000)
  %i.bph = select <2 x i1> %i.bpg, <2 x float> splat (float f0x4F800000), <2 x float> %i.bpf
  %i.bpi = fptoui <2 x float> %i.bph to <2 x i32>
  store <2 x i32> %i.bpi, ptr %i.bon, align 4
  %.sroa.5.0..sroa_idx.i349.i = getelementptr inbounds nuw i8, ptr %i.bon, i64 8
  store i32 %i.bow, ptr %.sroa.5.0..sroa_idx.i349.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bon, i64 12
  store i32 %i.bom, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %indvars.iv.next.i350.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i351.i = icmp eq i64 %indvars.iv.next.i350.i, %wide.trip.count.i343.i
  br i1 %exitcond.not.i351.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph177, !llvm.loop !71

bb.an:                                            ; preds = %bb.aj
  %switch.tableidx563 = add i8 %i.h, -5           ; 2 uses
  %i.bpj = icmp ult i8 %switch.tableidx563, 4
  br i1 %i.bpj, label %switch.lookup564, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup564:                                 ; preds = %bb.an
  %i.bpk = icmp sgt i32 %i.p, 0
  br i1 %i.bpk, label %.lr.ph.i353.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i353.i:                                    ; preds = %switch.lookup564
  %i.bpl = zext nneg i8 %switch.tableidx563 to i64
  %switch.gep565 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bpl
  %switch.load566 = load ptr, ptr %switch.gep565, align 8 ; 5 uses
  %i.bpm = load float, ptr %switch.load566, align 16, !tbaa !87 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %switch.load566, i64 4
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !87 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %switch.load566, i64 8
  %i.bpq = load float, ptr %i.bpp, align 8, !tbaa !87 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %switch.load566, i64 12
  %i.bps = getelementptr inbounds nuw i8, ptr %switch.load566, i64 28
  %i.bpt = load <4 x float>, ptr %i.bpr, align 4, !tbaa !87 ; 7 uses
  %i.bpu = load <2 x float>, ptr %i.bps, align 4, !tbaa !87 ; 4 uses
  %wide.trip.count.i354.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check140 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i353.i
  %i.bpv = shl nuw nsw i64 %wide.trip.count.i354.i, 4 ; 2 uses
  %i.bpw = getelementptr i8, ptr %3, i64 %i.bpv
  %i.bpx = getelementptr i8, ptr %2, i64 %i.bpv
  %bound0142 = icmp ult ptr %3, %i.bpx
  %bound1143 = icmp ult ptr %2, %i.bpw
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %scalar.ph139.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck141
  %n.vec146 = and i64 %wide.trip.count.i354.i, 2147483644 ; 3 uses
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %i.bpm, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.bpo, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.bpq, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat154 = shufflevector <4 x float> %i.bpt, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat156 = shufflevector <4 x float> %i.bpt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat158 = shufflevector <4 x float> %i.bpt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat160 = shufflevector <4 x float> %i.bpt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat162 = shufflevector <2 x float> %i.bpu, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat164 = shufflevector <2 x float> %i.bpu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph145
  %index166 = phi i64 [ 0, %vector.ph145 ], [ %index.next168, %vector.body165 ] ; 5 uses
  %i.bpy = shl nuw nsw i64 %index166, 2           ; 2 uses
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bpy ; 4 uses
  %.idx474 = shl i64 %index166, 4
  %i.bqa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx474 ; 4 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 16
  %.idx475 = shl i64 %index166, 4
  %i.bqc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx475 ; 4 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqc, i64 32
  %.idx476 = shl i64 %index166, 4
  %i.bqe = getelementptr inbounds nuw i8, ptr %2, i64 %.idx476 ; 4 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 48
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpz, i64 4
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqa, i64 20
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqc, i64 36
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqe, i64 52
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bpz, i64 8
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqa, i64 24
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqc, i64 40
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqe, i64 56
  %i.bqo = load float, ptr %i.bqg, align 4, !tbaa !87, !alias.scope !108
  %i.bqp = load float, ptr %i.bqh, align 4, !tbaa !87, !alias.scope !108
  %i.bqq = load float, ptr %i.bqi, align 4, !tbaa !87, !alias.scope !108
  %i.bqr = load float, ptr %i.bqj, align 4, !tbaa !87, !alias.scope !108
  %i.bqs = insertelement <4 x float> poison, float %i.bqo, i64 0
  %i.bqt = insertelement <4 x float> %i.bqs, float %i.bqp, i64 1
  %i.bqu = insertelement <4 x float> %i.bqt, float %i.bqq, i64 2
  %i.bqv = insertelement <4 x float> %i.bqu, float %i.bqr, i64 3 ; 3 uses
  %i.bqw = load float, ptr %i.bpz, align 4, !tbaa !87, !alias.scope !108
  %i.bqx = load float, ptr %i.bqb, align 4, !tbaa !87, !alias.scope !108
  %i.bqy = load float, ptr %i.bqd, align 4, !tbaa !87, !alias.scope !108
  %i.bqz = load float, ptr %i.bqf, align 4, !tbaa !87, !alias.scope !108
  %i.bra = insertelement <4 x float> poison, float %i.bqw, i64 0
  %i.brb = insertelement <4 x float> %i.bra, float %i.bqx, i64 1
  %i.brc = insertelement <4 x float> %i.brb, float %i.bqy, i64 2
  %i.brd = insertelement <4 x float> %i.brc, float %i.bqz, i64 3
  %i.bre = fadd <4 x float> %i.brd, splat (float -5.000000e-01) ; 3 uses
  %i.brf = fmul <4 x float> %broadcast.splat150, %i.bre
  %i.brg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat148, <4 x float> %i.bqv, <4 x float> %i.brf)
  %i.brh = load float, ptr %i.bqk, align 4, !tbaa !87, !alias.scope !108
  %i.bri = load float, ptr %i.bql, align 4, !tbaa !87, !alias.scope !108
  %i.brj = load float, ptr %i.bqm, align 4, !tbaa !87, !alias.scope !108
  %i.brk = load float, ptr %i.bqn, align 4, !tbaa !87, !alias.scope !108
  %i.brl = insertelement <4 x float> poison, float %i.brh, i64 0
  %i.brm = insertelement <4 x float> %i.brl, float %i.bri, i64 1
  %i.brn = insertelement <4 x float> %i.brm, float %i.brj, i64 2
  %i.bro = insertelement <4 x float> %i.brn, float %i.brk, i64 3
  %i.brp = fadd <4 x float> %i.bro, splat (float -5.000000e-01) ; 3 uses
  %i.brq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat152, <4 x float> %i.brp, <4 x float> %i.brg) ; 2 uses
  %i.brr = fcmp ogt <4 x float> %i.brq, splat (float 1.000000e+00)
  %i.brs = select <4 x i1> %i.brr, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brq ; 2 uses
  %i.brt = fcmp ogt <4 x float> %i.brs, zeroinitializer
  %i.bru = select <4 x i1> %i.brt, <4 x float> %i.brs, <4 x float> zeroinitializer
  %i.brv = fmul <4 x float> %broadcast.splat156, %i.bre
  %i.brw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat154, <4 x float> %i.bqv, <4 x float> %i.brv)
  %i.brx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %i.brp, <4 x float> %i.brw) ; 2 uses
  %i.bry = fcmp ogt <4 x float> %i.brx, splat (float 1.000000e+00)
  %i.brz = select <4 x i1> %i.bry, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brx ; 2 uses
  %i.bsa = fmul <4 x float> %broadcast.splat162, %i.bre
  %i.bsb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat160, <4 x float> %i.bqv, <4 x float> %i.bsa)
  %i.bsc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat164, <4 x float> %i.brp, <4 x float> %i.bsb) ; 2 uses
  %i.bsd = fcmp ogt <4 x float> %i.bsc, splat (float 1.000000e+00)
  %i.bse = select <4 x i1> %i.bsd, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bsc ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bpz, i64 12
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bqa, i64 28
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bqc, i64 44
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bqe, i64 60
  %i.bsj = load float, ptr %i.bsf, align 4, !tbaa !87, !alias.scope !108
  %i.bsk = load float, ptr %i.bsg, align 4, !tbaa !87, !alias.scope !108
  %i.bsl = load float, ptr %i.bsh, align 4, !tbaa !87, !alias.scope !108
  %i.bsm = load float, ptr %i.bsi, align 4, !tbaa !87, !alias.scope !108
  %i.bsn = insertelement <4 x float> poison, float %i.bsj, i64 0
  %i.bso = insertelement <4 x float> %i.bsn, float %i.bsk, i64 1
  %i.bsp = insertelement <4 x float> %i.bso, float %i.bsl, i64 2
  %i.bsq = insertelement <4 x float> %i.bsp, float %i.bsm, i64 3
  %i.bsr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bpy
  %i.bss = shufflevector <4 x float> %i.bse, <4 x float> %i.brz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bst = fcmp ogt <8 x float> %i.bss, zeroinitializer
  %i.bsu = shufflevector <4 x float> %i.bse, <4 x float> %i.brz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsv = select <8 x i1> %i.bst, <8 x float> %i.bsu, <8 x float> zeroinitializer
  %i.bsw = shufflevector <4 x float> %i.bru, <4 x float> %i.bsq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec167 = shufflevector <8 x float> %i.bsv, <8 x float> %i.bsw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec167, ptr %i.bsr, align 4, !alias.scope !109, !noalias !108
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.bsx = icmp eq i64 %index.next168, %n.vec146
  br i1 %i.bsx, label %middle.block169, label %vector.body165, !llvm.loop !75

middle.block169:                                  ; preds = %vector.body165
  %cmp.n170 = icmp eq i64 %n.vec146, %wide.trip.count.i354.i
  br i1 %cmp.n170, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck141, %.lr.ph.i353.i, %middle.block169
  %indvars.iv.i355.i.ph = phi i64 [ 0, %vector.memcheck141 ], [ 0, %.lr.ph.i353.i ], [ %n.vec146, %middle.block169 ]
  %i.bsy = shufflevector <2 x float> %i.bpu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bsz = shufflevector <4 x float> %i.bsy, <4 x float> %i.bpt, <2 x i32> <i32 0, i32 5>
  %i.bta = shufflevector <4 x float> %i.bpt, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.btb = shufflevector <4 x float> %i.bpt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.btc = shufflevector <2 x float> %i.bpu, <2 x float> %i.btb, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv.i355.i = phi i64 [ %indvars.iv.next.i365.i, %scalar.ph139 ], [ %indvars.iv.i355.i.ph, %scalar.ph139.preheader ] ; 2 uses
  %i.btd = shl nuw nsw i64 %indvars.iv.i355.i, 2  ; 2 uses
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.btd ; 4 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 4
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bte, i64 8
  %i.bth = load float, ptr %i.btf, align 4, !tbaa !87 ; 2 uses
  %i.bti = load float, ptr %i.bte, align 4, !tbaa !87
  %i.btj = load float, ptr %i.btg, align 4, !tbaa !87
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bte, i64 12
  %i.btl = load float, ptr %i.btk, align 4, !tbaa !87
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.btd ; 3 uses
  %i.btn = fadd float %i.bti, -5.000000e-01       ; 2 uses
  %i.bto = fmul float %i.bpo, %i.btn
  %i.btp = tail call float @llvm.fmuladd.f32(float %i.bpm, float %i.bth, float %i.bto)
  %i.btq = fadd float %i.btj, -5.000000e-01       ; 2 uses
  %i.btr = tail call float @llvm.fmuladd.f32(float %i.bpq, float %i.btq, float %i.btp) ; 2 uses
  %i.bts = fcmp ogt float %i.btr, 1.000000e+00
  %.sroa.speculated.i.i356.i = select i1 %i.bts, float 1.000000e+00, float %i.btr ; 2 uses
end_hunk_1
