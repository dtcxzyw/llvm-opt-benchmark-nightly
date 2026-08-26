Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpq?download=true
inline.NumInlined: 2438
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 1073741824
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 1073741824
  %.not12 = icmp eq i32 %i.t, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.u = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %.not12, %bb.e ], [ false, %bb.a ]
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i32 noundef %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !95
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 1073741824
  %.not5 = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not5, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i32 noundef %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i32 noundef %1)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = icmp eq ptr %i.i, null
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit

_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE11most_recentEPNS2_5boundEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 536870911
  %i.d = and i32 %i.b, 536870912
  %.not = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %. = select i1 %.not, i64 24, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i32 noundef %i.c)
  %.pn = load ptr, ptr %i.g, align 8, !tbaa !50
  %.0 = icmp eq ptr %.pn, %1
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE17add_recent_boundsEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK9subpaving9context_tINS_10config_mpqEE4node18parent_trail_stackEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE4node18parent_trail_stackEv.exit

_ZNK9subpaving9context_tINS_10config_mpqEE4node18parent_trail_stackEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %storemerge7 = load ptr, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %.not8 = icmp eq ptr %storemerge7, %i.f
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE4node18parent_trail_stackEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %storemerge9 = phi ptr [ %storemerge7, %.lr.ph ], [ %storemerge, %bb.g ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge9, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, 536870911
  %i.m = and i32 %i.k, 536870912
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr %1, align 8, !tbaa !49, !nonnull !47, !align !48
  %..i = select i1 %.not.i, i64 24, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i32 noundef %i.l)
  %.pn.i = load ptr, ptr %i.p, align 8, !tbaa !50
  %.0.i = icmp eq ptr %.pn.i, %storemerge9
  br i1 %.0.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge9, i64 40
  store i64 %i.q, ptr %i.r, align 8, !tbaa !89
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !193  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE9push_backERKS5_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !37
  br label %_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE9push_backERKS5_.exit

_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE9push_backERKS5_.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %.pre2.i, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  store ptr %storemerge9, ptr %i.ad, align 8, !tbaa !50
  %i.ae = add i32 %i.z, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE9push_backERKS5_.exit, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge9, i64 48
  %storemerge = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %storemerge, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.g, %_ZNK9subpaving9context_tINS_10config_mpqEE4node18parent_trail_stackEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE18propagate_monomialEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %4 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %5 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %6 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.g = load i64, ptr %i.f, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !108  ; 4 uses
  %.not124 = icmp eq i32 %i.j, 0                  ; 2 uses
  br i1 %.not124, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread
  br i1 %.372, label %bb.i, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread ] ; 3 uses
  %.069111 = phi i1 [ false, %.lr.ph ], [ %.372, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread ] ; 5 uses
  %.073110 = phi i1 [ false, %.lr.ph ], [ %.275, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !113  ; 5 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i32 noundef %i.o)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 3 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i32 noundef %i.o)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = icmp ne ptr %i.r, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %bb.c, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.r, align 8, !tbaa !95
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.u, align 8, !tbaa !95
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 1073741824
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread

_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %.fr105 = freeze i32 %i.af
  %i.ag = and i32 %.fr105, 1073741824
  %.not12.i = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %.not12.i, i1 true, i1 %.069111
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread

_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread: ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit, %bb.b, %bb.c, %bb.d, %bb.e
  %i.ah = phi i1 [ %.069111, %bb.b ], [ %spec.select, %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit ], [ %.069111, %bb.e ], [ %.069111, %bb.d ], [ %.069111, %bb.c ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !115
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.al, 0
  %i.an = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48 ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i32 noundef %i.o)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 3 uses
  %.not.i87 = icmp eq ptr %i.ap, null
  br i1 %.not.i87, label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !95
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit, label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread

_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %.fr107 = freeze i32 %i.at
  %i.au = and i32 %.fr107, 1073741824
  %.not5.i = icmp eq i32 %i.au, 0
  %spec.select101 = select i1 %.not5.i, i1 true, i1 %i.ah
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread

bb.h:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit.thread
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i32 noundef %i.o)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit, label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread

_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit: ; preds = %bb.h
  %i.ay = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i32 noundef %i.o)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %.fr = freeze ptr %i.ba
  %i.bb = icmp eq ptr %.fr, null
  %spec.select102 = select i1 %i.bb, i1 true, i1 %.073110
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread

_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit.thread: ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit, %bb.h, %bb.f, %bb.g
  %.275 = phi i1 [ %.073110, %bb.h ], [ %.073110, %bb.f ], [ %.073110, %bb.g ], [ %.073110, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit ], [ %spec.select102, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit ] ; 2 uses
  %.372 = phi i1 [ %i.ah, %bb.h ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %spec.select101, %_ZNK9subpaving9context_tINS_10config_mpqEE13is_upper_zeroEjPNS2_4nodeE.exit ], [ %i.ah, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !240

bb.i:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %i.bd, i32 noundef %1)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 3 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.bh, i32 noundef %1)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 3 uses
  %i.bk = icmp ne ptr %i.bf, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond.i88 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i88, label %bb.j, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !95
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !95
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, 1073741824
  %.not.i89 = icmp eq i32 %i.bs, 0
  br i1 %.not.i89, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread

_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91: ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bu, 1073741824
  %.not12.i90 = icmp eq i32 %i.bv, 0
  br i1 %.not12.i90, label %.critedge, label %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread

