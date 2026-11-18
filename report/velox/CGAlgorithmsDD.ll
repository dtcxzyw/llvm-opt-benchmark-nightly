Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CGAlgorithmsDD?download=true
inline.NumInlined: 150
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.geos::math::DD" = type { double, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.geos::geom::Coordinate" = type { double, double, double }

$_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util24IllegalArgumentExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTSN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@.str = private unnamed_addr constant [61 x i8] c"CGAlgorithmsDD::orientationIndex encountered NaN/Inf numbers\00", align 1, !guid !8
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8, !guid !9
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1, !guid !10
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8, !guid !11
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1, !guid !12
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [57 x i8] c"CGAlgorithmsDD::signOfDet2x2 encountered NaN/Inf numbers\00", align 1, !guid !13
@.str.2 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1, !guid !14
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8, !guid !15
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1, !guid !16
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8, !guid !17
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !18
@_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero = internal global %"class.geos::math::DD" zeroinitializer, align 8, !guid !19
@_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero = internal global i64 0, align 8, !guid !20

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !42 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %9 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %10 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %11 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %12 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %13 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %14 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %15 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %16 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %17 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %18 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %19 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %20 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %21 = alloca %"class.geos::math::DD", align 8   ; 5 uses
  %i.a = insertelement <2 x double> poison, double %4, i64 0
  %i.b = insertelement <2 x double> %i.a, double %5, i64 1
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b)
  %i.d = fcmp ueq <2 x double> %i.c, splat (double +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp eq i2 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #15
          to label %bb.u unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %.0, label %bb.f, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %.0, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn31 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #14
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.m = fsub double %0, %4
  %i.n = fsub double %3, %5
  %i.o = fmul double %i.m, %i.n                   ; 5 uses
  %i.p = fsub double %1, %5
  %i.q = fsub double %2, %4
  %i.r = fmul double %i.q, %i.p                   ; 5 uses
  %i.s = fsub double %i.o, %i.r                   ; 8 uses
  %i.t = fcmp ogt double %i.o, 0.000000e+00
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = fcmp ugt double %i.r, 0.000000e+00
  br i1 %i.u, label %bb.i, label %22

22:                                               ; preds = %bb.h
  %23 = fcmp ogt double %i.s, 0.000000e+00
  %..i.i = zext i1 %23 to i32
  br label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.v = fadd double %i.o, %i.r
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.w = fcmp olt double %i.o, 0.000000e+00
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = fcmp ult double %i.r, 0.000000e+00
  br i1 %i.x, label %bb.l, label %24

24:                                               ; preds = %bb.k
  %25 = fcmp olt double %i.s, 0.000000e+00
  %.0.i36.i = sext i1 %25 to i32
  br label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.y = fneg double %i.o
  %i.z = fsub double %i.y, %i.r
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aa = fcmp olt double %i.s, 0.000000e+00
  %i.ab = fcmp ogt double %i.s, 0.000000e+00
  %..i37.i = zext i1 %i.ab to i32
  %.0.i38.i = select i1 %i.aa, i32 -1, i32 %..i37.i
  br label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.i
  %.0.i = phi double [ %i.v, %bb.i ], [ %i.z, %bb.l ]
  %i.ac = fmul double %.0.i, 1.000000e-15         ; 2 uses
  %i.ad = fcmp ult double %i.s, %i.ac
  %i.ae = fneg double %i.s
  %i.af = fcmp ugt double %i.ac, %i.ae
  %or.cond.i = and i1 %i.ad, %i.af
  br i1 %or.cond.i, label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = fcmp olt double %i.s, 0.000000e+00
  %i.ah = fcmp ogt double %i.s, 0.000000e+00
  %..i39.i = zext i1 %i.ah to i32
  %.0.i40.i = select i1 %i.ag, i32 -1, i32 %..i39.i
  br label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread

_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store double %2, ptr %9, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.aj = fneg double %0
  store double %i.aj, ptr %10, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !30
  %i.al = call { double, double } @_ZN4geos4mathplERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 2 uses
  %i.am = extractvalue { double, double } %i.al, 0
  store double %i.am, ptr %8, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ao = extractvalue { double, double } %i.al, 1
  store double %i.ao, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store double %3, ptr %12, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.aq = fneg double %1
  store double %i.aq, ptr %13, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !30
  %i.as = call { double, double } @_ZN4geos4mathplERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 2 uses
  %i.at = extractvalue { double, double } %i.as, 0
  store double %i.at, ptr %11, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.av = extractvalue { double, double } %i.as, 1
  store double %i.av, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store double %4, ptr %15, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double 0.000000e+00, ptr %i.aw, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.ax = fneg double %2
  store double %i.ax, ptr %16, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 8
  store double 0.000000e+00, ptr %i.ay, align 8, !tbaa !30
  %i.az = call { double, double } @_ZN4geos4mathplERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 2 uses
  %i.ba = extractvalue { double, double } %i.az, 0
  store double %i.ba, ptr %14, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = extractvalue { double, double } %i.az, 1
  store double %i.bc, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store double %5, ptr %18, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.be = fneg double %3
  store double %i.be, ptr %19, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store double 0.000000e+00, ptr %i.bf, align 8, !tbaa !30
  %i.bg = call { double, double } @_ZN4geos4mathplERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) ; 2 uses
  %i.bh = extractvalue { double, double } %i.bg, 0
  store double %i.bh, ptr %17, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bj = extractvalue { double, double } %i.bg, 1
  store double %i.bj, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.bk = call { double, double } @_ZN4geos4mathmlERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %17) ; 2 uses
  %i.bl = extractvalue { double, double } %i.bk, 0
  store double %i.bl, ptr %20, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bn = extractvalue { double, double } %i.bk, 1
  store double %i.bn, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.bo = call { double, double } @_ZN4geos4mathmlERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 2 uses
  %i.bp = extractvalue { double, double } %i.bo, 0
  store double %i.bp, ptr %21, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.br = extractvalue { double, double } %i.bo, 1
  store double %i.br, ptr %i.bq, align 8
  %i.bs = call { double, double } @_ZN4geos4mathmiERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21) ; 2 uses
  %i.bt = extractvalue { double, double } %i.bs, 0 ; 3 uses
  %i.bu = extractvalue { double, double } %i.bs, 1 ; 2 uses
  %i.bv = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero acquire, align 8
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.r, !prof !31

