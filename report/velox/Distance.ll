Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Distance?download=true
inline.NumInlined: 112
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

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

@.str = private unnamed_addr constant [44 x i8] c"Line array must contain at least one vertex\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 4 uses
  %i.b = load double, ptr %2, align 8, !tbaa !8   ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.c, i1 %i.h, i1 false
  %i.i = load double, ptr %0, align 8, !tbaa !8   ; 3 uses
  %i.j = fsub double %i.i, %i.a                   ; 5 uses
  br i1 %.0.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !11
  %i.m = fsub double %i.l, %i.e                   ; 2 uses
  %i.n = fmul double %i.j, %i.j
  %i.o = fmul double %i.m, %i.m
  %i.p = fadd double %i.n, %i.o
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.p)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = fsub double %i.b, %i.a                   ; 4 uses
  %i.r = fmul double %i.q, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 3 uses
  %i.u = fsub double %i.t, %i.e                   ; 3 uses
  %i.v = fsub double %i.g, %i.e                   ; 4 uses
  %i.w = fmul double %i.v, %i.u
  %i.x = fadd double %i.r, %i.w
  %i.y = fmul double %i.q, %i.q
  %i.z = fmul double %i.v, %i.v
  %i.aa = fadd double %i.y, %i.z                  ; 3 uses
  %i.ab = fdiv double %i.x, %i.aa                 ; 2 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = fmul double %i.j, %i.j
  %i.ae = fmul double %i.u, %i.u
  %i.af = fadd double %i.ad, %i.ae
  %sqrt.i53 = tail call noundef double @llvm.sqrt.f64(double %i.af)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ag = fcmp ult double %i.ab, 1.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = fsub double %i.i, %i.b                  ; 2 uses
  %i.ai = fsub double %i.t, %i.g                  ; 2 uses
  %i.aj = fmul double %i.ah, %i.ah
  %i.ak = fmul double %i.ai, %i.ai
  %i.al = fadd double %i.aj, %i.ak
  %sqrt.i54 = tail call noundef double @llvm.sqrt.f64(double %i.al)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = fsub double %i.e, %i.t
  %i.an = fmul double %i.q, %i.am
  %i.ao = fsub double %i.a, %i.i
  %i.ap = fmul double %i.v, %i.ao
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = fdiv double %i.aq, %i.aa
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.at = fmul double %sqrt, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi double [ %sqrt.i, %bb.b ], [ %sqrt.i53, %bb.d ], [ %sqrt.i54, %bb.f ], [ %i.at, %bb.g ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm8Distance24pointToLinePerpendicularERKNS_4geom10CoordinateES5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !12
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.f = fsub <2 x double> %i.e, %i.a             ; 5 uses
  %i.g = fmul <2 x double> %i.d, %i.f             ; 2 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %foldExtExtBinop26 = fmul <2 x double> %i.f, %i.f
  %foldExtExtBinop28 = fmul <2 x double> %i.f, %i.f
  %shift30 = shufflevector <2 x double> %foldExtExtBinop28, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %foldExtExtBinop26, %shift30 ; 2 uses
  %i.h = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %foldExtExtBinop33 = fdiv <2 x double> %foldExtExtBinop, %foldExtExtBinop31
  %i.i = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h)
  %i.k = fmul double %sqrt, %i.j
  ret double %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm8Distance16segmentToSegmentERKNS_4geom10CoordinateES5_S5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x double>, ptr %0, align 8       ; 19 uses
  %i.d = load <2 x double>, ptr %1, align 8       ; 12 uses
  %i.e = load double, ptr %i.a, align 8           ; 13 uses
  %i.f = fcmp oeq <2 x double> %i.c, %i.d
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %4 = extractelement <2 x double> %i.c, i64 1    ; 19 uses
  %i.h = fcmp oeq double %4, %i.e
  %.0.i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.i = load <2 x double>, ptr %2, align 8       ; 16 uses
  %i.j = load <2 x double>, ptr %3, align 8       ; 15 uses
  %i.k = load double, ptr %i.b, align 8           ; 16 uses
  %i.l = fcmp oeq <2 x double> %i.i, %i.j
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %5 = extractelement <2 x double> %i.i, i64 1    ; 16 uses
  %i.n = fcmp oeq double %5, %i.k
  %.0.i.i.i = select i1 %i.m, i1 %i.n, i1 false   ; 2 uses
  br i1 %.0.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop = fsub <2 x double> %i.c, %i.i ; 5 uses
  br i1 %.0.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %4, %5                       ; 2 uses
  %foldExtExtBinop124 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.p = extractelement <2 x double> %foldExtExtBinop124, i64 0
  %i.q = fmul double %i.o, %i.o
  %i.r = fadd double %i.p, %i.q
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.r)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop126 = fsub <2 x double> %i.j, %i.i ; 4 uses
  %i.s = extractelement <2 x double> %foldExtExtBinop126, i64 0
  %foldExtExtBinop128 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop126
  %i.t = extractelement <2 x double> %foldExtExtBinop128, i64 0
  %i.u = fsub double %4, %5                       ; 3 uses
  %i.v = fsub double %i.k, %5                     ; 4 uses
  %i.w = fmul double %i.u, %i.v
  %i.x = fadd double %i.t, %i.w
  %foldExtExtBinop130 = fmul <2 x double> %foldExtExtBinop126, %foldExtExtBinop126
  %i.y = extractelement <2 x double> %foldExtExtBinop130, i64 0
  %i.z = fmul double %i.v, %i.v
  %i.aa = fadd double %i.y, %i.z                  ; 3 uses
  %i.ab = fdiv double %i.x, %i.aa                 ; 2 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop132 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.ad = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.ae = fmul double %i.u, %i.u
  %i.af = fadd double %i.ad, %i.ae
  %sqrt.i53.i = tail call noundef double @llvm.sqrt.f64(double %i.af)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = fcmp ult double %i.ab, 1.000000e+00
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop134 = fsub <2 x double> %i.c, %i.j ; 2 uses
  %i.ah = fsub double %4, %i.k                    ; 2 uses
  %foldExtExtBinop136 = fmul <2 x double> %foldExtExtBinop134, %foldExtExtBinop134
  %i.ai = extractelement <2 x double> %foldExtExtBinop136, i64 0
  %i.aj = fmul double %i.ah, %i.ah
  %i.ak = fadd double %i.ai, %i.aj
  %sqrt.i54.i = tail call noundef double @llvm.sqrt.f64(double %i.ak)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.al = fsub double %5, %4
  %i.am = fmul double %i.s, %i.al
  %foldExtExtBinop138 = fsub <2 x double> %i.i, %i.c
  %i.an = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.ao = fmul double %i.an, %i.v
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = fdiv double %i.ap, %i.aa
  %i.ar = tail call double @llvm.fabs.f64(double %i.aq)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.as = fmul double %sqrt.i, %i.ar
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.0.i.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop140 = fsub <2 x double> %i.j, %i.c ; 3 uses
  %foldExtExtBinop142 = fsub <2 x double> %i.d, %i.c ; 4 uses
  %i.at = extractelement <2 x double> %foldExtExtBinop142, i64 0
  %foldExtExtBinop144 = fmul <2 x double> %foldExtExtBinop142, %foldExtExtBinop140
  %i.au = extractelement <2 x double> %foldExtExtBinop144, i64 0
  %i.av = fsub double %i.k, %4                    ; 3 uses
  %i.aw = fsub double %i.e, %4                    ; 4 uses
  %i.ax = fmul double %i.aw, %i.av
  %i.ay = fadd double %i.au, %i.ax
  %foldExtExtBinop146 = fmul <2 x double> %foldExtExtBinop142, %foldExtExtBinop142
  %i.az = extractelement <2 x double> %foldExtExtBinop146, i64 0
  %i.ba = fmul double %i.aw, %i.aw
  %i.bb = fadd double %i.az, %i.ba                ; 3 uses
  %i.bc = fdiv double %i.ay, %i.bb                ; 2 uses
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop148 = fmul <2 x double> %foldExtExtBinop140, %foldExtExtBinop140
  %i.be = extractelement <2 x double> %foldExtExtBinop148, i64 0
  %i.bf = fmul double %i.av, %i.av
  %i.bg = fadd double %i.be, %i.bf
  %sqrt.i53.i70 = tail call noundef double @llvm.sqrt.f64(double %i.bg)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = fcmp ult double %i.bc, 1.000000e+00
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %foldExtExtBinop150 = fsub <2 x double> %i.j, %i.d ; 2 uses
  %i.bi = fsub double %i.k, %i.e                  ; 2 uses
  %foldExtExtBinop152 = fmul <2 x double> %foldExtExtBinop150, %foldExtExtBinop150
  %i.bj = extractelement <2 x double> %foldExtExtBinop152, i64 0
  %i.bk = fmul double %i.bi, %i.bi
  %i.bl = fadd double %i.bj, %i.bk
  %sqrt.i54.i72 = tail call noundef double @llvm.sqrt.f64(double %i.bl)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = fsub double %4, %i.k
  %i.bn = fmul double %i.at, %i.bm
  %foldExtExtBinop154 = fsub <2 x double> %i.c, %i.j
  %i.bo = extractelement <2 x double> %foldExtExtBinop154, i64 0
  %i.bp = fmul double %i.aw, %i.bo
  %i.bq = fsub double %i.bn, %i.bp
  %i.br = fdiv double %i.bq, %i.bb
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %sqrt.i73 = tail call double @llvm.sqrt.f64(double %i.bb)
  %i.bt = fmul double %sqrt.i73, %i.bs
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.o:                                             ; preds = %bb.i
  %i.bu = shufflevector <2 x double> %i.d, <2 x double> %i.j, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bv = shufflevector <2 x double> %i.c, <2 x double> %i.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bw = fcmp olt <2 x double> %i.bu, %i.bv
  %i.bx = select <2 x i1> %i.bw, <2 x double> %i.bu, <2 x double> %i.bv
  %i.by = shufflevector <2 x double> %i.i, <2 x double> %i.c, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = shufflevector <2 x double> %i.j, <2 x double> %i.d, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fcmp olt <2 x double> %i.by, %i.bz
  %i.cb = select <2 x i1> %i.ca, <2 x double> %i.bz, <2 x double> %i.by
  %i.cc = fcmp ogt <2 x double> %i.bx, %i.cb
  %i.cd = bitcast <2 x i1> %i.cc to i2
  %or.cond.i.not = icmp eq i2 %i.cd, 0
  br i1 %or.cond.i.not, label %bb.p, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ce = fcmp olt double %5, %i.k
  %i.cf = select i1 %i.ce, double %i.k, double %5
  %i.cg = fcmp olt double %i.e, %4
  %i.ch = select i1 %i.cg, double %i.e, double %4
  %i.ci = fcmp ogt double %i.ch, %i.cf
  br i1 %i.ci, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit

_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit: ; preds = %bb.p
  %i.cj = fcmp olt double %4, %i.e
  %i.ck = fcmp olt double %i.k, %5
  %i.cl = select i1 %i.ck, double %i.k, double %5
  %i.cm = select i1 %i.cj, double %i.e, double %4
  %i.cn = fcmp uge double %i.cm, %i.cl
  br i1 %i.cn, label %bb.q, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

bb.q:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit
  %i.co = fsub <2 x double> %i.bu, %i.bv          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.d, <2 x double> %i.j, <2 x i32> <i32 1, i32 3>
  %i.cq = shufflevector <2 x double> %i.c, <2 x double> %i.i, <2 x i32> <i32 1, i32 3>
  %i.cr = fsub <2 x double> %i.cp, %i.cq          ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = fmul <2 x double> %i.cs, %i.co          ; 2 uses
  %shift158 = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop159 = fsub <2 x double> %i.ct, %shift158 ; 2 uses
  %i.cu = extractelement <2 x double> %foldExtExtBinop159, i64 0
  %i.cv = fcmp oeq double %i.cu, 0.000000e+00
  br i1 %i.cv, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %foldExtExtBinop161.a = fsub <2 x double> %i.c, %i.i ; 2 uses
  %6 = shufflevector <2 x double> %foldExtExtBinop161.a, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fmul <2 x double> %i.co, %6
  %i.cx = shufflevector <2 x double> %foldExtExtBinop161.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cr, %i.cx
  %i.cz = fsub <2 x double> %i.cw, %i.cy
  %i.da = shufflevector <2 x double> %foldExtExtBinop159, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x double> %i.cz, %i.da
  %7 = shufflevector <2 x double> %i.db, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.dc = fcmp ogt <4 x double> %7, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.dd = fcmp olt <4 x double> %7, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.de = shufflevector <4 x i1> %i.dc, <4 x i1> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = bitcast <4 x i1> %i.de to i4
  %.not = icmp eq i4 %i.df, 0
  br i1 %.not, label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread: ; preds = %bb.o, %bb.p, %bb.r, %bb.q, %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit
  %foldExtExtBinop163.a = fsub <2 x double> %i.c, %i.i ; 4 uses
  %i.dg = extractelement <2 x double> %foldExtExtBinop163.a, i64 0
  %foldExtExtBinop165.a = fsub <2 x double> %i.j, %i.i ; 5 uses
  %i.dh = extractelement <2 x double> %foldExtExtBinop165.a, i64 0 ; 2 uses
  %foldExtExtBinop167.a = fmul <2 x double> %foldExtExtBinop163.a, %foldExtExtBinop165.a
  %i.di = extractelement <2 x double> %foldExtExtBinop167.a, i64 0
  %i.dj = fsub double %4, %5                      ; 4 uses
  %i.dk = fsub double %i.k, %5                    ; 6 uses
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = fadd double %i.di, %i.dl
  %foldExtExtBinop169.a = fmul <2 x double> %foldExtExtBinop165.a, %foldExtExtBinop165.a
  %i.dn = extractelement <2 x double> %foldExtExtBinop169.a, i64 0
  %i.do = fmul double %i.dk, %i.dk
  %i.dp = fadd double %i.dn, %i.do                ; 6 uses
  %i.dq = fdiv double %i.dm, %i.dp                ; 2 uses
  %i.dr = fcmp ugt double %i.dq, 0.000000e+00
  br i1 %i.dr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread
  %foldExtExtBinop171.a = fmul <2 x double> %foldExtExtBinop163.a, %foldExtExtBinop163.a
  %i.ds = extractelement <2 x double> %foldExtExtBinop171.a, i64 0
  %i.dt = fmul double %i.dj, %i.dj
  %i.du = fadd double %i.ds, %i.dt
  %sqrt.i53.i77 = tail call noundef double @llvm.sqrt.f64(double %i.du)
  br label %bb.w

