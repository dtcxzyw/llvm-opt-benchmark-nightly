Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/int_gcd_test?download=true
inline.NumInlined: 601
inline.NumDeleted: 281
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2lp12int_gcd_test35fill_explanation_from_fixed_columnsERKSt6vectorINS_8row_cellI8rationalEE13std_allocatorIS4_EE:bb.a
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 12 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.by, %i.bn
  br i1 %.not29.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph37.i.i:                                     ; preds = %.preheader.i.i, %bb.i
  %.136.i.i = phi ptr [ %i.cc, %bb.i ], [ %i.am, %.preheader.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !82
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph37.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.136.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.02839.i.i, i64 12, i1 false), !tbaa.struct !85
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph37.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 12 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.cc, %i.bu
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph37.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.i, %.preheader.i.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 213, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i, %bb.h, %bb.f, %.lr.ph41.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.bm
  br i1 %.not.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.loopexit.i, label %.lr.ph41.i.i, !llvm.loop !3

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.loopexit.i: ; preds = %bb.j
  %.pre.i8 = load ptr, ptr %i.x, align 8, !tbaa !78
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.i

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.i: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.loopexit.i, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE11alloc_tableEj.exit.i
  %i.ce = phi ptr [ %.pre.i8, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.loopexit.i ], [ %i.bi, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE11alloc_tableEj.exit.i ] ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ce)
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE10move_tableEPS1_jS5_j.exit.i, %bb.k
  store ptr %i.am, ptr %i.x, align 8, !tbaa !78
  store i32 %i.aj, ptr %i.ae, align 8, !tbaa !77
  store i32 0, ptr %i.aa, align 8, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.i._crit_edge, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit
  %.pre-phi43 = phi i64 [ %.pre42, %.lr.ph.i._crit_edge ], [ %i.ak, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit ]
  %.pre-phi = phi i32 [ %.pre41, %.lr.ph.i._crit_edge ], [ %i.bk, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit ]
  %i.cg = phi i32 [ %i.ai, %.lr.ph.i._crit_edge ], [ -1, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit ] ; 2 uses
  %i.ch = phi ptr [ %.pre, %.lr.ph.i._crit_edge ], [ %i.am, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit ] ; 3 uses
  %i.ci = phi i32 [ %i.af, %.lr.ph.i._crit_edge ], [ %i.aj, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv.exit ]
  %i.cj = and i32 %.pre-phi, %i.u                 ; 3 uses
  %i.ck = zext i32 %i.cj to i64
  %.idx.i = mul nuw nsw i64 %i.ck, 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %.pre-phi43
  %.not63.i = icmp eq i32 %i.cj, %i.ci
  br i1 %.not63.i, label %.preheader.i, label %.lr.ph.i6

.preheader.i:                                     ; preds = %bb.s, %bb.l
  %.044.lcssa.i = phi ptr [ null, %bb.l ], [ %.1.i, %bb.s ]
  %.not4767.i = icmp eq i32 %i.cj, 0
  br i1 %.not4767.i, label %._crit_edge.i, label %.lr.ph70.i

