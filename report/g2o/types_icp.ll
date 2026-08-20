inline.NumInlined: 15254
inline.NumDeleted: 8448
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZThn64_N3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED1Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !214
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !215
  br label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(344) %i.a) #27, !inline_history !215
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS9_IS3_S3_Li0EEENS_9TransposeIS8_EELi0EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSG_RKSI_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8 = alloca [4 x double], align 16        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = load ptr, ptr %1, align 8, !tbaa !308, !nonnull !101, !align !133 ; 5 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !17
  store <2 x double> %i.d, ptr %.sroa.8, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !17
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 16
  store <2 x double> %i.f, ptr %.sroa.8.16..sroa_idx, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8 ; 8 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !314
  %i.n = load <2 x double>, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, align 1, !tbaa !17 ; 3 uses
  %i.o = load <2 x double>, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 24
  %i.s = load <2 x double>, ptr %i.r, align 1, !tbaa !17 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %i.u = load <2 x double>, ptr %i.t, align 8     ; 2 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.s, %i.v
  %i.x = fadd <2 x double> %i.q, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !17 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ab = load <2 x double>, ptr %i.aa, align 8   ; 4 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.z, %i.ac
  %i.ae = fadd <2 x double> %i.x, %i.ad           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !29 ; 3 uses
  %i.ah = extractelement <2 x double> %i.o, i64 0
  %i.ai = fmul double %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %i.al = extractelement <2 x double> %i.u, i64 0
  %i.am = fmul double %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 64
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29 ; 3 uses
  %i.ap = extractelement <2 x double> %i.ab, i64 0
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = fadd double %i.am, %i.aq
  %i.as = fadd double %i.ai, %i.ar                ; 2 uses
  %i.at = extractelement <2 x double> %i.ab, i64 1
  %i.au = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x double> %i.n, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.s, %i.az
  %i.bb = fadd <2 x double> %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.z, %i.bf
  %i.bh = fadd <2 x double> %i.bb, %i.bg          ; 3 uses
  %i.bi = fmul double %i.ag, %i.at
  %i.bj = fmul double %i.ak, %i.ax
  %i.bk = fmul double %i.ao, %i.bd
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fadd double %i.bi, %i.bl                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 48
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.n, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 56
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !29 ; 2 uses
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.s, %i.bv
  %i.bx = fadd <2 x double> %i.br, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 64
  %i.bz = load double, ptr %i.by, align 8, !tbaa !29 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.z, %i.cb
  %i.cd = fadd <2 x double> %i.bx, %i.cc          ; 3 uses
  %i.ce = fmul double %i.ag, %i.bo
  %i.cf = fmul double %i.ak, %i.bt
  %i.cg = fmul double %i.ao, %i.bz
  %i.ch = fadd double %i.cf, %i.cg
  %i.ci = fadd double %i.ce, %i.ch                ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = inttoptr i64 %i.m to ptr ; 6 uses
  %i.cj = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ck = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.sroa.8.0. = load <2 x double>, ptr %.sroa.8, align 16
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8
  %.sroa.8.8..sroa.8.8..sroa.8.8..sroa.8.24. = load <2 x double>, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !17
  %.sroa.8.24..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 24
  %.sroa.8.24..sroa.8.24..sroa.8.24..sroa.8.40. = load double, ptr %.sroa.8.24..sroa_idx54, align 8, !tbaa !29
  %i.cl = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.ae, %i.co
  %i.cq = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !29 ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.bh, %i.ct
  %i.cv = fadd <2 x double> %i.cp, %i.cu
  %i.cw = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !29 ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.cd, %i.cz
  %i.db = fadd <2 x double> %i.cv, %i.da
  %i.dc = fadd <2 x double> %i.h, %i.db           ; 6 uses
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.25.48.vec.extract = extractelement <2 x double> %i.dc, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load <2 x double>, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.ae, %i.di
  %i.dk = load <2 x double>, ptr %i.cj, align 8, !tbaa !29 ; 3 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.bh, %i.dl
  %i.dn = fadd <2 x double> %i.dj, %i.dm
  %i.do = load <2 x double>, ptr %i.ck, align 8, !tbaa !29 ; 3 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.cd, %i.dp
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  %i.ds = fadd <2 x double> %i.b, %i.dr           ; 8 uses
  %i.dt = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x double> %i.ae, %i.dt
  %i.dv = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dw = fmul <2 x double> %i.bh, %i.dv
  %i.dx = fadd <2 x double> %i.du, %i.dw
  %i.dy = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x double> %i.cd, %i.dy
  %i.ea = fadd <2 x double> %i.dx, %i.dz
  %i.eb = fadd <2 x double> %.sroa.8.8..sroa.8.8..sroa.8.8..sroa.8.24., %i.ea ; 7 uses
  %i.ec = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, %i.dh
  %i.ef = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.eg, %i.dk
  %i.ei = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.ej, %i.do
  %i.el = fadd <2 x double> %i.eh, %i.ek
  %i.em = fmul double %i.as, %i.cm
  %i.en = fmul double %i.bm, %i.cr
  %i.eo = fmul double %i.ci, %i.cx
  %i.ep = fadd double %i.en, %i.eo
  %i.eq = fadd <2 x double> %i.ee, %i.el
  %i.er = fadd double %i.em, %i.ep
  %i.es = insertelement <2 x double> %.sroa.8.0., double %.sroa.8.24..sroa.8.24..sroa.8.24..sroa.8.40., i64 1
  %i.et = fadd <2 x double> %i.es, %i.eq          ; 6 uses
  %3 = fadd double %i.j, %i.er                    ; 3 uses
  %i.eu = extractelement <2 x double> %i.et, i64 1
  %4 = extractelement <2 x double> %i.eb, i64 0
  %5 = fneg double %4
  %6 = fmul double %3, %5
  %7 = tail call noundef double @llvm.fmuladd.f64(double %i.eu, double %.sroa.25.48.vec.extract, double %6) ; 2 uses
  %8 = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %9 = insertelement <2 x double> %8, double %3, i64 0 ; 2 uses
  %10 = fneg <2 x double> %9
  %11 = shufflevector <2 x double> %i.ds, <2 x double> %i.eb, <2 x i32> <i32 1, i32 3>
  %12 = fmul <2 x double> %11, %10
  %13 = shufflevector <2 x double> %i.dc, <2 x double> %i.ds, <2 x i32> <i32 1, i32 3>
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.et, <2 x double> %12)
  %i.ew = shufflevector <2 x double> %i.dc, <2 x double> %i.ds, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ex = fneg <2 x double> %i.ew
  %i.ey = fmul <2 x double> %i.et, %i.ex
  %i.ez = shufflevector <2 x double> %i.ds, <2 x double> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.ez, <2 x double> %i.ey)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = shufflevector <2 x double> %i.eb, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.fe = fneg <2 x double> %i.fd
  %i.ff = fmul <2 x double> %i.ew, %i.fe
  %i.fg = shufflevector <2 x double> %i.eb, <2 x double> %i.ds, <2 x i32> <i32 0, i32 3>
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.fg, <2 x double> %i.ff) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.et, %i.fh
  %i.fi = shufflevector <2 x double> %i.ds, <2 x double> %i.et, <2 x i32> <i32 1, i32 3>
  %i.fj = fneg <2 x double> %i.fi
  %i.fk = shufflevector <2 x double> %i.eb, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.fl = fmul <2 x double> %i.fk, %i.fj
  %i.fm = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = insertelement <2 x double> %i.ds, double %3, i64 1
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fn, <2 x double> %i.fl) ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %i.fp, double %7, i64 1
  %i.fq = fmul <2 x double> %i.ds, %.sroa.0.8.vec.insert.i ; 2 uses
  %shift = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fadd <2 x double> %i.fq, %shift
  %foldExtExtBinop52 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop50
  %i.fr = extractelement <2 x double> %foldExtExtBinop52, i64 0
  %i.fs = fdiv double 1.000000e+00, %i.fr         ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fv = fmul <2 x double> %i.ev, %i.fu
  %i.fw = fmul <2 x double> %i.fo, %i.fu          ; 2 uses
  %14 = extractelement <2 x double> %i.fw, i64 0
  store double %14, ptr %i.df, align 8, !tbaa !29
  %15 = fmul <2 x double> %i.fa, %i.fu
  store <2 x double> %15, ptr %i.dg, align 8, !tbaa !29
  store <2 x double> %i.fv, ptr %i.de, align 8, !tbaa !29
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  store double %i.fx, ptr %0, align 8, !tbaa !29
  %i.fy = fmul double %7, %i.fs
  store double %i.fy, ptr %i.fb, align 8, !tbaa !29
  %i.fz = fmul <2 x double> %i.fh, %i.fu
  store <2 x double> %i.fz, ptr %i.fc, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.560") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !317
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !271
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !29
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !29
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !273
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !271
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !317
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.75") align 16, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE39oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [4 x double], align 16      ; 9 uses
  %2 = alloca %"class.Eigen::Transform", align 16 ; 15 uses
  %3 = alloca %"class.Eigen::Matrix.75", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !17
  call void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 16 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !17, !noalias !318 ; 4 uses
  %i.j = load double, ptr %2, align 16, !tbaa !29, !noalias !318 ; 2 uses
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !17, !noalias !318 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !29, !noalias !318 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !17, !noalias !318 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load double, ptr %i.x, align 16, !tbaa !29, !noalias !318 ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
  %i.ac = fadd <2 x double> %i.u, %i.ab           ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !29, !noalias !318 ; 4 uses
  %i.af = fmul double %i.j, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ah = load double, ptr %i.ag, align 16, !tbaa !29, !noalias !318 ; 4 uses
  %i.ai = fmul double %i.q, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !29, !noalias !318 ; 4 uses
  %i.al = fmul double %i.y, %i.ak
  %i.am = fadd double %i.ai, %i.al
  %i.an = fadd double %i.af, %i.am                ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load double, ptr %i.ao, align 16, !tbaa !29, !noalias !318 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.i, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !29, !noalias !318 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.o, %i.aw
  %i.ay = fadd <2 x double> %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = load double, ptr %i.az, align 16, !tbaa !29, !noalias !318 ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.w, %i.bc
  %i.be = fadd <2 x double> %i.ay, %i.bd          ; 7 uses
  %i.bf = fmul double %i.ae, %i.ap
  %i.bg = fmul double %i.ah, %i.au
  %i.bh = fmul double %i.ak, %i.ba
  %i.bi = fadd double %i.bg, %i.bh
  %i.bj = fadd double %i.bf, %i.bi                ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
end_hunk_0
