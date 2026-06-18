inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZN4geos9geomgraph5index18EdgeSetIntersectorD2Ev = comdat any

$_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorD0Ev = comdat any

$_ZTIN4geos9geomgraph5index18EdgeSetIntersectorE = comdat any

$_ZTSN4geos9geomgraph5index18EdgeSetIntersectorE = comdat any

@_ZTVN4geos9geomgraph5index24SimpleEdgeSetIntersectorE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos9geomgraph5index24SimpleEdgeSetIntersectorE, ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector20computeIntersectionsEPSt6vectorIPNS0_4EdgeESaIS5_EEPNS1_18SegmentIntersectorEb, ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector20computeIntersectionsEPSt6vectorIPNS0_4EdgeESaIS5_EES8_PNS1_18SegmentIntersectorE, ptr @_ZN4geos9geomgraph5index18EdgeSetIntersectorD2Ev, ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorD0Ev] }, align 8
@_ZTIN4geos9geomgraph5index24SimpleEdgeSetIntersectorE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9geomgraph5index24SimpleEdgeSetIntersectorE, ptr @_ZTIN4geos9geomgraph5index18EdgeSetIntersectorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9geomgraph5index24SimpleEdgeSetIntersectorE = constant [50 x i8] c"N4geos9geomgraph5index24SimpleEdgeSetIntersectorE\00", align 1
@_ZTIN4geos9geomgraph5index18EdgeSetIntersectorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos9geomgraph5index18EdgeSetIntersectorE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9geomgraph5index18EdgeSetIntersectorE = linkonce_odr constant [44 x i8] c"N4geos9geomgraph5index18EdgeSetIntersectorE\00", comdat, align 1

@_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9geomgraph5index24SimpleEdgeSetIntersectorE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector20computeIntersectionsEPSt6vectorIPNS0_4EdgeESaIS5_EEPNS1_18SegmentIntersectorEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %.not24 = icmp eq ptr %i.c, %i.d
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %3, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %.lr.ph, %.split22.us.us
  %.023.us = phi i64 [ %i.aj, %.split22.us.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.023.us
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us, %.split.us.us
  %.01720.us.us = phi i64 [ 0, %.split.us.us ], [ %i.ai, %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01720.us.us
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(152) %i.k), !inline_history !20 ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(152) %i.n), !inline_history !20 ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !21
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !21
  %i.ae = add i64 %i.z, -1                        ; 2 uses
  %.not.i.us.us = icmp eq i64 %i.ae, 0
  br i1 %.not.i.us.us, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us, label %.preheader.lr.ph.i.us.us

.preheader.lr.ph.i.us.us:                         ; preds = %bb.b
  %i.af = add i64 %i.ad, -1                       ; 2 uses
  %.not18.i.us.us = icmp eq i64 %i.af, 0
  br i1 %.not18.i.us.us, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %.preheader.lr.ph.i.us.us, %._crit_edge.i.us.us
  %.01416.i.us.us = phi i64 [ %i.ah, %._crit_edge.i.us.us ], [ 0, %.preheader.lr.ph.i.us.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i.us.us
  %.015.i.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %i.ag, %bb.c ] ; 2 uses
  tail call void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull %i.k, i64 noundef %.01416.i.us.us, ptr noundef nonnull %i.n, i64 noundef %.015.i.us.us)
  %i.ag = add nuw i64 %.015.i.us.us, 1            ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %i.ag, %i.af
  br i1 %exitcond.not.i.us.us, label %._crit_edge.i.us.us, label %bb.c, !llvm.loop !22

._crit_edge.i.us.us:                              ; preds = %bb.c
  %i.ah = add nuw i64 %.01416.i.us.us, 1          ; 2 uses
  %exitcond19.not.i.us.us = icmp eq i64 %i.ah, %i.ae
  br i1 %exitcond19.not.i.us.us, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us, label %.preheader.i.us.us, !llvm.loop !24

_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us: ; preds = %._crit_edge.i.us.us, %.preheader.lr.ph.i.us.us, %bb.b
  %i.ai = add nuw i64 %.01720.us.us, 1            ; 2 uses
  %exitcond28.not = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond28.not, label %.split22.us.us, label %bb.b, !llvm.loop !25

.split22.us.us:                                   ; preds = %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit.us.us
  %i.aj = add nuw i64 %.023.us, 1                 ; 2 uses
  %exitcond29.not = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond29.not, label %._crit_edge, label %.split.us.us, !llvm.loop !26

._crit_edge:                                      ; preds = %.split22, %.split22.us.us, %bb.a
  ret void

.split:                                           ; preds = %.lr.ph, %.split22
  %.023 = phi i64 [ %i.an, %.split22 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.023
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 4 uses
  br label %bb.d

.split22:                                         ; preds = %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit
  %i.an = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond26.not = icmp eq i64 %i.an, %i.h
  br i1 %exitcond26.not, label %._crit_edge, label %.split, !llvm.loop !26

bb.d:                                             ; preds = %.split, %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit
  %.01720 = phi i64 [ 0, %.split ], [ %i.bl, %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit ] ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.01720
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %.not.not = icmp eq ptr %i.am, %i.aq
  br i1 %.not.not, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(152) %i.am), !inline_history !20 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(152) %i.aq), !inline_history !20 ; 2 uses
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !21
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.ay), !inline_history !21
  %i.bh = add i64 %i.bc, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.bi = add i64 %i.bg, -1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.bi, 0
  br i1 %.not18.i, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %bb.f
  %.01416.i = phi i64 [ %i.bk, %bb.f ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i, %.preheader.i
  %.015.us.i = phi i64 [ 0, %.preheader.i ], [ %i.bj, %._crit_edge.i ] ; 2 uses
  tail call void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull %i.am, i64 noundef %.01416.i, ptr noundef nonnull %i.aq, i64 noundef %.015.us.i)
  %i.bj = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.bj, %i.bi
  br i1 %exitcond19.not.i, label %bb.f, label %._crit_edge.i, !llvm.loop !22

