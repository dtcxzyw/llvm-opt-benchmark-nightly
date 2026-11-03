Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUIEditBox?download=true
inline.NumInlined: 1019
inline.NumDeleted: 336
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3gui11CGUIEditBox13onKeyControlVERK6SEventRiS4_:bb.a
  %i.eg = add i64 %i.ef, 4
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.eg) #25
  br label %_ZN4core6stringIwED2Ev.exit75

_ZN4core6stringIwED2Ev.exit75:                    ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i73, %bb.z
  %.pn28.pn = phi { ptr, i32 } [ %i.dl, %bb.z ], [ %.pn28, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i73 ], [ %.pn28, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ag

bb.af:                                            ; preds = %_ZN4core6stringIwED2Ev.exit72, %_ZN4core6stringIwED2Ev.exit50
  %i.eh = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.s
  br i1 %i.ei, label %_ZN4core6stringIwED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.af
  %i.ej = load i64, ptr %i.s, align 8, !tbaa !106
  %i.ek = shl i64 %i.ej, 2
  %i.el = add i64 %i.ek, 4
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #25
  br label %_ZN4core6stringIwED2Ev.exit78

_ZN4core6stringIwED2Ev.exit78:                    ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4core6stringIwED2Ev.exit75, %_ZN4core6stringIwED2Ev.exit53, %bb.m
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZN4core6stringIwED2Ev.exit53 ], [ %.pn28.pn, %_ZN4core6stringIwED2Ev.exit75 ], [ %i.bi, %bb.m ]
  %i.em = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.s
  br i1 %i.en, label %_ZN4core6stringIwED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.ag
  %i.eo = load i64, ptr %i.s, align 8, !tbaa !106
  %i.ep = shl i64 %i.eo, 2
  %i.eq = add i64 %i.ep, 4
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #25
  br label %_ZN4core6stringIwED2Ev.exit81

_ZN4core6stringIwED2Ev.exit81:                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn35.pn.pn

bb.ah:                                            ; preds = %_ZN4core6stringIwED2Ev.exit78, %bb.d
  store i32 0, ptr %2, align 4, !tbaa !72
  store i32 0, ptr %3, align 4, !tbaa !72
  br label %bb.ai

bb.ai:                                            ; preds = %bb.c, %bb.a, %bb.b, %bb.ah
  %.018 = phi i1 [ true, %bb.ah ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.018
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZN3gui11CGUIEditBox14getLineFromPosEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i8, ptr %i.a, align 8, !tbaa !110, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.e = load i8, ptr %i.d, align 1, !range !96
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = lshr exact i64 %i.m, 2                   ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = ashr exact i64 %i.m, 2
  %wide.trip.count = and i64 %i.n, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.q
  br i1 %exitcond.not, label %bb.c, label %_ZN4core5arrayIiEixEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

_ZN4core5arrayIiEixEj.exit:                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !72
  %i.t = icmp sgt i32 %i.s, %1
  br i1 %i.t, label %._crit_edge.loopexit.split.loop.exit14, label %bb.d

bb.d:                                             ; preds = %_ZN4core5arrayIiEixEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond12.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond12.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit14:           ; preds = %_ZN4core5arrayIiEixEj.exit
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit.split.loop.exit14, %.preheader
  %.06.in = phi i32 [ %i.o, %.preheader ], [ %i.u, %._crit_edge.loopexit.split.loop.exit14 ], [ %i.o, %bb.d ]
  %.06 = add nsw i32 %.06.in, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.1 = phi i32 [ %.06, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core5arrayINS_6stringIwEEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ugt i64 %i.h, %i.a
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_6stringIwEEEixEj) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.a
  ret ptr %i.j
}

