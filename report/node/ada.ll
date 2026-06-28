inline.NumInlined: 8298
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_:bb.a
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.4
  %i.q = load i16, ptr %i.p, align 2
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %.preheader.5, label %.critedge.thread, !llvm.loop !76

.preheader.5:                                     ; preds = %.lr.ph.5
  %.019.5 = add nuw nsw i64 %.026, 7              ; 3 uses
  %.not.5 = icmp eq i64 %.019.5, 8
  br i1 %.not.5, label %.critedge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.preheader.5
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.5
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %.critedge, label %.critedge.thread, !llvm.loop !76

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01935
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.preheader, label %.critedge.thread, !llvm.loop !76

.critedge:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.lr.ph.6, %.preheader.preheader
  %i.y = sub nuw nsw i64 8, %.026                 ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.c, label %bb.d

.critedge.thread:                                 ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.01937.lcssa = phi i64 [ %.01935, %.lr.ph ], [ %.019, %.lr.ph.1 ], [ %.019.1, %.lr.ph.2 ], [ %.019.2, %.lr.ph.3 ], [ %.019.3, %.lr.ph.4 ], [ %.019.4, %.lr.ph.5 ], [ %.019.5, %.lr.ph.6 ] ; 2 uses
  %i.ab = sub nuw nsw i64 %.01937.lcssa, %.026    ; 2 uses
  %i.ac = load i64, ptr %2, align 8
  %i.ad = icmp ult i64 %i.ac, %i.ab
  br i1 %i.ad, label %.thread, label %bb.d

.thread:                                          ; preds = %.critedge.thread
  store i64 %i.ab, ptr %2, align 8
  store i64 %.026, ptr %1, align 8
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 %i.y, ptr %2, align 8
  store i64 %.026, ptr %1, align 8
  br label %.critedge23

bb.d:                                             ; preds = %.thread, %.critedge.thread, %.critedge, %bb.b
  %.3 = phi i64 [ %.026, %bb.b ], [ %.026, %.critedge ], [ %.01937.lcssa, %.thread ], [ %.026, %.critedge.thread ]
  %i.ae = add i64 %.3, 1                          ; 2 uses
  %i.af = icmp ult i64 %i.ae, 8
  br i1 %i.af, label %bb.b, label %.critedge23, !llvm.loop !77

.critedge23:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada11serializers4ipv6B5cxx11ERKSt5arrayItLm8EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.130 = phi i64 [ 0, %bb.a ], [ %.231, %bb.c ]  ; 3 uses
  %.126 = phi i64 [ 0, %bb.a ], [ %.227, %bb.c ]  ; 5 uses
  %.026.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.c ] ; 15 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.026.i
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.preheader.i.preheader, label %bb.c

.preheader.i.preheader:                           ; preds = %bb.b
  %.019.i73 = add nuw nsw i64 %.026.i, 1          ; 3 uses
  %.not.i74 = icmp eq i64 %.019.i73, 8
  br i1 %.not.i74, label %.critedge.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.019.i = add nuw nsw i64 %.026.i, 2            ; 3 uses
  %.not.i = icmp eq i64 %.019.i, 8
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.preheader.i.1, label %.critedge.thread.i, !llvm.loop !76

.preheader.i.1:                                   ; preds = %.lr.ph.1
  %.019.i.1 = add nuw nsw i64 %.026.i, 3          ; 3 uses
  %.not.i.1 = icmp eq i64 %.019.i.1, 8
  br i1 %.not.i.1, label %.critedge.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i.1
  %i.h = load i16, ptr %i.g, align 2
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.preheader.i.2, label %.critedge.thread.i, !llvm.loop !76

.preheader.i.2:                                   ; preds = %.lr.ph.2
  %.019.i.2 = add nuw nsw i64 %.026.i, 4          ; 3 uses
  %.not.i.2 = icmp eq i64 %.019.i.2, 8
  br i1 %.not.i.2, label %.critedge.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.2
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i.2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %.preheader.i.3, label %.critedge.thread.i, !llvm.loop !76

.preheader.i.3:                                   ; preds = %.lr.ph.3
  %.019.i.3 = add nuw nsw i64 %.026.i, 5          ; 3 uses
  %.not.i.3 = icmp eq i64 %.019.i.3, 8
  br i1 %.not.i.3, label %.critedge.i, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.3
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i.3
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %.preheader.i.4, label %.critedge.thread.i, !llvm.loop !76

.preheader.i.4:                                   ; preds = %.lr.ph.4
  %.019.i.4 = add nuw nsw i64 %.026.i, 6          ; 3 uses
  %.not.i.4 = icmp eq i64 %.019.i.4, 8
  br i1 %.not.i.4, label %.critedge.i, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i.4
  %i.q = load i16, ptr %i.p, align 2
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %.preheader.i.5, label %.critedge.thread.i, !llvm.loop !76

.preheader.i.5:                                   ; preds = %.lr.ph.5
  %.019.i.5 = add nuw nsw i64 %.026.i, 7          ; 3 uses
  %.not.i.5 = icmp eq i64 %.019.i.5, 8
  br i1 %.not.i.5, label %.critedge.i, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.preheader.i.5
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i.5
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %.critedge.i, label %.critedge.thread.i, !llvm.loop !76

.lr.ph:                                           ; preds = %.preheader.i.preheader
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019.i73
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !76

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.5, %.lr.ph.6, %.preheader.i.preheader
  %i.y = sub nuw nsw i64 8, %.026.i               ; 2 uses
  %i.z = icmp ult i64 %.126, %i.y
  br i1 %i.z, label %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit, label %bb.c

.critedge.thread.i:                               ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.019.i75.lcssa = phi i64 [ %.019.i73, %.lr.ph ], [ %.019.i, %.lr.ph.1 ], [ %.019.i.1, %.lr.ph.2 ], [ %.019.i.2, %.lr.ph.3 ], [ %.019.i.3, %.lr.ph.4 ], [ %.019.i.4, %.lr.ph.5 ], [ %.019.i.5, %.lr.ph.6 ] ; 2 uses
  %i.aa = sub nuw nsw i64 %.019.i75.lcssa, %.026.i ; 2 uses
  %i.ab = icmp ult i64 %.126, %i.aa
  br i1 %i.ab, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %.critedge.thread.i
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %.critedge.thread.i, %.critedge.i, %bb.b
  %.231 = phi i64 [ %.130, %.critedge.i ], [ %.026.i, %.thread.i ], [ %.130, %.critedge.thread.i ], [ %.130, %bb.b ] ; 2 uses
  %.227 = phi i64 [ %.126, %.critedge.i ], [ %i.aa, %.thread.i ], [ %.126, %.critedge.thread.i ], [ %.126, %bb.b ] ; 2 uses
  %.3.i = phi i64 [ %.026.i, %.critedge.i ], [ %.019.i75.lcssa, %.thread.i ], [ %.026.i, %.critedge.thread.i ], [ %.026.i, %bb.b ]
  %i.ac = add i64 %.3.i, 1                        ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 8
  br i1 %i.ad, label %bb.b, label %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit, !llvm.loop !77

_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit: ; preds = %.critedge.i, %bb.c
  %.332 = phi i64 [ %.231, %bb.c ], [ %.026.i, %.critedge.i ] ; 3 uses
  %.328 = phi i64 [ %.227, %bb.c ], [ %i.y, %.critedge.i ]
  %.328.fr = freeze i64 %.328                     ; 2 uses
  %i.ae = icmp ugt i64 %.328.fr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = tail call noalias noundef nonnull dereferenceable(42) ptr @_Znwm(i64 noundef 42) #33 ; 28 uses
  store ptr %i.ag, ptr %0, align 8
  store i64 41, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ah, i8 0, i64 40, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 41, ptr %i.ai, align 8
  %.ptr38 = getelementptr inbounds nuw i8, ptr %i.ag, i64 41
  store i8 0, ptr %.ptr38, align 1
  store i8 91, ptr %i.ag, align 1
  br i1 %i.ae, label %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split.preheader, label %bb.d

_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split.preheader: ; preds = %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit
  %i.aj = icmp eq i64 %.332, 0
  %i.ak = add i64 %.332, %.328.fr                 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 8
  br label %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split

bb.d:                                             ; preds = %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit
  %.2.ptr.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 3 uses
  %i.am = load i16, ptr %1, align 2               ; 3 uses
  %i.an = zext i16 %i.am to i32                   ; 5 uses
  %i.ao = icmp eq i16 %i.am, 0
  br i1 %i.ao, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.an, i1 true)
  %i.aq = sub nuw nsw i32 35, %i.ap
  %i.ar = lshr i32 %i.aq, 2                       ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = icmp ugt i16 %i.am, 255
  br i1 %i.at, label %.lr.ph.preheader.i.i.us, label %._crit_edge.i.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.e
  %i.au = and i32 %i.an, 15
  %i.av = lshr i32 %i.an, 4
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr i8, ptr %.2.ptr.us, i64 %i.as
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 %i.ay, ptr %i.ba, align 1
  %i.bb = and i32 %i.av, 15
  %i.bc = lshr i32 %i.an, 8
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = add nsw i32 %i.ar, -2
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.ptr.us, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1
  br label %._crit_edge.i.i.us, !llvm.loop !78

._crit_edge.i.i.us:                               ; preds = %.lr.ph.preheader.i.i.us, %bb.e
  %.028.lcssa.i.i.us = phi i32 [ %i.an, %bb.e ], [ %i.bc, %.lr.ph.preheader.i.i.us ] ; 4 uses
  %i.bj = icmp samesign ugt i32 %.028.lcssa.i.i.us, 15
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.us
  %i.bk = and i32 %.028.lcssa.i.i.us, 15
  %i.bl = lshr i32 %.028.lcssa.i.i.us, 4
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.bo, ptr %i.bp, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.us
  %.pn.in.i.i.us = phi i32 [ %i.bl, %bb.f ], [ %.028.lcssa.i.i.us, %._crit_edge.i.i.us ]
  %.pn.i.i.us = zext nneg i32 %.pn.in.i.i.us to i64
  %storemerge.in.i.i.us = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us
  %storemerge.i.i.us = load i8, ptr %storemerge.in.i.i.us, align 1
  %i.bq = add nuw nsw i64 %i.as, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sink96.i.us = phi i8 [ %storemerge.i.i.us, %bb.g ], [ 48, %bb.d ]
  %.sink.i.us = phi i64 [ %i.bq, %bb.g ], [ 2, %bb.d ] ; 2 uses
  store i8 %.sink96.i.us, ptr %.2.ptr.us, align 1
  %.pn63.i.ptr.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink.i.us
  store i8 58, ptr %.pn63.i.ptr.us, align 1
  %.pn.add.us.1 = add nuw nsw i64 %.sink.i.us, 1  ; 2 uses
  %.2.ptr.us.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.1 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bs = load i16, ptr %i.br, align 2            ; 3 uses
  %i.bt = zext i16 %i.bs to i32                   ; 5 uses
  %i.bu = icmp eq i16 %i.bs, 0
  br i1 %i.bu, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bw = sub nuw nsw i32 35, %i.bv
  %i.bx = lshr i32 %i.bw, 2                       ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = icmp ugt i16 %i.bs, 255
  br i1 %i.bz, label %.lr.ph.preheader.i.i.us.1, label %._crit_edge.i.i.us.1

.lr.ph.preheader.i.i.us.1:                        ; preds = %bb.i
  %i.ca = and i32 %i.bt, 15
  %i.cb = lshr i32 %i.bt, 4
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr i8, ptr %.2.ptr.us.1, i64 %i.by
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1
  store i8 %i.ce, ptr %i.cg, align 1
  %i.ch = and i32 %i.cb, 15
  %i.ci = lshr i32 %i.bt, 8
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = add nsw i32 %i.bx, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.2.ptr.us.1, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1
  br label %._crit_edge.i.i.us.1, !llvm.loop !78

