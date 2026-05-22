inline.NumInlined: 185
inline.NumDeleted: 51
begin_hunk_0_@_ZN17duckdb_libpgqueryL13makeColumnRefEPcPNS_6PGListEiPv:bb.a
  %i.g = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 24, i32 noundef 362) ; 4 uses
  %i.h = icmp eq i32 %.03347, 0
  br i1 %i.h, label %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i, label %bb.f

_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i: ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef %0)
  %i.j = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.i, ptr noundef null)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !334
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %.not8.i = icmp eq ptr %i.m, null
  br i1 %.not8.i, label %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i, %bb.e
  %.09.i = phi ptr [ %i.t, %bb.e ], [ %i.m, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i ] ; 3 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !9
  %i.o = load i32, ptr %i.n, align 4, !tbaa !272
  %i.p = icmp eq i32 %i.o, 360
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.185, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %.not.i36 = icmp eq ptr %i.t, null
  br i1 %.not.i36, label %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit, label %.lr.ph.i, !llvm.loop !636

_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit: ; preds = %bb.e, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %1, ptr %i.u, align 8, !tbaa !479
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZN17duckdb_libpgquery14list_copy_tailEPKNS_6PGListEi(ptr noundef nonnull %1, i32 noundef %.03347) ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.v, null
  br i1 %.not.i.i37, label %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44, label %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i38

_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i38: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74   ; 2 uses
  %.not8.i39 = icmp eq ptr %i.x, null
  br i1 %.not8.i39, label %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i38, %bb.i
  %.09.i41 = phi ptr [ %i.ae, %bb.i ], [ %i.x, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i38 ] ; 3 uses
  %i.y = load ptr, ptr %.09.i41, align 8, !tbaa !9
  %i.z = load i32, ptr %i.y, align 4, !tbaa !272
  %i.aa = icmp eq i32 %i.z, 360
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i40
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i41, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %.not7.i43 = icmp eq ptr %i.ac, null
  br i1 %.not7.i43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.185, ptr noundef %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i40
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i41, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ae, null
  br i1 %.not.i42, label %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44, label %.lr.ph.i40, !llvm.loop !636

_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44: ; preds = %bb.i, %bb.f, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit.i38
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.v, ptr %i.af, align 8, !tbaa !479
  %i.ag = tail call noundef ptr @_ZN17duckdb_libpgquery13list_truncateEPNS_6PGListEi(ptr noundef nonnull %1, i32 noundef %.03347)
  %i.ah = tail call noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef %0)
  %i.ai = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.ah, ptr noundef %i.ag)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !334
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.03248, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %.not35 = icmp eq ptr %i.al, null
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.185, ptr noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j
  %i.am = add nuw nsw i32 %.03347, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.03248, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !658

._crit_edge:                                      ; preds = %bb.l, %bb.a, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit
  %i.ap = tail call noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef %0)
  %i.aq = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.ap, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit, %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44, %._crit_edge
  %.sink61 = phi ptr [ %i.a, %._crit_edge ], [ %i.g, %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44 ], [ %i.g, %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit ] ; 2 uses
  %.sink = phi ptr [ %i.aq, %._crit_edge ], [ %i.a, %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit44 ], [ %i.a, %_ZN17duckdb_libpgqueryL17check_indirectionEPNS_6PGListEPv.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !150
  ret ptr %.sink61
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN17duckdb_libpgqueryL15check_func_nameEPNS_6PGListEPv(ptr noundef readonly returned captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %._crit_edge, label %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit

_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit, %bb.c
  %.07 = phi ptr [ %i.g, %bb.c ], [ %i.b, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit ] ; 2 uses
  %i.c = load ptr, ptr %.07, align 8, !tbaa !9
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %i.e = icmp eq i32 %i.d, 220
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.177, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !659

._crit_edge:                                      ; preds = %bb.c, %bb.a, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN17duckdb_libpgqueryL19makeStringConstCastEPKciPNS_10PGTypeNameE(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 358) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 220, ptr %i.b, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.d, align 8, !tbaa !154
  %i.e = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 366) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !439
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !441
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !442
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 -1, ptr %i.i, align 4, !tbaa !443
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN17duckdb_libpgqueryL14makeBoolAConstEbi(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 358) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 220, ptr %i.b, align 8, !tbaa !151
  %i.c = select i1 %0, ptr @.str.186, ptr @.str.187
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.e, align 8, !tbaa !154
  %i.f = tail call noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef nonnull @.str.70)
  %i.g = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.f, ptr noundef null)
  %i.h = tail call noundef ptr @_ZN17duckdb_libpgquery24makeTypeNameFromNameListEPNS_6PGListE(ptr noundef %i.g)
  %i.i = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 366) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !439
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.k, align 8, !tbaa !441
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !442
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 -1, ptr %i.m, align 4, !tbaa !443
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN17duckdb_libpgqueryL10makeAConstEPNS_7PGValueEi(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !660    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i32 %i.a, label %2 [
    i32 219, label %bb.c
    i32 218, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 358) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 218, ptr %i.e, align 8, !tbaa !151
  %sext = shl i64 %i.c, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !9
  br label %bb.d

2:                                                ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %2
  %.sink10 = phi i32 [ 220, %2 ], [ %i.a, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 32, i32 noundef 358) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.sink10, ptr %i.j, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.k, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink7 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sink7, i64 24
  store i32 %1, ptr %i.l, align 8, !tbaa !154
  ret ptr %.sink7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN17duckdb_libpgqueryL23makeRecursiveViewSelectEPcPNS_6PGListEPNS_6PGNodeE(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 168, i32 noundef 234) ; 4 uses
  %i.b = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 24, i32 noundef 395) ; 4 uses
  %i.c = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 96, i32 noundef 398) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %2, ptr %i.f, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 -1, ptr %i.g, align 8, !tbaa !365
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !356
  %i.i = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.c, ptr noundef null)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 -1, ptr %i.k, align 4, !tbaa !357
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %._crit_edge, label %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit

_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit, %.lr.ph
  %.031 = phi ptr [ %i.z, %.lr.ph ], [ null, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit ]
  %.02830 = phi ptr [ %i.ab, %.lr.ph ], [ %i.m, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit ] ; 2 uses
  %i.n = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 40, i32 noundef 364) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %.02830, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.s = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 24, i32 noundef 356) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 -1, ptr %i.t, align 8, !tbaa !336
  %i.u = tail call noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef %i.r)
  %i.v = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.u, ptr noundef null)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.s, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 -1, ptr %i.y, align 8, !tbaa !111
  %i.z = tail call noundef ptr @_ZN17duckdb_libpgquery7lappendEPNS_6PGListEPv(ptr noundef %.031, ptr noundef %i.n) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02830, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !661

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit
  %.0.lcssa = phi ptr [ null, %_ZN17duckdb_libpgqueryL9list_headEPKNS_6PGListE.exit ], [ null, %bb.a ], [ %i.z, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !647
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.0.lcssa, ptr %i.ad, align 8, !tbaa !320
  %i.ae = tail call noundef ptr @_ZN17duckdb_libpgquery12makeRangeVarEPcS0_i(ptr noundef null, ptr noundef %0, i32 noundef -1)
  %i.af = tail call noundef ptr @_ZN17duckdb_libpgquery5lconsEPvPNS_6PGListE(ptr noundef %i.ae, ptr noundef null)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !325
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN17duckdb_libpgquery11parser_initEPNS_18base_yy_extra_typeE(ptr noundef writeonly captures(none) initializes((120, 128)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.a, align 8, !tbaa !13
  ret void
}

declare void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN17duckdb_libpgquery14list_copy_tailEPKNS_6PGListEi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN17duckdb_libpgquery13list_truncateEPNS_6PGListEi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN17duckdb_libpgquery12exprLocationEPKNS_6PGNodeE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN17duckdb_libpgquery12makeBoolExprENS_14PGBoolExprTypeEPNS_6PGListEi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN17duckdb_libpgquery4elogEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN17duckdb_libpgquery16list_delete_cellEPNS_6PGListEPNS_10PGListCellES3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { builtin nounwind }

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
!8 = !{!"short", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSN17duckdb_libpgquery18base_yy_extra_typeE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !20, i64 120}
!14 = !{!"_ZTSN17duckdb_libpgquery18base_yy_extra_typeE", !15, i64 0, !19, i64 80, !4, i64 84, !5, i64 88, !4, i64 96, !16, i64 104, !5, i64 112, !20, i64 120}
!15 = !{!"_ZTSN17duckdb_libpgquery18core_yy_extra_typeE", !16, i64 0, !17, i64 8, !18, i64 16, !4, i64 24, !4, i64 28, !19, i64 32, !19, i64 33, !16, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !16, i64 64, !4, i64 72, !19, i64 76, !19, i64 77}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 _ZTSN17duckdb_libpgquery13PGScanKeywordE", !12, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"p1 _ZTSN17duckdb_libpgquery6PGListE", !12, i64 0}
!21 = !{!22, !24, i64 16}
!22 = !{!"_ZTSN17duckdb_libpgquery6PGListE", !23, i64 0, !4, i64 4, !24, i64 8, !24, i64 16}
!23 = !{!"_ZTSN17duckdb_libpgquery9PGNodeTagE", !5, i64 0}
!24 = !{!"p1 _ZTSN17duckdb_libpgquery10PGListCellE", !12, i64 0}
!25 = !{!26, !4, i64 20}
!26 = !{!"_ZTSN17duckdb_libpgquery9PGRawStmtE", !23, i64 0, !27, i64 8, !4, i64 16, !4, i64 20}
!27 = !{!"p1 _ZTSN17duckdb_libpgquery6PGNodeE", !12, i64 0}
!28 = !{!26, !4, i64 16}
!29 = !{!26, !27, i64 8}
!30 = !{!31, !32, i64 8}
!31 = !{!"_ZTSN17duckdb_libpgquery16PGAlterTableStmtE", !23, i64 0, !32, i64 8, !20, i64 16, !33, i64 24, !19, i64 28}
!32 = !{!"p1 _ZTSN17duckdb_libpgquery10PGRangeVarE", !12, i64 0}
!33 = !{!"_ZTSN17duckdb_libpgquery12PGObjectTypeE", !5, i64 0}
!34 = !{!31, !20, i64 16}
!35 = !{!31, !33, i64 24}
!36 = !{!31, !19, i64 28}
!37 = !{!38, !16, i64 16}
!38 = !{!"_ZTSN17duckdb_libpgquery9PGDefElemE", !23, i64 0, !16, i64 8, !16, i64 16, !27, i64 24, !39, i64 32, !4, i64 36}
!39 = !{!"_ZTSN17duckdb_libpgquery15PGDefElemActionE", !5, i64 0}
!40 = !{!41, !4, i64 104}
!41 = !{!"_ZTSN17duckdb_libpgquery11PGColumnDefE", !23, i64 0, !16, i64 8, !42, i64 16, !4, i64 24, !19, i64 28, !19, i64 29, !19, i64 30, !19, i64 31, !5, i64 32, !27, i64 40, !27, i64 48, !5, i64 56, !32, i64 64, !43, i64 72, !4, i64 80, !20, i64 88, !20, i64 96, !4, i64 104, !44, i64 108}
!42 = !{!"p1 _ZTSN17duckdb_libpgquery10PGTypeNameE", !12, i64 0}
!43 = !{!"p1 _ZTSN17duckdb_libpgquery15PGCollateClauseE", !12, i64 0}
!44 = !{!"_ZTSN17duckdb_libpgquery14ColumnCategoryE", !5, i64 0}
!45 = !{!46, !47, i64 4}
!46 = !{!"_ZTSN17duckdb_libpgquery15PGAlterTableCmdE", !23, i64 0, !47, i64 4, !16, i64 8, !27, i64 16, !20, i64 24, !20, i64 32, !48, i64 40, !19, i64 44}
!47 = !{!"_ZTSN17duckdb_libpgquery16PGAlterTableTypeE", !5, i64 0}
!48 = !{!"_ZTSN17duckdb_libpgquery14PGDropBehaviorE", !5, i64 0}
!49 = !{!46, !20, i64 24}
!50 = !{!46, !19, i64 44}
!51 = !{!46, !16, i64 8}
!52 = !{!46, !27, i64 16}
!53 = !{!54, !55, i64 4}
!54 = !{!"_ZTSN17duckdb_libpgquery12PGConstraintE", !23, i64 0, !55, i64 4, !16, i64 8, !19, i64 16, !19, i64 17, !4, i64 20, !19, i64 24, !27, i64 32, !16, i64 40, !5, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !27, i64 104, !32, i64 112, !20, i64 120, !20, i64 128, !5, i64 136, !5, i64 137, !5, i64 138, !20, i64 144, !4, i64 152, !19, i64 156, !19, i64 157, !16, i64 160}
!55 = !{!"_ZTSN17duckdb_libpgquery12PGConstrTypeE", !5, i64 0}
!56 = !{!54, !5, i64 48}
!57 = !{!54, !20, i64 72}
!58 = !{!54, !4, i64 20}
!59 = !{!46, !48, i64 40}
!60 = !{!41, !42, i64 16}
!61 = !{!41, !43, i64 72}
!62 = !{!41, !27, i64 40}
!63 = !{!54, !16, i64 8}
!64 = !{!46, !20, i64 32}
!65 = !{!38, !39, i64 32}
!66 = !{!67, !16, i64 8}
end_hunk_0
