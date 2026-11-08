Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SegmentIntersectionTester?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation9predicate25SegmentIntersectionTester30hasIntersectionWithLineStringsERKNS_4geom10LineStringERKSt6vectorIPS5_SaIS8_EE(ptr noundef nonnull align 8 dereferenceable(137) initializes((136, 137)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 !guid !22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.0910 = phi i64 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0910
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call noundef zeroext i1 @_ZN4geos9operation9predicate25SegmentIntersectionTester15hasIntersectionERKNS_4geom10LineStringES6_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k) ; 0 uses
  %i.m = load i8, ptr %i.a, align 8, !tbaa !14, !range !15, !noundef !16 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = add nuw i64 %.0910, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  %or.cond = select i1 %i.n, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw i8 %i.m to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.q = phi i1 [ %i.p, %._crit_edge.loopexit ], [ false, %bb.a ]
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation9predicate25SegmentIntersectionTester15hasIntersectionERKNS_4geom10LineStringES6_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 !guid !32 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.f = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.k = icmp ugt i64 %i.e, 1
  br i1 %i.k, label %.lr.ph28, label %.critedge

.lr.ph28:                                         ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.l = icmp ugt i64 %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.l, label %.lr.ph28.split.us, label %.lr.ph28.split

.lr.ph28.split.us:                                ; preds = %.lr.ph28, %.critedge2.us
  %.02427.us = phi i64 [ %i.al, %.critedge2.us ], [ 1, %.lr.ph28 ] ; 3 uses
  %i.n = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.critedge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph28.split.us
  %i.p = add i64 %.02427.us, -1
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.p)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.02427.us)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.e
  %.025.us = phi i64 [ 1, %.lr.ph.us ], [ %i.ak, %bb.e ] ; 3 uses
  %i.y = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.critedge2.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i64 %.025.us, -1
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.aa)
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.025.us)
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !20
  %.not.us = icmp eq i64 %i.aj, 0
  br i1 %.not.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %3, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = add nuw i64 %.025.us, 1                 ; 2 uses
  %exitcond31.not = icmp eq i64 %i.ak, %i.j
  br i1 %exitcond31.not, label %.critedge2.us, label %bb.b, !llvm.loop !30

.critedge2.us:                                    ; preds = %bb.b, %bb.e
  %i.al = add nuw i64 %.02427.us, 1               ; 2 uses
  %exitcond32.not = icmp eq i64 %i.al, %i.e
  br i1 %exitcond32.not, label %.critedge, label %.lr.ph28.split.us, !llvm.loop !31

.lr.ph28.split:                                   ; preds = %.lr.ph28, %.critedge2
  %.02427 = phi i64 [ %i.az, %.critedge2 ], [ 1, %.lr.ph28 ] ; 3 uses
  %i.am = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %.lr.ph28.split, %.critedge2, %.lr.ph28.split.us, %.critedge2.us, %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = load i8, ptr %4, align 8, !tbaa !14, !range !15, !noundef !16
  %i.ap = trunc nuw i8 %i.ao to i1
  ret i1 %i.ap

.critedge2:                                       ; preds = %.lr.ph28.split
  %i.aq = add i64 %.02427, -1
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.aq) ; 0 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.02427) ; 0 uses
  %i.az = add nuw i64 %.02427, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.e
  br i1 %exitcond.not, label %.critedge, label %.lr.ph28.split, !llvm.loop !31
}

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation9predicate25SegmentIntersectionTester33hasIntersectionWithEnvelopeFilterERKNS_4geom10LineStringES6_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 !guid !35 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.f = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.o = icmp ugt i64 %i.j, 1
  br i1 %i.o, label %.lr.ph32, label %.critedge

.lr.ph32:                                         ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = icmp ugt i64 %i.e, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.s, label %.lr.ph32.split.us, label %.lr.ph32.split

