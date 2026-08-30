Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
begin_hunk_0_@_ZNK11PhongShader8fragmentE3vecILi3EE:bb.a
  %i.ct = fmul <2 x double> %i.bp, %i.cs
  %i.cu = fadd <2 x double> %i.cr, %i.ct
  %i.cv = load <2 x double>, ptr %i.bg, align 8, !tbaa !41
  %i.cw = fmul <2 x double> %i.bu, %i.cv
  %i.cx = fadd <2 x double> %i.cu, %i.cw          ; 3 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %i.cp)
  %i.da = extractelement <2 x double> %i.cx, i64 0 ; 2 uses
  %i.db = tail call noundef double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.cz)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.db)
  %i.dc = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fdiv <2 x double> %i.bw, %i.dd
  %i.df = fdiv <2 x double> %i.cx, %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dg = fmul double %i.f, %i.bc
  %i.dh = fmul double %i.h, %i.bc
  %i.di = fmul double %.sroa.3.0.copyload.i, %i.bf
  %i.dj = fmul double %.sroa.0.0.copyload.i, %i.bf
  %i.dk = fadd double %i.dg, %i.di
  %i.dl = fadd double %i.dh, %i.dj
  %i.dm = fmul double %.sroa.3.0.copyload.i17, %i.bi
  %i.dn = fmul double %.sroa.0.0.copyload.i15, %i.bi
  %i.do = fadd double %i.dk, %i.dm
  %i.dp = fadd double %i.dl, %i.dn
  store double %i.dp, ptr %2, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.do, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !59, !nonnull !63, !align !64
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dt = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !41, !noalias !128
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = load <2 x double>, ptr %spec.select.i11.1.i.i, align 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load <2 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.dw = load <2 x double>, ptr %3, align 16
  %i.dx = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.ea = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.ea, <2 x double> %i.dz)
  %i.ec = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.ec, <2 x double> %i.eb)
  %i.ee = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ee, <2 x double> %i.ed) ; 3 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 1 ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double 0.000000e+00)
  %i.ei = extractelement <2 x double> %i.ef, i64 0 ; 2 uses
  %i.ej = call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.eh)
  %i.ek = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.ea, <2 x double> %i.ek)
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.ec, <2 x double> %i.el)
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ee, <2 x double> %i.em) ; 3 uses
  %i.eo = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.ej)
  %i.eq = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.er = call noundef double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.ep)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.er)
  %i.es = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = fdiv <2 x double> %i.ef, %i.et          ; 2 uses
  %i.ev = fdiv <2 x double> %i.en, %i.et          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ex = load double, ptr %spec.select.i11.i, align 8, !tbaa !41 ; 2 uses
  %i.ey = extractelement <2 x double> %i.eu, i64 1 ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ex, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !41 ; 2 uses
  %i.fb = extractelement <2 x double> %i.eu, i64 0 ; 2 uses
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double %i.ez)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !41 ; 2 uses
  %i.fe = extractelement <2 x double> %i.ev, i64 1 ; 2 uses
  %i.ff = call double @llvm.fmuladd.f64(double %i.fe, double %i.fd, double %i.fc)
  %i.fg = load double, ptr %i.ew, align 8, !tbaa !41 ; 2 uses
  %i.fh = extractelement <2 x double> %i.ev, i64 0 ; 2 uses
  %i.fi = call noundef double @llvm.fmuladd.f64(double %i.fh, double %i.fg, double %i.ff) ; 6 uses
  %i.fj = fmul double %i.ey, %i.fi
  %i.fk = fmul double %i.fb, %i.fi
  %i.fl = fmul double %i.fe, %i.fi
  %i.fm = fmul double %i.fh, %i.fi
  %i.fn = fmul double %i.fj, 2.000000e+00
  %i.fo = fmul double %i.fk, 2.000000e+00
  %i.fp = fmul double %i.fl, 2.000000e+00
  %i.fq = fmul double %i.fm, 2.000000e+00
  %i.fr = fsub double %i.fn, %i.ex                ; 2 uses
  %i.fs = fsub double %i.fp, %i.fd                ; 2 uses
  %i.ft = fsub double %i.fq, %i.fg                ; 2 uses
  %i.fu = call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double 0.000000e+00)
  %i.fv = fcmp ogt double %i.fi, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.fv, double %i.fi, double 0.000000e+00
  %i.fw = load ptr, ptr %i.dr, align 8, !tbaa !59, !nonnull !63, !align !64
  %i.fx = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fw) ; 3 uses
  %i.fy = load double, ptr %2, align 8, !tbaa !41
  %i.fz = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fptosi double %i.gb to i32
  %i.gd = load double, ptr %i.dq, align 8, !tbaa !41
  %i.ge = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.gf = sitofp i32 %i.ge to double
  %i.gg = fmul double %i.gd, %i.gf
  %i.gh = fptosi double %i.gg to i32
  %i.gi = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i32 noundef %i.gc, i32 noundef %i.gh)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gi to i8
  %i.gj = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.gk = fmul nnan double %i.gj, 2.000000e+00
  %i.gl = fsub double %i.fo, %i.fa                ; 3 uses
  %i.gm = call double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.fu)
  %i.gn = call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.gm)
  %i.go = call noundef double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.gn)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.go)
  %i.gp = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gk, i64 1
  %i.gr = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gs = fdiv <2 x double> %i.gq, %i.gr          ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 1
  %i.gu = fadd nnan double %i.gt, 5.000000e-01
  %i.gv = extractelement <2 x double> %i.gs, i64 0 ; 2 uses
  %i.gw = fcmp olt double %i.gv, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gw, double 0.000000e+00, double %i.gv
  %i.gx = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gy = fmul double %i.gx, %i.gu
  %i.gz = load ptr, ptr %i.dr, align 8, !tbaa !59, !nonnull !63, !align !64
  %i.ha = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gz) ; 3 uses
  %i.hb = load double, ptr %2, align 8, !tbaa !41
  %i.hc = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ha)
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fmul double %i.hb, %i.hd
  %i.hf = fptosi double %i.he to i32
  %i.hg = load double, ptr %i.dq, align 8, !tbaa !41
  %i.hh = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ha)
  %i.hi = sitofp i32 %i.hh to double
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fptosi double %i.hj to i32
  %i.hl = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i32 noundef %i.hf, i32 noundef %i.hk) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.hl, -16777216
  %i.hm = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hn = fadd double %i.hm, %i.gy                ; 3 uses
  %i.ho = trunc i40 %i.hl to i8
  %i.hp = uitofp i8 %i.ho to double
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = fptosi double %i.hq to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hr, i32 255)
  %i.hs = lshr i40 %i.hl, 8
  %i.ht = trunc i40 %i.hs to i8
  %i.hu = uitofp i8 %i.ht to double
  %i.hv = fmul double %i.hn, %i.hu
  %i.hw = fptosi double %i.hv to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.hw, i32 255)
  %i.hx = lshr i40 %i.hl, 16
  %i.hy = trunc i40 %i.hx to i8
  %i.hz = uitofp i8 %i.hy to double
  %i.ia = fmul double %i.hn, %i.hz
  %i.ib = fptosi double %i.ia to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.ib, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.ic = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.ic to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.id = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.id to i40
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 7 uses
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.ch, %.preheader ] ; 3 uses
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
  %spec.select.i.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %spec.select.i.1.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load double, ptr %i.c, align 8, !tbaa !41
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !41 ; 3 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !41 ; 3 uses
  %i.n = load double, ptr %i.i, align 8, !tbaa !41 ; 3 uses
  %i.o = fneg double %i.k                         ; 2 uses
  %i.p = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !41 ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> zeroinitializer) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = extractelement <2 x double> %i.s, i64 0
  %i.v = extractelement <2 x double> %i.p, i64 0
  %i.w = and i64 %indvars.iv, 1
  %.not13.i.not = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.y = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !41 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %spec.select.i.1.i9, align 8, !tbaa !41 ; 2 uses
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.z, double %i.u) ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.y, double %i.o, double 0.000000e+00)
  %i.ac = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.y, i64 1
  %i.ae = and i64 %indvars.iv, 1
  %.not13.i.1 = icmp eq i64 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = and i64 %indvars.iv, 1
  %.not13.i.2.not = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !41 ; 2 uses
  %i.aj = load double, ptr %spec.select.i.220.i, align 8, !tbaa !41 ; 3 uses
  %i.ak = insertelement <2 x double> %i.p, double %i.aj, i64 0
  %i.al = load <2 x double>, ptr %spec.select.i.i8, align 8, !tbaa !41 ; 4 uses
  %i.am = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.an = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.am, double %i.ab)
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.z, i64 1
  %i.aq = fneg <2 x double> %i.ap                 ; 3 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.aa, i64 0
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ar, <2 x double> zeroinitializer) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aa, double 0.000000e+00)
  %i.av = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.au, i64 0
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.aq, <2 x double> %i.av) ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.am, double %i.ax) ; 2 uses
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.ay, double %i.az) ; 2 uses
  %i.bb = fneg double %i.ba
  %i.bc = select i1 %.not13.i.1, double %i.ba, double %i.bb
  store double %i.bc, ptr %i.af, align 16, !tbaa !41
  %i.bd = extractelement <2 x double> %i.aq, i64 0
  %i.be = extractelement <2 x double> %i.al, i64 0
  %i.bf = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.be, double %i.t) ; 2 uses
  %i.bg = fneg double %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bg, double %i.at)
  %i.bi = insertelement <2 x double> poison, double %i.ai, i64 0 ; 2 uses
  %i.bj = insertelement <2 x double> %i.bi, double %i.y, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bl = fneg <2 x double> %i.al
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bm, <2 x double> zeroinitializer) ; 2 uses
  %i.bo = shufflevector <2 x double> %i.as, <2 x double> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.al, <2 x double> %i.bo) ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bq, double %i.bh) ; 2 uses
  %i.bs = fneg double %i.br
  %i.bt = select i1 %.not13.i.not, double %i.bs, double %i.br
  store double %i.bt, ptr %i.x, align 8, !tbaa !41
  %i.bu = extractelement <2 x double> %i.bn, i64 0
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.bd, double %i.bu)
  %i.bw = insertelement <2 x double> %i.bi, double %i.n, i64 1
  %i.bx = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bv, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bp, <2 x double> %i.bx) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.ca = fneg double %i.bz
  %i.cb = select i1 %.not13.i.2.not, double %i.ca, double %i.bz
  store double %i.cb, ptr %i.ah, align 8, !tbaa !41
  %i.cc = fneg double %i.ay
  %i.cd = extractelement <2 x double> %i.by, i64 0
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.cc, double %i.cd)
  %i.cf = extractelement <2 x double> %i.bp, i64 1
  %i.cg = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.cf, double %i.ce)
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ci = and i32 %i.ch, 1
  %.not13.i.3 = icmp eq i32 %i.ci, 0
  %i.cj = select i1 %.not13.i.3, i32 1, i32 -1
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fmul double %i.cg, %i.ck
  store double %i.cl, ptr %i.j, align 16, !tbaa !41
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load double, ptr %spec.select.i11.i, align 8, !tbaa !41
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !41
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !41
  %i.cp = load double, ptr %1, align 8, !tbaa !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load <2 x double>, ptr %2, align 16, !tbaa !41 ; 3 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !41 ; 3 uses
  %i.da = extractelement <2 x double> %i.cz, i64 1
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cm, double 0.000000e+00)
  %i.dc = extractelement <2 x double> %i.cz, i64 0
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cn, double %i.db)
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.co, double %i.dd)
  %i.df = tail call noundef double @llvm.fmuladd.f64(double %i.cy, double %i.cp, double %i.de)
  %i.dg = load <2 x double>, ptr %i.cq, align 16, !tbaa !41, !noalias !132
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.dj = fdiv <2 x double> %i.dg, %i.di
  store <2 x double> %i.dj, ptr %i.cr, align 8, !tbaa !41, !alias.scope !132
  %i.dk = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !41, !noalias !132
  %i.dl = fdiv <2 x double> %i.dk, %i.di
  store <2 x double> %i.dl, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !132
  %i.dm = load <2 x double>, ptr %i.cs, align 16, !tbaa !41, !noalias !132
  %i.dn = fdiv <2 x double> %i.dm, %i.di
  store <2 x double> %i.dn, ptr %i.ct, align 8, !tbaa !41, !alias.scope !132
  %i.do = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !41, !noalias !132
  %i.dp = fdiv <2 x double> %i.do, %i.di
  store <2 x double> %i.dp, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !41, !alias.scope !132
  %i.dq = load <2 x double>, ptr %i.cu, align 16, !tbaa !41, !noalias !132
  %i.dr = fdiv <2 x double> %i.dq, %i.di
  store <2 x double> %i.dr, ptr %i.cv, align 8, !tbaa !41, !alias.scope !132
  %i.ds = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !41, !noalias !132
  %i.dt = fdiv <2 x double> %i.ds, %i.di
  store <2 x double> %i.dt, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !41, !alias.scope !132
  %i.du = fdiv <2 x double> %i.cz, %i.di
  %i.dv = fdiv <2 x double> %i.cw, %i.di
  store <2 x double> %i.dv, ptr %0, align 8, !tbaa !41, !alias.scope !132
  store <2 x double> %i.du, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !41, !alias.scope !132
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
end_hunk_0
