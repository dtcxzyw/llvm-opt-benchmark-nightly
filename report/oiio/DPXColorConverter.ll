Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/DPXColorConverter?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bh ; 2 uses
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
  %niter578.next.1 = add i64 %niter578, 2         ; 2 uses
  %niter578.ncmp.1 = icmp eq i64 %niter578.next.1, %unroll_iter577
  br i1 %niter578.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit545.unr-lcssa, label %.lr.ph.i112.i, !llvm.loop !13

bb.f:                                             ; preds = %bb.b
  %i.ch = icmp sgt i32 %i.p, 0
  br i1 %i.ch, label %.lr.ph.preheader.i119.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i119.i:                          ; preds = %bb.f
  %wide.trip.count.i120.i = zext nneg i32 %i.p to i64 ; 2 uses
  %xtraiter569 = and i64 %wide.trip.count.i120.i, 1
  %i.ci = icmp eq i32 %i.p, 1
  br i1 %i.ci, label %.lr.ph.i121.i.epil.preheader, label %.lr.ph.preheader.i119.i.new

.lr.ph.preheader.i119.i.new:                      ; preds = %.lr.ph.preheader.i119.i
  %unroll_iter572 = and i64 %wide.trip.count.i120.i, 2147483646
  br label %.lr.ph.i121.i

.lr.ph.i121.i:                                    ; preds = %.lr.ph.i121.i, %.lr.ph.preheader.i119.i.new
  %indvars.iv.i122.i = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %indvars.iv.next.i126.i.1, %.lr.ph.i121.i ] ; 3 uses
  %niter573 = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %niter573.next.1, %.lr.ph.i121.i ]
  %i.cj = shl nuw nsw i64 %indvars.iv.i122.i, 2   ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !80
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj ; 2 uses
  %i.cp = or disjoint i64 %i.cj, 2                ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp
  %i.ct = load <2 x float>, ptr %i.ck, align 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !80
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !80
  store float %i.cu, ptr %i.cr, align 4, !tbaa !80
  %i.cv = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cv, ptr %i.cs, align 4, !tbaa !80
  %indvars.iv.next.i126.i = shl i64 %indvars.iv.i122.i, 2 ; 2 uses
  %i.cw = or disjoint i64 %indvars.iv.next.i126.i, 4 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load float, ptr %i.cz, align 4, !tbaa !80
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cw ; 2 uses
  %i.dc = or disjoint i64 %indvars.iv.next.i126.i, 6 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dc
  %i.dg = load <2 x float>, ptr %i.cx, align 4
  store float %i.da, ptr %i.db, align 4, !tbaa !80
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !80
  store float %i.dh, ptr %i.de, align 4, !tbaa !80
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.di, ptr %i.df, align 4, !tbaa !80
  %indvars.iv.next.i126.i.1 = add nuw nsw i64 %indvars.iv.i122.i, 2 ; 2 uses
  %niter573.next.1 = add i64 %niter573, 2         ; 2 uses
  %niter573.ncmp.1 = icmp eq i64 %niter573.next.1, %unroll_iter572
  br i1 %niter573.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit546.unr-lcssa, label %.lr.ph.i121.i, !llvm.loop !14

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
  %i.dp = load double, ptr %i.do, align 8, !tbaa !82
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dl ; 2 uses
  %i.dr = or disjoint i64 %i.dl, 2                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dr
  %i.dv = load <2 x double>, ptr %i.dm, align 8
  store double %i.dp, ptr %i.dq, align 8, !tbaa !82
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !82
  store double %i.dw, ptr %i.dt, align 8, !tbaa !82
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.dx, ptr %i.du, align 8, !tbaa !82
  %indvars.iv.next.i135.i = shl i64 %indvars.iv.i131.i, 2 ; 2 uses
  %i.dy = or disjoint i64 %indvars.iv.next.i135.i, 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !82
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dy ; 2 uses
  %i.ee = or disjoint i64 %indvars.iv.next.i135.i, 6 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ee
  %i.ei = load <2 x double>, ptr %i.dz, align 8
  store double %i.ec, ptr %i.ed, align 8, !tbaa !82
  %i.ej = load double, ptr %i.ef, align 8, !tbaa !82
  store double %i.ej, ptr %i.eg, align 8, !tbaa !82
  %i.ek = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ek, ptr %i.eh, align 8, !tbaa !82
  %indvars.iv.next.i135.i.1 = add nuw nsw i64 %indvars.iv.i131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit547.unr-lcssa, label %.lr.ph.i130.i, !llvm.loop !15

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
  %5 = uitofp i8 %i.fg to float
  %6 = uitofp i8 %i.fm to float
  %7 = fadd nnan float %5, -1.275000e+02          ; 2 uses
  %8 = fadd float %6, -1.275000e+02               ; 2 uses
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fb, %10
  %i.fs = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ft, <2 x float> %i.fr)
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %i.fv = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fv, <2 x float> %i.fu) ; 3 uses
  %i.fx = fcmp ogt <2 x float> %i.fw, splat (float 2.550000e+02) ; 2 uses
  %i.fy = extractelement <2 x i1> %i.fx, i64 1
  %i.fz = extractelement <2 x float> %i.fw, i64 1
  %i.ga = fptoui float %i.fz to i8
  %i.gb = select i1 %i.fy, i8 -1, i8 %i.ga
  store i8 %i.gb, ptr %i.fq, align 1, !tbaa !77
  %i.gc = extractelement <2 x i1> %i.fx, i64 0
  %i.gd = extractelement <2 x float> %i.fw, i64 0
  %i.ge = fptoui float %i.gd to i8
  %i.gf = select i1 %i.gc, i8 -1, i8 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !77
  %i.gh = fmul float %i.eu, %7
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fp, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ew, float %8, float %i.gi) ; 2 uses
  %i.gk = fcmp ogt float %i.gj, 2.550000e+02
  %.sroa.speculated.2.i.i.i = select i1 %i.gk, float 2.550000e+02, float %i.gj
  %i.gl = fptoui float %.sroa.speculated.2.i.i.i to i8
  store i8 %i.gl, ptr %i.fo, align 1, !tbaa !77
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i138.i
  br i1 %exitcond.not.i141.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.j, !llvm.loop !16

bb.k:                                             ; preds = %bb.h
  %switch.tableidx468 = add i8 %i.h, -5           ; 2 uses
  %i.gm = icmp ult i8 %switch.tableidx468, 4
  br i1 %i.gm, label %switch.lookup469, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup469:                                 ; preds = %bb.k
  %i.gn = icmp sgt i32 %i.p, 0
  br i1 %i.gn, label %.lr.ph.i143.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i143.i:                                    ; preds = %switch.lookup469
  %i.go = zext nneg i8 %switch.tableidx468 to i64
  %switch.gep470 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.go
  %switch.load471 = load ptr, ptr %switch.gep470, align 8 ; 5 uses
  %i.gp = load float, ptr %switch.load471, align 16, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %switch.load471, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !80
  %i.gs = getelementptr inbounds nuw i8, ptr %switch.load471, i64 8
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !80
  %i.gu = getelementptr inbounds nuw i8, ptr %switch.load471, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %switch.load471, i64 28
  %i.gw = load <4 x float>, ptr %i.gu, align 4, !tbaa !80 ; 3 uses
  %i.gx = load <2 x float>, ptr %i.gv, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i144.i = zext nneg i32 %i.p to i64
  %i.gy = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.gz = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ha = shufflevector <2 x float> %i.gx, <2 x float> %i.gz, <2 x i32> <i32 1, i32 3>
  %i.hb = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> %i.gw, <2 x i32> <i32 0, i32 5>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i143.i
  %indvars.iv.i145.i = phi i64 [ 0, %.lr.ph.i143.i ], [ %indvars.iv.next.i151.i, %bb.l ] ; 4 uses
  %i.hd = shl nuw i64 %indvars.iv.i145.i, 33
  %sext.i146.i = ashr exact i64 %i.hd, 32         ; 2 uses
  %i.he = or i64 %sext.i146.i, 2
  %i.hf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !79
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i145.i, 2
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !79
  %i.hk = and i64 %sext.i146.i, -4
  %i.hl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !79
  %.idx27.i.i = mul nuw nsw i64 %indvars.iv.i145.i, 6
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i.i ; 2 uses
  %i.ho = uitofp i16 %i.hj to float               ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hq = insertelement <2 x i16> poison, i16 %i.hm, i64 0
  %i.hr = insertelement <2 x i16> %i.hq, i16 %i.hg, i64 1
  %i.hs = uitofp <2 x i16> %i.hr to <2 x float>
  %i.ht = fadd <2 x float> %i.hs, splat (float -3.276750e+04) ; 4 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 1
  %i.hv = fmul float %i.gr, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ho, float %i.hv)
  %i.hx = extractelement <2 x float> %i.ht, i64 0
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.hx, float %i.hw) ; 2 uses
  %i.hz = fcmp ogt float %i.hy, 6.553500e+04
  %.sroa.speculated.i.i148.i = select i1 %i.hz, float 6.553500e+04, float %i.hy
  %i.ia = fptoui float %.sroa.speculated.i.i148.i to i16
  store i16 %i.ia, ptr %i.hp, align 2, !tbaa !79
  %i.ib = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = fmul <2 x float> %i.hc, %i.ib
  %i.id = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ie, <2 x float> %i.ic)
  %i.ig = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.ig, <2 x float> %i.if) ; 2 uses
  %i.ii = fcmp ogt <2 x float> %i.ih, splat (float 6.553500e+04)
  %i.ij = select <2 x i1> %i.ii, <2 x float> splat (float 6.553500e+04), <2 x float> %i.ih
  %i.ik = fptoui <2 x float> %i.ij to <2 x i16>
  store <2 x i16> %i.ik, ptr %i.hn, align 2, !tbaa !79
  %indvars.iv.next.i151.i = add nuw nsw i64 %indvars.iv.i145.i, 1 ; 2 uses
  %exitcond.not.i152.i = icmp eq i64 %indvars.iv.next.i151.i, %wide.trip.count.i144.i
  br i1 %exitcond.not.i152.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.l, !llvm.loop !17

bb.m:                                             ; preds = %bb.h
  %switch.tableidx472 = add i8 %i.h, -5           ; 2 uses
  %i.il = icmp ult i8 %switch.tableidx472, 4
  br i1 %i.il, label %switch.lookup473, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup473:                                 ; preds = %bb.m
  %i.im = icmp sgt i32 %i.p, 0
  br i1 %i.im, label %.lr.ph.i154.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i154.i:                                    ; preds = %switch.lookup473
  %i.in = zext nneg i8 %switch.tableidx472 to i64
  %switch.gep474 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.in
  %switch.load475 = load ptr, ptr %switch.gep474, align 8 ; 5 uses
  %i.io = load float, ptr %switch.load475, align 16, !tbaa !80
  %i.ip = getelementptr inbounds nuw i8, ptr %switch.load475, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %switch.load475, i64 8
  %i.is = load float, ptr %i.ir, align 8, !tbaa !80
  %i.it = getelementptr inbounds nuw i8, ptr %switch.load475, i64 12
  %i.iu = getelementptr inbounds nuw i8, ptr %switch.load475, i64 28
  %i.iv = load <4 x float>, ptr %i.it, align 4, !tbaa !80 ; 3 uses
  %i.iw = load <2 x float>, ptr %i.iu, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i155.i = zext nneg i32 %i.p to i64
  %i.ix = shufflevector <4 x float> %i.iv, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.iy = shufflevector <4 x float> %i.iv, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.iz = shufflevector <2 x float> %i.iw, <2 x float> %i.iy, <2 x i32> <i32 1, i32 3>
  %i.ja = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> %i.iv, <2 x i32> <i32 0, i32 5>
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i154.i
  %indvars.iv.i156.i = phi i64 [ 0, %.lr.ph.i154.i ], [ %indvars.iv.next.i164.i, %bb.n ] ; 4 uses
  %i.jc = shl nuw i64 %indvars.iv.i156.i, 33
  %sext.i157.i = ashr exact i64 %i.jc, 32         ; 2 uses
  %i.jd = or i64 %sext.i157.i, 2
  %i.je = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !6
  %.idx.i158.i = shl nuw nsw i64 %indvars.iv.i156.i, 3
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i158.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !6
  %i.jj = and i64 %sext.i157.i, -4
  %i.jk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !6
  %.idx27.i160.i = mul nuw nsw i64 %indvars.iv.i156.i, 12
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i160.i ; 2 uses
  %i.jn = uitofp i32 %i.ji to float               ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = uitofp i32 %i.jf to float
  %i.jq = uitofp i32 %i.jl to float
  %i.jr = fadd nnan float %i.jp, f0xCF000000      ; 2 uses
  %i.js = fadd float %i.jq, f0xCF000000           ; 2 uses
  %i.jt = fmul float %i.iq, %i.jr
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.io, float %i.jn, float %i.jt)
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.is, float %i.js, float %i.ju) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, f0x4F800000
  %.sroa.speculated.i.i161.i = select i1 %i.jw, float f0x4F800000, float %i.jv
  %i.jx = fptoui float %.sroa.speculated.i.i161.i to i32
  store i32 %i.jx, ptr %i.jo, align 4, !tbaa !6
  %i.jy = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x float> %i.jb, %i.jz
  %i.kb = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.kc, <2 x float> %i.ka)
  %i.ke = insertelement <2 x float> poison, float %i.js, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.kf, <2 x float> %i.kd) ; 2 uses
  %i.kh = fcmp ogt <2 x float> %i.kg, splat (float f0x4F800000)
  %i.ki = select <2 x i1> %i.kh, <2 x float> splat (float f0x4F800000), <2 x float> %i.kg
  %i.kj = fptoui <2 x float> %i.ki to <2 x i32>
  store <2 x i32> %i.kj, ptr %i.jm, align 4, !tbaa !6
  %indvars.iv.next.i164.i = add nuw nsw i64 %indvars.iv.i156.i, 1 ; 2 uses
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i164.i, %wide.trip.count.i155.i
  br i1 %exitcond.not.i165.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.n, !llvm.loop !18

bb.o:                                             ; preds = %bb.h
  %switch.tableidx476 = add i8 %i.h, -5           ; 2 uses
  %i.kk = icmp ult i8 %switch.tableidx476, 4
  br i1 %i.kk, label %switch.lookup477, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup477:                                 ; preds = %bb.o
  %i.kl = icmp sgt i32 %i.p, 0
  br i1 %i.kl, label %.lr.ph.i167.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i167.i:                                    ; preds = %switch.lookup477
  %i.km = zext nneg i8 %switch.tableidx476 to i64
  %switch.gep478 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.km
  %switch.load479 = load ptr, ptr %switch.gep478, align 8 ; 5 uses
  %i.kn = load float, ptr %switch.load479, align 16, !tbaa !80
  %i.ko = getelementptr inbounds nuw i8, ptr %switch.load479, i64 4
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !80
  %i.kq = getelementptr inbounds nuw i8, ptr %switch.load479, i64 8
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !80
  %i.ks = getelementptr inbounds nuw i8, ptr %switch.load479, i64 12
  %i.kt = getelementptr inbounds nuw i8, ptr %switch.load479, i64 28
  %i.ku = load <4 x float>, ptr %i.ks, align 4, !tbaa !80 ; 3 uses
  %i.kv = load <2 x float>, ptr %i.kt, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i168.i = zext nneg i32 %i.p to i64
  %i.kw = shufflevector <4 x float> %i.ku, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.kx = shufflevector <4 x float> %i.ku, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ky = shufflevector <2 x float> %i.kv, <2 x float> %i.kx, <2 x i32> <i32 1, i32 3>
  %i.kz = shufflevector <2 x float> %i.kv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> %i.ku, <2 x i32> <i32 0, i32 5>
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i177.i, %bb.p ] ; 4 uses
  %i.lb = shl nuw i64 %indvars.iv.i169.i, 33
  %sext.i170.i = ashr exact i64 %i.lb, 32         ; 2 uses
  %i.lc = or i64 %sext.i170.i, 2
  %i.ld = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4, !tbaa !80
  %.idx.i171.i = shl nuw nsw i64 %indvars.iv.i169.i, 3
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i171.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !80 ; 2 uses
  %i.li = and i64 %sext.i170.i, -4
  %i.lj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.li
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !80
  %.idx27.i173.i = mul nuw nsw i64 %indvars.iv.i169.i, 12
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i173.i ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %12 = fadd float %i.le, -5.000000e-01           ; 2 uses
  %13 = fadd float %i.lk, -5.000000e-01           ; 2 uses
  %i.ln = fmul float %i.kp, %12
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.lh, float %i.ln)
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.kr, float %13, float %i.lo) ; 2 uses
  %i.lq = fcmp ogt float %i.lp, 1.000000e+00
  %.sroa.speculated.i.i174.i = select i1 %i.lq, float 1.000000e+00, float %i.lp ; 2 uses
  %i.lr = fcmp ogt float %.sroa.speculated.i.i174.i, 0.000000e+00
  %.sroa.speculated14.i.i.i = select i1 %i.lr, float %.sroa.speculated.i.i174.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i.i, ptr %i.lm, align 4, !tbaa !80
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = fmul <2 x float> %i.la, %15
  %i.lt = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.lu, <2 x float> %i.ls)
  %16 = insertelement <2 x float> poison, float %13, i64 0
  %i.lw = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.lw, <2 x float> %i.lv) ; 2 uses
  %i.ly = fcmp ogt <2 x float> %i.lx, splat (float 1.000000e+00)
  %i.lz = select <2 x i1> %i.ly, <2 x float> splat (float 1.000000e+00), <2 x float> %i.lx ; 2 uses
  %i.ma = fcmp ogt <2 x float> %i.lz, zeroinitializer
  %i.mb = select <2 x i1> %i.ma, <2 x float> %i.lz, <2 x float> zeroinitializer
  store <2 x float> %i.mb, ptr %i.ll, align 4, !tbaa !80
  %indvars.iv.next.i177.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i178.i = icmp eq i64 %indvars.iv.next.i177.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i178.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.p, !llvm.loop !19

