inline.NumInlined: 174
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@m_tgamma:bb.a
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.i = fcmp olt double %0, 0.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.j, align 4, !tbaa !6
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.k = fcmp ugt double %0, 2.300000e+01
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = fptosi double %0 to i32
  %i.m = add i32 %i.l, -1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr @gamma_integral, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !31
  br label %bb.aa

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.q = fcmp olt double %i.a, f0x3BC79CA10C924223
  br i1 %i.q, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.r = fdiv double 1.000000e+00, %0             ; 3 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r) #17
  %i.t = fcmp oeq double %i.s, +inf
  br i1 %i.t, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.u = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.u, align 4, !tbaa !6
  br label %bb.aa

bb.n:                                             ; preds = %bb.k
  %i.v = fcmp ogt double %i.a, 2.000000e+02
  br i1 %i.v, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.w = fcmp olt double %0, 0.000000e+00
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.x = tail call fastcc double @m_sinpi(double noundef %0)
  %i.y = fdiv double 0.000000e+00, %i.x
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.z = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.z, align 4, !tbaa !6
  br label %bb.aa

bb.r:                                             ; preds = %bb.n
  %i.aa = fadd double %i.a, f0x40161945B9800000   ; 9 uses
  %i.ab = fcmp ogt double %i.a, f0x40161945B9800000
  %i.ac = fsub nnan double %i.aa, %i.a
  %i.ad = fadd nnan double %i.ac, f0xC0161945B9800000
  %i.ae = fadd nnan double %i.aa, f0xC0161945B9800000
  %i.af = fsub nnan double %i.ae, %i.a
  %.067 = select i1 %i.ab, double %i.ad, double %i.af
  %i.ag = fmul nnan double %.067, f0x40181945B9800000
  %i.ah = fdiv double %i.ag, %i.aa                ; 2 uses
  %i.ai = fcmp olt double %0, 0.000000e+00
  br i1 %i.ai, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call fastcc double @m_sinpi(double noundef %i.a)
  %i.ak = fdiv double f0xC00921FB54442D18, %i.aj
  %i.al = fdiv double %i.ak, %i.a
  %i.am = tail call double @exp(double noundef %i.aa) #15, !tbaa !6
  %i.an = fmul double %i.am, %i.al
  %i.ao = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.ap = fdiv double %i.an, %i.ao                ; 2 uses
  %i.aq = fneg double %i.ah
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.ap) ; 2 uses
  %i.as = fcmp olt double %i.a, 1.400000e+02
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = fadd double %i.a, -5.000000e-01
  %i.au = tail call double @pow(double noundef %i.aa, double noundef %i.at) #15, !tbaa !6
  %i.av = fdiv double %i.ar, %i.au
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.aw = fmul nnan double %i.a, 5.000000e-01
  %i.ax = fadd double %i.aw, -2.500000e-01
  %i.ay = tail call double @pow(double noundef %i.aa, double noundef %i.ax) #15, !tbaa !6 ; 2 uses
  %i.az = fdiv double %i.ar, %i.ay
  %i.ba = fdiv double %i.az, %i.ay
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.bb = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.bc = tail call double @exp(double noundef %i.aa) #15, !tbaa !6
  %i.bd = fdiv double %i.bb, %i.bc                ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bd, double %i.bd) ; 2 uses
  %i.bf = fcmp olt double %i.a, 1.400000e+02
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bg = fadd double %i.a, -5.000000e-01
  %i.bh = tail call double @pow(double noundef %i.aa, double noundef %i.bg) #15, !tbaa !6
  %i.bi = fmul double %i.be, %i.bh
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bj = fmul nnan double %0, 5.000000e-01
  %i.bk = fadd double %i.bj, -2.500000e-01
  %i.bl = tail call double @pow(double noundef %i.aa, double noundef %i.bk) #15, !tbaa !6 ; 2 uses
  %i.bm = fmul double %i.be, %i.bl
  %i.bn = fmul double %i.bl, %i.bm
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t, %bb.u
  %.066 = phi double [ %i.av, %bb.t ], [ %i.ba, %bb.u ], [ %i.bi, %bb.w ], [ %i.bn, %bb.x ] ; 3 uses
  %i.bo = tail call double @llvm.fabs.f64(double %.066) #17
  %i.bp = fcmp oeq double %i.bo, +inf
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bq = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.bq, align 4, !tbaa !6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.l, %bb.m, %bb.b, %bb.q, %bb.p, %bb.j, %bb.h, %bb.e, %bb.c
  %.0 = phi double [ %i.f, %bb.e ], [ +qnan, %bb.h ], [ %i.p, %bb.j ], [ %0, %bb.b ], [ %i.y, %bb.p ], [ +inf, %bb.q ], [ %i.r, %bb.l ], [ +qnan, %bb.c ], [ %i.r, %bb.m ], [ %.066, %bb.z ], [ %.066, %bb.y ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc double @m_sinpi(double noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = tail call double @fmod(double noundef %i.a, double noundef 2.000000e+00) #15, !tbaa !6 ; 6 uses
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = tail call double @llvm.round.f64(double %i.c)
  %i.e = fptosi double %i.d to i32
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = fmul double %i.b, f0x400921FB54442D18
  %i.g = tail call double @sin(double noundef %i.f) #15, !tbaa !6
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = fadd double %i.b, -5.000000e-01
  %i.i = fmul double %i.h, f0x400921FB54442D18
  %i.j = tail call double @cos(double noundef %i.i) #15, !tbaa !6
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.k = fsub double 1.000000e+00, %i.b
  %i.l = fmul double %i.k, f0x400921FB54442D18
  %i.m = tail call double @sin(double noundef %i.l) #15, !tbaa !6
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = fadd double %i.b, -1.500000e+00
  %i.o = fmul double %i.n, f0x400921FB54442D18
  %i.p = tail call double @cos(double noundef %i.o) #15, !tbaa !6
  %i.q = fneg double %i.p
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.r = fadd double %i.b, -2.000000e+00
  %i.s = fmul double %i.r, f0x400921FB54442D18
  %i.t = tail call double @sin(double noundef %i.s) #15, !tbaa !6
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi double [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ], [ %i.t, %bb.f ]
  %i.u = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.v = fmul double %i.u, %.0
  ret double %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @lanczos_sum(double noundef %0) unnamed_addr #12 {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e+00
  br i1 %i.a, label %.preheader.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.a
  %i.b = fdiv double 0.000000e+00, %0
  %1 = insertelement <2 x double> poison, double %i.b, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = fadd <2 x double> %2, <double f0x4215EA5143C1A49E, double -0.000000e+00>
  %4 = insertelement <2 x double> poison, double %0, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  %6 = fdiv <2 x double> %3, %5
  %7 = fadd <2 x double> %6, <double f0x4223FC7075F54C57, double 3.991680e+07>
  %8 = fdiv <2 x double> %7, %5
  %9 = fadd <2 x double> %8, <double f0x4220A132818AB61A, double f0x419CBD6980000000>
  %10 = fdiv <2 x double> %9, %5
  %11 = fadd <2 x double> %10, <double f0x4210B0B522E8261A, double f0x41A1FDA6B0000000>
  %12 = fdiv <2 x double> %11, %5
  %13 = fadd <2 x double> %12, <double f0x41F67FC1B3A5A1E8, double f0x4199187170000000>
  %14 = fdiv <2 x double> %13, %5
  %15 = fadd <2 x double> %14, <double f0x41D57418F5D3F33F, double f0x4185EEB690000000>
  %16 = fdiv <2 x double> %15, %5
  %17 = fadd <2 x double> %16, <double f0x41ADAB0C7BB95F2A, double f0x41697171E0000000>
  %18 = fdiv <2 x double> %17, %5
  %19 = fadd <2 x double> %18, <double f0x417DF876F95DCC98, double f0x41441F7B00000000>
  %20 = fdiv <2 x double> %19, %5
  %21 = fadd <2 x double> %20, <double f0x4145F1E95080F44C, double 3.574230e+05>
  %22 = fdiv <2 x double> %21, %5
  %23 = fadd <2 x double> %22, <double f0x4106B6421F8787EB, double 3.267000e+04>
  %24 = fdiv <2 x double> %23, %5
  %25 = fadd <2 x double> %24, <double f0x40BF87AC0858D804, double 1.925000e+03>
  %26 = fdiv <2 x double> %25, %5
  %27 = fadd <2 x double> %26, <double f0x406A5A607BBC3B52, double 6.600000e+01>
  %28 = fdiv <2 x double> %27, %5
  %29 = fadd <2 x double> %28, <double f0x40040D931FF62705, double 1.000000e+00>
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %30 = insertelement <2 x double> poison, double %0, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> <double f0x40040D931FF62705, double 1.000000e+00>)
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %31, <2 x double> <double f0x406A5A607BBC3B52, double 6.600000e+01>)
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %31, <2 x double> <double f0x40BF87AC0858D804, double 1.925000e+03>)
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %31, <2 x double> <double f0x4106B6421F8787EB, double 3.267000e+04>)
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %31, <2 x double> <double f0x4145F1E95080F44C, double 3.574230e+05>)
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %31, <2 x double> <double f0x417DF876F95DCC98, double f0x41441F7B00000000>)
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %31, <2 x double> <double f0x41ADAB0C7BB95F2A, double f0x41697171E0000000>)
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %31, <2 x double> <double f0x41D57418F5D3F33F, double f0x4185EEB690000000>)
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %31, <2 x double> <double f0x41F67FC1B3A5A1E8, double f0x4199187170000000>)
  %41 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %31, <2 x double> <double f0x4210B0B522E8261A, double f0x41A1FDA6B0000000>)
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %31, <2 x double> <double f0x4220A132818AB61A, double f0x419CBD6980000000>)
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %31, <2 x double> <double f0x4223FC7075F54C57, double 3.991680e+07>)
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %31, <2 x double> <double f0x4215EA5143C1A49E, double 0.000000e+00>)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader25.preheader, %.preheader.preheader
  %45 = phi <2 x double> [ %44, %.preheader.preheader ], [ %29, %.preheader25.preheader ] ; 2 uses
  %46 = extractelement <2 x double> %45, i64 0
  %47 = extractelement <2 x double> %45, i64 1
  %i.c = fdiv double %46, %47
  ret double %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal double @m_lgamma(double noundef %0) #10 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 8 uses
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp uno double %0, 0.000000e+00
  %. = select i1 %i.c, double %0, double +inf
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.trunc.f64(double %0)
  %i.e = fcmp oeq double %i.d, %0
  %i.f = fcmp ole double %0, 2.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ugt double %0, 0.000000e+00
  br i1 %i.g, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.h, align 4, !tbaa !6
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp olt double %i.a, f0x3BC79CA10C924223
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @log(double noundef %i.a) #15, !tbaa !6
  %i.k = fneg double %i.j
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.l = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.m = tail call double @log(double noundef %i.l) #15, !tbaa !6
  %i.n = fadd double %i.m, f0xC0181945B9800000
  %i.o = fadd double %i.a, -5.000000e-01
  %i.p = fadd double %i.a, f0x40181945B9800000
  %i.q = fadd double %i.p, -5.000000e-01
  %i.r = tail call double @log(double noundef %i.q) #15, !tbaa !6
  %i.s = fadd double %i.r, -1.000000e+00
  %i.t = tail call double @llvm.fmuladd.f64(double %i.o, double %i.s, double %i.n) ; 2 uses
  %i.u = fcmp olt double %0, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.v = frem double %i.a, 2.000000e+00           ; 6 uses
  %i.w = fmul nnan double %i.v, 2.000000e+00
  %i.x = tail call double @llvm.round.f64(double %i.w)
  %i.y = fptosi double %i.x to i32
  switch i32 %i.y, label %bb.o [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = fmul nnan double %i.v, f0x400921FB54442D18
  %i.aa = tail call double @sin(double noundef %i.z) #15, !tbaa !6
  br label %m_sinpi.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = fadd nnan double %i.v, -5.000000e-01
  %i.ac = fmul nnan double %i.ab, f0x400921FB54442D18
  %i.ad = tail call double @cos(double noundef %i.ac) #15, !tbaa !6
  br label %m_sinpi.exit

bb.l:                                             ; preds = %bb.i
  %i.ae = fsub nnan double 1.000000e+00, %i.v
  %i.af = fmul nnan double %i.ae, f0x400921FB54442D18
  %i.ag = tail call double @sin(double noundef %i.af) #15, !tbaa !6
  br label %m_sinpi.exit

bb.m:                                             ; preds = %bb.i
  %i.ah = fadd nnan double %i.v, -1.500000e+00
  %i.ai = fmul nnan double %i.ah, f0x400921FB54442D18
  %i.aj = tail call double @cos(double noundef %i.ai) #15, !tbaa !6
  %i.ak = fneg double %i.aj
  br label %m_sinpi.exit

bb.n:                                             ; preds = %bb.i
  %i.al = fadd nnan double %i.v, -2.000000e+00
  %i.am = fmul nnan double %i.al, f0x400921FB54442D18
  %i.an = tail call double @sin(double noundef %i.am) #15, !tbaa !6
  br label %m_sinpi.exit

bb.o:                                             ; preds = %bb.i
  unreachable

m_sinpi.exit:                                     ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi double [ %i.aa, %bb.j ], [ %i.ad, %bb.k ], [ %i.ag, %bb.l ], [ %i.ak, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = tail call double @llvm.fabs.f64(double %.0.i)
  %i.ap = tail call double @log(double noundef %i.ao) #15, !tbaa !6
  %i.aq = fsub double f0x3FF250D048E7A1BD, %i.ap
  %i.ar = tail call double @llvm.log.f64(double %i.a), !tbaa !6
  %i.as = fsub double %i.aq, %i.ar
  %i.at = fsub double %i.as, %i.t
  br label %bb.p

bb.p:                                             ; preds = %m_sinpi.exit, %bb.h
  %.022 = phi double [ %i.at, %m_sinpi.exit ], [ %i.t, %bb.h ] ; 3 uses
  %i.au = tail call double @llvm.fabs.f64(double %.022) #17
  %i.av = fcmp oeq double %i.au, +inf
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.aw, align 4, !tbaa !6
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.d, %bb.b, %bb.g, %bb.e
  %.0 = phi double [ +inf, %bb.e ], [ %., %bb.b ], [ %i.k, %bb.g ], [ 0.000000e+00, %bb.d ], [ %.022, %bb.q ], [ %.022, %bb.p ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @loghelper(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = and i64 %.val20, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @loghelper_int(ptr noundef nonnull %0, ptr noundef %1)
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @math_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.78) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  %i.h = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.g) #15
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PyIndex_Check(ptr noundef nonnull %0) #15
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyErr_Clear() #15
  %i.j = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #15 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc ptr @loghelper_int(ptr noundef nonnull %i.j, ptr noundef %1) ; 3 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.j, align 8, !tbaa !29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@math_exec:bb.a
  %i.h = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %i.g) #15
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyFloat_FromDouble(double noundef +inf) #15
  %i.k = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %i.j) #15
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyFloat_FromDouble(double noundef +qnan) #15
  %i.n = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %i.m) #15
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Py_DECREF.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.95) #15 ; 30 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %Py_DECREF.exit40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.96) #15
  %i.r = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %i.q) #15
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not.i39 = icmp sgt i32 %i.t, -1
  br i1 %.not.i39, label %bb.i, label %Py_DECREF.exit40

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !29
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit40

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.k:                                             ; preds = %bb.g
  %i.w = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.97) #15
  %i.x = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %i.w) #15
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not.i37 = icmp sgt i32 %i.z, -1
  br i1 %.not.i37, label %bb.m, label %Py_DECREF.exit40

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !29
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %Py_DECREF.exit40

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.o:                                             ; preds = %bb.k
  %i.ac = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.98) #15
  %i.ad = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %i.ac) #15
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.af = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i35 = icmp sgt i32 %i.af, -1
  br i1 %.not.i35, label %bb.q, label %Py_DECREF.exit40

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %Py_DECREF.exit40

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.o
  %i.ai = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.99) #15
  %i.aj = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef %i.ai) #15
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i33 = icmp sgt i32 %i.al, -1
  br i1 %.not.i33, label %bb.u, label %Py_DECREF.exit40