bb.t:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread
  %i.dv = fcmp ult double %i.dq, 1.000000e+00
  br i1 %i.dv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop173.a = fsub <2 x double> %i.c, %i.j ; 2 uses
  %i.dw = fsub double %4, %i.k                    ; 2 uses
  %foldExtExtBinop175.a = fmul <2 x double> %foldExtExtBinop173.a, %foldExtExtBinop173.a
  %i.dx = extractelement <2 x double> %foldExtExtBinop175.a, i64 0
  %i.dy = fmul double %i.dw, %i.dw
  %i.dz = fadd double %i.dx, %i.dy
  %sqrt.i54.i79 = tail call noundef double @llvm.sqrt.f64(double %i.dz)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ea = fsub double %5, %4
  %i.eb = fmul double %i.dh, %i.ea
  %foldExtExtBinop177.a = fsub <2 x double> %i.i, %i.c
  %i.ec = extractelement <2 x double> %foldExtExtBinop177.a, i64 0
  %i.ed = fmul double %i.ec, %i.dk
  %i.ee = fsub double %i.eb, %i.ed
  %i.ef = fdiv double %i.ee, %i.dp
  %i.eg = tail call double @llvm.fabs.f64(double %i.ef)
  %sqrt.i80 = tail call double @llvm.sqrt.f64(double %i.dp)
  %i.eh = fmul double %sqrt.i80, %i.eg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.1.i78 = phi double [ %i.eh, %bb.v ], [ %sqrt.i53.i77, %bb.s ], [ %sqrt.i54.i79, %bb.u ] ; 2 uses
  %foldExtExtBinop179.a = fsub <2 x double> %i.d, %i.i ; 3 uses
  %foldExtExtBinop181.a = fmul <2 x double> %foldExtExtBinop179.a, %foldExtExtBinop165.a
  %i.ei = extractelement <2 x double> %foldExtExtBinop181.a, i64 0
  %i.ej = fsub double %i.e, %5                    ; 3 uses
  %i.ek = fmul double %i.ej, %i.dk
  %i.el = fadd double %i.ei, %i.ek
  %i.em = fdiv double %i.el, %i.dp                ; 2 uses
  %i.en = fcmp ugt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %foldExtExtBinop183.a = fmul <2 x double> %foldExtExtBinop179.a, %foldExtExtBinop179.a
  %i.eo = extractelement <2 x double> %foldExtExtBinop183.a, i64 0
  %i.ep = fmul double %i.ej, %i.ej
  %i.eq = fadd double %i.eo, %i.ep
  %sqrt.i53.i84 = tail call noundef double @llvm.sqrt.f64(double %i.eq)
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.er = fcmp ult double %i.em, 1.000000e+00
  br i1 %i.er, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %foldExtExtBinop185.a = fsub <2 x double> %i.d, %i.j ; 2 uses
  %i.es = fsub double %i.e, %i.k                  ; 2 uses
  %foldExtExtBinop187.a = fmul <2 x double> %foldExtExtBinop185.a, %foldExtExtBinop185.a
  %i.et = extractelement <2 x double> %foldExtExtBinop187.a, i64 0
  %i.eu = fmul double %i.es, %i.es
  %i.ev = fadd double %i.et, %i.eu
  %sqrt.i54.i86 = tail call noundef double @llvm.sqrt.f64(double %i.ev)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ew = fsub double %5, %i.e
  %i.ex = fmul double %i.dh, %i.ew
  %foldExtExtBinop189.a = fsub <2 x double> %i.i, %i.d
  %i.ey = extractelement <2 x double> %foldExtExtBinop189.a, i64 0
  %i.ez = fmul double %i.ey, %i.dk
  %i.fa = fsub double %i.ex, %i.ez
  %i.fb = fdiv double %i.fa, %i.dp
  %i.fc = tail call double @llvm.fabs.f64(double %i.fb)
  %sqrt.i87 = tail call double @llvm.sqrt.f64(double %i.dp)
  %i.fd = fmul double %sqrt.i87, %i.fc
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.1.i85 = phi double [ %i.fd, %bb.aa ], [ %sqrt.i53.i84, %bb.x ], [ %sqrt.i54.i86, %bb.z ] ; 2 uses
  %foldExtExtBinop191.a = fsub <2 x double> %i.i, %i.c ; 3 uses
  %foldExtExtBinop193.a = fsub <2 x double> %i.d, %i.c ; 5 uses
  %i.fe = extractelement <2 x double> %foldExtExtBinop193.a, i64 0 ; 2 uses
  %foldExtExtBinop195.a = fmul <2 x double> %foldExtExtBinop193.a, %foldExtExtBinop191.a
  %i.ff = extractelement <2 x double> %foldExtExtBinop195.a, i64 0
  %i.fg = fsub double %5, %4                      ; 3 uses
  %i.fh = fsub double %i.e, %4                    ; 6 uses
  %i.fi = fmul double %i.fh, %i.fg
  %i.fj = fadd double %i.ff, %i.fi
  %foldExtExtBinop197.a = fmul <2 x double> %foldExtExtBinop193.a, %foldExtExtBinop193.a
  %i.fk = extractelement <2 x double> %foldExtExtBinop197.a, i64 0
  %i.fl = fmul double %i.fh, %i.fh
  %i.fm = fadd double %i.fk, %i.fl                ; 6 uses
  %i.fn = fdiv double %i.fj, %i.fm                ; 2 uses
  %i.fo = fcmp ugt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %foldExtExtBinop199.a = fmul <2 x double> %foldExtExtBinop191.a, %foldExtExtBinop191.a
  %i.fp = extractelement <2 x double> %foldExtExtBinop199.a, i64 0
  %i.fq = fmul double %i.fg, %i.fg
  %i.fr = fadd double %i.fp, %i.fq
  %sqrt.i53.i91 = tail call noundef double @llvm.sqrt.f64(double %i.fr)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.fs = fcmp ult double %i.fn, 1.000000e+00
  br i1 %i.fs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %foldExtExtBinop201.a = fsub <2 x double> %i.i, %i.d ; 2 uses
  %i.ft = fsub double %5, %i.e                    ; 2 uses
  %foldExtExtBinop203.a = fmul <2 x double> %foldExtExtBinop201.a, %foldExtExtBinop201.a
  %i.fu = extractelement <2 x double> %foldExtExtBinop203.a, i64 0
  %i.fv = fmul double %i.ft, %i.ft
  %i.fw = fadd double %i.fu, %i.fv
  %sqrt.i54.i93 = tail call noundef double @llvm.sqrt.f64(double %i.fw)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fx = fmul double %i.fe, %i.dj
  %i.fy = fmul double %i.fh, %i.dg
  %i.fz = fsub double %i.fx, %i.fy
  %i.ga = fdiv double %i.fz, %i.fm
  %i.gb = tail call double @llvm.fabs.f64(double %i.ga)
  %sqrt.i94 = tail call double @llvm.sqrt.f64(double %i.fm)
  %i.gc = fmul double %sqrt.i94, %i.gb
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %.1.i92 = phi double [ %i.gc, %bb.af ], [ %sqrt.i53.i91, %bb.ac ], [ %sqrt.i54.i93, %bb.ae ] ; 2 uses
  %foldExtExtBinop205.a = fsub <2 x double> %i.j, %i.c ; 3 uses
  %foldExtExtBinop207.a = fmul <2 x double> %foldExtExtBinop193.a, %foldExtExtBinop205.a
  %i.gd = extractelement <2 x double> %foldExtExtBinop207.a, i64 0
  %i.ge = fsub double %i.k, %4                    ; 3 uses
  %i.gf = fmul double %i.fh, %i.ge
  %i.gg = fadd double %i.gd, %i.gf
  %i.gh = fdiv double %i.gg, %i.fm                ; 2 uses
  %i.gi = fcmp ugt double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %foldExtExtBinop209.a = fmul <2 x double> %foldExtExtBinop205.a, %foldExtExtBinop205.a
  %i.gj = extractelement <2 x double> %foldExtExtBinop209.a, i64 0
  %i.gk = fmul double %i.ge, %i.ge
  %i.gl = fadd double %i.gj, %i.gk
  %sqrt.i53.i98 = tail call noundef double @llvm.sqrt.f64(double %i.gl)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103