bb.q:                                             ; preds = %bb.h
  %switch.tableidx480 = add i8 %i.h, -5           ; 2 uses
  %i.mc = icmp ult i8 %switch.tableidx480, 4
  br i1 %i.mc, label %switch.lookup481, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup481:                                 ; preds = %bb.q
  %i.md = icmp sgt i32 %i.p, 0
  br i1 %i.md, label %.lr.ph.i180.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i180.i:                                    ; preds = %switch.lookup481
  %i.me = zext nneg i8 %switch.tableidx480 to i64
  %switch.gep482 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.me
  %switch.load483 = load ptr, ptr %switch.gep482, align 8 ; 4 uses
  %i.mf = load float, ptr %switch.load483, align 16, !tbaa !80
  %i.mg = fpext float %i.mf to double
  %i.mh = getelementptr inbounds nuw i8, ptr %switch.load483, i64 4
  %i.mi = load <2 x float>, ptr %i.mh, align 4, !tbaa !80
  %i.mj = getelementptr inbounds nuw i8, ptr %switch.load483, i64 12
  %i.mk = getelementptr inbounds nuw i8, ptr %switch.load483, i64 28
  %i.ml = load <4 x float>, ptr %i.mj, align 4, !tbaa !80 ; 3 uses
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.mn = fpext <2 x float> %i.mm to <2 x double>
  %i.mo = load <2 x float>, ptr %i.mk, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i181.i = zext nneg i32 %i.p to i64
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.ml, <2 x i32> <i32 0, i32 5>
  %i.mr = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ms = shufflevector <2 x float> %i.mo, <2 x float> %i.mr, <2 x i32> <i32 1, i32 3>
  %i.mt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mg, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i180.i
  %indvars.iv.i182.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i193.i, %bb.r ] ; 4 uses
  %i.mu = shl nuw i64 %indvars.iv.i182.i, 33
  %sext.i183.i = ashr exact i64 %i.mu, 32         ; 2 uses
  %i.mv = or i64 %sext.i183.i, 2
  %i.mw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !82
  %.idx.i184.i = shl nuw nsw i64 %indvars.iv.i182.i, 4
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i184.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !82 ; 2 uses
  %i.nb = and i64 %sext.i183.i, -4
  %i.nc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !82
  %.idx27.i186.i = mul nuw nsw i64 %indvars.iv.i182.i, 24
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i186.i ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.nd, i64 1
  %i.ni = fptrunc <2 x double> %i.nh to <2 x float>
  %i.nj = fadd <2 x float> %i.ni, splat (float -5.000000e-01) ; 3 uses
  %i.nk = fmul <2 x float> %i.mi, %i.nj
  %i.nl = fpext <2 x float> %i.nk to <2 x double>
  %i.nm = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.na, i64 0
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %i.nm, <2 x double> %i.nl)
  %i.no = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.nn)
  %i.np = fptrunc double %i.no to float           ; 2 uses
  %i.nq = fcmp ogt float %i.np, 1.000000e+00
  %.sroa.speculated.i.i187.i = select i1 %i.nq, float 1.000000e+00, float %i.np ; 2 uses
  %i.nr = fpext float %.sroa.speculated.i.i187.i to double
  %i.ns = fcmp ogt float %.sroa.speculated.i.i187.i, 0.000000e+00
  %.sroa.speculated14.i.i188.i = select i1 %i.ns, double %i.nr, double 0.000000e+00
  store double %.sroa.speculated14.i.i188.i, ptr %i.nf, align 8, !tbaa !82
  %i.nt = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x float> %i.mq, %i.nt
  %i.nv = fpext <2 x float> %i.nu to <2 x double>
  %i.nw = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.nx, <2 x double> %i.nv)
  %i.nz = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = fmul <2 x float> %i.ms, %i.nz
  %i.ob = fpext <2 x float> %i.oa to <2 x double>
  %i.oc = fadd <2 x double> %i.ny, %i.ob
  %i.od = fptrunc <2 x double> %i.oc to <2 x float> ; 2 uses
  %i.oe = fcmp ogt <2 x float> %i.od, splat (float 1.000000e+00)
  %i.of = select <2 x i1> %i.oe, <2 x float> splat (float 1.000000e+00), <2 x float> %i.od ; 2 uses
  %i.og = fpext <2 x float> %i.of to <2 x double>
  %i.oh = fcmp ogt <2 x float> %i.of, zeroinitializer
  %i.oi = select <2 x i1> %i.oh, <2 x double> %i.og, <2 x double> zeroinitializer
  store <2 x double> %i.oi, ptr %i.ne, align 8, !tbaa !82
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
  %i.oj = icmp ult i8 %switch.tableidx484, 4
  br i1 %i.oj, label %switch.lookup485, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup485:                                 ; preds = %bb.t
  %i.ok = icmp sgt i32 %i.p, 0
  br i1 %i.ok, label %.lr.ph.i196.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i196.i:                                    ; preds = %switch.lookup485
  %i.ol = zext nneg i8 %switch.tableidx484 to i64
  %switch.gep486 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ol
  %switch.load487 = load ptr, ptr %switch.gep486, align 8 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %switch.load487, i64 16
  %i.on = load <4 x float>, ptr %switch.load487, align 16, !tbaa !80 ; 7 uses
  %i.oo = load <2 x float>, ptr %i.om, align 16, !tbaa !80 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %switch.load487, i64 24
  %i.oq = load float, ptr %i.op, align 8, !tbaa !80 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %switch.load487, i64 28
  %i.os = load float, ptr %i.or, align 4, !tbaa !80 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %switch.load487, i64 32
  %i.ou = load float, ptr %i.ot, align 16, !tbaa !80 ; 2 uses
  %wide.trip.count.i197.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check419 = icmp ult i32 %i.p, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph.i196.i
  %i.ov = mul nuw nsw i64 %wide.trip.count.i197.i, 3 ; 2 uses
  %scevgep413 = getelementptr i8, ptr %3, i64 %i.ov
  %scevgep414 = getelementptr i8, ptr %2, i64 %i.ov
  %bound0415 = icmp ult ptr %3, %scevgep414
  %bound1416 = icmp ult ptr %2, %scevgep413
  %found.conflict417 = and i1 %bound0415, %bound1416
  br i1 %found.conflict417, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %n.vec421 = and i64 %wide.trip.count.i197.i, 2147483640 ; 3 uses
  %broadcast.splat423 = shufflevector <4 x float> %i.on, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat425 = shufflevector <4 x float> %i.on, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat427 = shufflevector <4 x float> %i.on, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat429 = shufflevector <4 x float> %i.on, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat431 = shufflevector <2 x float> %i.oo, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat433 = shufflevector <2 x float> %i.oo, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert434 = insertelement <8 x float> poison, float %i.oq, i64 0
  %broadcast.splat435 = shufflevector <8 x float> %broadcast.splatinsert434, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert436 = insertelement <8 x float> poison, float %i.os, i64 0
  %broadcast.splat437 = shufflevector <8 x float> %broadcast.splatinsert436, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.ou, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph420
  %index441 = phi i64 [ 0, %vector.ph420 ], [ %index.next443, %vector.body440 ] ; 9 uses
  %i.ow = mul nuw nsw i64 %index441, 3            ; 2 uses
  %i.ox = mul nuw i64 %index441, 3
  %i.oy = mul nuw i64 %index441, 3
  %i.oz = mul nuw i64 %index441, 3
  %i.pa = mul nuw i64 %index441, 3
  %i.pb = mul nuw i64 %index441, 3
  %i.pc = mul nuw i64 %index441, 3
  %i.pd = mul nuw i64 %index441, 3
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 %i.ow ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 3
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 %i.oy ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 6
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 %i.oz ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 9
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 %i.pa ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 %i.pb ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 15
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 %i.pc ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 18
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 21
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ph, i64 7
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pj, i64 10
  %i.px = getelementptr inbounds nuw i8, ptr %i.pl, i64 13
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 19
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 22
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pf, i64 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pj, i64 11
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 14
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pn, i64 17
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pp, i64 20
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 23
  %i.qj = load i8, ptr %i.pt, align 1, !tbaa !77, !alias.scope !83
  %i.qk = load i8, ptr %i.pu, align 1, !tbaa !77, !alias.scope !83
  %i.ql = load i8, ptr %i.pv, align 1, !tbaa !77, !alias.scope !83
  %i.qm = load i8, ptr %i.pw, align 1, !tbaa !77, !alias.scope !83
  %i.qn = load i8, ptr %i.px, align 1, !tbaa !77, !alias.scope !83
  %i.qo = load i8, ptr %i.py, align 1, !tbaa !77, !alias.scope !83
  %i.qp = load i8, ptr %i.pz, align 1, !tbaa !77, !alias.scope !83
  %i.qq = load i8, ptr %i.qa, align 1, !tbaa !77, !alias.scope !83
  %i.qr = insertelement <8 x i8> poison, i8 %i.qj, i64 0
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 1
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 2
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 3
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 4
  %i.qw = insertelement <8 x i8> %i.qv, i8 %i.qo, i64 5
  %i.qx = insertelement <8 x i8> %i.qw, i8 %i.qp, i64 6
  %i.qy = insertelement <8 x i8> %i.qx, i8 %i.qq, i64 7
  %i.qz = uitofp <8 x i8> %i.qy to <8 x float>    ; 3 uses
  %i.ra = load i8, ptr %i.pe, align 1, !tbaa !77, !alias.scope !83
  %i.rb = load i8, ptr %i.pg, align 1, !tbaa !77, !alias.scope !83
  %i.rc = load i8, ptr %i.pi, align 1, !tbaa !77, !alias.scope !83
  %i.rd = load i8, ptr %i.pk, align 1, !tbaa !77, !alias.scope !83
  %i.re = load i8, ptr %i.pm, align 1, !tbaa !77, !alias.scope !83
  %i.rf = load i8, ptr %i.po, align 1, !tbaa !77, !alias.scope !83
  %i.rg = load i8, ptr %i.pq, align 1, !tbaa !77, !alias.scope !83
  %i.rh = load i8, ptr %i.ps, align 1, !tbaa !77, !alias.scope !83
  %i.ri = insertelement <8 x i8> poison, i8 %i.ra, i64 0
  %i.rj = insertelement <8 x i8> %i.ri, i8 %i.rb, i64 1
  %i.rk = insertelement <8 x i8> %i.rj, i8 %i.rc, i64 2
  %i.rl = insertelement <8 x i8> %i.rk, i8 %i.rd, i64 3
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 4
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 5
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 6
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 7
  %i.rq = uitofp <8 x i8> %i.rp to <8 x float>
  %i.rr = fadd nnan <8 x float> %i.rq, splat (float -1.275000e+02) ; 3 uses
  %i.rs = fmul <8 x float> %broadcast.splat425, %i.rr
  %i.rt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat423, <8 x float> %i.qz, <8 x float> %i.rs)
  %i.ru = load i8, ptr %i.qb, align 1, !tbaa !77, !alias.scope !83
  %i.rv = load i8, ptr %i.qc, align 1, !tbaa !77, !alias.scope !83
  %i.rw = load i8, ptr %i.qd, align 1, !tbaa !77, !alias.scope !83
  %i.rx = load i8, ptr %i.qe, align 1, !tbaa !77, !alias.scope !83
  %i.ry = load i8, ptr %i.qf, align 1, !tbaa !77, !alias.scope !83
  %i.rz = load i8, ptr %i.qg, align 1, !tbaa !77, !alias.scope !83
  %i.sa = load i8, ptr %i.qh, align 1, !tbaa !77, !alias.scope !83
  %i.sb = load i8, ptr %i.qi, align 1, !tbaa !77, !alias.scope !83
  %i.sc = insertelement <8 x i8> poison, i8 %i.ru, i64 0
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 1
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 2
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 3
  %i.sg = insertelement <8 x i8> %i.sf, i8 %i.ry, i64 4
  %i.sh = insertelement <8 x i8> %i.sg, i8 %i.rz, i64 5
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 6
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 7
  %i.sk = uitofp <8 x i8> %i.sj to <8 x float>
  %i.sl = fadd <8 x float> %i.sk, splat (float -1.275000e+02) ; 3 uses
  %i.sm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat427, <8 x float> %i.sl, <8 x float> %i.rt) ; 2 uses
  %i.sn = fcmp ogt <8 x float> %i.sm, splat (float 2.550000e+02)
  %i.so = select <8 x i1> %i.sn, <8 x float> splat (float 2.550000e+02), <8 x float> %i.sm
  %i.sp = fptoui <8 x float> %i.so to <8 x i8>
  %i.sq = fmul <8 x float> %broadcast.splat431, %i.rr
  %i.sr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat429, <8 x float> %i.qz, <8 x float> %i.sq)
  %i.ss = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat433, <8 x float> %i.sl, <8 x float> %i.sr) ; 2 uses
  %i.st = fmul <8 x float> %broadcast.splat437, %i.rr
  %i.su = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat435, <8 x float> %i.qz, <8 x float> %i.st)
  %i.sv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat439, <8 x float> %i.sl, <8 x float> %i.su) ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 %i.ow
  %i.sx = shufflevector <8 x float> %i.sv, <8 x float> %i.ss, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sy = fcmp ogt <16 x float> %i.sx, splat (float 2.550000e+02)
  %i.sz = shufflevector <8 x float> %i.sv, <8 x float> %i.ss, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ta = select <16 x i1> %i.sy, <16 x float> splat (float 2.550000e+02), <16 x float> %i.sz
  %i.tb = fptoui <16 x float> %i.ta to <16 x i8>
  %i.tc = shufflevector <8 x i8> %i.sp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec442 = shufflevector <16 x i8> %i.tb, <16 x i8> %i.tc, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec442, ptr %i.sw, align 1, !alias.scope !84, !noalias !83
  %index.next443 = add nuw i64 %index441, 8       ; 2 uses
  %i.td = icmp eq i64 %index.next443, %n.vec421
  br i1 %i.td, label %middle.block444, label %vector.body440, !llvm.loop !24

middle.block444:                                  ; preds = %vector.body440
  %cmp.n445 = icmp eq i64 %n.vec421, %wide.trip.count.i197.i
  br i1 %cmp.n445, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %vector.memcheck412, %.lr.ph.i196.i, %middle.block444
  %indvars.iv.i198.i.ph = phi i64 [ 0, %vector.memcheck412 ], [ 0, %.lr.ph.i196.i ], [ %n.vec421, %middle.block444 ]
  %i.te = shufflevector <2 x float> %i.oo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> %i.on, <2 x i32> <i32 0, i32 5>
  %i.tg = shufflevector <4 x float> %i.on, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.th = shufflevector <4 x float> %i.on, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ti = shufflevector <2 x float> %i.oo, <2 x float> %i.th, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph418

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv.i198.i = phi i64 [ %indvars.iv.next.i203.i, %scalar.ph418 ], [ %indvars.iv.i198.i.ph, %scalar.ph418.preheader ] ; 2 uses
  %i.tj = mul nuw nsw i64 %indvars.iv.i198.i, 3   ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 %i.tj ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 2
  %i.tn = load i8, ptr %i.tl, align 1, !tbaa !77
  %i.to = uitofp i8 %i.tn to float                ; 2 uses
  %i.tp = load i8, ptr %i.tk, align 1, !tbaa !77
  %i.tq = load i8, ptr %i.tm, align 1, !tbaa !77
  %17 = uitofp i8 %i.tp to float
  %18 = uitofp i8 %i.tq to float
  %19 = fadd nnan float %17, -1.275000e+02        ; 2 uses
  %20 = fadd float %18, -1.275000e+02             ; 2 uses
  %21 = insertelement <2 x float> poison, float %19, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.tf, %22
  %i.ts = insertelement <2 x float> poison, float %i.to, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tg, <2 x float> %i.tt, <2 x float> %i.tr)
  %23 = insertelement <2 x float> poison, float %20, i64 0
  %i.tv = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ti, <2 x float> %i.tv, <2 x float> %i.tu) ; 3 uses
  %i.tx = fcmp ogt <2 x float> %i.tw, splat (float 2.550000e+02) ; 2 uses
  %i.ty = extractelement <2 x i1> %i.tx, i64 1
  %i.tz = extractelement <2 x float> %i.tw, i64 1
  %i.ua = fptoui float %i.tz to i8
  %i.ub = select i1 %i.ty, i8 -1, i8 %i.ua
  %i.uc = extractelement <2 x i1> %i.tx, i64 0
  %i.ud = extractelement <2 x float> %i.tw, i64 0
  %i.ue = fptoui float %i.ud to i8
  %i.uf = select i1 %i.uc, i8 -1, i8 %i.ue
  %i.ug = fmul float %i.os, %19
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.oq, float %i.to, float %i.ug)
  %i.ui = tail call float @llvm.fmuladd.f32(float %i.ou, float %20, float %i.uh) ; 2 uses
  %i.uj = fcmp ogt float %i.ui, 2.550000e+02
  %.sroa.speculated.2.i.i201.i = select i1 %i.uj, float 2.550000e+02, float %i.ui
  %i.uk = fptoui float %.sroa.speculated.2.i.i201.i to i8
  %i.ul = getelementptr inbounds nuw i8, ptr %3, i64 %i.tj ; 3 uses
  store i8 %i.uk, ptr %i.ul, align 1
  %.sroa.4.0..sroa_idx.i202.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  store i8 %i.uf, ptr %.sroa.4.0..sroa_idx.i202.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  store i8 %i.ub, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next.i203.i = add nuw nsw i64 %indvars.iv.i198.i, 1 ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %indvars.iv.next.i203.i, %wide.trip.count.i197.i
  br i1 %exitcond.not.i204.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph418, !llvm.loop !25

bb.u:                                             ; preds = %bb.s
  %switch.tableidx488 = add i8 %i.h, -5           ; 2 uses
  %i.um = icmp ult i8 %switch.tableidx488, 4
  br i1 %i.um, label %switch.lookup489, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup489:                                 ; preds = %bb.u
  %i.un = icmp sgt i32 %i.p, 0
  br i1 %i.un, label %.lr.ph.i206.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i206.i:                                    ; preds = %switch.lookup489
  %i.uo = zext nneg i8 %switch.tableidx488 to i64
  %switch.gep490 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.uo
  %switch.load491 = load ptr, ptr %switch.gep490, align 8 ; 5 uses
  %i.up = load float, ptr %switch.load491, align 16, !tbaa !80 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %switch.load491, i64 4
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !80 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %switch.load491, i64 8
  %i.ut = load float, ptr %i.us, align 8, !tbaa !80 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %switch.load491, i64 12
  %i.uv = getelementptr inbounds nuw i8, ptr %switch.load491, i64 28
  %i.uw = load <4 x float>, ptr %i.uu, align 4, !tbaa !80 ; 7 uses
  %i.ux = load <2 x float>, ptr %i.uv, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i207.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check384 = icmp ult i32 %i.p, 8
  br i1 %min.iters.check384, label %scalar.ph383.preheader, label %vector.memcheck377

vector.memcheck377:                               ; preds = %.lr.ph.i206.i
  %i.uy = mul nuw nsw i64 %wide.trip.count.i207.i, 6 ; 2 uses
  %scevgep378 = getelementptr i8, ptr %3, i64 %i.uy
  %scevgep379 = getelementptr i8, ptr %2, i64 %i.uy
  %bound0380 = icmp ult ptr %3, %scevgep379
  %bound1381 = icmp ult ptr %2, %scevgep378
  %found.conflict382 = and i1 %bound0380, %bound1381
  br i1 %found.conflict382, label %scalar.ph383.preheader, label %vector.ph385

