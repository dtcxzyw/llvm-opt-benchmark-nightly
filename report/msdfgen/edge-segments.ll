Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-segments?download=true
inline.NumInlined: 310
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen12CubicSegment15directionChangeEd:bb.a
  %i.t = fmul <2 x double> %i.s, %i.n
  %i.u = fadd <2 x double> %i.q, %i.t             ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %i.u, i64 0
  %i.v = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %i.u, i64 1
  %vec2struct42 = insertvalue { double, double } %i.v, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %vec2struct42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK7msdfgen13LinearSegment6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.01.0.copyload = load double, ptr %i.b, align 8, !tbaa !17
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !17
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !17
  %i.c = fsub double %.sroa.01.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.d = fsub double %.sroa.22.0.copyload, %.sroa.2.0.copyload ; 2 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.e)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.f)
  ret double %sqrt.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_ZNK7msdfgen16QuadraticSegment6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x double>, ptr %i.a, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.247.0.copyload = load double, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <2 x double>, ptr %i.b, align 8, !tbaa !17 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 1
  %i.g = fsub double %i.f, %.sroa.247.0.copyload  ; 2 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !17
  %i.i = fsub <2 x double> %i.h, %i.e             ; 2 uses
  %i.j = shufflevector <2 x double> %i.e, <2 x double> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = insertelement <2 x double> %i.c, double %i.g, i64 1 ; 3 uses
  %i.l = fsub <2 x double> %i.j, %i.k             ; 6 uses
  %foldExtExtBinop = fsub <2 x double> %i.i, %i.l ; 3 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = insertelement <2 x double> %i.l, double %i.g, i64 0
  %i.o = fmul <2 x double> %i.m, %i.n
  %i.p = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x double> %i.l, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.q, <2 x double> %i.o) ; 5 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 4 uses
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 4 uses
  %i.u = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fneg <2 x double> %foldExtExtBinop
  %i.w = shufflevector <2 x double> %i.k, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.x = fmul <2 x double> %i.u, %i.w
  %i.y = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.l, <2 x double> %i.x) ; 4 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.ab = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aa) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1 ; 4 uses
  %foldExtExtBinop58 = fadd <2 x double> %i.z, %i.r
  %foldExtExtBinop60 = fadd <2 x double> %i.r, %foldExtExtBinop58
  %i.ad = extractelement <2 x double> %foldExtExtBinop60, i64 0
  %i.ae = fadd double %i.s, %i.ad
  %i.af = tail call double @sqrt(double noundef %i.ae) #17 ; 2 uses
  %i.ag = fadd double %i.t, %i.s
  %i.ah = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ai = fneg double %i.ah
  %i.aj = fmul double %i.t, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.aj)
  %foldExtExtBinop62 = fmul <2 x double> %i.z, %i.z
  %i.al = extractelement <2 x double> %foldExtExtBinop62, i64 1
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.af, double %i.t)
  %i.an = fadd double %i.s, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double %i.t)
  %i.ap = fdiv double %i.an, %i.ao
  %i.aq = tail call double @log(double noundef %i.ap) #17
  %i.ar = fmul double %i.aq, %i.al
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ak, double %i.ar)
  %i.at = fmul double %i.s, %i.ac
  %i.au = fdiv double %i.as, %i.at
  ret double %i.au
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define { double, double } @_ZNK7msdfgen13LinearSegment14signedDistanceENS_7Vector2ERd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double %1, double %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x double>, ptr %.sroa.231.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.g = insertelement <2 x double> %i.f, double %1, i64 0
  %i.h = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fsub <2 x double> %i.g, %i.h             ; 7 uses
  %i.j = insertelement <2 x double> %i.e, double %2, i64 0
  %i.k = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fsub <2 x double> %i.j, %i.k             ; 7 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x double> %i.m, %i.l
  %i.o = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.i, <2 x double> %i.n) ; 3 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = extractelement <2 x double> %i.p, i64 1  ; 4 uses
  %i.s = fdiv double %i.q, %i.r                   ; 4 uses
  store double %i.s, ptr %3, align 8, !tbaa !17
  %i.t = fcmp ogt double %i.s, 5.000000e-01
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %.sroa.016.0.copyload = load double, ptr %i.v, align 8, !tbaa !17
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.217.0.copyload = load double, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !17
  %i.w = fsub double %.sroa.016.0.copyload, %1    ; 3 uses
  %i.x = fsub double %.sroa.217.0.copyload, %2    ; 3 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.y) ; 2 uses
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.z) ; 5 uses
  %i.aa = fcmp ogt double %i.s, 0.000000e+00
  %i.ab = fcmp olt double %i.s, 1.000000e+00
  %or.cond = and i1 %i.aa, %i.ab
  br i1 %or.cond, label %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %i.ac = extractelement <2 x double> %i.i, i64 1
  %.pre = fneg double %i.ac
  %.pre63 = tail call noundef double @llvm.sqrt.f64(double %i.r) ; 2 uses
  %i.ad = extractelement <2 x double> %i.l, i64 1
  %.pre64 = fdiv double %i.ad, %.pre63
  br label %.critedge