bb.ai:                                            ; preds = %bb.ag
  %i.gm = fcmp ult double %i.gh, 1.000000e+00
  br i1 %i.gm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %foldExtExtBinop211.a = fsub <2 x double> %i.j, %i.d ; 2 uses
  %i.gn = fsub double %i.k, %i.e                  ; 2 uses
  %foldExtExtBinop213.a = fmul <2 x double> %foldExtExtBinop211.a, %foldExtExtBinop211.a
  %i.go = extractelement <2 x double> %foldExtExtBinop213.a, i64 0
  %i.gp = fmul double %i.gn, %i.gn
  %i.gq = fadd double %i.go, %i.gp
  %sqrt.i54.i100 = tail call noundef double @llvm.sqrt.f64(double %i.gq)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103

bb.ak:                                            ; preds = %bb.ai
  %i.gr = fsub double %4, %i.k
  %i.gs = fmul double %i.fe, %i.gr
  %foldExtExtBinop215 = fsub <2 x double> %i.c, %i.j
  %i.gt = extractelement <2 x double> %foldExtExtBinop215, i64 0
  %i.gu = fmul double %i.fh, %i.gt
  %i.gv = fsub double %i.gs, %i.gu
  %i.gw = fdiv double %i.gv, %i.fm
  %i.gx = tail call double @llvm.fabs.f64(double %i.gw)
  %sqrt.i101 = tail call double @llvm.sqrt.f64(double %i.fm)
  %i.gy = fmul double %sqrt.i101, %i.gx
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103

