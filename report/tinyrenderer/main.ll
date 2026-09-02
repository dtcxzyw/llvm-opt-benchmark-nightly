Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK11PhongShader8fragmentE3vecILi3EE:bb.a
  %i.cp = load <2 x double>, ptr %i.be, align 8, !tbaa !14
  %i.cq = fmul <2 x double> %i.bi, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.cs, %i.co
  %i.cu = fadd <2 x double> %i.cq, %i.ct
  %i.cv = fmul <2 x double> %i.bq, %i.cp
  %i.cw = fadd <2 x double> %i.cu, %i.cv          ; 3 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1 ; 2 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cm)
  %i.cz = extractelement <2 x double> %i.cw, i64 0 ; 2 uses
  %i.da = tail call noundef double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.cy)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.da)
  %i.db = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fdiv <2 x double> %i.bt, %i.dc
  %i.de = fdiv <2 x double> %i.cw, %i.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.df = fmul double %i.f, %i.bk
  %i.dg = fmul double %i.h, %i.bk
  %i.dh = fmul double %.sroa.3.0.copyload.i, %i.bh
  %i.di = fmul double %.sroa.0.0.copyload.i, %i.bh
  %i.dj = fadd double %i.df, %i.dh
  %i.dk = fadd double %i.dg, %i.di
  %i.dl = fmul double %.sroa.3.0.copyload.i17, %i.bs
  %i.dm = fmul double %.sroa.0.0.copyload.i15, %i.bs
  %i.dn = fadd double %i.dj, %i.dl
  %i.do = fadd double %i.dk, %i.dm
  store double %i.do, ptr %2, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.dn, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ds = load <4 x double>, ptr %3, align 8, !tbaa !14, !noalias !130 ; 4 uses
  %i.dt = shufflevector <4 x double> %i.ds, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.dv = shufflevector <4 x double> %i.ds, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.dv, <2 x double> %i.du)
  %i.dx = shufflevector <4 x double> %i.ds, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.dx, <2 x double> %i.dw)
  %i.dz = shufflevector <4 x double> %i.ds, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.dz, <2 x double> %i.dy) ; 3 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 1 ; 2 uses
  %i.ec = call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double 0.000000e+00)
  %i.ed = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.ee = call double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.ec)
  %i.ef = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.dv, <2 x double> %i.ef)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.dx, <2 x double> %i.eg)
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.dz, <2 x double> %i.eh) ; 3 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1 ; 2 uses
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.ee)
  %i.el = extractelement <2 x double> %i.ei, i64 0 ; 2 uses
  %i.em = call noundef double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.ek)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.em)
  %i.en = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fdiv <2 x double> %i.ea, %i.eo          ; 2 uses
  %i.eq = fdiv <2 x double> %i.ei, %i.eo          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.es = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.et = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.eu = call double @llvm.fmuladd.f64(double %i.et, double %i.es, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ev = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.ew = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.ex = call double @llvm.fmuladd.f64(double %i.ew, double %i.ev, double %i.eu)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.ez = extractelement <2 x double> %i.eq, i64 1 ; 2 uses
  %i.fa = call double @llvm.fmuladd.f64(double %i.ez, double %i.ey, double %i.ex)
  %i.fb = load double, ptr %i.er, align 8, !tbaa !14 ; 2 uses
  %i.fc = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.fd = call noundef double @llvm.fmuladd.f64(double %i.fc, double %i.fb, double %i.fa) ; 6 uses
  %i.fe = fmul double %i.et, %i.fd
  %i.ff = fmul double %i.ew, %i.fd
  %i.fg = fmul double %i.ez, %i.fd
  %i.fh = fmul double %i.fc, %i.fd
  %i.fi = fmul double %i.fe, 2.000000e+00
  %i.fj = fmul double %i.ff, 2.000000e+00
  %i.fk = fmul double %i.fg, 2.000000e+00
  %i.fl = fmul double %i.fh, 2.000000e+00
  %i.fm = fsub double %i.fi, %i.es                ; 2 uses
  %i.fn = fsub double %i.fk, %i.ey                ; 2 uses
  %i.fo = fsub double %i.fl, %i.fb                ; 2 uses
  %i.fp = call double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double 0.000000e+00)
  %i.fq = fcmp ogt double %i.fd, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.fq, double %i.fd, double 0.000000e+00
  %i.fr = load ptr, ptr %i.dq, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fs = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fr) ; 3 uses
  %i.ft = load double, ptr %2, align 8, !tbaa !14
  %i.fu = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fs)
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = fptosi double %i.fw to i32
  %i.fy = load double, ptr %i.dp, align 8, !tbaa !14
  %i.fz = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fs)
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fptosi double %i.gb to i32
  %i.gd = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, i32 noundef %i.fx, i32 noundef %i.gc)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gd to i8
  %i.ge = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.gf = fmul nnan double %i.ge, 2.000000e+00
  %i.gg = fsub double %i.fj, %i.ev                ; 3 uses
  %i.gh = call double @llvm.fmuladd.f64(double %i.gg, double %i.gg, double %i.fp)
  %i.gi = call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.gh)
  %i.gj = call noundef double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.gi)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.gj)
  %i.gk = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gf, i64 1
  %i.gm = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gn = fdiv <2 x double> %i.gl, %i.gm          ; 2 uses
  %i.go = extractelement <2 x double> %i.gn, i64 1
  %i.gp = fadd nnan double %i.go, 5.000000e-01
  %i.gq = extractelement <2 x double> %i.gn, i64 0 ; 2 uses
  %i.gr = fcmp olt double %i.gq, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gr, double 0.000000e+00, double %i.gq
  %i.gs = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gt = fmul double %i.gs, %i.gp
  %i.gu = load ptr, ptr %i.dq, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.gv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gu) ; 3 uses
  %i.gw = load double, ptr %2, align 8, !tbaa !14
  %i.gx = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gv)
  %i.gy = sitofp i32 %i.gx to double
  %i.gz = fmul double %i.gw, %i.gy
  %i.ha = fptosi double %i.gz to i32
  %i.hb = load double, ptr %i.dp, align 8, !tbaa !14
  %i.hc = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gv)
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fmul double %i.hb, %i.hd
  %i.hf = fptosi double %i.he to i32
  %i.hg = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, i32 noundef %i.ha, i32 noundef %i.hf) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.hg, -16777216
  %i.hh = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hi = fadd double %i.hh, %i.gt                ; 3 uses
  %i.hj = trunc i40 %i.hg to i8
  %i.hk = uitofp i8 %i.hj to double
  %i.hl = fmul double %i.hi, %i.hk
  %i.hm = fptosi double %i.hl to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hm, i32 255)
  %i.hn = lshr i40 %i.hg, 8
  %i.ho = trunc i40 %i.hn to i8
  %i.hp = uitofp i8 %i.ho to double
  %i.hq = fmul double %i.hi, %i.hp
  %i.hr = fptosi double %i.hq to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.hr, i32 255)
  %i.hs = lshr i40 %i.hg, 16
  %i.ht = trunc i40 %i.hs to i8
  %i.hu = uitofp i8 %i.ht to double
  %i.hv = fmul double %i.hi, %i.hu
  %i.hw = fptosi double %i.hv to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hw, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hx = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hx to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.hy = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.hy to i40
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
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.br, %.preheader ] ; 3 uses
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
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %3 = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 3 uses
  %i.n = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.o = fneg double %i.k                         ; 2 uses
  %i.p = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !14 ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> zeroinitializer) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = extractelement <2 x double> %i.s, i64 0
  %4 = insertelement <2 x double> %i.p, double %3, i64 0
  %5 = extractelement <2 x double> %i.p, i64 0
  %6 = trunc i64 %indvars.iv to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.x = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !14 ; 2 uses
  %7 = load double, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 2 uses
  %i.y = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %7, double %i.u) ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.w, double %i.o, double 0.000000e+00)
  %9 = tail call double @llvm.fmuladd.f64(double %i.x, double %i.y, double 0.000000e+00)
  %10 = insertelement <2 x double> poison, double %i.m, i64 0
  %11 = insertelement <2 x double> %10, double %i.w, i64 1
  %12 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %9, i64 0
  %13 = trunc i64 %indvars.iv to i1
  %14 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %15 = insertelement <2 x double> poison, double %i.x, i64 0 ; 2 uses
  %16 = insertelement <2 x double> %15, double %i.w, i64 1
  %17 = trunc i64 %indvars.iv to i1
  %18 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load <2 x double>, ptr %spec.select.i.i8, align 8, !tbaa !14 ; 4 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.aa, double %8)
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %7, i64 1
  %i.ae = fneg <2 x double> %i.ad                 ; 3 uses
  %i.af = insertelement <2 x double> %i.ae, double %i.y, i64 0
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.af, <2 x double> zeroinitializer) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.ae, <2 x double> %12) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 1
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %5, double %i.aa, double %i.aj) ; 2 uses
  %i.al = extractelement <2 x double> %i.ai, i64 0
  %i.am = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.ak, double %i.al) ; 2 uses
  %i.an = fneg double %i.am
  %i.ao = select i1 %13, double %i.an, double %i.am
  store double %i.ao, ptr %14, align 16, !tbaa !14
  %i.ap = extractelement <2 x double> %i.ae, i64 0
  %i.aq = extractelement <2 x double> %i.z, i64 0
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.aq, double %i.t) ; 2 uses
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.m, double %i.as, double %i.ah)
  %i.au = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.av = fneg <2 x double> %i.z
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %i.aw, <2 x double> zeroinitializer) ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ag, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.z, <2 x double> %i.ay) ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.ba, double %i.at) ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = select i1 %6, double %i.bb, double %i.bc
  store double %i.bd, ptr %i.v, align 8, !tbaa !14
  %i.be = extractelement <2 x double> %i.ax, i64 0
  %i.bf = tail call double @llvm.fmuladd.f64(double %3, double %i.ap, double %i.be)
  %i.bg = insertelement <2 x double> %15, double %i.n, i64 1
  %i.bh = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bf, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.az, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.bk = fneg double %i.bj
  %i.bl = select i1 %17, double %i.bj, double %i.bk
  store double %i.bl, ptr %18, align 8, !tbaa !14
  %i.bm = fneg double %i.ak
  %i.bn = extractelement <2 x double> %i.bi, i64 0
  %i.bo = tail call double @llvm.fmuladd.f64(double %3, double %i.bm, double %i.bn)
  %i.bp = extractelement <2 x double> %i.az, i64 1
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.bp, double %i.bo) ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %19 = trunc i64 %indvars.iv to i1
  %20 = fneg double %i.bq
  %21 = select i1 %19, double %20, double %i.bq
  store double %21, ptr %i.j, align 16, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load double, ptr %spec.select.i11.i, align 8, !tbaa !14
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14
  %i.bv = load double, ptr %1, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load <2 x double>, ptr %2, align 16, !tbaa !14 ; 3 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !14 ; 3 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 1
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.bs, double 0.000000e+00)
  %i.ci = extractelement <2 x double> %i.cf, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.bt, double %i.ch)
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bu, double %i.cj)
  %i.cl = tail call noundef double @llvm.fmuladd.f64(double %i.ce, double %i.bv, double %i.ck)
  %i.cm = load <2 x double>, ptr %i.bw, align 16, !tbaa !14, !noalias !134
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cp = fdiv <2 x double> %i.cm, %i.co
  store <2 x double> %i.cp, ptr %i.bx, align 8, !tbaa !14, !alias.scope !134
  %i.cq = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !14, !noalias !134
  %i.cr = fdiv <2 x double> %i.cq, %i.co
  store <2 x double> %i.cr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !134
  %i.cs = load <2 x double>, ptr %i.by, align 16, !tbaa !14, !noalias !134
  %i.ct = fdiv <2 x double> %i.cs, %i.co
  store <2 x double> %i.ct, ptr %i.bz, align 8, !tbaa !14, !alias.scope !134
  %i.cu = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !14, !noalias !134
  %i.cv = fdiv <2 x double> %i.cu, %i.co
  store <2 x double> %i.cv, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !14, !alias.scope !134
  %i.cw = load <2 x double>, ptr %i.ca, align 16, !tbaa !14, !noalias !134
  %i.cx = fdiv <2 x double> %i.cw, %i.co
  store <2 x double> %i.cx, ptr %i.cb, align 8, !tbaa !14, !alias.scope !134
  %i.cy = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !14, !noalias !134
  %i.cz = fdiv <2 x double> %i.cy, %i.co
  store <2 x double> %i.cz, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !14, !alias.scope !134
  %i.da = fdiv <2 x double> %i.cf, %i.co
  %i.db = fdiv <2 x double> %i.cc, %i.co
  store <2 x double> %i.db, ptr %0, align 8, !tbaa !14, !alias.scope !134
  store <2 x double> %i.da, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !14, !alias.scope !134
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
!27 = distinct !{!27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!28 = distinct !{!28, !27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !"_ZN11PhongShader6vertexEii"}
!31 = distinct !{!31, !30, !"_ZN11PhongShader6vertexEii: argument 0"}
!32 = distinct !{!32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!33 = distinct !{!33, !32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!34 = distinct !{!34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!35 = distinct !{!35, !34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!36 = distinct !{!36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!37 = distinct !{!37, !36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!38 = distinct !{!38, !"_ZN11PhongShader6vertexEii"}
!39 = distinct !{!39, !38, !"_ZN11PhongShader6vertexEii: argument 0"}
!40 = distinct !{!40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = distinct !{!42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!43 = distinct !{!43, !42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!44 = distinct !{!44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!45 = distinct !{!45, !44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!46 = distinct !{!46, !"_ZN11PhongShader6vertexEii"}
!47 = distinct !{!47, !46, !"_ZN11PhongShader6vertexEii: argument 0"}
!48 = distinct !{!48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!49 = distinct !{!49, !48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!50 = distinct !{!50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!51 = distinct !{!51, !50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!52 = distinct !{!52, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
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