_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !179, !nonnull !47, !align !48
  store i32 0, ptr %i.bw, align 8, !tbaa !95
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, -2
  store i8 %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
  store i32 1, ptr %i.cc, align 8, !tbaa !95
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1172 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = and i8 %i.ce, -2
  store i8 %i.cf, ptr %i.cd, align 4
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1Ej(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.cg = call noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE8mk_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull align 8 dead_on_return %4)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 6 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !193 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !37 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !37
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.n, label %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit

bb.n:                                             ; preds = %bb.m, %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91.thread
  call void @_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  %.pre.i.i = load ptr, ptr %i.ch, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !37
  br label %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit

_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit: ; preds = %bb.m, %bb.n
  %i.cp = phi i32 [ %.pre2.i.i, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i.i, %bb.n ], [ %i.ci, %bb.m ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  store ptr %i.cg, ptr %i.ct, align 8, !tbaa !50
  %i.cu = add i32 %i.cp, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !38
  %.not104 = icmp eq i32 %i.cw, -1
  br i1 %.not104, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1Ej(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.cx = call noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE8mk_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull align 8 dead_on_return %3)
  %i.cy = load ptr, ptr %i.ch, align 8, !tbaa !193 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !37 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !37
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.q, label %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit95

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  %.pre.i.i92 = load ptr, ptr %i.ch, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i.i93 = getelementptr inbounds i8, ptr %.pre.i.i92, i64 -4
  %.pre2.i.i94 = load i32, ptr %.phi.trans.insert.i.i93, align 4, !tbaa !37
  br label %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit95

_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit95: ; preds = %bb.p, %bb.q
  %i.df = phi i32 [ %.pre2.i.i94, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i92, %bb.q ], [ %i.cy, %bb.p ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %i.cx, ptr %i.dj, align 8, !tbaa !50
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.critedge

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.073.lcssa145 = phi i1 [ %.275, %._crit_edge ], [ false, %bb.a ]
  %i.dl = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(12) %i.dm, i32 noundef %1)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.r, label %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit

bb.r:                                             ; preds = %._crit_edge.thread
  %i.dq = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(12) %i.dr, i32 noundef %1)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.du = icmp eq ptr %i.dt, null
  br label %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit

_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit: ; preds = %._crit_edge.thread, %bb.r
  %i.dv = phi i1 [ false, %._crit_edge.thread ], [ %i.du, %bb.r ]
  br i1 %.073.lcssa145, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE25propagate_monomial_upwardEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK9subpaving9context_tINS_10config_mpqEE4node12is_unboundedEj.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !38
  %i.dy = icmp ne i32 %i.dx, -1
  %brmerge = or i1 %i.dv, %i.dy
  br i1 %brmerge, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  br i1 %.not124, label %.critedge, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count129 = zext i32 %i.j to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph118, %bb.x
  %indvars.iv126 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next127, %bb.x ] ; 3 uses
  %.065115 = phi i32 [ -1, %.lr.ph118 ], [ %.1, %bb.x ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv126
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !113
  store i8 1, ptr %i.dz, align 8, !tbaa !92
  store ptr %2, ptr %i.eb, align 8, !tbaa !97
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !98
  %i.eg = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13contains_zeroERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(728) %i.ed, ptr noundef nonnull align 8 dereferenceable(98) %i.dz)
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not = icmp eq i32 %.065115, -1
  %i.eh = trunc nuw i64 %indvars.iv126 to i32
  br i1 %.not, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1 = phi i32 [ %.065115, %bb.v ], [ %i.eh, %bb.w ] ; 3 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.critedge82, label %bb.v, !llvm.loop !241

.critedge82:                                      ; preds = %bb.x
  %i.ei = icmp eq i32 %.1, -1
  br i1 %i.ei, label %.lr.ph122, label %bb.z

.lr.ph122:                                        ; preds = %.critedge82, %bb.y
  %.0121 = phi i32 [ %i.ek, %bb.y ], [ 0, %.critedge82 ] ; 2 uses
  %i.ej = load i32, ptr %i.dw, align 8, !tbaa !38
  %.not103 = icmp eq i32 %i.ej, -1
  br i1 %.not103, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.lr.ph122
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE27propagate_monomial_downwardEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %.0121)
  %i.ek = add nuw i32 %.0121, 1                   ; 2 uses
  %exitcond131.not = icmp eq i32 %i.ek, %i.j
  br i1 %exitcond131.not, label %.critedge, label %.lr.ph122, !llvm.loop !242

bb.z:                                             ; preds = %.critedge82
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE27propagate_monomial_downwardEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %.1)
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.y, %.lr.ph122, %bb.u, %bb.z, %bb.t, %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit95, %_ZN9subpaving9context_tINS_10config_mpqEE15propagate_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE.exit, %_ZNK9subpaving9context_tINS_10config_mpqEE7is_zeroEjPNS2_4nodeE.exit91
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE25propagate_monomial_upwardEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %4 = alloca %class.mpz, align 8                 ; 6 uses
  %5 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %6 = alloca %class.mpz, align 8                 ; 6 uses
  %7 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %8 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !108  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 4 uses
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  store i8 0, ptr %i.j, align 8, !tbaa !92
  %.not54 = icmp eq i32 %i.g, 0
  br i1 %.not54, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %wide.trip.count = zext i32 %i.g to i64
  %i.o = load i32, ptr %i.k, align 4, !tbaa !113
  store i8 1, ptr %i.i, align 8, !tbaa !92
  store ptr %2, ptr %i.l, align 8, !tbaa !97
  store i32 %i.o, ptr %i.m, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !115
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5powerERKNS3_8intervalEjRS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(98) %i.i, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(98) %i.j)
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.j)
  %exitcond.peel.not = icmp eq i32 %i.g, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.s = load i8, ptr %i.r, align 8, !tbaa !104, !range !103, !noundef !47
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.c

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !113
  store i8 1, ptr %i.i, align 8, !tbaa !92
  store ptr %2, ptr %i.l, align 8, !tbaa !97
  store i32 %i.v, ptr %i.m, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !115
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5powerERKNS3_8intervalEjRS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(98) %i.i, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(98) %i.j)
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3mulERKNS3_8intervalES8_RS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.j, ptr noundef nonnull align 8 dereferenceable(98) %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !243