.lr.ph.i6:                                        ; preds = %bb.l, %bb.s
  %.04465.i = phi ptr [ %.1.i, %bb.s ], [ null, %bb.l ] ; 4 uses
  %.04564.i = phi ptr [ %i.cz, %bb.s ], [ %i.cl, %bb.l ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.04564.i, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !82
  switch i32 %i.co, label %bb.s [
    i32 2, label %bb.m
    i32 0, label %bb.p
  ]

bb.m:                                             ; preds = %.lr.ph.i6
  %i.cp = load i32, ptr %.04564.i, align 4, !tbaa !81
  %i.cq = icmp eq i32 %i.cp, %i.u
  br i1 %i.cq, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %.04564.i, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ct = icmp eq i32 %i.cs, %i.u
  br i1 %i.ct, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.04564.i, i64 4
  store i32 2, ptr %i.cu, align 4, !tbaa !82
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit

bb.p:                                             ; preds = %.lr.ph.i6
  %.not49.i = icmp eq ptr %.04465.i, null
  br i1 %.not49.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cg, ptr %i.aa, align 8, !tbaa !76
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.043.i = phi ptr [ %.04465.i, %bb.q ], [ %.04564.i, %bb.p ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.043.i, i64 8
  store i32 %i.u, ptr %i.cv, align 4, !tbaa !86
  %i.cw = getelementptr inbounds nuw i8, ptr %.043.i, i64 4
  store i32 2, ptr %i.cw, align 4, !tbaa !82
  store i32 %i.u, ptr %.043.i, align 4, !tbaa !81
  %i.cx = load i32, ptr %i.y, align 4, !tbaa !75
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.y, align 4, !tbaa !75
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit

bb.s:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i6
  %.1.i = phi ptr [ %.04465.i, %bb.n ], [ %.04465.i, %bb.m ], [ %.04564.i, %.lr.ph.i6 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.04564.i, i64 12 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i7, label %.preheader.i, label %.lr.ph.i6, !llvm.loop !4

.lr.ph70.i:                                       ; preds = %.preheader.i, %bb.z
  %.269.i = phi ptr [ %.3.i, %bb.z ], [ %.044.lcssa.i, %.preheader.i ] ; 4 uses
  %.14668.i = phi ptr [ %i.dm, %bb.z ], [ %i.ch, %.preheader.i ] ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.14668.i, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !82
  switch i32 %i.db, label %bb.z [
    i32 2, label %bb.t
    i32 0, label %bb.w
  ]

bb.t:                                             ; preds = %.lr.ph70.i
  %i.dc = load i32, ptr %.14668.i, align 4, !tbaa !81
  %i.dd = icmp eq i32 %i.dc, %i.u
  br i1 %i.dd, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.14668.i, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !44
  %i.dg = icmp eq i32 %i.df, %i.u
  br i1 %i.dg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %.14668.i, i64 4
  store i32 2, ptr %i.dh, align 4, !tbaa !82
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit

bb.w:                                             ; preds = %.lr.ph70.i
  %.not48.i = icmp eq ptr %.269.i, null
  br i1 %.not48.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.cg, ptr %i.aa, align 8, !tbaa !76
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i = phi ptr [ %.269.i, %bb.x ], [ %.14668.i, %bb.w ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.u, ptr %i.di, align 4, !tbaa !86
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 2, ptr %i.dj, align 4, !tbaa !82
  store i32 %i.u, ptr %.0.i, align 4, !tbaa !81
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !75
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.y, align 4, !tbaa !75
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit

bb.z:                                             ; preds = %bb.u, %bb.t, %.lr.ph70.i
  %.3.i = phi ptr [ %.269.i, %bb.u ], [ %.269.i, %bb.t ], [ %.14668.i, %.lr.ph70.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.14668.i, i64 12 ; 2 uses
  %.not47.i = icmp eq ptr %i.dm, %i.cl
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.z, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 390, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit: ; preds = %bb.o, %bb.r, %bb.v, %bb.y, %._crit_edge.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dn, %i.t
  br i1 %.not.i, label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit, label %.lr.ph.i

_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj.exit, %_ZNK6vectorIjLb0EjE3endEv.exit.i, %bb.c, %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.09.030, i64 40 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.c
  br i1 %i.dp, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2lp12int_gcd_test12ext_gcd_testERKSt6vectorINS_8row_cellI8rationalEE13std_allocatorIS4_EE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.rational, align 8            ; 20 uses
  %3 = alloca %class.rational, align 8            ; 16 uses
  %4 = alloca %class.rational, align 8            ; 15 uses
  %5 = alloca %class.rational, align 8            ; 11 uses
  %6 = alloca %class.rational, align 8            ; 15 uses
  %7 = alloca %class.rational, align 8            ; 20 uses
  %8 = alloca %class.rational, align 8            ; 14 uses
  %9 = alloca %class.rational, align 8            ; 16 uses
  %10 = alloca %class.rational, align 8           ; 8 uses
  %11 = alloca %class.rational, align 8           ; 16 uses
  %12 = alloca %class.rational, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store i32 1, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 8 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !32
  %i.k = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65
  store i32 0, ptr %2, align 8, !tbaa !31
  store i8 %i.d, ptr %i.b, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  store i32 1, ptr %i.f, align 8, !tbaa !31
  %i.l = load i8, ptr %i.g, align 4
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %3, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4                          ; 2 uses
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, -4
  store i8 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !32
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !31
  store i32 %i.ac, ptr %3, align 8, !tbaa !31
  store i8 %i.q, ptr %i.o, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !31
  store i32 %i.ai, ptr %i.s, align 8, !tbaa !31
  %i.aj = load i8, ptr %i.t, align 4
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.t, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_ZN8rationalC2ERKS_.exit unwind label %bb.j

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -4                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, -4
  store i8 %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.at, align 8, !tbaa !32
  %i.au = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  %i.av = load i8, ptr %i.y, align 4
  %i.aw = and i8 %i.av, 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !31
  store i32 %i.ay, ptr %4, align 8, !tbaa !31
  store i8 %i.an, ptr %i.al, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i46

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i46 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i46: ; preds = %bb.g, %bb.f
  %i.az = load i8, ptr %i.ae, align 4
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i46
  %i.bc = load i32, ptr %i.ad, align 8, !tbaa !31
  store i32 %i.bc, ptr %i.ap, align 8, !tbaa !31
  %i.bd = load i8, ptr %i.aq, align 4
  %i.be = and i8 %i.bd, -2
  store i8 %i.be, ptr %i.aq, align 4
  br label %_ZN8rationalC2ERKS_.exit49

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i46
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_ZN8rationalC2ERKS_.exit49 unwind label %bb.k

_ZN8rationalC2ERKS_.exit49:                       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 0, ptr %5, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, -4
  store i8 %i.bh, ptr %i.bf, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 1, ptr %i.bj, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -4
  store i8 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.bn, align 8, !tbaa !32
  %i.bo = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rationalC2ERKS_.exit49
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.e, %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.l:                                             ; preds = %.lr.ph, %bb.au
  %.sroa.098.0104 = phi ptr [ %i.bo, %.lr.ph ], [ %i.hw, %bb.au ] ; 3 uses
  %i.cn = load i32, ptr %.sroa.098.0104, align 8, !tbaa !69 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.098.0104, i64 8
  %i.cp = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18
  %i.cq = invoke noundef zeroext i1 @_ZNK2lp10lar_solver15column_is_fixedEj(ptr noundef nonnull align 8 dereferenceable(152) %i.cp, i32 noundef %i.cn)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.cq, label %bb.au, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  store i32 0, ptr %7, align 8, !tbaa !31, !alias.scope !157
  %i.cs = load i8, ptr %i.bu, align 4, !alias.scope !157
  %i.ct = and i8 %i.cs, -4                        ; 2 uses
  store i8 %i.ct, ptr %i.bu, align 4, !alias.scope !157
  store ptr null, ptr %i.bv, align 8, !tbaa !32, !alias.scope !157
  store i32 1, ptr %i.bw, align 8, !tbaa !31, !alias.scope !157
  %i.cu = load i8, ptr %i.bx, align 4, !alias.scope !157
  %i.cv = and i8 %i.cu, -4
  store i8 %i.cv, ptr %i.bx, align 4, !alias.scope !157
  store ptr null, ptr %i.by, align 8, !tbaa !32, !alias.scope !157
  %i.cw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65, !noalias !157 ; 2 uses
  %i.cx = load i8, ptr %i.bz, align 4, !noalias !157
  %i.cy = and i8 %i.cx, 1
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = load i32, ptr %6, align 8, !tbaa !31, !noalias !157
  store i32 %i.da, ptr %7, align 8, !tbaa !31, !alias.scope !157
  store i8 %i.ct, ptr %i.bu, align 4, !alias.scope !157
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.ae

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.db = load i8, ptr %i.cb, align 4, !noalias !157
  %i.dc = and i8 %i.db, 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.de = load i32, ptr %i.ca, align 8, !tbaa !31, !noalias !157
  store i32 %i.de, ptr %i.bw, align 8, !tbaa !31, !alias.scope !157
  %i.df = load i8, ptr %i.bx, align 4, !alias.scope !157
  %i.dg = and i8 %i.df, -2
  store i8 %i.dg, ptr %i.bx, align 4, !alias.scope !157
  br label %_ZN8rationalC2ERKS_.exit.i

bb.t:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.ae

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.t, %bb.s
  %i.dh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65, !noalias !157
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_Z3absRK8rational.exit unwind label %13

13:                                               ; preds = %_ZN8rationalC2ERKS_.exit.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #18
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.di = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  %i.dj = load i8, ptr %i.bu, align 4
  %i.dk = and i8 %i.dj, 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

bb.u:                                             ; preds = %_Z3absRK8rational.exit
  %i.dm = load i8, ptr %i.cd, align 4
  %i.dn = and i8 %i.dm, 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %.split.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

.split.i.i:                                       ; preds = %bb.u
  %i.dp = load i32, ptr %7, align 8, !tbaa !31
  %i.dq = load i32, ptr %i.cc, align 8, !tbaa !31
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_ZeqRK8rationalS1_.exit.thread

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i:     ; preds = %bb.u, %_Z3absRK8rational.exit
  %i.ds = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.v, label %_ZeqRK8rationalS1_.exit.thread

bb.v:                                             ; preds = %.noexc52, %.split.i.i
  %i.du = load i8, ptr %i.bx, align 4
  %i.dv = and i8 %i.du, 1
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = load i8, ptr %i.cf, align 4
  %i.dy = and i8 %i.dx, 1
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %.split, label %bb.x

.split:                                           ; preds = %bb.w
  %i.ea = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.eb = load i32, ptr %i.ce, align 8, !tbaa !31
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.y, label %_ZeqRK8rationalS1_.exit.thread

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ed = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %_ZeqRK8rationalS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZeqRK8rationalS1_.exit:                          ; preds = %bb.x
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.y, label %_ZeqRK8rationalS1_.exit.thread

bb.y:                                             ; preds = %_ZeqRK8rationalS1_.exit, %.split
  %i.ef = load i32, ptr %6, align 8, !tbaa !31
  %i.eg = icmp sgt i32 %i.ef, 0
  %i.eh = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18 ; 2 uses
  br i1 %i.eg, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ei = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.eh)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !72
  %i.el = zext i32 %i.cn to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [64 x i8], ptr %i.ek, i64 %i.el
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.en = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18
  %i.eo = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.en)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !72
  %i.er = getelementptr inbounds nuw [64 x i8], ptr %i.eq, i64 %i.el
  br label %.invoke

bb.ad:                                            ; preds = %bb.o
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ae:                                            ; preds = %bb.t, %bb.r
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc62, %.lr.ph.i, %.invoke, %bb.ao, %bb.am, %.noexc60, %bb.aj, %bb.ah, %bb.af, %bb.ab, %bb.z, %bb.x, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i, %bb.ag, %bb.aa
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.y
  %i.eu = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.eh)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 112
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72
  %i.ex = zext i32 %i.cn to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw [64 x i8], ptr %i.ew, i64 %i.ex
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ey)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18
  %i.fa = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ez)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 104
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !72
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.ex
  br label %.invoke