vector.ph385:                                     ; preds = %vector.memcheck377
  %n.vec386 = and i64 %wide.trip.count.i207.i, 2147483640 ; 3 uses
  %broadcast.splatinsert387 = insertelement <8 x float> poison, float %i.up, i64 0
  %broadcast.splat388 = shufflevector <8 x float> %broadcast.splatinsert387, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <8 x float> poison, float %i.ur, i64 0
  %broadcast.splat390 = shufflevector <8 x float> %broadcast.splatinsert389, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert391 = insertelement <8 x float> poison, float %i.ut, i64 0
  %broadcast.splat392 = shufflevector <8 x float> %broadcast.splatinsert391, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat394 = shufflevector <4 x float> %i.uw, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat396 = shufflevector <4 x float> %i.uw, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat398 = shufflevector <4 x float> %i.uw, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat400 = shufflevector <4 x float> %i.uw, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat402 = shufflevector <2 x float> %i.ux, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat404 = shufflevector <2 x float> %i.ux, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph385
  %index406 = phi i64 [ 0, %vector.ph385 ], [ %index.next408, %vector.body405 ] ; 9 uses
  %i.uz = mul nuw nsw i64 %index406, 3            ; 2 uses
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.uz ; 3 uses
  %.idx461 = mul nuw i64 %index406, 6
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx461 ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 6
  %.idx462 = mul nuw i64 %index406, 6
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx462 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  %.idx463 = mul nuw i64 %index406, 6
  %i.vf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx463 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 18
  %.idx464 = mul nuw i64 %index406, 6
  %i.vh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx464 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %.idx465 = mul nuw i64 %index406, 6
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx465 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 30
  %.idx466 = mul nuw i64 %index406, 6
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx466 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 36
  %.idx467 = mul nuw i64 %index406, 6
  %i.vn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx467 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 42
  %i.vp = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vd, i64 14
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vf, i64 20
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vh, i64 26
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vl, i64 38
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vn, i64 44
  %i.vx = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vb, i64 10
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vf, i64 22
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vh, i64 28
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vj, i64 34
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %i.we = getelementptr inbounds nuw i8, ptr %i.vn, i64 46
  %i.wf = load i16, ptr %i.vp, align 2, !tbaa !79, !alias.scope !87
  %i.wg = load i16, ptr %i.vq, align 2, !tbaa !79, !alias.scope !87
  %i.wh = load i16, ptr %i.vr, align 2, !tbaa !79, !alias.scope !87
  %i.wi = load i16, ptr %i.vs, align 2, !tbaa !79, !alias.scope !87
  %i.wj = load i16, ptr %i.vt, align 2, !tbaa !79, !alias.scope !87
  %i.wk = load i16, ptr %i.vu, align 2, !tbaa !79, !alias.scope !87
  %i.wl = load i16, ptr %i.vv, align 2, !tbaa !79, !alias.scope !87
  %i.wm = load i16, ptr %i.vw, align 2, !tbaa !79, !alias.scope !87
  %i.wn = insertelement <8 x i16> poison, i16 %i.wf, i64 0
  %i.wo = insertelement <8 x i16> %i.wn, i16 %i.wg, i64 1
  %i.wp = insertelement <8 x i16> %i.wo, i16 %i.wh, i64 2
  %i.wq = insertelement <8 x i16> %i.wp, i16 %i.wi, i64 3
  %i.wr = insertelement <8 x i16> %i.wq, i16 %i.wj, i64 4
  %i.ws = insertelement <8 x i16> %i.wr, i16 %i.wk, i64 5
  %i.wt = insertelement <8 x i16> %i.ws, i16 %i.wl, i64 6
  %i.wu = insertelement <8 x i16> %i.wt, i16 %i.wm, i64 7
  %i.wv = uitofp <8 x i16> %i.wu to <8 x float>   ; 3 uses
  %i.ww = load i16, ptr %i.va, align 2, !tbaa !79, !alias.scope !87
  %i.wx = load i16, ptr %i.vc, align 2, !tbaa !79, !alias.scope !87
  %i.wy = load i16, ptr %i.ve, align 2, !tbaa !79, !alias.scope !87
  %i.wz = load i16, ptr %i.vg, align 2, !tbaa !79, !alias.scope !87
  %i.xa = load i16, ptr %i.vi, align 2, !tbaa !79, !alias.scope !87
  %i.xb = load i16, ptr %i.vk, align 2, !tbaa !79, !alias.scope !87
  %i.xc = load i16, ptr %i.vm, align 2, !tbaa !79, !alias.scope !87
  %i.xd = load i16, ptr %i.vo, align 2, !tbaa !79, !alias.scope !87
  %i.xe = insertelement <8 x i16> poison, i16 %i.ww, i64 0
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wx, i64 1
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wy, i64 2
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 3
  %i.xi = insertelement <8 x i16> %i.xh, i16 %i.xa, i64 4
  %i.xj = insertelement <8 x i16> %i.xi, i16 %i.xb, i64 5
  %i.xk = insertelement <8 x i16> %i.xj, i16 %i.xc, i64 6
  %i.xl = insertelement <8 x i16> %i.xk, i16 %i.xd, i64 7
  %i.xm = uitofp <8 x i16> %i.xl to <8 x float>
  %i.xn = fadd nnan <8 x float> %i.xm, splat (float -3.276750e+04) ; 3 uses
  %i.xo = fmul <8 x float> %broadcast.splat390, %i.xn
  %i.xp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat388, <8 x float> %i.wv, <8 x float> %i.xo)
  %i.xq = load i16, ptr %i.vx, align 2, !tbaa !79, !alias.scope !87
  %i.xr = load i16, ptr %i.vy, align 2, !tbaa !79, !alias.scope !87
  %i.xs = load i16, ptr %i.vz, align 2, !tbaa !79, !alias.scope !87
  %i.xt = load i16, ptr %i.wa, align 2, !tbaa !79, !alias.scope !87
  %i.xu = load i16, ptr %i.wb, align 2, !tbaa !79, !alias.scope !87
  %i.xv = load i16, ptr %i.wc, align 2, !tbaa !79, !alias.scope !87
  %i.xw = load i16, ptr %i.wd, align 2, !tbaa !79, !alias.scope !87
  %i.xx = load i16, ptr %i.we, align 2, !tbaa !79, !alias.scope !87
  %i.xy = insertelement <8 x i16> poison, i16 %i.xq, i64 0
  %i.xz = insertelement <8 x i16> %i.xy, i16 %i.xr, i64 1
  %i.ya = insertelement <8 x i16> %i.xz, i16 %i.xs, i64 2
  %i.yb = insertelement <8 x i16> %i.ya, i16 %i.xt, i64 3
  %i.yc = insertelement <8 x i16> %i.yb, i16 %i.xu, i64 4
  %i.yd = insertelement <8 x i16> %i.yc, i16 %i.xv, i64 5
  %i.ye = insertelement <8 x i16> %i.yd, i16 %i.xw, i64 6
  %i.yf = insertelement <8 x i16> %i.ye, i16 %i.xx, i64 7
  %i.yg = uitofp <8 x i16> %i.yf to <8 x float>
  %i.yh = fadd <8 x float> %i.yg, splat (float -3.276750e+04) ; 3 uses
  %i.yi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat392, <8 x float> %i.yh, <8 x float> %i.xp) ; 2 uses
  %i.yj = fcmp ogt <8 x float> %i.yi, splat (float 6.553500e+04)
  %i.yk = select <8 x i1> %i.yj, <8 x float> splat (float 6.553500e+04), <8 x float> %i.yi
  %i.yl = fptoui <8 x float> %i.yk to <8 x i16>
  %i.ym = fmul <8 x float> %broadcast.splat396, %i.xn
  %i.yn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat394, <8 x float> %i.wv, <8 x float> %i.ym)
  %i.yo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat398, <8 x float> %i.yh, <8 x float> %i.yn) ; 2 uses
  %i.yp = fmul <8 x float> %broadcast.splat402, %i.xn
  %i.yq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat400, <8 x float> %i.wv, <8 x float> %i.yp)
  %i.yr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat404, <8 x float> %i.yh, <8 x float> %i.yq) ; 2 uses
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.uz
  %i.yt = shufflevector <8 x float> %i.yr, <8 x float> %i.yo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yu = fcmp ogt <16 x float> %i.yt, splat (float 6.553500e+04)
  %i.yv = shufflevector <8 x float> %i.yr, <8 x float> %i.yo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yw = select <16 x i1> %i.yu, <16 x float> splat (float 6.553500e+04), <16 x float> %i.yv
  %i.yx = fptoui <16 x float> %i.yw to <16 x i16>
  %i.yy = shufflevector <8 x i16> %i.yl, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec407 = shufflevector <16 x i16> %i.yx, <16 x i16> %i.yy, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec407, ptr %i.ys, align 2, !alias.scope !88, !noalias !87
  %index.next408 = add nuw i64 %index406, 8       ; 2 uses
  %i.yz = icmp eq i64 %index.next408, %n.vec386
  br i1 %i.yz, label %middle.block409, label %vector.body405, !llvm.loop !29

middle.block409:                                  ; preds = %vector.body405
  %cmp.n410 = icmp eq i64 %n.vec386, %wide.trip.count.i207.i
  br i1 %cmp.n410, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph383.preheader

scalar.ph383.preheader:                           ; preds = %vector.memcheck377, %.lr.ph.i206.i, %middle.block409
  %indvars.iv.i208.i.ph = phi i64 [ 0, %vector.memcheck377 ], [ 0, %.lr.ph.i206.i ], [ %n.vec386, %middle.block409 ]
  %i.za = shufflevector <2 x float> %i.ux, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> %i.uw, <2 x i32> <i32 0, i32 5>
  %i.zc = shufflevector <4 x float> %i.uw, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.zd = shufflevector <4 x float> %i.uw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ze = shufflevector <2 x float> %i.ux, <2 x float> %i.zd, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph383

scalar.ph383:                                     ; preds = %scalar.ph383.preheader, %scalar.ph383
  %indvars.iv.i208.i = phi i64 [ %indvars.iv.next.i214.i, %scalar.ph383 ], [ %indvars.iv.i208.i.ph, %scalar.ph383.preheader ] ; 2 uses
  %i.zf = mul nuw nsw i64 %indvars.iv.i208.i, 3   ; 2 uses
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.zf ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a

scalar.ph348.preheader:                           ; preds = %vector.memcheck342, %.lr.ph.i217.i, %middle.block374
  %indvars.iv.i219.i.ph = phi i64 [ 0, %vector.memcheck342 ], [ 0, %.lr.ph.i217.i ], [ %n.vec351, %middle.block374 ]
  %i.adj = shufflevector <2 x float> %i.aau, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adk = shufflevector <4 x float> %i.adj, <4 x float> %i.aat, <2 x i32> <i32 0, i32 5>
  %i.adl = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.adm = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.adn = shufflevector <2 x float> %i.aau, <2 x float> %i.adm, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph348

scalar.ph348:                                     ; preds = %scalar.ph348.preheader, %scalar.ph348
  %indvars.iv.i219.i = phi i64 [ %indvars.iv.next.i225.i, %scalar.ph348 ], [ %indvars.iv.i219.i.ph, %scalar.ph348.preheader ] ; 2 uses
  %i.ado = mul nuw nsw i64 %indvars.iv.i219.i, 3  ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ado ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.ads = load i32, ptr %i.adq, align 4, !tbaa !6
  %i.adt = uitofp i32 %i.ads to float             ; 2 uses
  %i.adu = load i32, ptr %i.adp, align 4, !tbaa !6
  %i.adv = load i32, ptr %i.adr, align 4, !tbaa !6
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ado ; 2 uses
  %i.adx = uitofp i32 %i.adu to float
  %i.ady = uitofp i32 %i.adv to float
  %i.adz = fadd nnan float %i.adx, f0xCF000000    ; 2 uses
  %i.aea = fadd float %i.ady, f0xCF000000         ; 2 uses
  %i.aeb = fmul float %i.aao, %i.adz
  %i.aec = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.adt, float %i.aeb)
  %i.aed = tail call float @llvm.fmuladd.f32(float %i.aaq, float %i.aea, float %i.aec) ; 2 uses
  %i.aee = fcmp ogt float %i.aed, f0x4F800000
  %.sroa.speculated.i.i220.i = select i1 %i.aee, float f0x4F800000, float %i.aed
  %i.aef = fptoui float %.sroa.speculated.i.i220.i to i32
  %i.aeg = insertelement <2 x float> poison, float %i.adz, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = fmul <2 x float> %i.adk, %i.aeh
  %i.aej = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.aek = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ael = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adl, <2 x float> %i.aek, <2 x float> %i.aei)
  %i.aem = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aen = shufflevector <2 x float> %i.aem, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adn, <2 x float> %i.aen, <2 x float> %i.ael) ; 2 uses
  %i.aep = fcmp ogt <2 x float> %i.aeo, splat (float f0x4F800000)
  %i.aeq = select <2 x i1> %i.aep, <2 x float> splat (float f0x4F800000), <2 x float> %i.aeo
  %i.aer = fptoui <2 x float> %i.aeq to <2 x i32>
  store <2 x i32> %i.aer, ptr %i.adw, align 4
  %.sroa.5.0..sroa_idx.i224.i = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  store i32 %i.aef, ptr %.sroa.5.0..sroa_idx.i224.i, align 4
  %indvars.iv.next.i225.i = add nuw nsw i64 %indvars.iv.i219.i, 1 ; 2 uses
  %exitcond.not.i226.i = icmp eq i64 %indvars.iv.next.i225.i, %wide.trip.count.i218.i
  br i1 %exitcond.not.i226.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph348, !llvm.loop !35

bb.w:                                             ; preds = %bb.s
  %switch.tableidx496 = add i8 %i.h, -5           ; 2 uses
  %i.aes = icmp ult i8 %switch.tableidx496, 4
  br i1 %i.aes, label %switch.lookup497, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup497:                                 ; preds = %bb.w
  %i.aet = icmp sgt i32 %i.p, 0
  br i1 %i.aet, label %.lr.ph.i228.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i228.i:                                    ; preds = %switch.lookup497
  %i.aeu = zext nneg i8 %switch.tableidx496 to i64
  %switch.gep498 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aeu
  %switch.load499 = load ptr, ptr %switch.gep498, align 8 ; 5 uses
  %i.aev = load float, ptr %switch.load499, align 16, !tbaa !80 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %switch.load499, i64 4
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !80 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %switch.load499, i64 8
  %i.aez = load float, ptr %i.aey, align 8, !tbaa !80 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %switch.load499, i64 12
  %i.afb = getelementptr inbounds nuw i8, ptr %switch.load499, i64 28
  %i.afc = load <4 x float>, ptr %i.afa, align 4, !tbaa !80 ; 7 uses
  %i.afd = load <2 x float>, ptr %i.afb, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i229.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check314 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck307

vector.memcheck307:                               ; preds = %.lr.ph.i228.i
  %i.afe = mul nuw nsw i64 %wide.trip.count.i229.i, 12 ; 2 uses
  %scevgep308 = getelementptr i8, ptr %3, i64 %i.afe
  %scevgep309 = getelementptr i8, ptr %2, i64 %i.afe
  %bound0310 = icmp ult ptr %3, %scevgep309
  %bound1311 = icmp ult ptr %2, %scevgep308
  %found.conflict312 = and i1 %bound0310, %bound1311
  br i1 %found.conflict312, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck307
  %n.vec316 = and i64 %wide.trip.count.i229.i, 2147483644 ; 3 uses
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.aev, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.aex, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.aez, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat324 = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat326 = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat328 = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat330 = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat332 = shufflevector <2 x float> %i.afd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat334 = shufflevector <2 x float> %i.afd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph315
  %index336 = phi i64 [ 0, %vector.ph315 ], [ %index.next338, %vector.body335 ] ; 5 uses
  %i.aff = mul nuw nsw i64 %index336, 3           ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aff ; 3 uses
  %.idx455 = mul nuw i64 %index336, 12
  %i.afh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx455 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %.idx456 = mul nuw i64 %index336, 12
  %i.afj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx456 ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 24
  %.idx457 = mul nuw i64 %index336, 12
  %i.afl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx457 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 36
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afj, i64 28
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afl, i64 40
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afh, i64 20
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afj, i64 32
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afl, i64 44
  %i.afv = load float, ptr %i.afn, align 4, !tbaa !80, !alias.scope !91
  %i.afw = load float, ptr %i.afo, align 4, !tbaa !80, !alias.scope !91
  %i.afx = load float, ptr %i.afp, align 4, !tbaa !80, !alias.scope !91
  %i.afy = load float, ptr %i.afq, align 4, !tbaa !80, !alias.scope !91
  %i.afz = insertelement <4 x float> poison, float %i.afv, i64 0
  %i.aga = insertelement <4 x float> %i.afz, float %i.afw, i64 1
  %i.agb = insertelement <4 x float> %i.aga, float %i.afx, i64 2
  %i.agc = insertelement <4 x float> %i.agb, float %i.afy, i64 3 ; 3 uses
  %i.agd = load float, ptr %i.afg, align 4, !tbaa !80, !alias.scope !91
  %i.age = load float, ptr %i.afi, align 4, !tbaa !80, !alias.scope !91
  %i.agf = load float, ptr %i.afk, align 4, !tbaa !80, !alias.scope !91
  %i.agg = load float, ptr %i.afm, align 4, !tbaa !80, !alias.scope !91
  %i.agh = insertelement <4 x float> poison, float %i.agd, i64 0
  %i.agi = insertelement <4 x float> %i.agh, float %i.age, i64 1
  %i.agj = insertelement <4 x float> %i.agi, float %i.agf, i64 2
  %i.agk = insertelement <4 x float> %i.agj, float %i.agg, i64 3
  %i.agl = fadd <4 x float> %i.agk, splat (float -5.000000e-01) ; 3 uses
  %i.agm = fmul <4 x float> %broadcast.splat320, %i.agl
  %i.agn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat318, <4 x float> %i.agc, <4 x float> %i.agm)
  %i.ago = load float, ptr %i.afr, align 4, !tbaa !80, !alias.scope !91
  %i.agp = load float, ptr %i.afs, align 4, !tbaa !80, !alias.scope !91
  %i.agq = load float, ptr %i.aft, align 4, !tbaa !80, !alias.scope !91
  %i.agr = load float, ptr %i.afu, align 4, !tbaa !80, !alias.scope !91
  %i.ags = insertelement <4 x float> poison, float %i.ago, i64 0
  %i.agt = insertelement <4 x float> %i.ags, float %i.agp, i64 1
  %i.agu = insertelement <4 x float> %i.agt, float %i.agq, i64 2
  %i.agv = insertelement <4 x float> %i.agu, float %i.agr, i64 3
  %i.agw = fadd <4 x float> %i.agv, splat (float -5.000000e-01) ; 3 uses
  %i.agx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.agw, <4 x float> %i.agn) ; 2 uses
  %i.agy = fcmp ogt <4 x float> %i.agx, splat (float 1.000000e+00)
  %i.agz = select <4 x i1> %i.agy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.agx ; 2 uses
  %i.aha = fcmp ogt <4 x float> %i.agz, zeroinitializer
  %i.ahb = select <4 x i1> %i.aha, <4 x float> %i.agz, <4 x float> zeroinitializer
  %i.ahc = fmul <4 x float> %broadcast.splat326, %i.agl
  %i.ahd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.agc, <4 x float> %i.ahc)
  %i.ahe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.agw, <4 x float> %i.ahd) ; 2 uses
  %i.ahf = fcmp ogt <4 x float> %i.ahe, splat (float 1.000000e+00)
  %i.ahg = select <4 x i1> %i.ahf, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ahe ; 2 uses
  %i.ahh = fmul <4 x float> %broadcast.splat332, %i.agl
  %i.ahi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.agc, <4 x float> %i.ahh)
  %i.ahj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat334, <4 x float> %i.agw, <4 x float> %i.ahi) ; 2 uses
  %i.ahk = fcmp ogt <4 x float> %i.ahj, splat (float 1.000000e+00)
  %i.ahl = select <4 x i1> %i.ahk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ahj ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aff
  %i.ahn = shufflevector <4 x float> %i.ahl, <4 x float> %i.ahg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aho = fcmp ogt <8 x float> %i.ahn, zeroinitializer
  %i.ahp = shufflevector <4 x float> %i.ahl, <4 x float> %i.ahg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahq = select <8 x i1> %i.aho, <8 x float> %i.ahp, <8 x float> zeroinitializer
  %i.ahr = shufflevector <4 x float> %i.ahb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec337 = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahr, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec337, ptr %i.ahm, align 4, !alias.scope !92, !noalias !91
  %index.next338 = add nuw i64 %index336, 4       ; 2 uses
  %i.ahs = icmp eq i64 %index.next338, %n.vec316
  br i1 %i.ahs, label %middle.block339, label %vector.body335, !llvm.loop !39