declare noundef i32 @_ZN2os5Timer7getTimeEv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN3gui11CGUIEditBox12sendGuiEventENS_15EGUI_EVENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  store i32 1, ptr %2, align 8, !tbaa !136
  store ptr %0, ptr %i.c, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %1, ptr %i.f, align 8, !tbaa !106
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3gui11CGUIEditBox11onKeyUpDownERKN6SEvent9SKeyInputERiS5_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.b = load i8, ptr %i.a, align 1, !tbaa !120, !range !96, !noundef !97 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = load i8, ptr %i.d, align 8, !tbaa !110, !range !96, !noundef !97
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 137438953408
  %.not54 = icmp eq i64 %i.n, 0
  br i1 %.not54, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !147  ; 5 uses
  %i.q = icmp eq i32 %i.p, 40
  %i.r = icmp eq i32 %i.p, 34
  %i.s = or i1 %i.q, %i.r
  %i.t = select i1 %i.s, i32 1, i32 -1            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !119  ; 6 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread51, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.x = load i8, ptr %i.w, align 8, !tbaa !110, !range !96, !noundef !97
  %i.y = or i8 %i.x, %i.b
  %or.cond.i.not = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  br i1 %or.cond.i.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ad = zext i32 %i.t to i64                    ; 4 uses
  switch i32 %i.p, label %.thread51 [
    i32 40, label %.lr.ph.split.us.split.us
    i32 34, label %.lr.ph.split.us.split.us
  ]

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 5
  %i.ak = trunc i64 %i.aj to i32
  %.not.us.us = icmp sgt i32 %i.ak, 1
  br i1 %.not.us.us, label %.lr.ph.split.us.split.us.split, label %.split.us.thread

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not127 = icmp eq ptr %i.al, %i.am
  %i.ar = icmp ugt i64 %i.aq, %i.ad
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ad
  br i1 %.not127, label %.split75.us, label %.lr.ph.split.us.split.us.split.split

.lr.ph.split.us.split.us.split.split:             ; preds = %.lr.ph.split.us.split.us.split
  %i.at = load i32, ptr %i.am, align 4, !tbaa !72 ; 3 uses
  %i.au = ashr exact i64 %i.ai, 5
  %i.av = icmp ugt i64 %i.au, %i.ad
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ad
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.av, label %.lr.ph.split.us.split.us.split.split.split, label %.split77.us

.lr.ph.split.us.split.us.split.split.split:       ; preds = %.lr.ph.split.us.split.us.split.split
  br i1 %i.ar, label %.lr.ph.split.us.split.us.split.split.split.split, label %.split79.us

.lr.ph.split.us.split.us.split.split.split.split: ; preds = %.lr.ph.split.us.split.us.split.split.split
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !75
  %i.az = trunc i64 %i.ay to i32                  ; 3 uses
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !72 ; 3 uses
  %xtraiter215 = and i32 %4, 1
  %i.bb = icmp eq i32 %4, 1
  br i1 %i.bb, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.epil.preheader, label %.lr.ph.split.us.split.us.split.split.split.split.new

.lr.ph.split.us.split.us.split.split.split.split.new: ; preds = %.lr.ph.split.us.split.us.split.split.split.split
  %unroll_iter219 = and i32 %4, -2
  %invariant.op238 = sub i32 %i.ba, %i.at
  br label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us: ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us, %.lr.ph.split.us.split.us.split.split.split.split.new
  %.03269.us.us = phi i32 [ %i.v, %.lr.ph.split.us.split.us.split.split.split.split.new ], [ %i.bd, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us ]
  %niter220 = phi i32 [ 0, %.lr.ph.split.us.split.us.split.split.split.split.new ], [ %niter220.next.1, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us ]
  %i.bc = sub nsw i32 %.03269.us.us, %i.at
  %.sroa.speculated42.us.us = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.az)
  %.sroa.speculated.us.us = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us, i32 0)
  %.reass239 = add i32 %.sroa.speculated.us.us, %invariant.op238
  %.sroa.speculated42.us.us.1 = tail call i32 @llvm.smin.i32(i32 %.reass239, i32 %i.az)
  %.sroa.speculated.us.us.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us.1, i32 0)
  %i.bd = add nsw i32 %.sroa.speculated.us.us.1, %i.ba ; 3 uses
  %niter220.next.1 = add nuw i32 %niter220, 2     ; 2 uses
  %niter220.ncmp.1 = icmp eq i32 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %.thread51.loopexit.unr-lcssa, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us, !llvm.loop !185

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 6 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = ashr exact i64 %i.bi, 2                 ; 5 uses
  %wide.trip.count.i = and i64 %i.bj, 2147483647
  br i1 %i.bl, label %.preheader.i.us.a, label %.lr.ph.split.split

