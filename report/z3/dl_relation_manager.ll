Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_relation_manager?download=true
inline.NumInlined: 1890
inline.NumDeleted: 739
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7datalog16relation_manager24mk_permutation_rename_fnERKNS_13relation_baseEPKj:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnE, i64 16), ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.thread.i, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.thread.i:    ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !tbaa !409
  br label %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i:           ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !409
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i
  %wide.trip.count.i.i.i = zext i32 %i.m to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.n = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %i.v, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i.i
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !77
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %.noexc.i, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

.noexc.i:                                         ; preds = %bb.c, %.lr.ph.i.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !409 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !77
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %.noexc.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.w = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !77
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !77
  %i.ab = add i32 %i.w, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !77
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit, label %.lr.ph.i.i.i, !llvm.loop !18

_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit: ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.thread.i, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !423
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !424
  br label %bb.d

bb.d:                                             ; preds = %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE29default_permutation_rename_fnC2ERKNS_13relation_baseEPKj.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111 ; 3 uses
  %.not26 = icmp eq ptr %i.g, %i.i
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %i.n = icmp eq ptr %.0, null
  %i.o = icmp ne ptr %3, null
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !405, !nonnull !110, !align !111 ; 4 uses
  %.not27 = icmp eq ptr %i.p, %i.r
  br i1 %.not27, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111
  %.not28 = icmp eq ptr %i.s, %i.r
  br i1 %.not28, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %3)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d
  %.1 = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ %.0, %bb.d ], [ %i.f, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager11mk_widen_fnERKNS_13relation_baseES3_PS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111 ; 3 uses
  %.not31 = icmp eq ptr %i.g, %i.i
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %i.n = icmp eq ptr %.0, null
  %i.o = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !405, !nonnull !110, !align !111 ; 4 uses
  %.not32 = icmp eq ptr %i.p, %i.r
  br i1 %.not32, label %.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111
  %.not33 = icmp eq ptr %i.s, %i.r
  br i1 %.not33, label %.thread37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi ptr [ %i.w, %bb.g ], [ %.0, %bb.d ]   ; 2 uses
  %.not34 = icmp eq ptr %.1, null
  br i1 %.not34, label %..thread37_crit_edge, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit

..thread37_crit_edge:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !405
  br label %.thread37

.thread37:                                        ; preds = %..thread37_crit_edge, %bb.e, %bb.f
  %i.x = phi ptr [ %.pre, %..thread37_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %4 = phi i1 [ %i.o, %..thread37_crit_edge ], [ true, %bb.f ], [ true, %bb.e ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3), !inline_history !594 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.i, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit

bb.i:                                             ; preds = %.thread37
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111 ; 3 uses
  %.not26.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %3), !inline_history !594
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ null, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ai = icmp eq ptr %.0.i, null
  %or.cond.i = and i1 %4, %i.ai
  br i1 %or.cond.i, label %bb.l, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !405, !nonnull !110, !align !111 ; 4 uses
  %.not27.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not27.i, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !405, !nonnull !110, !align !111
  %.not28.i = icmp eq ptr %i.am, %i.al
  br i1 %.not28.i, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %3), !inline_history !594
  br label %_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit

_ZN7datalog16relation_manager11mk_union_fnERKNS_13relation_baseES3_PS2_.exit: ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %.thread37, %bb.h
  %.2 = phi ptr [ %.1, %bb.h ], [ %i.ab, %.thread37 ], [ %i.aq, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ %.0.i, %bb.k ], [ %i.f, %bb.a ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager22mk_filter_identical_fnERKNS_13relation_baseEjPKj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %2, ptr noundef %3)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager18mk_filter_equal_fnERKNS_13relation_baseERKP3appj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager30mk_select_equal_and_project_fnERKNS_13relation_baseERKP3appj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3), !inline_history !595 ; 5 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !405, !nonnull !110, !align !111 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef 1, ptr noundef nonnull %i.a), !inline_history !425 ; 2 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %_Z7deallocIN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager44default_relation_select_equal_and_project_fnE, i64 16), ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.l, ptr %i.s, align 8, !tbaa !408
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.t, align 8, !tbaa !428
  br label %bb.e

