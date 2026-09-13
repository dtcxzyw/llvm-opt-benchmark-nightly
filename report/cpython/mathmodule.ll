Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mathmodule?download=true
inline.NumInlined: 174
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@vector_norm:bb.a
  %i.bm = tail call double @llvm.fma.f64(double %i.bj, double %i.bi, double %i.bl)
  %i.bn = fadd double %.lcssa94, %i.bk            ; 2 uses
  %i.bo = fsub double %.lcssa94, %i.bn
  %i.bp = fadd double %i.bk, %i.bo
  %i.bq = fadd double %.lcssa93, %i.bm
  %i.br = fadd double %.lcssa, %i.bp
  %i.bs = fadd double %i.bn, -1.000000e+00
  %i.bt = fadd double %i.bq, %i.br
  %i.bu = fadd double %i.bs, %i.bt
  %i.bv = fmul double %i.bi, 2.000000e+00
  %i.bw = fdiv double %i.bu, %i.bv
  %i.bx = fadd double %i.bi, %i.bw
  %i.by = fdiv double %i.bx, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge, %._crit_edge80
  %.0 = phi double [ %i.by, %._crit_edge ], [ %2, %bb.a ], [ +qnan, %bb.b ], [ %i.t, %._crit_edge80 ], [ %2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret double %.0
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @math_1a(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %0) #15 ; 3 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #15
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @__errno_location() #16    ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.e = tail call double %1(double noundef %i.a) #15, !callees !33 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %is_error.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not17.not = icmp eq ptr %2, null              ; 2 uses
  switch i32 %i.f, label %bb.h [
    i32 33, label %bb.e
    i32 34, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not17.not, label %.thread, label %.critedge.thread

.thread:                                          ; preds = %bb.e
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.60) #15
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = tail call double @llvm.fabs.f64(double %i.e)
  %i.i = fcmp olt double %i.h, 1.500000e+00
  br i1 %i.i, label %is_error.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.59) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.l = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not17.not, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.i
  %.pre = load i32, ptr %i.d, align 4, !tbaa !9
  %i.m = icmp eq i32 %.pre, 33
  br i1 %i.m, label %.critedge.thread, label %bb.k

.critedge.thread:                                 ; preds = %bb.e, %.critedge
  %i.n = tail call ptr @PyOS_double_to_string(double noundef %i.a, i8 noundef signext 114, i32 noundef 0, i32 noundef 2, ptr noundef null) #15 ; 3 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull %2, ptr noundef nonnull %i.n) #15 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.n) #15
  br label %bb.k