bb.c:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1305 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !178, !range !103, !noundef !47
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %_ZN9subpaving9context_tINS_10config_mpqEE15normalize_boundEjR3mpqbRb.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  %i.am = load i32, ptr %i.ah, align 8
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.aa, align 1, !tbaa !178
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !179, !nonnull !47, !align !48 ; 2 uses
  tail call void @_ZN11mpq_managerILb0EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  store i32 1, ptr %i.ah, align 8, !tbaa !95
  %i.aq = load i8, ptr %i.ai, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ai, align 4
  %i.as = load i8, ptr %i.aa, align 1, !tbaa !178, !range !103, !noundef !47
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %_ZN9subpaving9context_tINS_10config_mpqEE15normalize_boundEjR3mpqbRb.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.aa, align 1, !tbaa !178
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !179, !nonnull !47, !align !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 1, ptr %6, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, -4
  store i8 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !96
end_hunk_0
begin_hunk_1_@_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE7xn_eq_yERKNS3_8intervalEjRK3mpqRS6_:bb.a
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = and i8 %i.bz, 1
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.split.i, label %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.h
  %i.cc = load i32, ptr %i.ba, align 8, !tbaa !95
  %i.cd = load i32, ptr %i.az, align 8, !tbaa !95
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.i, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit

_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i:       ; preds = %bb.h, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread
  %i.cf = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.i, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit

bb.i:                                             ; preds = %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i, %.split.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ck = load i8, ptr %i.cj, align 4
  %i.cl = and i8 %i.ck, 1
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.ch, align 8, !tbaa !95
  %i.cs = load i32, ptr %i.ci, align 8, !tbaa !95
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cu = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
  %i.cv = icmp eq i32 %i.cu, 0
  br label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit

_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit:         ; preds = %bb.l, %bb.k, %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i, %.split.i, %.split30, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit
  %i.cw = phi i1 [ false, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit ], [ false, %.split30 ], [ false, %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i ], [ false, %.split.i ], [ %i.ct, %bb.k ], [ %i.cv, %bb.l ]
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i8 0, ptr %i.cx, align 8, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 0, ptr %i.cy, align 8, !tbaa !105
  %i.cz = zext i1 %i.cw to i8                     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 57
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !106
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 97
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !107
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 4
  %i.dh = and i8 %i.dg, 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit
  %i.dj = load i32, ptr %i.az, align 8, !tbaa !95
  store i32 %i.dj, ptr %i.de, align 8, !tbaa !95
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4
  %i.dm = and i8 %i.dl, -2
  store i8 %i.dm, ptr %i.dk, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.n:                                             ; preds = %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.n, %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 4
  %i.dr = and i8 %i.dq, 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.dt = load i32, ptr %i.do, align 8, !tbaa !95
  store i32 %i.dt, ptr %i.dn, align 8, !tbaa !95
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4
  %i.dw = and i8 %i.dv, -2
  store i8 %i.dw, ptr %i.du, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.p:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.do)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.o, %bb.p
  %i.dx = load ptr, ptr %i.dc, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.dz = load i8, ptr %i.df, align 4
  %i.ea = and i8 %i.dz, 1
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %i.ec = load i32, ptr %i.az, align 8, !tbaa !95
  store i32 %i.ec, ptr %i.dy, align 8, !tbaa !95
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 4
  %i.ef = and i8 %i.ee, -2
  store i8 %i.ef, ptr %i.ed, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i27

bb.r:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i27

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i27:   ; preds = %bb.r, %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.eh = load i8, ptr %i.dp, align 4
  %i.ei = and i8 %i.eh, 1
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i27
  %i.ek = load i32, ptr %i.do, align 8, !tbaa !95
  store i32 %i.ek, ptr %i.eg, align 8, !tbaa !95
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, -2
  store i8 %i.en, ptr %i.el, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit28

bb.t:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i27
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.do)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit28

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit28:     ; preds = %bb.s, %bb.t
  %i.eo = load ptr, ptr %i.dc, align 8, !tbaa !101, !nonnull !47, !align !48
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE8nth_rootERKNS3_8intervalEjRK3mpqRS6_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(98) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(98) %4)
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit28, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE20propagate_polynomialEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.g = load i64, ptr %i.f, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !80
  %i.i = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i32 noundef %1)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread, label %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread

_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i32 noundef %1)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %.fr = freeze ptr %i.q
  %i.r = icmp eq ptr %.fr, null
  %spec.select = select i1 %i.r, i32 %1, i32 -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %.not4066.not = icmp eq i32 %i.t, 0
  br i1 %.not4066.not, label %.critedge.sink.split, label %.lr.ph

