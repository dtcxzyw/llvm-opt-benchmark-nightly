Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK11PhongShader8fragmentE3vecILi3EE:bb.a
  %i.cu = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.cv = extractelement <2 x double> %i.cl, i64 1
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.cv)
  %i.cx = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.cy = tail call noundef double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cw)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.cy)
  %i.cz = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = fdiv <2 x double> %i.cf, %i.da
  %i.dc = fdiv <2 x double> %i.cg, %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dd = fmul double %i.f, %i.bo
  %i.de = fmul double %i.h, %i.bo
  %i.df = fmul double %.sroa.3.0.copyload.i, %i.bt
  %i.dg = fmul double %.sroa.0.0.copyload.i, %i.bt
  %i.dh = fadd double %i.dd, %i.df
  %i.di = fadd double %i.de, %i.dg
  %i.dj = fmul double %.sroa.3.0.copyload.i17, %i.ca
  %i.dk = fmul double %.sroa.0.0.copyload.i15, %i.ca
  %i.dl = fadd double %i.dh, %i.dj
  %i.dm = fadd double %i.di, %i.dk
  store double %i.dm, ptr %2, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.dl, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !130
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.du = load <2 x double>, ptr %spec.select.i11.1.i.i, align 16
  %i.dv = load <2 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.dw = load <2 x double>, ptr %3, align 16
  %i.dx = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dx, <2 x double> %i.dt)
  %i.dz = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.dz, <2 x double> %i.dy)
  %i.eb = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.eb, <2 x double> %i.ea) ; 3 uses
  %i.ed = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dx, <2 x double> %i.ed)
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.dz, <2 x double> %i.ee)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.eb, <2 x double> %i.ef) ; 3 uses
  %i.eh = extractelement <2 x double> %i.ec, i64 1 ; 2 uses
  %i.ei = call double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double 0.000000e+00)
  %i.ej = extractelement <2 x double> %i.ec, i64 0 ; 2 uses
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.ei)
  %i.el = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.ek)
  %i.en = extractelement <2 x double> %i.eg, i64 0 ; 2 uses
  %i.eo = call noundef double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.em)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.eo)
  %i.ep = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = fdiv <2 x double> %i.ec, %i.eq          ; 2 uses
  %i.es = fdiv <2 x double> %i.eg, %i.eq          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.ev = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.ew = call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.ey = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ex, double %i.ew)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.fb = extractelement <2 x double> %i.es, i64 1 ; 2 uses
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double %i.ez)
  %i.fd = load double, ptr %i.et, align 8, !tbaa !14 ; 2 uses
  %i.fe = extractelement <2 x double> %i.es, i64 0 ; 2 uses
  %i.ff = call noundef double @llvm.fmuladd.f64(double %i.fe, double %i.fd, double %i.fc) ; 6 uses
  %i.fg = fmul double %i.ev, %i.ff
  %i.fh = fmul double %i.ey, %i.ff
  %i.fi = fmul double %i.fb, %i.ff
  %i.fj = fmul double %i.fe, %i.ff
  %i.fk = fmul double %i.fg, 2.000000e+00
  %i.fl = fmul double %i.fh, 2.000000e+00
  %i.fm = fmul double %i.fi, 2.000000e+00
  %i.fn = fmul double %i.fj, 2.000000e+00
  %i.fo = fsub double %i.fk, %i.eu                ; 2 uses
  %i.fp = fsub double %i.fm, %i.fa                ; 2 uses
  %i.fq = fsub double %i.fn, %i.fd                ; 2 uses
  %i.fr = call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double 0.000000e+00)
  %i.fs = fcmp ogt double %i.ff, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.fs, double %i.ff, double 0.000000e+00
  %i.ft = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ft) ; 3 uses
  %i.fv = load double, ptr %2, align 8, !tbaa !14
  %i.fw = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fu)
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = fmul double %i.fv, %i.fx
  %i.fz = fptosi double %i.fy to i32
  %i.ga = load double, ptr %i.dn, align 8, !tbaa !14
  %i.gb = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fu)
  %i.gc = sitofp i32 %i.gb to double
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = fptosi double %i.gd to i32
  %i.gf = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, i32 noundef %i.fz, i32 noundef %i.ge)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gf to i8
  %i.gg = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.gh = fsub double %i.fl, %i.ex                ; 3 uses
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double %i.fr)
  %i.gj = call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double %i.gi)
  %i.gk = call noundef double @llvm.fmuladd.f64(double %i.fq, double %i.fq, double %i.gj)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.gk)
  %i.gl = fmul nnan double %i.gg, 2.000000e+00
  %i.gm = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gp = fdiv <2 x double> %i.gn, %i.go          ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 1
  %i.gr = fadd nnan double %i.gq, 5.000000e-01
  %i.gs = extractelement <2 x double> %i.gp, i64 0 ; 2 uses
  %i.gt = fcmp olt double %i.gs, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gt, double 0.000000e+00, double %i.gs
  %i.gu = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gv = fmul double %i.gu, %i.gr
  %i.gw = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.gx = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) ; 3 uses
  %i.gy = load double, ptr %2, align 8, !tbaa !14
  %i.gz = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gx)
  %i.ha = sitofp i32 %i.gz to double
  %i.hb = fmul double %i.gy, %i.ha
  %i.hc = fptosi double %i.hb to i32
  %i.hd = load double, ptr %i.dn, align 8, !tbaa !14
  %i.he = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gx)
  %i.hf = sitofp i32 %i.he to double
  %i.hg = fmul double %i.hd, %i.hf
  %i.hh = fptosi double %i.hg to i32
  %i.hi = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i32 noundef %i.hc, i32 noundef %i.hh) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.hi, -16777216
  %i.hj = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hk = fadd double %i.hj, %i.gv                ; 3 uses
  %i.hl = trunc i40 %i.hi to i8
  %i.hm = uitofp i8 %i.hl to double
  %i.hn = fmul double %i.hk, %i.hm
  %i.ho = fptosi double %i.hn to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ho, i32 255)
  %i.hp = lshr i40 %i.hi, 8
  %i.hq = trunc i40 %i.hp to i8
  %i.hr = uitofp i8 %i.hq to double
  %i.hs = fmul double %i.hk, %i.hr
  %i.ht = fptosi double %i.hs to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.ht, i32 255)
  %i.hu = lshr i40 %i.hi, 16
  %i.hv = trunc i40 %i.hu to i8
  %i.hw = uitofp i8 %i.hv to double
  %i.hx = fmul double %i.hk, %i.hw
  %i.hy = fptosi double %i.hx to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hy, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hz = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hz to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.ia = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.ia to i40
  %.sroa.5.0.insert.insert = or disjoint i40 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.mask254 = and i32 %.sroa.speculated, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask254 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.sroa.2.0.insert.ext = zext i40 %.sroa.0.0.insert.insert to i48
  %.sroa.2.0.insert.shift = shl nuw i48 %.sroa.2.0.insert.ext, 8
  ret i48 %.sroa.2.0.insert.shift
}