._crit_edge.i.i.us.1:                             ; preds = %.lr.ph.preheader.i.i.us.1, %bb.i
  %.028.lcssa.i.i.us.1 = phi i32 [ %i.bt, %bb.i ], [ %i.ci, %.lr.ph.preheader.i.i.us.1 ] ; 4 uses
  %i.cp = icmp samesign ugt i32 %.028.lcssa.i.i.us.1, 15
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.us.1
  %i.cq = and i32 %.028.lcssa.i.i.us.1, 15
  %i.cr = lshr i32 %.028.lcssa.i.i.us.1, 4
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.ptr.us.1, i64 1
  store i8 %i.cu, ptr %i.cv, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.us.1
  %.pn.in.i.i.us.1 = phi i32 [ %i.cr, %bb.j ], [ %.028.lcssa.i.i.us.1, %._crit_edge.i.i.us.1 ]
  %.pn.i.i.us.1 = zext nneg i32 %.pn.in.i.i.us.1 to i64
  %storemerge.in.i.i.us.1 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.1
  %storemerge.i.i.us.1 = load i8, ptr %storemerge.in.i.i.us.1, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sink96.i.us.1 = phi i8 [ %storemerge.i.i.us.1, %bb.k ], [ 48, %bb.h ]
  %.sink.i.us.1 = phi i64 [ %i.by, %bb.k ], [ 1, %bb.h ]
  store i8 %.sink96.i.us.1, ptr %.2.ptr.us.1, align 1
  %.2.add.us.1 = add nuw nsw i64 %.sink.i.us.1, %.pn.add.us.1 ; 2 uses
  %.pn63.i.ptr.us.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.1
  store i8 58, ptr %.pn63.i.ptr.us.1, align 1
  %.pn.add.us.2 = add nuw nsw i64 %.2.add.us.1, 1 ; 2 uses
  %.2.ptr.us.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.2 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cx = load i16, ptr %i.cw, align 2            ; 3 uses
  %i.cy = zext i16 %i.cx to i32                   ; 5 uses
  %i.cz = icmp eq i16 %i.cx, 0
  br i1 %i.cz, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.cy, i1 true)
  %i.db = sub nuw nsw i32 35, %i.da
  %i.dc = lshr i32 %i.db, 2                       ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = icmp ugt i16 %i.cx, 255
  br i1 %i.de, label %.lr.ph.preheader.i.i.us.2, label %._crit_edge.i.i.us.2

.lr.ph.preheader.i.i.us.2:                        ; preds = %bb.m
  %i.df = and i32 %i.cy, 15
  %i.dg = lshr i32 %i.cy, 4
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr i8, ptr %.2.ptr.us.2, i64 %i.dd
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  store i8 %i.dj, ptr %i.dl, align 1
  %i.dm = and i32 %i.dg, 15
  %i.dn = lshr i32 %i.cy, 8
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = add nsw i32 %i.dc, -2
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.2.ptr.us.2, i64 %i.ds
  store i8 %i.dq, ptr %i.dt, align 1
  br label %._crit_edge.i.i.us.2, !llvm.loop !78

._crit_edge.i.i.us.2:                             ; preds = %.lr.ph.preheader.i.i.us.2, %bb.m
  %.028.lcssa.i.i.us.2 = phi i32 [ %i.cy, %bb.m ], [ %i.dn, %.lr.ph.preheader.i.i.us.2 ] ; 4 uses
  %i.du = icmp samesign ugt i32 %.028.lcssa.i.i.us.2, 15
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.us.2
  %i.dv = and i32 %.028.lcssa.i.i.us.2, 15
  %i.dw = lshr i32 %.028.lcssa.i.i.us.2, 4
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.2.ptr.us.2, i64 1
  store i8 %i.dz, ptr %i.ea, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.us.2
  %.pn.in.i.i.us.2 = phi i32 [ %i.dw, %bb.n ], [ %.028.lcssa.i.i.us.2, %._crit_edge.i.i.us.2 ]
  %.pn.i.i.us.2 = zext nneg i32 %.pn.in.i.i.us.2 to i64
  %storemerge.in.i.i.us.2 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.2
  %storemerge.i.i.us.2 = load i8, ptr %storemerge.in.i.i.us.2, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sink96.i.us.2 = phi i8 [ %storemerge.i.i.us.2, %bb.o ], [ 48, %bb.l ]
  %.sink.i.us.2 = phi i64 [ %i.dd, %bb.o ], [ 1, %bb.l ]
  store i8 %.sink96.i.us.2, ptr %.2.ptr.us.2, align 1
  %.2.add.us.2 = add nuw nsw i64 %.sink.i.us.2, %.pn.add.us.2 ; 2 uses
  %.pn63.i.ptr.us.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.2
  store i8 58, ptr %.pn63.i.ptr.us.2, align 1
  %.pn.add.us.3 = add nuw nsw i64 %.2.add.us.2, 1 ; 2 uses
  %.2.ptr.us.3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.3 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 3 uses
  %i.ed = zext i16 %i.ec to i32                   ; 5 uses
  %i.ee = icmp eq i16 %i.ec, 0
  br i1 %i.ee, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.ed, i1 true)
  %i.eg = sub nuw nsw i32 35, %i.ef
  %i.eh = lshr i32 %i.eg, 2                       ; 2 uses
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = icmp ugt i16 %i.ec, 255
  br i1 %i.ej, label %.lr.ph.preheader.i.i.us.3, label %._crit_edge.i.i.us.3

.lr.ph.preheader.i.i.us.3:                        ; preds = %bb.q
  %i.ek = and i32 %i.ed, 15
  %i.el = lshr i32 %i.ed, 4
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %.2.ptr.us.3, i64 %i.ei
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1
  store i8 %i.eo, ptr %i.eq, align 1
  %i.er = and i32 %i.el, 15
  %i.es = lshr i32 %i.ed, 8
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = add nsw i32 %i.eh, -2
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.2.ptr.us.3, i64 %i.ex
  store i8 %i.ev, ptr %i.ey, align 1
  br label %._crit_edge.i.i.us.3, !llvm.loop !78

._crit_edge.i.i.us.3:                             ; preds = %.lr.ph.preheader.i.i.us.3, %bb.q
  %.028.lcssa.i.i.us.3 = phi i32 [ %i.ed, %bb.q ], [ %i.es, %.lr.ph.preheader.i.i.us.3 ] ; 4 uses
  %i.ez = icmp samesign ugt i32 %.028.lcssa.i.i.us.3, 15
  br i1 %i.ez, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.us.3
  %i.fa = and i32 %.028.lcssa.i.i.us.3, 15
  %i.fb = lshr i32 %.028.lcssa.i.i.us.3, 4
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.2.ptr.us.3, i64 1
  store i8 %i.fe, ptr %i.ff, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.us.3
  %.pn.in.i.i.us.3 = phi i32 [ %i.fb, %bb.r ], [ %.028.lcssa.i.i.us.3, %._crit_edge.i.i.us.3 ]
  %.pn.i.i.us.3 = zext nneg i32 %.pn.in.i.i.us.3 to i64
  %storemerge.in.i.i.us.3 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.3
  %storemerge.i.i.us.3 = load i8, ptr %storemerge.in.i.i.us.3, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.sink96.i.us.3 = phi i8 [ %storemerge.i.i.us.3, %bb.s ], [ 48, %bb.p ]
  %.sink.i.us.3 = phi i64 [ %i.ei, %bb.s ], [ 1, %bb.p ]
  store i8 %.sink96.i.us.3, ptr %.2.ptr.us.3, align 1
  %.2.add.us.3 = add nuw nsw i64 %.sink.i.us.3, %.pn.add.us.3 ; 2 uses
  %.pn63.i.ptr.us.3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.3
  store i8 58, ptr %.pn63.i.ptr.us.3, align 1
  %.pn.add.us.4 = add nuw nsw i64 %.2.add.us.3, 1 ; 2 uses
  %.2.ptr.us.4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.4 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fh = load i16, ptr %i.fg, align 2            ; 3 uses
  %i.fi = zext i16 %i.fh to i32                   ; 5 uses
  %i.fj = icmp eq i16 %i.fh, 0
  br i1 %i.fj, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fk = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.fi, i1 true)
  %i.fl = sub nuw nsw i32 35, %i.fk
  %i.fm = lshr i32 %i.fl, 2                       ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fo = icmp ugt i16 %i.fh, 255
  br i1 %i.fo, label %.lr.ph.preheader.i.i.us.4, label %._crit_edge.i.i.us.4

.lr.ph.preheader.i.i.us.4:                        ; preds = %bb.u
  %i.fp = and i32 %i.fi, 15
  %i.fq = lshr i32 %i.fi, 4
  %i.fr = zext nneg i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = getelementptr i8, ptr %.2.ptr.us.4, i64 %i.fn
  %i.fv = getelementptr i8, ptr %i.fu, i64 -1
  store i8 %i.ft, ptr %i.fv, align 1
  %i.fw = and i32 %i.fq, 15
  %i.fx = lshr i32 %i.fi, 8
  %i.fy = zext nneg i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = add nsw i32 %i.fm, -2
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.2.ptr.us.4, i64 %i.gc
  store i8 %i.ga, ptr %i.gd, align 1
  br label %._crit_edge.i.i.us.4, !llvm.loop !78

._crit_edge.i.i.us.4:                             ; preds = %.lr.ph.preheader.i.i.us.4, %bb.u
  %.028.lcssa.i.i.us.4 = phi i32 [ %i.fi, %bb.u ], [ %i.fx, %.lr.ph.preheader.i.i.us.4 ] ; 4 uses
  %i.ge = icmp samesign ugt i32 %.028.lcssa.i.i.us.4, 15
  br i1 %i.ge, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.us.4
  %i.gf = and i32 %.028.lcssa.i.i.us.4, 15
  %i.gg = lshr i32 %.028.lcssa.i.i.us.4, 4
  %i.gh = zext nneg i32 %i.gf to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.2.ptr.us.4, i64 1
  store i8 %i.gj, ptr %i.gk, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.us.4
  %.pn.in.i.i.us.4 = phi i32 [ %i.gg, %bb.v ], [ %.028.lcssa.i.i.us.4, %._crit_edge.i.i.us.4 ]
  %.pn.i.i.us.4 = zext nneg i32 %.pn.in.i.i.us.4 to i64
  %storemerge.in.i.i.us.4 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.4
  %storemerge.i.i.us.4 = load i8, ptr %storemerge.in.i.i.us.4, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.sink96.i.us.4 = phi i8 [ %storemerge.i.i.us.4, %bb.w ], [ 48, %bb.t ]
  %.sink.i.us.4 = phi i64 [ %i.fn, %bb.w ], [ 1, %bb.t ]
  store i8 %.sink96.i.us.4, ptr %.2.ptr.us.4, align 1
  %.2.add.us.4 = add nuw nsw i64 %.sink.i.us.4, %.pn.add.us.4 ; 2 uses
  %.pn63.i.ptr.us.4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.4
  store i8 58, ptr %.pn63.i.ptr.us.4, align 1
  %.pn.add.us.5 = add nuw nsw i64 %.2.add.us.4, 1 ; 2 uses
  %.2.ptr.us.5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.5 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.gm = load i16, ptr %i.gl, align 2            ; 3 uses
  %i.gn = zext i16 %i.gm to i32                   ; 5 uses
  %i.go = icmp eq i16 %i.gm, 0
  br i1 %i.go, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.gn, i1 true)
  %i.gq = sub nuw nsw i32 35, %i.gp
  %i.gr = lshr i32 %i.gq, 2                       ; 2 uses
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = icmp ugt i16 %i.gm, 255
  br i1 %i.gt, label %.lr.ph.preheader.i.i.us.5, label %._crit_edge.i.i.us.5

