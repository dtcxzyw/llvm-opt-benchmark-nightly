Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mathmodule?download=true
inline.NumInlined: 174
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@m_sinpi:bb.a
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = fmul double %i.b, f0x400921FB54442D18
  %i.g = tail call double @sin(double noundef %i.f) #15, !tbaa !9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = fadd double %i.b, -5.000000e-01
  %i.i = fmul double %i.h, f0x400921FB54442D18
  %i.j = tail call double @cos(double noundef %i.i) #15, !tbaa !9
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.k = fsub double 1.000000e+00, %i.b
  %i.l = fmul double %i.k, f0x400921FB54442D18
  %i.m = tail call double @sin(double noundef %i.l) #15, !tbaa !9
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = fadd double %i.b, -1.500000e+00
  %i.o = fmul double %i.n, f0x400921FB54442D18
  %i.p = tail call double @cos(double noundef %i.o) #15, !tbaa !9
  %i.q = fneg double %i.p
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.r = fadd double %i.b, -2.000000e+00
  %i.s = fmul double %i.r, f0x400921FB54442D18
  %i.t = tail call double @sin(double noundef %i.s) #15, !tbaa !9
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
define internal fastcc double @lanczos_sum(double noundef %0) unnamed_addr #12 !guid !290 {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e+00
  br i1 %i.a, label %.preheader.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.a
  %i.b = fdiv double 0.000000e+00, %0
  %i.c = insertelement <2 x double> poison, double %i.b, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fadd <2 x double> %i.d, <double f0x4215EA5143C1A49E, double -0.000000e+00>
  %i.f = insertelement <2 x double> poison, double %0, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.h = fdiv <2 x double> %i.e, %i.g
  %i.i = fadd <2 x double> %i.h, <double f0x4223FC7075F54C57, double 3.991680e+07>
  %i.j = fdiv <2 x double> %i.i, %i.g
  %i.k = fadd <2 x double> %i.j, <double f0x4220A132818AB61A, double f0x419CBD6980000000>
  %i.l = fdiv <2 x double> %i.k, %i.g
  %i.m = fadd <2 x double> %i.l, <double f0x4210B0B522E8261A, double f0x41A1FDA6B0000000>
  %i.n = fdiv <2 x double> %i.m, %i.g
  %i.o = fadd <2 x double> %i.n, <double f0x41F67FC1B3A5A1E8, double f0x4199187170000000>
  %i.p = fdiv <2 x double> %i.o, %i.g
  %i.q = fadd <2 x double> %i.p, <double f0x41D57418F5D3F33F, double f0x4185EEB690000000>
  %i.r = fdiv <2 x double> %i.q, %i.g
  %i.s = fadd <2 x double> %i.r, <double f0x41ADAB0C7BB95F2A, double f0x41697171E0000000>
  %i.t = fdiv <2 x double> %i.s, %i.g
  %i.u = fadd <2 x double> %i.t, <double f0x417DF876F95DCC98, double f0x41441F7B00000000>
  %i.v = fdiv <2 x double> %i.u, %i.g
  %i.w = fadd <2 x double> %i.v, <double f0x4145F1E95080F44C, double 3.574230e+05>
  %i.x = fdiv <2 x double> %i.w, %i.g
  %i.y = fadd <2 x double> %i.x, <double f0x4106B6421F8787EB, double 3.267000e+04>
  %i.z = fdiv <2 x double> %i.y, %i.g
  %i.aa = fadd <2 x double> %i.z, <double f0x40BF87AC0858D804, double 1.925000e+03>
  %i.ab = fdiv <2 x double> %i.aa, %i.g
  %i.ac = fadd <2 x double> %i.ab, <double f0x406A5A607BBC3B52, double 6.600000e+01>
  %i.ad = fdiv <2 x double> %i.ac, %i.g
  %i.ae = fadd <2 x double> %i.ad, <double f0x40040D931FF62705, double 1.000000e+00>
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.af = insertelement <2 x double> poison, double %0, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> zeroinitializer, <2 x double> <double f0x40040D931FF62705, double 1.000000e+00>)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ag, <2 x double> <double f0x406A5A607BBC3B52, double 6.600000e+01>)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ag, <2 x double> <double f0x40BF87AC0858D804, double 1.925000e+03>)
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ag, <2 x double> <double f0x4106B6421F8787EB, double 3.267000e+04>)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ag, <2 x double> <double f0x4145F1E95080F44C, double 3.574230e+05>)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.ag, <2 x double> <double f0x417DF876F95DCC98, double f0x41441F7B00000000>)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ag, <2 x double> <double f0x41ADAB0C7BB95F2A, double f0x41697171E0000000>)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ag, <2 x double> <double f0x41D57418F5D3F33F, double f0x4185EEB690000000>)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ag, <2 x double> <double f0x41F67FC1B3A5A1E8, double f0x4199187170000000>)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ag, <2 x double> <double f0x4210B0B522E8261A, double f0x41A1FDA6B0000000>)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ag, <2 x double> <double f0x4220A132818AB61A, double f0x419CBD6980000000>)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ag, <2 x double> <double f0x4223FC7075F54C57, double 3.991680e+07>)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ag, <2 x double> <double f0x4215EA5143C1A49E, double 0.000000e+00>)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader25.preheader, %.preheader.preheader
  %i.au = phi <2 x double> [ %i.at, %.preheader.preheader ], [ %i.ae, %.preheader25.preheader ] ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = fdiv double %i.av, %i.aw
  ret double %i.ax
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
define internal double @m_lgamma(double noundef %0) #10 !guid !291 {
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
  store i32 33, ptr %i.h, align 4, !tbaa !9
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp olt double %i.a, f0x3BC79CA10C924223
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @log(double noundef %i.a) #15, !tbaa !9
  %i.k = fneg double %i.j
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.l = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.m = tail call double @log(double noundef %i.l) #15, !tbaa !9
  %i.n = fadd double %i.m, f0xC0181945B9800000
  %i.o = fadd double %i.a, -5.000000e-01
  %i.p = fadd double %i.a, f0x40181945B9800000
  %i.q = fadd double %i.p, -5.000000e-01
  %i.r = tail call double @log(double noundef %i.q) #15, !tbaa !9
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
  %i.aa = tail call double @sin(double noundef %i.z) #15, !tbaa !9
  br label %m_sinpi.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = fadd nnan double %i.v, -5.000000e-01
  %i.ac = fmul nnan double %i.ab, f0x400921FB54442D18
  %i.ad = tail call double @cos(double noundef %i.ac) #15, !tbaa !9
  br label %m_sinpi.exit

