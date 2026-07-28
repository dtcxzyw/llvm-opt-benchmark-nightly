inline.NumInlined: 774
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %indvars.iv.i96 = phi i64 [ %i.ej, %.preheader.i94 ], [ %indvars.iv.next.i99, %bb.ai ] ; 5 uses
  %.sroa.023.0.i97 = phi ptr [ %i.dj, %.preheader.i94 ], [ %.sroa.023.2.ph.i104, %bb.ai ] ; 3 uses
  %.sroa.6.0.i98 = phi i32 [ 2, %.preheader.i94 ], [ %.sroa.6.2.ph.i105, %bb.ai ] ; 2 uses
  %indvars.iv.next.i99 = add nsw i64 %indvars.iv.i96, -1
  %i.en = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i96
  %i.eo = load ptr, ptr %i.en, align 8            ; 5 uses
  %i.ep = icmp sle i64 %indvars.iv.i96, %i.em     ; 2 uses
  switch i32 %.sroa.6.0.i98, label %bb.ai [
    i32 2, label %bb.af
    i32 1, label %bb.ag
    i32 0, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.eq = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eo, i1 noundef zeroext %i.ep, ptr noundef %.sroa.023.0.i97, i64 noundef %i.dk) ; 2 uses
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  %i.es = extractvalue { ptr, i32 } %i.eq, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.et = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eo, i1 noundef zeroext %i.ep, ptr noundef %.sroa.023.0.i97, i64 noundef %i.dk) ; 2 uses
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  %i.ev = extractvalue { ptr, i32 } %i.et, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %i.eo, align 8
  %i.ex = add i64 %i.ew, %i.dk
  store i64 %i.ex, ptr %i.eo, align 8
  %i.ey = icmp samesign ugt i64 %indvars.iv.i96, 1
  br i1 %i.ey, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110

.lr.ph.i101:                                      ; preds = %bb.ah, %.lr.ph.i101
  %indvars.iv58.i102 = phi i64 [ %indvars.iv.next59.i103, %.lr.ph.i101 ], [ %indvars.iv55.i95, %bb.ah ] ; 3 uses
  %indvars.iv.next59.i103 = add nsw i64 %indvars.iv58.i102, -1
  %i.ez = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i102
  %i.fa = load ptr, ptr %i.ez, align 8            ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.fb, %i.dk
  store i64 %i.fc, ptr %i.fa, align 8
  %i.fd = icmp sgt i64 %indvars.iv58.i102, 1
  br i1 %i.fd, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110, !llvm.loop !8

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.023.2.ph.i104 = phi ptr [ %i.eu, %bb.ag ], [ %i.er, %bb.af ], [ %.sroa.023.0.i97, %bb.ae ] ; 2 uses
  %.sroa.6.2.ph.i105 = phi i32 [ %i.ev, %bb.ag ], [ %i.es, %bb.af ], [ %.sroa.6.0.i98, %bb.ae ] ; 2 uses
  %i.fe = icmp samesign ugt i64 %indvars.iv.i96, 1
  %indvars.iv.next56.i106 = add nsw i64 %indvars.iv55.i95, -1
  br i1 %i.fe, label %bb.ae, label %.loopexit42.i107, !llvm.loop !9

