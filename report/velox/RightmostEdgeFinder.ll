inline.NumInlined: 106
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.3 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.3 = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }

$_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util17TopologyExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos4util17TopologyExceptionE = comdat any

$_ZTSN4geos4util17TopologyExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util17TopologyExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@.str = private unnamed_addr constant [42 x i8] c"No forward edges found in buffer subgraph\00", align 1
@_ZTIN4geos4util17TopologyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util17TopologyExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util17TopologyExceptionE = linkonce_odr constant [32 x i8] c"N4geos4util17TopologyExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [18 x i8] c"TopologyException\00", align 1
@_ZTVN4geos4util17TopologyExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util17TopologyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util17TopologyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4geos9operation6buffer19RightmostEdgeFinderC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9operation6buffer19RightmostEdgeFinderC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer19RightmostEdgeFinderC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 -1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv()
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer19RightmostEdgeFinder8findEdgeEPSt6vectorIPNS_9geomgraph12DirectedEdgeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.m

bb.b:                                             ; preds = %.lr.ph, %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.020
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %i.p = load i8, ptr %i.o, align 4, !tbaa !22, !range !30, !noundef !31
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(152) %i.s), !inline_history !35 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !35
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.012.i = phi i64 [ %i.ao, %bb.f ], [ 0, %bb.c ] ; 4 uses
  %6 = load double, ptr %i.h, align 8, !tbaa !36
  %7 = fcmp uno double %6, 0.000000e+00
  %8 = load double, ptr %4, align 8
  %9 = fcmp uno double %8, 0.000000e+00
  %or.cond.i.i = select i1 %7, i1 %9, i1 false
  %10 = load double, ptr %5, align 8
  %11 = fcmp uno double %10, 0.000000e+00
  %12 = select i1 %or.cond.i.i, i1 %11, i1 false
  br i1 %12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %.012.i), !inline_history !35
  %i.ag = load double, ptr %i.af, align 8, !tbaa !36
  %i.ah = load double, ptr %i.h, align 8, !tbaa !37
  %i.ai = fcmp ogt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  store ptr %i.n, ptr %i.i, align 8, !tbaa !20
  %i.aj = trunc i64 %.012.i to i32
  store i32 %i.aj, ptr %0, align 8, !tbaa !7
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %.012.i), !inline_history !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !tbaa.struct !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ab
  br i1 %exitcond.not.i, label %_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit, label %.lr.ph.i, !llvm.loop !38

_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE.exit: ; preds = %bb.f, %bb.c, %bb.b
  %i.ap = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !40

bb.g:                                             ; preds = %._crit_edge
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 40) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN4geos4util17TopologyExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #13
          to label %bb.v unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.012 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %.012, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %.012, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aq) #12
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %.pn19, %bb.k ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.m:                                             ; preds = %._crit_edge
  %i.aw = load i32, ptr %0, align 8, !tbaa !7
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(100) %i.k), !inline_history !46 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bb), !inline_history !46
  %i.bg = tail call noundef ptr @_ZN4geos9geomgraph16DirectedEdgeStar16getRightmostEdgeEv(ptr noundef nonnull align 8 dereferenceable(97) %i.bf) ; 3 uses
  store ptr %i.bg, ptr %i.j, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 100
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !22, !range !30, !noundef !31
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47 ; 2 uses
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(152) %i.bn), !inline_history !46 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br), !inline_history !46
  %i.bw = trunc i64 %i.bv to i32
  br label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit.sink.split

bb.p:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(152) %i.by), !inline_history !48 ; 4 uses
  %i.cd = load i32, ptr %0, align 8, !tbaa !7
  %i.ce = sext i32 %i.cd to i64
  %i.cf = add nsw i64 %i.ce, -1
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i64 noundef %i.cf), !inline_history !48 ; 2 uses
  %i.ck = load i32, ptr %0, align 8, !tbaa !7
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cl, 1
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i64 noundef %i.cm), !inline_history !48 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cj) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !49 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !50 ; 4 uses
  %i.cx = fcmp olt double %i.cu, %i.cw
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !49
  %i.da = fcmp olt double %i.cz, %i.cw
  %i.db = icmp eq i32 %i.cs, 1
  %or.cond.i = and i1 %i.db, %i.da
  br i1 %or.cond.i, label %.critedge18.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = fcmp ogt double %i.cu, %i.cw
  br i1 %i.dc, label %bb.s, label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.de = load double, ptr %i.dd, align 8, !tbaa !49
  %i.df = fcmp ogt double %i.de, %i.cw
  %i.dg = icmp eq i32 %i.cs, -1
  %or.cond3.i = and i1 %i.dg, %i.df
  br i1 %or.cond3.i, label %.critedge18.i, label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit

.critedge18.i:                                    ; preds = %bb.s, %bb.q
  %i.dh = load i32, ptr %0, align 8, !tbaa !7
  br label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit.sink.split

_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit.sink.split: ; preds = %bb.o, %.critedge18.i
  %.sink27 = phi i32 [ %i.dh, %.critedge18.i ], [ %i.bw, %bb.o ]
  %i.di = add nsw i32 %.sink27, -1
  store i32 %i.di, ptr %0, align 8, !tbaa !7
  br label %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit

_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit: ; preds = %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit.sink.split, %bb.s, %bb.r, %bb.n
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !20  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !51
  %i.dl = load i32, ptr %0, align 8, !tbaa !7
  %i.dm = tail call noundef i32 @_ZN4geos9operation6buffer19RightmostEdgeFinder16getRightmostSideEPNS_9geomgraph12DirectedEdgeEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.dj, i32 noundef %i.dl)
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !47
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv.exit
  ret void

bb.v:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer19RightmostEdgeFinder27checkForRightmostCoordinateEPNS_9geomgraph12DirectedEdgeE(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b) ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %4 = load double, ptr %i.l, align 8, !tbaa !36
  %5 = fcmp uno double %4, 0.000000e+00
  %6 = load double, ptr %2, align 8
  %7 = fcmp uno double %6, 0.000000e+00
  %or.cond.i = select i1 %5, i1 %7, i1 false
  %8 = load double, ptr %3, align 8
  %9 = fcmp uno double %8, 0.000000e+00
  %10 = select i1 %or.cond.i, i1 %9, i1 false
  br i1 %10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.012)
  %i.r = load double, ptr %i.q, align 8, !tbaa !36
  %i.s = load double, ptr %i.l, align 8, !tbaa !37
  %i.t = fcmp ogt double %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.m, align 8, !tbaa !20
  %i.u = trunc i64 %.012 to i32
  store i32 %i.u, ptr %0, align 8, !tbaa !7
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.012)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !tbaa.struct !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 17, ptr %i.a, align 8, !tbaa !53
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !41
  %i.d = load i64, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.1, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !55
  %i.f = load ptr, ptr %2, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util17TopologyExceptionE, i64 16), ptr %0, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.k, align 8, !tbaa !56
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.m) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer19RightmostEdgeFinder23findRightmostEdgeAtNodeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(100) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  %i.k = tail call noundef ptr @_ZN4geos9geomgraph16DirectedEdgeStar16getRightmostEdgeEv(ptr noundef nonnull align 8 dereferenceable(97) %i.j) ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.m = load i8, ptr %i.l, align 4, !tbaa !22, !range !30, !noundef !31
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(152) %i.r) ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %0, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer19RightmostEdgeFinder25findRightmostEdgeAtVertexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(152) %i.d) ; 4 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !7
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, -1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k) ; 2 uses
  %i.p = load i32, ptr %0, align 8, !tbaa !7
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, 1
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.r) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.o) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !49 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50 ; 4 uses
  %i.ac = fcmp olt double %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !49
  %i.af = fcmp olt double %i.ae, %i.ab
  %i.ag = icmp eq i32 %i.x, 1
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %.critedge18, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = fcmp ogt double %i.z, %i.ab
  br i1 %i.ah, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !49
  %i.ak = fcmp ogt double %i.aj, %i.ab
  %i.al = icmp eq i32 %i.x, -1
  %or.cond3 = and i1 %i.al, %i.ak
  br i1 %or.cond3, label %.critedge18, label %.critedge

.critedge18:                                      ; preds = %bb.b, %bb.d
  %i.am = load i32, ptr %0, align 8, !tbaa !7
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %0, align 8, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge18, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos9operation6buffer19RightmostEdgeFinder16getRightmostSideEPNS_9geomgraph12DirectedEdgeEi(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b), !inline_history !57 ; 6 uses
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %2, 1
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !57
  %i.m = trunc i64 %i.l to i32
  %.not.i = icmp slt i32 %i.h, %i.m
  br i1 %.not.i, label %bb.c, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %2 to i64                  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.n), !inline_history !57
  %i.s = add nuw nsw i64 %i.n, 1
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.s), !inline_history !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !49 ; 2 uses
  %i.ab = fcmp oeq double %i.y, %i.aa
  br i1 %i.ab, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit

_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit: ; preds = %bb.c
  %i.ac = fcmp olt double %i.y, %i.aa
  %.0.i = select i1 %i.ac, i32 2, i32 1
  br label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit12

_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread: ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = add nsw i32 %2, -1
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(152) %i.ae), !inline_history !57 ; 6 uses
  %i.aj = icmp slt i32 %2, 1
  br i1 %i.aj, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !inline_history !57
  %i.ao = trunc i64 %i.an to i32
  %.not.i9 = icmp slt i32 %2, %i.ao
  br i1 %.not.i9, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ap = zext nneg i32 %i.ad to i64
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.ap), !inline_history !57
  %i.au = zext nneg i32 %2 to i64
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.au), !inline_history !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !49 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !49 ; 2 uses
  %i.bd = fcmp oeq double %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = fcmp olt double %i.ba, %i.bc
  %.0.i11 = select i1 %i.be, i32 2, i32 1
  br label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit12

bb.g:                                             ; preds = %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit.thread, %bb.d, %bb.e
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv()
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !tbaa.struct !13
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(152) %i.bh), !inline_history !35 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl), !inline_history !35
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  %.not.i13 = icmp eq i64 %i.bq, 0
  br i1 %.not.i13, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit12, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %.012.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ce, %bb.k ] ; 4 uses
  %5 = load double, ptr %i.bg, align 8, !tbaa !36
  %6 = fcmp uno double %5, 0.000000e+00
  %7 = load double, ptr %3, align 8
  %8 = fcmp uno double %7, 0.000000e+00
  %or.cond.i.i = select i1 %6, i1 %8, i1 false
  %9 = load double, ptr %4, align 8
  %10 = fcmp uno double %9, 0.000000e+00
  %11 = select i1 %or.cond.i.i, i1 %10, i1 false
  br i1 %11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %.012.i), !inline_history !35
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !36
  %i.bx = load double, ptr %i.bg, align 8, !tbaa !37
  %i.by = fcmp ogt double %i.bw, %i.bx
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %1, ptr %i.br, align 8, !tbaa !20
  %i.bz = trunc i64 %.012.i to i32
  store i32 %i.bz, ptr %0, align 8, !tbaa !7
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %.012.i), !inline_history !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ce, %i.bq
  br i1 %exitcond.not.i, label %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit12, label %bb.h, !llvm.loop !38

_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit12: ; preds = %bb.k, %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit, %bb.g, %bb.f
  %.016 = phi i32 [ %.0.i11, %bb.f ], [ %.0.i, %_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi.exit ], [ -1, %bb.g ], [ -1, %bb.k ]
  ret i32 %.016
}

declare noundef ptr @_ZN4geos9geomgraph16DirectedEdgeStar16getRightmostEdgeEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #1

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos9operation6buffer19RightmostEdgeFinder25getRightmostSideOfSegmentEPNS_9geomgraph12DirectedEdgeEi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b) ; 6 uses
  %i.g = icmp slt i32 %1, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %1, 1
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.m = trunc i64 %i.l to i32
  %.not = icmp slt i32 %i.h, %i.m
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64                  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.n)
  %i.s = add nuw nsw i64 %i.n, 1
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !49 ; 2 uses
  %i.ab = fcmp oeq double %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fcmp olt double %i.y, %i.aa
  %.0 = select i1 %i.ac, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.a = load ptr, ptr %1, align 8, !tbaa !41, !noalias !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !55, !noalias !58 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !52, !alias.scope !61
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !55, !alias.scope !61
  store i8 0, ptr %i.d, align 8, !tbaa !54, !alias.scope !61
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !55, !alias.scope !61
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !55, !alias.scope !61
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !41, !alias.scope !61 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55, !noalias !64 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !55, !noalias !64
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !41, !noalias !64
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !52, !alias.scope !64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !55 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !41, !alias.scope !64
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !54
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !54, !alias.scope !64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !55, !alias.scope !64
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !41
end_hunk_0
