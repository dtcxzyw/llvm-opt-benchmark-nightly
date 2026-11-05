Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvartypes?download=true
inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12colvarmodule8rotationC2EdRKNS_7rvectorE:bb.a
  %i.j = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.i)
  %i.k = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j) ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00       ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.n = fdiv double %i.d, %sqrt.i.i
  %i.o = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.h, %i.p
  %.sink4.i = select i1 %i.m, double %i.n, double 1.000000e+00
  %i.r = insertelement <2 x i1> poison, i1 %i.m, i64 0
  %i.s = shufflevector <2 x i1> %i.r, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x double> %i.q, <2 x double> zeroinitializer
  %i.u = tail call noundef double @cos(double noundef %i.f) #18
  %i.v = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.g, i64 1
  %i.w = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.x = insertelement <4 x double> poison, double %i.u, i64 0
  %i.y = insertelement <4 x double> %i.x, double %.sink4.i, i64 1
  %i.z = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x double> %i.y, <4 x double> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ab = fmul <4 x double> %i.w, %i.aa
  store <4 x double> %i.ab, ptr %i.a, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.ac, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN12colvarmodule8rotationD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(568) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = load ptr, ptr %2, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load <2 x double>, ptr %0, align 8, !tbaa !55
  %i.n = load <2 x double>, ptr %i.i, align 8, !tbaa !55
  %i.o = load <2 x double>, ptr %i.j, align 8, !tbaa !55
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !55
  %.promoted54 = load double, ptr %i.l, align 8, !tbaa !61
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.q = phi double [ %.promoted54, %.lr.ph ], [ %i.ao, %bb.b ]
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.s = phi <2 x double> [ %i.n, %.lr.ph ], [ %i.af, %bb.b ]
  %i.t = phi <2 x double> [ %i.o, %.lr.ph ], [ %i.ai, %bb.b ]
  %i.u = phi <2 x double> [ %i.p, %.lr.ph ], [ %i.an, %bb.b ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.039 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.039 ; 2 uses
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !55 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !30 ; 3 uses
  %i.aa = load <2 x double>, ptr %i.v, align 8, !tbaa !55 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.x, <2 x double> %i.r) ; 2 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.z, i64 0
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ae, <2 x double> %i.s) ; 2 uses
  %i.ag = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x double> %i.ad, double %i.z, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ah, <2 x double> %i.t) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.x, <2 x double> %i.u) ; 2 uses
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.z, double %i.q) ; 2 uses
  %i.ap = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b
  store <2 x double> %i.ac, ptr %0, align 8, !tbaa !55
  store <2 x double> %i.af, ptr %i.i, align 8, !tbaa !55
  store <2 x double> %i.ai, ptr %i.j, align 8, !tbaa !55
  store <2 x double> %i.an, ptr %i.k, align 8, !tbaa !55
  store double %i.ao, ptr %i.l, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN12colvarmodule8rotation22compute_overlap_matrixEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) initializes((72, 200)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !63  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !64 ; 4 uses
  %i.d = fadd double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load double, ptr %i.e, align 8, !tbaa !61 ; 4 uses
  %i.g = fadd double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !65 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load double, ptr %i.k, align 8, !tbaa !66 ; 2 uses
  %i.m = fsub double %i.j, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.m, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.m, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !68 ; 2 uses
  %i.t = fsub double %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.t, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.t, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !69 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !70 ; 2 uses
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.aa, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.aa, ptr %i.ac, align 8, !tbaa !55
  %i.ad = fsub double %i.a, %i.c
  %i.ae = fsub double %i.ad, %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = fadd double %i.x, %i.z                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ag, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ag, ptr %i.ai, align 8, !tbaa !55
  %i.aj = fadd double %i.q, %i.s                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.aj, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.aj, ptr %i.al, align 8, !tbaa !55
  %i.am = fsub double %i.c, %i.a
  %i.an = fsub double %i.am, %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = fadd double %i.j, %i.l                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.ap, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ap, ptr %i.ar, align 8, !tbaa !55
  %i.as = fneg double %i.a
  %i.at = fsub double %i.as, %i.c
  %i.au = fadd double %i.at, %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.au, ptr %i.av, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN2NR18diagonalize_matrixEPA4_dPdS1_(ptr noundef %0, ptr noundef initializes((0, 32)) %1, ptr noundef initializes((0, 128)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.b = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.d = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %2) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !55 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.f, %i.f
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = extractelement <2 x double> %i.f, i64 1  ; 2 uses
  %i.h = call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %3)
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !55 ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.h)
  %i.l = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.m = call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = call noundef double @sqrt(double noundef %i.m) #18
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fdiv <2 x double> %i.f, %i.p
  store <2 x double> %i.q, ptr %2, align 8, !tbaa !55
  %i.r = fdiv <2 x double> %i.i, %i.p
  store <2 x double> %i.r, ptr %i.e, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !55 ; 4 uses
  %foldExtExtBinop33 = fmul <2 x double> %i.u, %i.u
  %4 = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.v = extractelement <2 x double> %i.u, i64 1  ; 2 uses
  %i.w = call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %4)
  %i.x = load <2 x double>, ptr %i.t, align 8, !tbaa !55 ; 3 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.w)
  %i.aa = extractelement <2 x double> %i.x, i64 1 ; 2 uses
  %i.ab = call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.z)
  %i.ac = call noundef double @sqrt(double noundef %i.ab) #18
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fdiv <2 x double> %i.u, %i.ae
  store <2 x double> %i.af, ptr %i.s, align 8, !tbaa !55
  %i.ag = fdiv <2 x double> %i.x, %i.ae
  store <2 x double> %i.ag, ptr %i.t, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ah, align 8, !tbaa !55 ; 4 uses
  %foldExtExtBinop35 = fmul <2 x double> %i.aj, %i.aj
  %5 = extractelement <2 x double> %foldExtExtBinop35, i64 0
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.al = call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %5)
  %i.am = load <2 x double>, ptr %i.ai, align 8, !tbaa !55 ; 3 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.ao = call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.al)
  %i.ap = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.ao)
  %i.ar = call noundef double @sqrt(double noundef %i.aq) #18
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fdiv <2 x double> %i.aj, %i.at
  store <2 x double> %i.au, ptr %i.ah, align 8, !tbaa !55
  %i.av = fdiv <2 x double> %i.am, %i.at
  store <2 x double> %i.av, ptr %i.ai, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.aw, align 8, !tbaa !55 ; 4 uses
  %foldExtExtBinop37 = fmul <2 x double> %i.ay, %i.ay
  %6 = extractelement <2 x double> %foldExtExtBinop37, i64 0
  %i.az = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.ba = call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %6)
  %i.bb = load <2 x double>, ptr %i.ax, align 8, !tbaa !55 ; 3 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0 ; 2 uses
  %i.bd = call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.ba)
  %i.be = extractelement <2 x double> %i.bb, i64 1 ; 2 uses
  %i.bf = call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bd)
  %i.bg = call noundef double @sqrt(double noundef %i.bf) #18
  %i.bh = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = fdiv <2 x double> %i.ay, %i.bi
  store <2 x double> %i.bj, ptr %i.aw, align 8, !tbaa !55
  %i.bk = fdiv <2 x double> %i.bb, %i.bi
  store <2 x double> %i.bk, ptr %i.ax, align 8, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.025 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(568) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca [4 x [4 x %"class.colvarmodule::rvector"]], align 16 ; 50 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.colvarmodule::quaternion", align 16 ; 13 uses
  %8 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %9 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %10 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %47 = alloca %struct.rotation_derivative, align 8 ; 14 uses
  %48 = alloca %"class.colvarmodule::rvector", align 8 ; 8 uses
  %49 = alloca %"struct.std::array", align 8      ; 17 uses
  %50 = alloca %"struct.std::array.51", align 16  ; 57 uses
  %i.j = alloca [4 x [4 x double]], align 16      ; 32 uses
  %i.k = alloca [4 x double], align 16            ; 8 uses
  %i.l = alloca [4 x [4 x double]], align 16      ; 18 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  store double %i.p, ptr %i.b, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load double, ptr %i.q, align 8, !tbaa !55
  store double %i.r, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  store double %i.t, ptr %i.d, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.v = load double, ptr %i.u, align 8, !tbaa !55
  store double %i.v, ptr %i.e, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = load <2 x double>, ptr %i.w, align 8, !tbaa !55
  store <2 x double> %i.y, ptr %7, align 16, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8, !tbaa !55
  store <2 x double> %i.ac, ptr %i.z, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load <2 x double>, ptr %i.ad, align 8, !tbaa !55
  store <2 x double> %i.af, ptr %8, align 16, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aj = load <2 x double>, ptr %i.ah, align 8, !tbaa !55
  store <2 x double> %i.aj, ptr %i.ag, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load <2 x double>, ptr %i.ak, align 8, !tbaa !55
  store <2 x double> %i.am, ptr %9, align 16, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aq = load <2 x double>, ptr %i.ao, align 8, !tbaa !55
  store <2 x double> %i.aq, ptr %i.an, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !55
  store <2 x double> %i.at, ptr %10, align 16, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !55
  store <2 x double> %i.ax, ptr %i.au, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ay = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !24 ; 14 uses
  %i.az = load i64, ptr @_ZN12colvarmodule7cv_precE, align 8, !tbaa !24 ; 14 uses
  call void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ay, i64 noundef %i.az)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %.noexc unwind label %bb.ct    ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.bb, ptr %16, align 8, !tbaa !33, !alias.scope !186
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !35 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.bc, ptr %16, align 8, !tbaa !40, !alias.scope !186
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !36
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !36, !alias.scope !186
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.bk = phi i64 [ %i.bg, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !35, !alias.scope !186
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !40
  store i64 0, ptr %i.bl, align 8, !tbaa !35
  store i8 0, ptr %i.bd, align 8, !tbaa !36
  %i.bn = add i64 %i.bk, -4611686018427387897
end_hunk_0
begin_hunk_1_@_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm:bb.a
  %i.aun = load <2 x double>, ptr %i.ajx, align 16, !tbaa !55
  %i.auo = insertelement <2 x double> %i.aul, double %i.aum, i64 1
  %i.aup = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.auo, <2 x double> %i.aun)
  store <2 x double> %i.aup, ptr %i.ajx, align 16, !tbaa !55
  %i.auq = load <2 x double>, ptr %i.aka, align 8
  %i.aur = load double, ptr %i.akc, align 16, !tbaa !55
  %i.aus = load <2 x double>, ptr %i.akb, align 16, !tbaa !55
  %i.aut = insertelement <2 x double> %i.auq, double %i.aur, i64 1
  %i.auu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.aut, <2 x double> %i.aus)
  store <2 x double> %i.auu, ptr %i.akb, align 16, !tbaa !55
  %i.auv = load <2 x double>, ptr %i.ake, align 8
  %i.auw = load double, ptr %i.akf, align 16, !tbaa !55
  %i.aux = load <2 x double>, ptr %i.akd, align 16, !tbaa !55
  %i.auy = insertelement <2 x double> %i.auv, double %i.auw, i64 1
  %i.auz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.auy, <2 x double> %i.aux)
  store <2 x double> %i.auz, ptr %i.akd, align 16, !tbaa !55
  %i.ava = load <2 x double>, ptr %i.akg, align 8
  %i.avb = load double, ptr %i.aki, align 16, !tbaa !55
  %i.avc = load <2 x double>, ptr %i.akh, align 16, !tbaa !55
  %i.avd = insertelement <2 x double> %i.ava, double %i.avb, i64 1
  %i.ave = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avd, <2 x double> %i.avc)
  store <2 x double> %i.ave, ptr %i.akh, align 16, !tbaa !55
  %i.avf = load <2 x double>, ptr %i.akk, align 8
  %i.avg = load double, ptr %i.akl, align 16, !tbaa !55
  %i.avh = load <2 x double>, ptr %i.akj, align 16, !tbaa !55
  %i.avi = insertelement <2 x double> %i.avf, double %i.avg, i64 1
  %i.avj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avi, <2 x double> %i.avh)
  store <2 x double> %i.avj, ptr %i.akj, align 16, !tbaa !55
  %i.avk = load <2 x double>, ptr %i.akm, align 8
  %i.avl = load double, ptr %i.ako, align 16, !tbaa !55
  %i.avm = load <2 x double>, ptr %i.akn, align 16, !tbaa !55
  %i.avn = insertelement <2 x double> %i.avk, double %i.avl, i64 1
  %i.avo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avn, <2 x double> %i.avm)
  store <2 x double> %i.avo, ptr %i.akn, align 16, !tbaa !55
  br label %.split751.us