_ZNK7msdfgen7Vector214getOrthonormalEbb.exit:     ; preds = %bb.a
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.r) ; 2 uses
  %i.ae = fcmp une double %i.r, 0.000000e+00
  %i.af = extractelement <2 x double> %i.i, i64 1
  %i.ag = fneg double %i.af                       ; 2 uses
  %i.ah = insertelement <2 x double> %i.l, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x double> %i.ah, %i.aj          ; 2 uses
  %i.al = insertelement <2 x i1> poison, i1 %i.ae, i64 0
  %i.am = shufflevector <2 x i1> %i.al, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> %i.ak, <2 x double> <double -1.000000e+00, double 0.000000e+00> ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.l, %i.an
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ap = extractelement <2 x double> %i.i, i64 0
  %i.aq = extractelement <2 x double> %i.an, i64 1
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.ao) ; 2 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp uge double %i.as, %sqrt.i
  %i.au = extractelement <2 x double> %i.ak, i64 1
  br i1 %i.at, label %.critedge, label %bb.b

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit
  %.pre-phi65 = phi double [ %.pre64, %..critedge_crit_edge ], [ %i.au, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit ]
  %sqrt.i.i48.pre-phi = phi double [ %.pre63, %..critedge_crit_edge ], [ %sqrt.i.i, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit ]
  %.pre-phi = phi double [ %.pre, %..critedge_crit_edge ], [ %i.ag, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit ]
  %i.av = fneg double %sqrt.i
  %i.aw = fdiv double %i.x, %sqrt.i
  %i.ax = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x double> %i.ax, double %i.z, i64 1
  %i.az = fcmp une <2 x double> %i.ay, zeroinitializer ; 3 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 0
  %.sroa.3.1.i = select i1 %i.ba, double %.pre-phi65, double 1.000000e+00
  %i.bb = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x double> %i.bb, double %i.w, i64 1
  %i.bd = insertelement <2 x double> poison, double %sqrt.i.i48.pre-phi, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %sqrt.i, i64 1
  %i.bf = fdiv <2 x double> %i.bc, %i.be
  %i.bg = extractelement <2 x i1> %i.az, i64 1
  %.sroa.3.1.i53 = select i1 %i.bg, double %i.aw, double 1.000000e+00
  %i.bh = select <2 x i1> %i.az, <2 x double> %i.bf, <2 x double> zeroinitializer ; 2 uses
  %i.bi = insertelement <2 x double> %i.l, double %.sroa.3.1.i, i64 1
  %i.bj = insertelement <2 x double> poison, double %.pre-phi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %.sroa.3.1.i53, i64 1
  %i.bl = fmul <2 x double> %i.bi, %i.bk
  %i.bm = shufflevector <2 x double> %i.i, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bn = shufflevector <2 x double> %i.l, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bn, <2 x double> %i.bl) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, double %sqrt.i, double %i.av
  %i.bs = extractelement <2 x double> %i.bo, i64 1
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit, %.critedge
  %.sroa.062.0.a = phi double [ %i.bt, %.critedge ], [ 0.000000e+00, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit ]
  %.sroa.3.0 = phi double [ %i.br, %.critedge ], [ %i.ar, %_ZNK7msdfgen7Vector214getOrthonormalEbb.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.3.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.062.0.a, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { double, double } @_ZNK7msdfgen16QuadraticSegment14signedDistanceENS_7Vector2ERd(ptr noundef nonnull align 8 dereferenceable(64) %0, double %1, double %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0123.0.copyload = load double, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.2124.0.copyload = load double, ptr %.sroa.2124.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.sroa.0116.0.copyload = load double, ptr %i.d, align 8, !tbaa !17
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.sroa.2117.0.copyload = load double, ptr %.sroa.2117.0..sroa_idx, align 8, !tbaa !17
  %i.e = fsub double %.sroa.0116.0.copyload, %.sroa.0123.0.copyload
  %i.f = fsub double %.sroa.2117.0.copyload, %.sroa.2124.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !17 ; 3 uses
  %i.h = insertelement <2 x double> poison, double %1, i64 0
  %i.i = insertelement <2 x double> %i.h, double %2, i64 1
  %i.j = fsub <2 x double> %i.g, %i.i             ; 5 uses
  %i.k = extractelement <2 x double> %i.g, i64 0
  %i.l = fsub double %.sroa.0123.0.copyload, %i.k ; 7 uses
  %i.m = extractelement <2 x double> %i.g, i64 1
  %i.n = fsub double %.sroa.2124.0.copyload, %i.m ; 7 uses
  %i.o = fsub double %i.e, %i.l                   ; 4 uses
  %i.p = fsub double %i.f, %i.n                   ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0 ; 2 uses
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.r, %i.s
  %i.u = insertelement <2 x double> poison, double %i.o, i64 0 ; 2 uses
  %i.v = insertelement <2 x double> %i.u, double %i.l, i64 1
  %i.w = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.w, <2 x double> %i.t) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = fmul double %i.y, 3.000000e+00
  %i.aa = fmul double %i.n, %i.n
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.aa)
  %i.ac = extractelement <2 x double> %i.j, i64 1 ; 6 uses
  %i.ad = fmul double %i.ac, %i.p
  %i.ae = extractelement <2 x double> %i.j, i64 0 ; 5 uses
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.o, double %i.ad)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ab, double 2.000000e+00, double %i.af)
  %i.ah = fmul double %i.ac, %i.n
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.l, double %i.ah)
  %i.aj = extractelement <2 x double> %i.x, i64 0
  %i.ak = call noundef i32 @_ZN7msdfgen10solveCubicEPddddd(ptr noundef nonnull %i.a, double noundef %i.aj, double noundef %i.z, double noundef %i.ag, double noundef %i.ai) ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call { double, double } %i.an(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef 0.000000e+00) ; 2 uses
  %i.ap = extractvalue { double, double } %i.ao, 0 ; 4 uses
  %i.aq = extractvalue { double, double } %i.ao, 1 ; 4 uses
  %i.ar = fneg double %i.ae
  %i.as = fmul double %i.ac, %i.ac
  %i.at = fmul double %i.aq, %i.ar
  %i.au = insertelement <2 x double> %i.j, double %i.ap, i64 1
  %i.av = insertelement <2 x double> poison, double %i.as, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.at, i64 1
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.j, <2 x double> %i.aw) ; 3 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 1
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  %i.ba = fmul double %i.ac, %i.aq
  %i.bb = call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ap, double %i.ba)
  %i.bc = fneg double %i.bb
  %i.bd = fmul double %i.aq, %i.aq
  %i.be = call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.bd)
  %i.bf = fdiv double %i.bc, %i.be                ; 2 uses
  store double %i.bf, ptr %3, align 8, !tbaa !17
  %.sroa.065.0.copyload = load double, ptr %i.d, align 8, !tbaa !17
  %.sroa.266.0.copyload = load double, ptr %.sroa.2117.0..sroa_idx, align 8, !tbaa !17
  %i.bg = fsub double %.sroa.065.0.copyload, %1   ; 2 uses
  %i.bh = fsub double %.sroa.266.0.copyload, %2   ; 2 uses
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.bi)
  %i.bk = insertelement <2 x double> %i.ax, double %i.bj, i64 1
  %i.bl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bk) ; 4 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0 ; 3 uses
  %i.bn = fneg double %i.bm
  %i.bo = select i1 %i.az, double %i.bm, double %i.bn
  %i.bp = call double @llvm.fabs.f64(double %i.bm)
  %i.bq = extractelement <2 x double> %i.bl, i64 1 ; 3 uses
  %i.br = fcmp olt double %i.bq, %i.bp
  br i1 %i.br, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %0, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call { double, double } %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef 1.000000e+00) ; 2 uses
  %i.bw = extractvalue { double, double } %i.bv, 0 ; 3 uses
  %i.bx = extractvalue { double, double } %i.bv, 1 ; 3 uses
  %.sroa.056.0.copyload = load double, ptr %i.d, align 8, !tbaa !17
  %.sroa.257.0.copyload = load double, ptr %.sroa.2117.0..sroa_idx, align 8, !tbaa !17
  %i.by = fsub double %.sroa.056.0.copyload, %1
  %i.bz = fneg double %i.by
  %i.ca = fneg double %i.bq
  %.sroa.048.0.copyload = load double, ptr %i.c, align 8, !tbaa !17
  %.sroa.249.0.copyload = load double, ptr %.sroa.2124.0..sroa_idx, align 8, !tbaa !17
  %i.cb = fsub double %2, %.sroa.249.0.copyload
  %i.cc = insertelement <2 x double> poison, double %.sroa.257.0.copyload, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %1, i64 1
  %i.ce = insertelement <2 x double> poison, double %2, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %.sroa.048.0.copyload, i64 1
  %i.cg = fsub <2 x double> %i.cd, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.cb, i64 1
  %i.cl = fmul <2 x double> %i.ci, %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cg, <2 x double> %i.cl) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %i.cr = select i1 %i.cq, double %i.bq, double %i.ca
  %i.cs = fmul double %i.bx, %i.bx
  %i.ct = call noundef double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.cs)
  %i.cu = extractelement <2 x double> %i.co, i64 1
  %i.cv = fdiv double %i.cu, %i.ct                ; 2 uses
  store double %i.cv, ptr %3, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cw = phi double [ %i.cv, %bb.b ], [ %i.bf, %bb.a ] ; 2 uses
  %.0 = phi double [ %i.cr, %bb.b ], [ %i.bo, %bb.a ] ; 2 uses
  %i.cx = icmp sgt i32 %i.ak, 0
  br i1 %i.cx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.cy = phi double [ %i.cw, %bb.c ], [ %i.ee, %bb.f ] ; 3 uses
  %.1.lcssa = phi double [ %.0, %bb.c ], [ %.3, %bb.f ]
  %i.cz = fcmp ult double %i.cy, 0.000000e+00
  %i.da = fcmp ugt double %i.cy, 1.000000e+00
  %or.cond143 = or i1 %i.cz, %i.da
  br i1 %or.cond143, label %bb.g, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.db = phi double [ %i.cw, %.lr.ph.preheader ], [ %i.ee, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.1202 = phi double [ %.0, %.lr.ph.preheader ], [ %.3, %bb.f ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !17 ; 9 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %i.df = fcmp olt double %i.dd, 1.000000e+00
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.dg = fmul nnan double %i.dd, 2.000000e+00    ; 2 uses
  %i.dh = fmul double %i.l, %i.dg
  %i.di = fmul double %i.n, %i.dg
  %i.dj = fadd double %i.ae, %i.dh
  %i.dk = fadd double %i.ac, %i.di
  %i.dl = fmul nnan double %i.dd, %i.dd           ; 2 uses
  %i.dm = fmul double %i.o, %i.dl
  %i.dn = fmul double %i.p, %i.dl
  %i.do = fadd double %i.dm, %i.dj                ; 3 uses
  %i.dp = fadd double %i.dn, %i.dk                ; 3 uses
  %i.dq = fmul double %i.dp, %i.dp
  %i.dr = call double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.dq)
  %sqrt.i165 = call noundef double @llvm.sqrt.f64(double %i.dr) ; 3 uses
  %i.ds = call double @llvm.fabs.f64(double %.1202)
  %i.dt = fcmp ugt double %sqrt.i165, %i.ds
  br i1 %i.dt, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.du = fmul double %i.o, %i.dd
  %i.dv = fmul double %i.p, %i.dd
  %i.dw = fadd double %i.l, %i.du
  %i.dx = fadd double %i.n, %i.dv
  %i.dy = fneg double %i.do
  %i.dz = fmul double %i.dx, %i.dy
  %i.ea = call noundef double @llvm.fmuladd.f64(double %i.dw, double %i.dp, double %i.dz)
  %i.eb = fcmp ogt double %i.ea, 0.000000e+00
  %i.ec = fneg double %sqrt.i165
  %i.ed = select i1 %i.eb, double %sqrt.i165, double %i.ec
  store double %i.dd, ptr %3, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.lr.ph
  %i.ee = phi double [ %i.db, %.lr.ph ], [ %i.dd, %bb.e ], [ %i.db, %bb.d ] ; 2 uses
  %.3 = phi double [ %.1202, %.lr.ph ], [ %i.ed, %bb.e ], [ %.1202, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

bb.g:                                             ; preds = %._crit_edge
  %i.ef = fcmp olt double %i.cy, 5.000000e-01
  %i.eg = load ptr, ptr %0, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  br i1 %i.ef, label %bb.h, label %bb.i
end_hunk_0
