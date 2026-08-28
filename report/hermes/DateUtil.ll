Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DateUtil?download=true
inline.NumInlined: 605
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm12yearFromTimeEd:bb.a
  %i.t = fcmp ogt double %.018, %0
  br i1 %i.t, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01519 = phi double [ %i.u, %.lr.ph ], [ %i.e, %bb.b ]
  %i.u = fadd double %.01519, -1.000000e+00       ; 5 uses
  %i.v = fadd double %i.u, -1.970000e+03
  %i.w = fadd double %i.u, -1.969000e+03
  %i.x = fmul double %i.w, 2.500000e-01
  %i.y = tail call double @llvm.floor.f64(double %i.x)
  %i.z = tail call double @llvm.fmuladd.f64(double %i.v, double 3.650000e+02, double %i.y)
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fadd <2 x double> %i.ab, <double -1.901000e+03, double -1.601000e+03>
  %i.ad = fdiv <2 x double> %i.ac, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = tail call double @llvm.floor.f64(double %i.ae)
  %i.ag = fsub double %i.z, %i.af
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  %i.ai = tail call double @llvm.floor.f64(double %i.ah)
  %i.aj = fadd double %i.ai, %i.ag
  %.0 = fmul double %i.aj, 8.640000e+07           ; 2 uses
  %i.ak = fcmp ogt double %.0, %0
  br i1 %i.ak, label %.lr.ph, label %.preheader.preheader, !llvm.loop !7

.preheader.preheader:                             ; preds = %.lr.ph, %bb.b
  %.116.ph = phi double [ %i.e, %bb.b ], [ %i.u, %.lr.ph ]
  %.1.ph = phi double [ %.018, %bb.b ], [ %.0, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.116 = phi double [ %i.au, %bb.d ], [ %.116.ph, %.preheader.preheader ] ; 5 uses
  %.1 = phi double [ %i.bk, %bb.d ], [ %.1.ph, %.preheader.preheader ]
  %i.al = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+00) #19, !tbaa !3
  %i.am = fcmp une double %i.al, 0.000000e+00
  br i1 %i.am, label %_ZN6hermes2vm10daysInYearEd.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = tail call noundef double @fmod(double noundef %.116, double noundef 1.000000e+02) #19, !tbaa !3
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vmL10isLeapYearEd.exit.i

_ZN6hermes2vmL10isLeapYearEd.exit.i:              ; preds = %bb.c
  %i.ap = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+02) #19, !tbaa !3
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit.thread.i:       ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i, %bb.c
  br label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vm10daysInYearEd.exit:                 ; preds = %.preheader, %_ZN6hermes2vmL10isLeapYearEd.exit.i, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i
  %i.ar = phi double [ 3.660000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i ], [ 3.650000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.i ], [ 3.650000e+02, %.preheader ]
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double 8.640000e+07, double %.1)
  %i.at = fcmp ugt double %i.as, %0
  br i1 %i.at, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm10daysInYearEd.exit
  %i.au = fadd double %.116, 1.000000e+00         ; 4 uses
  %i.av = fadd double %i.au, -1.970000e+03
  %i.aw = fadd double %i.au, -1.969000e+03
  %i.ax = fmul double %i.aw, 2.500000e-01
  %i.ay = tail call double @llvm.floor.f64(double %i.ax)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.av, double 3.650000e+02, double %i.ay)
  %i.ba = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fadd <2 x double> %i.bb, <double -1.901000e+03, double -1.601000e+03>
  %i.bd = fdiv <2 x double> %i.bc, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = tail call double @llvm.floor.f64(double %i.be)
  %i.bg = fsub double %i.az, %i.bf
  %i.bh = extractelement <2 x double> %i.bd, i64 1
  %i.bi = tail call double @llvm.floor.f64(double %i.bh)
  %i.bj = fadd double %i.bi, %i.bg
  %i.bk = fmul double %i.bj, 8.640000e+07
  br label %.preheader, !llvm.loop !9

.loopexit:                                        ; preds = %_ZN6hermes2vm10daysInYearEd.exit, %bb.a
  %.017 = phi double [ %0, %bb.a ], [ %.116, %_ZN6hermes2vm10daysInYearEd.exit ]
  ret double %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm10inLeapYearEd(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 3 uses
  %i.b = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+00) #19, !tbaa !3
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZN6hermes2vm10daysInYearEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @fmod(double noundef %i.a, double noundef 1.000000e+02) #19, !tbaa !3
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vmL10isLeapYearEd.exit.i