_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !118  ; 2 uses
  %.not4066.not84 = icmp eq i32 %i.v, 0
  br i1 %.not4066.not84, label %.critedge.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread
  %i.w = phi i32 [ %i.v, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread ], [ %i.t, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread ] ; 2 uses
  %i.x = phi i32 [ -1, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread ], [ %spec.select, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread58
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread58 ] ; 2 uses
  %.13867 = phi i32 [ %i.x, %.lr.ph ], [ %6, %.thread58 ] ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37 ; 3 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i32 noundef %i.ac)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit45, label %.thread58

_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit45: ; preds = %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i32 noundef %i.ac)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %.fr62 = freeze ptr %i.aj
  %3 = icmp ne ptr %.fr62, null                   ; 2 uses
  %.not.a = icmp eq i32 %.13867, -1               ; 2 uses
  %brmerge = select i1 %3, i1 true, i1 %.not.a
  %4 = xor i1 %.not.a, true
  %5 = select i1 %3, i1 true, i1 %4
  %.138.mux = select i1 %5, i32 %.13867, i32 %i.ac
  br i1 %brmerge, label %.thread58, label %.critedge

.thread58:                                        ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit45, %bb.b
  %6 = phi i32 [ %.138.mux, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit45 ], [ %.13867, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !248

._crit_edge:                                      ; preds = %.thread58
  %.not41 = icmp eq i32 %6, -1
  br i1 %.not41, label %.lr.ph72, label %.critedge.sink.split

.lr.ph72:                                         ; preds = %._crit_edge
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE20propagate_polynomialEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %wide.trip.count79 = zext i32 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph72, %bb.d
  %indvars.iv76 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next77, %bb.d ] ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !38
  %.not61 = icmp eq i32 %i.am, -1
  br i1 %.not61, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv76
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE20propagate_polynomialEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %i.ap)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.critedge, label %bb.c, !llvm.loop !249

.critedge.sink.split:                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread, %._crit_edge, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread
  %.sink = phi i32 [ %6, %._crit_edge ], [ %1, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread ], [ %1, %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit.thread ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE20propagate_polynomialEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %.sink)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK9subpaving9context_tINS_10config_mpqEE12is_unboundedEjPNS2_4nodeE.exit45, %bb.c, %bb.d, %.critedge.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE20propagate_polynomialEjPNS2_4nodeEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %5 = alloca %class.mpz, align 8                 ; 6 uses
  %6 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %8 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %9 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !118  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 9 uses
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 7 uses
  store i8 0, ptr %i.j, align 8, !tbaa !92
  %i.k = icmp eq i32 %1, %3
  br i1 %i.k, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not93 = icmp eq i32 %i.g, 0
  br i1 %.not93, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %wide.trip.count98 = zext i32 %i.g to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37
  store i8 1, ptr %i.i, align 8, !tbaa !92
  store ptr %2, ptr %i.m, align 8, !tbaa !97
  store i32 %i.r, ptr %i.n, align 8, !tbaa !98
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !122
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE7div_mulERK3mpqRKNS3_8intervalERS9_b(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(98) %i.i, ptr noundef nonnull align 8 dereferenceable(98) %i.j, i1 noundef zeroext false)
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.j)
  %exitcond99.peel.not = icmp eq i32 %i.g, 1
  br i1 %exitcond99.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv95
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  store i8 1, ptr %i.i, align 8, !tbaa !92
  store ptr %2, ptr %i.m, align 8, !tbaa !97
  store i32 %i.v, ptr %i.n, align 8, !tbaa !98
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %indvars.iv95
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE7div_mulERK3mpqRKNS3_8intervalERS9_b(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(98) %i.i, ptr noundef nonnull align 8 dereferenceable(98) %i.j, i1 noundef zeroext false)
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3addERKNS3_8intervalES8_RS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.j, ptr noundef nonnull align 8 dereferenceable(98) %i.h)
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.peel.next, !llvm.loop !250

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.i, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  store ptr %2, ptr %i.y, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  store i32 %1, ptr %i.z, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.i)
  %.not92 = icmp eq i32 %i.g, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1172 ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit, %bb.c
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE7div_mulERK3mpqRKNS3_8intervalERS9_b(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.h, i1 noundef zeroext true)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit ] ; 4 uses
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37 ; 2 uses
  %.not = icmp eq i32 %i.ak, %3
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !92
  store ptr %2, ptr %i.y, align 8, !tbaa !97
  store i32 %i.ak, ptr %i.z, align 8, !tbaa !98
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE7div_mulERK3mpqRKNS3_8intervalERS9_b(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(98) %i.i, ptr noundef nonnull align 8 dereferenceable(98) %i.j, i1 noundef zeroext false)
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3subERKNS3_8intervalES8_RS6_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(98) %i.h, ptr noundef nonnull align 8 dereferenceable(98) %i.j, ptr noundef nonnull align 8 dereferenceable(98) %i.h)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !179, !nonnull !47, !align !48 ; 2 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !95
  store i32 %i.au, ptr %i.aa, align 8, !tbaa !95
  %i.av = load i8, ptr %i.af, align 4
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.af, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !95
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !95
  %i.bd = load i8, ptr %i.ah, align 4
  %i.be = and i8 %i.bd, -2
  store i8 %i.be, ptr %i.ah, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.j:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.j, %bb.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !251