bb.f:                                             ; preds = %._crit_edge.i
  %i.bk = add nuw i64 %.01416.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.bh
  br i1 %exitcond.not.i, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, label %.preheader.i, !llvm.loop !24

_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit: ; preds = %bb.f, %.preheader.lr.ph.i, %bb.e, %bb.d
  %i.bl = add nuw i64 %.01720, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.h
  br i1 %exitcond.not, label %.split22, label %bb.d, !llvm.loop !25
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(152) %1) ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(152) %2) ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !27
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !27
  %i.q = add i64 %i.l, -1                         ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge17, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = add i64 %i.p, -1                         ; 2 uses
  %.not18 = icmp eq i64 %i.r, 0
  br i1 %.not18, label %._crit_edge17, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.01416 = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge
  %.015.us = phi i64 [ 0, %.preheader ], [ %i.s, %._crit_edge ] ; 2 uses
  tail call void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr noundef nonnull align 8 dereferenceable(76) %3, ptr noundef nonnull %1, i64 noundef %.01416, ptr noundef nonnull %2, i64 noundef %.015.us)
  %i.s = add nuw i64 %.015.us, 1                  ; 2 uses
  %exitcond19.not = icmp eq i64 %i.s, %i.r
  br i1 %exitcond19.not, label %bb.b, label %._crit_edge, !llvm.loop !22

bb.b:                                             ; preds = %._crit_edge
  %i.t = add nuw i64 %.01416, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.q
  br i1 %exitcond.not, label %._crit_edge17, label %.preheader, !llvm.loop !24

._crit_edge17:                                    ; preds = %bb.b, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector20computeIntersectionsEPSt6vectorIPNS0_4EdgeESaIS5_EES8_PNS1_18SegmentIntersectorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %4 = ptrtoint ptr %i.c to i64
  %5 = ptrtoint ptr %i.d to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %8 = ptrtoint ptr %i.f to i64
  %9 = ptrtoint ptr %i.g to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %.not = icmp eq ptr %i.c, %i.d
  %.not21 = icmp eq ptr %i.f, %i.g
  %or.cond = select i1 %.not, i1 true, i1 %.not21
  br i1 %or.cond, label %._crit_edge20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit
  %.017 = phi i64 [ %i.ah, %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.017
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01516 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01516
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(152) %i.j), !inline_history !20 ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(152) %i.m), !inline_history !20 ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !21
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.u), !inline_history !21
  %i.ad = add i64 %i.y, -1                        ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.c, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.ae = add i64 %i.ac, -1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.ae, 0
  br i1 %.not18.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %.01416.i = phi i64 [ %i.af, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br label %12

12:                                               ; preds = %12, %.preheader.i
  %.015.us.i.us = phi i64 [ 0, %.preheader.i ], [ %13, %12 ] ; 2 uses
  tail call void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr noundef nonnull align 8 dereferenceable(76) %3, ptr noundef nonnull %i.j, i64 noundef %.01416.i, ptr noundef nonnull %i.m, i64 noundef %.015.us.i.us)
  %13 = add nuw i64 %.015.us.i.us, 1              ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %13, %i.ae
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %12, !llvm.loop !22

._crit_edge.i:                                    ; preds = %12
  %i.af = add nuw i64 %.01416.i, 1                ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.af, %i.ad
  br i1 %exitcond19.not.i, label %bb.c, label %.preheader.i, !llvm.loop !24

bb.c:                                             ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.b
  %i.ag = add nuw i64 %.01516, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %11
  br i1 %exitcond.not.i, label %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, label %bb.b, !llvm.loop !28

_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit: ; preds = %bb.c
  %i.ah = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %7
  br i1 %exitcond.not, label %._crit_edge20, label %.lr.ph, !llvm.loop !29

._crit_edge20:                                    ; preds = %_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE.exit, %bb.a
  ret void
}

declare void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph5index18EdgeSetIntersectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersectorD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !4, i64 8}
!10 = !{!"_ZTSN4geos9geomgraph5index24SimpleEdgeSetIntersectorE", !11, i64 0, !4, i64 8}
!11 = !{!"_ZTSN4geos9geomgraph5index18EdgeSetIntersectorE"}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIPN4geos9geomgraph4EdgeESaIS3_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p2 _ZTSN4geos9geomgraph4EdgeE", !15, i64 0}
!15 = !{!"any p2 pointer", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!13, !14, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN4geos9geomgraph4EdgeE", !16, i64 0}
!20 = !{ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE}
!21 = distinct !{ptr @_ZN4geos9geomgraph5index24SimpleEdgeSetIntersector17computeIntersectsEPNS0_4EdgeES4_PNS1_18SegmentIntersectorE, null}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{null}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
end_hunk_0