bb.p:                                             ; preds = %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit
  %i.bx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) #14
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, i8 0, i64 16, i1 false)
  %i.by = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit
  %i.bz = load double, ptr @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, align 8, !tbaa !29 ; 3 uses
  %i.ca = fcmp olt double %i.bt, %i.bz
  br i1 %i.ca, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = fcmp oeq double %i.bt, %i.bz
  br i1 %i.cb, label %_ZNK4geos4math2DDltERKS1_.exit.i, label %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i

_ZNK4geos4math2DDltERKS1_.exit.i:                 ; preds = %bb.s
  %i.cc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, i64 8), align 8, !tbaa !30 ; 2 uses
  %i.cd = fcmp olt double %i.bu, %i.cc
  br i1 %i.cd, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit, label %_ZNK4geos4math2DDgtERKS1_.exit.i

_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i:  ; preds = %bb.s
  %i.ce = fcmp ogt double %i.bt, %i.bz
  br i1 %i.ce, label %_ZNK4geos4math2DDgtERKS1_.exit.thread.i, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZNK4geos4math2DDgtERKS1_.exit.i:                 ; preds = %_ZNK4geos4math2DDltERKS1_.exit.i
  %i.cf = fcmp ogt double %i.bu, %i.cc
  %cond.fr.i = freeze i1 %i.cf
  br i1 %cond.fr.i, label %_ZNK4geos4math2DDgtERKS1_.exit.thread.i, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZNK4geos4math2DDgtERKS1_.exit.thread.i:          ; preds = %_ZNK4geos4math2DDgtERKS1_.exit.i, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i
  br label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit: ; preds = %bb.r, %_ZNK4geos4math2DDltERKS1_.exit.i, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i, %_ZNK4geos4math2DDgtERKS1_.exit.i, %_ZNK4geos4math2DDgtERKS1_.exit.thread.i
  %.0.i26 = phi i32 [ -1, %_ZNK4geos4math2DDltERKS1_.exit.i ], [ -1, %bb.r ], [ 1, %_ZNK4geos4math2DDgtERKS1_.exit.thread.i ], [ 0, %_ZNK4geos4math2DDgtERKS1_.exit.i ], [ 0, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread

_ZN4geos9algorithm14CGAlgorithmsDD22orientationIndexFilterEdddddd.exit.thread: ; preds = %bb.o, %24, %bb.m, %22, %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit
  %.023 = phi i32 [ %.0.i26, %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit ], [ %.0.i40.i, %bb.o ], [ %.0.i36.i, %24 ], [ %.0.i38.i, %bb.m ], [ %..i.i, %22 ]
  ret i32 %.023

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn30 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn31, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn30

bb.u:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !43 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 24, ptr %i.a, align 8, !tbaa !44
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26
  %i.d = load i64, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !36
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare { double, double } @_ZN4geos4mathplERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { double, double } @_ZN4geos4mathmlERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { double, double } @_ZN4geos4mathmiERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 !guid !45 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !39
  %i.d = load double, ptr %1, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !39
  %i.g = load double, ptr %2, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %i.a, double noundef %i.c, double noundef %i.d, double noundef %i.f, double noundef %i.g, double noundef %i.i)
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos9algorithm14CGAlgorithmsDD12signOfDet2x2ERKNS_4math2DDES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !46 {
bb.a:
  %4 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %5 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = tail call { double, double } @_ZN4geos4mathmlERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0
  store double %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = extractvalue { double, double } %i.a, 1
  store double %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.e = tail call { double, double } @_ZN4geos4mathmlERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.f = extractvalue { double, double } %i.e, 0
  store double %i.f, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = extractvalue { double, double } %i.e, 1
  store double %i.h, ptr %i.g, align 8
  %i.i = call { double, double } @_ZN4geos4mathmiERKNS0_2DDES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 3 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 2 uses
  %i.l = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) #14
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, i8 0, i64 16, i1 false)
  %i.o = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load double, ptr @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, align 8, !tbaa !29 ; 3 uses
  %i.q = fcmp olt double %i.j, %i.p
  br i1 %i.q, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fcmp oeq double %i.j, %i.p
  br i1 %i.r, label %_ZNK4geos4math2DDltERKS1_.exit.i, label %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i