.preheader.us.preheader:                          ; preds = %bb.ef
  %i.avp = load <2 x double>, ptr %50, align 16
  %i.avq = load double, ptr %i.akp, align 8, !tbaa !55
  %i.avr = load <2 x double>, ptr %i.j, align 16, !tbaa !55
  %i.avs = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.avt = shufflevector <2 x double> %i.avs, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.avu = insertelement <2 x double> %i.avp, double %i.avq, i64 1
  %i.avv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.avu, <2 x double> %i.avr)
  store <2 x double> %i.avv, ptr %i.j, align 16, !tbaa !55
  %i.avw = load <2 x double>, ptr %i.akq, align 16
  %i.avx = load double, ptr %i.aks, align 8, !tbaa !55
  %i.avy = load <2 x double>, ptr %i.akr, align 16, !tbaa !55
  %i.avz = insertelement <2 x double> %i.avw, double %i.avx, i64 1
  %i.awa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.avz, <2 x double> %i.avy)
  store <2 x double> %i.awa, ptr %i.akr, align 16, !tbaa !55
  %i.awb = load <2 x double>, ptr %i.akt, align 16
  %i.awc = load double, ptr %i.akv, align 8, !tbaa !55
  %i.awd = load <2 x double>, ptr %i.aku, align 16, !tbaa !55
  %i.awe = insertelement <2 x double> %i.awb, double %i.awc, i64 1
  %i.awf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awe, <2 x double> %i.awd)
  store <2 x double> %i.awf, ptr %i.aku, align 16, !tbaa !55
  %i.awg = load <2 x double>, ptr %i.akw, align 16
  %i.awh = load double, ptr %i.aky, align 8, !tbaa !55
  %i.awi = load <2 x double>, ptr %i.akx, align 16, !tbaa !55
  %i.awj = insertelement <2 x double> %i.awg, double %i.awh, i64 1
  %i.awk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awj, <2 x double> %i.awi)
  store <2 x double> %i.awk, ptr %i.akx, align 16, !tbaa !55
  %i.awl = load <2 x double>, ptr %i.akz, align 16
  %i.awm = load double, ptr %i.alb, align 8, !tbaa !55
  %i.awn = load <2 x double>, ptr %i.ala, align 16, !tbaa !55
  %i.awo = insertelement <2 x double> %i.awl, double %i.awm, i64 1
  %i.awp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awo, <2 x double> %i.awn)
  store <2 x double> %i.awp, ptr %i.ala, align 16, !tbaa !55
  %i.awq = load <2 x double>, ptr %i.alc, align 16
  %i.awr = load double, ptr %i.ale, align 8, !tbaa !55
  %i.aws = load <2 x double>, ptr %i.ald, align 16, !tbaa !55
  %i.awt = insertelement <2 x double> %i.awq, double %i.awr, i64 1
  %i.awu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awt, <2 x double> %i.aws)
  store <2 x double> %i.awu, ptr %i.ald, align 16, !tbaa !55
  %i.awv = load <2 x double>, ptr %i.alf, align 16
  %i.aww = load double, ptr %i.alh, align 8, !tbaa !55
  %i.awx = load <2 x double>, ptr %i.alg, align 16, !tbaa !55
  %i.awy = insertelement <2 x double> %i.awv, double %i.aww, i64 1
  %i.awz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awy, <2 x double> %i.awx)
  store <2 x double> %i.awz, ptr %i.alg, align 16, !tbaa !55
  %i.axa = load <2 x double>, ptr %i.ali, align 16
  %i.axb = load double, ptr %i.alk, align 8, !tbaa !55
  %i.axc = load <2 x double>, ptr %i.alj, align 16, !tbaa !55
  %i.axd = insertelement <2 x double> %i.axa, double %i.axb, i64 1
  %i.axe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.axd, <2 x double> %i.axc)
  store <2 x double> %i.axe, ptr %i.alj, align 16, !tbaa !55
  br label %.split751.us