.preheader.i.us.a:                                ; preds = %.lr.ph.split, %bb.j
  %.03170.us93.a = phi i32 [ %i.co, %bb.j ], [ 0, %.lr.ph.split ] ; 3 uses
  %.03269.us94.a = phi i32 [ %i.cn, %bb.j ], [ %i.v, %.lr.ph.split ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i.us.a
  %indvars.iv.i.us.a = phi i64 [ 0, %.preheader.i.us.a ], [ %indvars.iv.next.i.us.a, %bb.f ] ; 4 uses
  %exitcond.not.i.us.a = icmp eq i64 %indvars.iv.i.us.a, %i.bm
  br i1 %exitcond.not.i.us.a, label %.split101.us, label %_ZN4core5arrayIiEixEj.exit.i.us.a

_ZN4core5arrayIiEixEj.exit.i.us.a:                ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.us.a
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.bp = icmp sgt i32 %i.bo, %.03269.us94.a
  br i1 %i.bp, label %._crit_edge.loopexit.split.loop.exit14.i.us.a, label %bb.f

bb.f:                                             ; preds = %_ZN4core5arrayIiEixEj.exit.i.us.a
  %indvars.iv.next.i.us.a = add nuw nsw i64 %indvars.iv.i.us.a, 1 ; 2 uses
  %exitcond12.not.i.us.a = icmp eq i64 %indvars.iv.next.i.us.a, %wide.trip.count.i
  br i1 %exitcond12.not.i.us.a, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a, label %bb.e, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit14.i.us.a:    ; preds = %_ZN4core5arrayIiEixEj.exit.i.us.a
  %i.bq = trunc nuw nsw i64 %indvars.iv.i.us.a to i32
  br label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a: ; preds = %bb.f, %._crit_edge.loopexit.split.loop.exit14.i.us.a
  %.06.in.i.us.a = phi i32 [ %i.bq, %._crit_edge.loopexit.split.loop.exit14.i.us.a ], [ %i.bk, %bb.f ] ; 3 uses
  %.06.i.us.a = add nsw i32 %.06.in.i.us.a, -1    ; 2 uses
  switch i32 %i.p, label %bb.h [
    i32 40, label %bb.g
    i32 34, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a
  %5 = load ptr, ptr %i.aa, align 8, !tbaa !112
  %6 = load ptr, ptr %i.z, align 8, !tbaa !111
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 5
  %11 = trunc i64 %10 to i32
  %.not.us95 = icmp slt i32 %.06.in.i.us.a, %11
  br i1 %.not.us95, label %bb.i, label %.split.us

bb.h:                                             ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us.a
  %i.br = icmp slt i32 %.06.in.i.us.a, 2
  br i1 %i.br, label %.thread.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bs = zext i32 %.06.i.us.a to i64             ; 2 uses
  %i.bt = icmp ugt i64 %i.bm, %i.bs
  br i1 %i.bt, label %_ZN4core5arrayIiEixEj.exit.us96, label %.split75.us

_ZN4core5arrayIiEixEj.exit.us96:                  ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bs
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !72
  %i.bw = sub nsw i32 %.03269.us94.a, %i.bv
  %i.bx = add nsw i32 %.06.i.us.a, %i.t
  %i.by = zext i32 %i.bx to i64                   ; 4 uses
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 5
  %i.cf = icmp ugt i64 %i.ce, %i.by
  br i1 %i.cf, label %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97, label %.split77.us

_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97:     ; preds = %_ZN4core5arrayIiEixEj.exit.us96
  %i.cg = icmp ugt i64 %i.bm, %i.by
  br i1 %i.cg, label %bb.j, label %.split79.us

bb.j:                                             ; preds = %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.by
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !75
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.by
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72
  %.sroa.speculated42.us98 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.ck)
  %.sroa.speculated.us99 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us98, i32 0)
  %i.cn = add nsw i32 %.sroa.speculated.us99, %i.cm ; 2 uses
  %i.co = add nuw i32 %.03170.us93.a, 1           ; 2 uses
  %exitcond147.not = icmp eq i32 %i.co, %4
  br i1 %exitcond147.not, label %.thread51, label %.preheader.i.us.a, !llvm.loop !185

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.06.i = add nsw i32 %i.bk, -1                  ; 2 uses
  %i.cp = zext i32 %.06.i to i64                  ; 2 uses
  %i.cq = add nsw i32 %.06.i, %i.t
  %i.cr = zext i32 %i.cq to i64                   ; 4 uses
  switch i32 %i.p, label %.thread51 [
    i32 40, label %.lr.ph.split.split.split.us
    i32 34, label %.lr.ph.split.split.split.us
  ]

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = lshr exact i64 %i.cw, 5
  %i.cy = trunc i64 %i.cx to i32
  %.not.us113 = icmp sgt i32 %i.cy, %i.bk
  br i1 %.not.us113, label %.lr.ph.split.split.split.us.split, label %.split.us.thread

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.cz = icmp ugt i64 %i.bm, %i.cp
  %i.da = icmp ugt i64 %i.bm, %i.cr
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cr
  br i1 %i.cz, label %.lr.ph.split.split.split.us.split.split, label %.split75.us