_ZN6hermes2vmL10isLeapYearEd.exit.i:              ; preds = %bb.b
  %i.f = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+02) #19, !tbaa !3
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit.thread.i:       ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i, %bb.b
  br label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vm10daysInYearEd.exit:                 ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit.i, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i
  %i.h = phi i1 [ true, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i ], [ false, %_ZN6hermes2vmL10isLeapYearEd.exit.i ], [ false, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef range(i32 0, 12) i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0) local_unnamed_addr #6 {
_ZN6hermes2vm10inLeapYearEd.exit:
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 4 uses
  %i.b = fadd double %i.a, -1.970000e+03
  %i.c = fadd double %i.a, -1.969000e+03
  %i.d = fmul double %i.c, 2.500000e-01
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = tail call double @llvm.fmuladd.f64(double %i.b, double 3.650000e+02, double %i.e)
  %i.g = fadd double %i.a, -1.901000e+03
  %i.h = insertelement <2 x double> poison, double %0, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.g, i64 1
  %i.j = fdiv <2 x double> %i.i, <double 8.640000e+07, double 1.000000e+02> ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call noundef double @llvm.floor.f64(double %i.k)
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fsub double %i.f, %i.n
  %i.p = fadd double %i.a, -1.601000e+03
  %i.q = fdiv double %i.p, 4.000000e+02
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = fadd double %i.r, %i.o
  %i.t = fsub double %i.l, %i.s                   ; 11 uses
  %i.u = fcmp olt double %i.t, 3.100000e+01
  br i1 %i.u, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes2vm10inLeapYearEd.exit
  %i.v = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 3 uses
  %i.w = tail call noundef double @fmod(double noundef %i.v, double noundef 4.000000e+00) #19, !tbaa !3
  %i.x = fcmp une double %i.w, 0.000000e+00
  br i1 %i.x, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef double @fmod(double noundef %i.v, double noundef 1.000000e+02) #19, !tbaa !3
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1

_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1:          ; preds = %bb.b
  %i.aa = tail call noundef double @fmod(double noundef %i.v, double noundef 4.000000e+02) #19, !tbaa !3
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1

_ZN6hermes2vm10inLeapYearEd.exit.thread.1:        ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.a
  br label %_ZN6hermes2vm10inLeapYearEd.exit.1

_ZN6hermes2vm10inLeapYearEd.exit.1:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.b
  %i.ac = phi double [ 5.900000e+01, %_ZN6hermes2vm10inLeapYearEd.exit.thread.1 ], [ 6.000000e+01, %bb.b ], [ 6.000000e+01, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1 ] ; 2 uses
  %i.ad = fcmp olt double %i.t, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.2

_ZN6hermes2vm10inLeapYearEd.exit.2:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.1
  %i.ae = fadd double %i.ac, 3.100000e+01         ; 2 uses
  %i.af = fcmp olt double %i.t, %i.ae
  br i1 %i.af, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.3

_ZN6hermes2vm10inLeapYearEd.exit.3:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.2
  %i.ag = fadd double %i.ae, 3.000000e+01         ; 2 uses
  %i.ah = fcmp olt double %i.t, %i.ag
  br i1 %i.ah, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.4

_ZN6hermes2vm10inLeapYearEd.exit.4:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.3
  %i.ai = fadd double %i.ag, 3.100000e+01         ; 2 uses
  %i.aj = fcmp olt double %i.t, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.5

_ZN6hermes2vm10inLeapYearEd.exit.5:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.4
  %i.ak = fadd double %i.ai, 3.000000e+01         ; 2 uses
  %i.al = fcmp olt double %i.t, %i.ak
  br i1 %i.al, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.6

_ZN6hermes2vm10inLeapYearEd.exit.6:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.5
  %i.am = fadd double %i.ak, 3.100000e+01         ; 2 uses
  %i.an = fcmp olt double %i.t, %i.am
  br i1 %i.an, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.7

_ZN6hermes2vm10inLeapYearEd.exit.7:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.6
  %i.ao = fadd double %i.am, 3.100000e+01         ; 2 uses
  %i.ap = fcmp olt double %i.t, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.8

_ZN6hermes2vm10inLeapYearEd.exit.8:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.7
  %i.aq = fadd double %i.ao, 3.000000e+01         ; 2 uses
  %i.ar = fcmp olt double %i.t, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.9

_ZN6hermes2vm10inLeapYearEd.exit.9:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.8
  %i.as = fadd double %i.aq, 3.100000e+01         ; 2 uses
  %i.at = fcmp olt double %i.t, %i.as
  br i1 %i.at, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.10

_ZN6hermes2vm10inLeapYearEd.exit.10:              ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.9
  %i.au = fadd double %i.as, 3.000000e+01
  %i.av = fcmp olt double %i.t, %i.au
  br i1 %i.av, label %bb.c, label %1