.split748:                                        ; preds = %bb.ef
  %i.axf = icmp eq i64 %.038758, 2                ; 16 uses
  %.sroa.gep.val = load double, ptr %.sroa.gep, align 16
  %.val = load double, ptr %50, align 16
  %i.axg = select i1 %i.axf, double %.sroa.gep.val, double %.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 40, i64 24
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.axh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.axi = load <2 x double>, ptr %i.j, align 16, !tbaa !55
  %i.axj = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.axk = shufflevector <2 x double> %i.axj, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.axl = insertelement <2 x double> poison, double %i.axg, i64 0
  %i.axm = insertelement <2 x double> %i.axl, double %i.axh, i64 1
  %i.axn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axm, <2 x double> %i.axi)
  store <2 x double> %i.axn, ptr %i.j, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v = select i1 %i.axf, i64 64, i64 48
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v
  %i.axo = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v = select i1 %i.axf, i64 88, i64 72
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v
  %i.axp = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel, align 8, !tbaa !55
  %i.axq = load <2 x double>, ptr %i.all, align 16, !tbaa !55
  %i.axr = insertelement <2 x double> poison, double %i.axo, i64 0
  %i.axs = insertelement <2 x double> %i.axr, double %i.axp, i64 1
  %i.axt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axs, <2 x double> %i.axq)
  store <2 x double> %i.axt, ptr %i.all, align 16, !tbaa !55
  %.sroa.gep.sroa.gep788.val = load double, ptr %.sroa.gep.sroa.gep788, align 16
  %.sroa.gep763.sroa.gep789.val = load double, ptr %.sroa.gep763.sroa.gep789, align 16
  %i.axu = select i1 %i.axf, double %.sroa.gep.sroa.gep788.val, double %.sroa.gep763.sroa.gep789.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v = select i1 %i.axf, i64 136, i64 120
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v
  %i.axv = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel, align 8, !tbaa !55
  %i.axw = load <2 x double>, ptr %i.alm, align 16, !tbaa !55
  %i.axx = insertelement <2 x double> poison, double %i.axu, i64 0
  %i.axy = insertelement <2 x double> %i.axx, double %i.axv, i64 1
  %i.axz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axy, <2 x double> %i.axw)
  store <2 x double> %i.axz, ptr %i.alm, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v = select i1 %i.axf, i64 160, i64 144
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v
  %i.aya = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 184, i64 168
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v
  %i.ayb = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayc = load <2 x double>, ptr %i.aln, align 16, !tbaa !55
  %i.ayd = insertelement <2 x double> poison, double %i.aya, i64 0
  %i.aye = insertelement <2 x double> %i.ayd, double %i.ayb, i64 1
  %i.ayf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.aye, <2 x double> %i.ayc)
  store <2 x double> %i.ayf, ptr %i.aln, align 16, !tbaa !55
  %.sroa.gep.sroa.gep779.val = load double, ptr %.sroa.gep.sroa.gep779, align 16
  %.sroa.gep763.sroa.gep780.val = load double, ptr %.sroa.gep763.sroa.gep780, align 16
  %i.ayg = select i1 %i.axf, double %.sroa.gep.sroa.gep779.val, double %.sroa.gep763.sroa.gep780.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v = select i1 %i.axf, i64 232, i64 216
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v
  %i.ayh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel, align 8, !tbaa !55
  %i.ayi = load <2 x double>, ptr %i.alo, align 16, !tbaa !55
  %i.ayj = insertelement <2 x double> poison, double %i.ayg, i64 0
  %i.ayk = insertelement <2 x double> %i.ayj, double %i.ayh, i64 1
  %i.ayl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayk, <2 x double> %i.ayi)
  store <2 x double> %i.ayl, ptr %i.alo, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v = select i1 %i.axf, i64 256, i64 240
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v
  %i.aym = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 280, i64 264
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v
  %i.ayn = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayo = load <2 x double>, ptr %i.alp, align 16, !tbaa !55
  %i.ayp = insertelement <2 x double> poison, double %i.aym, i64 0
  %i.ayq = insertelement <2 x double> %i.ayp, double %i.ayn, i64 1
  %i.ayr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayq, <2 x double> %i.ayo)
  store <2 x double> %i.ayr, ptr %i.alp, align 16, !tbaa !55
  %.sroa.gep.sroa.gep770.val = load double, ptr %.sroa.gep.sroa.gep770, align 16
  %.sroa.gep763.sroa.gep771.val = load double, ptr %.sroa.gep763.sroa.gep771, align 16
  %i.ays = select i1 %i.axf, double %.sroa.gep.sroa.gep770.val, double %.sroa.gep763.sroa.gep771.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v = select i1 %i.axf, i64 328, i64 312
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v
  %i.ayt = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel, align 8, !tbaa !55
  %i.ayu = load <2 x double>, ptr %i.alq, align 16, !tbaa !55
  %i.ayv = insertelement <2 x double> poison, double %i.ays, i64 0
  %i.ayw = insertelement <2 x double> %i.ayv, double %i.ayt, i64 1
  %i.ayx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayw, <2 x double> %i.ayu)
  store <2 x double> %i.ayx, ptr %i.alq, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v = select i1 %i.axf, i64 352, i64 336
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v
  %i.ayy = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 376, i64 360
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v
  %i.ayz = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.aza = load <2 x double>, ptr %i.alr, align 16, !tbaa !55
  %i.azb = insertelement <2 x double> poison, double %i.ayy, i64 0
  %i.azc = insertelement <2 x double> %i.azb, double %i.ayz, i64 1
  %i.azd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.azc, <2 x double> %i.aza)
  store <2 x double> %i.azd, ptr %i.alr, align 16, !tbaa !55
  br label %.split751.us