.invoke:                                          ; preds = %bb.ac, %bb.ai
  %i.fe = phi ptr [ %i.fd, %bb.ai ], [ %i.er, %bb.ac ]
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fe)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.invoke
  %i.ff = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18
  %i.fg = invoke noundef ptr @_ZN2lp10lar_solver41get_bound_constraint_witnesses_for_columnEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ff, i32 noundef %i.cn)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.aj
  %i.fh = load ptr, ptr %i.bs, align 8, !tbaa !47, !nonnull !17, !align !18
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2lp10lar_solver7flattenEPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.fh, ptr noundef %i.fg)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43 ; 4 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit, label %_ZNK6vectorIjLb0EjE3endEv.exit.i

_ZNK6vectorIjLb0EjE3endEv.exit.i:                 ; preds = %.noexc61
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !44 ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fo
  %.not9.i = icmp eq i32 %i.fm, 0
  br i1 %.not9.i, label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit.i, %.noexc63
  %.010.i = phi ptr [ %i.fu, %.noexc63 ], [ %i.fj, %_ZNK6vectorIjLb0EjE3endEv.exit.i ] ; 2 uses
  %i.fq = load i32, ptr %.010.i, align 4, !tbaa !44
  %i.fr = load ptr, ptr %0, align 8, !tbaa !33, !nonnull !17, !align !18
  %i.fs = invoke noundef ptr @_ZN2lp10int_solver4explEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fr)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %.lr.ph.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %i.fq, ptr %i.a, align 4, !tbaa !44
  invoke void @_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj(ptr noundef nonnull align 8 dereferenceable(20) %i.ft, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.noexc62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fu = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fu, %i.fp
  br i1 %.not.i, label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit, label %.lr.ph.i

_ZeqRK8rationalS1_.exit.thread:                   ; preds = %.split.i.i, %.noexc52, %_ZeqRK8rationalS1_.exit, %.split
  %i.fv = load i32, ptr %2, align 8, !tbaa !31
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZeqRK8rationalS1_.exit.thread
  %i.fx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  %i.fy = load i8, ptr %i.bu, align 4
  %i.fz = and i8 %i.fy, 1
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gb = load i32, ptr %7, align 8, !tbaa !31
  store i32 %i.gb, ptr %2, align 8, !tbaa !31
  %i.gc = load i8, ptr %i.b, align 4
  %i.gd = and i8 %i.gc, -2
  store i8 %i.gd, ptr %i.b, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i64

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i64: ; preds = %bb.am, %bb.al
  %i.ge = load i8, ptr %i.bx, align 4
  %i.gf = and i8 %i.ge, 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i64
  %i.gh = load i32, ptr %i.bw, align 8, !tbaa !31
  store i32 %i.gh, ptr %i.f, align 8, !tbaa !31
  %i.gi = load i8, ptr %i.g, align 4
  %i.gj = and i8 %i.gi, -2
  store i8 %i.gj, ptr %i.g, align 4
  br label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit

bb.ao:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i64
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZeqRK8rationalS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  store i32 0, ptr %8, align 8, !tbaa !31, !alias.scope !158
  %i.gk = load i8, ptr %i.cg, align 4, !alias.scope !158
  %i.gl = and i8 %i.gk, -4
  store i8 %i.gl, ptr %i.cg, align 4, !alias.scope !158
  store ptr null, ptr %i.ch, align 8, !tbaa !32, !alias.scope !158
  store i32 1, ptr %i.ci, align 8, !tbaa !31, !alias.scope !158
  %i.gm = load i8, ptr %i.cj, align 4, !alias.scope !158
  %i.gn = and i8 %i.gm, -4
  store i8 %i.gn, ptr %i.cj, align 4, !alias.scope !158
  store ptr null, ptr %i.ck, align 8, !tbaa !32, !alias.scope !158
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65, !noalias !158 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i unwind label %.body67

.noexc.i:                                         ; preds = %bb.ap
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %bb.aq unwind label %.body67

.body67:                                          ; preds = %.noexc.i, %bb.ap
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp

bb.aq:                                            ; preds = %.noexc.i
  %i.gq = load i8, ptr %i.cj, align 4, !alias.scope !158 ; 2 uses
  %i.gr = load i32, ptr %2, align 8, !tbaa !44
  %i.gs = load i32, ptr %8, align 8, !tbaa !44
  store i32 %i.gs, ptr %2, align 8, !tbaa !44
  store i32 %i.gr, ptr %8, align 8, !tbaa !44
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.gu = load ptr, ptr %i.ch, align 8, !tbaa !63
  store ptr %i.gu, ptr %i.e, align 8, !tbaa !63
  store ptr %i.gt, ptr %i.ch, align 8, !tbaa !63
  %i.gv = load i8, ptr %i.b, align 4              ; 2 uses
  %i.gw = load i8, ptr %i.cg, align 4             ; 2 uses
  %i.gx = and i8 %i.gv, -4
  %i.gy = and i8 %i.gw, -4
  %i.gz = and i8 %i.gw, 3
  %i.ha = or disjoint i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.b, align 4
  %i.hb = and i8 %i.gv, 3
  %i.hc = or disjoint i8 %i.gy, %i.hb
  store i8 %i.hc, ptr %i.cg, align 4
  %i.hd = load i32, ptr %i.f, align 8, !tbaa !44
  store i32 1, ptr %i.f, align 8, !tbaa !44
  store i32 %i.hd, ptr %i.ci, align 8, !tbaa !44
  %i.he = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.hf = load ptr, ptr %i.ck, align 8, !tbaa !63
  store ptr %i.hf, ptr %i.j, align 8, !tbaa !63
  store ptr %i.he, ptr %i.ck, align 8, !tbaa !63
  %i.hg = load i8, ptr %i.g, align 4              ; 2 uses
  %i.hh = and i8 %i.gq, 2
  %i.hi = and i8 %i.hg, -4
  %i.hj = or disjoint i8 %i.hi, %i.hh
  %i.hk = and i8 %i.gq, -4
  store i8 %i.hj, ptr %i.g, align 4
  %i.hl = and i8 %i.hg, 3
  %i.hm = or disjoint i8 %i.hl, %i.hk
  store i8 %i.hm, ptr %i.cj, align 4
  %i.hn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i69 unwind label %bb.ar

.noexc.i69:                                       ; preds = %bb.aq
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %.noexc.i69, %bb.aq
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit

_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit: ; preds = %.noexc63, %bb.an, %bb.ao, %_ZNK6vectorIjLb0EjE3endEv.exit.i, %.noexc61, %_ZN8rationalD2Ev.exit
  %i.hq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i70 unwind label %bb.as

.noexc.i70:                                       ; preds = %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %_ZN8rationalD2Ev.exit71 unwind label %bb.as

bb.as:                                            ; preds = %.noexc.i70, %_ZN2lp12int_gcd_test45add_to_explanation_from_fixed_or_boxed_columnEj.exit
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #21
  unreachable

_ZN8rationalD2Ev.exit71:                          ; preds = %.noexc.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ht = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i72 unwind label %bb.at

.noexc.i72:                                       ; preds = %_ZN8rationalD2Ev.exit71
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZN8rationalD2Ev.exit73 unwind label %bb.at

bb.at:                                            ; preds = %.noexc.i72, %_ZN8rationalD2Ev.exit71
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #21
  unreachable

_ZN8rationalD2Ev.exit73:                          ; preds = %.noexc.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.m, %_ZN8rationalD2Ev.exit73
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.098.0104, i64 40 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.bq
  br i1 %i.hx, label %._crit_edge, label %bb.l

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body67
  %.pn37 = phi { ptr, i32 } [ %i.gp, %.body67 ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #18
  br label %.body

.body:                                            ; preds = %bb.ae, %13, %.loopexit.split-lp
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.loopexit.split-lp ], [ %i.et, %bb.ae ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #18
  br label %bb.av

bb.av:                                            ; preds = %.body, %bb.ad
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %.body ], [ %i.es, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.by

._crit_edge:                                      ; preds = %bb.au, %_ZN8rationalC2ERKS_.exit49
  %i.hy = load i32, ptr %2, align 8, !tbaa !31
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bt, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.bj

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  store i32 0, ptr %9, align 8, !tbaa !31, !alias.scope !159
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.ib = load i8, ptr %i.ia, align 4, !alias.scope !159
  %i.ic = and i8 %i.ib, -4
  store i8 %i.ic, ptr %i.ia, align 4, !alias.scope !159
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.id, align 8, !tbaa !32, !alias.scope !159
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store i32 1, ptr %i.ie, align 8, !tbaa !31, !alias.scope !159
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 5 uses
  %i.ig = load i8, ptr %i.if, align 4, !alias.scope !159
  %i.ih = and i8 %i.ig, -4
  store i8 %i.ih, ptr %i.if, align 4, !alias.scope !159
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.ii, align 8, !tbaa !32, !alias.scope !159
  %i.ij = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65, !noalias !159 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i74 unwind label %.body75

.noexc.i74:                                       ; preds = %bb.ax
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.ie)
          to label %bb.ay unwind label %.body75

.body75:                                          ; preds = %.noexc.i74, %bb.ax
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #18
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #18
  br label %bb.bk

bb.ay:                                            ; preds = %.noexc.i74
  store i32 1, ptr %i.ie, align 8, !tbaa !31, !alias.scope !159
  %i.il = load i8, ptr %i.if, align 4, !alias.scope !159
  %i.im = and i8 %i.il, -2
  store i8 %i.im, ptr %i.if, align 4, !alias.scope !159
  %i.in = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.in, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i77 unwind label %bb.az

.noexc.i77:                                       ; preds = %bb.ay
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.io)
          to label %_ZN8rationalD2Ev.exit78 unwind label %bb.az