.loopexit:                                        ; preds = %.peel.next, %bb.b, %.preheader, %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !104, !range !103, !noundef !47
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1305 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34
  %i.bm = zext i32 %3 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !178, !range !103, !noundef !47
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %_ZN9subpaving9context_tINS_10config_mpqEE15normalize_boundEjR3mpqbRb.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = load i32, ptr %i.br, align 8
  %i.bx = icmp eq i32 %i.bw, 1
  %i.by = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.bj, align 1, !tbaa !178
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !179, !nonnull !47, !align !48 ; 2 uses
  tail call void @_ZN11mpq_managerILb0EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
  store i32 1, ptr %i.br, align 8, !tbaa !95
  %i.ca = load i8, ptr %i.bs, align 4
  %i.cb = and i8 %i.ca, -2
  store i8 %i.cb, ptr %i.bs, align 4
  %i.cc = load i8, ptr %i.bj, align 1, !tbaa !178, !range !103, !noundef !47
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.o, label %_ZN9subpaving9context_tINS_10config_mpqEE15normalize_boundEjR3mpqbRb.exit
end_hunk_1
begin_hunk_2_@_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE5boundELb0EjE13expand_vectorEv:bb.a
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !193
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN9subpaving9context_tINS0_10config_mpqEE4ineqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !199
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !190
  %i.r = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !14
  %i.y = load i64, ptr %i.s, align 8, !tbaa !20
  store i64 %i.y, ptr %i.q, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !19
  store ptr %i.s, ptr %1, align 8, !tbaa !14
  store i64 0, ptr %i.aa, align 8, !tbaa !19
  store i8 0, ptr %i.s, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !199
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqEN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !355

_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !336

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_T1_(ptr noundef %0, ptr noundef %i.o, ptr noundef %1, ptr noundef %.sroa.12.0)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = shl i64 %.sroa.5.0, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #21
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_EC2ES6_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !192

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqEN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = shl i64 %.sroa.5.0, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.023.i)
  %i.g = shl nuw nsw i64 %.023.i, 1
  tail call void @_ZSt17__merge_sort_loopIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr noundef %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.023.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit, !llvm.loop !356

_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i19, label %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit21

.lr.ph.i19:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit, %.lr.ph.i19
  %.023.i20 = phi i64 [ %i.p, %.lr.ph.i19 ], [ 7, %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.023.i20)
  %i.o = shl nuw nsw i64 %.023.i20, 1
  tail call void @_ZSt17__merge_sort_loopIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr noundef %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.023.i20, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i19, label %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit21, !llvm.loop !356

_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit21: ; preds = %.lr.ph.i19, %_ZSt24__merge_sort_with_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElS6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqEN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  %.017.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %1
  %or.cond = select i1 %i.f, i1 true, i1 %.not18.i
  br i1 %or.cond, label %common.ret29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i ], [ %.017.i, %bb.b ] ; 6 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i ], [ %0, %bb.b ] ; 4 uses
  %i.g = load ptr, ptr %.020.i, align 8, !tbaa !83 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !8
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = ptrtoint ptr %.020.i to i64
  %i.m = sub i64 %i.l, %i.b                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !336

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.q = sub nsw i64 0, %i.n
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.m, i1 false)
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.m, 8
  br i1 %i.s, label %bb.f, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store ptr %i.h, ptr %i.t, align 8, !tbaa !83
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %.pn19.i, align 8, !tbaa !83 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !8
  %i.w = icmp ult i32 %i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.x = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.u, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.g ]
  store ptr %i.x, ptr %.0912.i.i, align 8, !tbaa !83
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %.0.i.i, align 8, !tbaa !83 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp ult i32 %i.i, %i.z
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i, !llvm.loop !357

_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.020.i, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store ptr %i.g, ptr %.sink.i, align 8, !tbaa !83
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret29, label %.lr.ph.i, !llvm.loop !358

common.ret29:                                     ; preds = %bb.b, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i, %bb.h
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ab = lshr i64 %i.d, 1                        ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqEN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %i.ac)
  tail call void @_ZSt21__inplace_stable_sortIPPN9subpaving9context_tINS0_10config_mpqEE4ineqEN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_(ptr noundef %i.ac, ptr noundef %1)
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.a, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  tail call void @_ZSt22__merge_without_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_(ptr noundef %0, ptr noundef %i.ac, ptr noundef %1, i64 noundef %i.ab, i64 noundef %i.af)
  br label %common.ret29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3
  tail call void @_ZSt23__merge_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElS6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_T1_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: nobuiltin nounwind allocsize(0)
end_hunk_2
begin_hunk_3_@_ZSt17__merge_sort_loopIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_T0_T1_T2_:bb.a
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.050, %.lr.ph.i.preheader ] ; 2 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = load ptr, ptr %.01922.i, align 8, !tbaa !83 ; 2 uses
  %i.x = load ptr, ptr %.01823.i, align 8, !tbaa !83 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !8
  %i.z = load i32, ptr %i.x, align 8, !tbaa !8
  %i.aa = icmp ult i32 %i.y, %i.z                 ; 3 uses
  %.sink.i = select i1 %i.aa, ptr %i.w, ptr %i.x
  %.120.idx.i = select i1 %i.aa, i64 8, i64 0
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 5 uses
  %.1.idx.i = select i1 %i.aa, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 5 uses
  store ptr %.sink.i, ptr %.024.i, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ac = icmp ne ptr %.1.i, %i.u
  %i.ad = icmp ne ptr %.120.i, %i.v
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !364

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = ptrtoint ptr %.1.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !336

