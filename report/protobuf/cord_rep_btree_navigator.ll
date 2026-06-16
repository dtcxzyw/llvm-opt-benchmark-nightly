inline.NumInlined: 46
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !7
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %.062 = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.h = load i64, ptr %.062, align 8, !tbaa !13  ; 2 uses
  %.not63 = icmp ult i64 %1, %i.h
  br i1 %.not63, label %._crit_edge89, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8
  %2 = sext i32 %i.i to i64                       ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge
  %i.j = icmp sgt i32 %.139.lcssa, 0
  br i1 %i.j, label %.lr.ph88.preheader, label %._crit_edge89

.lr.ph88.preheader:                               ; preds = %.preheader
  %i.k = zext nneg i32 %.139.lcssa to i64
  br label %.lr.ph88

bb.b:                                             ; preds = %.lr.ph69, %._crit_edge
  %i.l = phi i64 [ %i.h, %.lr.ph69 ], [ %i.af, %._crit_edge ]
  %.03367 = phi ptr [ %i.e, %.lr.ph69 ], [ %.134.lcssa, %._crit_edge ] ; 2 uses
  %.03566 = phi i64 [ %i.c, %.lr.ph69 ], [ %.lcssa, %._crit_edge ]
  %.03865 = phi i32 [ 0, %.lr.ph69 ], [ %.139.lcssa, %._crit_edge ] ; 2 uses
  %.04164 = phi i64 [ %1, %.lr.ph69 ], [ %i.m, %._crit_edge ]
  %i.m = sub nuw i64 %.04164, %i.l                ; 6 uses
  %i.n = add i64 %.03566, 1                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03367, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i64
  %i.r = icmp eq i64 %i.n, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = sext i32 %.03865 to i64
  %indvars.iv.next135 = add nsw i64 %3, 1         ; 2 uses
  %4 = icmp sgt i64 %indvars.iv.next135, %2
  br i1 %4, label %.loopexit50, label %bb.c