.lr.ph32.split.us:                                ; preds = %.lr.ph32, %.critedge2.us
  %.02831.us = phi i64 [ %i.bi, %.critedge2.us ], [ 1, %.lr.ph32 ] ; 3 uses
  %i.u = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph32.split.us
  %i.w = add i64 %.02831.us, -1
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.w) ; 3 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.02831.us) ; 3 uses
  %i.af = load double, ptr %i.aa, align 8, !tbaa !38 ; 3 uses
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !39 ; 3 uses
  %i.al = fcmp olt double %i.af, %i.ag            ; 2 uses
  %.sink19.i.i.i.us = select i1 %i.al, double %i.af, double %i.ag
  %i.am = fcmp olt double %i.ai, %i.ak            ; 2 uses
  %.sink21.i.i.i.us = select i1 %i.am, double %i.ai, double %i.ak
  %.sink20.i.i.i.us = select i1 %i.am, double %i.ak, double %i.ai
  %i.an = load double, ptr %i.p, align 8, !tbaa !41
  %i.ao = fcmp ugt double %.sink19.i.i.i.us, %i.an
  br i1 %i.ao, label %.critedge2.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sink.i.i.i.us = select i1 %i.al, double %i.ag, double %i.af
  %i.ap = load double, ptr %i.n, align 8, !tbaa !42
  %i.aq = fcmp ult double %.sink.i.i.i.us, %i.ap
  br i1 %i.aq, label %.critedge2.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load double, ptr %i.q, align 8, !tbaa !43
  %i.as = fcmp ugt double %.sink21.i.i.i.us, %i.ar
  br i1 %i.as, label %.critedge2.us, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.us

_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.us: ; preds = %bb.d
  %i.at = load double, ptr %i.r, align 8, !tbaa !44
  %i.au = fcmp ult double %.sink20.i.i.i.us, %i.at
  br i1 %i.au, label %.critedge2.us, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.us, %bb.g
  %.029.us = phi i64 [ %i.bh, %bb.g ], [ 1, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.us ] ; 3 uses
  %i.av = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.critedge2.us, label %bb.e

bb.e:                                             ; preds = %.preheader.us
  %i.ax = add i64 %.029.us, -1
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.ax)
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.029.us)
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.bg = load i64, ptr %i.t, align 8, !tbaa !20
  %.not.us = icmp eq i64 %i.bg, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = add nuw i64 %.029.us, 1                 ; 2 uses
  %exitcond35.not = icmp eq i64 %i.bh, %i.e
  br i1 %exitcond35.not, label %.critedge2.us, label %.preheader.us, !llvm.loop !33

.critedge2.us:                                    ; preds = %.preheader.us, %bb.g, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.us, %bb.d, %bb.c, %bb.b
  %i.bi = add nuw i64 %.02831.us, 1               ; 2 uses
  %exitcond36.not = icmp eq i64 %i.bi, %i.j
  br i1 %exitcond36.not, label %.critedge, label %.lr.ph32.split.us, !llvm.loop !34

.lr.ph32.split:                                   ; preds = %.lr.ph32, %.critedge2
  %.02831 = phi i64 [ %i.bw, %.critedge2 ], [ 1, %.lr.ph32 ] ; 3 uses
  %i.bj = load i8, ptr %3, align 8, !tbaa !14, !range !15, !noundef !16
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %.lr.ph32.split, %.critedge2, %.lr.ph32.split.us, %.critedge2.us, %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load i8, ptr %4, align 8, !tbaa !14, !range !15, !noundef !16
  %i.bm = trunc nuw i8 %i.bl to i1
  ret i1 %i.bm

.critedge2:                                       ; preds = %.lr.ph32.split
  %i.bn = add i64 %.02831, -1
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.bn) ; 0 uses
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.02831) ; 0 uses
  %i.bw = add nuw i64 %.02831, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.j
  br i1 %exitcond.not, label %.critedge, label %.lr.ph32.split, !llvm.loop !34
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !9, i64 0, !10, i64 8, !4, i64 16, !4, i64 48, !4, i64 96, !11, i64 128}
!13 = !{!"_ZTSN4geos9operation9predicate25SegmentIntersectionTesterE", !12, i64 0, !11, i64 136}
!14 = !{!13, !11, i64 136}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"vtable pointer", !3, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!12, !10, i64 8}
!21 = distinct !{!21, !17}
!22 = !{i64 1922990422225087510}
!23 = !{!"any p2 pointer", !8, i64 0}
!24 = !{!"p2 _ZTSN4geos4geom10LineStringE", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !24, i64 0}
!28 = !{!"p1 _ZTSN4geos4geom10LineStringE", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = !{i64 -1022146308830890615}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = !{i64 -1412554179850283086}
!36 = !{!"double", !4, i64 0}
!37 = !{!"_ZTSN4geos4geom10CoordinateE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!37, !36, i64 0}
!39 = !{!37, !36, i64 8}
!40 = !{!"_ZTSN4geos4geom8EnvelopeE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!40, !36, i64 8}
!42 = !{!40, !36, i64 0}
!43 = !{!40, !36, i64 24}
!44 = !{!40, !36, i64 16}
end_hunk_0