bb.g:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %.1.i, i64 %i.ah, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.loopexit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.i, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %.1.i, align 8, !tbaa !83
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %i.ah ; 3 uses
  %i.am = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.an = ptrtoint ptr %.120.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !336

bb.j:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %.120.i, i64 %i.ao, i1 false)
  br label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit

bb.k:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %bb.l, label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %.120.i, align 8, !tbaa !83
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !83
  br label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit

_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ao ; 2 uses
  %i.at = sub i64 %i.b, %i.am
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %.not = icmp slt i64 %i.au, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !363

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit.us, %bb.a
  %.020.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.as, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.v, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit ] ; 3 uses
  %.lcssa46 = phi i64 [ %i.e, %bb.a ], [ %i.t, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.au, %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa46) ; 2 uses
  %.idx44 = shl nsw i64 %.sroa.speculated, 3
  %i.av = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx44 ; 5 uses
  %i.aw = icmp ne i64 %.sroa.speculated, 0
  %i.ax = icmp ne ptr %i.av, %1
  %i.ay = and i1 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i28, label %._crit_edge.i23

.lr.ph.i28:                                       ; preds = %._crit_edge, %.lr.ph.i28
  %.024.i29 = phi ptr [ %i.be, %.lr.ph.i28 ], [ %.020.lcssa, %._crit_edge ] ; 2 uses
  %.01823.i30 = phi ptr [ %.1.i36, %.lr.ph.i28 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.01922.i31 = phi ptr [ %.120.i34, %.lr.ph.i28 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %.01922.i31, align 8, !tbaa !83 ; 2 uses
  %i.ba = load ptr, ptr %.01823.i30, align 8, !tbaa !83 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !8
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !8
  %i.bd = icmp ult i32 %i.bb, %i.bc               ; 3 uses
  %.sink.i32 = select i1 %i.bd, ptr %i.az, ptr %i.ba
  %.120.idx.i33 = select i1 %i.bd, i64 8, i64 0
  %.120.i34 = getelementptr inbounds nuw i8, ptr %.01922.i31, i64 %.120.idx.i33 ; 3 uses
  %.1.idx.i35 = select i1 %i.bd, i64 0, i64 8
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.01823.i30, i64 %.1.idx.i35 ; 3 uses
  store ptr %.sink.i32, ptr %.024.i29, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %.024.i29, i64 8 ; 2 uses
  %i.bf = icmp ne ptr %.1.i36, %i.av
  %i.bg = icmp ne ptr %.120.i34, %1
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph.i28, label %._crit_edge.i23, !llvm.loop !364

._crit_edge.i23:                                  ; preds = %.lr.ph.i28, %._crit_edge
  %.019.lcssa.i24 = phi ptr [ %i.av, %._crit_edge ], [ %.120.i34, %.lr.ph.i28 ] ; 3 uses
  %.018.lcssa.i25 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i36, %.lr.ph.i28 ] ; 3 uses
  %.0.lcssa.i26 = phi ptr [ %.020.lcssa, %._crit_edge ], [ %i.be, %.lr.ph.i28 ] ; 3 uses
  %i.bi = ptrtoint ptr %i.av to i64
  %i.bj = ptrtoint ptr %.018.lcssa.i25 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !336

bb.m:                                             ; preds = %._crit_edge.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i26, ptr align 8 %.018.lcssa.i25, i64 %i.bk, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27

bb.n:                                             ; preds = %._crit_edge.i23
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.o, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %.018.lcssa.i25, align 8, !tbaa !83
  store ptr %i.bn, ptr %.0.lcssa.i26, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27: ; preds = %bb.o, %bb.n, %bb.m
  %i.bo = getelementptr inbounds i8, ptr %.0.lcssa.i26, i64 %i.bk ; 2 uses
  %i.bp = ptrtoint ptr %.019.lcssa.i24 to i64
  %i.bq = sub i64 %i.b, %i.bp                     ; 3 uses
  %i.br = icmp sgt i64 %i.bq, 8
  br i1 %i.br, label %bb.p, label %bb.q, !prof !336

bb.p:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr align 8 %.019.lcssa.i24, i64 %i.bq, i1 false)
  br label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit37

bb.q:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit.i27
  %i.bs = icmp eq i64 %i.bq, 8
  br i1 %i.bs, label %bb.r, label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit37

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %.019.lcssa.i24, align 8, !tbaa !83
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !83
  br label %_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit37

_ZSt12__move_mergeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEET0_T_SD_SD_SD_SC_T1_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond71 = or i1 %i.a, %i.b
  br i1 %or.cond71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6876 = phi i64 [ %4, %.lr.ph ], [ %i.az, %tailrecurse ] ; 4 uses
  %.tr6775 = phi i64 [ %3, %.lr.ph ], [ %i.ay, %tailrecurse ] ; 4 uses
  %.tr6573 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 7 uses
  %.tr72 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr6876, %.tr6775
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr6573, align 8, !tbaa !83 ; 2 uses
  %i.g = load ptr, ptr %.tr72, align 8, !tbaa !83 ; 2 uses
  %i.h = load i32, ptr %i.f, align 8, !tbaa !8
  %i.i = load i32, ptr %i.g, align 8, !tbaa !8
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %.tr72, align 8, !tbaa !83
  store ptr %i.g, ptr %.tr6573, align 8, !tbaa !83
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr6775, %.tr6876
  %i.l = ptrtoint ptr %.tr6573 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr6775, 2                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.tr72, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  br label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.p, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr6573, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.w = load i32, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp ult i32 %i.w, %i.s                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = xor i64 %i.t, -1
  %i.aa = add nsw i64 %.017.i, %i.z
  %.112.i = select i1 %i.x, ptr %i.y, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.x, i64 %i.aa, i64 %i.t     ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !365

