inline.NumInlined: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z16pj_conformal_latdPK8PJconsts:bb.a
  %i.m = tail call double @atan(double noundef %i.l) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.m, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define hidden noundef double @_Z24pj_conformal_lat_inversedPK8PJconsts(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !38
  %i.e = tail call double @tan(double noundef %0) #12
  %i.f = tail call noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef %i.d, double noundef %i.e, double noundef %i.b)
  %i.g = tail call double @atan(double noundef %i.f) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.g, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

declare noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.c = fcmp ult double %i.b, f0x3E7AD7F29ABCAF48
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul double %0, %i.b                     ; 3 uses
  %i.e = fneg double %i.d
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.d, double 1.000000e+00) ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = tail call double @atanh(double noundef %i.d) #12
  %i.k = insertelement <2 x double> poison, double %0, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = insertelement <2 x double> poison, double %i.f, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.b, i64 1
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 2 uses
  %shift = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.o, %shift
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.q = fmul double %i.i, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = fmul double %0, 2.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi double [ %i.r, %bb.d ], [ %i.q, %bb.c ], [ +inf, %bb.b ]
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z30pj_authalic_lat_compute_coeffsd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp olt double %i.a, 1.000000e-02       ; 2 uses
  %i.c = select i1 %i.b, i64 96, i64 48
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #13 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %i.d)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef 0, i32 noundef 5, ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ult i32 %1, 6
  %i.a = icmp ult i32 %2, 6
  %or.cond5 = and i1 %or.cond, %i.a
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = mul nuw nsw i32 %2, 6
  %i.e = add nuw nsw i32 %i.d, %1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE4ptrs, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40   ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.n = insertelement <2 x double> poison, double %0, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = insertelement <2 x double> <double 1.000000e+00, double poison>, double %0, i64 1
  %i.q = fmul <2 x double> %i.o, %i.p             ; 5 uses
  %i.r = or i32 %2, %1
  %or.cond7 = icmp samesign ult i32 %i.r, 4
  %i.s = sext i32 %i.h to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.s ; 5 uses
  br i1 %or.cond7, label %_Z10pj_polyvaldPKdi.exit.5, label %_Z10pj_polyvaldPKdi.exit65.5

_Z10pj_polyvaldPKdi.exit.5:                       ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !41
  %i.w = add i32 %i.h, 3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !41
  %i.ab = load <2 x double>, ptr %i.t, align 8, !tbaa !41 ; 2 uses
  %i.ac = load <2 x double>, ptr %i.y, align 8, !tbaa !41 ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.af = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ag)
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.af, <2 x double> %i.ai)
  %i.ak = fmul <2 x double> %i.q, %i.aj
  store <2 x double> %i.ak, ptr %3, align 8, !tbaa !41
  %i.al = extractelement <2 x double> %i.q, i64 1
  %4 = fmul double %0, %i.al                      ; 2 uses
  %i.am = add i32 %i.h, 6
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = fmul double %0, %4                         ; 2 uses
  %i.aq = add i32 %i.h, 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.ar
  %i.at = load <2 x double>, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <2 x double> %i.at, <2 x double> %i.au, <2 x i32> <i32 0, i32 2>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.af, <2 x double> %i.aw)
  %i.ay = insertelement <2 x double> poison, double %4, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %5, i64 1
  %i.ba = fmul <2 x double> %i.az, %i.ax
  store <2 x double> %i.ba, ptr %i.ap, align 8, !tbaa !41
  %i.bb = add i32 %i.h, 10
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !41
  %i.bf = fmul double %0, %5                      ; 2 uses
  %i.bg = fmul double %i.bf, %i.be
  br label %.loopexit