bb.az:                                            ; preds = %.noexc.i77, %bb.ay
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #21
  unreachable

_ZN8rationalD2Ev.exit78:                          ; preds = %.noexc.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ba unwind label %bb.bl

bb.ba:                                            ; preds = %_ZN8rationalD2Ev.exit78
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  store i32 0, ptr %11, align 8, !tbaa !31, !alias.scope !160
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.is = load i8, ptr %i.ir, align 4, !alias.scope !160
  %i.it = and i8 %i.is, -4
  store i8 %i.it, ptr %i.ir, align 4, !alias.scope !160
  %i.iu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.iu, align 8, !tbaa !32, !alias.scope !160
  %i.iv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store i32 1, ptr %i.iv, align 8, !tbaa !31, !alias.scope !160
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 5 uses
  %i.ix = load i8, ptr %i.iw, align 4, !alias.scope !160
  %i.iy = and i8 %i.ix, -4
  store i8 %i.iy, ptr %i.iw, align 4, !alias.scope !160
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.iz, align 8, !tbaa !32, !alias.scope !160
  %i.ja = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65, !noalias !160 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE5floorERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i79 unwind label %.body80

.noexc.i79:                                       ; preds = %bb.ba
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iv)
          to label %bb.bb unwind label %.body80

.body80:                                          ; preds = %.noexc.i79, %bb.ba
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #18
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #18
  br label %bb.bm