_Z7deallocIN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnEEvPT_.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #26, !inline_history !19
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_Z7deallocIN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnEEvPT_.exit, %bb.d, %bb.a
  %.2 = phi ptr [ %i.g, %bb.a ], [ null, %bb.b ], [ %i.r, %bb.d ], [ null, %_Z7deallocIN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnEEvPT_.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN7datalog16relation_manager40try_mk_default_filter_by_intersection_fnERKNS_13relation_baseES3_jPKjS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.svector.42, align 8          ; 8 uses
  %7 = alloca %"class.datalog::scoped_rel", align 8 ; 7 uses
  %8 = alloca %"class.datalog::scoped_rel.182", align 8 ; 5 uses
  %9 = alloca %"class.datalog::scoped_rel.184", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !409
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit29, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit29

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit29:           ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %bb.c
  %.0.i28 = phi i32 [ %i.j, %bb.c ], [ 0, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit ]
  invoke void @_ZN7datalog12add_sequenceEjjR7svectorIjjE(i32 noundef %.0.i, i32 noundef %.0.i28, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.k = load ptr, ptr %6, align 8, !tbaa !409    ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.d, %bb.e
  %.0.i30 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.d ]
  %i.o = invoke noundef ptr @_ZN7datalog16relation_manager18mk_join_project_fnERKNS_13relation_baseES3_jPKjS5_jS5_b(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %.0.i30, ptr noundef %i.k, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h       ; 9 uses

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  store ptr %i.o, ptr %7, align 8, !tbaa !430
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZN7datalog10scoped_relINS_17tr_infrastructureINS_15relation_traitsEE7join_fnEED2Ev.exit, label %bb.i

bb.g:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit29
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2)
          to label %bb.j unwind label %bb.n       ; 6 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.u, ptr %8, align 8, !tbaa !432
  %i.v = load ptr, ptr %1, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.u)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %bb.m unwind label %bb.o       ; 4 uses

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %7, align 8, !tbaa !430
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager39default_relation_intersection_filter_fnE, i64 16), ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.o, ptr %i.aa, align 8, !tbaa !416
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !435
end_hunk_0
begin_hunk_1_@_ZN7datalog16relation_manager24mk_permutation_rename_fnERKNS_10table_baseEPKj:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !381  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorImLb0EjE4sizeEv.exit.thread.i, label %_ZNK6vectorImLb0EjE4sizeEv.exit.i

_ZNK6vectorImLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !tbaa !409
  br label %_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit

_ZNK6vectorImLb0EjE4sizeEv.exit.i:                ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !409
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit.i
  %wide.trip.count.i.i.i = zext i32 %i.m to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.n = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %i.v, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i.i
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !77
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %.noexc.i, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

.noexc.i:                                         ; preds = %bb.c, %.lr.ph.i.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !409 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !77
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %.noexc.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.w = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !77
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !77
  %i.ab = add i32 %i.w, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !77
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit, label %.lr.ph.i.i.i, !llvm.loop !18

_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit: ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %_ZNK6vectorImLb0EjE4sizeEv.exit.thread.i, %_ZNK6vectorImLb0EjE4sizeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !451
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !452
  br label %bb.d

bb.d:                                             ; preds = %_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %_ZN7datalog17tr_infrastructureINS_12table_traitsEE29default_permutation_rename_fnC2ERKNS_10table_baseEPKj.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.thread36

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111 ; 3 uses
  %.not27 = icmp eq ptr %i.g, %i.i
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %i.n = icmp eq ptr %.0, null
  %i.o = icmp ne ptr %3, null
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389, !nonnull !110, !align !111 ; 4 uses
  %.not28 = icmp eq ptr %i.p, %i.r
  br i1 %.not28, label %.thread33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111
  %.not29 = icmp eq ptr %i.s, %i.r
  br i1 %.not29, label %.thread33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi ptr [ %i.w, %bb.g ], [ %.0, %bb.d ]   ; 2 uses
  %.not30 = icmp eq ptr %.1, null
  br i1 %.not30, label %.thread33, label %.thread36

.thread33:                                        ; preds = %bb.e, %bb.f, %bb.h
  %i.x = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager22default_table_union_fnE, i64 16), ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !381
  br label %.thread36

