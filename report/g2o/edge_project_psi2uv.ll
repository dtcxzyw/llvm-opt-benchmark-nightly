Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_project_psi2uv?download=true
inline.NumInlined: 6529
inline.NumDeleted: 3731
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3g2o17EdgeProjectPSI2UV12computeErrorEv:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !74, !noalias !100 ; 4 uses
  %i.ae = load double, ptr %i.o, align 16, !tbaa !74, !noalias !100 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %i.ag = load double, ptr %i.af, align 8, !tbaa !74, !noalias !111 ; 2 uses
  %i.ah = shufflevector <1 x double> %.sroa.022.sroa.0.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = shufflevector <1 x double> %.sroa.022.sroa.4.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = shufflevector <1 x double> %.sroa.022.sroa.5.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = shufflevector <1 x double> %.sroa.022.sroa.6.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = fmul <2 x double> %i.ak, %bc.i
  %i.am = fmul <2 x double> %i.ai, %bc7.i
  %i.an = fadd <2 x double> %i.am, %i.al
  %i.ao = fmul <2 x double> %i.aj, %bc.i
  %i.ap = fmul <2 x double> %i.ah, %bc7.i
  %i.aq = fsub <2 x double> %i.ao, %i.ap
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.an, <2 x double> %i.ar) ; 3 uses
  %i.at = fmul <2 x double> %i.ak, %bc7.i
  %i.au = fmul <2 x double> %i.ai, %bc.i
  %i.av = fsub <2 x double> %i.at, %i.au
  %i.aw = fmul <2 x double> %i.aj, %bc7.i
  %i.ax = fmul <2 x double> %i.ah, %bc.i
  %i.ay = fadd <2 x double> %i.ax, %i.aw
  %i.az = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.az, <2 x double> %i.ay) ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = extractelement <2 x double> %i.ba, i64 0
  %i.bd = fcmp olt double %i.bc, 0.000000e+00     ; 3 uses
  %i.be = shufflevector <2 x double> %i.as, <2 x double> %i.ba, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bf = fneg <2 x double> %i.as                 ; 2 uses
  %i.bg = fneg <2 x double> %i.bb                 ; 2 uses
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = select i1 %i.bd, <2 x double> %i.bg, <2 x double> %i.bb ; 3 uses
  %i.bj = select i1 %i.bd, <2 x double> %i.bf, <2 x double> %i.as ; 3 uses
  %i.bk = select i1 %i.bd, <4 x double> %i.bh, <4 x double> %i.be
  %i.bl = fmul <2 x double> %i.bj, %i.bj
  %i.bm = fmul <2 x double> %i.bi, %i.bi
  %i.bn = fadd <2 x double> %i.bm, %i.bl          ; 2 uses
  %shift = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bn, %shift
  %i.bo = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bo)
  %i.bq = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.br = shufflevector <2 x double> %i.bj, <2 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> poison, <4 x i32> zeroinitializer
  %i.bt = fdiv <4 x double> %i.br, %i.bs
  %i.bu = select i1 %i.bp, <4 x double> %i.bt, <4 x double> %i.bk ; 5 uses
  %i.bv = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %i.bx = fneg double %i.y
  %i.by = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %i.bz = fneg <2 x double> %i.w                  ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.ca = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.cb)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.cc, i64 0
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.cd = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.ce = fmul double %i.y, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.by, double %.sroa.0.0.vec.extract.i.i.i, double %i.ce)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.cf, i64 1 ; 2 uses
  %i.cg = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ch = fmul <2 x double> %i.bv, %i.cg
  %i.ci = fsub <2 x double> %i.ch, %i.w
  %i.cj = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.ck = fmul double %i.bw, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cd, double %.sroa.0.8.vec.extract.i.i.i, double %i.ck) ; 2 uses
  %i.cm = fadd double %i.cl, %i.cl                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.cn = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.co = fmul double %i.by, %i.cn
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.cm, double %i.co)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.cp, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.cq = fneg double %i.cm
  %i.cr = fmul double %i.cd, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.by, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.cr)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.cs, i64 1
  %i.ct = fadd <2 x double> %i.ci, %.sroa.0.8.vec.insert.i.i.i.i ; 3 uses
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.cu = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = extractelement <2 x double> %bc7.i, i64 1
  %i.cw = fmul double %i.cv, %i.cm
  %i.cx = fsub double %i.cw, %i.y
  %i.cy = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.cz = fmul double %i.bw, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cd, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.cz)
  %i.db = fadd double %i.cx, %i.da                ; 3 uses
  %.sroa.620.40.vec.extract = extractelement <2 x double> %i.ct, i64 1 ; 2 uses
  %i.dc = fneg double %.sroa.620.40.vec.extract
  %i.dd = fmul double %i.ad, %i.dc
  %i.de = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.db, double %i.dd)
  %.sroa.027.0.vec.insert.i.i.i.i5 = insertelement <2 x double> poison, double %i.de, i64 0
  %.sroa.620.32.vec.extract = extractelement <2 x double> %i.ct, i64 0 ; 2 uses
  %i.df = fneg double %i.db
  %i.dg = fmul double %i.ae, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.ad, double %.sroa.620.32.vec.extract, double %i.dg)
  %.sroa.027.8.vec.insert.i.i.i.i6 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i5, double %i.dh, i64 1 ; 2 uses
  %i.di = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i6, %.sroa.027.8.vec.insert.i.i.i.i6 ; 3 uses
  %i.dj = fmul <2 x double> %i.cu, %i.di
  %i.dk = fadd <2 x double> %i.ct, %i.dj
  %i.dl = fneg double %.sroa.620.32.vec.extract
  %i.dm = fmul double %i.ab, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ae, double %.sroa.620.40.vec.extract, double %i.dm) ; 2 uses
  %i.do = fadd double %i.dn, %i.dn                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i7 = extractelement <2 x double> %i.di, i64 1 ; 2 uses
  %i.dp = fneg double %.sroa.027.8.vec.extract.i.i.i.i7
  %i.dq = fmul double %i.ad, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.do, double %i.dq)
  %.sroa.0.0.vec.insert.i.i.i.i9 = insertelement <2 x double> poison, double %i.dr, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i8 = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.ds = fneg double %i.do
  %i.dt = fmul double %i.ae, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.ad, double %.sroa.027.0.vec.extract.i.i.i.i8, double %i.dt)
  %.sroa.0.8.vec.insert.i.i.i.i10 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i9, double %i.du, i64 1
  %i.dv = fadd <2 x double> %i.dk, %.sroa.0.8.vec.insert.i.i.i.i10
  %i.dw = fadd <2 x double> %.sroa.022.sroa.7.32.copyload, %i.dv
  %i.dx = fmul double %i.ag, %i.do
  %i.dy = fadd double %i.db, %i.dx
  %i.dz = fneg double %.sroa.027.0.vec.extract.i.i.i.i8
  %i.ea = fmul double %i.ab, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ae, double %.sroa.027.8.vec.extract.i.i.i.i7, double %i.ea)
  %i.ec = fadd double %i.dy, %i.eb
  %i.ed = fadd double %.sroa.21.32.copyload, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !60, !noalias !114
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !74, !noalias !117 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ei = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fdiv <2 x double> %i.ef, %i.ei          ; 3 uses
  %i.ek = fdiv double 1.000000e+00, %i.eh         ; 3 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  %i.el = fneg double %.sroa.0.8.vec.extract
  %i.em = extractelement <4 x double> %i.bu, i64 2 ; 4 uses
  %i.en = fmul double %i.em, %i.el
  %i.eo = extractelement <4 x double> %i.bu, i64 1 ; 4 uses
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.ek, double %i.en)
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.eq = fneg double %i.ek
  %i.er = extractelement <4 x double> %i.bu, i64 0 ; 4 uses
  %i.es = fmul double %i.er, %i.eq
  %i.et = tail call double @llvm.fmuladd.f64(double %i.em, double %.sroa.0.0.vec.extract, double %i.es)
  %i.eu = fneg double %.sroa.0.0.vec.extract
  %i.ev = fmul double %i.eo, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.er, double %.sroa.0.8.vec.extract, double %i.ev) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i11 = insertelement <2 x double> poison, double %i.ep, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i12 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i11, double %i.et, i64 1 ; 2 uses
  %i.ex = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i12, %.sroa.027.8.vec.insert.i.i.i.i12 ; 3 uses
  %i.ey = fadd double %i.ew, %i.ew                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i13 = extractelement <2 x double> %i.ex, i64 1 ; 2 uses
  %i.ez = fneg double %.sroa.027.8.vec.extract.i.i.i.i13
  %i.fa = fmul double %i.em, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.ey, double %i.fa)
  %.sroa.027.0.vec.extract.i.i.i.i14 = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.fc = fneg double %i.ey
  %i.fd = fmul double %i.er, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.em, double %.sroa.027.0.vec.extract.i.i.i.i14, double %i.fd)
  %i.ff = fneg double %.sroa.027.0.vec.extract.i.i.i.i14
  %i.fg = fmul double %i.eo, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.er, double %.sroa.027.8.vec.extract.i.i.i.i13, double %i.fg)
  %.sroa.0.0.vec.insert.i.i.i.i15 = insertelement <2 x double> poison, double %i.fb, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i16 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i15, double %i.fe, i64 1
  %i.fi = shufflevector <4 x double> %i.bu, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.fj = fmul <2 x double> %i.fi, %i.ex
  %i.fk = fadd <2 x double> %i.ej, %i.fj
  %i.fl = fadd <2 x double> %i.fk, %.sroa.0.8.vec.insert.i.i.i.i16
  %i.fm = extractelement <4 x double> %i.bu, i64 3
  %i.fn = fmul double %i.fm, %i.ey
  %i.fo = fadd double %i.ek, %i.fn
  %i.fp = fadd double %i.fo, %i.fh
  %i.fq = fadd <2 x double> %i.dw, %i.fl
  store <2 x double> %i.fq, ptr %2, align 16, !tbaa !60, !alias.scope !120
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = fadd double %i.ed, %i.fp
  store double %i.fs, ptr %i.fr, align 16, !tbaa !74, !alias.scope !120
  call void @_ZNK3g2o16CameraParameters7cam_mapERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 16 %1, ptr noundef nonnull align 16 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fu = load <2 x double>, ptr %1, align 16, !tbaa !60
  %i.fv = fsub <2 x double> %.sroa.0.0.copyload, %i.fu
  store <2 x double> %i.fv, ptr %i.ft, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZNK3g2o16CameraParameters7cam_mapERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix") align 16, ptr noundef nonnull align 16 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o17EdgeProjectPSI2UV14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(400) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [3 x double], align 16      ; 5 uses
  %.sroa.0.sroa.4 = alloca [4 x double], align 16 ; 11 uses
  %.sroa.0.sroa.13 = alloca [3 x double], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %.sroa.0128.0.copyload = load <2 x double>, ptr %i.d, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %.sroa.5130.0.copyload = load double, ptr %.sroa.5130.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load <2 x double>, ptr %i.g, align 16    ; 4 uses
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %.sroa.7110.0.copyload = load double, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !60 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !52  ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 0) #24
  unreachable

