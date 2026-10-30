Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_line3d?download=true
inline.NumInlined: 5025
inline.NumDeleted: 2785
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv:bb.a
  %i.p = load double, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.q = fmul double %i.p, %i.j
  %i.r = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.n, double %i.q) ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 56
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 3 uses
  %i.w = fmul double %i.v, %i.j
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.t, double %i.w) ; 2 uses
  %i.y = fneg double %i.f                         ; 2 uses
  %i.z = fmul double %i.p, %i.y
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.n, double %i.z) ; 2 uses
  %i.ab = fmul double %i.v, %i.y
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.t, double %i.ab) ; 2 uses
  %i.ad = fneg double %i.n
  %i.ae = fmul double %i.v, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.t, double %i.ae) ; 2 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 64
  %i.ah = getelementptr i8, ptr %i.b, i64 72
  %i.ai = getelementptr i8, ptr %i.b, i64 80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 88
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.am = fmul double %i.aa, %i.al
  %i.an = fmul double %i.aj, %i.ac
  %i.ao = fsub double %i.am, %i.an
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aq = fmul double %i.af, %i.ap
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fmul double %i.r, %i.al
  %i.at = fmul double %i.aj, %i.x
  %i.au = fsub double %i.as, %i.at
  %i.av = load double, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %i.aw = fmul double %i.af, %i.av
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fmul double %i.l, %i.al
  %i.az = fmul double %i.x, %i.ap
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = fmul double %i.ac, %i.av
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.l, %i.aj
  %i.be = fmul double %i.r, %i.ap
  %i.bf = fsub double %i.bd, %i.be
  %i.bg = fmul double %i.aa, %i.av
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = getelementptr i8, ptr %i.b, i64 96
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14
  %i.bk = getelementptr i8, ptr %i.b, i64 104
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = fmul double %i.bl, %i.ax
  %i.bn = fmul double %i.bj, %i.ar
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = getelementptr i8, ptr %i.b, i64 112
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = getelementptr i8, ptr %i.b, i64 120
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14
  %i.bt = fmul double %i.bh, %i.bs
  %i.bu = fmul double %i.bc, %i.bq
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = fadd double %i.bo, %i.bv
  ret double %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(248) %0, double noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %3 = alloca %"class.Eigen::LLT", align 16       ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 9 uses
  %i.b = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.e = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %.sroa.09.0.copyload, i64 80
  %i.j = getelementptr i8, ptr %.sroa.09.0.copyload, i64 96
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %.sroa.09.0.copyload, i64 112
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %.sroa.09.0.copyload, i64 120
  %i.o = load double, ptr %i.n, align 8, !tbaa !14
  %i.p = fadd double %1, %i.o                     ; 3 uses
  %i.q = fmul double %1, 0.000000e+00
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.s, <double 1.000000e+00, double 0.000000e+00> ; 4 uses
  %i.u = load <2 x double>, ptr %.sroa.09.0.copyload, align 8, !tbaa !14
  %i.v = fadd <2 x double> %i.t, %i.u             ; 7 uses
  %i.w = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.x = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.y = fadd <2 x double> %i.x, %i.c             ; 8 uses
  %i.z = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.aa = fadd <2 x double> %i.w, %i.z            ; 3 uses
  %i.ab = fadd <2 x double> %i.x, %i.f            ; 6 uses
  %i.ac = fadd <2 x double> %i.x, %i.h            ; 4 uses
  %i.ad = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  %i.ae = fadd <2 x double> %i.t, %i.ad           ; 6 uses
  %i.af = fadd <2 x double> %i.x, %i.k            ; 3 uses
  %i.ag = fadd double %i.q, %i.m                  ; 2 uses
  %i.ah = fneg <2 x double> %i.aa                 ; 3 uses
  %i.ai = shufflevector <2 x double> %i.v, <2 x double> %i.y, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.aj = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = fmul <2 x double> %i.y, %i.aj
  %i.am = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.an = fneg <2 x double> %i.am                 ; 2 uses
  %i.ao = fmul <2 x double> %i.ai, %i.ah
  %i.ap = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.am, <2 x double> %i.ak)
  %i.ar = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ah
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ab, <2 x double> %i.al)
  %i.au = fmul <2 x double> %i.y, %i.an
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.am, <2 x double> %i.ao)
  %i.aw = fmul <2 x double> %i.ar, %i.an
  %i.ax = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.ax, <2 x double> %i.as)
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ab, <2 x double> %i.au)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ax, <2 x double> %i.aw)
  %i.bb = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.av, %i.bb
  %i.bd = shufflevector <2 x double> %i.ac, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.be = fmul <2 x double> %i.ay, %i.bd
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = fmul <2 x double> %i.ba, %i.ac
  %i.bh = fadd <2 x double> %i.bg, %i.bf
  %i.bi = fmul <2 x double> %i.aq, %i.ae
  %i.bj = fmul <2 x double> %i.at, %i.bd
  %i.bk = fsub <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.az, %i.bl
  %i.bn = fadd <2 x double> %i.bm, %i.bk
  %i.bo = insertelement <2 x double> %i.af, double %i.p, i64 0
  %i.bp = fmul <2 x double> %i.bo, %i.bn
  %i.bq = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x double> %i.bq, double %i.ag, i64 0
  %i.bs = fmul <2 x double> %i.br, %i.bh
  %i.bt = fsub <2 x double> %i.bp, %i.bs          ; 2 uses
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.bt
  %i.bu = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %4 = fcmp uno double %i.bu, 0.000000e+00
  %5 = fcmp olt double %i.bu, f0x3CB0000000000000
  %or.cond = or i1 %4, %5
  br i1 %or.cond, label %bb.d, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i: ; preds = %bb.a
  %.sroa.38.112.vec.insert = insertelement <2 x double> poison, double %i.ag, i64 0
  %.sroa.38.120.vec.insert = insertelement <2 x double> %.sroa.38.112.vec.insert, double %i.p, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store <2 x double> %i.v, ptr %3, align 16, !tbaa !30, !alias.scope !101
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %i.y, ptr %i.bv, align 16, !tbaa !30, !alias.scope !101
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> %i.aa, ptr %i.bw, align 16, !tbaa !30, !alias.scope !101
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store <2 x double> %i.ab, ptr %i.bx, align 16, !tbaa !30, !alias.scope !101
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x double> %i.ac, ptr %i.by, align 16, !tbaa !30, !alias.scope !101
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store <2 x double> %i.ae, ptr %i.bz, align 16, !tbaa !30, !alias.scope !101
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x double> %i.af, ptr %i.ca, align 16, !tbaa !30, !alias.scope !101
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x double> %.sroa.38.120.vec.insert, ptr %i.cb, align 16, !tbaa !30, !alias.scope !101
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.cd = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v)
  %i.ce = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.y)
  %i.cf = fadd <2 x double> %i.cd, %i.ce          ; 2 uses
  %shift38 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop39 = fadd <2 x double> %i.cf, %shift38
  %i.cg = extractelement <2 x double> %foldExtExtBinop39, i64 0 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, 0.000000e+00
  %i.ci = select i1 %i.ch, double %i.cg, double 0.000000e+00 ; 3 uses
  store double %i.ci, ptr %i.cc, align 16, !tbaa !108, !alias.scope !101
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ck = load <2 x double>, ptr %i.cj, align 8, !alias.scope !101 ; 2 uses
  %i.cl = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ck) ; 2 uses
  %shift41 = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop42 = fadd <2 x double> %i.cl, %shift41
  %i.cm = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.cn = extractelement <2 x double> %i.v, i64 1
  %i.co = tail call noundef double @llvm.fabs.f64(double %i.cn)
  %i.cp = extractelement <2 x double> %i.ck, i64 1
  %i.cq = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ae) ; 2 uses
  %shift44 = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop45 = fadd <2 x double> %i.cq, %shift44
  %i.cr = extractelement <2 x double> %foldExtExtBinop45, i64 0
  %i.cs = extractelement <2 x double> %i.y, i64 0
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = fadd double %i.cr, %i.cv                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.cy = shufflevector <2 x double> %i.y, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> %i.ae, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.da = insertelement <4 x double> %i.cz, double %i.p, i64 3
  %i.db = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.da) ; 4 uses
  %i.dc = extractelement <4 x double> %i.db, i64 1 ; 2 uses
  %i.dd = fadd double %i.dc, %i.cm
  %i.de = fadd double %i.co, %i.dd                ; 2 uses
  %i.df = fcmp ogt double %i.de, %i.ci            ; 2 uses
  %i.dg = select i1 %i.df, double %i.de, double %i.ci ; 2 uses
  %i.dh = fcmp ogt double %i.cw, %i.dg            ; 2 uses
  %i.di = select i1 %i.dh, double %i.cw, double %i.dg ; 2 uses
  %i.dj = or i1 %i.df, %i.dh
  %i.dk = extractelement <4 x double> %i.db, i64 0
  %i.dl = fadd double %i.dk, %i.dc
  %i.dm = extractelement <4 x double> %i.db, i64 2
  %i.dn = fadd double %i.dl, %i.dm
  %i.do = extractelement <4 x double> %i.db, i64 3
  %i.dp = fadd double %i.dn, %i.do                ; 2 uses
  %i.dq = fcmp ogt double %i.dp, %i.di            ; 2 uses
  %i.dr = or i1 %i.dj, %i.dq
  br i1 %i.dr, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i
  %spec.select = select i1 %i.dq, double %i.dp, double %i.di
  store double %spec.select, ptr %i.cc, align 16, !tbaa !108, !alias.scope !101
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i, %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i8 1, ptr %i.ds, align 8, !tbaa !109, !alias.scope !101
  %i.dt = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(144) %3)
  %i.du = icmp ne i64 %i.dt, -1
  %i.dv = zext i1 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !110, !alias.scope !101
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dy = load <2 x double>, ptr %i.dx, align 16, !tbaa !30 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eb = load <2 x double>, ptr %i.ea, align 16, !tbaa !30 ; 2 uses
  %i.ec = load double, ptr %3, align 16, !tbaa !14 ; 2 uses
  %i.ed = extractelement <2 x double> %i.dy, i64 0
  %i.ee = fdiv double %i.ed, %i.ec                ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14
  %i.eh = fmul double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ej = extractelement <2 x double> %i.dy, i64 1
  %i.ek = fsub double %i.ej, %i.eh
  %i.el = load double, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.em = fdiv double %i.ek, %i.el                ; 3 uses
  %i.en = load double, ptr %i.bv, align 16, !tbaa !14
  %i.eo = fmul double %i.ee, %i.en
  %i.ep = load double, ptr %i.bx, align 16, !tbaa !14
  %i.eq = fmul double %i.em, %i.ep
  %i.er = fadd double %i.eo, %i.eq
  %i.es = extractelement <2 x double> %i.eb, i64 0
  %i.et = fsub double %i.es, %i.er
  %i.eu = load double, ptr %i.bz, align 16, !tbaa !14 ; 2 uses
  %i.ev = fdiv double %i.et, %i.eu                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14 ; 2 uses
  %i.ey = fmul double %i.ee, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !14
  %i.fb = fmul double %i.em, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = fmul double %i.ev, %i.fd
  %i.ff = fadd double %i.fb, %i.fe
  %i.fg = fadd double %i.ey, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fi = extractelement <2 x double> %i.eb, i64 1
  %i.fj = fsub double %i.fi, %i.fg
  %i.fk = load double, ptr %i.cx, align 8, !tbaa !14 ; 2 uses
  %i.fl = fdiv double %i.fj, %i.fk
  %i.fm = fdiv double %i.fl, %i.fk                ; 2 uses
  store double %i.fm, ptr %i.fh, align 8, !tbaa !14
  %i.fn = fmul double %i.fd, %i.fm
  %i.fo = fsub double %i.ev, %i.fn
  %i.fp = fdiv double %i.fo, %i.eu
  store double %i.fp, ptr %i.dz, align 16, !tbaa !14
  %i.fq = load <2 x double>, ptr %i.bx, align 16, !tbaa !30
  %i.fr = load <2 x double>, ptr %i.dz, align 16  ; 2 uses
  %i.fs = fmul <2 x double> %i.fq, %i.fr          ; 2 uses
  %shift47 = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop48 = fadd <2 x double> %i.fs, %shift47
  %i.ft = extractelement <2 x double> %foldExtExtBinop48, i64 0
  %i.fu = fsub double %i.em, %i.ft
  %i.fv = fdiv double %i.fu, %i.el
  store double %i.fv, ptr %i.ei, align 8, !tbaa !14
  %i.fw = load <2 x double>, ptr %i.ef, align 8, !tbaa !30
  %i.fx = load <2 x double>, ptr %i.ei, align 8, !tbaa !30
  %i.fy = fmul <2 x double> %i.fw, %i.fx          ; 2 uses
  %shift50 = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fadd <2 x double> %i.fy, %shift50
  %i.fz = extractelement <2 x double> %foldExtExtBinop51, i64 0
  %i.ga = extractelement <2 x double> %i.fr, i64 1
  %i.gb = fmul double %i.ex, %i.ga
  %i.gc = fadd double %i.gb, %i.fz
  %i.gd = fsub double %i.ee, %i.gc
  %i.ge = fdiv double %i.gd, %i.ec
  store double %i.ge, ptr %2, align 16, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.gf = load ptr, ptr %0, align 16, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 224
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !100
  %i.gi = load ptr, ptr %0, align 16, !tbaa !29
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 216
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret double %i.bu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12VertexLine3D15getEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !30
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !30
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !30
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !30
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !30
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !30
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