.lr.ph.preheader.i.i.us.5:                        ; preds = %bb.y
  %i.gu = and i32 %i.gn, 15
  %i.gv = lshr i32 %i.gn, 4
  %i.gw = zext nneg i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = getelementptr i8, ptr %.2.ptr.us.5, i64 %i.gs
  %i.ha = getelementptr i8, ptr %i.gz, i64 -1
  store i8 %i.gy, ptr %i.ha, align 1
  %i.hb = and i32 %i.gv, 15
  %i.hc = lshr i32 %i.gn, 8
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = add nsw i32 %i.gr, -2
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %.2.ptr.us.5, i64 %i.hh
  store i8 %i.hf, ptr %i.hi, align 1
  br label %._crit_edge.i.i.us.5, !llvm.loop !78

._crit_edge.i.i.us.5:                             ; preds = %.lr.ph.preheader.i.i.us.5, %bb.y
  %.028.lcssa.i.i.us.5 = phi i32 [ %i.gn, %bb.y ], [ %i.hc, %.lr.ph.preheader.i.i.us.5 ] ; 4 uses
  %i.hj = icmp samesign ugt i32 %.028.lcssa.i.i.us.5, 15
  br i1 %i.hj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.us.5
  %i.hk = and i32 %.028.lcssa.i.i.us.5, 15
  %i.hl = lshr i32 %.028.lcssa.i.i.us.5, 4
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.2.ptr.us.5, i64 1
  store i8 %i.ho, ptr %i.hp, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.us.5
  %.pn.in.i.i.us.5 = phi i32 [ %i.hl, %bb.z ], [ %.028.lcssa.i.i.us.5, %._crit_edge.i.i.us.5 ]
  %.pn.i.i.us.5 = zext nneg i32 %.pn.in.i.i.us.5 to i64
  %storemerge.in.i.i.us.5 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.5
  %storemerge.i.i.us.5 = load i8, ptr %storemerge.in.i.i.us.5, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.sink96.i.us.5 = phi i8 [ %storemerge.i.i.us.5, %bb.aa ], [ 48, %bb.x ]
  %.sink.i.us.5 = phi i64 [ %i.gs, %bb.aa ], [ 1, %bb.x ]
  store i8 %.sink96.i.us.5, ptr %.2.ptr.us.5, align 1
  %.2.add.us.5 = add nuw nsw i64 %.sink.i.us.5, %.pn.add.us.5 ; 2 uses
  %.pn63.i.ptr.us.5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.5
  store i8 58, ptr %.pn63.i.ptr.us.5, align 1
  %.pn.add.us.6 = add nuw nsw i64 %.2.add.us.5, 1 ; 2 uses
  %.2.ptr.us.6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.6 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hr = load i16, ptr %i.hq, align 2            ; 3 uses
  %i.hs = zext i16 %i.hr to i32                   ; 5 uses
  %i.ht = icmp eq i16 %i.hr, 0
  br i1 %i.ht, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hu = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.hs, i1 true)
  %i.hv = sub nuw nsw i32 35, %i.hu
  %i.hw = lshr i32 %i.hv, 2                       ; 2 uses
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = icmp ugt i16 %i.hr, 255
  br i1 %i.hy, label %.lr.ph.preheader.i.i.us.6, label %._crit_edge.i.i.us.6

.lr.ph.preheader.i.i.us.6:                        ; preds = %bb.ac
  %i.hz = and i32 %i.hs, 15
  %i.ia = lshr i32 %i.hs, 4
  %i.ib = zext nneg i32 %i.hz to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = getelementptr i8, ptr %.2.ptr.us.6, i64 %i.hx
  %i.if = getelementptr i8, ptr %i.ie, i64 -1
  store i8 %i.id, ptr %i.if, align 1
  %i.ig = and i32 %i.ia, 15
  %i.ih = lshr i32 %i.hs, 8
  %i.ii = zext nneg i32 %i.ig to i64
  %i.ij = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = add nsw i32 %i.hw, -2
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %.2.ptr.us.6, i64 %i.im
  store i8 %i.ik, ptr %i.in, align 1
  br label %._crit_edge.i.i.us.6, !llvm.loop !78

._crit_edge.i.i.us.6:                             ; preds = %.lr.ph.preheader.i.i.us.6, %bb.ac
  %.028.lcssa.i.i.us.6 = phi i32 [ %i.hs, %bb.ac ], [ %i.ih, %.lr.ph.preheader.i.i.us.6 ] ; 4 uses
  %i.io = icmp samesign ugt i32 %.028.lcssa.i.i.us.6, 15
  br i1 %i.io, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.us.6
  %i.ip = and i32 %.028.lcssa.i.i.us.6, 15
  %i.iq = lshr i32 %.028.lcssa.i.i.us.6, 4
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.2.ptr.us.6, i64 1
  store i8 %i.it, ptr %i.iu, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.us.6
  %.pn.in.i.i.us.6 = phi i32 [ %i.iq, %bb.ad ], [ %.028.lcssa.i.i.us.6, %._crit_edge.i.i.us.6 ]
  %.pn.i.i.us.6 = zext nneg i32 %.pn.in.i.i.us.6 to i64
  %storemerge.in.i.i.us.6 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.6
  %storemerge.i.i.us.6 = load i8, ptr %storemerge.in.i.i.us.6, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.sink96.i.us.6 = phi i8 [ %storemerge.i.i.us.6, %bb.ae ], [ 48, %bb.ab ]
  %.sink.i.us.6 = phi i64 [ %i.hx, %bb.ae ], [ 1, %bb.ab ]
  store i8 %.sink96.i.us.6, ptr %.2.ptr.us.6, align 1
  %.2.add.us.6 = add nuw nsw i64 %.sink.i.us.6, %.pn.add.us.6 ; 2 uses
  %.pn63.i.ptr.us.6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.add.us.6
  store i8 58, ptr %.pn63.i.ptr.us.6, align 1
  %.pn.add.us.7 = add nuw nsw i64 %.2.add.us.6, 1 ; 2 uses
  %.2.ptr.us.7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add.us.7 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.iw = load i16, ptr %i.iv, align 2            ; 3 uses
  %i.ix = zext i16 %i.iw to i32                   ; 5 uses
  %i.iy = icmp eq i16 %i.iw, 0
  br i1 %i.iy, label %.split.loop.exit.loopexit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iz = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.ix, i1 true)
  %i.ja = sub nuw nsw i32 35, %i.iz
  %i.jb = lshr i32 %i.ja, 2                       ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = icmp ugt i16 %i.iw, 255
  br i1 %i.jd, label %.lr.ph.preheader.i.i.us.7, label %._crit_edge.i.i.us.7

.lr.ph.preheader.i.i.us.7:                        ; preds = %bb.ag
  %i.je = and i32 %i.ix, 15
  %i.jf = lshr i32 %i.ix, 4
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = getelementptr i8, ptr %.2.ptr.us.7, i64 %i.jc
  %i.jk = getelementptr i8, ptr %i.jj, i64 -1
  store i8 %i.ji, ptr %i.jk, align 1
  %i.jl = and i32 %i.jf, 15
  %i.jm = lshr i32 %i.ix, 8
  %i.jn = zext nneg i32 %i.jl to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = add nsw i32 %i.jb, -2
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.2.ptr.us.7, i64 %i.jr
  store i8 %i.jp, ptr %i.js, align 1
  br label %._crit_edge.i.i.us.7, !llvm.loop !78

._crit_edge.i.i.us.7:                             ; preds = %.lr.ph.preheader.i.i.us.7, %bb.ag
  %.028.lcssa.i.i.us.7 = phi i32 [ %i.ix, %bb.ag ], [ %i.jm, %.lr.ph.preheader.i.i.us.7 ] ; 4 uses
  %i.jt = icmp samesign ugt i32 %.028.lcssa.i.i.us.7, 15
  br i1 %i.jt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i.us.7
  %i.ju = and i32 %.028.lcssa.i.i.us.7, 15
  %i.jv = lshr i32 %.028.lcssa.i.i.us.7, 4
  %i.jw = zext nneg i32 %i.ju to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.2.ptr.us.7, i64 1
  store i8 %i.jy, ptr %i.jz, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.us.7
  %.pn.in.i.i.us.7 = phi i32 [ %i.jv, %bb.ah ], [ %.028.lcssa.i.i.us.7, %._crit_edge.i.i.us.7 ]
  %.pn.i.i.us.7 = zext nneg i32 %.pn.in.i.i.us.7 to i64
  %storemerge.in.i.i.us.7 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i.us.7
  %storemerge.i.i.us.7 = load i8, ptr %storemerge.in.i.i.us.7, align 1
  br label %.split.loop.exit.loopexit42

_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split: ; preds = %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split.preheader, %bb.as
  %.pn.idx = phi i64 [ %.pn63.i.idx, %bb.as ], [ 0, %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split.preheader ] ; 3 uses
  %.0 = phi i64 [ %i.li, %bb.as ], [ 0, %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split.preheader ] ; 2 uses
  %.pn.add = add nuw nsw i64 %.pn.idx, 1          ; 2 uses
  %i.ka = icmp eq i64 %.332, %.0
  br i1 %i.ka, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split
  %.017.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add
  %.pn.add34 = add nuw nsw i64 %.pn.idx, 2        ; 2 uses
  store i8 58, ptr %.017.ptr, align 1
  br i1 %i.aj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn.add34
  %.pn.add35 = add nuw nsw i64 %.pn.idx, 3
  store i8 58, ptr %.ptr, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.118.idx = phi i64 [ %.pn.add35, %bb.ak ], [ %.pn.add34, %bb.aj ] ; 2 uses
  br i1 %i.al, label %.split.loop.exit40, label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split
  %.2.idx = phi i64 [ %.118.idx, %bb.al ], [ %.pn.add, %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split ] ; 4 uses
  %.1 = phi i64 [ %i.ak, %bb.al ], [ %.0, %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split ] ; 2 uses
  %.2.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.2.idx ; 4 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.1
  %i.kc = load i16, ptr %i.kb, align 2            ; 3 uses
  %i.kd = zext i16 %i.kc to i32                   ; 5 uses
  %i.ke = icmp eq i64 %.2.idx, 41
  br i1 %i.ke, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.an, !prof !18