.lr.ph:                                           ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %5 = icmp sgt i64 %indvars.iv.next, %2
  br i1 %5, label %.loopexit50, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv134 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.next135, %.lr.ph.preheader ] ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv134
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv134
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = zext i8 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7
  %i.aa = zext i8 %i.z to i64
  %i.ab = icmp eq i64 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ac = trunc nsw i64 %indvars.iv134 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.139.lcssa = phi i32 [ %.03865, %bb.b ], [ %i.ac, %._crit_edge.loopexit ] ; 3 uses
  %.134.lcssa = phi ptr [ %.03367, %bb.b ], [ %i.t, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ %i.n, %bb.b ], [ %i.x, %._crit_edge.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.134.lcssa, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa
  %.0 = load ptr, ptr %i.ae, align 8, !tbaa !11   ; 3 uses
  %i.af = load i64, ptr %.0, align 8, !tbaa !13   ; 2 uses
  %.not = icmp ult i64 %i.m, %i.af
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph80, %.lr.ph88
  %.243.lcssa = phi i64 [ %.14284, %.lr.ph88 ], [ %i.aq, %.lr.ph80 ] ; 2 uses
  %.3.lcssa = phi i64 [ %i.am, %.lr.ph88 ], [ %i.ar, %.lr.ph80 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.275, %.lr.ph88 ], [ %.2, %.lr.ph80 ] ; 2 uses
  %i.ag = icmp samesign ugt i64 %indvars.iv103, 1
  br i1 %i.ag, label %.lr.ph88, label %._crit_edge89, !llvm.loop !22

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.loopexit
  %indvars.iv103 = phi i64 [ %i.k, %.lr.ph88.preheader ], [ %indvars.iv.next104, %.loopexit ] ; 3 uses
  %.187 = phi ptr [ %.0, %.lr.ph88.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %.23786 = phi i64 [ %.lcssa, %.lr.ph88.preheader ], [ %.3.lcssa, %.loopexit ]
  %.14284 = phi i64 [ %i.m, %.lr.ph88.preheader ], [ %.243.lcssa, %.loopexit ] ; 3 uses
  %i.ah = trunc i64 %.23786 to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !7
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next104
  store ptr %.187, ptr %i.aj, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.187, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i64                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.187, i64 16 ; 2 uses
  %.2.in74 = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %.275 = load ptr, ptr %.2.in74, align 8, !tbaa !11 ; 2 uses
  %i.ao = load i64, ptr %.275, align 8, !tbaa !13 ; 2 uses
  %.not4876 = icmp ult i64 %.14284, %i.ao
  br i1 %.not4876, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph88, %.lr.ph80
  %i.ap = phi i64 [ %i.as, %.lr.ph80 ], [ %i.ao, %.lr.ph88 ]
  %.378 = phi i64 [ %i.ar, %.lr.ph80 ], [ %i.am, %.lr.ph88 ]
  %.24377 = phi i64 [ %i.aq, %.lr.ph80 ], [ %.14284, %.lr.ph88 ]
  %i.aq = sub nuw i64 %.24377, %i.ap              ; 3 uses
  %i.ar = add i64 %.378, 1                        ; 3 uses
  %.2.in = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !11  ; 2 uses
  %i.as = load i64, ptr %.2, align 8, !tbaa !13   ; 2 uses
  %.not48 = icmp ult i64 %i.aq, %i.as
  br i1 %.not48, label %.loopexit, label %.lr.ph80, !llvm.loop !23

._crit_edge89:                                    ; preds = %.loopexit, %bb.a, %.preheader
  %.142.lcssa = phi i64 [ %i.m, %.preheader ], [ %1, %bb.a ], [ %.243.lcssa, %.loopexit ]
  %.237.lcssa = phi i64 [ %.lcssa, %.preheader ], [ %i.c, %bb.a ], [ %.3.lcssa, %.loopexit ]
  %.1.lcssa = phi ptr [ %.0, %.preheader ], [ %.062, %bb.a ], [ %.2.lcssa, %.loopexit ]
  %i.at = trunc i64 %.237.lcssa to i8
  store i8 %i.at, ptr %i.a, align 4, !tbaa !7
  br label %.loopexit50

.loopexit50:                                      ; preds = %.lr.ph.preheader, %.lr.ph, %._crit_edge89
  %.sroa.0.0 = phi ptr [ %.1.lcssa, %._crit_edge89 ], [ null, %.lr.ph ], [ null, %.lr.ph.preheader ]
  %.sroa.3.0 = phi i64 [ %.142.lcssa, %._crit_edge89 ], [ %i.m, %.lr.ph ], [ %i.m, %.lr.ph.preheader ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4ReadEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %2, %1                           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !7
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 14 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 4 uses
  %i.k = icmp ult i64 %i.a, %i.j
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %2, %i.j
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.q = load i8, ptr %i.p, align 4, !tbaa !24
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = add i64 %i.t, %1
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.019.i = phi i64 [ %i.u, %bb.f ], [ %1, %bb.e ]
  %.018.i = phi ptr [ %i.w, %bb.f ], [ %i.i, %bb.e ] ; 3 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 2, ptr %i.y, align 4, !tbaa !28
  store i64 %2, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 1, ptr %i.z, align 4, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.019.i, ptr %i.aa, align 8, !tbaa !25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 2 monotonic, align 4 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.018.i, ptr %i.ad, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = sub i64 %i.j, %1
  %i.af = icmp eq i64 %i.j, %1
  br i1 %i.af, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %1, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !24
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ao = add i64 %i.an, %1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.019.i.i = phi i64 [ %i.ao, %bb.l ], [ %1, %bb.k ]
  %.018.i.i = phi ptr [ %i.aq, %bb.l ], [ %i.i, %bb.k ] ; 3 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 2, ptr %i.as, align 4, !tbaa !28
  store i64 %i.ae, ptr %i.ar, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i8 1, ptr %i.at, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.019.i.i, ptr %i.au, align 8, !tbaa !25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018.i.i) ]
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %i.aw = atomicrmw add ptr %i.av, i32 2 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.018.i.i, ptr %i.ax, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit: ; preds = %bb.h, %bb.j, %bb.m
  %.0.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.i, %bb.j ], [ null, %bb.h ] ; 4 uses
  %i.ay = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #7 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 2, ptr %i.az, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !24
  %i.bc = icmp eq i8 %i.bb, 3
  br i1 %i.bc, label %bb.n, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit

bb.n:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7
  %i.bf = add i8 %i.be, 1
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit, %bb.n
  %i.bg = phi i8 [ %i.bf, %bb.n ], [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEm.exit ]
  %i.bh = load i64, ptr %.0.i.i, align 8, !tbaa !13
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i8 3, ptr %i.bi, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 13
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  store i8 0, ptr %i.bk, align 2, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 15
  store i8 1, ptr %i.bl, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %.0.i.i, ptr %i.bm, align 8, !tbaa !11
  %.pre = load i64, ptr %i.i, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit
  %i.bn = phi i64 [ %.pre, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %i.fk, %bb.w ]
  %.0103 = phi i32 [ 0, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.1104.lcssa, %bb.w ] ; 2 uses
  %.099 = phi i64 [ %i.a, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %i.bo, %bb.w ]
  %.094 = phi i64 [ %i.d, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.lcssa, %bb.w ]
  %.092 = phi ptr [ %i.f, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.193.lcssa, %bb.w ] ; 2 uses
  %.083 = phi ptr [ %i.ay, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.184.lcssa, %bb.w ] ; 10 uses
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.3, %bb.w ] ; 4 uses
  %.fr169 = freeze i64 %i.bn
  %i.bo = sub i64 %.099, %.fr169                  ; 9 uses
  %i.bp = add i64 %.094, 1                        ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.092, i64 15
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = zext i8 %i.br to i64
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %.not120 = icmp eq i64 %i.bo, 0
  %i.bu = sext i32 %.0103 to i64                  ; 3 uses
  br i1 %.not120, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bv = trunc nuw i64 %i.bp to i8
  %i.bw = getelementptr inbounds i8, ptr %i.b, i64 %i.bu
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !7
  %indvars.iv.next.peel = add nsw i64 %i.bu, 1    ; 5 uses
  %i.bx = load i32, ptr %0, align 8, !tbaa !29
  %3 = sext i32 %i.bx to i64
  %4 = icmp sgt i64 %indvars.iv.next.peel, %3
  %i.by = trunc i64 %.0 to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.083, i64 15
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  br i1 %4, label %.split.us.thread231, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.preheader
  %i.ca = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #7 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 2, ptr %i.cb, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %.083, i64 12
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !24
  %i.ce = icmp eq i8 %i.cd, 3
  br i1 %i.ce, label %bb.q, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.083, i64 13
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7
  %i.ch = add i8 %i.cg, 1
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel: ; preds = %bb.q, %bb.p
  %i.ci = phi i8 [ %i.ch, %bb.q ], [ 0, %bb.p ]
  %i.cj = load i64, ptr %.083, align 8, !tbaa !13
  store i64 %i.cj, ptr %i.ca, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i8 3, ptr %i.ck, align 4, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 13
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  store i8 0, ptr %i.cm, align 2, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 15
  store i8 1, ptr %i.cn, align 1, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %.083, ptr %i.co, align 8, !tbaa !11
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.peel
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8  ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.peel
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !7
  %i.ct = zext i8 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !7
  %i.cx = zext i8 %i.cw to i64
  %i.cy = icmp eq i64 %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph.split, label %._crit_edge.loopexit171

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.r
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.r ], [ %i.bu, %.lr.ph ] ; 2 uses
  %i.cz = phi i64 [ %i.dl, %bb.r ], [ %i.bp, %.lr.ph ]
  %i.da = trunc nuw i64 %i.cz to i8
  %i.db = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv200
  store i8 %i.da, ptr %i.db, align 1, !tbaa !7
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 5 uses
  %i.dc = load i32, ptr %0, align 8, !tbaa !29
  %i.dd = sext i32 %i.dc to i64
  %5 = icmp sgt i64 %indvars.iv.next201, %i.dd
  br i1 %5, label %.split.us.thread, label %bb.r

.split.us.thread:                                 ; preds = %.lr.ph.split.us
  %i.de = trunc i64 %.0 to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.083, i64 15
  store i8 %i.de, ptr %i.df, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next201
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8  ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next201
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !7
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 15
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !7
  %i.do = zext i8 %i.dn to i64
  %i.dp = icmp eq i64 %i.dl, %i.do
  br i1 %i.dp, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !31

.lr.ph.split:                                     ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ], [ %indvars.iv.next.peel, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ] ; 2 uses
  %i.dq = phi i64 [ %i.es, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ], [ %i.cu, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ]
  %.184131 = phi ptr [ %i.dy, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ], [ %i.ca, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ] ; 6 uses
  %i.dr = trunc nuw i64 %i.dq to i8
  %i.ds = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.dt = load i32, ptr %0, align 8, !tbaa !29
  %i.du = sext i32 %i.dt to i64
  %6 = icmp sgt i64 %indvars.iv.next, %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %.184131, i64 15
  store i8 1, ptr %i.dv, align 1, !tbaa !7
  br i1 %6, label %.split.us.thread231, label %bb.t