declare void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind noalias writable sret(%struct.mat) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.mat, align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 8 uses
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.by, %.preheader ] ; 3 uses
  %i.a = icmp samesign ult i32 %.0612, 4
  %i.b = select i1 %i.a, i64 3, i64 2
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = icmp samesign ult i32 %.0612, 3
  %i.e = select i1 %i.d, i64 2, i64 1
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.g = icmp samesign ult i32 %.0612, 2
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %spec.select.i.1.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 2 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.p = fneg double %i.k                         ; 2 uses
  %i.q = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !14 ; 4 uses
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.s, <2 x double> zeroinitializer)
  %i.u = load <2 x double>, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.l, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.t) ; 4 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = extractelement <2 x double> %i.u, i64 0
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = extractelement <2 x double> %i.q, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> zeroinitializer)
  %i.ag = extractelement <2 x double> %i.u, i64 1
  %i.ah = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x double> %i.ah, double %i.n, i64 0 ; 2 uses
  %i.aj = fneg <2 x double> %i.x
  %i.ak = shufflevector <2 x double> %i.u, <2 x double> %i.aj, <2 x i32> <i32 3, i32 1>
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ak, <2 x double> %i.af) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.an, double %i.am) ; 2 uses
  %3 = trunc i64 %indvars.iv to i1
  %i.ap = fneg double %i.ao
  %i.aq = select i1 %3, double %i.ao, double %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store double %i.aq, ptr %i.ar, align 8, !tbaa !14
  %spec.select.i.i8.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = load double, ptr %spec.select.i.i8.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.at = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.au = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !14 ; 3 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.p, double 0.000000e+00)
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.as, double %i.av)
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.au, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.at, i64 1
  %i.ba = insertelement <2 x double> %i.x, double %i.aa, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bc = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.as, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.bd, <2 x double> %i.bb) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bh = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.bg, double %i.bf) ; 2 uses
  %4 = trunc i64 %indvars.iv to i1
  %i.bi = fneg double %i.bh
  %i.bj = select i1 %4, double %i.bi, double %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.bj, ptr %i.bk, align 16, !tbaa !14
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.au, double %i.y, double 0.000000e+00)
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ax, double %i.bl)
  %i.bn = fneg double %i.ag
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.at, double %i.bn, double 0.000000e+00)
  %i.bp = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.as, double %i.bo) ; 2 uses
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.bp, double %i.bm) ; 2 uses
  %5 = trunc i64 %indvars.iv to i1
  %i.br = fneg double %i.bq
  %i.bs = select i1 %5, double %i.bq, double %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.bs, ptr %i.bt, align 8, !tbaa !14
  %i.bu = fneg double %i.bg
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.au, double %i.an, double 0.000000e+00)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bu, double %i.bv)
  %i.bx = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bp, double %i.bw) ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  %.not13.i.3 = trunc i64 %indvars.iv to i1
  %6 = fneg double %i.bx
  %7 = select i1 %.not13.i.3, double %6, double %i.bx
  store double %7, ptr %i.j, align 16, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load double, ptr %spec.select.i11.i, align 8, !tbaa !14
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14
  %i.cc = load double, ptr %1, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = load <2 x double>, ptr %2, align 16, !tbaa !14 ; 3 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !14 ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bz, double 0.000000e+00)
  %i.cp = extractelement <2 x double> %i.cm, i64 0
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.ca, double %i.co)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cb, double %i.cq)
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.cl, double %i.cc, double %i.cr)
  %i.ct = load <2 x double>, ptr %i.cd, align 16, !tbaa !14, !noalias !134
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cw = fdiv <2 x double> %i.ct, %i.cv
  store <2 x double> %i.cw, ptr %i.ce, align 8, !tbaa !14, !alias.scope !134
  %i.cx = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !14, !noalias !134
  %i.cy = fdiv <2 x double> %i.cx, %i.cv
  store <2 x double> %i.cy, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !134
  %i.cz = load <2 x double>, ptr %i.cf, align 16, !tbaa !14, !noalias !134
  %i.da = fdiv <2 x double> %i.cz, %i.cv
  store <2 x double> %i.da, ptr %i.cg, align 8, !tbaa !14, !alias.scope !134
  %i.db = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !14, !noalias !134
  %i.dc = fdiv <2 x double> %i.db, %i.cv
  store <2 x double> %i.dc, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !14, !alias.scope !134
  %i.dd = load <2 x double>, ptr %i.ch, align 16, !tbaa !14, !noalias !134
  %i.de = fdiv <2 x double> %i.dd, %i.cv
  store <2 x double> %i.de, ptr %i.ci, align 8, !tbaa !14, !alias.scope !134
  %i.df = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !14, !noalias !134
  %i.dg = fdiv <2 x double> %i.df, %i.cv
  store <2 x double> %i.dg, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !14, !alias.scope !134
  %i.dh = fdiv <2 x double> %i.cm, %i.cv
  %i.di = fdiv <2 x double> %i.cj, %i.cv
  store <2 x double> %i.di, ptr %0, align 8, !tbaa !14, !alias.scope !134
  store <2 x double> %i.dh, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !14, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZNK5Model6normalEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK5Model4vertEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS5Model", !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"_ZTS7IShader"}