bb.l:                                             ; preds = %bb.i
  %i.ae = fsub nnan double 1.000000e+00, %i.v
  %i.af = fmul nnan double %i.ae, f0x400921FB54442D18
  %i.ag = tail call double @sin(double noundef %i.af) #15, !tbaa !9
  br label %m_sinpi.exit

bb.m:                                             ; preds = %bb.i
  %i.ah = fadd nnan double %i.v, -1.500000e+00
  %i.ai = fmul nnan double %i.ah, f0x400921FB54442D18
  %i.aj = tail call double @cos(double noundef %i.ai) #15, !tbaa !9
  %i.ak = fneg double %i.aj
  br label %m_sinpi.exit

bb.n:                                             ; preds = %bb.i
  %i.al = fadd nnan double %i.v, -2.000000e+00
  %i.am = fmul nnan double %i.al, f0x400921FB54442D18
  %i.an = tail call double @sin(double noundef %i.am) #15, !tbaa !9
  br label %m_sinpi.exit

bb.o:                                             ; preds = %bb.i
  unreachable

m_sinpi.exit:                                     ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi double [ %i.aa, %bb.j ], [ %i.ad, %bb.k ], [ %i.ag, %bb.l ], [ %i.ak, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = tail call double @llvm.fabs.f64(double %.0.i)
  %i.ap = tail call double @log(double noundef %i.ao) #15, !tbaa !9
  %i.aq = fsub double f0x3FF250D048E7A1BD, %i.ap
  %i.ar = tail call double @llvm.log.f64(double %i.a), !tbaa !9
  %i.as = fsub double %i.aq, %i.ar
  %i.at = fsub double %i.as, %i.t
  br label %bb.p

bb.p:                                             ; preds = %m_sinpi.exit, %bb.h
  %.0 = phi double [ %i.at, %m_sinpi.exit ], [ %i.t, %bb.h ] ; 3 uses
  %i.au = tail call double @llvm.fabs.f64(double %.0) #17
  %i.av = fcmp oeq double %i.au, +inf
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.aw, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.d, %bb.b, %bb.g, %bb.e
  %.022 = phi double [ +inf, %bb.e ], [ %., %bb.b ], [ %i.k, %bb.g ], [ 0.000000e+00, %bb.d ], [ %.0, %bb.q ], [ %.0, %bb.p ]
  ret double %.022
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @loghelper(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 !guid !292 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.b, align 8, !tbaa !197
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
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !182
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
  %i.m = load i32, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.j, align 8, !tbaa !198
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ null, %bb.f ], [ %i.e, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.l, %bb.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @m_log(double noundef %0) #10 !guid !293 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %0, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call double @llvm.log.f64(double %0), !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.e, align 4, !tbaa !9
  %i.f = fcmp oeq double %0, 0.000000e+00
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.0 = phi double [ %i.d, %bb.c ], [ %., %bb.d ], [ +qnan, %bb.f ], [ %0, %bb.e ]
  ret double %.0
}

declare ptr @PyNumber_TrueDivide(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @loghelper_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 !guid !294 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !206
  %i.c = and i64 %.val, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !182
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.79) #15
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @PyLong_AsDouble(ptr noundef nonnull %0) #15 ; 2 uses
  %i.g = fcmp oeq double %i.f, -1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #15
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !182
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #15
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyErr_Clear() #15
  %i.k = call double @_PyLong_Frexp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #15
  %i.l = call double %1(double noundef 2.000000e+00) #15, !callees !295
  %i.m = load i64, ptr %i.a, align 8, !tbaa !296
  %i.n = sitofp i64 %i.m to double
  %i.o = call double %1(double noundef %i.k) #15, !callees !295
  %i.p = call double @llvm.fma.f64(double %i.l, double %i.n, double %i.o)
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call double %1(double noundef %i.f) #15, !callees !295
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.r = call ptr @PyFloat_FromDouble(double noundef %.0) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  %.011 = phi ptr [ %i.r, %bb.h ], [ null, %bb.b ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.011
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare double @_PyLong_Frexp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @_Py_log1p(double noundef %0) #11 !guid !297 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @log1p(double noundef %0) #15, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.b, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @m_log10(double noundef %0) #10 !guid !298 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %0, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call double @llvm.log10.f64(double %0), !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.e, align 4, !tbaa !9
  %i.f = fcmp oeq double %0, 0.000000e+00
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.0 = phi double [ %i.d, %bb.c ], [ %., %bb.d ], [ +qnan, %bb.f ], [ %0, %bb.e ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @m_log2(double noundef %0) #10 !guid !299 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.c, align 4, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %0, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call double @llvm.log2.f64(double %0), !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = fcmp oeq double %0, 0.000000e+00
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.e, %bb.c
  %.0 = phi double [ %i.e, %bb.e ], [ %., %bb.f ], [ %0, %bb.b ], [ +qnan, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @m_remainder(double noundef %0, double noundef %1) #11 !guid !300 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 4 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = or i1 %i.b, %i.d
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %1, 0.000000e+00
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = frem double %i.a, %1                     ; 6 uses
  %i.g = fsub double %i.c, %i.f                   ; 3 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp ogt double %i.f, %i.g
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = fneg double %i.g
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = fsub nnan double %i.a, %i.f
  %i.l = fmul nnan double %i.k, 5.000000e-01
  %2 = tail call double @fmod(double noundef %i.l, double noundef %i.c) #15, !tbaa !9
  %i.m = tail call double @llvm.fmuladd.f64(double %2, double -2.000000e+00, double %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.0 = phi double [ %i.m, %bb.f ], [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  %i.n = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.o = fmul double %i.n, %.0
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.p = fcmp uno double %0, 0.000000e+00
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = fcmp uno double %1, 0.000000e+00
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = fcmp oeq double %i.a, +inf
  %. = select i1 %i.r, double +qnan, double %0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b
  %.1 = phi double [ %1, %bb.i ], [ +qnan, %bb.b ], [ %0, %bb.h ], [ %., %bb.j ], [ %i.o, %bb.g ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #2

declare ptr @PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @math_exec(ptr noundef %0) #0 !guid !301 {
bb.a:
  %i.a = tail call ptr @PyFloat_FromDouble(double noundef f0x400921FB54442D18) #15
  %i.b = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %i.a) #15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef f0x4005BF0A8B145769) #15
  %i.e = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %i.d) #15
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %Py_DECREF.exit40, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyFloat_FromDouble(double noundef f0x401921FB54442D18) #15
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
  %i.t = load i32, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %.not.i39 = icmp sgt i32 %i.t, -1
  br i1 %.not.i39, label %bb.i, label %Py_DECREF.exit40

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !198
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
  %i.z = load i32, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %.not.i37 = icmp sgt i32 %i.z, -1
  br i1 %.not.i37, label %bb.m, label %Py_DECREF.exit40

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !198
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
  %i.af = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i35 = icmp sgt i32 %i.af, -1
  br i1 %.not.i35, label %bb.q, label %Py_DECREF.exit40

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !198
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
  %i.al = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i33 = icmp sgt i32 %i.al, -1
  br i1 %.not.i33, label %bb.u, label %Py_DECREF.exit40

bb.u:                                             ; preds = %bb.t
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.p, align 8, !tbaa !198
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
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i31 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i31, label %bb.y, label %Py_DECREF.exit40

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.p, align 8, !tbaa !198
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
  %i.ax = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i29, label %bb.ac, label %Py_DECREF.exit40
end_hunk_0