middle.block339:                                  ; preds = %vector.body335
  %cmp.n340 = icmp eq i64 %n.vec316, %wide.trip.count.i229.i
  br i1 %cmp.n340, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck307, %.lr.ph.i228.i, %middle.block339
  %indvars.iv.i230.i.ph = phi i64 [ 0, %vector.memcheck307 ], [ 0, %.lr.ph.i228.i ], [ %n.vec316, %middle.block339 ]
  %i.aht = shufflevector <2 x float> %i.afd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ahu = shufflevector <4 x float> %i.aht, <4 x float> %i.afc, <2 x i32> <i32 0, i32 5>
  %i.ahv = shufflevector <4 x float> %i.afc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ahw = shufflevector <4 x float> %i.afc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ahx = shufflevector <2 x float> %i.afd, <2 x float> %i.ahw, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.preheader, %scalar.ph313
  %indvars.iv.i230.i = phi i64 [ %indvars.iv.next.i239.i, %scalar.ph313 ], [ %indvars.iv.i230.i.ph, %scalar.ph313.preheader ] ; 2 uses
  %i.ahy = mul nuw nsw i64 %indvars.iv.i230.i, 3  ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ahy ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aic = load float, ptr %i.aia, align 4, !tbaa !80 ; 2 uses
  %i.aid = load float, ptr %i.ahz, align 4, !tbaa !80
  %i.aie = load float, ptr %i.aib, align 4, !tbaa !80
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahy ; 2 uses
  %24 = fadd float %i.aid, -5.000000e-01          ; 2 uses
  %25 = fadd float %i.aie, -5.000000e-01          ; 2 uses
  %i.aig = fmul float %i.aex, %24
  %i.aih = tail call float @llvm.fmuladd.f32(float %i.aev, float %i.aic, float %i.aig)
  %i.aii = tail call float @llvm.fmuladd.f32(float %i.aez, float %25, float %i.aih) ; 2 uses
  %i.aij = fcmp ogt float %i.aii, 1.000000e+00
  %.sroa.speculated.i.i231.i = select i1 %i.aij, float 1.000000e+00, float %i.aii ; 2 uses
  %i.aik = fcmp ogt float %.sroa.speculated.i.i231.i, 0.000000e+00
  %.sroa.speculated14.i.i232.i = select i1 %i.aik, float %.sroa.speculated.i.i231.i, float 0.000000e+00
  %26 = insertelement <2 x float> poison, float %24, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ail = fmul <2 x float> %i.ahu, %27
  %i.aim = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.ain = shufflevector <2 x float> %i.aim, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aio = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahv, <2 x float> %i.ain, <2 x float> %i.ail)
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %i.aip = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahx, <2 x float> %i.aip, <2 x float> %i.aio) ; 2 uses
  %i.air = fcmp ogt <2 x float> %i.aiq, splat (float 1.000000e+00)
  %i.ais = select <2 x i1> %i.air, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aiq ; 2 uses
  %i.ait = fcmp ogt <2 x float> %i.ais, zeroinitializer
  %i.aiu = select <2 x i1> %i.ait, <2 x float> %i.ais, <2 x float> zeroinitializer
  store <2 x float> %i.aiu, ptr %i.aif, align 4
  %.sroa.5.0..sroa_idx.i238.i = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store float %.sroa.speculated14.i.i232.i, ptr %.sroa.5.0..sroa_idx.i238.i, align 4
  %indvars.iv.next.i239.i = add nuw nsw i64 %indvars.iv.i230.i, 1 ; 2 uses
  %exitcond.not.i240.i = icmp eq i64 %indvars.iv.next.i239.i, %wide.trip.count.i229.i
  br i1 %exitcond.not.i240.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph313, !llvm.loop !40

bb.x:                                             ; preds = %bb.s
  %switch.tableidx500 = add i8 %i.h, -5           ; 2 uses
  %i.aiv = icmp ult i8 %switch.tableidx500, 4
  br i1 %i.aiv, label %switch.lookup501, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup501:                                 ; preds = %bb.x
  %i.aiw = icmp sgt i32 %i.p, 0
  br i1 %i.aiw, label %.lr.ph.i242.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i242.i:                                    ; preds = %switch.lookup501
  %i.aix = zext nneg i8 %switch.tableidx500 to i64
  %switch.gep502 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aix
  %switch.load503 = load ptr, ptr %switch.gep502, align 8 ; 4 uses
  %i.aiy = load float, ptr %switch.load503, align 16, !tbaa !80
  %i.aiz = fpext float %i.aiy to double           ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %switch.load503, i64 4
  %i.ajb = load <2 x float>, ptr %i.aja, align 4, !tbaa !80 ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %switch.load503, i64 12
  %i.ajd = getelementptr inbounds nuw i8, ptr %switch.load503, i64 28
  %i.aje = load <4 x float>, ptr %i.ajc, align 4, !tbaa !80 ; 5 uses
  %i.ajf = shufflevector <4 x float> %i.aje, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ajg = fpext <2 x float> %i.ajf to <2 x double> ; 3 uses
  %i.ajh = load <2 x float>, ptr %i.ajd, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i243.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check279 = icmp eq i32 %i.p, 1
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.i242.i
  %i.aji = mul nuw nsw i64 %wide.trip.count.i243.i, 24 ; 2 uses
  %scevgep273 = getelementptr i8, ptr %3, i64 %i.aji
  %scevgep274 = getelementptr i8, ptr %2, i64 %i.aji
  %bound0275 = icmp ult ptr %3, %scevgep274
  %bound1276 = icmp ult ptr %2, %scevgep273
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %wide.trip.count.i243.i, 2147483646 ; 3 uses
  %broadcast.splatinsert282 = insertelement <2 x double> poison, double %i.aiz, i64 0
  %broadcast.splat283 = shufflevector <2 x double> %broadcast.splatinsert282, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat285 = shufflevector <2 x float> %i.ajb, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat287 = shufflevector <2 x float> %i.ajb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat289 = shufflevector <2 x double> %i.ajg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat291 = shufflevector <4 x float> %i.aje, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat293 = shufflevector <4 x float> %i.aje, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat295 = shufflevector <2 x double> %i.ajg, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat297 = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat299 = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph280
  %index301 = phi i64 [ 0, %vector.ph280 ], [ %index.next303, %vector.body300 ] ; 3 uses
  %i.ajj = mul nuw nsw i64 %index301, 3           ; 2 uses
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ajj ; 3 uses
  %.idx454 = mul nuw i64 %index301, 24
  %i.ajl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx454 ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 24
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajl, i64 32
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 40
  %i.ajr = load double, ptr %i.ajn, align 8, !tbaa !82, !alias.scope !93
  %i.ajs = load double, ptr %i.ajo, align 8, !tbaa !82, !alias.scope !93
  %i.ajt = insertelement <2 x double> poison, double %i.ajr, i64 0
  %i.aju = insertelement <2 x double> %i.ajt, double %i.ajs, i64 1 ; 3 uses
  %i.ajv = load double, ptr %i.ajk, align 8, !tbaa !82, !alias.scope !93
  %i.ajw = load double, ptr %i.ajm, align 8, !tbaa !82, !alias.scope !93
  %i.ajx = insertelement <2 x double> poison, double %i.ajv, i64 0
  %i.ajy = insertelement <2 x double> %i.ajx, double %i.ajw, i64 1
  %i.ajz = fptrunc <2 x double> %i.ajy to <2 x float>
  %i.aka = fadd <2 x float> %i.ajz, splat (float -5.000000e-01) ; 3 uses
  %i.akb = fmul <2 x float> %broadcast.splat285, %i.aka
  %i.akc = fpext <2 x float> %i.akb to <2 x double>
  %i.akd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat283, <2 x double> %i.aju, <2 x double> %i.akc)
  %i.ake = load double, ptr %i.ajp, align 8, !tbaa !82, !alias.scope !93
  %i.akf = load double, ptr %i.ajq, align 8, !tbaa !82, !alias.scope !93
  %i.akg = insertelement <2 x double> poison, double %i.ake, i64 0
  %i.akh = insertelement <2 x double> %i.akg, double %i.akf, i64 1
  %i.aki = fptrunc <2 x double> %i.akh to <2 x float>
  %i.akj = fadd <2 x float> %i.aki, splat (float -5.000000e-01) ; 3 uses
  %i.akk = fmul <2 x float> %broadcast.splat287, %i.akj
  %i.akl = fpext <2 x float> %i.akk to <2 x double>
  %i.akm = fadd <2 x double> %i.akd, %i.akl
  %i.akn = fptrunc <2 x double> %i.akm to <2 x float> ; 2 uses
  %i.ako = fcmp ogt <2 x float> %i.akn, splat (float 1.000000e+00)
  %i.akp = select <2 x i1> %i.ako, <2 x float> splat (float 1.000000e+00), <2 x float> %i.akn ; 2 uses
  %i.akq = fpext <2 x float> %i.akp to <2 x double>
  %i.akr = fcmp ogt <2 x float> %i.akp, zeroinitializer
  %i.aks = select <2 x i1> %i.akr, <2 x double> %i.akq, <2 x double> zeroinitializer
  %i.akt = fmul <2 x float> %broadcast.splat291, %i.aka
  %i.aku = fpext <2 x float> %i.akt to <2 x double>
  %i.akv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat289, <2 x double> %i.aju, <2 x double> %i.aku)
  %i.akw = fmul <2 x float> %broadcast.splat293, %i.akj
  %i.akx = fpext <2 x float> %i.akw to <2 x double>
  %i.aky = fadd <2 x double> %i.akv, %i.akx
  %i.akz = fptrunc <2 x double> %i.aky to <2 x float> ; 2 uses
  %i.ala = fcmp ogt <2 x float> %i.akz, splat (float 1.000000e+00)
  %i.alb = select <2 x i1> %i.ala, <2 x float> splat (float 1.000000e+00), <2 x float> %i.akz ; 2 uses
  %i.alc = fpext <2 x float> %i.alb to <2 x double>
  %i.ald = fcmp ogt <2 x float> %i.alb, zeroinitializer
  %i.ale = select <2 x i1> %i.ald, <2 x double> %i.alc, <2 x double> zeroinitializer
  %i.alf = fmul <2 x float> %broadcast.splat297, %i.aka
  %i.alg = fpext <2 x float> %i.alf to <2 x double>
  %i.alh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat295, <2 x double> %i.aju, <2 x double> %i.alg)
  %i.ali = fmul <2 x float> %broadcast.splat299, %i.akj
  %i.alj = fpext <2 x float> %i.ali to <2 x double>
  %i.alk = fadd <2 x double> %i.alh, %i.alj
  %i.all = fptrunc <2 x double> %i.alk to <2 x float> ; 2 uses
  %i.alm = fcmp ogt <2 x float> %i.all, splat (float 1.000000e+00)
  %i.aln = select <2 x i1> %i.alm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.all ; 2 uses
  %i.alo = fpext <2 x float> %i.aln to <2 x double>
  %i.alp = fcmp ogt <2 x float> %i.aln, zeroinitializer
  %i.alq = select <2 x i1> %i.alp, <2 x double> %i.alo, <2 x double> zeroinitializer
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ajj
  %i.als = shufflevector <2 x double> %i.alq, <2 x double> %i.ale, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.alt = shufflevector <2 x double> %i.aks, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec302 = shufflevector <4 x double> %i.als, <4 x double> %i.alt, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec302, ptr %i.alr, align 8, !alias.scope !94, !noalias !93
  %index.next303 = add nuw i64 %index301, 2       ; 2 uses
  %i.alu = icmp eq i64 %index.next303, %n.vec281
  br i1 %i.alu, label %middle.block304, label %vector.body300, !llvm.loop !44

middle.block304:                                  ; preds = %vector.body300
  %cmp.n305 = icmp eq i64 %n.vec281, %wide.trip.count.i243.i
  br i1 %cmp.n305, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck272, %.lr.ph.i242.i, %middle.block304
  %indvars.iv.i244.i.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph.i242.i ], [ %n.vec281, %middle.block304 ]
  %i.alv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aiz, i64 0
  %i.alw = shufflevector <2 x float> %i.ajh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alx = shufflevector <4 x float> %i.alw, <4 x float> %i.aje, <2 x i32> <i32 0, i32 5>
  %i.aly = shufflevector <4 x float> %i.aje, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.alz = shufflevector <2 x float> %i.ajh, <2 x float> %i.aly, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv.i244.i = phi i64 [ %indvars.iv.next.i253.i, %scalar.ph278 ], [ %indvars.iv.i244.i.ph, %scalar.ph278.preheader ] ; 2 uses
  %i.ama = mul nuw nsw i64 %indvars.iv.i244.i, 3  ; 2 uses
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ama ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  %i.ame = load double, ptr %i.amc, align 8, !tbaa !82 ; 2 uses
  %i.amf = load double, ptr %i.amb, align 8, !tbaa !82
  %i.amg = load double, ptr %i.amd, align 8, !tbaa !82
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ama ; 2 uses
  %i.ami = insertelement <2 x double> poison, double %i.amf, i64 0
  %i.amj = insertelement <2 x double> %i.ami, double %i.amg, i64 1
  %i.amk = fptrunc <2 x double> %i.amj to <2 x float>
  %i.aml = fadd <2 x float> %i.amk, splat (float -5.000000e-01) ; 3 uses
  %i.amm = fmul <2 x float> %i.ajb, %i.aml
  %i.amn = fpext <2 x float> %i.amm to <2 x double>
  %i.amo = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ame, i64 0
  %i.amp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alv, <2 x double> %i.amo, <2 x double> %i.amn)
  %i.amq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.amp)
  %i.amr = fptrunc double %i.amq to float         ; 2 uses
  %i.ams = fcmp ogt float %i.amr, 1.000000e+00
  %.sroa.speculated.i.i245.i = select i1 %i.ams, float 1.000000e+00, float %i.amr ; 2 uses
  %i.amt = fpext float %.sroa.speculated.i.i245.i to double
  %i.amu = fcmp ogt float %.sroa.speculated.i.i245.i, 0.000000e+00
  %.sroa.speculated14.i.i246.i = select i1 %i.amu, double %i.amt, double 0.000000e+00
  %i.amv = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amw = fmul <2 x float> %i.alx, %i.amv
  %i.amx = fpext <2 x float> %i.amw to <2 x double>
  %i.amy = insertelement <2 x double> poison, double %i.ame, i64 0
  %i.amz = shufflevector <2 x double> %i.amy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ana = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajg, <2 x double> %i.amz, <2 x double> %i.amx)
  %i.anb = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.anc = fmul <2 x float> %i.alz, %i.anb
  %i.and = fpext <2 x float> %i.anc to <2 x double>
  %i.ane = fadd <2 x double> %i.ana, %i.and
  %i.anf = fptrunc <2 x double> %i.ane to <2 x float> ; 2 uses
  %i.ang = fcmp ogt <2 x float> %i.anf, splat (float 1.000000e+00)
  %i.anh = select <2 x i1> %i.ang, <2 x float> splat (float 1.000000e+00), <2 x float> %i.anf ; 2 uses
  %i.ani = fpext <2 x float> %i.anh to <2 x double>
  %i.anj = fcmp ogt <2 x float> %i.anh, zeroinitializer
  %i.ank = select <2 x i1> %i.anj, <2 x double> %i.ani, <2 x double> zeroinitializer
  store <2 x double> %i.ank, ptr %i.amh, align 8
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.amh, i64 16
  store double %.sroa.speculated14.i.i246.i, ptr %.sroa.5.0..sroa_idx.i252.i, align 8
  %indvars.iv.next.i253.i = add nuw nsw i64 %indvars.iv.i244.i, 1 ; 2 uses
  %exitcond.not.i254.i = icmp eq i64 %indvars.iv.next.i253.i, %wide.trip.count.i243.i
  br i1 %exitcond.not.i254.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph278, !llvm.loop !45

bb.y:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 3, label %bb.af
    i32 4, label %bb.ah
  ]

bb.z:                                             ; preds = %bb.y
  %switch.tableidx504 = add i8 %i.h, -5           ; 2 uses
  %i.anl = icmp ult i8 %switch.tableidx504, 4
  br i1 %i.anl, label %switch.lookup505, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup505:                                 ; preds = %bb.z
  %i.anm = icmp sgt i32 %i.p, 0
  br i1 %i.anm, label %.lr.ph.i256.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i256.i:                                    ; preds = %switch.lookup505
  %i.ann = zext nneg i8 %switch.tableidx504 to i64
  %switch.gep506 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ann
  %switch.load507 = load ptr, ptr %switch.gep506, align 8 ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %switch.load507, i64 16
  %i.anp = load <4 x float>, ptr %switch.load507, align 16, !tbaa !80 ; 3 uses
  %i.anq = load <2 x float>, ptr %i.ano, align 16, !tbaa !80 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %switch.load507, i64 24
  %i.ans = load float, ptr %i.anr, align 8, !tbaa !80
  %i.ant = getelementptr inbounds nuw i8, ptr %switch.load507, i64 28
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !80
  %i.anv = getelementptr inbounds nuw i8, ptr %switch.load507, i64 32
  %i.anw = load float, ptr %i.anv, align 16, !tbaa !80
  %wide.trip.count.i257.i = zext nneg i32 %i.p to i64
  %i.anx = shufflevector <4 x float> %i.anp, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.any = shufflevector <4 x float> %i.anp, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.anz = shufflevector <2 x float> %i.anq, <2 x float> %i.any, <2 x i32> <i32 1, i32 3>
  %i.aoa = shufflevector <2 x float> %i.anq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aob = shufflevector <4 x float> %i.aoa, <4 x float> %i.anp, <2 x i32> <i32 0, i32 5>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i256.i
  %indvars.iv.i258.i = phi i64 [ 0, %.lr.ph.i256.i ], [ %indvars.iv.next.i262.i, %bb.aa ] ; 5 uses
  %i.aoc = or i64 %indvars.iv.i258.i, 1
  %i.aod = mul i64 %i.aoc, 3
  %i.aoe = and i64 %i.aod, 4294967295
  %i.aof = getelementptr inbounds nuw i8, ptr %2, i64 %i.aoe
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !77
  %i.aoh = mul nuw nsw i64 %indvars.iv.i258.i, 3
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 %i.aoh ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !77
  %i.aol = and i64 %indvars.iv.i258.i, 2147483646
  %i.aom = mul nuw nsw i64 %i.aol, 3
  %i.aon = and i64 %i.aom, 4294967294
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !77
  %i.aoq = shl nuw nsw i64 %indvars.iv.i258.i, 2
  %i.aor = getelementptr inbounds nuw i8, ptr %3, i64 %i.aoq ; 4 uses
  %i.aos = uitofp i8 %i.aok to float              ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 2
  %29 = uitofp i8 %i.aog to float
  %30 = uitofp i8 %i.aop to float
  %31 = fadd nnan float %29, -1.275000e+02        ; 2 uses
  %32 = fadd float %30, -1.275000e+02             ; 2 uses
  %33 = insertelement <2 x float> poison, float %31, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aou = fmul <2 x float> %i.aob, %34
  %i.aov = insertelement <2 x float> poison, float %i.aos, i64 0
  %i.aow = shufflevector <2 x float> %i.aov, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anx, <2 x float> %i.aow, <2 x float> %i.aou)
  %35 = insertelement <2 x float> poison, float %32, i64 0
  %i.aoy = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anz, <2 x float> %i.aoy, <2 x float> %i.aox) ; 3 uses
  %i.apa = fcmp ogt <2 x float> %i.aoz, splat (float 2.550000e+02) ; 2 uses
  %i.apb = extractelement <2 x i1> %i.apa, i64 1
  %i.apc = extractelement <2 x float> %i.aoz, i64 1
  %i.apd = fptoui float %i.apc to i8
  %i.ape = select i1 %i.apb, i8 -1, i8 %i.apd
  store i8 %i.ape, ptr %i.aot, align 1, !tbaa !77
  %i.apf = extractelement <2 x i1> %i.apa, i64 0
  %i.apg = extractelement <2 x float> %i.aoz, i64 0
  %i.aph = fptoui float %i.apg to i8
  %i.api = select i1 %i.apf, i8 -1, i8 %i.aph
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aor, i64 1
  store i8 %i.api, ptr %i.apj, align 1, !tbaa !77
  %i.apk = fmul float %i.anu, %31
  %i.apl = tail call float @llvm.fmuladd.f32(float %i.ans, float %i.aos, float %i.apk)
  %i.apm = tail call float @llvm.fmuladd.f32(float %i.anw, float %32, float %i.apl) ; 2 uses
  %i.apn = fcmp ogt float %i.apm, 2.550000e+02
  %.sroa.speculated.2.i.i261.i = select i1 %i.apn, float 2.550000e+02, float %i.apm
  %i.apo = fptoui float %.sroa.speculated.2.i.i261.i to i8
  store i8 %i.apo, ptr %i.aor, align 1, !tbaa !77
  %i.app = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !77
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aor, i64 3
  store i8 %i.apq, ptr %i.apr, align 1, !tbaa !77
  %indvars.iv.next.i262.i = add nuw nsw i64 %indvars.iv.i258.i, 1 ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %indvars.iv.next.i262.i, %wide.trip.count.i257.i
  br i1 %exitcond.not.i263.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.aa, !llvm.loop !46