bb.u:                                             ; preds = %bb.t
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.p, align 8, !tbaa !29
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.v, label %Py_DECREF.exit40

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.w:                                             ; preds = %bb.s
  %i.ao = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.100) #15
  %i.ap = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %i.ao) #15
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i31 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i31, label %bb.y, label %Py_DECREF.exit40

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.p, align 8, !tbaa !29
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.z, label %Py_DECREF.exit40

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.aa:                                            ; preds = %bb.w
  %i.au = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.101) #15
  %i.av = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.101, ptr noundef %i.au) #15
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ax = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i29 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i29, label %bb.ac, label %Py_DECREF.exit40

bb.ac:                                            ; preds = %bb.ab
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.p, align 8, !tbaa !29
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.ad, label %Py_DECREF.exit40

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.ae:                                            ; preds = %bb.aa
  %i.ba = tail call i32 @_PyImport_SetModuleString(ptr noundef nonnull @.str.102, ptr noundef nonnull %i.p) #15
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i, label %bb.ag, label %Py_DECREF.exit40

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.p, align 8, !tbaa !29
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ah, label %Py_DECREF.exit40

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.ai:                                            ; preds = %bb.ae
  %i.bf = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.p) #15
  %.lobit = ashr i32 %i.bf, 31
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.ai, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.n ], [ -1, %bb.r ], [ -1, %bb.v ], [ -1, %bb.z ], [ -1, %bb.ad ], [ %.lobit, %bb.ai ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.ah ]
  ret i32 %.1
}

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyImport_SetModuleString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{ptr @math_1}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS7_object", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_object", !8, i64 0, !16, i64 8}
!16 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"", !15, i64 0, !19, i64 16}
!19 = !{!"double", !8, i64 0}
!20 = !{!21, !23, i64 168}
!21 = !{!"_typeobject", !22, i64 0, !24, i64 24, !23, i64 32, !23, i64 40, !13, i64 48, !23, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !23, i64 168, !24, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !23, i64 208, !13, i64 216, !13, i64 224, !25, i64 232, !26, i64 240, !27, i64 248, !16, i64 256, !12, i64 264, !13, i64 272, !13, i64 280, !23, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !13, i64 360, !12, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !28, i64 410}
!22 = !{!"PyVarObject", !15, i64 0, !23, i64 16}
!23 = !{!"long", !8, i64 0}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!26 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!27 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!22, !23, i64 16}
!31 = !{!19, !19, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{ptr @erf, ptr @erfc, ptr @m_lgamma, ptr @m_tgamma}
!35 = !{ptr @math_1a}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{!21, !13, i64 224}
!40 = distinct !{null}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = !{!21, !13, i64 96}
!44 = !{!45, !13, i64 128}
!45 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!46 = !{!21, !24, i64 24}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = !{!50, !23, i64 16}
!50 = !{!"_longobject", !15, i64 0, !51, i64 16}
!51 = !{!"_PyLongValue", !23, i64 0, !8, i64 8}
!52 = !{ptr @atan2, ptr @copysign, ptr @m_remainder}
!53 = distinct !{!53, !33, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !33, !55, !54}
!57 = distinct !{!57, !33}
!58 = !{ptr @m_log, ptr @m_log10, ptr @m_log2}
!59 = !{!23, !23, i64 0}
end_hunk_1