is_error.exit:                                    ; preds = %bb.f, %bb.c
  %i.q = tail call ptr @PyFloat_FromDouble(double noundef %i.e) #15
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %.critedge, %bb.j, %.critedge.thread, %bb.b, %is_error.exit
  %.0 = phi ptr [ %i.q, %is_error.exit ], [ null, %bb.b ], [ null, %.critedge.thread ], [ null, %bb.j ], [ null, %.critedge ], [ null, %bb.i ], [ null, %.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @erfc(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @fabs(double noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #5

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal double @m_tgamma(double noundef %0) #10 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 16 uses
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.c, align 4, !tbaa !9
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %0, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.e, align 4, !tbaa !9
  %i.f = tail call double @llvm.copysign.f64(double +inf, double %0)
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = fcmp oeq double %i.g, %0
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.i = fcmp olt double %0, 0.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.j, align 4, !tbaa !9
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.k = fcmp ugt double %0, 2.300000e+01
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = fptosi double %0 to i32
  %1 = add i32 %i.l, -1
  %2 = sext i32 %1 to i64
  %3 = getelementptr [8 x i8], ptr @gamma_integral, i64 %2
  %i.m = load double, ptr %3, align 8, !tbaa !31
  br label %bb.aa

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.n = fcmp olt double %i.a, f0x3BC79CA10C924223
  br i1 %i.n, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.o = fdiv double 1.000000e+00, %0             ; 3 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o) #17
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.r = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.r, align 4, !tbaa !9
  br label %bb.aa

bb.n:                                             ; preds = %bb.k
  %i.s = fcmp ogt double %i.a, 2.000000e+02
  br i1 %i.s, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.t = fcmp olt double %0, 0.000000e+00
  br i1 %i.t, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.u = tail call fastcc double @m_sinpi(double noundef %0)
  %i.v = fdiv double 0.000000e+00, %i.u
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.w = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.w, align 4, !tbaa !9
  br label %bb.aa

bb.r:                                             ; preds = %bb.n
  %i.x = fadd double %i.a, f0x40161945B9800000    ; 9 uses
  %i.y = fcmp ogt double %i.a, f0x40161945B9800000
  %i.z = fsub nnan double %i.x, %i.a
  %i.aa = fadd nnan double %i.z, f0xC0161945B9800000
  %i.ab = fadd nnan double %i.x, f0xC0161945B9800000
  %i.ac = fsub nnan double %i.ab, %i.a
  %.066 = select i1 %i.y, double %i.aa, double %i.ac
  %i.ad = fmul nnan double %.066, f0x40181945B9800000
  %i.ae = fdiv double %i.ad, %i.x                 ; 2 uses
  %i.af = fcmp olt double %0, 0.000000e+00
  br i1 %i.af, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call fastcc double @m_sinpi(double noundef %i.a)
  %i.ah = fdiv double f0xC00921FB54442D18, %i.ag
  %i.ai = fdiv double %i.ah, %i.a
  %i.aj = tail call double @exp(double noundef %i.x) #15, !tbaa !9
  %i.ak = fmul double %i.aj, %i.ai
  %i.al = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.am = fdiv double %i.ak, %i.al                ; 2 uses
  %i.an = fneg double %i.ae
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %i.am) ; 2 uses
  %i.ap = fcmp olt double %i.a, 1.400000e+02
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = fadd double %i.a, -5.000000e-01
  %i.ar = tail call double @pow(double noundef %i.x, double noundef %i.aq) #15, !tbaa !9
  %i.as = fdiv double %i.ao, %i.ar
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.at = fmul nnan double %i.a, 5.000000e-01
  %i.au = fadd double %i.at, -2.500000e-01
  %i.av = tail call double @pow(double noundef %i.x, double noundef %i.au) #15, !tbaa !9 ; 2 uses
  %i.aw = fdiv double %i.ao, %i.av
  %i.ax = fdiv double %i.aw, %i.av
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.ay = tail call fastcc double @lanczos_sum(double noundef %i.a)
  %i.az = tail call double @exp(double noundef %i.x) #15, !tbaa !9
  %i.ba = fdiv double %i.ay, %i.az                ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ba, double %i.ba) ; 2 uses
  %i.bc = fcmp olt double %i.a, 1.400000e+02
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bd = fadd double %i.a, -5.000000e-01
  %i.be = tail call double @pow(double noundef %i.x, double noundef %i.bd) #15, !tbaa !9
  %i.bf = fmul double %i.bb, %i.be
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bg = fmul nnan double %0, 5.000000e-01
  %i.bh = fadd double %i.bg, -2.500000e-01
  %i.bi = tail call double @pow(double noundef %i.x, double noundef %i.bh) #15, !tbaa !9 ; 2 uses
  %i.bj = fmul double %i.bb, %i.bi
  %i.bk = fmul double %i.bi, %i.bj
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t, %bb.u
  %.067 = phi double [ %i.as, %bb.t ], [ %i.ax, %bb.u ], [ %i.bf, %bb.w ], [ %i.bk, %bb.x ] ; 3 uses
  %i.bl = tail call double @llvm.fabs.f64(double %.067) #17
  %i.bm = fcmp oeq double %i.bl, +inf
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bn = tail call ptr @__errno_location() #16
  store i32 34, ptr %i.bn, align 4, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.l, %bb.m, %bb.b, %bb.q, %bb.p, %bb.j, %bb.h, %bb.e, %bb.c
  %.0 = phi double [ %i.f, %bb.e ], [ +qnan, %bb.h ], [ %i.m, %bb.j ], [ %0, %bb.b ], [ %i.v, %bb.p ], [ +inf, %bb.q ], [ %i.o, %bb.l ], [ +qnan, %bb.c ], [ %i.o, %bb.m ], [ %.067, %bb.z ], [ %.067, %bb.y ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc double @m_sinpi(double noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = tail call double @fmod(double noundef %i.a, double noundef 2.000000e+00) #15, !tbaa !9 ; 6 uses
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
define internal fastcc double @lanczos_sum(double noundef %0) unnamed_addr #12 {
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
end_hunk_0
