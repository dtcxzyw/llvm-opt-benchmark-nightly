Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PolygonIntersectionAnalyzer?download=true
inline.NumInlined: 103
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer6isDoneEv = comdat any

$_ZN4geos6noding18SegmentIntersectorD2Ev = comdat any

$_ZN4geos9operation5valid27PolygonIntersectionAnalyzerD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util21IllegalStateExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos4util21IllegalStateExceptionE = comdat any

$_ZTSN4geos4util21IllegalStateExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTIN4geos6noding18SegmentIntersectorE = comdat any

$_ZTSN4geos6noding18SegmentIntersectorE = comdat any

$_ZTVN4geos4util21IllegalStateExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@.str = private unnamed_addr constant [66 x i8] c"SegmentString missing PolygonRing data when checking self-touches\00", align 1
@_ZTIN4geos4util21IllegalStateExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util21IllegalStateExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util21IllegalStateExceptionE = linkonce_odr constant [36 x i8] c"N4geos4util21IllegalStateExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN4geos9operation5valid27PolygonIntersectionAnalyzerE = local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos9operation5valid27PolygonIntersectionAnalyzerE, ptr @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer20processIntersectionsEPNS_6noding13SegmentStringEmS5_m, ptr @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer6isDoneEv, ptr @_ZN4geos6noding18SegmentIntersectorD2Ev, ptr @_ZN4geos9operation5valid27PolygonIntersectionAnalyzerD0Ev] }, align 8
@_ZTIN4geos9operation5valid27PolygonIntersectionAnalyzerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9operation5valid27PolygonIntersectionAnalyzerE, ptr @_ZTIN4geos6noding18SegmentIntersectorE }, align 8
@_ZTSN4geos9operation5valid27PolygonIntersectionAnalyzerE = constant [53 x i8] c"N4geos9operation5valid27PolygonIntersectionAnalyzerE\00", align 1
@_ZTIN4geos6noding18SegmentIntersectorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos6noding18SegmentIntersectorE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos6noding18SegmentIntersectorE = linkonce_odr constant [35 x i8] c"N4geos6noding18SegmentIntersectorE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"IllegalStateException\00", align 1
@_ZTVN4geos4util21IllegalStateExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util21IllegalStateExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util21IllegalStateExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer20processIntersectionsEPNS_6noding13SegmentStringEmS5_m(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %3
  %i.b = icmp eq i64 %2, %4
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer23findInvalidIntersectionEPKNS_6noding13SegmentStringEmS6_m(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.d, ptr %i.e, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 7) i32 @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer23findInvalidIntersectionEPKNS_6noding13SegmentStringEmS6_m(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.geos::geom::Coordinate", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) ; 4 uses
  %i.e = add i64 %2, 1
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.e) ; 5 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) ; 4 uses
  %i.n = add i64 %4, 1
  %i.o = load ptr, ptr %3, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.n) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp ne ptr %1, %3                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i8, ptr %i.w, align 8, !range !22
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = icmp ne i64 %i.u, 1
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !19
  br i1 %i.v, label %.critedge57, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = icmp ugt i64 %2, %4
  %i.ab = sub nuw i64 %2, %4
  %7 = sub nuw i64 %4, %2
  %8 = select i1 %6, i64 %i.ab, i64 %7            ; 2 uses
  %i.ac = icmp ult i64 %8, 2
  br i1 %i.ac, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit

_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit: ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !33
  %i.ah = add i64 %i.ag, -2
  %.not.i.not = icmp ult i64 %8, %i.ah
  br i1 %.not.i.not, label %.critedge, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread

.critedge:                                        ; preds = %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34, !range !22, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.critedge57, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread

.critedge57:                                      ; preds = %bb.c, %.critedge
  %i.al = load double, ptr %5, align 8, !tbaa !36 ; 4 uses
  %i.am = load double, ptr %i.i, align 8, !tbaa !36
  %i.an = fcmp oeq double %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load double, ptr %i.ao, align 8         ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fcmp oeq double %i.ap, %i.ar
  %.0.i58 = select i1 %i.an, i1 %i.as, i1 false
  br i1 %.0.i58, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread, label %bb.e