bb.ab:                                            ; preds = %bb.y
  %switch.tableidx508 = add i8 %i.h, -5           ; 2 uses
  %i.aps = icmp ult i8 %switch.tableidx508, 4
  br i1 %i.aps, label %switch.lookup509, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup509:                                 ; preds = %bb.ab
  %i.apt = icmp sgt i32 %i.p, 0
  br i1 %i.apt, label %.lr.ph.i265.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i265.i:                                    ; preds = %switch.lookup509
  %i.apu = zext nneg i8 %switch.tableidx508 to i64
  %switch.gep510 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.apu
  %switch.load511 = load ptr, ptr %switch.gep510, align 8 ; 5 uses
  %i.apv = load float, ptr %switch.load511, align 16, !tbaa !80
  %i.apw = getelementptr inbounds nuw i8, ptr %switch.load511, i64 4
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !80
  %i.apy = getelementptr inbounds nuw i8, ptr %switch.load511, i64 8
  %i.apz = load float, ptr %i.apy, align 8, !tbaa !80
  %i.aqa = getelementptr inbounds nuw i8, ptr %switch.load511, i64 12
  %i.aqb = getelementptr inbounds nuw i8, ptr %switch.load511, i64 28
  %i.aqc = load <4 x float>, ptr %i.aqa, align 4, !tbaa !80 ; 3 uses
  %i.aqd = load <2 x float>, ptr %i.aqb, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i266.i = zext nneg i32 %i.p to i64
  %i.aqe = shufflevector <4 x float> %i.aqc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aqf = shufflevector <4 x float> %i.aqc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aqg = shufflevector <2 x float> %i.aqd, <2 x float> %i.aqf, <2 x i32> <i32 1, i32 3>
  %i.aqh = shufflevector <2 x float> %i.aqd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> %i.aqc, <2 x i32> <i32 0, i32 5>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i265.i
  %indvars.iv.i267.i = phi i64 [ 0, %.lr.ph.i265.i ], [ %indvars.iv.next.i272.i, %bb.ac ] ; 5 uses
  %i.aqj = or i64 %indvars.iv.i267.i, 1
  %i.aqk = mul i64 %i.aqj, 3
  %i.aql = and i64 %i.aqk, 4294967295
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aql
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !79
  %.idx.i268.i = mul nuw nsw i64 %indvars.iv.i267.i, 6
  %i.aqo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i268.i ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 2
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !79
  %i.aqr = and i64 %indvars.iv.i267.i, 2147483646
  %i.aqs = mul nuw nsw i64 %i.aqr, 3
  %i.aqt = and i64 %i.aqs, 4294967294
  %i.aqu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aqt
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !79
  %.idx30.i.i = shl nuw nsw i64 %indvars.iv.i267.i, 3
  %i.aqw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i.i ; 3 uses
  %i.aqx = uitofp i16 %i.aqq to float             ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 4
  %i.aqz = insertelement <2 x i16> poison, i16 %i.aqv, i64 0
  %i.ara = insertelement <2 x i16> %i.aqz, i16 %i.aqn, i64 1
  %i.arb = uitofp <2 x i16> %i.ara to <2 x float>
  %i.arc = fadd <2 x float> %i.arb, splat (float -3.276750e+04) ; 4 uses
  %i.ard = extractelement <2 x float> %i.arc, i64 1
  %i.are = fmul float %i.apx, %i.ard
  %i.arf = tail call float @llvm.fmuladd.f32(float %i.apv, float %i.aqx, float %i.are)
  %i.arg = extractelement <2 x float> %i.arc, i64 0
  %i.arh = tail call float @llvm.fmuladd.f32(float %i.apz, float %i.arg, float %i.arf) ; 2 uses
  %i.ari = fcmp ogt float %i.arh, 6.553500e+04
  %.sroa.speculated.i.i269.i = select i1 %i.ari, float 6.553500e+04, float %i.arh
  %i.arj = fptoui float %.sroa.speculated.i.i269.i to i16
  store i16 %i.arj, ptr %i.aqy, align 2, !tbaa !79
  %i.ark = shufflevector <2 x float> %i.arc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.arl = fmul <2 x float> %i.aqi, %i.ark
  %i.arm = insertelement <2 x float> poison, float %i.aqx, i64 0
  %i.arn = shufflevector <2 x float> %i.arm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqe, <2 x float> %i.arn, <2 x float> %i.arl)
  %i.arp = shufflevector <2 x float> %i.arc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.arq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqg, <2 x float> %i.arp, <2 x float> %i.aro) ; 2 uses
  %i.arr = fcmp ogt <2 x float> %i.arq, splat (float 6.553500e+04)
  %i.ars = select <2 x i1> %i.arr, <2 x float> splat (float 6.553500e+04), <2 x float> %i.arq
  %i.art = fptoui <2 x float> %i.ars to <2 x i16>
  store <2 x i16> %i.art, ptr %i.aqw, align 2, !tbaa !79
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqo, i64 4
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !79
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aqw, i64 6
  store i16 %i.arv, ptr %i.arw, align 2, !tbaa !79
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i267.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i266.i
  br i1 %exitcond.not.i273.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ac, !llvm.loop !47

bb.ad:                                            ; preds = %bb.y
  %switch.tableidx512 = add i8 %i.h, -5           ; 2 uses
  %i.arx = icmp ult i8 %switch.tableidx512, 4
  br i1 %i.arx, label %switch.lookup513, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup513:                                 ; preds = %bb.ad
  %i.ary = icmp sgt i32 %i.p, 0
  br i1 %i.ary, label %.lr.ph.i275.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i275.i:                                    ; preds = %switch.lookup513
  %i.arz = zext nneg i8 %switch.tableidx512 to i64
  %switch.gep514 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.arz
  %switch.load515 = load ptr, ptr %switch.gep514, align 8 ; 5 uses
  %i.asa = load float, ptr %switch.load515, align 16, !tbaa !80
  %i.asb = getelementptr inbounds nuw i8, ptr %switch.load515, i64 4
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !80
  %i.asd = getelementptr inbounds nuw i8, ptr %switch.load515, i64 8
  %i.ase = load float, ptr %i.asd, align 8, !tbaa !80
  %i.asf = getelementptr inbounds nuw i8, ptr %switch.load515, i64 12
  %i.asg = getelementptr inbounds nuw i8, ptr %switch.load515, i64 28
  %i.ash = load <4 x float>, ptr %i.asf, align 4, !tbaa !80 ; 3 uses
  %i.asi = load <2 x float>, ptr %i.asg, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i276.i = zext nneg i32 %i.p to i64
  %i.asj = shufflevector <4 x float> %i.ash, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ask = shufflevector <4 x float> %i.ash, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.asl = shufflevector <2 x float> %i.asi, <2 x float> %i.ask, <2 x i32> <i32 1, i32 3>
  %i.asm = shufflevector <2 x float> %i.asi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> %i.ash, <2 x i32> <i32 0, i32 5>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i275.i
  %indvars.iv.i277.i = phi i64 [ 0, %.lr.ph.i275.i ], [ %indvars.iv.next.i283.i, %bb.ae ] ; 5 uses
  %i.aso = or i64 %indvars.iv.i277.i, 1
  %i.asp = mul i64 %i.aso, 3
  %i.asq = and i64 %i.asp, 4294967295
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.asq
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !6
  %.idx.i278.i = mul nuw nsw i64 %indvars.iv.i277.i, 12
  %i.ast = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i278.i ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !6
  %i.asw = and i64 %indvars.iv.i277.i, 2147483646
  %i.asx = mul nuw nsw i64 %i.asw, 3
  %i.asy = and i64 %i.asx, 4294967294
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !6
  %.idx30.i279.i = shl nuw nsw i64 %indvars.iv.i277.i, 4
  %i.atb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i279.i ; 3 uses
  %i.atc = uitofp i32 %i.asv to float             ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.ate = uitofp i32 %i.ass to float
  %i.atf = uitofp i32 %i.ata to float
  %i.atg = fadd nnan float %i.ate, f0xCF000000    ; 2 uses
  %i.ath = fadd float %i.atf, f0xCF000000         ; 2 uses
  %i.ati = fmul float %i.asc, %i.atg
  %i.atj = tail call float @llvm.fmuladd.f32(float %i.asa, float %i.atc, float %i.ati)
  %i.atk = tail call float @llvm.fmuladd.f32(float %i.ase, float %i.ath, float %i.atj) ; 2 uses
  %i.atl = fcmp ogt float %i.atk, f0x4F800000
  %.sroa.speculated.i.i280.i = select i1 %i.atl, float f0x4F800000, float %i.atk
  %i.atm = fptoui float %.sroa.speculated.i.i280.i to i32
  store i32 %i.atm, ptr %i.atd, align 4, !tbaa !6
  %i.atn = insertelement <2 x float> poison, float %i.atg, i64 0
  %i.ato = shufflevector <2 x float> %i.atn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atp = fmul <2 x float> %i.asn, %i.ato
  %i.atq = insertelement <2 x float> poison, float %i.atc, i64 0
  %i.atr = shufflevector <2 x float> %i.atq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ats = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asj, <2 x float> %i.atr, <2 x float> %i.atp)
  %i.att = insertelement <2 x float> poison, float %i.ath, i64 0
  %i.atu = shufflevector <2 x float> %i.att, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asl, <2 x float> %i.atu, <2 x float> %i.ats) ; 2 uses
  %i.atw = fcmp ogt <2 x float> %i.atv, splat (float f0x4F800000)
  %i.atx = select <2 x i1> %i.atw, <2 x float> splat (float f0x4F800000), <2 x float> %i.atv
  %i.aty = fptoui <2 x float> %i.atx to <2 x i32>
  store <2 x i32> %i.aty, ptr %i.atb, align 4, !tbaa !6
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ast, i64 8
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !6
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atb, i64 12
  store i32 %i.aua, ptr %i.aub, align 4, !tbaa !6
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %wide.trip.count.i276.i
  br i1 %exitcond.not.i284.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ae, !llvm.loop !48

bb.af:                                            ; preds = %bb.y
  %switch.tableidx516 = add i8 %i.h, -5           ; 2 uses
  %i.auc = icmp ult i8 %switch.tableidx516, 4
  br i1 %i.auc, label %switch.lookup517, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup517:                                 ; preds = %bb.af
  %i.aud = icmp sgt i32 %i.p, 0
  br i1 %i.aud, label %.lr.ph.i286.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i286.i:                                    ; preds = %switch.lookup517
  %i.aue = zext nneg i8 %switch.tableidx516 to i64
  %switch.gep518 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aue
  %switch.load519 = load ptr, ptr %switch.gep518, align 8 ; 5 uses
  %i.auf = load float, ptr %switch.load519, align 16, !tbaa !80
  %i.aug = getelementptr inbounds nuw i8, ptr %switch.load519, i64 4
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !80
  %i.aui = getelementptr inbounds nuw i8, ptr %switch.load519, i64 8
  %i.auj = load float, ptr %i.aui, align 8, !tbaa !80
  %i.auk = getelementptr inbounds nuw i8, ptr %switch.load519, i64 12
  %i.aul = getelementptr inbounds nuw i8, ptr %switch.load519, i64 28
  %i.aum = load <4 x float>, ptr %i.auk, align 4, !tbaa !80 ; 3 uses
  %i.aun = load <2 x float>, ptr %i.aul, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i287.i = zext nneg i32 %i.p to i64
  %i.auo = shufflevector <4 x float> %i.aum, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aup = shufflevector <4 x float> %i.aum, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.auq = shufflevector <2 x float> %i.aun, <2 x float> %i.aup, <2 x i32> <i32 1, i32 3>
  %i.aur = shufflevector <2 x float> %i.aun, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aus = shufflevector <4 x float> %i.aur, <4 x float> %i.aum, <2 x i32> <i32 0, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i286.i
  %indvars.iv.i288.i = phi i64 [ 0, %.lr.ph.i286.i ], [ %indvars.iv.next.i297.i, %bb.ag ] ; 5 uses
  %i.aut = or i64 %indvars.iv.i288.i, 1
  %i.auu = mul i64 %i.aut, 3
  %i.auv = and i64 %i.auu, 4294967295
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.auv
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !80
  %.idx.i289.i = mul nuw nsw i64 %indvars.iv.i288.i, 12
  %i.auy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i289.i ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !80 ; 2 uses
  %i.avb = and i64 %indvars.iv.i288.i, 2147483646
  %i.avc = mul nuw nsw i64 %i.avb, 3
  %i.avd = and i64 %i.avc, 4294967294
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.avd
  %i.avf = load float, ptr %i.ave, align 4, !tbaa !80
  %.idx30.i290.i = shl nuw nsw i64 %indvars.iv.i288.i, 4
  %i.avg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i290.i ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %36 = fadd float %i.aux, -5.000000e-01          ; 2 uses
  %37 = fadd float %i.avf, -5.000000e-01          ; 2 uses
  %i.avi = fmul float %i.auh, %36
  %i.avj = tail call float @llvm.fmuladd.f32(float %i.auf, float %i.ava, float %i.avi)
  %i.avk = tail call float @llvm.fmuladd.f32(float %i.auj, float %37, float %i.avj) ; 2 uses
  %i.avl = fcmp ogt float %i.avk, 1.000000e+00
  %.sroa.speculated.i.i291.i = select i1 %i.avl, float 1.000000e+00, float %i.avk ; 2 uses
  %i.avm = fcmp ogt float %.sroa.speculated.i.i291.i, 0.000000e+00
  %.sroa.speculated14.i.i292.i = select i1 %i.avm, float %.sroa.speculated.i.i291.i, float 0.000000e+00
  store float %.sroa.speculated14.i.i292.i, ptr %i.avh, align 4, !tbaa !80
  %38 = insertelement <2 x float> poison, float %36, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avn = fmul <2 x float> %i.aus, %39
  %i.avo = insertelement <2 x float> poison, float %i.ava, i64 0
  %i.avp = shufflevector <2 x float> %i.avo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auo, <2 x float> %i.avp, <2 x float> %i.avn)
  %40 = insertelement <2 x float> poison, float %37, i64 0
  %i.avr = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auq, <2 x float> %i.avr, <2 x float> %i.avq) ; 2 uses
  %i.avt = fcmp ogt <2 x float> %i.avs, splat (float 1.000000e+00)
  %i.avu = select <2 x i1> %i.avt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.avs ; 2 uses
  %i.avv = fcmp ogt <2 x float> %i.avu, zeroinitializer
  %i.avw = select <2 x i1> %i.avv, <2 x float> %i.avu, <2 x float> zeroinitializer
  store <2 x float> %i.avw, ptr %i.avg, align 4, !tbaa !80
  %i.avx = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !80
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avg, i64 12
  store float %i.avy, ptr %i.avz, align 4, !tbaa !80
  %indvars.iv.next.i297.i = add nuw nsw i64 %indvars.iv.i288.i, 1 ; 2 uses
  %exitcond.not.i298.i = icmp eq i64 %indvars.iv.next.i297.i, %wide.trip.count.i287.i
  br i1 %exitcond.not.i298.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ag, !llvm.loop !49