.split.us.thread231:                              ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.us-phi137234 = phi ptr [ %.184131, %.lr.ph.split ], [ %.083, %.lr.ph.split.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.us-phi137234, i64 8
  %i.dx = atomicrmw sub ptr %i.dw, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.dx, 2
  br i1 %.not.i, label %bb.s, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit, !prof !32

bb.s:                                             ; preds = %.split.us.thread231
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.us-phi137234)
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit

bb.t:                                             ; preds = %.lr.ph.split
  %i.dy = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #7 ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 2, ptr %i.dz, align 4, !tbaa !28
  %i.ea = getelementptr inbounds nuw i8, ptr %.184131, i64 12
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !24
  %i.ec = icmp eq i8 %i.eb, 3
  br i1 %i.ec, label %bb.u, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %.184131, i64 13
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %i.ef = add i8 %i.ee, 1
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121: ; preds = %bb.t, %bb.u
  %i.eg = phi i8 [ %i.ef, %bb.u ], [ 0, %bb.t ]
  %i.eh = load i64, ptr %.184131, align 8, !tbaa !13
  store i64 %i.eh, ptr %i.dy, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i8 3, ptr %i.ei, align 4, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 13
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 14
  store i8 0, ptr %i.ek, align 2, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 15
  store i8 1, ptr %i.el, align 1, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %.184131, ptr %i.em, align 8, !tbaa !11
  %i.en = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8  ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !7
  %i.er = zext i8 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 1                ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 15
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7
  %i.ev = zext i8 %i.eu to i64
  %i.ew = icmp eq i64 %i.es, %i.ev
  br i1 %i.ew, label %.lr.ph.split, label %._crit_edge.loopexit171, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %bb.r
  %i.ex = trunc nsw i64 %indvars.iv.next201 to i32
  br label %._crit_edge