.thread36:                                        ; preds = %bb.a, %.thread33, %bb.h
  %.2 = phi ptr [ %.1, %bb.h ], [ %i.x, %.thread33 ], [ %i.f, %bb.a ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager11mk_widen_fnERKNS_10table_baseES3_PS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111 ; 3 uses
  %.not31 = icmp eq ptr %i.g, %i.i
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %i.n = icmp eq ptr %.0, null
  %i.o = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389, !nonnull !110, !align !111 ; 4 uses
  %.not32 = icmp eq ptr %i.p, %i.r
  br i1 %.not32, label %.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111
  %.not33 = icmp eq ptr %i.s, %i.r
  br i1 %.not33, label %.thread37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi ptr [ %i.w, %bb.g ], [ %.0, %bb.d ]   ; 2 uses
  %.not34 = icmp eq ptr %.1, null
  br i1 %.not34, label %..thread37_crit_edge, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit

..thread37_crit_edge:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !389
  br label %.thread37

.thread37:                                        ; preds = %..thread37_crit_edge, %bb.e, %bb.f
  %i.x = phi ptr [ %.pre, %..thread37_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %4 = phi i1 [ %i.o, %..thread37_crit_edge ], [ true, %bb.f ], [ true, %bb.e ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3), !inline_history !601 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.i, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit

bb.i:                                             ; preds = %.thread37
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111 ; 3 uses
  %.not27.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3), !inline_history !601
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ null, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ai = icmp eq ptr %.0.i, null
  %or.cond.i = and i1 %4, %i.ai
  br i1 %or.cond.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !389, !nonnull !110, !align !111 ; 4 uses
  %.not28.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not28.i, label %.thread33.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !389, !nonnull !110, !align !111
  %.not29.i = icmp eq ptr %i.am, %i.al
  br i1 %.not29.i, label %.thread33.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %3), !inline_history !601
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.1.i = phi ptr [ %i.aq, %bb.n ], [ %.0.i, %bb.k ] ; 2 uses
  %.not30.i = icmp eq ptr %.1.i, null
  br i1 %.not30.i, label %.thread33.i, label %_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit

.thread33.i:                                      ; preds = %bb.o, %bb.m, %bb.l
  %i.ar = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager22default_table_union_fnE, i64 16), ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !381
  br label %_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit

_ZN7datalog16relation_manager11mk_union_fnERKNS_10table_baseES3_PS2_.exit: ; preds = %bb.a, %.thread33.i, %bb.o, %.thread37, %bb.h
  %.2 = phi ptr [ %.1, %bb.h ], [ %i.ab, %.thread37 ], [ %.1.i, %bb.o ], [ %i.ar, %.thread33.i ], [ %i.f, %bb.a ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager22mk_filter_identical_fnERKNS_10table_baseEjPKj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN7datalog16relation_manager33default_table_filter_identical_fnC2EjPKj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48) ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7datalog16relation_manager33default_table_filter_identical_fnE, i64 16), ptr %i.g, align 8, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager33default_table_filter_identical_fnE, i64 80), ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %2, ptr %i.j, align 8, !tbaa !456
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !409
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %_ZN7datalog16relation_manager33default_table_filter_identical_fnC2EjPKj.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %wide.trip.count.i.i.i = zext i32 %2 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.l = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %i.t, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.i.i
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !77   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !409 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !77
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %.noexc.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.u = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.m, align 4, !tbaa !77
  store i32 %i.y, ptr %i.x, align 4, !tbaa !77
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !77
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN7datalog16relation_manager33default_table_filter_identical_fnC2EjPKj.exit, label %.lr.ph.i.i.i, !llvm.loop !18

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7datalog16relation_manager25auxiliary_table_filter_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #26
  resume { ptr, i32 } %i.aa

_ZN7datalog16relation_manager33default_table_filter_identical_fnC2EjPKj.exit: ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager18mk_filter_equal_fnERKNS_10table_baseERKmj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389, !nonnull !110, !align !111 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7datalog16relation_manager29default_table_filter_equal_fnE, i64 16), ptr %i.g, align 8, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager29default_table_filter_equal_fnE, i64 80), ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i64, ptr %2, align 8, !tbaa !386
  store i64 %i.k, ptr %i.j, align 8, !tbaa !458
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %3, ptr %i.l, align 8, !tbaa !459
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog16relation_manager24mk_filter_interpreted_fnERKNS_10table_baseEP3app(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109, !nonnull !110, !align !111 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389, !nonnull !110, !align !111 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN7datalog16relation_manager33default_table_filter_not_equal_fn2mkERNS_7contextEP4expr(ptr noundef nonnull align 8 dereferenceable(3028) %i.b, ptr noundef %2) ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 136) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !381  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK6vectorImLb0EjE4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit

_ZNK6vectorImLb0EjE4sizeEv.exit:                  ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN7datalog16relation_manager35default_table_filter_interpreted_fnC2ERNS_7contextEjP3app(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(3028) %i.b, i32 noundef %.0.i, ptr noundef %2)
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZNK6vectorImLb0EjE4sizeEv.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.j, %_ZNK6vectorImLb0EjE4sizeEv.exit ], [ %i.h, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog16relation_manager33default_table_filter_not_equal_fn2mkERNS_7contextEP4expr(ptr noundef nonnull align 8 dereferenceable(3028) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.datalog::dl_decl_util", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !302, !nonnull !110, !align !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
end_hunk_1