bb.ah:                                            ; preds = %bb.y
  %switch.tableidx520 = add i8 %i.h, -5           ; 2 uses
  %i.awa = icmp ult i8 %switch.tableidx520, 4
  br i1 %i.awa, label %switch.lookup521, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup521:                                 ; preds = %bb.ah
  %i.awb = icmp sgt i32 %i.p, 0
  br i1 %i.awb, label %.lr.ph.i300.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i300.i:                                    ; preds = %switch.lookup521
  %i.awc = zext nneg i8 %switch.tableidx520 to i64
  %switch.gep522 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.awc
  %switch.load523 = load ptr, ptr %switch.gep522, align 8 ; 4 uses
  %i.awd = load float, ptr %switch.load523, align 16, !tbaa !80
  %i.awe = fpext float %i.awd to double
  %i.awf = getelementptr inbounds nuw i8, ptr %switch.load523, i64 4
  %i.awg = load <2 x float>, ptr %i.awf, align 4, !tbaa !80
  %i.awh = getelementptr inbounds nuw i8, ptr %switch.load523, i64 12
  %i.awi = getelementptr inbounds nuw i8, ptr %switch.load523, i64 28
  %i.awj = load <4 x float>, ptr %i.awh, align 4, !tbaa !80 ; 3 uses
  %i.awk = shufflevector <4 x float> %i.awj, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.awl = fpext <2 x float> %i.awk to <2 x double>
  %i.awm = load <2 x float>, ptr %i.awi, align 4, !tbaa !80 ; 2 uses
  %wide.trip.count.i301.i = zext nneg i32 %i.p to i64
  %i.awn = shufflevector <2 x float> %i.awm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> %i.awj, <2 x i32> <i32 0, i32 5>
  %i.awp = shufflevector <4 x float> %i.awj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.awq = shufflevector <2 x float> %i.awm, <2 x float> %i.awp, <2 x i32> <i32 1, i32 3>
  %i.awr = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.awe, i64 0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i300.i
  %indvars.iv.i302.i = phi i64 [ 0, %.lr.ph.i300.i ], [ %indvars.iv.next.i311.i, %bb.ai ] ; 5 uses
  %i.aws = or i64 %indvars.iv.i302.i, 1
  %i.awt = mul i64 %i.aws, 3
  %i.awu = and i64 %i.awt, 4294967295
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.awu
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !82
  %.idx.i303.i = mul nuw nsw i64 %indvars.iv.i302.i, 24
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i303.i ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.awz = load double, ptr %i.awy, align 8, !tbaa !82 ; 2 uses
  %i.axa = and i64 %indvars.iv.i302.i, 2147483646
  %i.axb = mul nuw nsw i64 %i.axa, 3
  %i.axc = and i64 %i.axb, 4294967294
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.axc
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !82
  %.idx30.i304.i = shl nuw nsw i64 %indvars.iv.i302.i, 5
  %i.axf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i304.i ; 3 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.axh = insertelement <2 x double> poison, double %i.aww, i64 0
  %i.axi = insertelement <2 x double> %i.axh, double %i.axe, i64 1
  %i.axj = fptrunc <2 x double> %i.axi to <2 x float>
  %i.axk = fadd <2 x float> %i.axj, splat (float -5.000000e-01) ; 3 uses
  %i.axl = fmul <2 x float> %i.awg, %i.axk
  %i.axm = fpext <2 x float> %i.axl to <2 x double>
  %i.axn = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.awz, i64 0
  %i.axo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awr, <2 x double> %i.axn, <2 x double> %i.axm)
  %i.axp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.axo)
  %i.axq = fptrunc double %i.axp to float         ; 2 uses
  %i.axr = fcmp ogt float %i.axq, 1.000000e+00
  %.sroa.speculated.i.i305.i = select i1 %i.axr, float 1.000000e+00, float %i.axq ; 2 uses
  %i.axs = fpext float %.sroa.speculated.i.i305.i to double
  %i.axt = fcmp ogt float %.sroa.speculated.i.i305.i, 0.000000e+00
  %.sroa.speculated14.i.i306.i = select i1 %i.axt, double %i.axs, double 0.000000e+00
  store double %.sroa.speculated14.i.i306.i, ptr %i.axg, align 8, !tbaa !82
  %i.axu = shufflevector <2 x float> %i.axk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axv = fmul <2 x float> %i.awo, %i.axu
  %i.axw = fpext <2 x float> %i.axv to <2 x double>
  %i.axx = insertelement <2 x double> poison, double %i.awz, i64 0
  %i.axy = shufflevector <2 x double> %i.axx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awl, <2 x double> %i.axy, <2 x double> %i.axw)
  %i.aya = shufflevector <2 x float> %i.axk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ayb = fmul <2 x float> %i.awq, %i.aya
  %i.ayc = fpext <2 x float> %i.ayb to <2 x double>
  %i.ayd = fadd <2 x double> %i.axz, %i.ayc
  %i.aye = fptrunc <2 x double> %i.ayd to <2 x float> ; 2 uses
  %i.ayf = fcmp ogt <2 x float> %i.aye, splat (float 1.000000e+00)
  %i.ayg = select <2 x i1> %i.ayf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aye ; 2 uses
  %i.ayh = fpext <2 x float> %i.ayg to <2 x double>
  %i.ayi = fcmp ogt <2 x float> %i.ayg, zeroinitializer
  %i.ayj = select <2 x i1> %i.ayi, <2 x double> %i.ayh, <2 x double> zeroinitializer
  store <2 x double> %i.ayj, ptr %i.axf, align 8, !tbaa !82
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  %i.ayl = load double, ptr %i.ayk, align 8, !tbaa !82
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  store double %i.ayl, ptr %i.aym, align 8, !tbaa !82
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
  %i.ayn = icmp ult i8 %switch.tableidx524, 4
  br i1 %i.ayn, label %switch.lookup525, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup525:                                 ; preds = %bb.ak
  %i.ayo = icmp sgt i32 %i.p, 0
  br i1 %i.ayo, label %.lr.ph.i314.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i314.i:                                    ; preds = %switch.lookup525
  %i.ayp = zext nneg i8 %switch.tableidx524 to i64
  %switch.gep526 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ayp
  %switch.load527 = load ptr, ptr %switch.gep526, align 8 ; 5 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %switch.load527, i64 16
  %i.ayr = load <4 x float>, ptr %switch.load527, align 16, !tbaa !80 ; 7 uses
  %i.ays = load <2 x float>, ptr %i.ayq, align 16, !tbaa !80 ; 4 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %switch.load527, i64 24
  %i.ayu = load float, ptr %i.ayt, align 8, !tbaa !80 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %switch.load527, i64 28
  %i.ayw = load float, ptr %i.ayv, align 4, !tbaa !80 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %switch.load527, i64 32
  %i.ayy = load float, ptr %i.ayx, align 16, !tbaa !80 ; 2 uses
  %wide.trip.count.i315.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check245 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check245, label %scalar.ph244.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.i314.i
  %i.ayz = shl nuw nsw i64 %wide.trip.count.i315.i, 2 ; 2 uses
  %scevgep239 = getelementptr i8, ptr %3, i64 %i.ayz
  %scevgep240 = getelementptr i8, ptr %2, i64 %i.ayz
  %bound0241 = icmp ult ptr %3, %scevgep240
  %bound1242 = icmp ult ptr %2, %scevgep239
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %scalar.ph244.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck238
  %n.vec247 = and i64 %wide.trip.count.i315.i, 2147483644 ; 3 uses
  %broadcast.splat249 = shufflevector <4 x float> %i.ayr, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat251 = shufflevector <4 x float> %i.ayr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat253 = shufflevector <4 x float> %i.ayr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat255 = shufflevector <4 x float> %i.ayr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat257 = shufflevector <2 x float> %i.ays, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat259 = shufflevector <2 x float> %i.ays, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert260 = insertelement <4 x float> poison, float %i.ayu, i64 0
  %broadcast.splat261 = shufflevector <4 x float> %broadcast.splatinsert260, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert262 = insertelement <4 x float> poison, float %i.ayw, i64 0
  %broadcast.splat263 = shufflevector <4 x float> %broadcast.splatinsert262, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %i.ayy, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph246
  %index267 = phi i64 [ 0, %vector.ph246 ], [ %index.next268, %vector.body266 ] ; 5 uses
  %i.aza = shl nuw nsw i64 %index267, 2           ; 2 uses
  %i.azb = shl i64 %index267, 2
  %i.azc = shl i64 %index267, 2
  %i.azd = shl i64 %index267, 2
  %i.aze = getelementptr inbounds nuw i8, ptr %2, i64 %i.aza ; 4 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %2, i64 %i.azb ; 4 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 4
  %i.azh = getelementptr inbounds nuw i8, ptr %2, i64 %i.azc ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 %i.azd ; 4 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 12
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aze, i64 1
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azf, i64 5
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azh, i64 9
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azj, i64 13
  %i.azp = getelementptr inbounds nuw i8, ptr %i.aze, i64 2
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azf, i64 6
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azh, i64 10
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azj, i64 14
  %i.azt = load i8, ptr %i.azl, align 1, !tbaa !77, !alias.scope !95
  %i.azu = load i8, ptr %i.azm, align 1, !tbaa !77, !alias.scope !95
  %i.azv = load i8, ptr %i.azn, align 1, !tbaa !77, !alias.scope !95
  %i.azw = load i8, ptr %i.azo, align 1, !tbaa !77, !alias.scope !95
  %i.azx = insertelement <4 x i8> poison, i8 %i.azt, i64 0
  %i.azy = insertelement <4 x i8> %i.azx, i8 %i.azu, i64 1
  %i.azz = insertelement <4 x i8> %i.azy, i8 %i.azv, i64 2
  %i.baa = insertelement <4 x i8> %i.azz, i8 %i.azw, i64 3
  %i.bab = uitofp <4 x i8> %i.baa to <4 x float>  ; 3 uses
  %i.bac = load i8, ptr %i.aze, align 1, !tbaa !77, !alias.scope !95
  %i.bad = load i8, ptr %i.azg, align 1, !tbaa !77, !alias.scope !95
  %i.bae = load i8, ptr %i.azi, align 1, !tbaa !77, !alias.scope !95
  %i.baf = load i8, ptr %i.azk, align 1, !tbaa !77, !alias.scope !95
  %i.bag = insertelement <4 x i8> poison, i8 %i.bac, i64 0
  %i.bah = insertelement <4 x i8> %i.bag, i8 %i.bad, i64 1
  %i.bai = insertelement <4 x i8> %i.bah, i8 %i.bae, i64 2
  %i.baj = insertelement <4 x i8> %i.bai, i8 %i.baf, i64 3
  %i.bak = uitofp <4 x i8> %i.baj to <4 x float>
  %i.bal = fadd nnan <4 x float> %i.bak, splat (float -1.275000e+02) ; 3 uses
  %i.bam = fmul <4 x float> %broadcast.splat251, %i.bal
  %i.ban = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat249, <4 x float> %i.bab, <4 x float> %i.bam)
  %i.bao = load i8, ptr %i.azp, align 1, !tbaa !77, !alias.scope !95
  %i.bap = load i8, ptr %i.azq, align 1, !tbaa !77, !alias.scope !95
  %i.baq = load i8, ptr %i.azr, align 1, !tbaa !77, !alias.scope !95
  %i.bar = load i8, ptr %i.azs, align 1, !tbaa !77, !alias.scope !95
  %i.bas = insertelement <4 x i8> poison, i8 %i.bao, i64 0
  %i.bat = insertelement <4 x i8> %i.bas, i8 %i.bap, i64 1
  %i.bau = insertelement <4 x i8> %i.bat, i8 %i.baq, i64 2
  %i.bav = insertelement <4 x i8> %i.bau, i8 %i.bar, i64 3
  %i.baw = uitofp <4 x i8> %i.bav to <4 x float>
  %i.bax = fadd <4 x float> %i.baw, splat (float -1.275000e+02) ; 3 uses
  %i.bay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat253, <4 x float> %i.bax, <4 x float> %i.ban) ; 2 uses
  %i.baz = fcmp ogt <4 x float> %i.bay, splat (float 2.550000e+02)
  %i.bba = select <4 x i1> %i.baz, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bay
  %i.bbb = fptoui <4 x float> %i.bba to <4 x i8>
  %i.bbc = fmul <4 x float> %broadcast.splat257, %i.bal
  %i.bbd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat255, <4 x float> %i.bab, <4 x float> %i.bbc)
  %i.bbe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat259, <4 x float> %i.bax, <4 x float> %i.bbd) ; 2 uses
  %i.bbf = fcmp ogt <4 x float> %i.bbe, splat (float 2.550000e+02)
  %i.bbg = select <4 x i1> %i.bbf, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bbe
  %i.bbh = fptoui <4 x float> %i.bbg to <4 x i8>
  %i.bbi = fmul <4 x float> %broadcast.splat263, %i.bal
  %i.bbj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat261, <4 x float> %i.bab, <4 x float> %i.bbi)
  %i.bbk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat265, <4 x float> %i.bax, <4 x float> %i.bbj) ; 2 uses
  %i.bbl = fcmp ogt <4 x float> %i.bbk, splat (float 2.550000e+02)
  %i.bbm = select <4 x i1> %i.bbl, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bbk
  %i.bbn = fptoui <4 x float> %i.bbm to <4 x i8>
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.aze, i64 3
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.azf, i64 7
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.azh, i64 11
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.azj, i64 15
  %i.bbs = load i8, ptr %i.bbo, align 1, !tbaa !77, !alias.scope !95
  %i.bbt = load i8, ptr %i.bbp, align 1, !tbaa !77, !alias.scope !95
  %i.bbu = load i8, ptr %i.bbq, align 1, !tbaa !77, !alias.scope !95
  %i.bbv = load i8, ptr %i.bbr, align 1, !tbaa !77, !alias.scope !95
  %i.bbw = insertelement <4 x i8> poison, i8 %i.bbs, i64 0
  %i.bbx = insertelement <4 x i8> %i.bbw, i8 %i.bbt, i64 1
  %i.bby = insertelement <4 x i8> %i.bbx, i8 %i.bbu, i64 2
  %i.bbz = insertelement <4 x i8> %i.bby, i8 %i.bbv, i64 3
  %i.bca = getelementptr inbounds nuw i8, ptr %3, i64 %i.aza
  %i.bcb = zext <4 x i8> %i.bbz to <4 x i32>
  %i.bcc = shl nuw <4 x i32> %i.bcb, splat (i32 24)
  %i.bcd = zext <4 x i8> %i.bbb to <4 x i32>
  %i.bce = shl nuw nsw <4 x i32> %i.bcd, splat (i32 16)
  %i.bcf = or disjoint <4 x i32> %i.bce, %i.bcc
  %i.bcg = zext <4 x i8> %i.bbh to <4 x i32>
  %i.bch = shl nuw nsw <4 x i32> %i.bcg, splat (i32 8)
  %i.bci = or disjoint <4 x i32> %i.bcf, %i.bch
  %i.bcj = zext <4 x i8> %i.bbn to <4 x i32>
  %i.bck = or disjoint <4 x i32> %i.bci, %i.bcj
  store <4 x i32> %i.bck, ptr %i.bca, align 1, !alias.scope !96, !noalias !95
  %index.next268 = add nuw i64 %index267, 4       ; 2 uses
  %i.bcl = icmp eq i64 %index.next268, %n.vec247
  br i1 %i.bcl, label %middle.block269, label %vector.body266, !llvm.loop !54

middle.block269:                                  ; preds = %vector.body266
  %cmp.n270 = icmp eq i64 %n.vec247, %wide.trip.count.i315.i
  br i1 %cmp.n270, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph244.preheader

scalar.ph244.preheader:                           ; preds = %vector.memcheck238, %.lr.ph.i314.i, %middle.block269
  %indvars.iv.i316.i.ph = phi i64 [ 0, %vector.memcheck238 ], [ 0, %.lr.ph.i314.i ], [ %n.vec247, %middle.block269 ]
  %i.bcm = shufflevector <4 x float> %i.ayr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bcn = shufflevector <2 x float> %i.ays, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bco = shufflevector <4 x float> %i.ayr, <4 x float> %i.bcn, <2 x i32> <i32 1, i32 4>
  %i.bcp = shufflevector <4 x float> %i.ayr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bcq = shufflevector <2 x float> %i.bcm, <2 x float> %i.ays, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph244

scalar.ph244:                                     ; preds = %scalar.ph244.preheader, %scalar.ph244
  %indvars.iv.i316.i = phi i64 [ %indvars.iv.next.i320.i, %scalar.ph244 ], [ %indvars.iv.i316.i.ph, %scalar.ph244.preheader ] ; 2 uses
  %i.bcr = shl nuw nsw i64 %indvars.iv.i316.i, 2  ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %2, i64 %i.bcr ; 4 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 1
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcs, i64 2
  %i.bcv = load i8, ptr %i.bct, align 1, !tbaa !77
  %i.bcw = uitofp i8 %i.bcv to float              ; 2 uses
  %i.bcx = load i8, ptr %i.bcs, align 1, !tbaa !77
  %i.bcy = load i8, ptr %i.bcu, align 1, !tbaa !77
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcs, i64 3
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !77
  %i.bdb = getelementptr inbounds nuw i8, ptr %3, i64 %i.bcr
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.bda to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24
  %41 = uitofp i8 %i.bcx to float
  %42 = uitofp i8 %i.bcy to float
  %43 = fadd nnan float %41, -1.275000e+02        ; 2 uses
  %44 = fadd float %42, -1.275000e+02             ; 2 uses
  %45 = insertelement <2 x float> poison, float %43, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdc = fmul <2 x float> %i.bco, %46
  %i.bdd = insertelement <2 x float> poison, float %i.bcw, i64 0
  %i.bde = shufflevector <2 x float> %i.bdd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcp, <2 x float> %i.bde, <2 x float> %i.bdc)
  %47 = insertelement <2 x float> poison, float %44, i64 0
  %i.bdg = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcq, <2 x float> %i.bdg, <2 x float> %i.bdf) ; 2 uses
  %i.bdi = fcmp ogt <2 x float> %i.bdh, splat (float 2.550000e+02)
  %i.bdj = select <2 x i1> %i.bdi, <2 x float> splat (float 2.550000e+02), <2 x float> %i.bdh
  %i.bdk = fptoui <2 x float> %i.bdj to <2 x i8>
  %i.bdl = fmul float %i.ayw, %43
  %i.bdm = tail call float @llvm.fmuladd.f32(float %i.ayu, float %i.bcw, float %i.bdl)
  %i.bdn = tail call float @llvm.fmuladd.f32(float %i.ayy, float %44, float %i.bdm) ; 2 uses
  %i.bdo = fcmp ogt float %i.bdn, 2.550000e+02
  %.sroa.speculated.2.i.i319.i = select i1 %i.bdo, float 2.550000e+02, float %i.bdn
  %i.bdp = fptoui float %.sroa.speculated.2.i.i319.i to i8
  %i.bdq = zext <2 x i8> %i.bdk to <2 x i32>
  %i.bdr = shl nuw nsw <2 x i32> %i.bdq, <i32 16, i32 8> ; 2 uses
  %i.bds = extractelement <2 x i32> %i.bdr, i64 0
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %i.bds, %.sroa.6.0.insert.shift.i.i
  %i.bdt = extractelement <2 x i32> %i.bdr, i64 1
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %i.bdt
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.bdp to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.bdb, align 1
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i316.i, 1 ; 2 uses
  %exitcond.not.i321.i = icmp eq i64 %indvars.iv.next.i320.i, %wide.trip.count.i315.i
  br i1 %exitcond.not.i321.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph244, !llvm.loop !55