1:                                                ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.10
  br label %bb.c

bb.c:                                             ; preds = %1, %_ZN6hermes2vm10inLeapYearEd.exit.10, %_ZN6hermes2vm10inLeapYearEd.exit.9, %_ZN6hermes2vm10inLeapYearEd.exit.8, %_ZN6hermes2vm10inLeapYearEd.exit.7, %_ZN6hermes2vm10inLeapYearEd.exit.6, %_ZN6hermes2vm10inLeapYearEd.exit.5, %_ZN6hermes2vm10inLeapYearEd.exit.4, %_ZN6hermes2vm10inLeapYearEd.exit.3, %_ZN6hermes2vm10inLeapYearEd.exit.2, %_ZN6hermes2vm10inLeapYearEd.exit.1, %_ZN6hermes2vm10inLeapYearEd.exit
  %spec.select = phi i32 [ 0, %_ZN6hermes2vm10inLeapYearEd.exit ], [ 11, %1 ], [ 1, %_ZN6hermes2vm10inLeapYearEd.exit.1 ], [ 10, %_ZN6hermes2vm10inLeapYearEd.exit.10 ], [ 2, %_ZN6hermes2vm10inLeapYearEd.exit.2 ], [ 6, %_ZN6hermes2vm10inLeapYearEd.exit.6 ], [ 3, %_ZN6hermes2vm10inLeapYearEd.exit.3 ], [ 9, %_ZN6hermes2vm10inLeapYearEd.exit.9 ], [ 4, %_ZN6hermes2vm10inLeapYearEd.exit.4 ], [ 7, %_ZN6hermes2vm10inLeapYearEd.exit.7 ], [ 5, %_ZN6hermes2vm10inLeapYearEd.exit.5 ], [ 8, %_ZN6hermes2vm10inLeapYearEd.exit.8 ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 7 uses
  %i.b = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+00) #19, !tbaa !3
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZN6hermes2vm10inLeapYearEd.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @fmod(double noundef %i.a, double noundef 1.000000e+02) #19, !tbaa !3
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %_ZN6hermes2vmL10isLeapYearEd.exit.i.i

_ZN6hermes2vmL10isLeapYearEd.exit.i.i:            ; preds = %bb.b
  %i.f = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+02) #19, !tbaa !3
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.thread

bb.c:                                             ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i.i, %bb.b
  br label %_ZN6hermes2vm10inLeapYearEd.exit.thread