_Z10pj_polyvaldPKdi.exit65.5:                     ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %reass.sub = add i32 %i.h, 6
  %i.bj = sext i32 %reass.sub to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = extractelement <2 x double> %i.q, i64 1
  %i.bo = load <2 x double>, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bi, align 8, !tbaa !41 ; 2 uses
  %i.bq = load <2 x double>, ptr %i.t, align 8, !tbaa !41 ; 2 uses
  %i.br = load double, ptr %i.bl, align 8, !tbaa !41
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bt = insertelement <2 x double> <double poison, double -0.000000e+00>, double %0, i64 0 ; 3 uses
  %i.bu = insertelement <2 x double> %i.bo, double %i.br, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bt, <2 x double> %i.bu)
  %i.bw = load <2 x double>, ptr %i.bm, align 8, !tbaa !41 ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.by = shufflevector <2 x double> %i.bp, <2 x double> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bx, <2 x double> %i.by)
  %i.ca = shufflevector <2 x double> %i.bp, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bx, <2 x double> %i.ca)
  %i.cc = load <2 x double>, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.cd = shufflevector <2 x double> %i.bq, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.bx, <2 x double> %i.cd)
  %i.cf = shufflevector <2 x double> %i.bq, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.bx, <2 x double> %i.cf)
  %i.ch = insertelement <2 x double> %i.q, double %0, i64 0
  %i.ci = fmul <2 x double> %i.ch, %i.cg
  store <2 x double> %i.ci, ptr %3, align 8, !tbaa !41
  %i.cj = add i32 %i.h, 11
  %6 = fmul double %0, %i.bn                      ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = add i32 %i.h, 15
  %7 = fmul double %0, %6                         ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load <2 x double>, ptr %i.cm, align 8, !tbaa !41 ; 2 uses
  %i.ct = load <2 x double>, ptr %i.cl, align 8, !tbaa !41 ; 2 uses
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !41
  %i.cv = shufflevector <2 x double> %i.cs, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cw = insertelement <2 x double> %i.cs, double %i.cu, i64 1
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.bt, <2 x double> %i.cw)
  %i.cy = load <2 x double>, ptr %i.cq, align 8, !tbaa !41 ; 2 uses
  %i.cz = shufflevector <2 x double> %i.ct, <2 x double> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.bx, <2 x double> %i.cz)
  %i.db = shufflevector <2 x double> %i.ct, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.bx, <2 x double> %i.db)
  %i.dd = insertelement <2 x double> poison, double %6, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %7, i64 1
  %i.df = fmul <2 x double> %i.de, %i.dc
  store <2 x double> %i.df, ptr %i.cn, align 8, !tbaa !41
  %i.dg = add i32 %i.h, 18
  %i.dh = fmul double %0, %7                      ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !41
  %i.dm = load double, ptr %i.dj, align 8, !tbaa !41
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dl, double %0, double %i.dm)
  %i.do = fmul double %i.dh, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_Z10pj_polyvaldPKdi.exit65.5, %_Z10pj_polyvaldPKdi.exit.5
  %.sink93 = phi double [ %i.do, %_Z10pj_polyvaldPKdi.exit65.5 ], [ %i.bg, %_Z10pj_polyvaldPKdi.exit.5 ]
  %.sink92 = phi i32 [ 20, %_Z10pj_polyvaldPKdi.exit65.5 ], [ 11, %_Z10pj_polyvaldPKdi.exit.5 ]
  %.sink = phi double [ %i.dh, %_Z10pj_polyvaldPKdi.exit65.5 ], [ %i.bf, %_Z10pj_polyvaldPKdi.exit.5 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %.sink93, ptr %i.dp, align 8, !tbaa !41
  %i.dq = add i32 %i.h, %.sink92
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !41
  %i.du = fmul double %0, %.sink
  %i.dv = fmul double %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !41
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink95 = phi ptr [ %i.l, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink95) #12
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_Z15pj_authalic_latdddPKdPK8PJconstsd(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.b = load double, ptr %i.a, align 8, !tbaa !42
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp olt double %i.c, 1.000000e-02
  br i1 %i.d, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = fsub double %2, %1
  %i.g = fmul double %i.f, 2.000000e+00
  %i.h = fadd double %1, %2
  %i.i = fmul double %i.h, %i.g                   ; 6 uses
  %i.j = fmul double %i.i, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = load double, ptr %i.k, align 8, !tbaa !41
  %i.m = fadd double %i.j, %i.l                   ; 2 uses
  %i.n = fmul double %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load double, ptr %i.o, align 8, !tbaa !41
  %i.q = fadd double %i.n, %i.p                   ; 2 uses
  %i.r = fneg double %i.m
  %i.s = tail call double @llvm.fmuladd.f64(double %i.i, double %i.q, double %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !41
  %i.v = fadd double %i.s, %i.u                   ; 2 uses
  %i.w = fneg double %i.q
  %i.x = tail call double @llvm.fmuladd.f64(double %i.i, double %i.v, double %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !41
  %i.aa = fadd double %i.x, %i.z                  ; 2 uses
  %i.ab = fneg double %i.v
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aa, double %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !41
  %i.af = fadd double %i.ac, %i.ae
  %i.ag = fneg double %i.aa
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.i, double %i.af, double %i.ag)
  %i.ai = load double, ptr %i.e, align 8, !tbaa !41
  %i.aj = fadd double %i.ah, %i.ai
  %i.ak = fmul double %1, 2.000000e+00
  %i.al = fmul double %i.ak, %2
  %i.am = fmul double %i.al, %i.aj
  %i.an = fadd double %0, %i.am
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8 ; 3 uses
  %i.aq = fcmp ult double %i.ap, f0x3E7AD7F29ABCAF48
  br i1 %i.aq, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = fmul double %1, %i.ap                   ; 3 uses
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double 1.000000e+00) ; 2 uses
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %_Z17pj_authalic_lat_qdPK8PJconsts.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.aw = load double, ptr %i.av, align 8, !tbaa !39
  %i.ax = tail call double @atanh(double noundef %i.ar) #12
  %i.ay = insertelement <2 x double> poison, double %1, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ap, i64 1
  %i.bc = fdiv <2 x double> %i.az, %i.bb          ; 2 uses
  %shift = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bc, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.be = fmul double %i.aw, %i.bd
  br label %_Z17pj_authalic_lat_qdPK8PJconsts.exit

bb.e:                                             ; preds = %bb.b
  %i.bf = fmul double %1, 2.000000e+00
  br label %_Z17pj_authalic_lat_qdPK8PJconsts.exit

_Z17pj_authalic_lat_qdPK8PJconsts.exit:           ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi double [ %i.bf, %bb.e ], [ %i.be, %bb.d ], [ +inf, %bb.c ]
  %i.bg = fdiv double %.1.i, %5                   ; 3 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, 1.000000e+00
  %i.bj = fcmp ogt double %i.bg, 0.000000e+00
  %i.bk = select i1 %i.bj, double 1.000000e+00, double -1.000000e+00
  %.0 = select i1 %i.bi, double %i.bk, double %i.bg
  %i.bl = tail call double @asin(double noundef %.0) #12
  br label %bb.f

bb.f:                                             ; preds = %_Z17pj_authalic_lat_qdPK8PJconsts.exit, %.lr.ph.i.i
  %.013 = phi double [ %i.an, %.lr.ph.i.i ], [ %i.bl, %_Z17pj_authalic_lat_qdPK8PJconsts.exit ]
  ret double %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_Z17pj_auxlat_convertdddPKdi(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = fsub double %2, %1
  %i.b = fmul double %i.a, 2.000000e+00
  %i.c = fadd double %1, %2
  %i.d = fmul double %i.c, %i.b                   ; 5 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %_Z11pj_clenshawddPKdi.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext nneg i32 %4 to i64                  ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.preheader.i ]
  %.01417.i.prol = phi double [ %i.k, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ] ; 3 uses
  %.01516.i.prol = phi double [ %.01417.i.prol, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.g = fneg double %.01516.i.prol
  %i.h = tail call double @llvm.fmuladd.f64(double %i.d, double %.01417.i.prol, double %i.g)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.prol
  %i.j = load double, ptr %i.i, align 8, !tbaa !41
  %i.k = fadd double %i.h, %i.j                   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !43

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.f, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01417.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %.01516.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.01417.i.prol, %.lr.ph.i.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i32 %4, 4
  br i1 %i.l, label %_Z11pj_clenshawddPKdi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01417.i = phi double [ %i.ai, %.lr.ph.i ], [ %.01417.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.01516.i = phi double [ %i.ad, %.lr.ph.i ], [ %.01516.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.m = fneg double %.01516.i
  %i.n = tail call double @llvm.fmuladd.f64(double %i.d, double %.01417.i, double %i.m)
  %i.o = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load double, ptr %i.p, align 8, !tbaa !41
  %i.r = fadd double %i.n, %i.q                   ; 2 uses
  %i.s = fneg double %.01417.i
  %i.t = tail call double @llvm.fmuladd.f64(double %i.d, double %i.r, double %i.s)
  %i.u = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %i.w = load double, ptr %i.v, align 8, !tbaa !41
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = fneg double %i.r
  %i.z = tail call double @llvm.fmuladd.f64(double %i.d, double %i.x, double %i.y)
end_hunk_0
