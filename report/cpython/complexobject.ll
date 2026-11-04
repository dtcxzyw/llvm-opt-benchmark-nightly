Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/complexobject?download=true
inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@_Py_c_prod:bb.a
  %i.t = insertelement <2 x double> %i.g, double %2, i64 1
  br i1 %i.s, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.u = phi double [ 0.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.v = fcmp oeq double %.pre, +inf
  %i.w = select i1 %i.v, double 1.000000e+00, double 0.000000e+00
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.y, <2 x double> %i.f)
  %i.aa = insertelement <2 x double> %i.g, double %2, i64 1 ; 3 uses
  %i.ab = fcmp uno <2 x double> %i.aa, zeroinitializer
  %i.ac = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.aa)
  %i.ad = select <2 x i1> %i.ab, <2 x double> %i.ac, <2 x double> %i.aa
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.not = phi i1 [ false, %._crit_edge ], [ true, %bb.c ]
  %i.ae = phi <2 x double> [ %i.z, %._crit_edge ], [ %i.f, %bb.c ] ; 7 uses
  %i.af = phi <2 x double> [ %i.ad, %._crit_edge ], [ %i.t, %bb.c ] ; 7 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag) #12
  %i.ai = fcmp oeq double %i.ah, +inf
  %i.aj = extractelement <2 x double> %i.af, i64 0
  %.pre87 = tail call double @llvm.fabs.f64(double %i.aj) #12 ; 2 uses
  br i1 %i.ai, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = fcmp oeq double %.pre87, +inf
  br i1 %i.ak, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.al = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ]
  %i.am = fcmp oeq double %.pre87, +inf
  %i.an = select i1 %i.am, double 1.000000e+00, double 0.000000e+00
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.al, i64 1
  %i.aq = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.ap, <2 x double> %i.af)
  %i.ar = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.as = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.ae)
  %i.at = select <2 x i1> %i.ar, <2 x double> %i.as, <2 x double> %i.ae
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = shufflevector <2 x double> %i.e, <2 x double> %i.i, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.av = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.au)
  %i.aw = fcmp oeq <4 x double> %i.av, splat (double +inf)
  %i.ax = bitcast <4 x i1> %i.aw to i4
  %.not92 = icmp eq i4 %i.ax, 0
  br i1 %.not92, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.az = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.ae)
  %i.ba = select <2 x i1> %i.ay, <2 x double> %i.az, <2 x double> %i.ae
  %i.bb = fcmp uno <2 x double> %i.af, zeroinitializer
  %i.bc = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.af)
  %i.bd = select <2 x i1> %i.bb, <2 x double> %i.bc, <2 x double> %i.af
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.h
  %i.be = phi <2 x double> [ %i.ae, %bb.f ], [ %i.ba, %bb.h ], [ %i.at, %.thread ] ; 2 uses
  %i.bf = phi <2 x double> [ %i.af, %bb.f ], [ %i.bd, %bb.h ], [ %i.aq, %.thread ] ; 3 uses
  %i.bg = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = fneg <2 x double> %i.bf
  %i.bi = shufflevector <2 x double> %i.bf, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bj = fmul <2 x double> %i.bg, %i.bi
  %i.bk = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bf, <2 x double> %i.bj)
  %i.bm = fmul <2 x double> %i.bl, splat (double +inf)
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.a
  %i.bn = phi <2 x double> [ %i.l, %bb.a ], [ %i.bm, %bb.i ], [ %i.l, %bb.g ] ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bo, 0
  %i.bp = extractelement <2 x double> %i.bn, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bp, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_cr_prod(double %0, double %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %0, %2
  %i.b = fmul double %1, %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_quot(double %0, double %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %2, 0.000000e+00
  %i.b = fneg double %2
  %i.c = select i1 %i.a, double %i.b, double %2   ; 2 uses
  %i.d = fcmp olt double %3, 0.000000e+00
  %i.e = fneg double %3                           ; 2 uses
  %i.f = select i1 %i.d, double %i.e, double %3   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %2, 0.000000e+00
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !11
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = fdiv double %3, %2                       ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %3, double %i.j, double %2)
  %i.l = fneg double %0
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = insertelement <2 x double> %i.m, double %1, i64 1
  %i.o = insertelement <2 x double> poison, double %i.j, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x double> poison, double %1, i64 0
  %i.r = insertelement <2 x double> %i.q, double %0, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.r)
  %i.t = insertelement <2 x double> poison, double %i.k, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x double> %i.s, %i.u
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.w = fcmp ult double %i.f, %i.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fdiv double %2, %3                       ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %2, double %i.x, double %3)
  %i.z = fneg double %0
  %i.aa = insertelement <2 x double> poison, double %1, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %0, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x double> poison, double %i.z, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %1, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.af)
  %i.ah = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ag, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ak = phi <2 x double> [ splat (double +qnan), %bb.d ], [ %i.v, %bb.c ], [ %i.aj, %bb.e ] ; 4 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1
  %i.am = fcmp uno double %i.al, 0.000000e+00
  %i.an = extractelement <2 x double> %i.ak, i64 0
  %i.ao = fcmp uno double %i.an, 0.000000e+00
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = insertelement <2 x double> poison, double %1, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %0, i64 1 ; 4 uses
  %i.ar = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aq) ; 3 uses
  %i.as = fcmp une <2 x double> %i.ar, splat (double +inf) ; 3 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %or.cond69.not84 = select i1 %i.au, i1 %i.at, i1 false
  %i.av = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.aw = fcmp ueq double %i.av, +inf
  %or.cond71 = or i1 %or.cond69.not84, %i.aw
  %i.ax = tail call double @llvm.fabs.f64(double %3) ; 2 uses
  %i.ay = fcmp ueq double %i.ax, +inf
  %or.cond73 = or i1 %or.cond71, %i.ay
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = select <2 x i1> %i.as, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %i.ba = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.az, <2 x double> %i.aq) ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %3, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.e, i64 1
  %i.bd = fmul nnan <2 x double> %i.ba, %i.bc
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = insertelement <2 x double> poison, double %2, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = fmul <2 x double> %i.bh, splat (double +inf)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bj = fcmp une double %i.av, +inf             ; 2 uses
  %i.bk = fcmp une double %i.ax, +inf             ; 2 uses
  %or.cond75.not86 = and i1 %i.bj, %i.bk
  %i.bl = extractelement <2 x double> %i.ar, i64 1
  %i.bm = fcmp ueq double %i.bl, +inf
  %or.cond77 = or i1 %i.bm, %or.cond75.not86
  %i.bn = extractelement <2 x double> %i.ar, i64 0
  %i.bo = fcmp ueq double %i.bn, +inf
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.bo
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = select i1 %i.bj, double 0.000000e+00, double 1.000000e+00
  %i.bq = tail call double @llvm.copysign.f64(double %i.bp, double %2)
  %i.br = select i1 %i.bk, double 0.000000e+00, double 1.000000e+00
  %i.bs = tail call double @llvm.copysign.f64(double %i.br, double %3) ; 2 uses
  %i.bt = fneg double %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = fmul nnan <2 x double> %i.aq, %i.bv
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.by = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bz, <2 x double> %i.bx)
  %i.cb = fmul <2 x double> %i.ca, zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %i.cc = phi <2 x double> [ %i.bi, %bb.h ], [ %i.cb, %bb.j ], [ %i.ak, %bb.i ], [ %i.ak, %bb.f ], [ zeroinitializer, %.thread ] ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cd, 0
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ce, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_cr_quot(double %0, double %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp une double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = insertelement <2 x double> %i.b, double %1, i64 1
  %i.d = insertelement <2 x double> poison, double %2, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv <2 x double> %i.c, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.g, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi <2 x double> [ %i.f, %bb.b ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.i, 0
  %i.j = extractelement <2 x double> %i.h, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.j, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_rc_quot(double noundef %0, double %1, double %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %i.c = select i1 %i.a, double %i.b, double %1   ; 2 uses
  %i.d = fcmp olt double %2, 0.000000e+00
  %i.e = fneg double %2
  %i.f = select i1 %i.d, double %i.e, double %2   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %1, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = fdiv double %2, %1                       ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %2, double %i.j, double %1)
  %i.l = fneg double %0
  %i.m = fmul double %i.j, %i.l
  %i.n = insertelement <2 x double> poison, double %0, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.m, i64 1
  %i.p = insertelement <2 x double> poison, double %i.k, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = fcmp ult double %i.f, %i.c
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fdiv double %1, %2                       ; 2 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %1, double %i.t, double %2)
  %i.v = fmul double %0, %i.t
  %i.w = fneg double %0
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = insertelement <2 x double> poison, double %i.u, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %i.ac = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ], [ %i.ab, %bb.f ], [ splat (double +qnan), %bb.e ] ; 4 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fcmp ord double %i.ad, 0.000000e+00
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = fcmp ord double %i.af, 0.000000e+00
  %or.cond.not47 = or i1 %i.ae, %i.ag
  %i.ah = tail call double @llvm.fabs.f64(double %0)
  %i.ai = fcmp ueq double %i.ah, +inf
  %or.cond43 = or i1 %i.ai, %or.cond.not47
  br i1 %or.cond43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = insertelement <2 x double> poison, double %1, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %2, i64 1 ; 2 uses
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ak)
  %i.am = fcmp oeq <2 x double> %i.al, splat (double +inf) ; 2 uses
  %i.an = bitcast <2 x i1> %i.am to i2
  %or.cond45.not = icmp eq i2 %i.an, 0
  br i1 %or.cond45.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = select <2 x i1> %i.am, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ap = fneg double %0
  %i.aq = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.ao, <2 x double> %i.ak)
  %i.ar = insertelement <2 x double> poison, double %0, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ap, i64 1
  %i.at = fmul nnan <2 x double> %i.aq, %i.as
  %i.au = fmul <2 x double> %i.at, zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.av = phi <2 x double> [ %i.au, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.aw, 0
  %i.ax = extractelement <2 x double> %i.av, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ax, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_pow(double %0, double %1, double %2, double %3) local_unnamed_addr #5 {
bb.a:
  %i.a = fcmp oeq double %2, 0.000000e+00
  %i.b = fcmp oeq double %3, 0.000000e+00         ; 3 uses
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %_Py_ADJUST_ERANGE2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fcmp oeq double %1, 0.000000e+00
  %or.cond5 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp uge double %2, 0.000000e+00
  %or.cond8.not = and i1 %i.e, %i.b
  br i1 %or.cond8.not, label %_Py_ADJUST_ERANGE2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.f, align 4, !tbaa !11
  br label %_Py_ADJUST_ERANGE2.exit

bb.e:                                             ; preds = %bb.b
  %i.g = tail call double @hypot(double noundef %0, double noundef %1) #14, !tbaa !11 ; 2 uses
  %i.h = tail call double @pow(double noundef %i.g, double noundef %2) #14, !tbaa !11 ; 2 uses
  %i.i = tail call double @atan2(double noundef %1, double noundef %0) #14, !tbaa !11 ; 2 uses
  %i.j = fmul double %2, %i.i                     ; 2 uses
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fneg double %i.i
  %i.l = fmul double %3, %i.k
  %i.m = tail call double @exp(double noundef %i.l) #14, !tbaa !11
  %i.n = fmul double %i.h, %i.m
  %i.o = tail call double @log(double noundef %i.g) #14, !tbaa !11
  %i.p = tail call double @llvm.fmuladd.f64(double %3, double %i.o, double %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.032 = phi double [ %i.n, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %.0 = phi double [ %i.p, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = tail call double @cos(double noundef %.0) #14, !tbaa !11
  %i.r = fmul double %.032, %i.q                  ; 4 uses
  %i.s = tail call double @sin(double noundef %.0) #14, !tbaa !11
  %i.t = fmul double %.032, %i.s                  ; 4 uses
  %i.u = tail call double @llvm.fabs.f64(double %i.r)
  %or.cond.i = fcmp oeq double %i.u, +inf
  %i.v = tail call double @llvm.fabs.f64(double %i.t)
  %i.w = fcmp oeq double %i.v, +inf
  %or.cond5.i = or i1 %or.cond.i, %i.w
  %i.x = tail call ptr @__errno_location() #13    ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11   ; 2 uses
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.y, 34
  br i1 %i.aa, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ 34, %bb.h ], [ 0, %bb.i ]
  store i32 %.sink.i, ptr %i.x, align 4, !tbaa !11
  br label %_Py_ADJUST_ERANGE2.exit
end_hunk_0