bb.al:                                            ; preds = %bb.aj
  %switch.tableidx528 = add i8 %i.h, -5           ; 2 uses
  %i.bdu = icmp ult i8 %switch.tableidx528, 4
  br i1 %i.bdu, label %switch.lookup529, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup529:                                 ; preds = %bb.al
  %i.bdv = icmp sgt i32 %i.p, 0
  br i1 %i.bdv, label %.lr.ph.i323.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i323.i:                                    ; preds = %switch.lookup529
  %i.bdw = zext nneg i8 %switch.tableidx528 to i64
  %switch.gep530 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bdw
  %switch.load531 = load ptr, ptr %switch.gep530, align 8 ; 5 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %switch.load531, i64 16
  %i.bdy = load <4 x float>, ptr %switch.load531, align 16, !tbaa !80 ; 7 uses
  %i.bdz = load <2 x float>, ptr %i.bdx, align 16, !tbaa !80 ; 4 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %switch.load531, i64 24
  %i.beb = load float, ptr %i.bea, align 8, !tbaa !80 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %switch.load531, i64 28
  %i.bed = load float, ptr %i.bec, align 4, !tbaa !80 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %switch.load531, i64 32
  %i.bef = load float, ptr %i.bee, align 16, !tbaa !80 ; 2 uses
  %wide.trip.count.i324.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check211 = icmp eq i32 %i.p, 1
  br i1 %min.iters.check211, label %scalar.ph210.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph.i323.i
  %i.beg = shl nuw nsw i64 %wide.trip.count.i324.i, 3 ; 2 uses
  %scevgep205 = getelementptr i8, ptr %3, i64 %i.beg
  %scevgep206 = getelementptr i8, ptr %2, i64 %i.beg
  %bound0207 = icmp ult ptr %3, %scevgep206
  %bound1208 = icmp ult ptr %2, %scevgep205
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %scalar.ph210.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck204
  %n.vec213 = and i64 %wide.trip.count.i324.i, 2147483646 ; 3 uses
  %broadcast.splat215 = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat217 = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat219 = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat221 = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat223 = shufflevector <2 x float> %i.bdz, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat225 = shufflevector <2 x float> %i.bdz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert226 = insertelement <2 x float> poison, float %i.beb, i64 0
  %broadcast.splat227 = shufflevector <2 x float> %broadcast.splatinsert226, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <2 x float> poison, float %i.bed, i64 0
  %broadcast.splat229 = shufflevector <2 x float> %broadcast.splatinsert228, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <2 x float> poison, float %i.bef, i64 0
  %broadcast.splat231 = shufflevector <2 x float> %broadcast.splatinsert230, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph212
  %index233 = phi i64 [ 0, %vector.ph212 ], [ %index.next234, %vector.body232 ] ; 3 uses
  %i.beh = shl nuw nsw i64 %index233, 2           ; 2 uses
  %i.bei = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.beh ; 4 uses
  %.idx453 = shl i64 %index233, 3
  %i.bej = getelementptr inbounds nuw i8, ptr %2, i64 %.idx453 ; 4 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 2
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 10
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bei, i64 4
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bej, i64 12
  %i.bep = load i16, ptr %i.bel, align 2, !tbaa !79, !alias.scope !97
  %i.beq = load i16, ptr %i.bem, align 2, !tbaa !79, !alias.scope !97
  %i.ber = insertelement <2 x i16> poison, i16 %i.bep, i64 0
  %i.bes = insertelement <2 x i16> %i.ber, i16 %i.beq, i64 1
  %i.bet = uitofp <2 x i16> %i.bes to <2 x float> ; 3 uses
  %i.beu = load i16, ptr %i.bei, align 2, !tbaa !79, !alias.scope !97
  %i.bev = load i16, ptr %i.bek, align 2, !tbaa !79, !alias.scope !97
  %i.bew = insertelement <2 x i16> poison, i16 %i.beu, i64 0
  %i.bex = insertelement <2 x i16> %i.bew, i16 %i.bev, i64 1
  %i.bey = uitofp <2 x i16> %i.bex to <2 x float>
  %i.bez = fadd nnan <2 x float> %i.bey, splat (float -3.276750e+04) ; 3 uses
  %i.bfa = fmul <2 x float> %broadcast.splat217, %i.bez
  %i.bfb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat215, <2 x float> %i.bet, <2 x float> %i.bfa)
  %i.bfc = load i16, ptr %i.ben, align 2, !tbaa !79, !alias.scope !97
  %i.bfd = load i16, ptr %i.beo, align 2, !tbaa !79, !alias.scope !97
  %i.bfe = insertelement <2 x i16> poison, i16 %i.bfc, i64 0
  %i.bff = insertelement <2 x i16> %i.bfe, i16 %i.bfd, i64 1
  %i.bfg = uitofp <2 x i16> %i.bff to <2 x float>
  %i.bfh = fadd <2 x float> %i.bfg, splat (float -3.276750e+04) ; 3 uses
  %i.bfi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat219, <2 x float> %i.bfh, <2 x float> %i.bfb) ; 2 uses
  %i.bfj = fcmp ogt <2 x float> %i.bfi, splat (float 6.553500e+04)
  %i.bfk = select <2 x i1> %i.bfj, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bfi
  %i.bfl = fptoui <2 x float> %i.bfk to <2 x i16>
  %i.bfm = fmul <2 x float> %broadcast.splat223, %i.bez
  %i.bfn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat221, <2 x float> %i.bet, <2 x float> %i.bfm)
  %i.bfo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat225, <2 x float> %i.bfh, <2 x float> %i.bfn) ; 2 uses
  %i.bfp = fcmp ogt <2 x float> %i.bfo, splat (float 6.553500e+04)
  %i.bfq = select <2 x i1> %i.bfp, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bfo
  %i.bfr = fptoui <2 x float> %i.bfq to <2 x i16>
  %i.bfs = fmul <2 x float> %broadcast.splat229, %i.bez
  %i.bft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat227, <2 x float> %i.bet, <2 x float> %i.bfs)
  %i.bfu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat231, <2 x float> %i.bfh, <2 x float> %i.bft) ; 2 uses
  %i.bfv = fcmp ogt <2 x float> %i.bfu, splat (float 6.553500e+04)
  %i.bfw = select <2 x i1> %i.bfv, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bfu
  %i.bfx = fptoui <2 x float> %i.bfw to <2 x i16>
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bei, i64 6
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bej, i64 14
  %i.bga = load i16, ptr %i.bfy, align 2, !tbaa !79, !alias.scope !97
  %i.bgb = load i16, ptr %i.bfz, align 2, !tbaa !79, !alias.scope !97
  %i.bgc = insertelement <2 x i16> poison, i16 %i.bga, i64 0
  %i.bgd = insertelement <2 x i16> %i.bgc, i16 %i.bgb, i64 1
  %i.bge = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.beh
  %i.bgf = zext <2 x i16> %i.bgd to <2 x i64>
  %i.bgg = shl nuw <2 x i64> %i.bgf, splat (i64 48)
  %i.bgh = zext <2 x i16> %i.bfl to <2 x i64>
  %i.bgi = shl nuw nsw <2 x i64> %i.bgh, splat (i64 32)
  %i.bgj = or disjoint <2 x i64> %i.bgi, %i.bgg
  %i.bgk = zext <2 x i16> %i.bfr to <2 x i64>
  %i.bgl = shl nuw nsw <2 x i64> %i.bgk, splat (i64 16)
  %i.bgm = or disjoint <2 x i64> %i.bgj, %i.bgl
  %i.bgn = zext <2 x i16> %i.bfx to <2 x i64>
  %i.bgo = or disjoint <2 x i64> %i.bgm, %i.bgn
  store <2 x i64> %i.bgo, ptr %i.bge, align 2, !alias.scope !98, !noalias !97
  %index.next234 = add nuw i64 %index233, 2       ; 2 uses
  %i.bgp = icmp eq i64 %index.next234, %n.vec213
  br i1 %i.bgp, label %middle.block235, label %vector.body232, !llvm.loop !59

middle.block235:                                  ; preds = %vector.body232
  %cmp.n236 = icmp eq i64 %n.vec213, %wide.trip.count.i324.i
  br i1 %cmp.n236, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph210.preheader

scalar.ph210.preheader:                           ; preds = %vector.memcheck204, %.lr.ph.i323.i, %middle.block235
  %indvars.iv.i325.i.ph = phi i64 [ 0, %vector.memcheck204 ], [ 0, %.lr.ph.i323.i ], [ %n.vec213, %middle.block235 ]
  %i.bgq = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bgr = shufflevector <2 x float> %i.bdz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bgs = shufflevector <4 x float> %i.bdy, <4 x float> %i.bgr, <2 x i32> <i32 1, i32 4>
  %i.bgt = shufflevector <4 x float> %i.bdy, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bgu = shufflevector <2 x float> %i.bgq, <2 x float> %i.bdz, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph210

scalar.ph210:                                     ; preds = %scalar.ph210.preheader, %scalar.ph210
  %indvars.iv.i325.i = phi i64 [ %indvars.iv.next.i339.i, %scalar.ph210 ], [ %indvars.iv.i325.i.ph, %scalar.ph210.preheader ] ; 2 uses
  %i.bgv = shl nuw nsw i64 %indvars.iv.i325.i, 2  ; 2 uses
  %i.bgw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bgv ; 4 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 2
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 4
  %i.bgz = load i16, ptr %i.bgx, align 2, !tbaa !79
  %i.bha = uitofp i16 %i.bgz to float             ; 2 uses
  %i.bhb = load i16, ptr %i.bgw, align 2, !tbaa !79
  %i.bhc = load i16, ptr %i.bgy, align 2, !tbaa !79
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgw, i64 6
  %i.bhe = load i16, ptr %i.bhd, align 2, !tbaa !79
  %i.bhf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bgv
  %.sroa.6.0.insert.ext.i329.i = zext i16 %i.bhe to i64
  %.sroa.6.0.insert.shift.i330.i = shl nuw i64 %.sroa.6.0.insert.ext.i329.i, 48
  %i.bhg = insertelement <2 x i16> poison, i16 %i.bhc, i64 0
  %i.bhh = insertelement <2 x i16> %i.bhg, i16 %i.bhb, i64 1
  %i.bhi = uitofp <2 x i16> %i.bhh to <2 x float>
  %i.bhj = fadd <2 x float> %i.bhi, splat (float -3.276750e+04) ; 4 uses
  %i.bhk = shufflevector <2 x float> %i.bhj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhl = fmul <2 x float> %i.bgs, %i.bhk
  %i.bhm = insertelement <2 x float> poison, float %i.bha, i64 0
  %i.bhn = shufflevector <2 x float> %i.bhm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgt, <2 x float> %i.bhn, <2 x float> %i.bhl)
  %i.bhp = shufflevector <2 x float> %i.bhj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgu, <2 x float> %i.bhp, <2 x float> %i.bho) ; 2 uses
  %i.bhr = fcmp ogt <2 x float> %i.bhq, splat (float 6.553500e+04)
  %i.bhs = select <2 x i1> %i.bhr, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bhq
  %i.bht = fptoui <2 x float> %i.bhs to <2 x i16>
  %i.bhu = extractelement <2 x float> %i.bhj, i64 1
  %i.bhv = fmul float %i.bed, %i.bhu
  %i.bhw = tail call float @llvm.fmuladd.f32(float %i.beb, float %i.bha, float %i.bhv)
  %i.bhx = extractelement <2 x float> %i.bhj, i64 0
  %i.bhy = tail call float @llvm.fmuladd.f32(float %i.bef, float %i.bhx, float %i.bhw) ; 2 uses
  %i.bhz = fcmp ogt float %i.bhy, 6.553500e+04
  %.sroa.speculated.2.i.i328.i = select i1 %i.bhz, float 6.553500e+04, float %i.bhy
  %i.bia = fptoui float %.sroa.speculated.2.i.i328.i to i16
  %i.bib = zext <2 x i16> %i.bht to <2 x i64>
  %i.bic = shl nuw nsw <2 x i64> %i.bib, <i64 32, i64 16> ; 2 uses
  %i.bid = extractelement <2 x i64> %i.bic, i64 0
  %.sroa.5.0.insert.insert.i333.i = or disjoint i64 %i.bid, %.sroa.6.0.insert.shift.i330.i
  %i.bie = extractelement <2 x i64> %i.bic, i64 1
  %.sroa.4.0.insert.insert.i336.i = or disjoint i64 %.sroa.5.0.insert.insert.i333.i, %i.bie
  %.sroa.0.0.insert.ext.i337.i = zext i16 %i.bia to i64
  %.sroa.0.0.insert.insert.i338.i = or disjoint i64 %.sroa.4.0.insert.insert.i336.i, %.sroa.0.0.insert.ext.i337.i
  store i64 %.sroa.0.0.insert.insert.i338.i, ptr %i.bhf, align 2
  %indvars.iv.next.i339.i = add nuw nsw i64 %indvars.iv.i325.i, 1 ; 2 uses
  %exitcond.not.i340.i = icmp eq i64 %indvars.iv.next.i339.i, %wide.trip.count.i324.i
  br i1 %exitcond.not.i340.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph210, !llvm.loop !60

bb.am:                                            ; preds = %bb.aj
  %switch.tableidx532 = add i8 %i.h, -5           ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %i.bmc = load i32, ptr %i.blx, align 4, !tbaa !6
  %i.bmd = load i32, ptr %i.blz, align 4, !tbaa !6
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blx, i64 12
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !6
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.blw ; 3 uses
  %i.bmh = uitofp i32 %i.bmc to float
  %i.bmi = uitofp i32 %i.bmd to float
  %i.bmj = fadd nnan float %i.bmh, f0xCF000000    ; 2 uses
  %i.bmk = fadd float %i.bmi, f0xCF000000         ; 2 uses
  %i.bml = fmul float %i.bik, %i.bmj
  %i.bmm = tail call float @llvm.fmuladd.f32(float %i.bii, float %i.bmb, float %i.bml)
  %i.bmn = tail call float @llvm.fmuladd.f32(float %i.bim, float %i.bmk, float %i.bmm) ; 2 uses
  %i.bmo = fcmp ogt float %i.bmn, f0x4F800000
  %.sroa.speculated.i.i345.i = select i1 %i.bmo, float f0x4F800000, float %i.bmn
  %i.bmp = fptoui float %.sroa.speculated.i.i345.i to i32
  %i.bmq = insertelement <2 x float> poison, float %i.bmj, i64 0
  %i.bmr = shufflevector <2 x float> %i.bmq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bms = fmul <2 x float> %i.bls, %i.bmr
  %i.bmt = insertelement <2 x float> poison, float %i.bmb, i64 0
  %i.bmu = shufflevector <2 x float> %i.bmt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blt, <2 x float> %i.bmu, <2 x float> %i.bms)
  %i.bmw = insertelement <2 x float> poison, float %i.bmk, i64 0
  %i.bmx = shufflevector <2 x float> %i.bmw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blv, <2 x float> %i.bmx, <2 x float> %i.bmv) ; 2 uses
  %i.bmz = fcmp ogt <2 x float> %i.bmy, splat (float f0x4F800000)
  %i.bna = select <2 x i1> %i.bmz, <2 x float> splat (float f0x4F800000), <2 x float> %i.bmy
  %i.bnb = fptoui <2 x float> %i.bna to <2 x i32>
  store <2 x i32> %i.bnb, ptr %i.bmg, align 4
  %.sroa.5.0..sroa_idx.i349.i = getelementptr inbounds nuw i8, ptr %i.bmg, i64 8
  store i32 %i.bmp, ptr %.sroa.5.0..sroa_idx.i349.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bmg, i64 12
  store i32 %i.bmf, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %indvars.iv.next.i350.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i351.i = icmp eq i64 %indvars.iv.next.i350.i, %wide.trip.count.i343.i
  br i1 %exitcond.not.i351.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph175, !llvm.loop !65

bb.an:                                            ; preds = %bb.aj
  %switch.tableidx536 = add i8 %i.h, -5           ; 2 uses
  %i.bnc = icmp ult i8 %switch.tableidx536, 4
  br i1 %i.bnc, label %switch.lookup537, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup537:                                 ; preds = %bb.an
  %i.bnd = icmp sgt i32 %i.p, 0
  br i1 %i.bnd, label %.lr.ph.i353.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i353.i:                                    ; preds = %switch.lookup537
  %i.bne = zext nneg i8 %switch.tableidx536 to i64
  %switch.gep538 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bne
  %switch.load539 = load ptr, ptr %switch.gep538, align 8 ; 5 uses
  %i.bnf = load float, ptr %switch.load539, align 16, !tbaa !80 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %switch.load539, i64 4
  %i.bnh = load float, ptr %i.bng, align 4, !tbaa !80 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %switch.load539, i64 8
  %i.bnj = load float, ptr %i.bni, align 8, !tbaa !80 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %switch.load539, i64 12
  %i.bnl = getelementptr inbounds nuw i8, ptr %switch.load539, i64 28
  %i.bnm = load <4 x float>, ptr %i.bnk, align 4, !tbaa !80 ; 7 uses
  %i.bnn = load <2 x float>, ptr %i.bnl, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i354.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check141 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.i353.i
  %i.bno = shl nuw nsw i64 %wide.trip.count.i354.i, 4 ; 2 uses
  %scevgep135 = getelementptr i8, ptr %3, i64 %i.bno
  %scevgep136 = getelementptr i8, ptr %2, i64 %i.bno
  %bound0137 = icmp ult ptr %3, %scevgep136
  %bound1138 = icmp ult ptr %2, %scevgep135
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck134
  %n.vec143 = and i64 %wide.trip.count.i354.i, 2147483644 ; 3 uses
  %broadcast.splatinsert144 = insertelement <4 x float> poison, float %i.bnf, i64 0
  %broadcast.splat145 = shufflevector <4 x float> %broadcast.splatinsert144, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <4 x float> poison, float %i.bnh, i64 0
  %broadcast.splat147 = shufflevector <4 x float> %broadcast.splatinsert146, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.bnj, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat151 = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat153 = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat155 = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat157 = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat159 = shufflevector <2 x float> %i.bnn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat161 = shufflevector <2 x float> %i.bnn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph142
  %index163 = phi i64 [ 0, %vector.ph142 ], [ %index.next165, %vector.body162 ] ; 5 uses
  %i.bnp = shl nuw nsw i64 %index163, 2           ; 2 uses
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bnp ; 4 uses
  %.idx447 = shl i64 %index163, 4
  %i.bnr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx447 ; 4 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 16
  %.idx448 = shl i64 %index163, 4
  %i.bnt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx448 ; 4 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 32
  %.idx449 = shl i64 %index163, 4
  %i.bnv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx449 ; 4 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 48
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnq, i64 4
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnr, i64 20
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnt, i64 36
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnv, i64 52
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnr, i64 24
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnt, i64 40
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnv, i64 56
  %i.bof = load float, ptr %i.bnx, align 4, !tbaa !80, !alias.scope !101
  %i.bog = load float, ptr %i.bny, align 4, !tbaa !80, !alias.scope !101
  %i.boh = load float, ptr %i.bnz, align 4, !tbaa !80, !alias.scope !101
  %i.boi = load float, ptr %i.boa, align 4, !tbaa !80, !alias.scope !101
  %i.boj = insertelement <4 x float> poison, float %i.bof, i64 0
  %i.bok = insertelement <4 x float> %i.boj, float %i.bog, i64 1
  %i.bol = insertelement <4 x float> %i.bok, float %i.boh, i64 2
  %i.bom = insertelement <4 x float> %i.bol, float %i.boi, i64 3 ; 3 uses
  %i.bon = load float, ptr %i.bnq, align 4, !tbaa !80, !alias.scope !101
  %i.boo = load float, ptr %i.bns, align 4, !tbaa !80, !alias.scope !101
  %i.bop = load float, ptr %i.bnu, align 4, !tbaa !80, !alias.scope !101
  %i.boq = load float, ptr %i.bnw, align 4, !tbaa !80, !alias.scope !101
  %i.bor = insertelement <4 x float> poison, float %i.bon, i64 0
  %i.bos = insertelement <4 x float> %i.bor, float %i.boo, i64 1
  %i.bot = insertelement <4 x float> %i.bos, float %i.bop, i64 2
  %i.bou = insertelement <4 x float> %i.bot, float %i.boq, i64 3
  %i.bov = fadd <4 x float> %i.bou, splat (float -5.000000e-01) ; 3 uses
  %i.bow = fmul <4 x float> %broadcast.splat147, %i.bov
  %i.box = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat145, <4 x float> %i.bom, <4 x float> %i.bow)
  %i.boy = load float, ptr %i.bob, align 4, !tbaa !80, !alias.scope !101
  %i.boz = load float, ptr %i.boc, align 4, !tbaa !80, !alias.scope !101
  %i.bpa = load float, ptr %i.bod, align 4, !tbaa !80, !alias.scope !101
  %i.bpb = load float, ptr %i.boe, align 4, !tbaa !80, !alias.scope !101
  %i.bpc = insertelement <4 x float> poison, float %i.boy, i64 0
  %i.bpd = insertelement <4 x float> %i.bpc, float %i.boz, i64 1
  %i.bpe = insertelement <4 x float> %i.bpd, float %i.bpa, i64 2
  %i.bpf = insertelement <4 x float> %i.bpe, float %i.bpb, i64 3
  %i.bpg = fadd <4 x float> %i.bpf, splat (float -5.000000e-01) ; 3 uses
  %i.bph = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %i.bpg, <4 x float> %i.box) ; 2 uses
  %i.bpi = fcmp ogt <4 x float> %i.bph, splat (float 1.000000e+00)
  %i.bpj = select <4 x i1> %i.bpi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bph ; 2 uses
  %i.bpk = fcmp ogt <4 x float> %i.bpj, zeroinitializer
  %i.bpl = select <4 x i1> %i.bpk, <4 x float> %i.bpj, <4 x float> zeroinitializer
  %i.bpm = fmul <4 x float> %broadcast.splat153, %i.bov
  %i.bpn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat151, <4 x float> %i.bom, <4 x float> %i.bpm)
  %i.bpo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %i.bpg, <4 x float> %i.bpn) ; 2 uses
  %i.bpp = fcmp ogt <4 x float> %i.bpo, splat (float 1.000000e+00)
  %i.bpq = select <4 x i1> %i.bpp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bpo ; 2 uses
  %i.bpr = fmul <4 x float> %broadcast.splat159, %i.bov
  %i.bps = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat157, <4 x float> %i.bom, <4 x float> %i.bpr)
  %i.bpt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat161, <4 x float> %i.bpg, <4 x float> %i.bps) ; 2 uses
  %i.bpu = fcmp ogt <4 x float> %i.bpt, splat (float 1.000000e+00)
  %i.bpv = select <4 x i1> %i.bpu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bpt ; 2 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bnq, i64 12
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bnr, i64 28
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bnt, i64 44
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bnv, i64 60
  %i.bqa = load float, ptr %i.bpw, align 4, !tbaa !80, !alias.scope !101
  %i.bqb = load float, ptr %i.bpx, align 4, !tbaa !80, !alias.scope !101
  %i.bqc = load float, ptr %i.bpy, align 4, !tbaa !80, !alias.scope !101
  %i.bqd = load float, ptr %i.bpz, align 4, !tbaa !80, !alias.scope !101
  %i.bqe = insertelement <4 x float> poison, float %i.bqa, i64 0
  %i.bqf = insertelement <4 x float> %i.bqe, float %i.bqb, i64 1
  %i.bqg = insertelement <4 x float> %i.bqf, float %i.bqc, i64 2
  %i.bqh = insertelement <4 x float> %i.bqg, float %i.bqd, i64 3
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bnp
  %i.bqj = shufflevector <4 x float> %i.bpv, <4 x float> %i.bpq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqk = fcmp ogt <8 x float> %i.bqj, zeroinitializer
  %i.bql = shufflevector <4 x float> %i.bpv, <4 x float> %i.bpq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqm = select <8 x i1> %i.bqk, <8 x float> %i.bql, <8 x float> zeroinitializer
  %i.bqn = shufflevector <4 x float> %i.bpl, <4 x float> %i.bqh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec164 = shufflevector <8 x float> %i.bqm, <8 x float> %i.bqn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec164, ptr %i.bqi, align 4, !alias.scope !102, !noalias !101
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.bqo = icmp eq i64 %index.next165, %n.vec143
  br i1 %i.bqo, label %middle.block166, label %vector.body162, !llvm.loop !69