_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %.sroa.6108.0.copyload = load double, ptr %.sroa.6108.0..sroa_idx, align 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 4 uses
  %.sroa.10113.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.sroa.10113.32.copyload = load double, ptr %.sroa.10113.32..sroa_idx, align 16, !tbaa !60
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %.sroa.0100.0.copyload = load <2 x i64>, ptr %i.r, align 16
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %.sroa.4101.0.copyload = load <2 x i64>, ptr %.sroa.4101.0..sroa_idx, align 16, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %.sroa.5.32.copyload = load <2 x double>, ptr %i.s, align 16 ; 2 uses
  %.sroa.7102.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %.sroa.7102.32.copyload = load double, ptr %.sroa.7102.32..sroa_idx, align 16, !tbaa !60 ; 3 uses
  %i.t = xor <2 x i64> %.sroa.0100.0.copyload, splat (i64 -9223372036854775808)
  %i.u = xor <2 x i64> %.sroa.4101.0.copyload, <i64 -9223372036854775808, i64 0>
  %bc.i = bitcast <2 x i64> %i.t to <2 x double>  ; 6 uses
  %bc7.i = bitcast <2 x i64> %i.u to <2 x double> ; 7 uses
  %.sroa.052.sroa.9.32.copyload = load <2 x double>, ptr %i.m, align 16
  %.sroa.052.sroa.0.0.vec.extract = extractelement <2 x double> %i.h, i64 0
  %i.v = bitcast double %.sroa.052.sroa.0.0.vec.extract to <1 x double>
  %i.w = shufflevector <1 x double> %i.v, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.052.sroa.0.8.vec.extract = extractelement <2 x double> %i.h, i64 1
  %i.x = bitcast double %.sroa.052.sroa.0.8.vec.extract to <1 x double>
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = insertelement <1 x double> poison, double %.sroa.6108.0.copyload, i64 0
  %i.aa = shufflevector <1 x double> %i.z, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = insertelement <1 x double> poison, double %.sroa.7110.0.copyload, i64 0
  %i.ac = shufflevector <1 x double> %i.ab, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, %bc.i
  %i.ae = fmul <2 x double> %i.y, %bc7.i
  %i.af = fadd <2 x double> %i.ae, %i.ad
  %i.ag = fmul <2 x double> %i.aa, %bc.i
  %i.ah = fmul <2 x double> %i.w, %bc7.i
  %i.ai = fsub <2 x double> %i.ag, %i.ah
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.af, <2 x double> %i.aj) ; 3 uses
  %i.al = fmul <2 x double> %i.ac, %bc7.i
  %i.am = fmul <2 x double> %i.y, %bc.i
  %i.an = fsub <2 x double> %i.al, %i.am
  %i.ao = fmul <2 x double> %i.aa, %bc7.i
  %i.ap = fmul <2 x double> %i.w, %bc.i
  %i.aq = fadd <2 x double> %i.ap, %i.ao
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ar, <2 x double> %i.aq) ; 3 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.au = extractelement <2 x double> %i.as, i64 0
  %i.av = fcmp olt double %i.au, 0.000000e+00     ; 3 uses
  %i.aw = shufflevector <2 x double> %i.ak, <2 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ax = fneg <2 x double> %i.ak                 ; 2 uses
  %i.ay = fneg <2 x double> %i.at                 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ax, <2 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = select i1 %i.av, <2 x double> %i.ay, <2 x double> %i.at ; 3 uses
  %i.bb = select i1 %i.av, <2 x double> %i.ax, <2 x double> %i.ak ; 3 uses
  %i.bc = select i1 %i.av, <4 x double> %i.az, <4 x double> %i.aw
  %i.bd = fmul <2 x double> %i.bb, %i.bb
  %i.be = fmul <2 x double> %i.ba, %i.ba
  %i.bf = fadd <2 x double> %i.be, %i.bd          ; 2 uses
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bf, %shift
  %i.bg = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  %i.bi = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.bj = shufflevector <2 x double> %i.bb, <2 x double> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> zeroinitializer
  %i.bl = fdiv <4 x double> %i.bj, %i.bk
  %i.bm = select i1 %i.bh, <4 x double> %i.bl, <4 x double> %i.bc ; 5 uses
  %i.bn = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %i.bp = fneg double %.sroa.7102.32.copyload
  %i.bq = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %i.br = fneg <2 x double> %.sroa.5.32.copyload  ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.br, i64 1 ; 2 uses
  %i.bs = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bt)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.bu, i64 0
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  %i.bv = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.bw = fmul double %.sroa.7102.32.copyload, %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bq, double %.sroa.0.0.vec.extract.i.i.i, double %i.bw)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.bx, i64 1 ; 2 uses
  %i.by = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.bz = fmul <2 x double> %i.bn, %i.by
  %i.ca = fsub <2 x double> %i.bz, %.sroa.5.32.copyload
  %i.cb = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.cc = fmul double %i.bo, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bv, double %.sroa.0.8.vec.extract.i.i.i, double %i.cc) ; 2 uses
  %i.ce = fadd double %i.cd, %i.cd                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.cf = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.cg = fmul double %i.bq, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.ce, double %i.cg)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ch, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.ci = fneg double %i.ce
  %i.cj = fmul double %i.bv, %i.ci
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bq, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.cj)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ck, i64 1
  %i.cl = fadd <2 x double> %i.ca, %.sroa.0.8.vec.insert.i.i.i.i ; 3 uses
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sroa.7110.0.copyload, i64 0
  %i.cm = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = extractelement <2 x double> %i.h, i64 1 ; 4 uses
  %i.co = extractelement <2 x double> %bc7.i, i64 1
  %i.cp = fmul double %i.co, %i.ce
  %i.cq = fsub double %i.cp, %.sroa.7102.32.copyload
  %i.cr = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.cs = fmul double %i.bo, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bv, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.cs)
  %i.cu = fadd double %i.cq, %i.ct                ; 3 uses
  %.sroa.650.40.vec.extract = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.cv = fneg double %.sroa.650.40.vec.extract
  %i.cw = fmul double %.sroa.6108.0.copyload, %i.cv
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cu, double %i.cw)
  %.sroa.027.0.vec.insert.i.i.i.i8 = insertelement <2 x double> poison, double %i.cx, i64 0
  %.sroa.650.32.vec.extract = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cy = extractelement <2 x double> %i.h, i64 0 ; 4 uses
  %i.cz = fneg double %i.cu
  %i.da = fmul double %i.cy, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %.sroa.6108.0.copyload, double %.sroa.650.32.vec.extract, double %i.da)
  %.sroa.027.8.vec.insert.i.i.i.i9 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i8, double %i.db, i64 1 ; 2 uses
  %i.dc = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i9, %.sroa.027.8.vec.insert.i.i.i.i9 ; 3 uses
  %i.dd = fmul <2 x double> %i.cm, %i.dc
  %i.de = fadd <2 x double> %i.cl, %i.dd
  %i.df = fneg double %.sroa.650.32.vec.extract
  %i.dg = fmul double %i.cn, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.cy, double %.sroa.650.40.vec.extract, double %i.dg) ; 2 uses
  %i.di = fadd double %i.dh, %i.dh                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i10 = extractelement <2 x double> %i.dc, i64 1 ; 2 uses
  %i.dj = fneg double %.sroa.027.8.vec.extract.i.i.i.i10
  %i.dk = fmul double %.sroa.6108.0.copyload, %i.dj
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.di, double %i.dk)
  %.sroa.0.0.vec.insert.i.i.i.i12 = insertelement <2 x double> poison, double %i.dl, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i11 = extractelement <2 x double> %i.dc, i64 0 ; 2 uses
  %i.dm = fneg double %i.di
  %i.dn = fmul double %i.cy, %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %.sroa.6108.0.copyload, double %.sroa.027.0.vec.extract.i.i.i.i11, double %i.dn)
  %.sroa.0.8.vec.insert.i.i.i.i13 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i12, double %i.do, i64 1
  %i.dp = fadd <2 x double> %i.de, %.sroa.0.8.vec.insert.i.i.i.i13
  %i.dq = fadd <2 x double> %.sroa.052.sroa.9.32.copyload, %i.dp
  %i.dr = fmul double %.sroa.7110.0.copyload, %i.di
  %i.ds = fadd double %i.cu, %i.dr
  %i.dt = fneg double %.sroa.027.0.vec.extract.i.i.i.i11
  %i.du = fmul double %i.cn, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.cy, double %.sroa.027.8.vec.extract.i.i.i.i10, double %i.du)
  %i.dw = fadd double %i.ds, %i.dv
  %i.dx = fadd double %.sroa.10113.32.copyload, %i.dw
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sroa.5130.0.copyload, i64 0
  %i.dy = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv <2 x double> %.sroa.0128.0.copyload, %i.dy ; 5 uses
  %i.ea = fdiv double 1.000000e+00, %.sroa.5130.0.copyload ; 7 uses
  %.sroa.041.8.vec.extract = extractelement <2 x double> %i.dz, i64 1 ; 4 uses
  %i.eb = fneg double %.sroa.041.8.vec.extract
  %i.ec = extractelement <4 x double> %i.bm, i64 2 ; 6 uses
  %i.ed = fmul double %i.ec, %i.eb
  %i.ee = extractelement <4 x double> %i.bm, i64 1 ; 7 uses
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ea, double %i.ed)
  %.sroa.041.0.vec.extract = extractelement <2 x double> %i.dz, i64 0 ; 3 uses
  %i.eg = fneg double %i.ea                       ; 3 uses
  %i.eh = extractelement <4 x double> %i.bm, i64 0 ; 8 uses
  %i.ei = fmul double %i.eh, %i.eg
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ec, double %.sroa.041.0.vec.extract, double %i.ei)
  %i.ek = fneg double %.sroa.041.0.vec.extract    ; 3 uses
  %i.el = fmul double %i.ee, %i.ek
  %i.em = tail call double @llvm.fmuladd.f64(double %i.eh, double %.sroa.041.8.vec.extract, double %i.el) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i14 = insertelement <2 x double> poison, double %i.ef, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i15 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i14, double %i.ej, i64 1 ; 2 uses
  %i.en = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i15, %.sroa.027.8.vec.insert.i.i.i.i15 ; 3 uses
  %i.eo = fadd double %i.em, %i.em                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i16 = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.ep = fneg double %.sroa.027.8.vec.extract.i.i.i.i16
  %i.eq = fmul double %i.ec, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eo, double %i.eq)
  %.sroa.027.0.vec.extract.i.i.i.i17 = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.es = fneg double %i.eo
  %i.et = fmul double %i.eh, %i.es
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ec, double %.sroa.027.0.vec.extract.i.i.i.i17, double %i.et)
  %i.ev = fneg double %.sroa.027.0.vec.extract.i.i.i.i17
  %i.ew = fmul double %i.ee, %i.ev
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.eh, double %.sroa.027.8.vec.extract.i.i.i.i16, double %i.ew)
  %.sroa.0.0.vec.insert.i.i.i.i18 = insertelement <2 x double> poison, double %i.er, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i19 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i18, double %i.eu, i64 1
  %i.ey = shufflevector <4 x double> %i.bm, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ez = fmul <2 x double> %i.ey, %i.en
  %i.fa = fadd <2 x double> %i.dz, %i.ez
  %i.fb = fadd <2 x double> %i.fa, %.sroa.0.8.vec.insert.i.i.i.i19
  %i.fc = extractelement <4 x double> %i.bm, i64 3 ; 4 uses
  %i.fd = fmul double %i.fc, %i.eo
  %i.fe = fadd double %i.ea, %i.fd
  %i.ff = fadd double %i.fe, %i.ex
  %i.fg = fadd <2 x double> %i.dq, %i.fb          ; 3 uses
  %i.fh = fadd double %i.dx, %i.ff                ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fj = fmul double %i.fh, %i.fh
  %i.fk = load double, ptr %i.fi, align 8, !tbaa !74, !noalias !123 ; 2 uses
  %i.fl = fdiv double %i.fk, %i.fh
  %i.fm = bitcast double %i.fl to i64             ; 2 uses
  %.sroa.0187.8.vec.insert = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fm, i64 0 ; 2 uses
  %.sroa.7.24.vec.insert = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.fm, i64 1 ; 2 uses
  %.sroa.035.8.vec.extract = extractelement <2 x double> %i.fg, i64 1
  %i.fn = fneg <2 x double> %i.fg                 ; 3 uses
  %i.fo = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x double> %i.fp, %i.fn
  %i.fr = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fdiv <2 x double> %i.fq, %i.fs          ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.fx = fmul double %i.eh, 2.000000e+00         ; 2 uses
  %i.fy = fmul double %i.ee, 2.000000e+00         ; 3 uses
  %i.fz = fmul double %i.ec, 2.000000e+00         ; 4 uses
  %i.ga = fmul double %i.fx, %i.fc                ; 2 uses
  %i.gb = fmul double %i.fy, %i.fc                ; 2 uses
  %i.gc = fmul double %i.fz, %i.fc                ; 2 uses
  %i.gd = fmul double %i.eh, %i.fx                ; 2 uses
  %i.ge = fmul double %i.fy, %i.eh                ; 2 uses
  %i.gf = fmul double %i.eh, %i.fz                ; 2 uses
  %i.gg = fmul double %i.ee, %i.fy                ; 2 uses
  %i.gh = fmul double %i.ee, %i.fz                ; 2 uses
  %i.gi = fmul double %i.ec, %i.fz                ; 2 uses
  %i.gj = fadd double %i.gg, %i.gi
  %i.gk = fsub double 1.000000e+00, %i.gj         ; 2 uses
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = fsub double %i.ge, %i.gc                ; 2 uses
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = fadd double %i.gf, %i.gb                ; 2 uses
  %i.gp = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gq = fadd double %i.ge, %i.gc                ; 2 uses
  %i.gr = insertelement <2 x double> %i.gl, double %i.gq, i64 1 ; 2 uses
  %i.gs = fadd double %i.gi, %i.gd
  %i.gt = fsub double 1.000000e+00, %i.gs         ; 2 uses
  %i.gu = insertelement <2 x double> %i.gn, double %i.gt, i64 1 ; 2 uses
  %i.gv = fsub double %i.gh, %i.ga                ; 2 uses
  %i.gw = insertelement <2 x double> %i.gp, double %i.gv, i64 1
  %i.gx = fsub double %i.gf, %i.gb                ; 3 uses
  %i.gy = fadd double %i.gh, %i.ga                ; 3 uses
  %i.gz = fadd double %i.gg, %i.gd
  %i.ha = fsub double 1.000000e+00, %i.gz         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store <2 x double> %i.dz, ptr %.sroa.0.i, align 16, !tbaa !60, !alias.scope !129, !noalias !126
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  store double %i.ea, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !74, !alias.scope !129, !noalias !126
  store double %i.gx, ptr %.sroa.0.sroa.4, align 16, !tbaa !74, !alias.scope !126
  %.sroa.0.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 8
  store <2 x double> %i.gu, ptr %.sroa.0.sroa.4.8..sroa_idx, align 8, !tbaa !60, !alias.scope !126
  %.sroa.0.sroa.4.24..sroa_idx237 = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 24
  store double %i.gy, ptr %.sroa.0.sroa.4.24..sroa_idx237, align 8, !tbaa !74, !alias.scope !126
  %i.hb = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = fneg <2 x double> %i.gu
  %.sroa.0.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i = load <2 x double>, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8, !noalias !126 ; 4 uses
  %i.hd = shufflevector <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x double> %i.hd, %i.hc
  %i.hf = fmul <2 x double> %i.hb, %i.gr
  %i.hg = fsub <2 x double> %i.he, %i.hf
  %i.hh = shufflevector <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hi = fmul <2 x double> %i.gw, %i.hh
  %i.hj = fsub <2 x double> %i.hg, %i.hi
  %i.hk = extractelement <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, i64 0
  %i.hl = fneg double %i.ha
  %i.hm = extractelement <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, i64 1
  %i.hn = fmul double %i.hm, %i.hl
  %i.ho = fmul double %i.gy, %i.hk
  %i.hp = fsub double %i.hn, %i.ho
  %i.hq = fmul double %.sroa.041.0.vec.extract, %i.gx
  %i.hr = fsub double %i.hp, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hu = fmul <2 x double> %i.ht, %i.gr          ; 2 uses
  %.sroa.0.sroa.4.0..sroa.0.sroa.4.16..sroa.0.16..sroa.0.16..sroa.0.16. = load <2 x double>, ptr %.sroa.0.sroa.4, align 16, !tbaa !60, !alias.scope !126
  %i.hv = fmul <2 x double> %i.ht, %.sroa.0.sroa.4.0..sroa.0.sroa.4.16..sroa.0.16..sroa.0.16..sroa.0.16. ; 2 uses
  store <2 x double> %i.hv, ptr %.sroa.0.sroa.4, align 16, !tbaa !60, !alias.scope !126
  %.sroa.0.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 16
  %.sroa.0.sroa.4.16..sroa.0.sroa.4.32..sroa.0.32..sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.sroa.4.16..sroa_idx, align 16, !tbaa !60, !alias.scope !126
  %i.hw = fmul <2 x double> %i.ht, %.sroa.0.sroa.4.16..sroa.0.sroa.4.32..sroa.0.32..sroa.0.32..sroa.0.32. ; 2 uses
  %.sroa.0.sroa.4.16..sroa_idx355 = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 16
  store <2 x double> %i.hw, ptr %.sroa.0.sroa.4.16..sroa_idx355, align 16, !tbaa !60, !alias.scope !126
  %i.hx = fmul <2 x double> %i.ht, %i.hj          ; 2 uses
  store <2 x double> %i.hx, ptr %.sroa.0.sroa.13, align 16, !tbaa !60, !alias.scope !126
  %i.hy = fmul double %i.ea, %i.hr
  %.sroa.0.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.13, i64 16
  store double %i.hy, ptr %.sroa.0.sroa.13.16..sroa_idx, align 16, !tbaa !74, !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.hz = xor <2 x i64> %.sroa.0187.8.vec.insert, splat (i64 -9223372036854775808)
  %i.ia = bitcast <2 x i64> %i.hz to <2 x double> ; 9 uses
  %i.ib = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x double> %i.ib, %i.ia
  %i.id = xor <2 x i64> %.sroa.7.24.vec.insert, splat (i64 -9223372036854775808)
  %i.ie = bitcast <2 x i64> %i.id to <2 x double> ; 9 uses
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.hu, i64 1
  %i.if = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.ig = shufflevector <1 x double> %i.if, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ig, %i.ie
  %i.ii = fadd <2 x double> %i.ic, %i.ih
  %i.ij = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x double> %i.ft, %i.ij
  %i.il = fsub <2 x double> %i.ii, %i.ik
  %.sroa.0.sroa.4.8..sroa_idx354 = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 8
  %.sroa.0.sroa.4.8..sroa.0.sroa.4.24. = load <1 x double>, ptr %.sroa.0.sroa.4.8..sroa_idx354, align 8
  %1 = shufflevector <1 x double> %.sroa.0.sroa.4.8..sroa.0.sroa.4.24., <1 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %1, %i.ia
  %i.in = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.in, %i.ie
  %i.ip = fadd <2 x double> %i.io, %i.im
  %.sroa.0.sroa.4.24..sroa_idx357 = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4, i64 24
  %.sroa.0.sroa.4.24..sroa.0.sroa.4.40. = load <1 x double>, ptr %.sroa.0.sroa.4.24..sroa_idx357, align 8
  %2 = shufflevector <1 x double> %.sroa.0.sroa.4.24..sroa.0.sroa.4.40., <1 x double> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x double> %i.ft, %2
  %i.ir = fsub <2 x double> %i.ip, %i.iq
  %i.is = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x double> %i.is, %i.ia
  %.sroa.0.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.13, i64 8
  %.sroa.0.sroa.13.8..sroa.0.sroa.13.56..sroa.0.56..sroa.0.56..sroa.0.56. = load <2 x double>, ptr %.sroa.0.sroa.13.8..sroa_idx, align 8 ; 2 uses
  %3 = shufflevector <2 x double> %.sroa.0.sroa.13.8..sroa.0.sroa.13.56..sroa.0.56..sroa.0.56..sroa.0.56., <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x double> %3, %i.ie
  %5 = fadd <2 x double> %i.it, %4
  %6 = shufflevector <2 x double> %.sroa.0.sroa.13.8..sroa.0.sroa.13.56..sroa.0.56..sroa.0.56..sroa.0.56., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iu = fmul <2 x double> %i.ft, %6
  %i.iv = fsub <2 x double> %5, %i.iu
  %i.iw = load ptr, ptr %i.fv, align 8, !tbaa !132 ; 3 uses
  store <2 x double> %i.il, ptr %i.iw, align 16, !tbaa !60
  %i.ix = getelementptr i8, ptr %i.iw, i64 16
  store <2 x double> %i.ir, ptr %i.ix, align 16, !tbaa !60
  %i.iy = getelementptr i8, ptr %i.iw, i64 32
  store <2 x double> %i.iv, ptr %i.iy, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.13)
  %i.iz = shufflevector <2 x double> %i.fn, <2 x double> %i.fg, <2 x i32> <i32 3, i32 0>
  %i.ja = fneg double %i.fh                       ; 2 uses
  %.scalar.i = bitcast double %i.ja to i64
  %i.jb = insertelement <2 x i64> <i64 -9223372036854775808, i64 poison>, i64 %.scalar.i, i64 1
  %.scalar11.i = bitcast double %i.fh to i64
  %i.jc = insertelement <2 x i64> <i64 poison, i64 -9223372036854775808>, i64 %.scalar11.i, i64 0
  %7 = extractelement <2 x double> %i.fn, i64 0
  %i.jd = fneg <2 x double> %i.iz                 ; 2 uses
  %i.je = bitcast <2 x i64> %i.jb to <2 x double>
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x double> %i.jf, %i.ia
  %i.jh = bitcast double %i.ja to <1 x double>
  %i.ji = shufflevector <1 x double> %i.jh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x double> %i.ji, %i.ie
  %i.jk = fadd <2 x double> %i.jg, %i.jj
  %i.jl = bitcast double %.sroa.035.8.vec.extract to <1 x double>
  %i.jm = shufflevector <1 x double> %i.jl, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x double> %i.ft, %i.jm
  %i.jo = fsub <2 x double> %i.jk, %i.jn
  %i.jp = bitcast <2 x i64> %i.jc to <2 x double>
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x double> %i.jq, %i.ia
  %8 = fmul <2 x double> %i.ie, splat (double -0.000000e+00)
  %9 = fadd <2 x double> %i.jr, %8
  %10 = bitcast double %7 to <1 x double>
  %i.js = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.ft, %i.js
  %i.ju = fsub <2 x double> %9, %i.jt
  %i.jv = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x double> %i.jv, %i.ia
  %.sroa.0158.sroa.0.sroa.10.56.vec.extract = extractelement <2 x double> %i.jd, i64 1
  %11 = bitcast double %.sroa.0158.sroa.0.sroa.10.56.vec.extract to <1 x double>
  %12 = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %12, %i.ie
  %i.jy = fadd <2 x double> %i.jw, %i.jx
  %i.jz = fmul <2 x double> %i.ft, splat (double -0.000000e+00)
  %i.ka = fsub <2 x double> %i.jy, %i.jz
  %i.kb = fmul <2 x double> %i.ie, zeroinitializer
  %i.kc = fadd <2 x double> %i.kb, %i.ia
  %13 = fmul <2 x double> %i.ft, splat (double -0.000000e+00) ; 2 uses
  %i.kd = fadd <2 x double> %i.kc, %13
  %i.ke = fmul <2 x double> %i.ia, zeroinitializer
  %i.kf = fadd <2 x double> %i.ke, %i.ie
  %i.kg = fadd <2 x double> %13, %i.kf
  %14 = fmul <2 x double> %i.ia, zeroinitializer
  %15 = fmul <2 x double> %i.ie, zeroinitializer
  %i.kh = fadd <2 x double> %14, %15
  %i.ki = fsub <2 x double> %i.kh, %i.ft
  %i.kj = load ptr, ptr %i.fw, align 8, !tbaa !137 ; 6 uses
  store <2 x double> %i.jo, ptr %i.kj, align 16, !tbaa !60
  %i.kk = getelementptr i8, ptr %i.kj, i64 16
  store <2 x double> %i.ju, ptr %i.kk, align 16, !tbaa !60
  %i.kl = getelementptr i8, ptr %i.kj, i64 32
  store <2 x double> %i.ka, ptr %i.kl, align 16, !tbaa !60
  %i.km = getelementptr i8, ptr %i.kj, i64 48
  store <2 x double> %i.kd, ptr %i.km, align 16, !tbaa !60
  %i.kn = getelementptr i8, ptr %i.kj, i64 64
  store <2 x double> %i.kg, ptr %i.kn, align 16, !tbaa !60
  %i.ko = getelementptr i8, ptr %i.kj, i64 80
  store <2 x double> %i.ki, ptr %i.ko, align 16, !tbaa !60
  %.sroa.0166.sroa.10.32.vec.insert = insertelement <2 x double> poison, double %i.gv, i64 0
  %16 = insertelement <2 x double> poison, double %.sroa.041.8.vec.extract, i64 0
  %i.kp = insertelement <2 x double> %16, double %i.ek, i64 1
  %.scalar.i21 = bitcast double %i.eg to i64
  %17 = insertelement <2 x i64> <i64 -9223372036854775808, i64 poison>, i64 %.scalar.i21, i64 1
  %.scalar11.i22 = bitcast double %i.ea to i64
  %18 = insertelement <2 x i64> <i64 poison, i64 -9223372036854775808>, i64 %.scalar11.i22, i64 0
  %i.kq = fneg <2 x double> %i.kp                 ; 2 uses
  %i.kr = bitcast <2 x i64> %.sroa.0187.8.vec.insert to <2 x double> ; 3 uses
  %i.ks = bitcast double %i.gk to <1 x double>
  %i.kt = shufflevector <1 x double> %i.ks, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x double> %i.kt, %i.kr
  %i.kv = bitcast <2 x i64> %.sroa.7.24.vec.insert to <2 x double> ; 3 uses
  %i.kw = bitcast double %i.gq to <1 x double>
  %i.kx = shufflevector <1 x double> %i.kw, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %i.kx, %i.kv
  %i.kz = fadd <2 x double> %i.ku, %i.ky
  %i.la = bitcast double %i.gx to <1 x double>
  %i.lb = shufflevector <1 x double> %i.la, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x double> %i.ft, %i.lb
  %i.ld = fadd <2 x double> %i.kz, %i.lc          ; 6 uses
  %i.le = bitcast double %i.gm to <1 x double>
  %i.lf = shufflevector <1 x double> %i.le, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x double> %i.lf, %i.kr
  %19 = bitcast double %i.gt to <1 x double>
  %i.lh = shufflevector <1 x double> %19, <1 x double> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x double> %i.lh, %i.kv
  %i.lj = fadd <2 x double> %i.lg, %i.li
  %20 = bitcast double %i.gy to <1 x double>
  %i.lk = shufflevector <1 x double> %20, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ll = fmul <2 x double> %i.ft, %i.lk
  %i.lm = fadd <2 x double> %i.lj, %i.ll          ; 6 uses
  %21 = bitcast double %i.go to <1 x double>
  %22 = shufflevector <1 x double> %21, <1 x double> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x double> %22, %i.kr
  %i.ln = shufflevector <2 x double> %.sroa.0166.sroa.10.32.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = fmul <2 x double> %i.ln, %i.kv
  %i.lp = fadd <2 x double> %23, %i.lo
  %i.lq = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = fmul <2 x double> %i.ft, %i.lr
  %i.lt = fadd <2 x double> %i.ls, %i.lp          ; 5 uses
  %24 = bitcast <2 x i64> %17 to <2 x double>
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = fmul <2 x double> %i.ld, %25
  %26 = bitcast double %i.eg to <1 x double>
  %i.lv = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x double> %i.lm, %i.lv
  %27 = fadd <2 x double> %i.lu, %i.lw
  %28 = bitcast double %.sroa.041.8.vec.extract to <1 x double>
  %29 = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x double> %i.lt, %29
  %i.ly = fadd <2 x double> %27, %i.lx
  %30 = bitcast <2 x i64> %18 to <2 x double>
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = fmul <2 x double> %i.ld, %31
  %i.ma = fmul <2 x double> %i.lm, splat (double -0.000000e+00)
  %32 = fadd <2 x double> %i.lz, %i.ma
  %33 = bitcast double %i.ek to <1 x double>
  %i.mb = shufflevector <1 x double> %33, <1 x double> poison, <2 x i32> zeroinitializer
  %i.mc = fmul <2 x double> %i.lt, %i.mb
  %i.md = fadd <2 x double> %32, %i.mc
  %i.me = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x double> %i.me, %i.ld
  %.sroa.0194.sroa.0.sroa.10.56.vec.extract = extractelement <2 x double> %i.kq, i64 1
  %34 = bitcast double %.sroa.0194.sroa.0.sroa.10.56.vec.extract to <1 x double>
  %35 = shufflevector <1 x double> %34, <1 x double> poison, <2 x i32> zeroinitializer
  %i.mg = fmul <2 x double> %i.lm, %35
  %i.mh = fadd <2 x double> %i.mf, %i.mg
  %i.mi = fmul <2 x double> %i.lt, splat (double -0.000000e+00)
  %36 = fadd <2 x double> %i.mh, %i.mi
  %37 = fmul <2 x double> %i.lm, zeroinitializer
  %i.mj = fadd <2 x double> %37, %i.ld
  %38 = fmul <2 x double> %i.lt, zeroinitializer  ; 2 uses
  %i.mk = fadd <2 x double> %i.mj, %38
  %39 = fmul <2 x double> %i.ld, zeroinitializer
  %i.ml = fadd <2 x double> %39, %i.lm
  %i.mm = fadd <2 x double> %38, %i.ml
  %40 = fmul <2 x double> %i.ld, zeroinitializer
  %41 = fmul <2 x double> %i.lm, zeroinitializer
  %i.mn = fadd <2 x double> %40, %41
  %i.mo = fadd <2 x double> %i.lt, %i.mn
  %i.mp = load ptr, ptr %i.fu, align 8, !tbaa !137 ; 6 uses
  store <2 x double> %i.ly, ptr %i.mp, align 16, !tbaa !60
  %i.mq = getelementptr i8, ptr %i.mp, i64 16
  store <2 x double> %i.md, ptr %i.mq, align 16, !tbaa !60
  %i.mr = getelementptr i8, ptr %i.mp, i64 32
  store <2 x double> %36, ptr %i.mr, align 16, !tbaa !60
  %i.ms = getelementptr i8, ptr %i.mp, i64 48
  store <2 x double> %i.mk, ptr %i.ms, align 16, !tbaa !60
  %i.mt = getelementptr i8, ptr %i.mp, i64 64
  store <2 x double> %i.mm, ptr %i.mt, align 16, !tbaa !60
  %i.mu = getelementptr i8, ptr %i.mp, i64 80
  store <2 x double> %i.mo, ptr %i.mu, align 16, !tbaa !60
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17EdgeProjectPSI2UVD0Ev(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(392) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(392) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !140, !range !156, !noundef !157
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !140, !range !156, !noundef !157
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.o = load i8, ptr %i.n, align 4, !tbaa !140, !range !156, !noundef !157
  %i.p = trunc nuw i8 %i.o to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.c ]
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17EdgeProjectPSI2UV18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !60
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !60
  %i.b = load ptr, ptr %0, align 16, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o17EdgeProjectPSI2UV18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !60
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !60
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o17EdgeProjectPSI2UV20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 2
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !60
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !60
  %i.i = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x double> %i.h, %i.i
  %i.k = fadd <2 x double> %i.f, %i.j
  %i.l = fmul <2 x double> %i.d, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.l, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapES5_EE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.104", align 8 ; 4 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !158
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !158 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load <2 x i64>, ptr %i.k, align 16, !tbaa !60
  %i.n = xor <2 x i64> %i.m, splat (i64 -9223372036854775808)
  %i.o = bitcast <2 x i64> %i.n to <2 x double>
  %i.p = load <2 x double>, ptr %i.l, align 16    ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x double> %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !60
  %i.u = xor <2 x i64> %i.t, splat (i64 -9223372036854775808)
  %i.v = bitcast <2 x i64> %i.u to <2 x double>
  %i.w = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x double> %i.w, %i.v
  %i.y = fadd <2 x double> %i.r, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !74, !noalias !159 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.y, %i.ac
  store <2 x double> %i.ad, ptr %2, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.aa, ptr %.sroa.2.i, align 16, !tbaa !165, !alias.scope !167, !noalias !162
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !170, !alias.scope !167, !noalias !162
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !162 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.ae = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