bb.e:                                             ; preds = %.critedge57
  %i.at = load double, ptr %i.r, align 8, !tbaa !36
  %i.au = fcmp oeq double %i.al, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fcmp oeq double %i.ap, %i.aw
  %.0.i59 = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %.0.i59, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = load double, ptr %i.d, align 8, !tbaa !36
  %i.az = fcmp oeq double %i.al, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = load double, ptr %i.ba, align 8
  %i.bc = fcmp oeq double %i.ap, %i.bb
  %.0.i60 = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %.0.i60, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp eq i64 %2, 0
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %1, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !37
  %i.bi = add i64 %i.bh, -2
  br label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1
  br label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit

_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit: ; preds = %bb.h, %bb.i
  %.0.i61 = phi i64 [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  %i.bk = load ptr, ptr %1, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i61), !inline_history !37
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit, %bb.f
  %.053 = phi ptr [ %i.bn, %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit ], [ %i.d, %bb.f ] ; 2 uses
  %i.bo = load double, ptr %i.m, align 8, !tbaa !36
  %i.bp = fcmp oeq double %i.al, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fcmp oeq double %i.ap, %i.br
  %.0.i62 = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %.0.i62, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %4, 0
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %3, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !37
  %i.by = add i64 %i.bx, -2
  br label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit64

bb.m:                                             ; preds = %bb.k
  %i.bz = add i64 %4, -1
  br label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit64

_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit64: ; preds = %bb.l, %bb.m
  %.0.i63 = phi i64 [ %i.by, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = load ptr, ptr %3, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0.i63), !inline_history !37
  br label %bb.n

bb.n:                                             ; preds = %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit64, %bb.j
  %.051 = phi ptr [ %i.cd, %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm.exit64 ], [ %i.m, %bb.j ] ; 2 uses
  %i.ce = call noundef zeroext i1 @_ZN4geos9operation5valid11PolygonNode10isCrossingEPKNS_4geom10CoordinateES6_S6_S6_S6_(ptr noundef nonnull %5, ptr noundef nonnull %.053, ptr noundef nonnull %i.i, ptr noundef nonnull %.051, ptr noundef nonnull %i.r)
  br i1 %i.ce, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.v, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !34, !range !22, !noundef !35
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer12addSelfTouchEPKNS_6noding13SegmentStringERKNS_4geom10CoordinateEPS9_SB_SB_SB_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %.053, ptr noundef nonnull %i.i, ptr noundef nonnull %.051, ptr noundef nonnull %i.r)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24
  %i.cm = call noundef zeroext i1 @_ZN4geos9operation5valid11PolygonRing8addTouchEPS2_S3_RKNS_4geom10CoordinateE(ptr noundef %i.cj, ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %or.cond.not = and i1 %i.v, %i.cm
  br i1 %or.cond.not, label %bb.s, label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.cn, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !19
  br label %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread

_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread: ; preds = %bb.d, %bb.n, %bb.s, %bb.r, %.critedge57, %bb.e, %.critedge, %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit
  %.1 = phi i32 [ -1, %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit ], [ 6, %.critedge ], [ -1, %.critedge57 ], [ -1, %bb.e ], [ 5, %bb.n ], [ -1, %bb.s ], [ -1, %bb.r ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.t

bb.t:                                             ; preds = %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread, %bb.b, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %.1, %_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm.exit.thread ], [ 5, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = icmp ugt i64 %2, %3
  %i.a = sub nuw i64 %2, %3
  %5 = sub nuw i64 %3, %2
  %6 = select i1 %4, i64 %i.a, i64 %5             ; 2 uses
  %i.b = icmp ult i64 %6, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = add i64 %i.f, -2
  %.not = icmp uge i64 %6, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.not, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = add i64 %i.e, -2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = load ptr, ptr %1, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0)
  ret ptr %i.k
}