!18 = !{!"_ZTS3vecILi4EE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!19 = !{!"_ZTS11PhongShader", !17, i64 0, !15, i64 8, !18, i64 16, !6, i64 48, !6, i64 96, !6, i64 192}
!20 = !{!19, !15, i64 8}
!21 = !{}
!22 = !{i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!24 = !{!23, !11, i64 0}
!25 = !{!23, !11, i64 16}
!26 = distinct !{null, null, null, null}
!27 = distinct !{!27, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!28 = distinct !{!28, !27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, i1 false, !"_ZN11PhongShader6vertexEii"}
!31 = distinct !{!31, !30, !"_ZN11PhongShader6vertexEii: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!33 = distinct !{!33, !32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!35 = distinct !{!35, !34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!36 = distinct !{!36, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!37 = distinct !{!37, !36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!38 = distinct !{!38, i1 false, !"_ZN11PhongShader6vertexEii"}
!39 = distinct !{!39, !38, !"_ZN11PhongShader6vertexEii: argument 0"}
!40 = distinct !{!40, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!43 = distinct !{!43, !42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!44 = distinct !{!44, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!45 = distinct !{!45, !44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZN11PhongShader6vertexEii"}
!47 = distinct !{!47, !46, !"_ZN11PhongShader6vertexEii: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!49 = distinct !{!49, !48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!50 = distinct !{!50, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!51 = distinct !{!51, !50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!53 = distinct !{!53, !52, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!54 = distinct !{!54, !16}
!55 = !{!11, !11, i64 0}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"long", !6, i64 0}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !58, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt8ios_base", !58, i64 8, !58, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !6, i64 64, !7, i64 192, !63, i64 200, !65, i64 208}
!67 = !{!66, !60, i64 32}
!68 = !{!"p1 _ZTSSo", !10, i64 0}
!69 = !{!"bool", !6, i64 0}
!70 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!71 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!72 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!73 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!74 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !66, i64 0, !68, i64 216, !6, i64 224, !69, i64 225, !70, i64 232, !71, i64 240, !72, i64 248, !73, i64 256}
!75 = !{!74, !71, i64 240}
!76 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!77 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!78 = !{!"p1 short", !10, i64 0}
!79 = !{!"_ZTSSt5ctypeIcE", !76, i64 0, !77, i64 16, !69, i64 24, !12, i64 32, !12, i64 40, !78, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!80 = !{!79, !6, i64 56}
!81 = !{!6, !6, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!83 = !{!82, !11, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !58, i64 8, !6, i64 16}
!85 = !{!84, !58, i64 8}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!87 = !{!84, !11, i64 0}
!88 = !{!15, !15, i64 0}
!89 = !{!28}
!90 = !{!31}
!91 = !{!33, !31}
!92 = !{!35, !31}
!93 = !{!37}
end_hunk_0