.split751.us:                                     ; preds = %.preheader.us753.preheader, %.preheader.us.preheader, %.split748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.l, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.aze = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a)
  %.not.i570 = icmp eq i32 %i.aze, 0
  br i1 %.not.i570, label %.preheader.i, label %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge

.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge: ; preds = %.split751.us
  %i.azf = load <4 x double>, ptr %i.l, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

.preheader.i:                                     ; preds = %.split751.us
  %i.azg = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.azh = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %i.l) ; 0 uses
  %i.azi = load <4 x double>, ptr %i.l, align 16, !tbaa !55 ; 5 uses
  %i.azj = extractelement <4 x double> %i.azi, i64 1 ; 2 uses
  %i.azk = extractelement <4 x double> %i.azi, i64 2 ; 2 uses
  %i.azl = load <2 x double>, ptr %i.ait, align 16, !tbaa !55 ; 2 uses
  %57 = shufflevector <2 x double> %i.azl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %58 = shufflevector <4 x double> %i.azi, <4 x double> %57, <2 x i32> <i32 0, i32 4> ; 2 uses
  %59 = fmul <2 x double> %58, %58                ; 2 uses
  %60 = extractelement <2 x double> %59, i64 0
  %61 = call double @llvm.fmuladd.f64(double %i.azj, double %i.azj, double %60)
  %62 = call double @llvm.fmuladd.f64(double %i.azk, double %i.azk, double %61)
  %i.azm = shufflevector <4 x double> %i.azi, <4 x double> %57, <2 x i32> <i32 3, i32 5> ; 2 uses
  %63 = insertelement <2 x double> %59, double %62, i64 0
  %i.azn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azm, <2 x double> %i.azm, <2 x double> %63) ; 2 uses
  %i.azo = load <2 x double>, ptr %i.aiu, align 16, !tbaa !55 ; 3 uses
  %i.azp = load <2 x double>, ptr %i.aiv, align 16, !tbaa !55 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.azp, %i.azp
  %64 = shufflevector <2 x double> %i.azo, <2 x double> %i.azp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %65 = shufflevector <2 x double> %i.azn, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.azq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> %64, <2 x double> %65)
  %66 = load <2 x double>, ptr %i.aiw, align 16, !tbaa !55 ; 3 uses
  %67 = shufflevector <2 x double> %i.azo, <2 x double> %66, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.azr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %67, <2 x double> %i.azq) ; 2 uses
  %i.azs = shufflevector <2 x double> %i.azn, <2 x double> %i.azr, <2 x i32> <i32 0, i32 2>
  %i.azt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.azs) ; 2 uses
  %i.azu = shufflevector <2 x double> %i.azt, <2 x double> poison, <4 x i32> zeroinitializer
  %i.azv = fdiv <4 x double> %i.azi, %i.azu       ; 3 uses
  %i.azw = shufflevector <4 x double> %i.azv, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.azw, ptr %i.l, align 16, !tbaa !55
  %i.azx = shufflevector <4 x double> %i.azv, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.azx, ptr %i.ais, align 16, !tbaa !55
  %i.azy = shufflevector <2 x double> %i.azt, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.azz = fdiv <2 x double> %i.azl, %i.azy
  store <2 x double> %i.azz, ptr %i.ait, align 16, !tbaa !55
  %i.baa = fdiv <2 x double> %i.azo, %i.azy
  store <2 x double> %i.baa, ptr %i.aiu, align 16, !tbaa !55
  %i.bab = load <2 x double>, ptr %i.aix, align 16, !tbaa !55 ; 4 uses
  %foldExtExtBinop1134 = fmul <2 x double> %i.bab, %i.bab
  %i.bac = shufflevector <2 x double> %66, <2 x double> %i.bab, <2 x i32> <i32 1, i32 3> ; 2 uses
  %68 = shufflevector <2 x double> %i.azr, <2 x double> %foldExtExtBinop1134, <2 x i32> <i32 1, i32 2>
  %i.bad = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bac, <2 x double> %i.bac, <2 x double> %68) ; 2 uses
  %i.bae = load <2 x double>, ptr %i.aiy, align 16, !tbaa !55 ; 3 uses
  %i.baf = extractelement <2 x double> %i.bae, i64 0 ; 2 uses
  %i.bag = extractelement <2 x double> %i.bad, i64 1
  %i.bah = extractelement <2 x double> %i.bae, i64 1 ; 2 uses
  %i.bai = call double @llvm.fmuladd.f64(double %i.baf, double %i.baf, double %i.bag)
  %i.baj = call double @llvm.fmuladd.f64(double %i.bah, double %i.bah, double %i.bai)
  %i.bak = insertelement <2 x double> %i.bad, double %i.baj, i64 1
  %i.bal = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bak) ; 2 uses
  %i.bam = shufflevector <2 x double> %i.bal, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ban = fdiv <2 x double> %i.azp, %i.bam
  store <2 x double> %i.ban, ptr %i.aiv, align 16, !tbaa !55
  %i.bao = fdiv <2 x double> %66, %i.bam
  store <2 x double> %i.bao, ptr %i.aiw, align 16, !tbaa !55
  %i.bap = shufflevector <2 x double> %i.bal, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.baq = fdiv <2 x double> %i.bab, %i.bap
  store <2 x double> %i.baq, ptr %i.aix, align 16, !tbaa !55
  %i.bar = fdiv <2 x double> %i.bae, %i.bap
  store <2 x double> %i.bar, ptr %i.aiy, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit:       ; preds = %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge, %.preheader.i
  %i.bas = phi <4 x double> [ %i.azf, %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge ], [ %i.azv, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  switch i32 %i.aty, label %_ZN12colvarmodule7rvectorixEi.exit [
    i32 0, label %_ZN12colvarmodule7rvectorixEi.exit.thread
    i32 1, label %_ZN12colvarmodule7rvectorixEi.exit.thread679
  ]

_ZN12colvarmodule7rvectorixEi.exit.thread:        ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bat = load <1 x double>, ptr %48, align 8
  %i.bau = shufflevector <1 x double> %i.bat, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bav = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.baw = load double, ptr %49, align 8, !tbaa !55
  %i.bax = load double, ptr %i.aje, align 8, !tbaa !55
  %i.bay = load double, ptr %i.ajf, align 8, !tbaa !55
  %i.baz = insertelement <4 x double> poison, double %i.bav, i64 0
  %i.bba = shufflevector <4 x double> %i.baz, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bbb = insertelement <4 x double> %i.bau, double %i.bay, i64 1
  %i.bbc = insertelement <4 x double> %i.bbb, double %i.baw, i64 2
  %i.bbd = insertelement <4 x double> %i.bbc, double %i.bax, i64 3
  %i.bbe = fmul <4 x double> %i.bba, %i.bbd
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit.thread679:     ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bbf = load <1 x double>, ptr %i.aiz, align 8
  %i.bbg = shufflevector <1 x double> %i.bbf, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bbh = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.bbi = load double, ptr %i.aja, align 8, !tbaa !55
  %i.bbj = load double, ptr %i.ajb, align 8, !tbaa !55
  %i.bbk = load double, ptr %i.ajc, align 8, !tbaa !55
  %i.bbl = insertelement <4 x double> poison, double %i.bbh, i64 0
  %i.bbm = shufflevector <4 x double> %i.bbl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bbn = insertelement <4 x double> %i.bbg, double %i.bbk, i64 1
  %i.bbo = insertelement <4 x double> %i.bbn, double %i.bbi, i64 2
  %i.bbp = insertelement <4 x double> %i.bbo, double %i.bbj, i64 3
  %i.bbq = fmul <4 x double> %i.bbm, %i.bbp
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit:               ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bbr = icmp eq i64 %.038758, 2                ; 5 uses
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bbr, i64 16, i64 0
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %48, i64 %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bbs = load double, ptr %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !55
  %i.bbt = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bbr, i64 16, i64 0
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bbu = load double, ptr %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !55
  %.sroa.gep799.val = load double, ptr %.sroa.gep799, align 8
  %.val1125 = load double, ptr %i.aje, align 8
  %i.bbv = select i1 %i.bbr, double %.sroa.gep799.val, double %.val1125
  %.sroa.gep801.val = load double, ptr %.sroa.gep801, align 8
  %.val1126 = load double, ptr %i.ajf, align 8
  %i.bbw = select i1 %i.bbr, double %.sroa.gep801.val, double %.val1126
  %i.bbx = insertelement <4 x double> poison, double %i.bbt, i64 0
  %i.bby = shufflevector <4 x double> %i.bbx, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bbz = insertelement <4 x double> poison, double %i.bbs, i64 0
  %i.bca = insertelement <4 x double> %i.bbz, double %i.bbw, i64 1
  %i.bcb = insertelement <4 x double> %i.bca, double %i.bbu, i64 2
  %i.bcc = insertelement <4 x double> %i.bcb, double %i.bbv, i64 3
  %i.bcd = fmul <4 x double> %i.bby, %i.bcc
  %.idx.i577.sroa.sel.v.sroa.sel = select i1 %i.bbr, ptr %.sroa.gep803, ptr %i.ajg
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit578:            ; preds = %_ZN12colvarmodule7rvectorixEi.exit.thread, %_ZN12colvarmodule7rvectorixEi.exit.thread679, %_ZN12colvarmodule7rvectorixEi.exit
  %i.bce = phi double [ %i.bbt, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bbh, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bav, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bcf = phi ptr [ %.idx.i577.sroa.sel.v.sroa.sel, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.ajd, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.ajg, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bcg = phi <4 x double> [ %i.bcd, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bbq, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bbe, %_ZN12colvarmodule7rvectorixEi.exit.thread ] ; 3 uses
  %i.bch = load double, ptr %i.bcf, align 8, !tbaa !55
  %i.bci = fmul double %i.bce, %i.bch
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.bcj = load double, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.bck = extractelement <4 x double> %i.bcg, i64 0
  %i.bcl = fadd double %i.bck, %i.bcj
  %i.bcm = load double, ptr %i.k, align 16, !tbaa !55
  %i.bcn = fsub double %i.bcl, %i.bcm
  %i.bco = call noundef double @llvm.fabs.f64(double %i.bcn)
  %i.bcp = fdiv double %i.bco, %i.bcj
  store double %i.bcp, ptr %i.m, align 8, !tbaa !55
  call void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.ay, i64 noundef %i.az)
  %i.bcq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 29)
          to label %.noexc583 unwind label %bb.ev ; 6 uses

.noexc583:                                        ; preds = %_ZN12colvarmodule7rvectorixEi.exit578
  store ptr %i.ajh, ptr %54, align 8, !tbaa !33, !alias.scope !215
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !40 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcq, i64 16 ; 5 uses
  %i.bct = icmp eq ptr %i.bcr, %i.bcs
  br i1 %i.bct, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

bb.eg:                                            ; preds = %.noexc583
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !35 ; 3 uses
  %i.bcw = icmp ult i64 %i.bcv, 16
  call void @llvm.assume(i1 %i.bcw)
  %i.bcx = add nuw nsw i64 %i.bcv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajh, ptr noundef nonnull align 8 dereferenceable(1) %i.bcs, i64 %i.bcx, i1 false)
  br label %bb.eh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %.noexc583
  store ptr %i.bcr, ptr %54, align 8, !tbaa !40, !alias.scope !215
  %i.bcy = load i64, ptr %i.bcs, align 8, !tbaa !36
  store i64 %i.bcy, ptr %i.ajh, align 8, !tbaa !36, !alias.scope !215
  %.phi.trans.insert.i580 = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  %.pre.i581 = load i64, ptr %.phi.trans.insert.i580, align 8, !tbaa !35
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.eg
  %i.bcz = phi i64 [ %i.bcv, %bb.eg ], [ %.pre.i581, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ]
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  store i64 %i.bcz, ptr %i.aji, align 8, !tbaa !35, !alias.scope !215
  store ptr %i.bcs, ptr %i.bcq, align 8, !tbaa !40
  store i64 0, ptr %i.bda, align 8, !tbaa !35
  store i8 0, ptr %i.bcs, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bdb = load i64, ptr %i.aji, align 8, !tbaa !35, !noalias !216
  %i.bdc = add i64 %i.bdb, -4611686018427387877
  %i.bdd = icmp ult i64 %i.bdc, 27
  br i1 %i.bdd, label %bb.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc592 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc592:                                        ; preds = %bb.ei
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587: ; preds = %bb.eh
  %i.bde = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.22, i64 noundef 27)
          to label %.noexc593 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc593:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587
  store ptr %i.ajj, ptr %53, align 8, !tbaa !33, !alias.scope !216
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !40 ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bde, i64 16 ; 5 uses
  %i.bdh = icmp eq ptr %i.bdf, %i.bdg
  br i1 %i.bdh, label %bb.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