.loopexit42.i107:                                 ; preds = %bb.ai, %bb.ad
  %.sroa.023.3.i108 = phi ptr [ %i.dj, %bb.ad ], [ %.sroa.023.2.ph.i104, %bb.ai ]
  %.sroa.6.3.i109 = phi i32 [ 2, %bb.ad ], [ %.sroa.6.2.ph.i105, %bb.ai ]
  %i.ff = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262, ptr %.sroa.023.3.i108, i32 %.sroa.6.3.i109)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110: ; preds = %.lr.ph.i101, %bb.ah, %.loopexit42.i107
  %.2.i100 = phi ptr [ %i.ff, %.loopexit42.i107 ], [ %i.eo, %bb.ah ], [ %i.fa, %.lr.ph.i101 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.2.i100, i64 13
  %i.fh = load i8, ptr %i.fg, align 1             ; 4 uses
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  %i.fj = icmp ult i8 %i.fh, 12
  br i1 %i.fj, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111, label %bb.aj

_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110
  %wide.trip.count.i112 = zext nneg i8 %i.fh to i64
  %exitcond.not.i115261 = icmp eq i8 %i.fh, 0
  br i1 %exitcond.not.i115261, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge, label %.lr.ph264

bb.aj:                                            ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110
  tail call void @__assert_fail(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.1, i32 noundef 255, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113: ; preds = %bb.al
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i114262, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i112
  br i1 %exitcond.not.i115, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge, label %.lr.ph264, !llvm.loop !24

.lr.ph264:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113
  %.09.i263 = phi ptr [ %i.ft, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ %.2.i100, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111 ] ; 4 uses
  %indvars.iv.i114262 = phi i64 [ %indvars.iv.next.i116, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.09.i263, i64 8
  %i.fl = load atomic i32, ptr %i.fk acquire, align 4
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph264
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 258, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i) #14
  unreachable

bb.al:                                            ; preds = %.lr.ph264
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i114262
  store ptr %.09.i263, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.09.i263, i64 14
  %i.fp = load i8, ptr %i.fo, align 2
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.09.i263, i64 16
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load ptr, ptr %i.fs, align 8            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i8, ptr %i.fu, align 4
  %i.fw = icmp eq i8 %i.fv, 3
  br i1 %i.fw, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, label %bb.am, !llvm.loop !24

bb.am:                                            ; preds = %bb.al
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111
  %.09.i.lcssa = phi ptr [ %.2.i100, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111 ], [ %i.ft, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.09.i.lcssa, i64 8
  %i.fy = load atomic i32, ptr %i.fx acquire, align 4
  %i.fz = icmp eq i32 %i.fy, 2
  br i1 %i.fz, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i) #14
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge
  %i.ga = add nuw nsw i32 %i.fi, 1                ; 2 uses
  store i32 %i.ga, ptr %4, align 8
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92: ; preds = %.lr.ph.i83, %.loopexit42.i89, %bb.ab, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit
  %i.gb = phi i32 [ %i.ga, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %i.di, %bb.ab ], [ %i.di, %.loopexit42.i89 ], [ %i.di, %.lr.ph.i83 ]
  %.sroa.0.2 = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.sroa.0.1, %bb.ab ], [ %.sroa.0.1, %.loopexit42.i89 ], [ %.sroa.0.1, %.lr.ph.i83 ]
  %.165 = phi i32 [ %i.fi, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.064, %bb.ab ], [ %.064, %.loopexit42.i89 ], [ %.064, %.lr.ph.i83 ]
  %.363 = phi ptr [ %.2.i100, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.262, %bb.ab ], [ %.262, %.loopexit42.i89 ], [ %.262, %.lr.ph.i83 ]
  %.3 = phi ptr [ %.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %i.dq, %bb.ab ], [ %i.eh, %.loopexit42.i89 ], [ %i.ec, %.lr.ph.i83 ] ; 2 uses
  br i1 %.not69, label %.loopexit, label %bb.w, !llvm.loop !25

.loopexit:                                        ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit
  %.4 = phi ptr [ %.0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ], [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %.loopexit
  %.5 = phi ptr [ %.4, %.loopexit ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES7_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 591, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 4 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = sub nsw i64 %i.d, %i.g
  %i.i = icmp ult i64 %i.h, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = sub nsw i64 6, %i.d                      ; 2 uses
  %.not.i = icmp eq i8 %i.c, 6
  br i1 %.not.i, label %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.j, %i.g                   ; 3 uses
  %i.l = trunc i64 %i.k to i8
  store i8 %i.l, ptr %i.e, align 2
  store i8 6, ptr %i.b, align 1
  %.not1516.i = icmp ugt i64 %i.k, 5
  br i1 %.not1516.i, label %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.017.i = phi i64 [ 5, %.lr.ph.i ], [ %.0.i, %bb.g ] ; 3 uses
  %i.n = sub i64 %.017.i, %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.017.i
  store ptr %i.p, ptr %i.q, align 8
  %.0.i = add nsw i64 %.017.i, -1                 ; 2 uses
  %.not15.i = icmp ult i64 %.0.i, %i.k
  br i1 %.not15.i, label %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.g, !llvm.loop !10

_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit: ; preds = %bb.g, %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit ], [ %i.as, %bb.h ] ; 3 uses
  %i.s = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.t = icmp ult i64 %i.s, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 4083)
  %i.u = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.t, i64 32, i64 %i.u      ; 2 uses
  %i.v = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.v, i64 -8, i64 -64
  %i.w = select i1 %i.v, i64 8, i64 64
  %i.x = add nsw i64 %.0.i.i, -1
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = and i64 %i.y, %.neg.i.i                  ; 3 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 2, ptr %i.ac, align 8
  %i.ad = icmp samesign ult i64 %i.z, 513         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ad, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ad, i64 2, i64 58
  %i.ae = lshr i64 %i.z, %.sink6.i.i.i.i
  %i.af = add nuw nsw i64 %i.ae, %.sink5.i.i.i.i  ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 %i.ag, ptr %i.ah, align 4
  %i.ai = trunc nuw nsw i64 %i.af to i32
  %i.aj = icmp samesign ult i64 %i.af, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.aj, i32 3, i32 6
  %i.ak = shl nuw nsw i32 %i.ai, %.sink6.i.i.i
  %i.al = select i1 %i.aj, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.ak, %i.al
  %i.am = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.am) ; 3 uses
  store i64 %.sroa.speculated, ptr %i.aa, align 8
  %i.an = load i8, ptr %i.e, align 2
  %i.ao = add i8 %i.an, -1                        ; 3 uses
  store i8 %i.ao, ptr %i.e, align 2
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  store ptr %i.aa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %i.as = sub i64 %.sroa.0.0, %.sroa.speculated   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.at, i64 %.sroa.speculated, i1 false)
  %i.au = icmp eq i64 %i.as, 0
  %.not = icmp eq i8 %i.ao, 0
  %or.cond = or i1 %.not, %i.au
  br i1 %or.cond, label %.critedge, label %bb.h, !llvm.loop !26

