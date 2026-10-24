Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IntersectionAdder?download=true
inline.NumInlined: 114
inline.NumDeleted: 60
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.5 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.5 = type { i64, [8 x i8] }
%"class.std::allocator.2" = type { i8 }

$_ZNK4geos6noding17IntersectionAdder6isDoneEv = comdat any

$_ZN4geos6noding18SegmentIntersectorD2Ev = comdat any

$_ZN4geos6noding17IntersectionAdderD0Ev = comdat any

$_ZN4geos6noding18NodedSegmentString15addIntersectionERKNS_4geom10CoordinateEm = comdat any

$_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util24IllegalArgumentExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos6noding18SegmentIntersectorE = comdat any

$_ZTSN4geos6noding18SegmentIntersectorE = comdat any

$_ZTIN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTSN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@_ZTVN4geos6noding17IntersectionAdderE = local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos6noding17IntersectionAdderE, ptr @_ZN4geos6noding17IntersectionAdder20processIntersectionsEPNS0_13SegmentStringEmS3_m, ptr @_ZNK4geos6noding17IntersectionAdder6isDoneEv, ptr @_ZN4geos6noding18SegmentIntersectorD2Ev, ptr @_ZN4geos6noding17IntersectionAdderD0Ev] }, align 8
@_ZTIN4geos6noding17IntersectionAdderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos6noding17IntersectionAdderE, ptr @_ZTIN4geos6noding18SegmentIntersectorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos6noding17IntersectionAdderE = constant [34 x i8] c"N4geos6noding17IntersectionAdderE\00", align 1
@_ZTIN4geos6noding18SegmentIntersectorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos6noding18SegmentIntersectorE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos6noding18SegmentIntersectorE = linkonce_odr constant [35 x i8] c"N4geos6noding18SegmentIntersectorE\00", comdat, align 1
@.str = private unnamed_addr constant [58 x i8] c"SegmentString::addIntersection: SegmentIndex out of range\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readnone captures(address) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, %3
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15, !nonnull !16, !align !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %.not14 = icmp eq i64 %i.d, 1
  br i1 %.not14, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 %2, %4
  %5 = tail call i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.f = icmp eq i64 %5, 1
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = icmp eq i64 %2, 0
  %i.q = icmp eq i64 %4, %i.o
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %4, 0
  %i.s = icmp eq i64 %2, %i.o
  %or.cond15 = and i1 %i.r, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], [ %or.cond15, %bb.f ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding17IntersectionAdder20processIntersectionsEPNS0_13SegmentStringEmS3_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %3                       ; 2 uses
  %i.b = icmp eq i64 %2, %4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !33
  %i.f = load ptr, ptr %1, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  %i.j = add i64 %2, 1
  %i.k = load ptr, ptr %1, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  %i.o = load ptr, ptr %3, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4)
  %i.s = add i64 %4, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15, !nonnull !16, !align !17
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !15, !nonnull !16, !align !17 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21 ; 4 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !34
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.0812.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.0812.i.i ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fcmp oeq double %i.as, %i.ak
  %.0.i.i.i = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %.0.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load double, ptr %i.am, align 8, !tbaa !37
  %i.av = fcmp oeq double %i.ap, %i.au
  %i.aw = load double, ptr %i.an, align 8
  %i.ax = fcmp oeq double %i.as, %i.aw
  %.0.i10.i.i = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %.0.i10.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = add nuw i64 %.0812.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ay, %i.ab
  br i1 %exitcond.not.i.i, label %.lr.ph.i3.i, label %bb.c, !llvm.loop !31

.lr.ph.i3.i:                                      ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i3.i
  %.0812.i4.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.0812.i4.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !37 ; 2 uses
  %i.bh = fcmp oeq double %i.bg, %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load double, ptr %i.bi, align 8         ; 2 uses
  %i.bk = fcmp oeq double %i.bj, %i.bd
  %.0.i.i5.i = select i1 %i.bh, i1 %i.bk, i1 false
  br i1 %.0.i.i5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !37
  %i.bn = fcmp oeq double %i.bg, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load double, ptr %i.bo, align 8
  %i.bq = fcmp oeq double %i.bj, %i.bp
  %.0.i10.i6.i = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %.0.i10.i6.i, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = add nuw i64 %.0812.i4.i, 1              ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %i.br, %i.ab
  br i1 %exitcond.not.i8.i, label %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit, label %bb.f, !llvm.loop !31

.loopexit:                                        ; preds = %bb.d, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.bv, align 1, !tbaa !40
  br label %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit

_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit: ; preds = %bb.h, %.loopexit
  %.not14.i = icmp eq i64 %i.ab, 1
  %or.cond37 = and i1 %i.a, %.not14.i
  br i1 %or.cond37, label %bb.i, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread

bb.i:                                             ; preds = %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit
  %i.bw = sub nsw i64 %2, %4
  %5 = tail call i64 @llvm.abs.i64(i64 %i.bw, i1 true)
  %i.bx = icmp eq i64 %5, 1
  br i1 %i.bx, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %1, align 8, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !41
  br i1 %i.cb, label %bb.k, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %1, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !41
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  %i.ch = icmp eq i64 %2, 0
  %i.ci = icmp eq i64 %4, %i.cg
  %or.cond.i = and i1 %i.ch, %i.ci
  br i1 %or.cond.i, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit

_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit: ; preds = %bb.k
  %i.cj = icmp eq i64 %4, 0
  %i.ck = icmp eq i64 %2, %i.cg
  %or.cond15.i = and i1 %i.cj, %i.ck
  br i1 %or.cond15.i, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread

_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread: ; preds = %bb.j, %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit, %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cl, align 8, !tbaa !42
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !15, !nonnull !16, !align !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21 ; 2 uses
  %.not.i26 = icmp eq i64 %i.co, 0
  br i1 %.not.i26, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cr, %bb.l ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.08.i
  tail call void @_ZN4geos6noding18NodedSegmentString15addIntersectionERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 noundef %2)
  %i.cr = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cr, %i.co
  br i1 %exitcond.not.i, label %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit, label %bb.l, !llvm.loop !32

_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit: ; preds = %bb.l
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre40 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 2 uses
  %.not.i27 = icmp eq i64 %.pre40, 0
  br i1 %.not.i27, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i28
  %.08.i29 = phi i64 [ 0, %.lr.ph.i28 ], [ %i.cu, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.08.i29
  tail call void @_ZN4geos6noding18NodedSegmentString15addIntersectionERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 noundef %4)
  %i.cu = add nuw i64 %.08.i29, 1                 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %i.cu, %.pre40
  br i1 %exitcond.not.i30, label %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit31, label %bb.m, !llvm.loop !32

_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit31: ; preds = %bb.m
  %.pre41 = load ptr, ptr %i.x, align 8, !tbaa !15 ; 3 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %.pre41, i64 8
  %.pre43 = load i64, ptr %.phi.trans.insert42, align 8, !tbaa !21
  %i.cv = icmp ne i64 %.pre43, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre41, i64 128
  %i.cx = load i8, ptr %i.cw, align 8, !range !43
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %i.cz, label %bb.n, label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35

bb.n:                                             ; preds = %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit31
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !44
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre41, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !46
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.df, align 1, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.dg, align 2, !tbaa !48
  br label %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35

_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread35: ; preds = %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit.thread, %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit, %bb.k, %bb.i, %bb.b, %_ZN4geos6noding18NodedSegmentString16addIntersectionsEPNS_9algorithm15LineIntersectorEmm.exit31, %bb.n, %_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m.exit, %bb.a
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos6noding17IntersectionAdder6isDoneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding18SegmentIntersectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding17IntersectionAdderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4geos6noding18NodedSegmentString15addIntersectionERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = add i64 %i.d, -2
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #15
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #14
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %.pn23, %bb.f ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn22

bb.h:                                             ; preds = %bb.a
  %i.m = add i64 %2, 1                            ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.r = icmp ult i64 %i.m, %i.q
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.m)
  %i.y = load <2 x double>, ptr %1, align 8
  %i.z = load <2 x double>, ptr %i.x, align 8
  %i.aa = fcmp oeq <2 x double> %i.y, %i.z        ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x i1> %i.aa, i64 1
  %.0.i = select i1 %i.ab, i1 %i.ac, i1 false
  %spec.select = select i1 %.0.i, i64 %i.m, i64 %2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.116 = phi i64 [ %spec.select, %bb.i ], [ %2, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4geos6noding15SegmentNodeList3addERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.116)
  ret void

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 24, ptr %i.a, align 8, !tbaa !51
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !27
  %i.d = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !30
  %i.f = load ptr, ptr %2, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN4geos6noding15SegmentNodeList3addERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.a = load ptr, ptr %1, align 8, !tbaa !27, !noalias !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !58 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !28, !alias.scope !59
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !30, !alias.scope !59
  store i8 0, ptr %i.d, align 8, !tbaa !29, !alias.scope !59
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !30, !alias.scope !59
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !30, !alias.scope !59
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !59 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #13
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30, !noalias !60 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !30, !noalias !60
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !27, !noalias !60
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !28, !alias.scope !60
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !30 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !27, !alias.scope !60
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !29
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !29, !alias.scope !60
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !30, !alias.scope !60
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !27
  store i64 0, ptr %i.ai, align 8, !tbaa !30
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

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
!9 = !{!"bool", !4, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTSN4geos9algorithm15LineIntersectorE", !12, i64 0}
!14 = !{!"_ZTSN4geos6noding17IntersectionAdderE", !8, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !11, i64 16, !13, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!15 = !{!14, !13, i64 40}
!16 = !{}
!17 = !{i64 8}
!18 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !12, i64 0}
!19 = !{!"long", !4, i64 0}
!20 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !18, i64 0, !19, i64 8, !4, i64 16, !4, i64 48, !4, i64 96, !9, i64 128}
!21 = !{!20, !19, i64 8}
!22 = !{!"vtable pointer", !3, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !19, i64 8, !4, i64 16}
!27 = !{!26, !24, i64 0}
!28 = !{!25, !24, i64 0}
!29 = !{!4, !4, i64 0}
!30 = !{!26, !19, i64 8}
!31 = distinct !{!31, !38}
!32 = distinct !{!32, !38}
!33 = !{!14, !5, i64 60}
!34 = !{!14, !5, i64 48}
!35 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !12, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!11, !10, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!14, !5, i64 52}
!40 = !{!14, !9, i64 11}
!41 = !{ptr @_ZN4geos6noding17IntersectionAdder21isTrivialIntersectionEPKNS0_13SegmentStringEmS4_m}
!42 = !{!14, !9, i64 8}
!43 = !{i8 0, i8 2}
!44 = !{!14, !5, i64 56}
!45 = !{!10, !10, i64 0}
!46 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45}
!47 = !{!14, !9, i64 9}
!48 = !{!14, !9, i64 10}
!49 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !12, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!19, !19, i64 0}
!52 = distinct !{!52, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!53 = distinct !{!53, !52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!55 = distinct !{!55, !54, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!57 = distinct !{!57, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!58 = !{!53}
!59 = !{!55, !53}
!60 = !{!57}
end_hunk_0
