inline.NumInlined: 3968
inline.NumDeleted: 2290
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK3g2o23EdgeStereoSE3ProjectXYZ5writeERSo
define noundef zeroext i1 @_ZNK3g2o23EdgeStereoSE3ProjectXYZ5writeERSo(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !55
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !55
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 8, !tbaa !55
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load double, ptr %i.a, align 8, !tbaa !55
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !55
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !55
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !55
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !55
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !55
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !39
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !101
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o23EdgeStereoSE3ProjectXYZ14linearizeOplusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.sroa.063.0.copyload = load double, ptr %i.e, align 16 ; 7 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !111 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.sroa.11.32.copyload = load <2 x double>, ptr %i.f, align 16
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %.sroa.13.32.copyload = load double, ptr %.sroa.13.32..sroa_idx, align 16, !tbaa !111
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.060.0.copyload = load <2 x double>, ptr %i.h, align 8 ; 3 uses
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.662.0.copyload = load double, ptr %.sroa.662.0..sroa_idx, align 8, !tbaa !111 ; 3 uses
  %.sroa.060.8.vec.extract = extractelement <2 x double> %.sroa.060.0.copyload, i64 1 ; 2 uses
  %i.i = fneg double %.sroa.060.8.vec.extract
  %.sroa.060.0.vec.extract = extractelement <2 x double> %.sroa.060.0.copyload, i64 0 ; 2 uses
  %i.j = fneg double %.sroa.662.0.copyload
  %i.k = fmul double %.sroa.063.0.copyload, %i.j
  %i.l = fneg double %.sroa.060.0.vec.extract
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0 ; 2 uses
  %i.m = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 8 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.p = fneg double %i.o
  %i.q = load <2 x double>, ptr %.sroa.565.0..sroa_idx, align 8 ; 6 uses
  %i.r = extractelement <2 x double> %i.q, i64 1  ; 4 uses
  %i.s = fmul double %i.r, %i.i
  %i.t = extractelement <2 x double> %i.q, i64 0  ; 4 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %.sroa.662.0.copyload, double %i.s)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %.sroa.060.0.vec.extract, double %i.k)
  %i.w = fmul double %i.t, %i.l
  %i.x = tail call double @llvm.fmuladd.f64(double %.sroa.063.0.copyload, double %.sroa.060.8.vec.extract, double %i.w) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.u, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.v, i64 1 ; 2 uses
  %i.y = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.z = fadd double %i.x, %i.x                   ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.y, i64 1 ; 2 uses
  %i.aa = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.ab = fmul double %i.r, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.t, double %i.z, double %i.ab)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ad = fneg double %i.z
  %i.ae = fmul double %.sroa.063.0.copyload, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.r, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ae)
  %i.ag = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.ah = fmul double %i.t, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %.sroa.063.0.copyload, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.ah)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.af, i64 1
  %i.aj = fmul <2 x double> %i.m, %i.y
  %i.ak = fadd <2 x double> %.sroa.060.0.copyload, %i.aj
  %i.al = fadd <2 x double> %i.ak, %.sroa.0.8.vec.insert.i.i.i.i
  %i.am = fmul double %.sroa.9.0.copyload, %i.z
  %i.an = fadd double %.sroa.662.0.copyload, %i.am
  %i.ao = fadd double %i.an, %i.ai
  %i.ap = fadd <2 x double> %.sroa.11.32.copyload, %i.al ; 6 uses
  %i.aq = fadd double %.sroa.13.32.copyload, %i.ao ; 6 uses
  %.sroa.059.0.vec.extract = extractelement <2 x double> %i.ap, i64 0 ; 6 uses
  %.sroa.059.8.vec.extract = extractelement <2 x double> %i.ap, i64 1 ; 7 uses
  %i.ar = fmul double %i.aq, %i.aq                ; 9 uses
  %i.as = fmul double %i.o, %.sroa.059.0.vec.extract
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.p, i64 1
  %i.av = insertelement <2 x double> poison, double %i.ar, i64 0 ; 2 uses
  %i.aw = insertelement <2 x double> %i.av, double %i.aq, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113, !nonnull !114, !align !115
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116 ; 9 uses
  %i.ba = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = insertelement <2 x double> %i.ba, double %.sroa.063.0.copyload, i64 1 ; 2 uses
  %i.bc = fmul <2 x double> %i.bb, splat (double 2.000000e+00) ; 5 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 1
  %i.be = fmul double %.sroa.063.0.copyload, %i.bd ; 2 uses
  %i.bf = fmul <2 x double> %i.bc, %i.m           ; 4 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bh = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bi = fmul <2 x double> %i.q, %i.bh           ; 5 uses
  %i.bj = extractelement <2 x double> %i.bc, i64 0
  %i.bk = fmul double %.sroa.063.0.copyload, %i.bj ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.q, %i.bi ; 2 uses
  %i.bl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bm = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.bn = shufflevector <2 x double> %i.bi, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul <2 x double> %i.bm, %i.bn          ; 4 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.bq = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.br = fadd <2 x double> %i.bi, %i.bq
  %i.bs = fmul <2 x double> %i.bi, %i.bq          ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> %i.br, <2 x i32> <i32 0, i32 3>
  %i.bu = extractelement <2 x double> %i.bs, i64 0
  %i.bv = extractelement <2 x double> %i.bi, i64 1
  %i.bw = fadd double %i.be, %i.bv
  %i.bx = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bk, i64 0
  %i.by = fsub <2 x double> %i.bx, %i.bt          ; 2 uses
  %i.bz = fadd double %i.bp, %i.bg                ; 2 uses
  %i.ca = fsub <2 x double> %i.bo, %i.bf
  %i.cb = fadd <2 x double> %i.bo, %i.bf
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.cd = fadd double %i.be, %i.bl
  %i.ce = fsub double 1.000000e+00, %i.cd         ; 3 uses
  %i.cf = fmul <2 x double> %i.by, %i.au
  %i.cg = fdiv <2 x double> %i.cf, %i.aw          ; 2 uses
  %shift = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fadd <2 x double> %shift, %i.cg
  %i.ch = extractelement <2 x double> %foldExtExtBinop71, i64 0 ; 2 uses
  store double %i.ch, ptr %i.az, align 8, !tbaa !55
  %i.ci = load double, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %i.ci, %.sroa.059.0.vec.extract
  %i.cl = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ck, i64 1
  %i.cn = fmul <2 x double> %i.cc, %i.cm
  %i.co = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.ar, i64 1 ; 6 uses
  %i.cq = fdiv <2 x double> %i.cn, %i.cp          ; 2 uses
  %shift73 = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x double> %i.cq, %shift73
  %i.cr = extractelement <2 x double> %foldExtExtBinop74, i64 0 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.az, i64 24
  store double %i.cr, ptr %i.cs, align 8, !tbaa !55
  %i.ct = load double, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.cu = fneg double %i.ct
  %i.cv = fmul double %i.ct, %.sroa.059.0.vec.extract
  %i.cw = fadd double %i.bk, %i.bu
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cv, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.ce, i64 1
  %i.db = fmul <2 x double> %i.cy, %i.da
  %i.dc = fdiv <2 x double> %i.db, %i.cp          ; 2 uses
  %shift76 = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x double> %i.dc, %shift76 ; 2 uses
  %i.dd = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %i.de = getelementptr i8, ptr %i.az, i64 48
  store double %i.dd, ptr %i.de, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !117 ; 2 uses
  %1 = fneg double %i.dg
  %2 = extractelement <2 x double> %i.by, i64 0   ; 2 uses
  %i.dh = fmul double %i.dg, %.sroa.059.8.vec.extract
  %foldExtExtBinop79 = fadd <2 x double> %i.bo, %i.bf
  %i.di = extractelement <2 x double> %foldExtExtBinop79, i64 0
  %i.dj = fmul double %2, %i.dh
  %i.dk = fmul double %i.di, %1
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dj, i64 1
  %i.dn = fdiv <2 x double> %i.dm, %i.cp          ; 2 uses
  %shift81 = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop82 = fadd <2 x double> %i.dn, %shift81
  %i.do = extractelement <2 x double> %foldExtExtBinop82, i64 0
  %i.dp = getelementptr i8, ptr %i.az, i64 8
  store double %i.do, ptr %i.dp, align 8, !tbaa !55
  %i.dq = load double, ptr %i.df, align 8, !tbaa !117 ; 2 uses
  %i.dr = fneg double %i.dq
  %i.ds = fmul double %i.dq, %.sroa.059.8.vec.extract
  %i.dt = fsub double 1.000000e+00, %i.bw
  %i.du = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.ds, i64 1
  %i.dw = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.bz, i64 1
  %i.dy = fmul <2 x double> %i.dv, %i.dx
  %i.dz = fdiv <2 x double> %i.dy, %i.cp          ; 2 uses
  %shift84 = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop85 = fadd <2 x double> %i.dz, %shift84
  %i.ea = extractelement <2 x double> %foldExtExtBinop85, i64 0
  %i.eb = getelementptr i8, ptr %i.az, i64 32
  store double %i.ea, ptr %i.eb, align 8, !tbaa !55
  %i.ec = load double, ptr %i.df, align 8, !tbaa !117 ; 2 uses
  %i.ed = fneg double %i.ec
  %i.ee = fmul double %i.ec, %.sroa.059.8.vec.extract
  %i.ef = fsub double %i.bp, %i.bg
  %i.eg = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ee, i64 1
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ce, i64 1
  %i.ek = fmul <2 x double> %i.eh, %i.ej
  %i.el = fdiv <2 x double> %i.ek, %i.cp          ; 2 uses
  %shift87 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fadd <2 x double> %i.el, %shift87
  %i.em = extractelement <2 x double> %foldExtExtBinop88, i64 0
  %i.en = getelementptr i8, ptr %i.az, i64 56
  store double %i.em, ptr %i.en, align 8, !tbaa !55
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !57
  %i.eq = fmul double %2, %i.ep
  %i.er = fdiv double %i.eq, %i.ar
  %i.es = fsub double %i.ch, %i.er
  %i.et = getelementptr i8, ptr %i.az, i64 16
  store double %i.es, ptr %i.et, align 8, !tbaa !55
  %i.eu = load double, ptr %i.eo, align 8, !tbaa !57
  %i.ev = fmul double %i.bz, %i.eu
  %i.ew = fdiv double %i.ev, %i.ar
  %i.ex = fsub double %i.cr, %i.ew
  %i.ey = getelementptr i8, ptr %i.az, i64 40
  store double %i.ex, ptr %i.ey, align 8, !tbaa !55
  %i.ez = load double, ptr %i.eo, align 8, !tbaa !57
  %i.fa = getelementptr i8, ptr %i.az, i64 64
  %i.fb = fmul double %.sroa.059.0.vec.extract, %.sroa.059.8.vec.extract
  %i.fc = fmul double %i.ce, %i.ez
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fb, i64 1
  %i.ff = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = fdiv <2 x double> %i.fe, %i.ff          ; 2 uses
  %foldExtExtBinop90 = fsub <2 x double> %foldExtExtBinop77, %i.fg
  %i.fh = extractelement <2 x double> %foldExtExtBinop90, i64 0
  store double %i.fh, ptr %i.fa, align 8, !tbaa !55
  %i.fi = load double, ptr %i.n, align 8, !tbaa !112
  %i.fj = extractelement <2 x double> %i.fg, i64 1
  %i.fk = fmul double %i.fj, %i.fi                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !118, !nonnull !114, !align !115
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !119 ; 18 uses
  store double %i.fk, ptr %i.fn, align 8, !tbaa !55
  %foldExtExtBinop92 = fmul <2 x double> %i.ap, %i.ap
  %i.fo = extractelement <2 x double> %foldExtExtBinop92, i64 0
  %i.fp = fdiv double %i.fo, %i.ar
  %i.fq = fadd double %i.fp, 1.000000e+00
  %i.fr = fneg double %i.fq
  %i.fs = load double, ptr %i.n, align 8, !tbaa !112
  %i.ft = fmul double %i.fs, %i.fr                ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fn, i64 24
  store double %i.ft, ptr %i.fu, align 8, !tbaa !55
  %i.fv = fdiv double %.sroa.059.8.vec.extract, %i.aq
  %i.fw = load double, ptr %i.n, align 8, !tbaa !112
  %i.fx = fmul double %i.fv, %i.fw                ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 48
  store double %i.fx, ptr %i.fy, align 8, !tbaa !55
  %i.fz = load double, ptr %i.n, align 8, !tbaa !112
  %i.ga = getelementptr i8, ptr %i.fn, i64 72
  %i.gb = getelementptr i8, ptr %i.fn, i64 96
  store double 0.000000e+00, ptr %i.gb, align 8, !tbaa !55
  %i.gc = shufflevector <2 x double> %i.ap, <2 x double> <double -1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gd = fdiv <2 x double> %i.gc, %i.cp          ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0 ; 2 uses
  %i.gf = fmul double %i.ge, %i.fz                ; 2 uses
  store double %i.gf, ptr %i.ga, align 8, !tbaa !55
  %i.gg = load double, ptr %i.n, align 8, !tbaa !112
  %i.gh = extractelement <2 x double> %i.gd, i64 1
  %i.gi = fmul double %i.gh, %i.gg                ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fn, i64 120
  store double %i.gi, ptr %i.gj, align 8, !tbaa !55
  %i.gk = load double, ptr %i.df, align 8, !tbaa !117
  %i.gl = getelementptr i8, ptr %i.fn, i64 8
  %i.gm = fneg double %.sroa.059.0.vec.extract    ; 2 uses
  %i.gn = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 1
  %i.gp = fmul <2 x double> %i.gn, %i.go
  %i.gq = fdiv <2 x double> %i.gp, %i.ff          ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = fadd double %i.gr, 1.000000e+00
  %i.gt = fmul double %i.gs, %i.gk
  store double %i.gt, ptr %i.gl, align 8, !tbaa !55
  %i.gu = load double, ptr %i.df, align 8, !tbaa !117
  %i.gv = extractelement <2 x double> %i.gq, i64 1
  %i.gw = fmul double %i.gv, %i.gu
  %i.gx = getelementptr i8, ptr %i.fn, i64 32
  store double %i.gw, ptr %i.gx, align 8, !tbaa !55
  %i.gy = fdiv double %i.gm, %i.aq
  %i.gz = load double, ptr %i.df, align 8, !tbaa !117
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = getelementptr i8, ptr %i.fn, i64 56
  store double %i.ha, ptr %i.hb, align 8, !tbaa !55
  %i.hc = getelementptr i8, ptr %i.fn, i64 80
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !55
  %i.hd = load double, ptr %i.df, align 8, !tbaa !117
  %i.he = fmul double %i.ge, %i.hd
  %i.hf = getelementptr i8, ptr %i.fn, i64 104
  store double %i.he, ptr %i.hf, align 8, !tbaa !55
  %i.hg = fdiv double %.sroa.059.8.vec.extract, %i.ar
  %i.hh = load double, ptr %i.df, align 8, !tbaa !117
  %i.hi = fmul double %i.hg, %i.hh
  %i.hj = getelementptr i8, ptr %i.fn, i64 128
  store double %i.hi, ptr %i.hj, align 8, !tbaa !55
  %i.hk = load double, ptr %i.eo, align 8, !tbaa !57
  %i.hl = fmul double %.sroa.059.8.vec.extract, %i.hk
  %i.hm = fdiv double %i.hl, %i.ar
  %i.hn = fsub double %i.fk, %i.hm
  %i.ho = getelementptr i8, ptr %i.fn, i64 16
  store double %i.hn, ptr %i.ho, align 8, !tbaa !55
  %i.hp = load double, ptr %i.eo, align 8, !tbaa !57
  %i.hq = fmul double %.sroa.059.0.vec.extract, %i.hp
  %i.hr = fdiv double %i.hq, %i.ar
  %i.hs = fadd double %i.ft, %i.hr
  %i.ht = getelementptr i8, ptr %i.fn, i64 40
  store double %i.hs, ptr %i.ht, align 8, !tbaa !55
  %i.hu = getelementptr i8, ptr %i.fn, i64 64
  store double %i.fx, ptr %i.hu, align 8, !tbaa !55
  %i.hv = getelementptr i8, ptr %i.fn, i64 88
  store double %i.gf, ptr %i.hv, align 8, !tbaa !55
  %i.hw = getelementptr i8, ptr %i.fn, i64 112
  store double 0.000000e+00, ptr %i.hw, align 8, !tbaa !55
  %i.hx = load double, ptr %i.eo, align 8, !tbaa !57
  %i.hy = fdiv double %i.hx, %i.ar
  %i.hz = fsub double %i.gi, %i.hy
  %i.ia = getelementptr i8, ptr %i.fn, i64 136
  store double %i.hz, ptr %i.ia, align 8, !tbaa !55
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o23EdgeStereoSE3ProjectXYZD0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 424) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE16allVerticesFixedEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !120, !range !136, !noundef !114
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !120, !range !136, !noundef !114
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o23EdgeStereoSE3ProjectXYZ12computeErrorEv(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.05.0.copyload = load <2 x double>, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.j = load double, ptr %i.i, align 8, !tbaa !55, !noalias !137 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.l = load double, ptr %i.k, align 8, !tbaa !55, !noalias !137 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.n = load double, ptr %i.m, align 8, !tbaa !55, !noalias !137 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.p = load double, ptr %i.o, align 8, !tbaa !55, !noalias !137 ; 2 uses
  %i.q = fneg double %i.p
  %i.r = fmul double %i.n, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.r)
  %i.t = load double, ptr %i.h, align 8, !tbaa !55, !noalias !137 ; 2 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !55, !noalias !137 ; 4 uses
  %i.v = fneg double %i.l
  %i.w = fmul double %i.u, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.n, double %i.t, double %i.w)
  %i.y = fneg double %i.t
  %i.z = fmul double %i.j, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.u, double %i.p, double %i.z) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.s, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.x, i64 1 ; 2 uses
  %i.ab = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ac = fadd double %i.aa, %i.aa                ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !55, !noalias !148 ; 2 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.af = fneg double %.sroa.027.8.vec.extract.i.i.i.i
end_hunk_0