bb.bb:                                            ; preds = %.noexc.i79
  store i32 1, ptr %i.iv, align 8, !tbaa !31, !alias.scope !160
  %i.jc = load i8, ptr %i.iw, align 4, !alias.scope !160
  %i.jd = and i8 %i.jc, -2
  store i8 %i.jd, ptr %i.iw, align 4, !alias.scope !160
  %i.je = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i82 unwind label %bb.bc

.noexc.i82:                                       ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(16) %i.jf)
          to label %_ZN8rationalD2Ev.exit83 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc.i82, %bb.bb
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #21
  unreachable

_ZN8rationalD2Ev.exit83:                          ; preds = %.noexc.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.ji = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !65 ; 2 uses
  %i.jj = load i8, ptr %i.iw, align 4
  %i.jk = and i8 %i.jj, 1
  %i.jl = icmp eq i8 %i.jk, 0
  %i.jm = load i32, ptr %i.iv, align 8
  %i.jn = icmp eq i32 %i.jm, 1
  %i.jo = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %i.jo, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %_ZN8rationalD2Ev.exit83
  %i.jp = load i8, ptr %i.if, align 4
  %i.jq = and i8 %i.jp, 1
  %i.jr = icmp eq i8 %i.jq, 0
  %i.js = load i32, ptr %i.ie, align 8
  %i.jt = icmp eq i32 %i.js, 1
  %i.ju = select i1 %i.jr, i1 %i.jt, i1 false
  br i1 %i.ju, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.jv = load i8, ptr %i.ir, align 4
  %i.jw = and i8 %i.jv, 1
  %i.jx = icmp eq i8 %i.jw, 0
  br i1 %i.jx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jy = load i8, ptr %i.ia, align 4
  %i.jz = and i8 %i.jy, 1
  %i.ka = icmp eq i8 %i.jz, 0
  br i1 %i.ka, label %.split103, label %bb.bg

.split103:                                        ; preds = %bb.bf
  %i.kb = load i32, ptr %11, align 8, !tbaa !31
  %i.kc = load i32, ptr %9, align 8, !tbaa !31
  %i.kd = icmp slt i32 %i.kb, %i.kc
  br i1 %i.kd, label %bb.bi, label %bb.bo

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc84 unwind label %bb.bn

.noexc84:                                         ; preds = %bb.bg
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %bb.bi, label %bb.bo

bb.bh:                                            ; preds = %bb.bd, %_ZN8rationalD2Ev.exit83
  %i.kg = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZltRK8rationalS1_.exit unwind label %bb.bn

_ZltRK8rationalS1_.exit:                          ; preds = %bb.bh
  br i1 %i.kg, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %.split103, %.noexc84, %_ZltRK8rationalS1_.exit
  invoke void @_ZN2lp12int_gcd_test35fill_explanation_from_fixed_columnsERKSt6vectorINS_8row_cellI8rationalEE13std_allocatorIS4_EE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bo unwind label %bb.bn

bb.bj:                                            ; preds = %bb.aw
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.body75, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.ik, %.body75 ], [ %i.kh, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bs

end_hunk_0