.lr.ph.split.split.split.us.split.split:          ; preds = %.lr.ph.split.split.split.us.split
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cp
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !72 ; 3 uses
  %i.de = ashr exact i64 %i.cw, 5
  %i.df = icmp ugt i64 %i.de, %i.cr
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  br i1 %i.df, label %.lr.ph.split.split.split.us.split.split.split, label %.split77.us

.lr.ph.split.split.split.us.split.split.split:    ; preds = %.lr.ph.split.split.split.us.split.split
  br i1 %i.da, label %.lr.ph.split.split.split.us.split.split.split.split, label %.split79.us

.lr.ph.split.split.split.us.split.split.split.split: ; preds = %.lr.ph.split.split.split.us.split.split.split
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !75
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !72 ; 3 uses
  %xtraiter = and i32 %4, 1
  %i.dl = icmp eq i32 %4, 1
  br i1 %i.dl, label %.preheader.i.us110.epil.preheader, label %.lr.ph.split.split.split.us.split.split.split.split.new

.lr.ph.split.split.split.us.split.split.split.split.new: ; preds = %.lr.ph.split.split.split.us.split.split.split.split
  %unroll_iter = and i32 %4, -2
  %invariant.op = sub i32 %i.dk, %i.dd
  br label %.preheader.i.us110

.preheader.i.us110:                               ; preds = %.preheader.i.us110, %.lr.ph.split.split.split.us.split.split.split.split.new
  %.03269.us112 = phi i32 [ %i.v, %.lr.ph.split.split.split.us.split.split.split.split.new ], [ %i.dn, %.preheader.i.us110 ]
  %niter = phi i32 [ 0, %.lr.ph.split.split.split.us.split.split.split.split.new ], [ %niter.next.1, %.preheader.i.us110 ]
  %i.dm = sub nsw i32 %.03269.us112, %i.dd
  %.sroa.speculated42.us116 = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dj)
  %.sroa.speculated.us117 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116, i32 0)
  %.reass = add i32 %.sroa.speculated.us117, %invariant.op
  %.sroa.speculated42.us116.1 = tail call i32 @llvm.smin.i32(i32 %.reass, i32 %i.dj)
  %.sroa.speculated.us117.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116.1, i32 0)
  %i.dn = add nsw i32 %.sroa.speculated.us117.1, %i.dk ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread51.loopexit211.unr-lcssa, label %.preheader.i.us110, !llvm.loop !185