.critedge:                                        ; preds = %bb.h
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.as, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr nofree readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 6, ptr %i.e, align 1
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.b ] ; 4 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
  %i.j = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.i, i64 32, i64 %i.j      ; 2 uses
  %i.k = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nsw i64 %.0.i.i, -1
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i    ; 3 uses
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4
  %i.x = trunc nuw nsw i64 %i.u to i32
  %i.y = icmp samesign ult i64 %i.u, 67           ; 2 uses
  %.sink6.i.i.i = select i1 %i.y, i32 3, i32 6
  %i.z = shl nuw nsw i32 %i.x, %.sink6.i.i.i
  %i.aa = select i1 %i.y, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.z, %i.aa
  %i.ab = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ab) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.p, align 8
  %i.ac = add i64 %.sroa.speculated, %.029        ; 2 uses
  %i.ad = add nsw i64 %.01928, -1                 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub i64 %.sroa.0.027, %.sroa.speculated ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ag) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i8 [ 6, %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i64 %.0.lcssa, ptr %i.a, align 8
  store i8 %.019.lcssa, ptr %i.al, align 2
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.absl::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 18 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.an, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, !prof !21

_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1               ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %wide.trip.count.i = zext i8 %i.c to i64        ; 5 uses
  %exitcond.not.i400 = icmp eq i8 %i.c, 0
  br i1 %exitcond.not.i400, label %.critedge.i, label %.lr.ph

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i401, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !12

.lr.ph:                                           ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %.016.i402 = phi ptr [ %i.n, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ %0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ] ; 4 uses
  %indvars.iv.i401 = phi i64 [ %indvars.iv.next.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ] ; 4 uses
  %i.f = getelementptr i8, ptr %.016.i402, i64 8  ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %.critedge.split.loop.exit35.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i401
  store ptr %.016.i402, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.016.i402, i64 15
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.c, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

.critedge.split.loop.exit35.i:                    ; preds = %.lr.ph
  %i.r = trunc nuw nsw i64 %indvars.iv.i401 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, %.critedge.split.loop.exit35.i
  %.016.i397 = phi ptr [ %.016.i402, %.critedge.split.loop.exit35.i ], [ %0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %i.n, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 3 uses
  %.pre-phi.i = phi i64 [ %indvars.iv.i401, %.critedge.split.loop.exit35.i ], [ %wide.trip.count.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %wide.trip.count.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.r, %.critedge.split.loop.exit35.i ], [ %i.d, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %i.d, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i397, i64 8
  %i.t = load atomic i32, ptr %i.s acquire, align 4
  %i.u = icmp eq i32 %i.t, 2
  %i.v = zext i1 %i.u to i32
  %i.w = add nuw nsw i32 %.0.lcssa.i, %i.v        ; 2 uses
  store i32 %i.w, ptr %4, align 8
  %smax30.i = tail call i32 @llvm.smax.i32(i32 %.0.lcssa.i, i32 %i.d)
  %wide.trip.count31.i = zext nneg i32 %smax30.i to i64 ; 2 uses
  %exitcond32.not.i403 = icmp eq i64 %.pre-phi.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i403, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit, label %.lr.ph406

_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i: ; preds = %.lr.ph406
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i404, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit, label %.lr.ph406, !llvm.loop !13

.lr.ph406:                                        ; preds = %.critedge.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i
  %.117.i405 = phi ptr [ %i.ad, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ], [ %.016.i397, %.critedge.i ] ; 3 uses
  %indvars.iv27.i404 = phi i64 [ %indvars.iv.next28.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ], [ %.pre-phi.i, %.critedge.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv27.i404
  store ptr %.117.i405, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.117.i405, i64 15
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %.117.i405, i64 8
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = icmp eq i8 %i.af, 3
  br i1 %i.ag, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i, label %bb.d, !llvm.loop !13

bb.d:                                             ; preds = %.lr.ph406
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i, %.critedge.i
  %.117.i.lcssa = phi ptr [ %.016.i397, %.critedge.i ], [ %i.ad, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.117.i.lcssa, i64 15 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.117.i.lcssa, i64 14 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = sub nsw i64 %i.aj, %i.am
  %i.ao = icmp ult i64 %i.an, 6
  br i1 %i.ao, label %bb.e, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader

bb.e:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit
  %i.ap = icmp sgt i32 %i.w, %i.d
  br i1 %i.ap, label %_ZN4absl13cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %.117.i.lcssa, align 8
  %i.ar = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 5 uses
end_hunk_0