_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103: ; preds = %bb.ah, %bb.aj, %bb.ak
  %.1.i99 = phi double [ %i.gy, %bb.ak ], [ %sqrt.i53.i98, %bb.ah ], [ %sqrt.i54.i100, %bb.aj ] ; 2 uses
  %i.gz = fcmp olt double %.1.i99, %.1.i92
  %i.ha = select i1 %i.gz, double %.1.i99, double %.1.i92 ; 2 uses
  %i.hb = fcmp olt double %i.ha, %.1.i85
  %i.hc = select i1 %i.hb, double %i.ha, double %.1.i85 ; 2 uses
  %i.hd = fcmp olt double %i.hc, %.1.i78
  %.sroa.speculated = select i1 %i.hd, double %i.hc, double %.1.i78
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.h, %bb.g, %bb.e, %bb.c, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103, %bb.r
  %.166 = phi double [ 0.000000e+00, %bb.r ], [ %i.as, %bb.h ], [ %.sroa.speculated, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit103 ], [ %sqrt.i.i, %bb.c ], [ %sqrt.i53.i, %bb.e ], [ %sqrt.i54.i, %bb.g ], [ %i.bt, %bb.n ], [ %sqrt.i53.i70, %bb.k ], [ %sqrt.i54.i72, %bb.m ]
  ret double %.166
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9algorithm8Distance20pointToSegmentStringERKNS_4geom10CoordinateEPKNS2_18CoordinateSequenceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
          to label %bb.o unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.020 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.020, label %bb.f, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.020, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #13
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load <2 x double>, ptr %0, align 8, !tbaa !12
  %i.q = load <2 x double>, ptr %i.n, align 8, !tbaa !12
  %i.r = fsub <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = fmul <2 x double> %i.r, %i.r             ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.s, %shift
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.t) ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !21
  %.not = icmp eq i64 %i.x, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit, %bb.g
  %.019.lcssa = phi double [ %sqrt.i, %bb.g ], [ %spec.select, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit ]
  ret double %.019.lcssa