bb.an:                                            ; preds = %bb.am
  %i.kf = icmp eq i16 %i.kc, 0
  br i1 %i.kf, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kg = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.kd, i1 true)
  %i.kh = sub nuw nsw i32 35, %i.kg
  %i.ki = lshr i32 %i.kh, 2                       ; 2 uses
  %gepdiff = sub nsw i64 41, %.2.idx
  %i.kj = zext nneg i32 %i.ki to i64              ; 3 uses
  %i.kk = icmp slt i64 %gepdiff, %i.kj
  br i1 %i.kk, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.ap, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.kl = icmp ugt i16 %i.kc, 255
  br i1 %i.kl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %i.km = and i32 %i.kd, 15
  %i.kn = lshr i32 %i.kd, 4
  %i.ko = zext nneg i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr i8, ptr %.2.ptr, i64 %i.kj
  %i.ks = getelementptr i8, ptr %i.kr, i64 -1
  store i8 %i.kq, ptr %i.ks, align 1
  %i.kt = and i32 %i.kn, 15
  %i.ku = lshr i32 %i.kd, 8
  %i.kv = zext nneg i32 %i.kt to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = add nsw i32 %i.ki, -2
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %.2.ptr, i64 %i.kz
  store i8 %i.kx, ptr %i.la, align 1
  br label %._crit_edge.i.i, !llvm.loop !78

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.ap
  %.028.lcssa.i.i = phi i32 [ %i.kd, %bb.ap ], [ %i.ku, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.lb = icmp samesign ugt i32 %.028.lcssa.i.i, 15
  br i1 %i.lb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.lc = and i32 %.028.lcssa.i.i, 15
  %i.ld = lshr i32 %.028.lcssa.i.i, 4
  %i.le = zext nneg i32 %i.lc to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %.2.ptr, i64 1
  store i8 %i.lg, ptr %i.lh, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i
  %.pn.in.i.i = phi i32 [ %i.ld, %bb.aq ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.ar, %bb.an
  %.sink96.i = phi i8 [ %storemerge.i.i, %bb.ar ], [ 48, %bb.an ]
  %.sink.i = phi i64 [ %i.kj, %bb.ar ], [ 1, %bb.an ]
  store i8 %.sink96.i, ptr %.2.ptr, align 1
  %.2.add = add nuw nsw i64 %.sink.i, %.2.idx
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %bb.am, %bb.ao, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %.pn63.i.idx = phi i64 [ 41, %bb.am ], [ 41, %bb.ao ], [ %.2.add, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %.pn63.i.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pn63.i.idx ; 2 uses
  %i.li = add i64 %.1, 1                          ; 2 uses
  %i.lj = icmp eq i64 %i.li, 8
  br i1 %i.lj, label %.split.loop.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit
  store i8 58, ptr %.pn63.i.ptr, align 1
  br label %_ZN3ada11serializers36find_longest_sequence_of_ipv6_piecesERKSt5arrayItLm8EERmS5_.exit.split, !llvm.loop !79

.split.loop.exit40:                               ; preds = %bb.al
  %.118.ptr.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.118.idx
  br label %.split.loop.exit

.split.loop.exit.loopexit42:                      ; preds = %bb.ai, %bb.af
  %.sink96.i.us.7 = phi i8 [ %storemerge.i.i.us.7, %bb.ai ], [ 48, %bb.af ]
  %.sink.i.us.7 = phi i64 [ %i.jc, %bb.ai ], [ 1, %bb.af ]
  store i8 %.sink96.i.us.7, ptr %.2.ptr.us.7, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink.i.us.7
  %.pn63.i.ptr.us.7 = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.pn.add.us.7
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, %.split.loop.exit.loopexit42, %.split.loop.exit40
  %.3 = phi ptr [ %.118.ptr.le, %.split.loop.exit40 ], [ %.pn63.i.ptr.us.7, %.split.loop.exit.loopexit42 ], [ %.pn63.i.ptr, %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 93, ptr %.3, align 1
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.ag to i64
  %i.lo = sub i64 %i.lm, %i.ln                    ; 6 uses
  %i.lp = icmp ugt i64 %i.lo, 41
  br i1 %i.lp, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %.split.loop.exit
  %i.lq = add i64 %i.lo, -41                      ; 3 uses
  %i.lr = icmp slt i64 %i.lo, 41
  br i1 %i.lr, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.at
  %i.ls = icmp ne ptr %i.ag, %i.af
  tail call void @llvm.assume(i1 %i.ls)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 41, i64 noundef 0, ptr noundef null, i64 noundef %i.lq)
  %.pre.i.i = load ptr, ptr %0, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 41 ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.lq, 1
  br i1 %cond.i.i.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  store i8 0, ptr %i.lt, align 1
  br label %.sink.split.i.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lt, i8 0, i64 %i.lq, i1 false)
  br label %.sink.split.i.i

bb.ax:                                            ; preds = %.split.loop.exit
  %.not = icmp eq i64 %i.lo, 41
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av
  store i64 %i.lo, ptr %i.ai, align 8
  %i.lu = load ptr, ptr %0, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lo
  store i8 0, ptr %i.lv, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.ax, %.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1
  br label %.sink.split.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.f
  store i64 %1, ptr %i.a, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.h, %.sink.split.i
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.ts:                                            ; preds = %bb.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cpf = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.cpg = trunc nuw i8 %i.cpf to i1
  %i.cph = load i64, ptr %i.gd, align 8
  %i.cpi = icmp eq i64 %i.cph, 9
  %or.cond3255 = select i1 %i.cpg, i1 %i.cpi, i1 false
  br i1 %or.cond3255, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ts
  %i.cpj = load ptr, ptr %i.ft, align 8           ; 2 uses
  %i.cpk = load i64, ptr %i.cpj, align 1
  %i.cpl = xor i64 %i.cpk, 8317981851476258668
  %i.cpm = getelementptr i8, ptr %i.cpj, i64 8
  %i.cpn = load i8, ptr %i.cpm, align 1
  %i.cpo = zext i8 %i.cpn to i64
  %i.cpp = xor i64 %i.cpo, 116
  %i.cpq = or i64 %i.cpl, %i.cpp
  %i.cpr = icmp ne i64 %i.cpq, 0
  %i.cps = zext i1 %i.cpr to i32
  %i.cpt = icmp eq i32 %i.cps, 0
  br i1 %i.cpt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cpu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326.jt17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191.lr.ph, %.critedge342.jt8
  %.15283.jt83485 = phi i64 [ %.15283.jt8.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191.lr.ph ], [ %i.crv, %.critedge342.jt8 ] ; 16 uses
  %i.cpv = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.15283.jt83485 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cpw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.15283.jt83485, %.sroa.01320.1 ; 2 uses
  br i1 %.not306, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  %i.cpx = load i8, ptr %i.cpv, align 1
  switch i8 %i.cpx, label %bb.tu [
    i8 47, label %.critedge326.jt10
    i8 92, label %.critedge326.jt10
  ]

bb.tu:                                            ; preds = %bb.tt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  br i1 %i.x, label %bb.tv, label %.critedge326.jt16

bb.tv:                                            ; preds = %bb.tu
  %i.cpy = load i8, ptr %i.fu, align 1
  %i.cpz = icmp eq i8 %i.cpy, 6
  br i1 %i.cpz, label %bb.tw, label %.critedge326.jt16

bb.tw:                                            ; preds = %bb.tv
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cqa = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cqa, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342.jt8, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.cqb = sub nuw i64 %.sroa.01320.1, %.15283.jt83485 ; 2 uses
  %i.cqc = load i8, ptr %i.cpv, align 1
  %i.cqd = icmp eq i8 %i.cqc, 63
  br i1 %i.cqd, label %.critedge326.jt15, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.cqe = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqf = trunc nuw i8 %i.cqe to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqf, label %bb.tz, label %_ZN3ada3url12clear_searchEv.exit1194

bb.tz:                                            ; preds = %bb.ty
  %i.cqg = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqh = icmp eq ptr %i.cqg, %i.ga
  br i1 %i.cqh, label %_ZN3ada3url12clear_searchEv.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192: ; preds = %bb.tz
  %i.cqi = load i64, ptr %i.ga, align 8
  %i.cqj = add i64 %i.cqi, 1
  call void @_ZdlPvm(ptr noundef %i.cqg, i64 noundef %i.cqj) #34
  br label %_ZN3ada3url12clear_searchEv.exit1194

_ZN3ada3url12clear_searchEv.exit1194:             ; preds = %bb.tz, %bb.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192
  %i.cqk = icmp ugt i64 %i.cqb, 1
  br i1 %i.cqk, label %bb.ua, label %bb.ue

bb.ua:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1194
  %i.cql = load i8, ptr %i.cpv, align 1
  %i.cqm = or i8 %i.cql, 32
  %i.cqn = add i8 %i.cqm, -97
  %spec.select.i.i1195 = icmp ult i8 %i.cqn, 26
  br i1 %spec.select.i.i1195, label %bb.ub, label %bb.ue

bb.ub:                                            ; preds = %bb.ua
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cpv, i64 1
  %i.cqp = load i8, ptr %i.cqo, align 1
  switch i8 %i.cqp, label %bb.ue [
    i8 58, label %bb.uc
    i8 124, label %bb.uc
  ]

bb.uc:                                            ; preds = %bb.ub, %bb.ub
  %i.cqq = icmp eq i64 %i.cqb, 2
  br i1 %i.cqq, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cpv, i64 2
  %i.cqs = load i8, ptr %i.cqr, align 1
  switch i8 %i.cqs, label %bb.ue [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
  ]

bb.ue:                                            ; preds = %bb.ud, %bb.ub, %bb.ua, %_ZN3ada3url12clear_searchEv.exit1194
  %i.cqt = load i8, ptr %i.f, align 1
  %i.cqu = icmp eq i8 %i.cqt, 6
  %.pre2603 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqu, label %bb.uf, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread

bb.uf:                                            ; preds = %bb.ue
  %i.cqv = icmp ugt i64 %.pre2603, 1
  br i1 %i.cqv, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, label %bb.ug

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198:   ; preds = %bb.uf
  %i.cqw = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqx = add i64 %.pre2603, -1
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqw, i64 1
  %i.cqz = call ptr @memchr(ptr noundef nonnull %i.cqy, i32 noundef 47, i64 noundef %i.cqx) #31 ; 2 uses
  %.not.i1199 = icmp eq ptr %i.cqz, null
  %i.cra = ptrtoint ptr %i.cqz to i64
  %i.crb = ptrtoint ptr %i.cqw to i64
  %i.crc = sub i64 %i.cra, %i.crb
  %i.crd = icmp eq i64 %i.crc, -1
  %or.cond1888 = or i1 %.not.i1199, %i.crd
  %i.cre = add i64 %.pre2603, -3
  %i.crf = icmp ult i64 %i.cre, -2
  %or.cond3257 = select i1 %or.cond1888, i1 %i.crf, i1 false
  br i1 %or.cond3257, label %bb.uh, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.ug:                                            ; preds = %bb.uf
  %i.crg = icmp eq i64 %.pre2603, 0
  br i1 %i.crg, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.uh:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqw, i64 1
  %i.cri = load i8, ptr %i.crh, align 1
  %i.crj = or i8 %i.cri, 32
  %i.crk = add i8 %i.crj, -97
  %spec.select.i.i1208 = icmp ult i8 %i.crk, 26
  br i1 %spec.select.i.i1208, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209: ; preds = %bb.uh
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cqw, i64 2
  %i.crm = load i8, ptr %i.crl, align 1
  %i.crn = icmp eq i8 %i.crm, 58
  br i1 %i.crn, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread: ; preds = %bb.ue
  %.not.i1210 = icmp eq i64 %.pre2603, 0
  br i1 %.not.i1210, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread: ; preds = %bb.ug, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.uh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread
  %i.cro = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12133488 = icmp eq i64 %.pre2603, 0
  br i1 %.not13.i12133488, label %.critedge326.jt16, label %.lr.ph3490

bb.ui:                                            ; preds = %.lr.ph3490
  %.not13.i1213 = icmp eq i64 %i.crp, 0
  br i1 %.not13.i1213, label %.critedge326.jt16, label %.lr.ph3490, !llvm.loop !97

.lr.ph3490:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %bb.ui
  %.1.i12123489 = phi i64 [ %i.crp, %bb.ui ], [ %.pre2603, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ]
  %i.crp = add i64 %.1.i12123489, -1              ; 5 uses
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cro, i64 %i.crp
  %i.crr = load i8, ptr %i.crq, align 1
  %i.crs = icmp eq i8 %i.crr, 47
  br i1 %i.crs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217, label %bb.ui, !llvm.loop !97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217: ; preds = %.lr.ph3490
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cro, i64 %i.crp
  store i64 %i.crp, ptr %i.q, align 8
  store i8 0, ptr %i.crt, align 1
  br label %.critedge326.jt16

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196: ; preds = %bb.ud, %bb.ud, %bb.ud, %bb.ud, %bb.uc
  store i64 0, ptr %i.q, align 8
  %i.cru = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.cru, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326.jt16

.critedge342.jt8:                                 ; preds = %bb.tw
  %i.crv = add i64 %.15283.jt83485, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.crv, %.sroa.01320.1
  br i1 %.not.jt8, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191, !llvm.loop !94

bb.uj:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread, %bb.nf, %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863
  %.sroa.01476.2 = phi i16 [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01476.023822855, %bb.nf ], [ %.sroa.01476.023822855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.023822855, %.sink.split.i.i ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.sroa.01476.023822855, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.15283 = phi i64 [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.92772904, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.11279291429222932, %bb.nf ], [ %.11279291429222932, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279291429222932, %.sink.split.i.i ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.11279291429222932, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.92772897, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ] ; 2 uses
  %.18 = phi i32 [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.82905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.12291529212937, %bb.nf ], [ %.12291529212937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12291529212937, %.sink.split.i.i ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.12291529212937, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.82898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.not = icmp ugt i64 %.15283, %.sroa.01320.1
  br i1 %.not, label %.loopexit3038, label %bb.ah, !llvm.loop !94

.critedge326.jt19:                                ; preds = %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread1720, %bb.fi
  %i.crw = add i64 %i.abn, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.crw, %.sroa.01320.1
  br i1 %.not.jt19, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867, !llvm.loop !94

.critedge326.jt10:                                ; preds = %bb.tt, %bb.tt
  %i.crx = add i64 %.15283.jt83485, 1             ; 14 uses
  %.not.jt10 = icmp ugt i64 %i.crx, %.sroa.01320.1
  br i1 %.not.jt10, label %.loopexit3038, label %bb.qf, !llvm.loop !94

.critedge326.jt9:                                 ; preds = %bb.qg, %bb.qg
  %i.cry = add i64 %.15283.jt83485, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cry, %.sroa.01320.1
  br i1 %.not.jt9, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085, !llvm.loop !94

.critedge326.jt12:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.eb
  %.15283.jt12 = phi i64 [ %i.ua, %bb.eb ], [ %i.ru, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15283.jt12, %.sroa.01320.1
  br i1 %.not.jt12, label %.loopexit3038, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread, !llvm.loop !94

.critedge326.jt7:                                 ; preds = %bb.dn, %bb.dm
  %i.crz = add i64 %.15283.jt63471, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.crz, %.sroa.01320.1
  br i1 %.not.jt7, label %.loopexit3038, label %bb.dv, !llvm.loop !94

.critedge326.jt15:                                ; preds = %bb.tx, %bb.me, %bb.do
  %.026823842840.lcssa.sink = phi i64 [ %.10278, %bb.me ], [ %.15283.jt63471, %bb.do ], [ %.15283.jt83485, %bb.tx ]
  %i.csa = add i64 %.026823842840.lcssa.sink, 1   ; 2 uses
  %.not.jt15 = icmp ugt i64 %i.csa, %.sroa.01320.1
  br i1 %.not.jt15, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit644, !llvm.loop !94

.critedge326.jt3:                                 ; preds = %.thread1628, %bb.bi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558
  %.15283.jt3 = phi i64 [ %.15283.jt0, %bb.bi ], [ %.32712375, %.thread1628 ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15283.jt3, %.sroa.01320.1
  br i1 %.not.jt3, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit648, !llvm.loop !94

.critedge326.jt0:                                 ; preds = %.lr.ph2363, %bb.ea, %bb.dk
  %.15283.jt0 = phi i64 [ %i.tz, %bb.ea ], [ %spec.select351, %bb.dk ], [ %.62742362, %.lr.ph2363 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15283.jt0, %.sroa.01320.1
  br i1 %.not.jt0, label %.loopexit3038, label %bb.bi, !llvm.loop !94

.critedge326.jt11:                                ; preds = %bb.ba
  %i.csb = add i64 %.12692380, 2                  ; 4 uses
  %.not.jt11 = icmp ugt i64 %i.csb, %.sroa.01320.1
  br i1 %.not.jt11, label %.loopexit3038, label %bb.dj, !llvm.loop !94

.critedge326.jt13:                                ; preds = %bb.ay, %bb.ax
  %i.csc = add i64 %.12692380, 1                  ; 5 uses
  %.not.jt13 = icmp ugt i64 %i.csc, %.sroa.01320.1
  br i1 %.not.jt13, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit636, !llvm.loop !94

.critedge326.jt14:                                ; preds = %bb.ax
  %i.csd = add i64 %.12692380, 1                  ; 5 uses
  %.not.jt14 = icmp ugt i64 %i.csd, %.sroa.01320.1
  br i1 %.not.jt14, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619, !llvm.loop !94

.critedge326.jt18:                                ; preds = %bb.ba, %bb.az
  %i.cse = add i64 %.12692380, 1                  ; 2 uses
  %.not.jt18 = icmp ugt i64 %i.cse, %.sroa.01320.1
  br i1 %.not.jt18, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit823, !llvm.loop !94

.critedge326.jt16:                                ; preds = %bb.du, %bb.tv, %bb.tu, %bb.ui, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %bb.ug, %bb.ds, %bb.dk, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.qm, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, %bb.qh, %bb.qi, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread, %bb.qj, %bb.me, %bb.mc, %.critedge338.jt16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qw, %bb.qw, %bb.qw, %bb.qw, %bb.dz, %bb.qv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217
  %.sroa.01476.2.jt16 = phi i16 [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.ui ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.qm ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %.sroa.01476.02382, %bb.dk ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qv ], [ %.sroa.01476.02382, %bb.dz ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01476.02382, %bb.ds ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.sroa.01476.1, %bb.mc ], [ %.sroa.01476.1, %bb.me ], [ %.sroa.01476.02382, %bb.ug ], [ %.sroa.01476.02382, %bb.qj ], [ %.sroa.01476.1, %.critedge338.jt16 ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %.sroa.01476.02382, %bb.qi ], [ %.sroa.01476.02382, %bb.qh ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01476.02382, %bb.tv ], [ %.sroa.01476.02382, %bb.tu ], [ %.sroa.01476.02382, %bb.du ]
  %.15283.jt16 = phi i64 [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.15283.jt83485, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qw ], [ %.15283.jt83485, %bb.ui ], [ %i.cry, %bb.qw ], [ %i.crx, %bb.qm ], [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283.jt83485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %spec.select351, %bb.dk ], [ %i.crx, %bb.qn ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qv ], [ %i.crz, %bb.dz ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qw ], [ %i.cry, %bb.qw ], [ %.15283.jt63471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.15283.jt63471, %bb.ds ], [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.10278, %bb.mc ], [ %.10278, %bb.me ], [ %.15283.jt83485, %bb.ug ], [ %i.crx, %bb.qj ], [ %i.bgu, %.critedge338.jt16 ], [ %i.crx, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %i.crx, %bb.qi ], [ %i.crx, %bb.qh ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.15283.jt83485, %bb.tv ], [ %.15283.jt83485, %bb.tu ], [ %.15283.jt63471, %bb.du ] ; 2 uses
  %.not.jt16 = icmp ugt i64 %.15283.jt16, %.sroa.01320.1
  br i1 %.not.jt16, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875, !llvm.loop !94

.critedge326.jt17:                                ; preds = %bb.ts, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.ii, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.if, %.critedge338.jt17, %bb.qy
  %.sroa.01476.2.jt17 = phi i16 [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %.sroa.01476.02382, %bb.ts ], [ %.sroa.01476.02382, %bb.qy ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01476.1, %.critedge338.jt17 ], [ %.sroa.01476.02382, %bb.if ], [ %.sroa.01476.02382, %bb.ii ]
  %.15283.jt17 = phi i64 [ %i.aoz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %i.ccb, %bb.ts ], [ %i.cry, %bb.qy ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.ccb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ccb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %i.bgt, %.critedge338.jt17 ], [ %i.aoz, %bb.if ], [ %i.aoz, %bb.ii ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15283.jt17, %.sroa.01320.1
  br i1 %.not.jt17, label %.loopexit3038, label %bb.ly, !llvm.loop !94

.critedge326.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3038, label %.preheader1962, !llvm.loop !94

.critedge326.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3038, label %.critedge326.jt4.thread, !llvm.loop !94

.loopexit3038:                                    ; preds = %.critedge326.jt8.preheader, %.critedge326.jt6.preheader, %.critedge326.jt19, %.critedge326.jt10, %.critedge326.jt9, %.critedge326.jt12, %.critedge326.jt7, %.critedge326.jt3, %.critedge326.jt0, %.critedge326.jt11, %.critedge326.jt13, %.critedge326.jt14, %.critedge326.jt18, %.critedge326.jt16, %.critedge326.jt17, %.critedge326.jt2, %.critedge326.jt4, %.critedge326, %.critedge332.jt6, %.critedge342.jt8, %.critedge326.jt15
  br i1 %.sroa.14.0, label %bb.uk, label %.critedge346.critedge

bb.uk:                                            ; preds = %.loopexit3038
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01314.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.csg = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.csf, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.csh = load ptr, ptr %4, align 8              ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.csj = icmp eq ptr %i.csh, %i.csi
  br i1 %i.csj, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218: ; preds = %bb.uk
  %i.csk = load i64, ptr %i.csi, align 8
  %i.csl = add i64 %i.csk, 1
  call void @_ZdlPvm(ptr noundef %i.csh, i64 noundef %i.csl) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221: ; preds = %bb.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.lx, %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.fi, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.ln, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1752, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.ie, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846, %.thread1636
  %i.csm = load ptr, ptr %27, align 8             ; 2 uses
  %i.csn = icmp eq ptr %i.csm, %i.ad
  br i1 %i.csn, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, %bb.mb, %bb.ec, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit644, %.loopexit3038, %bb.bg, %bb.be, %bb.ma
  %i.cso = load ptr, ptr %27, align 8             ; 2 uses
  %i.csp = icmp eq ptr %i.cso, %i.ad
  br i1 %i.csp, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3501 = phi ptr [ %i.csm, %.critedge329 ], [ %i.cso, %.critedge346.critedge ]
  %i.csq = load i64, ptr %i.ad, align 8
  %i.csr = add i64 %i.csq, 1
  call void @_ZdlPvm(ptr noundef %.sink3501, i64 noundef %i.csr) #34
  br label %.critedge346.sink.split

.critedge346.sink.split:                          ; preds = %.critedge346.sink.split.sink.split, %.critedge346.critedge, %.critedge329
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.critedge346

.critedge346:                                     ; preds = %.critedge346.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada3urlE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8
  br i1 %i.r, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
end_hunk_1
begin_hunk_2_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.sroa.speculated.i.i1092 = call i64 @llvm.umin.i64(i64 %i.byi, i64 %i.byg)
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byh, i64 %i.bya
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1092, ptr %i.byj)
  %i.byk = load i32, ptr %i.fy, align 8           ; 3 uses
  %i.byl = icmp eq i32 %i.byk, -1
  br i1 %i.byl, label %_ZNK3ada14url_aggregator10get_searchEv.exit1104, label %bb.pf

bb.pf:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095
  %i.bym = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.byn = trunc i64 %i.bym to i32
  %i.byo = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not.i1096 = icmp eq i32 %i.byo, -1
  %spec.select.i1097 = select i1 %.not.i1096, i32 %i.byn, i32 %i.byo ; 2 uses
  %i.byp = sub i32 %spec.select.i1097, %i.byk
  %i.byq = icmp ult i32 %i.byp, 2
  br i1 %i.byq, label %_ZNK3ada14url_aggregator10get_searchEv.exit1104, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.byr = zext i32 %i.byk to i64                 ; 5 uses
  %i.bys = icmp ult i64 %i.bym, %i.byr
  br i1 %i.bys, label %bb.ph, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098

bb.ph:                                            ; preds = %bb.pg
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.byr, i64 noundef %i.bym) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098: ; preds = %bb.pg
  %i.byt = zext i32 %spec.select.i1097 to i64
  %i.byu = sub nsw i64 %i.byt, %i.byr
  %i.byv = load ptr, ptr %i.fv, align 8
  %i.byw = sub nuw i64 %i.bym, %i.byr
  %.sroa.speculated.i.i1099 = call i64 @llvm.umin.i64(i64 %i.byw, i64 %i.byu)
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byv, i64 %i.byr
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1104

_ZNK3ada14url_aggregator10get_searchEv.exit1104:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095, %bb.pf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098
  %.sroa.4.0.i1100 = phi ptr [ %i.byx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095 ], [ @.str.48, %bb.pf ]
  %.sroa.0.0.i1101 = phi i64 [ %.sroa.speculated.i.i1099, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095 ], [ 0, %bb.pf ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1101, ptr %.sroa.4.0.i1100)
  %i.byy = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.byy, ptr %i.d, align 1
  br i1 %.not349, label %.critedge385.jt8, label %bb.pi

bb.pi:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1104
  %i.byz = sub nuw i64 %.sroa.01255.1, %.15326.jt83050 ; 2 uses
  %i.bza = load i8, ptr %i.bxe, align 1
  %i.bzb = icmp eq i8 %i.bza, 63
  br i1 %i.bzb, label %.critedge385.jt15, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bzc = icmp ugt i64 %i.byz, 1
  br i1 %i.bzc, label %bb.pk, label %bb.po

bb.pk:                                            ; preds = %bb.pj
  %i.bzd = load i8, ptr %i.bxe, align 1
  %i.bze = or i8 %i.bzd, 32
  %i.bzf = add i8 %i.bze, -97
  %spec.select.i.i1105 = icmp ult i8 %i.bzf, 26
  br i1 %spec.select.i.i1105, label %bb.pl, label %bb.po

bb.pl:                                            ; preds = %bb.pk
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bxe, i64 1
  %i.bzh = load i8, ptr %i.bzg, align 1
  switch i8 %i.bzh, label %bb.po [
    i8 58, label %bb.pm
    i8 124, label %bb.pm
  ]

bb.pm:                                            ; preds = %bb.pl, %bb.pl
  %i.bzi = icmp eq i64 %i.byz, 2
  br i1 %i.bzi, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bxe, i64 2
  %i.bzk = load i8, ptr %i.bzj, align 1
  switch i8 %i.bzk, label %bb.po [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
  ]

bb.po:                                            ; preds = %bb.pn, %bb.pl, %bb.pk, %bb.pj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.bzl = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bzm = extractvalue { i64, ptr } %i.bzl, 0    ; 6 uses
  %i.bzn = extractvalue { i64, ptr } %i.bzl, 1    ; 5 uses
  store ptr %i.bzn, ptr %i.gb, align 8
  %i.bzo = load i8, ptr %i.f, align 1
  %i.bzp = icmp eq i8 %i.bzo, 6
  br i1 %i.bzp, label %bb.pp, label %bb.ps

bb.pp:                                            ; preds = %bb.po
  %i.bzq = icmp ugt i64 %i.bzm, 1
  br i1 %i.bzq, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108, label %bb.pq

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108:   ; preds = %bb.pp
  %i.bzr = add i64 %i.bzm, -1
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzn, i64 1 ; 2 uses
  %i.bzt = call ptr @memchr(ptr noundef nonnull %i.bzs, i32 noundef 47, i64 noundef %i.bzr) #31 ; 2 uses
  %.not.i1109 = icmp eq ptr %i.bzt, null
  %i.bzu = ptrtoint ptr %i.bzt to i64
  %i.bzv = ptrtoint ptr %i.bzn to i64
  %i.bzw = sub i64 %i.bzu, %i.bzv
  %i.bzx = icmp eq i64 %i.bzw, -1
  %or.cond1746 = select i1 %.not.i1109, i1 true, i1 %i.bzx
  %i.bzy = icmp ne i64 %i.bzm, 2
  %or.cond1784 = select i1 %or.cond1746, i1 %i.bzy, i1 false
  br i1 %or.cond1784, label %bb.pr, label %.lr.ph3055.preheader

bb.pq:                                            ; preds = %bb.pp
  %cond3065 = icmp eq i64 %i.bzm, 0
  br i1 %cond3065, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

bb.pr:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108
  %i.bzz = load i8, ptr %i.bzs, align 1
  %i.caa = or i8 %i.bzz, 32
  %i.cab = add i8 %i.caa, -97
  %spec.select.i.i1116 = icmp ult i8 %i.cab, 26
  br i1 %spec.select.i.i1116, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117, label %.lr.ph3055.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117: ; preds = %bb.pr
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzn, i64 2
  %i.cad = load i8, ptr %i.cac, align 1
  %i.cae = icmp eq i8 %i.cad, 58
  br i1 %i.cae, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

bb.ps:                                            ; preds = %bb.po
  %cond3066 = icmp eq i64 %i.bzm, 0
  br i1 %cond3066, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

.lr.ph3055.preheader:                             ; preds = %bb.pr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108, %bb.pq, %bb.ps, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117
  br label %.lr.ph3055

bb.pt:                                            ; preds = %.lr.ph3055
  %.not13.i1121 = icmp eq i64 %i.caf, 0
  br i1 %.not13.i1121, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055, !llvm.loop !29

.lr.ph3055:                                       ; preds = %.lr.ph3055.preheader, %bb.pt
  %.1.i11203054 = phi i64 [ %i.caf, %bb.pt ], [ %i.bzm, %.lr.ph3055.preheader ]
  %i.caf = add i64 %.1.i11203054, -1              ; 4 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzn, i64 %i.caf
  %i.cah = load i8, ptr %i.cag, align 1
  %i.cai = icmp eq i8 %i.cah, 47
  br i1 %i.cai, label %bb.pu, label %bb.pt, !llvm.loop !29

bb.pu:                                            ; preds = %.lr.ph3055
  store i64 %i.caf, ptr %37, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 1 dereferenceable(1) %39)
  %i.caj = load ptr, ptr %38, align 8
  %i.cak = load i64, ptr %i.gc, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cak, ptr %i.caj)
  %i.cal = load ptr, ptr %38, align 8             ; 2 uses
  %i.cam = icmp eq ptr %i.cal, %i.gd
  br i1 %i.cam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126: ; preds = %bb.pu
  %i.can = load i64, ptr %i.gd, align 8
  %i.cao = add i64 %i.can, 1
  call void @_ZdlPvm(ptr noundef %i.cal, i64 noundef %i.cao) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128: ; preds = %bb.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pt, %bb.ps, %bb.pq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %.critedge369.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106: ; preds = %bb.pn, %bb.pn, %bb.pn, %bb.pn, %bb.pm
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge369.jt16.preheader

.critedge385.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1104
  %i.cap = add i64 %.15326.jt83050, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.cap, %.sroa.01255.1
  br i1 %.not.jt8, label %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1079, !llvm.loop !136

.critedge385.jt15:                                ; preds = %bb.pi
  %i.caq = add i64 %.15326.jt83050, 1
  br label %.critedge369.jt15

bb.pv:                                            ; preds = %bb.ah
  unreachable

.critedge369.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643
  %.15326.jt6.ph = phi i64 [ %i.iz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.iz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643 ], [ %.031121332581, %bb.bg ] ; 2 uses
  %.not.jt63036 = icmp ugt i64 %.15326.jt6.ph, %.sroa.01255.1
  br i1 %.not.jt63036, label %.loopexit2652, label %.lr.ph3038, !llvm.loop !136

.lr.ph3038:                                       ; preds = %.critedge369.jt6.preheader
  br label %bb.by, !llvm.loop !136

.critedge369:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906
  %.15326 = phi i64 [ %.93202618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906 ], [ %.93202625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ] ; 2 uses
  %.18 = phi i32 [ %.82619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906 ], [ %.82626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ]
  %.not = icmp ugt i64 %.15326, %.sroa.01255.1
  br i1 %.not, label %.loopexit2652, label %bb.ah, !llvm.loop !136

.critedge369.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ex, %bb.ev
  %i.car = add i64 %i.adm, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.car, %.sroa.01255.1
  br i1 %.not.jt19, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910, !llvm.loop !136

.critedge369.jt10:                                ; preds = %bb.ox, %bb.ox
  %i.cas = add i64 %.15326.jt83050, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.cas, %.sroa.01255.1
  br i1 %.not.jt10, label %.loopexit2652, label %bb.ll, !llvm.loop !136

.critedge369.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2652, label %.preheader1791, !llvm.loop !136

.critedge369.jt9:                                 ; preds = %bb.lm, %bb.lm
  %i.cat = add i64 %.15326.jt83050, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cat, %.sroa.01255.1
  br i1 %.not.jt9, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983, !llvm.loop !136

.critedge369.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1075, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread, %bb.hm, %bb.hk, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.hh, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1071, %bb.mi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1072, %.critedge381.jt17
  %.15326.jt17 = phi i64 [ %i.bkg, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1075 ], [ %i.apj, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437 ], [ %i.apj, %bb.hh ], [ %i.cat, %bb.mi ], [ %i.bkg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1072 ], [ %i.apj, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread ], [ %i.apj, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread ], [ %i.apj, %bb.hm ], [ %i.apj, %bb.hk ], [ %i.bgu, %.critedge381.jt17 ], [ %i.bkg, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1071 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15326.jt17, %.sroa.01255.1
  br i1 %.not.jt17, label %.loopexit2652, label %bb.le, !llvm.loop !136

.critedge369.jt0:                                 ; preds = %.lr.ph2114, %bb.bx, %bb.dn
  %.15326.jt0 = phi i64 [ %spec.select394, %bb.bx ], [ %i.vy, %bb.dn ], [ %.63172113, %.lr.ph2114 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15326.jt0, %.sroa.01255.1
  br i1 %.not.jt0, label %.loopexit2652, label %bb.bh, !llvm.loop !136

.critedge369.jt12:                                ; preds = %bb.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15326.jt12 = phi i64 [ %i.vz, %bb.do ], [ %i.pn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15326.jt12, %.sroa.01255.1
  br i1 %.not.jt12, label %.loopexit2652, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit707.thread, !llvm.loop !136

.critedge369.jt7:                                 ; preds = %bb.ci, %bb.ch
  %i.cau = add i64 %.15326.jt63037, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.cau, %.sroa.01255.1
  br i1 %.not.jt7, label %.loopexit2652, label %bb.df, !llvm.loop !136

.critedge369.jt15:                                ; preds = %.critedge385.jt15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15, %.critedge381.jt15, %.critedge375.jt15
  %.15326.jt15 = phi i64 [ %i.bhb, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15 ], [ %i.caq, %.critedge385.jt15 ], [ %i.uy, %.critedge375.jt15 ], [ %i.bgv, %.critedge381.jt15 ] ; 2 uses
  %.not.jt15 = icmp ugt i64 %.15326.jt15, %.sroa.01255.1
  br i1 %.not.jt15, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, !llvm.loop !136

.critedge369.jt3:                                 ; preds = %.thread1487, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598
  %.15326.jt3 = phi i64 [ %.15326.jt0, %bb.bh ], [ %.33142126, %.thread1487 ], [ %.15326.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15326.jt3, %.sroa.01255.1
  br i1 %.not.jt3, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit715, !llvm.loop !136

.critedge369.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2652, label %.critedge369.jt4.thread, !llvm.loop !136

.critedge369.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt18, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit871, !llvm.loop !136

.critedge369.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt13, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit703, !llvm.loop !136

.critedge369.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt14, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643, !llvm.loop !136

.critedge369.jt11:                                ; preds = %bb.ba
  %.pre2328 = add i64 %.13122131, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2328, %.sroa.01255.1
  br i1 %.not.jt11, label %.loopexit2652, label %bb.bw, !llvm.loop !136

.critedge369.jt16.preheader:                      ; preds = %bb.cx, %bb.oz, %bb.oy, %bb.cw, %bb.cu, %bb.ln, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974, %_ZNK3ada14url_aggregator12get_hostnameEv.exit699, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690, %bb.li, %.critedge381.jt16, %bb.lk, %bb.mg, %bb.mg, %bb.mg, %bb.mg, %bb.mf, %_ZNK3ada14url_aggregator12get_pathnameEv.exit949, %bb.ly, %bb.ly, %bb.ly, %bb.ly, %bb.lo, %bb.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969, %bb.lz, %bb.bx
  %.15326.jt16.ph = phi i64 [ %spec.select394, %bb.bx ], [ %i.cas, %bb.ly ], [ %i.cas, %_ZNK3ada14url_aggregator12get_pathnameEv.exit949 ], [ %.15326.jt63037, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.cat, %bb.mg ], [ %i.cat, %bb.mf ], [ %i.cat, %bb.mg ], [ %i.cas, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979 ], [ %i.cat, %bb.mg ], [ %.15326.jt63037, %bb.cw ], [ %i.cas, %bb.ly ], [ %.10321, %bb.lk ], [ %i.cas, %bb.ly ], [ %.10321, %bb.li ], [ %i.cas, %bb.ly ], [ %.15326.jt63037, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690 ], [ %.sroa.01255.1, %bb.bw ], [ %i.cau, %_ZNK3ada14url_aggregator12get_hostnameEv.exit699 ], [ %i.cas, %bb.lx ], [ %i.cas, %bb.lz ], [ %i.cas, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969 ], [ %i.cas, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974 ], [ %i.cas, %bb.lo ], [ %i.cas, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967 ], [ %.15326.jt83050, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106 ], [ %i.bgw, %.critedge381.jt16 ], [ %.15326.jt83050, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %.15326.jt83050, %bb.oz ], [ %i.cat, %bb.mg ], [ %.15326.jt63037, %bb.cu ], [ %i.cas, %bb.ln ], [ %.15326.jt83050, %bb.oy ], [ %.15326.jt63037, %bb.cx ] ; 5 uses
  %.not.jt163056 = icmp ugt i64 %.15326.jt16.ph, %.sroa.01255.1
  br i1 %.not.jt163056, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel, !llvm.loop !136

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel: ; preds = %.critedge369.jt16.preheader
  %i.cav = sub nuw i64 %.sroa.01255.1, %.15326.jt16.ph ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.15326.jt16.ph ; 4 uses
  %.not1755.peel = icmp eq i64 %.sroa.01255.1, %.15326.jt16.ph
  br i1 %.not1755.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel
  %i.cax = call ptr @memchr(ptr noundef %i.caw, i32 noundef 63, i64 noundef %i.cav) #31 ; 2 uses
  %.not.i930.peel = icmp eq ptr %i.cax, null
  %i.cay = ptrtoint ptr %i.cax to i64
  %i.caz = ptrtoint ptr %i.caw to i64
  %i.cba = sub i64 %i.cay, %i.caz                 ; 2 uses
  %.not353.peel = icmp eq i64 %i.cba, -1
  %or.cond1744.peel = select i1 %.not.i930.peel, i1 true, i1 %.not353.peel
  br i1 %or.cond1744.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cav, ptr %i.caw)
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01255.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.lr.ph.peel.newph, label %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.lr.ph.peel.newph: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel
  %i.cbb = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %i.gr ; 4 uses
  %i.cbc = ptrtoint ptr %i.cbb to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927, !llvm.loop !136

.critedge369.jt6..loopexit2652.loopexit2863_crit_edge: ; preds = %.critedge375.jt6, %.critedge385.jt8, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel
  br label %.loopexit2652, !llvm.loop !136

.loopexit2652:                                    ; preds = %.critedge369.jt2, %.critedge369.jt18, %.critedge369, %.critedge369.jt6.preheader, %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge, %.critedge369.jt8.preheader, %.critedge369.jt16.preheader, %.critedge369.jt19, %.critedge369.jt10, %.critedge369.jt9, %.critedge369.jt17, %.critedge369.jt0, %.critedge369.jt12, %.critedge369.jt7, %.critedge369.jt15, %.critedge369.jt3, %.critedge369.jt4, %.critedge369.jt13, %.critedge369.jt14, %.critedge369.jt11
  br i1 %.sroa.14.0, label %bb.pw, label %.critedge389.critedge

bb.pw:                                            ; preds = %.loopexit2652
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01248.0, ptr %.sroa.91249.0)
  br label %.critedge389.critedge

.critedge372:                                     ; preds = %bb.hk, %bb.hm, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread, %bb.ev, %bb.ex, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.mk, %bb.mm, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit1006.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread1628, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread1593, %bb.hg, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1699, %.thread1495
  %i.cbd = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbe = icmp eq ptr %i.cbd, %i.ac
  br i1 %i.cbe, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.critedge:                            ; preds = %bb.pw, %bb.lh, %bb.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, %.loopexit2652, %bb.bf, %bb.bd, %bb.lg
  %i.cbf = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbg = icmp eq ptr %i.cbf, %i.ac
  br i1 %i.cbg, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.sink.split.sink.split:               ; preds = %.critedge389.critedge, %.critedge372
  %.sink3059 = phi ptr [ %i.cbd, %.critedge372 ], [ %i.cbf, %.critedge389.critedge ]
  %i.cbh = load i64, ptr %i.ac, align 8
  %i.cbi = add i64 %i.cbh, 1
  call void @_ZdlPvm(ptr noundef %.sink3059, i64 noundef %i.cbi) #34
  br label %.critedge389.sink.split

.critedge389.sink.split:                          ; preds = %.critedge389.sink.split.sink.split, %.critedge389.critedge, %.critedge372
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge389

.critedge389:                                     ; preds = %.critedge389.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregatorD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada14href_from_fileB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 85 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 16
  br i1 %i.c, label %bb.b, label %.preheader513.preheader

.preheader513.preheader:                          ; preds = %bb.a
  %i.d = add i64 %1, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.preheader513.epil.preheader, label %.preheader513.preheader.new

.preheader513.preheader.new:                      ; preds = %.preheader513.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693950
  br label %.preheader513

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %.lr.ph.i.i

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bwm = zext i32 %.0.i1025 to i64
  %i.bwn = sub nsw i64 %i.bwm, %i.bwh
  %i.bwo = load ptr, ptr %i.fp, align 8
  %i.bwp = sub nuw i64 %i.bwf, %i.bwh
  %.sroa.speculated.i.i1026 = call i64 @llvm.umin.i64(i64 %i.bwp, i64 %i.bwn)
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwo, i64 %i.bwh
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1026, ptr %i.bwq)
  %i.bwr = load i32, ptr %i.fs, align 8           ; 3 uses
  %i.bws = icmp eq i32 %i.bwr, -1
  br i1 %i.bws, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oy

bb.oy:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029
  %i.bwt = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bwu = trunc i64 %i.bwt to i32
  %i.bwv = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not.i1030 = icmp eq i32 %i.bwv, -1
  %spec.select.i1031 = select i1 %.not.i1030, i32 %i.bwu, i32 %i.bwv ; 2 uses
  %i.bww = sub i32 %spec.select.i1031, %i.bwr
  %i.bwx = icmp ult i32 %i.bww, 2
  br i1 %i.bwx, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bwy = zext i32 %i.bwr to i64                 ; 5 uses
  %i.bwz = icmp ult i64 %i.bwt, %i.bwy
  br i1 %i.bwz, label %bb.pa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032

bb.pa:                                            ; preds = %bb.oz
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bwy, i64 noundef %i.bwt) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032: ; preds = %bb.oz
  %i.bxa = zext i32 %spec.select.i1031 to i64
  %i.bxb = sub nsw i64 %i.bxa, %i.bwy
  %i.bxc = load ptr, ptr %i.fp, align 8
  %i.bxd = sub nuw i64 %i.bwt, %i.bwy
  %.sroa.speculated.i.i1033 = call i64 @llvm.umin.i64(i64 %i.bxd, i64 %i.bxb)
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxc, i64 %i.bwy
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1038

_ZNK3ada14url_aggregator10get_searchEv.exit1038:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029, %bb.oy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032
  %.sroa.4.0.i1034 = phi ptr [ %i.bxe, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ @.str.48, %bb.oy ]
  %.sroa.0.0.i1035 = phi i64 [ %.sroa.speculated.i.i1033, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ 0, %bb.oy ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1035, ptr %.sroa.4.0.i1034)
  %i.bxf = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  store i8 %i.bxf, ptr %i.d, align 1
  br i1 %.not314, label %.critedge350.jt8, label %bb.pb

bb.pb:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.bxg = sub nuw i64 %.sroa.01179.1, %.15292.jt82867 ; 2 uses
  %i.bxh = load i8, ptr %i.bvl, align 1
  %i.bxi = icmp eq i8 %i.bxh, 63
  br i1 %i.bxi, label %.critedge354.critedge, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bxj = icmp ugt i64 %i.bxg, 1
  br i1 %i.bxj, label %bb.pd, label %bb.ph

bb.pd:                                            ; preds = %bb.pc
  %i.bxk = load i8, ptr %i.bvl, align 1
  %i.bxl = or i8 %i.bxk, 32
  %i.bxm = add i8 %i.bxl, -97
  %spec.select.i.i1039 = icmp ult i8 %i.bxm, 26
  br i1 %spec.select.i.i1039, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 1
  %i.bxo = load i8, ptr %i.bxn, align 1
  switch i8 %i.bxo, label %bb.ph [
    i8 58, label %bb.pf
    i8 124, label %bb.pf
  ]

bb.pf:                                            ; preds = %bb.pe, %bb.pe
  %i.bxp = icmp eq i64 %i.bxg, 2
  br i1 %i.bxp, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 2
  %i.bxr = load i8, ptr %i.bxq, align 1
  switch i8 %i.bxr, label %bb.ph [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
  ]

bb.ph:                                            ; preds = %bb.pg, %bb.pe, %bb.pd, %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.bxs = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bxt = extractvalue { i64, ptr } %i.bxs, 0    ; 6 uses
  %i.bxu = extractvalue { i64, ptr } %i.bxs, 1    ; 5 uses
  store ptr %i.bxu, ptr %i.fv, align 8
  %i.bxv = load i8, ptr %i.f, align 1
  %i.bxw = icmp eq i8 %i.bxv, 6
  br i1 %i.bxw, label %bb.pi, label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  %i.bxx = icmp ugt i64 %i.bxt, 1
  br i1 %i.bxx, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, label %bb.pj

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042:   ; preds = %bb.pi
  %i.bxy = add i64 %i.bxt, -1
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxu, i64 1 ; 2 uses
  %i.bya = call ptr @memchr(ptr noundef nonnull %i.bxz, i32 noundef 47, i64 noundef %i.bxy) #31 ; 2 uses
  %.not.i1043 = icmp eq ptr %i.bya, null
  %i.byb = ptrtoint ptr %i.bya to i64
  %i.byc = ptrtoint ptr %i.bxu to i64
  %i.byd = sub i64 %i.byb, %i.byc
  %i.bye = icmp eq i64 %i.byd, -1
  %or.cond1663 = select i1 %.not.i1043, i1 true, i1 %i.bye
  %i.byf = icmp ne i64 %i.bxt, 2
  %or.cond1697 = select i1 %or.cond1663, i1 %i.byf, i1 false
  br i1 %or.cond1697, label %bb.pk, label %.lr.ph2872.preheader

bb.pj:                                            ; preds = %bb.pi
  %cond2882 = icmp eq i64 %i.bxt, 0
  br i1 %cond2882, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pk:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042
  %i.byg = load i8, ptr %i.bxz, align 1
  %i.byh = or i8 %i.byg, 32
  %i.byi = add i8 %i.byh, -97
  %spec.select.i.i1050 = icmp ult i8 %i.byi, 26
  br i1 %spec.select.i.i1050, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, label %.lr.ph2872.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051: ; preds = %bb.pk
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxu, i64 2
  %i.byk = load i8, ptr %i.byj, align 1
  %i.byl = icmp eq i8 %i.byk, 58
  br i1 %i.byl, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pl:                                            ; preds = %bb.ph
  %cond2883 = icmp eq i64 %i.bxt, 0
  br i1 %cond2883, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

.lr.ph2872.preheader:                             ; preds = %bb.pk, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, %bb.pj, %bb.pl, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051
  br label %.lr.ph2872

bb.pm:                                            ; preds = %.lr.ph2872
  %.not13.i1055 = icmp eq i64 %i.bym, 0
  br i1 %.not13.i1055, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872, !llvm.loop !29

.lr.ph2872:                                       ; preds = %.lr.ph2872.preheader, %bb.pm
  %.1.i10542871 = phi i64 [ %i.bym, %bb.pm ], [ %i.bxt, %.lr.ph2872.preheader ]
  %i.bym = add i64 %.1.i10542871, -1              ; 4 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bym
  %i.byo = load i8, ptr %i.byn, align 1
  %i.byp = icmp eq i8 %i.byo, 47
  br i1 %i.byp, label %bb.pn, label %bb.pm, !llvm.loop !29

bb.pn:                                            ; preds = %.lr.ph2872
  store i64 %i.bym, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 1 dereferenceable(1) %35)
  %i.byq = load ptr, ptr %34, align 8
  %i.byr = load i64, ptr %i.fw, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.byr, ptr %i.byq)
  %i.bys = load ptr, ptr %34, align 8             ; 2 uses
  %i.byt = icmp eq ptr %i.bys, %i.fx
  br i1 %i.byt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060: ; preds = %bb.pn
  %i.byu = load i64, ptr %i.fx, align 8
  %i.byv = add i64 %i.byu, 1
  call void @_ZdlPvm(ptr noundef %i.bys, i64 noundef %i.byv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pm, %bb.pl, %bb.pj, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %.critedge334.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040: ; preds = %bb.pg, %bb.pg, %bb.pg, %bb.pg, %bb.pf
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge334.jt16.preheader

.critedge350.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.byw = add i64 %.15292.jt82867, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.byw, %.sroa.01179.1
  br i1 %.not.jt8, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1013, !llvm.loop !165

bb.po:                                            ; preds = %bb.ah
  unreachable

.critedge334.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581
  %.15292.jt6.ph = phi i64 [ %i.il, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.il, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581 ], [ %.027719952425, %bb.bg ] ; 2 uses
  %.not.jt62853 = icmp ugt i64 %.15292.jt6.ph, %.sroa.01179.1
  br i1 %.not.jt62853, label %.critedge354.critedge, label %.lr.ph2855, !llvm.loop !165

.lr.ph2855:                                       ; preds = %.critedge334.jt6.preheader
  br label %bb.bu, !llvm.loop !165

.critedge334:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840
  %.15292 = phi i64 [ %.92862462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ], [ %.92862469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ] ; 2 uses
  %.18 = phi i32 [ %.82463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ], [ %.82470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ]
  %.not = icmp ugt i64 %.15292, %.sroa.01179.1
  br i1 %.not, label %.critedge354.critedge, label %bb.ah, !llvm.loop !165

.critedge334.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.es, %bb.eq
  %i.byx = add i64 %i.abw, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.byx, %.sroa.01179.1
  br i1 %.not.jt19, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844, !llvm.loop !165

.critedge334.jt10:                                ; preds = %bb.oq, %bb.oq
  %i.byy = add i64 %.15292.jt82867, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.byy, %.sroa.01179.1
  br i1 %.not.jt10, label %.critedge354.critedge, label %bb.le, !llvm.loop !165

.critedge334.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.preheader1704, !llvm.loop !165

.critedge334.jt9:                                 ; preds = %bb.lf, %bb.lf
  %i.byz = add i64 %.15292.jt82867, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.byz, %.sroa.01179.1
  br i1 %.not.jt9, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917, !llvm.loop !165

.critedge334.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.hh, %bb.hf, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.hc, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005, %bb.mb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006, %.critedge346.jt17
  %.15292.jt17 = phi i64 [ %i.byz, %bb.mb ], [ %i.ant, %bb.hf ], [ %i.bin, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009 ], [ %i.bin, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005 ], [ %i.bin, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006 ], [ %i.bfe, %.critedge346.jt17 ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread ], [ %i.ant, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread ], [ %i.ant, %bb.hh ], [ %i.ant, %bb.hc ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15292.jt17, %.sroa.01179.1
  br i1 %.not.jt17, label %.critedge354.critedge, label %bb.kz, !llvm.loop !165

.critedge334.jt0:                                 ; preds = %.lr.ph1976, %bb.bt, %bb.dj
  %.15292.jt0 = phi i64 [ %spec.select359, %bb.bt ], [ %i.ul, %bb.dj ], [ %.62831975, %.lr.ph1976 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15292.jt0, %.sroa.01179.1
  br i1 %.not.jt0, label %.critedge354.critedge, label %bb.bh, !llvm.loop !165

.critedge334.jt12:                                ; preds = %bb.dk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15292.jt12 = phi i64 [ %i.um, %bb.dk ], [ %i.ob, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15292.jt12, %.sroa.01179.1
  br i1 %.not.jt12, label %.critedge354.critedge, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !165

.critedge334.jt7:                                 ; preds = %bb.ce, %bb.cd
  %i.bza = add i64 %.15292.jt62854, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.bza, %.sroa.01179.1
  br i1 %.not.jt7, label %.critedge354.critedge, label %bb.db, !llvm.loop !165

.critedge334.jt3:                                 ; preds = %.thread1404, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563
  %.15292.jt3 = phi i64 [ %.32801988, %.thread1404 ], [ %.15292.jt0, %bb.bh ], [ %.15292.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15292.jt3, %.sroa.01179.1
  br i1 %.not.jt3, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !165

.critedge334.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.critedge334.jt4.thread, !llvm.loop !165

.critedge334.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt18, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805, !llvm.loop !165

.critedge334.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt13, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !165

.critedge334.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt14, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581, !llvm.loop !165

.critedge334.jt11:                                ; preds = %bb.ba
  %.pre2183 = add i64 %.12781993, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2183, %.sroa.01179.1
  br i1 %.not.jt11, label %.critedge354.critedge, label %bb.bs, !llvm.loop !165

.critedge334.jt16.preheader:                      ; preds = %bb.ct, %bb.os, %bb.or, %bb.cs, %bb.cq, %bb.lg, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %bb.lb, %.critedge346.jt16, %bb.ld, %bb.lz, %bb.lz, %bb.lz, %bb.lz, %bb.ly, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883, %bb.lr, %bb.lr, %bb.lr, %bb.lr, %bb.lh, %bb.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903, %bb.ls, %bb.bt
  %.15292.jt16.ph = phi i64 [ %spec.select359, %bb.bt ], [ %.15292.jt62854, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.byy, %bb.lr ], [ %i.byy, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883 ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.ly ], [ %i.byy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ], [ %i.byy, %bb.lh ], [ %i.byz, %bb.lz ], [ %i.byy, %bb.lr ], [ %i.byy, %bb.lr ], [ %.10287, %bb.ld ], [ %i.byy, %bb.lr ], [ %.10287, %bb.lb ], [ %.15292.jt62854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628 ], [ %.sroa.01179.1, %bb.bs ], [ %i.bza, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637 ], [ %i.byy, %bb.lq ], [ %i.byy, %bb.ls ], [ %i.byy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903 ], [ %i.byy, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908 ], [ %.15292.jt62854, %bb.cs ], [ %i.byy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 ], [ %i.bff, %.critedge346.jt16 ], [ %.15292.jt82867, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040 ], [ %.15292.jt82867, %bb.os ], [ %.15292.jt82867, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %i.byz, %bb.lz ], [ %.15292.jt62854, %bb.cq ], [ %i.byy, %bb.lg ], [ %.15292.jt82867, %bb.or ], [ %.15292.jt62854, %bb.ct ] ; 4 uses
  %.not.jt162873 = icmp ugt i64 %.15292.jt16.ph, %.sroa.01179.1
  br i1 %.not.jt162873, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel, !llvm.loop !165

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel: ; preds = %.critedge334.jt16.preheader
  %.not1672.peel = icmp eq i64 %.sroa.01179.1, %.15292.jt16.ph
  br i1 %.not1672.peel, label %.critedge334.jt16.backedge.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %i.bzb = sub nuw i64 %.sroa.01179.1, %.15292.jt16.ph
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.15292.jt16.ph ; 2 uses
  %i.bzd = call ptr @memchr(ptr noundef %i.bzc, i32 noundef 63, i64 noundef %i.bzb) #31 ; 2 uses
  %.not.i864.peel = icmp eq ptr %i.bzd, null
  %i.bze = ptrtoint ptr %i.bzd to i64
  %i.bzf = ptrtoint ptr %i.bzc to i64
  %i.bzg = sub i64 %i.bze, %i.bzf
  %.not318.peel = icmp eq i64 %i.bzg, -1
  %or.cond1661.peel = or i1 %.not.i864.peel, %.not318.peel
  br i1 %or.cond1661.peel, label %.critedge334.jt16.backedge.peel, label %.critedge354.critedge

.critedge334.jt16.backedge.peel:                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01179.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph: ; preds = %.critedge334.jt16.backedge.peel
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %i.gl ; 2 uses
  %i.bzi = ptrtoint ptr %i.bzh to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, !llvm.loop !165

.critedge337:                                     ; preds = %bb.hf, %bb.hh, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.eq, %bb.es, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.md, %bb.mf, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit940.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread1545, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread1510, %bb.hb, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1616, %.thread1412
  %i.bzj = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzk = icmp eq ptr %i.bzj, %i.w
  br i1 %i.bzk, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge: ; preds = %.critedge340.jt6, %.critedge350.jt8, %.critedge334.jt16.backedge.peel
  br label %.critedge354.critedge, !llvm.loop !165

.critedge354.critedge:                            ; preds = %.critedge334, %.critedge334.jt18, %.critedge334.jt2, %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, %.critedge334.jt6.preheader, %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, %.critedge334.jt8.preheader, %.critedge334.jt16.preheader, %bb.cm, %bb.ld, %bb.pb, %bb.la, %.critedge334.jt11, %.critedge334.jt14, %.critedge334.jt13, %.critedge334.jt4, %.critedge334.jt3, %.critedge334.jt7, %.critedge334.jt12, %.critedge334.jt0, %.critedge334.jt17, %.critedge334.jt9, %.critedge334.jt10, %.critedge334.jt19, %bb.bf, %bb.bd
  %i.bzl = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzm = icmp eq ptr %i.bzl, %i.w
  br i1 %i.bzm, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge354.sink.split.sink.split:               ; preds = %.critedge354.critedge, %.critedge337
  %.sink2876 = phi ptr [ %i.bzj, %.critedge337 ], [ %i.bzl, %.critedge354.critedge ]
  %i.bzn = load i64, ptr %i.w, align 8
  %i.bzo = add i64 %i.bzn, 1
  call void @_ZdlPvm(ptr noundef %.sink2876, i64 noundef %i.bzo) #34
  br label %.critedge354.sink.split

.critedge354.sink.split:                          ; preds = %.critedge354.sink.split.sink.split, %.critedge354.critedge, %.critedge337
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge354

.critedge354:                                     ; preds = %.critedge354.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, ptr } @_ZN3ada9to_stringENS_13encoding_typeE(i32 noundef %0) local_unnamed_addr #3 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE.37, i64 %i.b
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %switch.ext, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %switch.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada7helpers9get_stateB5cxx11ENS_5stateE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  switch i32 %1, label %._crit_edge.i.i58 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i1
    i32 2, label %._crit_edge.i.i4
    i32 3, label %._crit_edge.i.i7
    i32 4, label %._crit_edge.i.i10
    i32 5, label %._crit_edge.i.i13
    i32 6, label %._crit_edge.i.i16
    i32 7, label %._crit_edge.i.i19
    i32 8, label %._crit_edge.i.i22
    i32 9, label %._crit_edge.i.i25
    i32 10, label %._crit_edge.i.i28
    i32 11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i32
    i32 12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35
    i32 13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i38
    i32 14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41
    i32 15, label %._crit_edge.i.i43
    i32 16, label %._crit_edge.i.i46
    i32 17, label %._crit_edge.i.i49
    i32 18, label %._crit_edge.i.i52
    i32 19, label %._crit_edge.i.i55
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.7, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1
  br label %bb.b

._crit_edge.i.i1:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.8, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.e, align 4
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.g, align 2
  br label %bb.b

._crit_edge.i.i7:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  store i32 1953722184, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.i, align 4
end_hunk_3