_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ac = sub i64 %.pre-phi, %i.l
  %i.ad = ashr exact i64 %i.ac, 3
  br label %tailrecurse

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.ae = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.tr6573, i64 %i.ae ; 2 uses
  %i.ag = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.ah = sub i64 %i.l, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8
  br label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi i64 [ %i.ai, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi ptr [ %.tr72, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.am = lshr i64 %.017.i46, 1                   ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.01116.i47, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !8
  %i.aq = icmp ult i32 %i.al, %i.ap               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = xor i64 %i.am, -1
  %i.at = add nsw i64 %.017.i46, %i.as
  %.112.i50 = select i1 %i.aq, ptr %.01116.i47, ptr %i.ar ; 3 uses
  %.1.i51 = select i1 %i.aq, i64 %i.am, i64 %i.at ; 2 uses
  %i.au = icmp sgt i64 %.1.i51, 0
  br i1 %i.au, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !366

_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.ag, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.011.lcssa.i43 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.av = sub i64 %.pre-phi80, %i.ag
  %i.aw = ashr exact i64 %i.av, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit
  %.062 = phi ptr [ %i.n, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %.011.lcssa.i43, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.af, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.ad, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ae, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.aw, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %i.ax = tail call noundef ptr @_ZNSt3_V28__rotateIPPN9subpaving9context_tINS1_10config_mpqEE4ineqEEET_S8_S8_S8_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElN9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.ax, i64 noundef %.0, i64 noundef %.036)
  %i.ay = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.az = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.ba = icmp eq i64 %i.ay, 0
  %i.bb = icmp eq i64 %i.az, 0
  %or.cond = or i1 %i.ba, %i.bb
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPPN9subpaving9context_tINS1_10config_mpqEE4ineqEEET_S8_S8_S8_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.s
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec176, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.w = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x ptr>, ptr %next.gep180, align 8, !tbaa !83, !alias.scope !367, !noalias !370
  %wide.load182 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !83, !alias.scope !367, !noalias !370
  %i.y = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !83, !alias.scope !370
  %wide.load184 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !83, !alias.scope !370
  store <2 x ptr> %wide.load183, ptr %next.gep180, align 8, !tbaa !83, !alias.scope !367, !noalias !370
  store <2 x ptr> %wide.load184, ptr %i.x, align 8, !tbaa !83, !alias.scope !367, !noalias !370
  store <2 x ptr> %wide.load181, ptr %next.gep179, align 8, !tbaa !83, !alias.scope !370
  store <2 x ptr> %wide.load182, ptr %i.y, align 8, !tbaa !83, !alias.scope !370
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.z, label %middle.block186, label %vector.body177, !llvm.loop !372

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.o, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.aa = load ptr, ptr %.079.i, align 8, !tbaa !83
  %i.ab = load ptr, ptr %.010.i, align 8, !tbaa !83
  store ptr %i.ab, ptr %.079.i, align 8, !tbaa !83
  store ptr %i.aa, ptr %.010.i, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !373

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.058, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !83
  br label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 3
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.058, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !83, !alias.scope !374, !noalias !377
  %wide.load139 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !83, !alias.scope !374, !noalias !377
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !83, !alias.scope !377
  %wide.load141 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !83, !alias.scope !377
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !83, !alias.scope !374, !noalias !377
  store <2 x ptr> %wide.load141, ptr %i.aw, align 8, !tbaa !83, !alias.scope !374, !noalias !377
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !83, !alias.scope !377
  store <2 x ptr> %wide.load139, ptr %i.ax, align 8, !tbaa !83, !alias.scope !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.be, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPPN9subpaving9context_tINS1_10config_mpqEE4ineqEEET_S8_S8_S8_St26random_access_iterator_tag:bb.a
  %.idx = shl nsw i64 %.086, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !336

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.058, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.058, align 8, !tbaa !83
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !83
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.058, align 8, !tbaa !83
  br label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.082, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check150 = icmp ult i64 %.082, 6
  br i1 %min.iters.check150, label %.lr.ph.preheader192, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.086, %.082
  %i.cq = shl i64 %i.cp, 3
  %scevgep145 = getelementptr i8, ptr %.058, i64 %i.cq
  %bound0146 = icmp ult ptr %.058, %i.cc
  %bound1147 = icmp ult ptr %scevgep145, %i.cn
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.preheader192, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec152 = and i64 %.082, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec152, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %i.cu = mul i64 %index154, -8                   ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep156, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep156, i64 -32 ; 2 uses
  %wide.load157 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !83, !alias.scope !382, !noalias !385
  %wide.load158 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !83, !alias.scope !382, !noalias !385
  %i.cx = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep155, i64 -32 ; 2 uses
  %wide.load159 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !83, !alias.scope !385
  %wide.load160 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !83, !alias.scope !385
  store <2 x ptr> %wide.load159, ptr %i.cv, align 8, !tbaa !83, !alias.scope !382, !noalias !385
  store <2 x ptr> %wide.load160, ptr %i.cw, align 8, !tbaa !83, !alias.scope !382, !noalias !385
  store <2 x ptr> %wide.load157, ptr %i.cx, align 8, !tbaa !83, !alias.scope !385
  store <2 x ptr> %wide.load158, ptr %i.cy, align 8, !tbaa !83, !alias.scope !385
  %index.next161 = add nuw i64 %index154, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.cz, label %middle.block162, label %vector.body153, !llvm.loop !387

middle.block162:                                  ; preds = %vector.body153
  %cmp.n163 = icmp eq i64 %.082, %n.vec152
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader192

.lr.ph.preheader192:                              ; preds = %vector.memcheck144, %.lr.ph.preheader, %middle.block162
  %.0105.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.preheader ], [ %n.vec152, %middle.block162 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cc, %vector.memcheck144 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block162 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.cn, %vector.memcheck144 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block162 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader192, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader192 ]
  %.052104.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader192 ]
  %.260103.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader192 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader192 ]
  %i.da = getelementptr inbounds i8, ptr %.260103.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.052104.prol, i64 -8 ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !83
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !83
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !83
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !83
  %i.de = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !388

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader192
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader192 ], [ %i.de, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader192 ], [ %i.db, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader192 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.0105.ph, %.082
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block162, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %middle.block162 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !389

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.dy, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.dv, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.du, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.260103, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !83
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !83
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !83
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !83
  %i.dm = getelementptr inbounds i8, ptr %.260103, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !83
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !83
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !83
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !83
  %i.dq = getelementptr inbounds i8, ptr %.260103, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.052104, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !83
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !83
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !83
  %i.du = getelementptr inbounds i8, ptr %.260103, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.052104, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !83
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !83
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !83
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !83
  %i.dy = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !390

_ZSt11swap_rangesIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block186, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block186 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElS6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ap, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.079, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.ao, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.aq, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElS6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr83.lcssa, ptr noundef %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.079, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  br label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr8393, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8
  %i.o = icmp ult i32 %i.n, %i.j                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = xor i64 %i.k, -1
  %i.r = add nsw i64 %.017.i, %i.q
  %.112.i = select i1 %i.o, ptr %i.p, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.o, i64 %i.r, i64 %i.k      ; 2 uses
  %i.s = icmp sgt i64 %.1.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !365

_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr8393, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.t = sub i64 %.pre-phi, %i.c
  %i.u = ashr exact i64 %i.t, 3
  br label %tailrecurse

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.v = sdiv i64 %.tr8695, 2                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.tr8393, i64 %i.v ; 2 uses
  %i.x = ptrtoint ptr %.tr92 to i64               ; 3 uses
  %i.y = sub i64 %i.c, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !8
  br label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.017.i64 = phi i64 [ %i.z, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i69, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %.01116.i65 = phi ptr [ %.tr92, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.112.i68, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.ad = lshr i64 %.017.i64, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.01116.i65, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !8
  %i.ah = icmp ult i32 %i.ac, %i.ag               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = xor i64 %i.ad, -1
  %i.ak = add nsw i64 %.017.i64, %i.aj
  %.112.i68 = select i1 %i.ah, ptr %.01116.i65, ptr %i.ai ; 3 uses
  %.1.i69 = select i1 %i.ah, i64 %i.ad, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i69, 0
  br i1 %i.al, label %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !366

_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.pre101 = ptrtoint ptr %.112.i68 to i64
  br label %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit

_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.x, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.011.lcssa.i61 = phi ptr [ %.112.i68, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr92, %_ZSt9__advanceIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.am = sub i64 %.pre-phi102, %i.x
  %i.an = ashr exact i64 %i.am, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit
  %.080 = phi ptr [ %i.e, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %.011.lcssa.i61, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.079 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.w, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.u, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Iter_comp_valINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ], [ %i.an, %_ZSt13__upper_boundIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES5_N9__gnu_cxx5__ops14_Val_comp_iterINS4_11lt_var_procEEEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %i.ao = sub nsw i64 %.tr8594, %.0               ; 4 uses
  %i.ap = tail call noundef ptr @_ZSt17__rotate_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lET_S7_S7_S7_T1_S8_T0_S8_(ptr noundef %.080, ptr noundef %.tr8393, ptr noundef %.079, i64 noundef %i.ao, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPPN9subpaving9context_tINS0_10config_mpqEE4ineqElS6_N9__gnu_cxx5__ops15_Iter_comp_iterINS4_11lt_var_procEEEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr noundef %.tr92, ptr noundef %.080, ptr noundef %i.ap, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.aq = sub nsw i64 %.tr8695, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ao, %6
  %.not56 = icmp sgt i64 %i.aq, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt17__rotate_adaptiveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_lET_S7_S7_S7_T1_S8_T0_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !336

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !83
  store ptr %i.g, ptr %5, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !336

bb.g:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %i.p, ptr %i.o, align 8, !tbaa !83
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !336

bb.j:                                             ; preds = %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !83
  store ptr %i.r, ptr %0, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !336

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %i.y, ptr %5, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !336

bb.s:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !83
  store ptr %i.ad, ptr %0, align 8, !tbaa !83
  br label %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38

_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !336

bb.v:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit38
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !83
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !83
  br label %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39

_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPPN9subpaving9context_tINS1_10config_mpqEE4ineqEEET_S8_S8_S8_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39, %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36
  %.0 = phi ptr [ %i.s, %_ZSt4moveIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit36 ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPN9subpaving9context_tINS0_10config_mpqEE4ineqES6_ET0_T_S8_S7_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN9subpaving9context_tINS0_10config_mpqEE7watchedELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !201    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !201
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
end_hunk_4