.split101.us:                                     ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.split.us:                                        ; preds = %bb.g
  %i.do = icmp eq i32 %.03170.us93.a, 0
  br i1 %i.do, label %.split.us.thread, label %.thread51

.split.us.thread:                                 ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.us, %.split.us
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !75
  %i.dr = trunc i64 %i.dq to i32
  br label %.thread51

.thread.loopexit:                                 ; preds = %bb.h
  %i.ds = icmp eq i32 %.03170.us93.a, 0
  %i.dt = select i1 %i.ds, i32 0, i32 %.03269.us94.a
  br label %.thread51

.split75.us:                                      ; preds = %bb.i, %.lr.ph.split.split.split.us.split, %.lr.ph.split.us.split.us.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.split77.us:                                      ; preds = %_ZN4core5arrayIiEixEj.exit.us96, %.lr.ph.split.split.split.us.split.split, %.lr.ph.split.us.split.us.split.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_6stringIwEEEixEj) #30
  unreachable

.split79.us:                                      ; preds = %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97, %.lr.ph.split.split.split.us.split.split.split, %.lr.ph.split.us.split.us.split.split.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.thread51.loopexit.unr-lcssa:                     ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.thread51, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.epil.preheader

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.epil.preheader: ; preds = %.thread51.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.split.split.split.split
  %.03269.us.us.epil.init = phi i32 [ %i.v, %.lr.ph.split.us.split.us.split.split.split.split ], [ %i.bd, %.thread51.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.du = sub nsw i32 %.03269.us.us.epil.init, %i.at
  %.sroa.speculated42.us.us.epil = tail call i32 @llvm.smin.i32(i32 %i.du, i32 %i.az)
  %.sroa.speculated.us.us.epil = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us.epil, i32 0)
  %i.dv = add nsw i32 %.sroa.speculated.us.us.epil, %i.ba
  br label %.thread51

.thread51.loopexit211.unr-lcssa:                  ; preds = %.preheader.i.us110
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread51, label %.preheader.i.us110.epil.preheader

.preheader.i.us110.epil.preheader:                ; preds = %.thread51.loopexit211.unr-lcssa, %.lr.ph.split.split.split.us.split.split.split.split
  %.03269.us112.epil.init = phi i32 [ %i.v, %.lr.ph.split.split.split.us.split.split.split.split ], [ %i.dn, %.thread51.loopexit211.unr-lcssa ]
  %lcmp.mod214 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.dw = sub nsw i32 %.03269.us112.epil.init, %i.dd
  %.sroa.speculated42.us116.epil = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dj)
  %.sroa.speculated.us117.epil = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116.epil, i32 0)
  %i.dx = add nsw i32 %.sroa.speculated.us117.epil, %i.dk
  br label %.thread51

