inline.NumInlined: 37
inline.NumDeleted: 22
begin_hunk_0_@_ZN4absl13cord_internal18CordRepBtreeReader4ReadEmmRPNS0_7CordRepE:bb.a
  %i.aq = load i64, ptr %i.ap, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, %bb.q
  %i.ar = phi i8 [ %.pre.i.i, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.ak, %bb.q ] ; 2 uses
  %.011.i = phi i64 [ %i.aq, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ 0, %bb.q ]
  %.0.i = phi ptr [ %i.an, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.ad, %bb.q ] ; 2 uses
  %i.as = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.at = icmp ugt i8 %i.ar, 5
  br i1 %i.at, label %bb.t, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.au = icmp ult i8 %i.ar, -7
  br i1 %i.au, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #6
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i:   ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i
  %.pn.i = phi ptr [ %i.av, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.ax, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i ]
  %i.ay = icmp ugt i64 %i.ah, %i.as
  br i1 %i.ay, label %bb.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.u:                                             ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef %i.ah, i64 noundef %i.as) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.011.i
  %i.az = sub nuw i64 %i.as, %i.ah
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 %i.ah
  br label %bb.ai

bb.v:                                             ; preds = %_ZNK4absl13cord_internal21CordRepBtreeNavigator7CurrentEv.exit24.thread
  %i.bb = add i64 %2, %i.ah
  %i.bc = sub i64 %1, %i.bb                       ; 2 uses
  %i.bd = load i64, ptr %0, align 8               ; 2 uses
  %.not22 = icmp ult i64 %i.bc, %i.bd
  br i1 %.not22, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %0, align 8
  br label %bb.ai

bb.x:                                             ; preds = %bb.v
  %i.be = load i32, ptr %i.a, align 8
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 158, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal21CordRepBtreeNavigator7CurrentEv) #6
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bh = load i8, ptr %i.f, align 4              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bj = load i8, ptr %i.bi, align 1
  %.not.i.i29 = icmp ult i8 %i.bh, %i.bj
  br i1 %.not.i.i29, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #6
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp ult i8 %i.bh, %i.bl
  br i1 %i.bm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #6
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bn = zext i8 %i.bh to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8            ; 6 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.bc, %i.br
  %i.bt = sub i64 %i.bd, %i.bs
  store i64 %i.bt, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bv = load i8, ptr %i.bu, align 4             ; 3 uses
  %or.cond.i.i33 = icmp ugt i8 %i.bv, 4
  br i1 %or.cond.i.i33, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = icmp eq i8 %i.bv, 1
  br i1 %i.bw, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i35, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i34

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i35: ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.phi.trans.insert.i.i36 = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %.pre.i.i37 = load i8, ptr %.phi.trans.insert.i.i36, align 4 ; 2 uses
  %i.bz = icmp ugt i8 %.pre.i.i37, 4
  br i1 %i.bz, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i34

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i34: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i35, %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE) #6
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load i64, ptr %i.ca, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38, %bb.ad
  %i.cc = phi i8 [ %.pre.i.i37, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38 ], [ %i.bv, %bb.ad ] ; 2 uses
  %.011.i39 = phi i64 [ %i.cb, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38 ], [ 0, %bb.ad ]
  %.0.i40 = phi ptr [ %i.by, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i38 ], [ %i.bq, %bb.ad ] ; 2 uses
  %i.cd = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.ce = icmp ugt i8 %i.cc, 5
  br i1 %i.ce, label %bb.ag, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i41

bb.ag:                                            ; preds = %bb.af
  %i.cf = icmp ult i8 %i.cc, -7
  br i1 %i.cf, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i47, label %.critedge.i.i46

.critedge.i.i46:                                  ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #6
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i47: ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i40, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit48

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i41: ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i40, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit48

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit48: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i47, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i41
  %.pn.i42 = phi ptr [ %i.cg, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i47 ], [ %i.ci, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i41 ]
  %i.cj = icmp ugt i64 %i.ah, %i.cd
  br i1 %i.cj, label %bb.ah, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51

bb.ah:                                            ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit48
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef %i.ah, i64 noundef %i.cd) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51: ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit48
  %.sroa.3.0.i43 = getelementptr inbounds nuw i8, ptr %.pn.i42, i64 %.011.i39
  %i.ck = sub nuw i64 %i.cd, %i.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i43, i64 %i.ah
  br label %bb.ai

bb.ai:                                            ; preds = %bb.w, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.455.0 = phi ptr [ %i.ba, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.cl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51 ], [ null, %bb.w ]
  %.sroa.054.0 = phi i64 [ %i.az, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.ck, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51 ], [ 0, %bb.w ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.054.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.455.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare { ptr, i64 } @_ZN4absl13cord_internal21CordRepBtreeNavigator4ReadEmm(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl13cord_internal21CordRepBtreeNavigator6NextUpEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = add nsw i64 %i.h, -1
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8                ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not56 = icmp slt i32 %i.k, 1
  br i1 %exitcond.not56, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 228, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator6NextUpEv) #6
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv4058, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv58 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ]
  %indvars.iv4058 = phi i64 [ %indvars.iv.next41, %bb.c ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv58, 1 ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = icmp eq i64 %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.w = trunc i64 %i.q to i8
  store i8 %i.w, ptr %i.v, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit, %bb.d
  %i.x = phi i8 [ %i.al, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %.pre, %bb.d ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %indvars.iv4058, %bb.d ] ; 2 uses
  %.017 = phi ptr [ %i.af, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %i.m, %bb.d ] ; 2 uses
  %.016 = phi i64 [ %i.am, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %i.q, %bb.d ] ; 3 uses
  %i.y = zext i8 %i.x to i64
  %.not.i = icmp samesign ult i64 %.016, %i.y
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 15
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = icmp samesign ult i64 %.016, %i.ab
  br i1 %i.ac, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #6
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.016
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #6
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next43
  store ptr %i.af, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.al = load i8, ptr %i.ak, align 2             ; 4 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  store i8 %i.al, ptr %i.an, align 1
  %i.ao = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.ao, label %bb.e, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp ult i8 %i.al, %i.aq
  br i1 %i.ar, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #6
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.am
  %i.au = load ptr, ptr %i.at, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22
  %.018 = phi ptr [ %i.au, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22 ], [ null, %.preheader ], [ null, %bb.c ]
  ret ptr %.018
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
end_hunk_0