._crit_edge.loopexit171:                          ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel
  %.lcssa182 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ], [ %i.eo, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ]
  %.lcssa181 = phi i64 [ %i.cu, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ], [ %i.es, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ]
  %.lcssa180 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ], [ %i.dy, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ]
  %.lcssa177.wide = phi i64 [ %indvars.iv.next.peel, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121.peel ], [ %indvars.iv.next, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit121 ]
  %i.ey = trunc nsw i64 %.lcssa177.wide to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit171, %._crit_edge.loopexit, %bb.o
  %.1104.lcssa = phi i32 [ %.0103, %bb.o ], [ %i.ex, %._crit_edge.loopexit ], [ %i.ey, %._crit_edge.loopexit171 ] ; 3 uses
  %.193.lcssa = phi ptr [ %.092, %bb.o ], [ %i.dh, %._crit_edge.loopexit ], [ %.lcssa182, %._crit_edge.loopexit171 ] ; 2 uses
  %.184.lcssa = phi ptr [ %.083, %bb.o ], [ %.083, %._crit_edge.loopexit ], [ %.lcssa180, %._crit_edge.loopexit171 ] ; 9 uses
  %.1.lcssa = phi i64 [ %.0, %bb.o ], [ %.0, %._crit_edge.loopexit ], [ 1, %._crit_edge.loopexit171 ] ; 3 uses
  %.lcssa = phi i64 [ %i.bp, %bb.o ], [ %i.dl, %._crit_edge.loopexit ], [ %.lcssa181, %._crit_edge.loopexit171 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.193.lcssa, i64 16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.lcssa
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !11 ; 6 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !13 ; 3 uses
  %.not = icmp ult i64 %i.bo, %i.fc
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.fd = load i64, ptr %.184.lcssa, align 8, !tbaa !13
  %i.fe = add i64 %i.fd, %i.fc
  store i64 %i.fe, ptr %.184.lcssa, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = atomicrmw add ptr %i.ff, i32 2 monotonic, align 4 ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 16
  %i.fi = add i64 %.1.lcssa, 1
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.1.lcssa
  store ptr %i.fb, ptr %i.fj, align 8, !tbaa !11
  %.pre207 = load i64, ptr %i.fb, align 8, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.v
  %i.fk = phi i64 [ %.pre207, %bb.v ], [ %i.fc, %._crit_edge ] ; 2 uses
  %.3 = phi i64 [ %i.fi, %bb.v ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.not115 = icmp ult i64 %i.bo, %i.fk
  br i1 %.not115, label %bb.x, label %bb.o, !llvm.loop !35

bb.x:                                             ; preds = %bb.w
  %i.fl = load i64, ptr %.184.lcssa, align 8, !tbaa !13
  %i.fm = add i64 %i.fl, %i.bo
  store i64 %i.fm, ptr %.184.lcssa, align 8, !tbaa !13
  %i.fn = icmp sgt i32 %.1104.lcssa, 0
  br i1 %i.fn, label %.lr.ph162.preheader, label %._crit_edge163

.lr.ph162.preheader:                              ; preds = %bb.x
  %i.fo = zext nneg i32 %.1104.lcssa to i64
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.loopexit
  %indvars.iv204 = phi i64 [ %i.fo, %.lr.ph162.preheader ], [ %indvars.iv.next205, %.loopexit ] ; 3 uses
  %.4160 = phi i64 [ %.3, %.lr.ph162.preheader ], [ %.6, %.loopexit ] ; 3 uses
  %.386159 = phi ptr [ %.184.lcssa, %.lr.ph162.preheader ], [ %.487, %.loopexit ] ; 3 uses
  %.189158 = phi ptr [ %i.fb, %.lr.ph162.preheader ], [ %.391, %.loopexit ] ; 3 uses
  %.296157 = phi i64 [ %.lcssa, %.lr.ph162.preheader ], [ %.498, %.loopexit ]
  %.1100156 = phi i64 [ %i.bo, %.lr.ph162.preheader ], [ %.3102, %.loopexit ] ; 5 uses
  %i.fp = trunc i64 %.296157 to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv204
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !7
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next205
  store ptr %.189158, ptr %i.fr, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %.189158, i64 14
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !7
  %i.fu = zext i8 %i.ft to i64                    ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.189158, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !11 ; 4 uses
  %.not117 = icmp eq i64 %.1100156, 0
  br i1 %.not117, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph162
  %i.fy = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #7 ; 10 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 2, ptr %i.fz, align 4, !tbaa !28
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i8 3, ptr %i.ga, align 4, !tbaa !24
  %i.gb = trunc i64 %indvars.iv.next205 to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 13
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 14
  store i8 0, ptr %i.gd, align 2, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 15
  store i8 0, ptr %i.ge, align 1, !tbaa !7
  store i64 %.1100156, ptr %i.fy, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.386159, i64 16
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.4160
  store ptr %i.fy, ptr %i.gg, align 8, !tbaa !11
  %i.gh = trunc i64 %.4160 to i8
  %i.gi = add i8 %i.gh, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.386159, i64 15
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !7
  %i.gk = load i64, ptr %i.fx, align 8, !tbaa !13 ; 2 uses
  %.not118144 = icmp ult i64 %.1100156, %i.gk
  br i1 %.not118144, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph150, %bb.z
  %i.gm = phi i64 [ %i.gk, %.lr.ph150 ], [ %i.gv, %bb.z ]
  %.5148 = phi i64 [ 0, %.lr.ph150 ], [ %i.gp, %bb.z ] ; 2 uses
  %.290147 = phi ptr [ %i.fx, %.lr.ph150 ], [ %i.gu, %bb.z ] ; 2 uses
  %.397146 = phi i64 [ %i.fu, %.lr.ph150 ], [ %i.gs, %bb.z ]
  %.2101145 = phi i64 [ %.1100156, %.lr.ph150 ], [ %i.gr, %bb.z ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.290147, i64 8
  %i.go = atomicrmw add ptr %i.gn, i32 2 monotonic, align 4 ; 0 uses
  %i.gp = add i64 %.5148, 1                       ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.5148
  store ptr %.290147, ptr %i.gq, align 8, !tbaa !11
  %i.gr = sub nuw i64 %.2101145, %i.gm            ; 3 uses
  %i.gs = add i64 %.397146, 1                     ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !11 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !13 ; 2 uses
  %.not118 = icmp ult i64 %i.gr, %i.gv
  br i1 %.not118, label %.loopexit, label %bb.z, !llvm.loop !36

.loopexit:                                        ; preds = %bb.z, %bb.y, %.lr.ph162
  %.3102 = phi i64 [ 0, %.lr.ph162 ], [ %.1100156, %bb.y ], [ %i.gr, %bb.z ] ; 2 uses
  %.498 = phi i64 [ %i.fu, %.lr.ph162 ], [ %i.fu, %bb.y ], [ %i.gs, %bb.z ] ; 2 uses
  %.391 = phi ptr [ %i.fx, %.lr.ph162 ], [ %i.fx, %bb.y ], [ %i.gu, %bb.z ] ; 2 uses
  %.487 = phi ptr [ %.386159, %.lr.ph162 ], [ %i.fy, %bb.y ], [ %i.fy, %bb.z ] ; 2 uses
  %.6 = phi i64 [ %.4160, %.lr.ph162 ], [ 0, %bb.y ], [ %i.gp, %bb.z ] ; 2 uses
  %i.gw = icmp samesign ugt i64 %indvars.iv204, 1
  br i1 %i.gw, label %.lr.ph162, label %._crit_edge163, !llvm.loop !37

._crit_edge163:                                   ; preds = %.loopexit, %bb.x
  %.1100.lcssa = phi i64 [ %i.bo, %bb.x ], [ %.3102, %.loopexit ] ; 3 uses
  %.296.lcssa = phi i64 [ %.lcssa, %bb.x ], [ %.498, %.loopexit ]
  %.189.lcssa = phi ptr [ %i.fb, %bb.x ], [ %.391, %.loopexit ]
  %.386.lcssa = phi ptr [ %.184.lcssa, %bb.x ], [ %.487, %.loopexit ] ; 2 uses
  %.4.lcssa = phi i64 [ %.3, %bb.x ], [ %.6, %.loopexit ] ; 3 uses
  %.not116 = icmp eq i64 %.1100.lcssa, 0
  br i1 %.not116, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge163
  %i.gx = tail call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm(ptr noundef %.189.lcssa, i64 noundef 0, i64 noundef %.1100.lcssa)
  %i.gy = getelementptr inbounds nuw i8, ptr %.386.lcssa, i64 16
  %i.gz = add i64 %.4.lcssa, 1
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.4.lcssa
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge163
  %.7 = phi i64 [ %i.gz, %bb.aa ], [ %.4.lcssa, %._crit_edge163 ]
  %i.hb = trunc i64 %.7 to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %.386.lcssa, i64 15
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !7
  %i.hd = trunc i64 %.296.lcssa to i8
  store i8 %i.hd, ptr %i.b, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm.exit: ; preds = %.split.us.thread, %bb.s, %.split.us.thread231, %bb.g, %bb.d, %bb.b, %bb.ab
  %.sroa.0.1 = phi ptr [ %.083, %.split.us.thread ], [ %.184.lcssa, %bb.ab ], [ null, %bb.b ], [ %i.x, %bb.g ], [ %i.i, %bb.d ], [ null, %.split.us.thread231 ], [ null, %bb.s ]
  %.sroa.5.1 = phi i64 [ 0, %.split.us.thread ], [ %.1100.lcssa, %bb.ab ], [ %i.a, %bb.b ], [ %i.a, %bb.g ], [ %i.a, %bb.d ], [ %i.bo, %.split.us.thread231 ], [ %i.bo, %bb.s ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_19SubstringEPNS1_7CordRepEmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !13
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = atomicrmw add ptr %i.d, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  %i.k = add i64 %i.j, %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i64 [ %i.k, %bb.e ], [ %1, %bb.d ]
  %.018 = phi ptr [ %i.m, %bb.e ], [ %0, %bb.d ]  ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.o, align 4, !tbaa !28
  store i64 %2, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i8 1, ptr %i.p, align 4, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.019, ptr %i.q, align 8, !tbaa !25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.s = atomicrmw add ptr %i.r, i32 2 monotonic, align 4 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %.018, ptr %i.t, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.0 = phi ptr [ %i.n, %bb.f ], [ %0, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { builtin allocsize(0) }

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal12CordRepBtreeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !15, i64 0, !16, i64 8, !5, i64 12, !5, i64 13}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !17, i64 0}
!17 = !{!"_ZTSSt6atomicIiE", !18, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!14, !5, i64 12}
!25 = !{!26, !15, i64 16}
!26 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !14, i64 0, !15, i64 16, !12, i64 24}
!27 = !{!26, !12, i64 24}
!28 = !{!18, !4, i64 0}
!29 = !{!30, !4, i64 0}
!30 = !{!"_ZTSN4absl12lts_2025051213cord_internal21CordRepBtreeNavigatorE", !4, i64 0, !5, i64 4, !5, i64 16}
!31 = distinct !{!31, !20}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = distinct !{!33, !20, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
end_hunk_0