.thread51:                                        ; preds = %.preheader.i.us110.epil.preheader, %.thread51.loopexit211.unr-lcssa, %bb.j, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.epil.preheader, %.thread51.loopexit.unr-lcssa, %.lr.ph.split.us, %.thread.loopexit, %.lr.ph.split.split, %bb.d, %.split.us, %.split.us.thread
  %.4 = phi i32 [ %i.cn, %bb.j ], [ %.03269.us94.a, %.split.us ], [ %i.dr, %.split.us.thread ], [ %i.v, %bb.d ], [ %i.dv, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.epil.preheader ], [ 0, %.lr.ph.split.split ], [ 0, %.lr.ph.split.us ], [ %i.dt, %.thread.loopexit ], [ %i.bd, %.thread51.loopexit.unr-lcssa ], [ %i.dn, %.thread51.loopexit211.unr-lcssa ], [ %i.dx, %.preheader.i.us110.epil.preheader ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 4
  %i.ea = and i8 %i.dz, 2
  %.not34 = icmp eq i8 %i.ea, 0
  br i1 %.not34, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread51
  store i32 0, ptr %2, align 4, !tbaa !72
  store i32 0, ptr %3, align 4, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread51
  %i.eb = icmp sgt i32 %.4, -1
  br i1 %i.eb, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !75
  %i.ee = trunc i64 %i.ed to i32
  %.not35 = icmp sgt i32 %.4, %i.ee
  br i1 %.not35, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = load i8, ptr %i.dy, align 4
  %i.eg = and i8 %i.ef, 2
  %.not36 = icmp eq i8 %i.eg, 0
  br i1 %.not36, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !137
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !138
  %i.el = icmp eq i32 %i.ei, %i.ek
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.em = load i32, ptr %i.u, align 8, !tbaa !119
  store i32 %i.em, ptr %2, align 4, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 %.4, ptr %3, align 4, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  store i32 %.4, ptr %i.u, align 8, !tbaa !119
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.m, %bb.r, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.r ], [ true, %bb.m ], [ true, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gui11CGUIEditBox15onKeyBackDeleteERKN6SEvent9SKeyInputE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 14 uses
  %3 = alloca %"class.core::string", align 8      ; 9 uses
  %4 = alloca %"class.core::string", align 8      ; 10 uses
  %5 = alloca %"class.core::string", align 8      ; 9 uses
  %6 = alloca %"class.core::string", align 8      ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !75
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.j = load i8, ptr %i.i, align 4, !tbaa !80, !range !96, !noundef !97
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !75
  store i32 0, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.o = load i32, ptr %i.n, align 4, !tbaa !137  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = load i32, ptr %i.p, align 8, !tbaa !138  ; 3 uses
  %.not = icmp eq i32 %i.o, %i.q
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %. = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q) ; 3 uses
  %i.r = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.q) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK4core6stringIwE9subStringEjib(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 0, i32 noundef %., i1 noundef zeroext false)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4core6stringIwEaSERKS1_.exit unwind label %bb.j

_ZN4core6stringIwEaSERKS1_.exit:                  ; preds = %bb.f
  %i.s = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIwEaSERKS1_.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !106
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 4
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.x) #25
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZN4core6stringIwEaSERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = load i64, ptr %i.f, align 8, !tbaa !75
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub i32 %i.z, %i.r
  invoke void @_ZNK4core6stringIwE9subStringEjib(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %i.r, i32 noundef %i.aa, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !75
  %i.ae = sub i64 1152921504606846975, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %bb.h, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ag = load ptr, ptr %4, align 8, !tbaa !77
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZN4core6stringIwE6appendERKS1_.exit unwind label %bb.l ; 0 uses

_ZN4core6stringIwE6appendERKS1_.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN4core6stringIwED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i37: ; preds = %_ZN4core6stringIwE6appendERKS1_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.am = shl i64 %i.al, 2
  %i.an = add i64 %i.am, 4
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.an) #25
  br label %_ZN4core6stringIwED2Ev.exit39

_ZN4core6stringIwED2Ev.exit39:                    ; preds = %_ZN4core6stringIwE6appendERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4core6stringIwEaSERKS1_.exit41 unwind label %bb.o

_ZN4core6stringIwEaSERKS1_.exit41:                ; preds = %_ZN4core6stringIwED2Ev.exit39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %., ptr %i.ao, align 8, !tbaa !119
  br label %_ZN4core6stringIwEaSERKS1_.exit61

bb.i:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core6stringIwED2Ev.exit44

bb.j:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4core6stringIwED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !106
  %i.av = shl i64 %i.au, 2
  %i.aw = add i64 %i.av, 4
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.aw) #25
  br label %_ZN4core6stringIwED2Ev.exit44

_ZN4core6stringIwED2Ev.exit44:                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42, %bb.i
  %.pn29 = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42 ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ab

bb.k:                                             ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core6stringIwED2Ev.exit47
end_hunk_0