middle.block166:                                  ; preds = %vector.body162
  %cmp.n167 = icmp eq i64 %n.vec143, %wide.trip.count.i354.i
  br i1 %cmp.n167, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck134, %.lr.ph.i353.i, %middle.block166
  %indvars.iv.i355.i.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.i353.i ], [ %n.vec143, %middle.block166 ]
  %i.bqp = shufflevector <2 x float> %i.bnn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bqq = shufflevector <4 x float> %i.bqp, <4 x float> %i.bnm, <2 x i32> <i32 0, i32 5>
  %i.bqr = shufflevector <4 x float> %i.bnm, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bqs = shufflevector <4 x float> %i.bnm, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bqt = shufflevector <2 x float> %i.bnn, <2 x float> %i.bqs, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i355.i = phi i64 [ %indvars.iv.next.i365.i, %scalar.ph140 ], [ %indvars.iv.i355.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.bqu = shl nuw nsw i64 %indvars.iv.i355.i, 2  ; 2 uses
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bqu ; 4 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 4
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqv, i64 8
  %i.bqy = load float, ptr %i.bqw, align 4, !tbaa !80 ; 2 uses
  %i.bqz = load float, ptr %i.bqv, align 4, !tbaa !80
  %i.bra = load float, ptr %i.bqx, align 4, !tbaa !80
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqv, i64 12
  %i.brc = load float, ptr %i.brb, align 4, !tbaa !80
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bqu ; 3 uses
  %48 = fadd float %i.bqz, -5.000000e-01          ; 2 uses
  %49 = fadd float %i.bra, -5.000000e-01          ; 2 uses
  %i.bre = fmul float %i.bnh, %48
  %i.brf = tail call float @llvm.fmuladd.f32(float %i.bnf, float %i.bqy, float %i.bre)
  %i.brg = tail call float @llvm.fmuladd.f32(float %i.bnj, float %49, float %i.brf) ; 2 uses
  %i.brh = fcmp ogt float %i.brg, 1.000000e+00
  %.sroa.speculated.i.i356.i = select i1 %i.brh, float 1.000000e+00, float %i.brg ; 2 uses
  %i.bri = fcmp ogt float %.sroa.speculated.i.i356.i, 0.000000e+00
  %.sroa.speculated14.i.i357.i = select i1 %i.bri, float %.sroa.speculated.i.i356.i, float 0.000000e+00
  %50 = insertelement <2 x float> poison, float %48, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brj = fmul <2 x float> %i.bqq, %51
  %i.brk = insertelement <2 x float> poison, float %i.bqy, i64 0
  %i.brl = shufflevector <2 x float> %i.brk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqr, <2 x float> %i.brl, <2 x float> %i.brj)
  %52 = insertelement <2 x float> poison, float %49, i64 0
  %i.brn = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqt, <2 x float> %i.brn, <2 x float> %i.brm) ; 2 uses
  %i.brp = fcmp ogt <2 x float> %i.bro, splat (float 1.000000e+00)
  %i.brq = select <2 x i1> %i.brp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bro ; 2 uses
  %i.brr = fcmp ogt <2 x float> %i.brq, zeroinitializer
  %i.brs = select <2 x i1> %i.brr, <2 x float> %i.brq, <2 x float> zeroinitializer
  store <2 x float> %i.brs, ptr %i.brd, align 4
  %.sroa.5.0..sroa_idx.i363.i = getelementptr inbounds nuw i8, ptr %i.brd, i64 8
  store float %.sroa.speculated14.i.i357.i, ptr %.sroa.5.0..sroa_idx.i363.i, align 4
  %.sroa.6.0..sroa_idx.i364.i = getelementptr inbounds nuw i8, ptr %i.brd, i64 12
  store float %i.brc, ptr %.sroa.6.0..sroa_idx.i364.i, align 4
  %indvars.iv.next.i365.i = add nuw nsw i64 %indvars.iv.i355.i, 1 ; 2 uses
  %exitcond.not.i366.i = icmp eq i64 %indvars.iv.next.i365.i, %wide.trip.count.i354.i
  br i1 %exitcond.not.i366.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140, !llvm.loop !70

bb.ao:                                            ; preds = %bb.aj
  %switch.tableidx540 = add i8 %i.h, -5           ; 2 uses
  %i.brt = icmp ult i8 %switch.tableidx540, 4
  br i1 %i.brt, label %switch.lookup541, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup541:                                 ; preds = %bb.ao
  %i.bru = icmp sgt i32 %i.p, 0
  br i1 %i.bru, label %.lr.ph.i368.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i368.i:                                    ; preds = %switch.lookup541
  %i.brv = zext nneg i8 %switch.tableidx540 to i64
  %switch.gep542 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.brv
  %switch.load543 = load ptr, ptr %switch.gep542, align 8 ; 4 uses
  %i.brw = load float, ptr %switch.load543, align 16, !tbaa !80
  %i.brx = fpext float %i.brw to double           ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %switch.load543, i64 4
  %i.brz = load <2 x float>, ptr %i.bry, align 4, !tbaa !80 ; 3 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %switch.load543, i64 12
  %i.bsb = getelementptr inbounds nuw i8, ptr %switch.load543, i64 28
  %i.bsc = load <4 x float>, ptr %i.bsa, align 4, !tbaa !80 ; 5 uses
  %i.bsd = shufflevector <4 x float> %i.bsc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bse = fpext <2 x float> %i.bsd to <2 x double> ; 3 uses
  %i.bsf = load <2 x float>, ptr %i.bsb, align 4, !tbaa !80 ; 4 uses
  %wide.trip.count.i369.i = zext nneg i32 %i.p to i64 ; 4 uses
  %min.iters.check = icmp eq i32 %i.p, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i368.i
  %i.bsg = shl nuw nsw i64 %wide.trip.count.i369.i, 5 ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.bsg
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.bsg
  %bound0 = icmp ult ptr %3, %scevgep117
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i369.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.brx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat119 = shufflevector <2 x float> %i.brz, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat121 = shufflevector <2 x float> %i.brz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat123 = shufflevector <2 x double> %i.bse, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat125 = shufflevector <4 x float> %i.bsc, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat127 = shufflevector <4 x float> %i.bsc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat129 = shufflevector <2 x double> %i.bse, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat131 = shufflevector <2 x float> %i.bsf, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <2 x float> %i.bsf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bsh = shl nuw nsw i64 %index, 2              ; 2 uses
  %i.bsi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bsh ; 4 uses
  %.idx = shl i64 %index, 5
  %i.bsj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 32
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsj, i64 40
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsi, i64 16
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsj, i64 48
  %i.bsp = load double, ptr %i.bsl, align 8, !tbaa !82, !alias.scope !103
  %i.bsq = load double, ptr %i.bsm, align 8, !tbaa !82, !alias.scope !103
  %i.bsr = insertelement <2 x double> poison, double %i.bsp, i64 0
  %i.bss = insertelement <2 x double> %i.bsr, double %i.bsq, i64 1 ; 3 uses
  %i.bst = load double, ptr %i.bsi, align 8, !tbaa !82, !alias.scope !103
  %i.bsu = load double, ptr %i.bsk, align 8, !tbaa !82, !alias.scope !103
  %i.bsv = insertelement <2 x double> poison, double %i.bst, i64 0
  %i.bsw = insertelement <2 x double> %i.bsv, double %i.bsu, i64 1
  %i.bsx = fptrunc <2 x double> %i.bsw to <2 x float>
  %i.bsy = fadd <2 x float> %i.bsx, splat (float -5.000000e-01) ; 3 uses
  %i.bsz = fmul <2 x float> %broadcast.splat119, %i.bsy
  %i.bta = fpext <2 x float> %i.bsz to <2 x double>
  %i.btb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.bss, <2 x double> %i.bta)
  %i.btc = load double, ptr %i.bsn, align 8, !tbaa !82, !alias.scope !103
  %i.btd = load double, ptr %i.bso, align 8, !tbaa !82, !alias.scope !103
  %i.bte = insertelement <2 x double> poison, double %i.btc, i64 0
  %i.btf = insertelement <2 x double> %i.bte, double %i.btd, i64 1
  %i.btg = fptrunc <2 x double> %i.btf to <2 x float>
  %i.bth = fadd <2 x float> %i.btg, splat (float -5.000000e-01) ; 3 uses
  %i.bti = fmul <2 x float> %broadcast.splat121, %i.bth
  %i.btj = fpext <2 x float> %i.bti to <2 x double>
  %i.btk = fadd <2 x double> %i.btb, %i.btj
  %i.btl = fptrunc <2 x double> %i.btk to <2 x float> ; 2 uses
  %i.btm = fcmp ogt <2 x float> %i.btl, splat (float 1.000000e+00)
  %i.btn = select <2 x i1> %i.btm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.btl ; 2 uses
  %i.bto = fpext <2 x float> %i.btn to <2 x double>
  %i.btp = fcmp ogt <2 x float> %i.btn, zeroinitializer
  %i.btq = select <2 x i1> %i.btp, <2 x double> %i.bto, <2 x double> zeroinitializer
  %i.btr = fmul <2 x float> %broadcast.splat125, %i.bsy
  %i.bts = fpext <2 x float> %i.btr to <2 x double>
  %i.btt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %i.bss, <2 x double> %i.bts)
  %i.btu = fmul <2 x float> %broadcast.splat127, %i.bth
  %i.btv = fpext <2 x float> %i.btu to <2 x double>
  %i.btw = fadd <2 x double> %i.btt, %i.btv
  %i.btx = fptrunc <2 x double> %i.btw to <2 x float> ; 2 uses
  %i.bty = fcmp ogt <2 x float> %i.btx, splat (float 1.000000e+00)
  %i.btz = select <2 x i1> %i.bty, <2 x float> splat (float 1.000000e+00), <2 x float> %i.btx ; 2 uses
  %i.bua = fpext <2 x float> %i.btz to <2 x double>
  %i.bub = fcmp ogt <2 x float> %i.btz, zeroinitializer
  %i.buc = select <2 x i1> %i.bub, <2 x double> %i.bua, <2 x double> zeroinitializer
  %i.bud = fmul <2 x float> %broadcast.splat131, %i.bsy
  %i.bue = fpext <2 x float> %i.bud to <2 x double>
  %i.buf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %i.bss, <2 x double> %i.bue)
  %i.bug = fmul <2 x float> %broadcast.splat133, %i.bth
  %i.buh = fpext <2 x float> %i.bug to <2 x double>
  %i.bui = fadd <2 x double> %i.buf, %i.buh
  %i.buj = fptrunc <2 x double> %i.bui to <2 x float> ; 2 uses
  %i.buk = fcmp ogt <2 x float> %i.buj, splat (float 1.000000e+00)
  %i.bul = select <2 x i1> %i.buk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.buj ; 2 uses
  %i.bum = fpext <2 x float> %i.bul to <2 x double>
  %i.bun = fcmp ogt <2 x float> %i.bul, zeroinitializer
  %i.buo = select <2 x i1> %i.bun, <2 x double> %i.bum, <2 x double> zeroinitializer
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bsi, i64 24
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bsj, i64 56
  %i.bur = load double, ptr %i.bup, align 8, !tbaa !82, !alias.scope !103
  %i.bus = load double, ptr %i.buq, align 8, !tbaa !82, !alias.scope !103
  %i.but = insertelement <2 x double> poison, double %i.bur, i64 0
  %i.buu = insertelement <2 x double> %i.but, double %i.bus, i64 1
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bsh
  %i.buw = shufflevector <2 x double> %i.buo, <2 x double> %i.buc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bux = shufflevector <2 x double> %i.btq, <2 x double> %i.buu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.buw, <4 x double> %i.bux, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.buv, align 8, !alias.scope !104, !noalias !103
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.buy = icmp eq i64 %index.next, %n.vec
  br i1 %i.buy, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i369.i
  br i1 %cmp.n, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i368.i, %middle.block
  %indvars.iv.i370.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i368.i ], [ %n.vec, %middle.block ]
  %i.buz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.brx, i64 0
  %i.bva = shufflevector <2 x float> %i.bsf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bvb = shufflevector <4 x float> %i.bva, <4 x float> %i.bsc, <2 x i32> <i32 0, i32 5>
  %i.bvc = shufflevector <4 x float> %i.bsc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bvd = shufflevector <2 x float> %i.bsf, <2 x float> %i.bvc, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i370.i = phi i64 [ %indvars.iv.next.i380.i, %scalar.ph ], [ %indvars.iv.i370.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bve = shl nuw nsw i64 %indvars.iv.i370.i, 2  ; 2 uses
  %i.bvf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bve ; 4 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 8
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvf, i64 16
  %i.bvi = load double, ptr %i.bvg, align 8, !tbaa !82 ; 2 uses
  %i.bvj = load double, ptr %i.bvf, align 8, !tbaa !82
  %i.bvk = load double, ptr %i.bvh, align 8, !tbaa !82
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvf, i64 24
  %i.bvm = load double, ptr %i.bvl, align 8, !tbaa !82
  %i.bvn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bve ; 3 uses
  %i.bvo = insertelement <2 x double> poison, double %i.bvj, i64 0
  %i.bvp = insertelement <2 x double> %i.bvo, double %i.bvk, i64 1
  %i.bvq = fptrunc <2 x double> %i.bvp to <2 x float>
  %i.bvr = fadd <2 x float> %i.bvq, splat (float -5.000000e-01) ; 3 uses
  %i.bvs = fmul <2 x float> %i.brz, %i.bvr
  %i.bvt = fpext <2 x float> %i.bvs to <2 x double>
  %i.bvu = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bvi, i64 0
  %i.bvv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.buz, <2 x double> %i.bvu, <2 x double> %i.bvt)
  %i.bvw = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bvv)
  %i.bvx = fptrunc double %i.bvw to float         ; 2 uses
  %i.bvy = fcmp ogt float %i.bvx, 1.000000e+00
  %.sroa.speculated.i.i371.i = select i1 %i.bvy, float 1.000000e+00, float %i.bvx ; 2 uses
  %i.bvz = fpext float %.sroa.speculated.i.i371.i to double
  %i.bwa = fcmp ogt float %.sroa.speculated.i.i371.i, 0.000000e+00
  %.sroa.speculated14.i.i372.i = select i1 %i.bwa, double %i.bvz, double 0.000000e+00
  %i.bwb = shufflevector <2 x float> %i.bvr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwc = fmul <2 x float> %i.bvb, %i.bwb
  %i.bwd = fpext <2 x float> %i.bwc to <2 x double>
  %i.bwe = insertelement <2 x double> poison, double %i.bvi, i64 0
  %i.bwf = shufflevector <2 x double> %i.bwe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bwg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bse, <2 x double> %i.bwf, <2 x double> %i.bwd)
  %i.bwh = shufflevector <2 x float> %i.bvr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bwi = fmul <2 x float> %i.bvd, %i.bwh
  %i.bwj = fpext <2 x float> %i.bwi to <2 x double>
  %i.bwk = fadd <2 x double> %i.bwg, %i.bwj
  %i.bwl = fptrunc <2 x double> %i.bwk to <2 x float> ; 2 uses
  %i.bwm = fcmp ogt <2 x float> %i.bwl, splat (float 1.000000e+00)
  %i.bwn = select <2 x i1> %i.bwm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bwl ; 2 uses
  %i.bwo = fpext <2 x float> %i.bwn to <2 x double>
  %i.bwp = fcmp ogt <2 x float> %i.bwn, zeroinitializer
  %i.bwq = select <2 x i1> %i.bwp, <2 x double> %i.bwo, <2 x double> zeroinitializer
  store <2 x double> %i.bwq, ptr %i.bvn, align 8
  %.sroa.5.0..sroa_idx.i378.i = getelementptr inbounds nuw i8, ptr %i.bvn, i64 16
end_hunk_2