_ZNK4geos4math2DDltERKS1_.exit.i:                 ; preds = %bb.e
  %i.s = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDEE4zero, i64 8), align 8, !tbaa !30 ; 2 uses
  %i.t = fcmp olt double %i.k, %i.s
  br i1 %i.t, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit, label %_ZNK4geos4math2DDgtERKS1_.exit.i

_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i:  ; preds = %bb.e
  %i.u = fcmp ogt double %i.j, %i.p
  br i1 %i.u, label %_ZNK4geos4math2DDgtERKS1_.exit.thread.i, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZNK4geos4math2DDgtERKS1_.exit.i:                 ; preds = %_ZNK4geos4math2DDltERKS1_.exit.i
  %i.v = fcmp ogt double %i.k, %i.s
  %cond.fr.i = freeze i1 %i.v
  br i1 %cond.fr.i, label %_ZNK4geos4math2DDgtERKS1_.exit.thread.i, label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZNK4geos4math2DDgtERKS1_.exit.thread.i:          ; preds = %_ZNK4geos4math2DDgtERKS1_.exit.i, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i
  br label %_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit

_ZN12_GLOBAL__N_113OrientationDDERKN4geos4math2DDE.exit: ; preds = %bb.d, %_ZNK4geos4math2DDltERKS1_.exit.i, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i, %_ZNK4geos4math2DDgtERKS1_.exit.i, %_ZNK4geos4math2DDgtERKS1_.exit.thread.i
  %.0.i = phi i32 [ -1, %_ZNK4geos4math2DDltERKS1_.exit.i ], [ -1, %bb.d ], [ 1, %_ZNK4geos4math2DDgtERKS1_.exit.thread.i ], [ 0, %_ZNK4geos4math2DDgtERKS1_.exit.i ], [ 0, %_ZNK4geos4math2DDltERKS1_.exit.thread2.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos9algorithm14CGAlgorithmsDD12signOfDet2x2Edddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !47 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %7 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %8 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %9 = alloca %"class.geos::math::DD", align 8    ; 5 uses
  %i.a = insertelement <4 x double> poison, double %0, i64 0
  %i.b = insertelement <4 x double> %i.a, double %1, i64 1
  %i.c = insertelement <4 x double> %i.b, double %2, i64 2
  %i.d = insertelement <4 x double> %i.c, double %3, i64 3
  %i.e = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.d)
  %i.f = fcmp ueq <4 x double> %i.e, splat (double +inf)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
end_hunk_0