bb.ej:                                            ; preds = %.noexc593
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  %i.bdj = load i64, ptr %i.bdi, align 8, !tbaa !35 ; 3 uses
  %i.bdk = icmp ult i64 %i.bdj, 16
  call void @llvm.assume(i1 %i.bdk)
  %i.bdl = add nuw nsw i64 %i.bdj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajj, ptr noundef nonnull align 8 dereferenceable(1) %i.bdg, i64 %i.bdl, i1 false)
  br label %bb.ek

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %.noexc593
  store ptr %i.bdf, ptr %53, align 8, !tbaa !40, !alias.scope !216
  %i.bdm = load i64, ptr %i.bdg, align 8, !tbaa !36
  store i64 %i.bdm, ptr %i.ajj, align 8, !tbaa !36, !alias.scope !216
  %.phi.trans.insert.i589 = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  %.pre.i590 = load i64, ptr %.phi.trans.insert.i589, align 8, !tbaa !35
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  %i.bdn = phi i64 [ %i.bdj, %bb.ej ], [ %.pre.i590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588 ]
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  store i64 %i.bdn, ptr %i.ajk, align 8, !tbaa !35, !alias.scope !216
  store ptr %i.bdg, ptr %i.bde, align 8, !tbaa !40
  store i64 0, ptr %i.bdo, align 8, !tbaa !35
  store i8 0, ptr %i.bdg, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  %i.bdp = load <2 x double>, ptr %7, align 16, !tbaa !55, !noalias !217
  %i.bdq = shufflevector <4 x double> %i.bcg, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.bdr = fadd <2 x double> %i.bdq, %i.bdp       ; 2 uses
  %i.bds = load <2 x double>, ptr %i.z, align 16, !tbaa !55, !noalias !217
  %i.bdt = shufflevector <4 x double> %i.bcg, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bdu = insertelement <2 x double> %i.bdt, double %i.bci, i64 1
  %i.bdv = fadd <2 x double> %i.bdu, %i.bds       ; 2 uses
  %i.bdw = extractelement <4 x double> %i.bas, i64 0
  %i.bdx = extractelement <2 x double> %i.bdr, i64 0
  %i.bdy = fsub double %i.bdx, %i.bdw             ; 2 uses
  %i.bdz = extractelement <4 x double> %i.bas, i64 1
  %i.bea = extractelement <2 x double> %i.bdr, i64 1
end_hunk_1