_ZN6hermes2vm10inLeapYearEd.exit.thread:          ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i, %bb.c
  %i.h = phi ptr [ @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, %bb.c ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %bb.a ]
  %i.i = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.j = zext nneg i32 %i.i to i64
  %i.k = fadd double %i.a, -1.601000e+03
  %i.l = insertelement <2 x double> poison, double %0, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 1
  %i.n = fdiv <2 x double> %i.m, <double 8.640000e+07, double 4.000000e+02> ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = tail call noundef double @llvm.floor.f64(double %i.o)
  %i.q = extractelement <2 x double> %i.n, i64 1
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = fadd double %i.a, -1.970000e+03
  %i.t = fadd double %i.a, -1.969000e+03
  %i.u = fmul double %i.t, 2.500000e-01
  %i.v = tail call double @llvm.floor.f64(double %i.u)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.s, double 3.650000e+02, double %i.v)
  %i.x = fadd double %i.a, -1.901000e+03
  %i.y = fdiv double %i.x, 1.000000e+02
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fsub double %i.w, %i.z
  %i.ab = fadd double %i.r, %i.aa
  %i.ac = fsub double %i.p, %i.ab
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.j
  %i.ad = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.ae = uitofp i16 %i.ad to double
  %i.af = fsub double %i.ac, %i.ae
  %i.ag = fadd double %i.af, 1.000000e+00
  ret double %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef i32 @_ZN6hermes2vm7weekDayEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 8.640000e+07
  %i.b = tail call noundef double @llvm.floor.f64(double %i.a)
  %i.c = fadd double %i.b, 4.000000e+00
  %i.d = tail call double @fmod(double noundef %i.c, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %i.f = fadd double %i.d, 7.000000e+00
  %i.g = select i1 %i.e, double %i.f, double %i.d
  %i.h = fptosi double %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm8localTZAEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %0 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 @time(ptr noundef null) #19
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.c = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #19 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %.not5 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not5, double -0.000000e+00, double -3.600000e+06
  %i.j = call double @llvm.fmuladd.f64(double %i.f, double 1.000000e+03, double %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret double %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN6hermes2vm6detail14equivalentTimeEl(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = sdiv i64 %0, 86400                       ; 2 uses
  %i.b = icmp slt i64 %0, 0
  %i.c = mul nsw i64 %i.a, 86400
  %.not.i = icmp ne i64 %i.c, %0
  %or.cond.not.i = select i1 %i.b, i1 %.not.i, i1 false
  %i.d = sext i1 %or.cond.not.i to i64
  %.0.i = add nsw i64 %i.a, %i.d                  ; 2 uses
  %i.e = trunc i64 %.0.i to i32
  %i.f = add nsw i32 %i.e, 100795972              ; 2 uses
  %i.g = sdiv i32 %i.f, 146097                    ; 2 uses
  %i.h = mul nsw i32 %i.g, 400
  %i.i = add nsw i32 %i.h, -274000
  %i.j = mul nsw i32 %i.g, 146097
  %i.k = add nsw i32 %i.j, -100795972
  %.recomposed = srem i32 %i.f, 146097            ; 2 uses
  %i.l = sdiv i32 %.recomposed, 36524             ; 2 uses
  %i.m = mul nsw i32 %i.l, 100
  %i.n = add nsw i32 %i.i, %i.m
  %i.o = mul nsw i32 %i.l, 36524
  %i.p = add nsw i32 %i.k, %i.o
  %.recomposed20 = srem i32 %.recomposed, 36524   ; 2 uses
  %i.q = sdiv i32 %.recomposed20, 1461            ; 2 uses
  %i.r = shl nsw i32 %i.q, 2
  %i.s = add nsw i32 %i.n, %i.r
  %i.t = mul nsw i32 %i.q, 1461
  %i.u = add nsw i32 %i.p, %i.t
  %.recomposed21 = srem i32 %.recomposed20, 1461  ; 2 uses
  %i.v = sdiv i32 %.recomposed21, 365             ; 3 uses
  %.recomposed22 = srem i32 %.recomposed21, 365
  %i.w = add nsw i32 %i.s, %i.v                   ; 3 uses
  %i.x = mul nsw i32 %i.v, 365
  %i.y = add nsw i32 %i.u, %i.x                   ; 3 uses
  %i.z = add nsw i32 %i.w, -1970
  %or.cond.i = icmp ult i32 %i.z, 68
  br i1 %or.cond.i, label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = add nsw i32 %i.y, 4                     ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sdiv i32 %i.aa, 7                       ; 2 uses
  %.sext.i.i.i = sext i32 %i.ac to i64
  %i.ad = icmp slt i32 %i.y, -4
  %i.ae = mul nsw i64 %.sext.i.i.i, 7
  %.not.i.i.i.i = icmp ne i64 %i.ae, %i.ab
  %or.cond.not.i.i.i.i = select i1 %i.ad, i1 %.not.i.i.i.i, i1 false
  %i.af = sext i1 %or.cond.not.i.i.i.i to i32
  %.0.i.i.i.i = add nsw i32 %i.ac, %i.af
  %.neg.i.i.i = mul nsw i32 %.0.i.i.i.i, -7
  %i.ag = add i32 %.neg.i.i.i, %i.aa
  %i.ah = and i32 %i.v, 3
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

bb.c:                                             ; preds = %bb.b
  %i.ai = srem i32 %i.w, 100
  %.not3.i.i = icmp ne i32 %i.ai, 0
  %i.aj = srem i32 %i.w, 400
  %.not4.i.i = icmp eq i32 %i.aj, 0
  %or.cond13.i = or i1 %.not3.i.i, %.not4.i.i
  %spec.select.i = select i1 %or.cond13.i, i32 2012, i32 2006
  br label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i:     ; preds = %bb.c, %bb.b
  %i.ak = phi i32 [ 2006, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.al = mul nsw i32 %i.ag, 12
  %i.am = srem i32 %i.al, 28
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = trunc i32 %i.an to i8
  %.lhs.trunc.i = add nsw i8 %i.ao, 42
  %i.ap = srem i8 %.lhs.trunc.i, 28
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN6hermes2vmL26epochDaysForYear2006To2033E, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit

_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit: ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i
  %.0.i2 = phi i32 [ %i.as, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i ], [ %i.y, %bb.a ]
  %.neg = mul i64 %.0.i, -86400
  %i.at = add i64 %.neg, %0
  %i.au = add nsw i32 %.recomposed22, %.0.i2
  %i.av = sitofp i32 %i.au to double
  %i.aw = sitofp i64 %i.at to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double 8.640000e+04, double %i.aw)
  %i.ay = fptosi double %i.ax to i32
  ret i32 %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
