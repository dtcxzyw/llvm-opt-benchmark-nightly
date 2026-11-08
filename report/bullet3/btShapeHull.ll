Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btShapeHull?download=true
inline.NumInlined: 385
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.HullDesc = type { i32, i32, ptr, i32, float, i32, i32 }
%class.HullLibrary = type { %class.btAlignedObjectArray.2, %class.btAlignedObjectArray.4 }
%class.btAlignedObjectArray.2 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.4 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.HullResult = type { i8, i32, %class.btAlignedObjectArray, i32, i32, %class.btAlignedObjectArray.0 }
%class.btAlignedObjectArray = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.0 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZN10HullResultD2Ev = comdat any

$_ZN11HullLibraryD2Ev = comdat any

@_ZZN11btShapeHull19getUnitSpherePointsEiE24sUnitSpherePointsHighres = internal global [276 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN11btShapeHull19getUnitSpherePointsEiE24sUnitSpherePointsHighres = internal global i64 0, align 8
@_ZZN11btShapeHull19getUnitSpherePointsEiE17sUnitSpherePoints = internal global [62 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN11btShapeHull19getUnitSpherePointsEiE17sUnitSpherePoints = internal global i64 0, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN11btShapeHullC1EPK13btConvexShape = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11btShapeHullC2EPK13btConvexShape
@_ZN11btShapeHullD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11btShapeHullD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btShapeHullC2EPK13btConvexShape(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((4, 12), (16, 25), (36, 44), (48, 57), (64, 68), (72, 80)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.i, align 8, !tbaa !19
  store i8 1, ptr %i.a, align 8, !tbaa !20
  store ptr null, ptr %i.b, align 8, !tbaa !21
  store i32 0, ptr %i.c, align 4, !tbaa !22
  store i32 0, ptr %i.d, align 8, !tbaa !23
  store i8 1, ptr %i.e, align 8, !tbaa !24
  store ptr null, ptr %i.f, align 8, !tbaa !25
  store i32 0, ptr %i.g, align 4, !tbaa !26
  store i32 0, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !28
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11btShapeHullD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !29
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.c, align 8, !tbaa !24
  store ptr null, ptr %i.a, align 8, !tbaa !25
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !29
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i2 = select i1 %.not.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.pre6 = load i8, ptr %i.c, align 8, !range !29
  %i.m = trunc nuw i8 %.pre6 to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.j, align 8, !tbaa !20
  store ptr null, ptr %i.h, align 8, !tbaa !21
  store i32 0, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !23
  %.not.i.i.i = icmp ne ptr %.pre, null
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.m, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #12
  unreachable

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %bb.f
  %.pre7 = load ptr, ptr %i.h, align 8, !tbaa !21 ; 2 uses
  %.pre8 = load i8, ptr %i.j, align 8, !range !29
  %i.r = trunc nuw i8 %.pre8 to i1
  %.not.i.i.i4 = icmp ne ptr %.pre7, null
  %or.cond.i.i5 = select i1 %.not.i.i.i4, i1 %i.r, i1 false
  br i1 %or.cond.i.i5, label %bb.h, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre7)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #12
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.c, %bb.e, %_ZN20btAlignedObjectArrayIjED2Ev.exit, %bb.h
  ret void

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11btShapeHull9buildHullEfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.preheader65:
  %3 = alloca [276 x %class.btVector3], align 16  ; 6 uses
  %4 = alloca %class.btVector3, align 4           ; 4 uses
  %5 = alloca %class.HullDesc, align 8            ; 11 uses
  %6 = alloca %class.HullLibrary, align 8         ; 14 uses
  %7 = alloca %class.HullResult, align 8          ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.not = icmp eq i32 %2, 0
  %i.a = select i1 %.not, i32 42, i32 256         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader65, %bb.a
  %indvars.iv = phi i64 [ 0, %.preheader65 ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = tail call noundef ptr @_ZN11btShapeHull19getUnitSpherePointsEi(i32 noundef %2)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { <2 x float>, <2 x float> } %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.e) ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.j, ptr %i.l, align 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store <2 x float> %i.k, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.a, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.m) ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %wide.trip.count, %bb.b ] ; 2 uses
  %.03368 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef %.03368, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call { <2 x float>, <2 x float> } %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %4) ; 2 uses
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.aa, 0
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.aa, 1
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv80 ; 2 uses
  store <2 x float> %i.ab, ptr %i.ad, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <2 x float> %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ae = add nuw nsw i32 %.03368, 1              ; 2 uses
  %exitcond83.not = icmp eq i32 %i.ae, %i.q
  br i1 %exitcond83.not, label %.loopexit64.loopexit, label %.lr.ph, !llvm.loop !40

.loopexit64.loopexit:                             ; preds = %.lr.ph
  %i.af = add nuw i32 %i.a, %i.q
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit, %bb.b
  %.132 = phi i32 [ %i.a, %bb.b ], [ %i.af, %.loopexit64.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float 1.000000e-03, ptr %i.aj, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 4096, ptr %i.ak, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 4096, ptr %i.al, align 4, !tbaa !54
  store i32 1, ptr %5, align 8, !tbaa !55
  store i32 %.132, ptr %i.ag, align 4, !tbaa !56
  store ptr %3, ptr %i.ah, align 8, !tbaa !57
  store i32 16, ptr %i.ai, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i8 1, ptr %i.aq, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 0, ptr %i.as, align 4, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.at, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 1, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr null, ptr %i.av, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ax, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store i8 1, ptr %i.ay, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store ptr null, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 0, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 0, ptr %i.bb, align 8, !tbaa !27
  store i8 1, ptr %7, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  store i32 0, ptr %i.be, align 4, !tbaa !69
  %i.bf = invoke noundef i32 @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %.loopexit64
  %i.bg = icmp ne i32 %i.bf, 1                    ; 2 uses
  br i1 %i.bg, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !67 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22 ; 2 uses
  %i.bk = icmp sgt i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.e, label %.loopexit63

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.bn = icmp slt i32 %i.bm, %i.bh
  br i1 %i.bn, label %bb.f, label %.loopexit63

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = sext i32 %i.bh to i64
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bp, i32 noundef 16)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %.pre.i = load i32, ptr %i.bi, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %.noexc, %bb.f
  %i.br = phi i32 [ %.pre.i, %.noexc ], [ %i.bj, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bq, %.noexc ], [ null, %bb.f ] ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.br to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bu = icmp eq i32 %i.br, 1
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !70
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !70
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !41

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !70
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !20, !range !29, !noundef !71
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.j, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cf)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i unwind label %bb.q

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cj, align 8, !tbaa !20
  store ptr %.0.i.i.i, ptr %i.ce, align 8, !tbaa !21
  store i32 %i.bh, ptr %i.bl, align 8, !tbaa !23
  %.pre.pre = load i32, ptr %i.bc, align 4, !tbaa !67
  br label %.loopexit63

.loopexit63:                                      ; preds = %bb.e, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %bb.d
  %i.ck = phi i32 [ %i.bh, %bb.d ], [ %.pre.pre, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.bh, %bb.e ]
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !22
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %.loopexit63
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k
end_hunk_0