.lr.ph:                                           ; preds = %bb.g, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit
  %.032 = phi i64 [ %i.ac, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit ], [ 0, %bb.g ] ; 2 uses
  %.01931 = phi double [ %spec.select, %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit ], [ %sqrt.i, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.032) ; 2 uses
  %i.ac = add nuw i64 %.032, 1                    ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ac) ; 2 uses
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !8 ; 4 uses
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !8 ; 3 uses
  %i.aj = fcmp oeq double %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load double, ptr %i.ak, align 8         ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load double, ptr %i.am, align 8         ; 3 uses
  %i.ao = fcmp oeq double %i.al, %i.an
  %.0.i.i.i = select i1 %i.aj, i1 %i.ao, i1 false
  %i.ap = load double, ptr %0, align 8, !tbaa !8  ; 3 uses
  %i.aq = fsub double %i.ap, %i.ah                ; 5 uses
  br i1 %.0.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ar = load double, ptr %i.o, align 8, !tbaa !11
  %i.as = fsub double %i.ar, %i.al                ; 2 uses
  %i.at = fmul double %i.aq, %i.aq
  %i.au = fmul double %i.as, %i.as
  %i.av = fadd double %i.at, %i.au
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.av)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.aw = fsub double %i.ai, %i.ah                ; 4 uses
  %i.ax = fmul double %i.aw, %i.aq
  %i.ay = load double, ptr %i.o, align 8, !tbaa !11 ; 3 uses
  %i.az = fsub double %i.ay, %i.al                ; 3 uses
  %i.ba = fsub double %i.an, %i.al                ; 4 uses
  %i.bb = fmul double %i.ba, %i.az
  %i.bc = fadd double %i.ax, %i.bb
  %i.bd = fmul double %i.aw, %i.aw
  %i.be = fmul double %i.ba, %i.ba
  %i.bf = fadd double %i.bd, %i.be                ; 3 uses
  %i.bg = fdiv double %i.bc, %i.bf                ; 2 uses
  %i.bh = fcmp ugt double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = fmul double %i.aq, %i.aq
  %i.bj = fmul double %i.az, %i.az
  %i.bk = fadd double %i.bi, %i.bj
  %sqrt.i53.i = tail call noundef double @llvm.sqrt.f64(double %i.bk)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = fcmp ult double %i.bg, 1.000000e+00
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = fsub double %i.ap, %i.ai                ; 2 uses
  %i.bn = fsub double %i.ay, %i.an                ; 2 uses
  %i.bo = fmul double %i.bm, %i.bm
  %i.bp = fmul double %i.bn, %i.bn
  %i.bq = fadd double %i.bo, %i.bp
  %sqrt.i54.i = tail call noundef double @llvm.sqrt.f64(double %i.bq)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.br = fsub double %i.al, %i.ay
  %i.bs = fmul double %i.aw, %i.br
  %i.bt = fsub double %i.ah, %i.ap
  %i.bu = fmul double %i.ba, %i.bt
  %i.bv = fsub double %i.bs, %i.bu
  %i.bw = fdiv double %i.bv, %i.bf
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %sqrt.i26 = tail call double @llvm.sqrt.f64(double %i.bf)
  %i.by = fmul double %sqrt.i26, %i.bx
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.1.i = phi double [ %sqrt.i.i, %bb.h ], [ %sqrt.i53.i, %bb.j ], [ %sqrt.i54.i, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  %i.bz = fcmp olt double %.1.i, %.01931
  %spec.select = select i1 %i.bz, double %.1.i, double %.01931 ; 2 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !21
  %i.ce = add i64 %i.cd, -1
  %i.cf = icmp ult i64 %i.ac, %i.ce
end_hunk_0