declare noundef zeroext i1 @_ZN4geos9operation5valid11PolygonNode10isCrossingEPKNS_4geom10CoordinateES6_S6_S6_S6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer12addSelfTouchEPKNS_6noding13SegmentStringERKNS_4geom10CoordinateEPS9_SB_SB_SB_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4geos4util21IllegalStateExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #12
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #11
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %.pn18, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn17

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4geos9operation5valid11PolygonRing12addSelfTouchERKNS_4geom10CoordinateEPS5_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid27PolygonIntersectionAnalyzer14addDoubleTouchEPKNS_6noding13SegmentStringES6_RKNS_4geom10CoordinateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call noundef zeroext i1 @_ZN4geos9operation5valid11PolygonRing8addTouchEPS2_S3_RKNS_4geom10CoordinateE(ptr noundef %i.b, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZN4geos9operation5valid11PolygonRing8addTouchEPS2_S3_RKNS_4geom10CoordinateE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 21, ptr %i.a, align 8, !tbaa !39
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !28
  %i.d = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = load ptr, ptr %2, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util21IllegalStateExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN4geos9operation5valid11PolygonRing12addSelfTouchERKNS_4geom10CoordinateEPS5_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer6isDoneEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i8, ptr %i.d, align 8, !range !22
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding18SegmentIntersectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation5valid27PolygonIntersectionAnalyzerD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.a = load ptr, ptr %1, align 8, !tbaa !28, !noalias !46
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !46 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !29, !alias.scope !47
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !31, !alias.scope !47
  store i8 0, ptr %i.d, align 8, !tbaa !30, !alias.scope !47
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !31, !alias.scope !47
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !31, !alias.scope !47
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !28, !alias.scope !47 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #13
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31, !noalias !48 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !31, !noalias !48
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !28, !noalias !48
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !29, !alias.scope !48
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !28, !alias.scope !48
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !30
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !30, !alias.scope !48
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !31, !alias.scope !48
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !28
  store i64 0, ptr %i.ai, align 8, !tbaa !31
  store i8 0, ptr %i.aa, align 8, !tbaa !30
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util21IllegalStateExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN4geos6noding18SegmentIntersectorE"}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !10, i64 0, !11, i64 8, !4, i64 16, !4, i64 48, !4, i64 96, !12, i64 128}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTSN4geos4geom10CoordinateE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSN4geos9operation5valid27PolygonIntersectionAnalyzerE", !8, i64 0, !13, i64 8, !12, i64 144, !12, i64 145, !5, i64 148, !15, i64 152, !15, i64 176}
!17 = !{!16, !5, i64 148}
!18 = !{!14, !14, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 8, !18}
!20 = !{!"vtable pointer", !3, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{!"_ZTSN4geos6noding13SegmentStringE", !9, i64 8}
!24 = !{!23, !9, i64 8}
!25 = !{!"p1 omnipotent char", !9, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !11, i64 8, !4, i64 16}
!28 = !{!27, !25, i64 0}
!29 = !{!26, !25, i64 0}
!30 = !{!4, !4, i64 0}
!31 = !{!27, !11, i64 8}
!32 = !{!13, !11, i64 8}
!33 = !{ptr @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer16isAdjacentInRingEPKNS_6noding13SegmentStringEmm}
!34 = !{!16, !12, i64 145}
!35 = !{}
!36 = !{!15, !14, i64 0}
!37 = !{ptr @_ZNK4geos9operation5valid27PolygonIntersectionAnalyzer20prevCoordinateInRingEPKNS_6noding13SegmentStringEm}
!38 = !{!16, !12, i64 144}
!39 = !{!11, !11, i64 0}
!40 = distinct !{!40, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!41 = distinct !{!41, !40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!43 = distinct !{!43, !42, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!45 = distinct !{!45, !44, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!46 = !{!41}
!47 = !{!43, !41}
!48 = !{!45}
end_hunk_0
