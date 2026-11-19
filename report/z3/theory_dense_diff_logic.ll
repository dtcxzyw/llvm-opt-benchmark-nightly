Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_dense_diff_logic?download=true
inline.NumInlined: 6090
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZltRK12inf_rationalS1_:bb.a
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %.split8

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZltRK8rationalS1_.exit, label %.split8

.split8:                                          ; preds = %bb.d, %bb.c
  %i.z = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_ZltRK8rationalS1_.exit7, label %bb.e

.split:                                           ; preds = %bb.b, %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ab, label %_ZltRK8rationalS1_.exit7, label %bb.e

_ZltRK8rationalS1_.exit:                          ; preds = %bb.d
  %i.ac = load i32, ptr %0, align 8, !tbaa !48
  %i.ad = load i32, ptr %1, align 8, !tbaa !48
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %_ZltRK8rationalS1_.exit7, label %bb.e

bb.e:                                             ; preds = %.split8, %.split, %_ZltRK8rationalS1_.exit
  %i.af = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %.split.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

.split.i.i:                                       ; preds = %bb.f
  %i.ao = load i32, ptr %0, align 8, !tbaa !48
  %i.ap = load i32, ptr %1, align 8, !tbaa !48
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZltRK8rationalS1_.exit7

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i:     ; preds = %bb.f, %bb.e
  %i.ar = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %_ZltRK8rationalS1_.exit7

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i, %.split.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.c, align 4
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_ZeqRK8rationalS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.split9, label %_ZeqRK8rationalS1_.exit

.split9:                                          ; preds = %bb.h
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !48
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !48
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZltRK8rationalS1_.exit7

_ZeqRK8rationalS1_.exit:                          ; preds = %bb.g, %bb.h
  %i.be = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.i, label %_ZltRK8rationalS1_.exit7

bb.i:                                             ; preds = %.split9, %_ZeqRK8rationalS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, 1
  %i.bn = icmp eq i8 %i.bm, 0
  %i.bo = load i32, ptr %i.bj, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = load i32, ptr %i.br, align 8
  %i.bx = icmp eq i32 %i.bw, 1
  %i.by = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %i.by, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, 1
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %i.bg, align 8, !tbaa !48
  %i.ci = load i32, ptr %i.bh, align 8, !tbaa !48
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br label %_ZltRK8rationalS1_.exit7

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ck = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  %i.cl = icmp slt i32 %i.ck, 0
  br label %_ZltRK8rationalS1_.exit7

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.cm = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  br label %_ZltRK8rationalS1_.exit7

_ZltRK8rationalS1_.exit7:                         ; preds = %.split.i.i, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i, %bb.o, %bb.n, %bb.m, %.split9, %.split8, %.split, %_ZeqRK8rationalS1_.exit, %_ZltRK8rationalS1_.exit
  %i.cn = phi i1 [ true, %_ZltRK8rationalS1_.exit ], [ false, %_ZeqRK8rationalS1_.exit ], [ false, %.split9 ], [ true, %.split ], [ true, %.split8 ], [ %i.cl, %bb.n ], [ %i.cm, %bb.o ], [ %i.cj, %bb.m ], [ false, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i ], [ false, %.split.i.i ]
  ret i1 %i.cn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_6mi_extEE4edgeD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.g = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc.i1.i unwind label %bb.c

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_6mi_extEE12update_cellsEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.inf_rational, align 8        ; 29 uses
  %2 = alloca %"struct.smt::theory_dense_diff_logic<smt::mi_ext>::cell_trail", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4edgeELb1EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4edgeELb1EjE4backEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4edgeELb1EjE4backEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 4294967295, %bb.a ]
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.0.i.i ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -4
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store i32 1, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -4
  store i8 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  store i32 0, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -4
  store i8 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 5 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 3 uses
  %i.ai = zext i32 %i.l to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4edgeELb1EjE4backEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !127 ; 2 uses
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4edgeELb1EjE4backEv.exit
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 4 uses
  %.not114 = icmp eq i32 %i.ap, 0
  br i1 %.not114, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit
  %i.av = zext i32 %i.j to i64                    ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 2 uses
  %i.aw = icmp eq ptr %.pre, null
  br i1 %i.aw, label %._crit_edge127, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit, %._crit_edge
  %.063.lcssa147 = phi ptr [ %.2, %._crit_edge ], [ %i.an, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.au, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.ax = phi ptr [ %.pre, %._crit_edge ], [ %i.ah, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ah, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit ] ; 3 uses
  %i.ay = phi ptr [ %i.au, %._crit_edge ], [ %i.an, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.au, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !56 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not77122 = icmp eq i32 %i.ba, 0
  br i1 %.not77122, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.be = zext i32 %i.j to i64
  %.not80118 = icmp eq ptr %i.ay, %.063.lcssa147
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 5 uses
  %.not80118.fr = freeze i1 %.not80118
  br i1 %.not80118.fr, label %._crit_edge127, label %.lr.ph126.split

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %.063116 = phi ptr [ %i.au, %.lr.ph ], [ %.2, %bb.j ] ; 5 uses
  %.064115 = phi ptr [ %i.ak, %.lr.ph ], [ %i.cj, %bb.j ] ; 4 uses
  %i.bs = load i32, ptr %.064115, align 8, !tbaa !62
  %.not87 = icmp eq i32 %i.bs, -1
  %.not88 = icmp eq i64 %indvars.iv, %i.av
  %or.cond = select i1 %.not87, i1 true, i1 %.not88
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %.064115, i64 8
  %i.bv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %.064115, i64 40
  %i.bx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN12inf_rationalpLERKS_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12inf_rationalpLERKS_.exit:                    ; preds = %.noexc
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.av
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !62
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN12inf_rationalpLERKS_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = invoke noundef zeroext i1 @_ZltRK12inf_rationalS1_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ce)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  br i1 %i.cf, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %_ZN12inf_rationalpLERKS_.exit
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %3, ptr %.063116, align 8, !tbaa !129
  %i.cg = getelementptr inbounds nuw i8, ptr %.063116, i64 8
  %i.ch = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.063116, i64 72
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.c
  %.2 = phi ptr [ %.063116, %bb.c ], [ %i.ci, %bb.i ], [ %.063116, %bb.g ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.064115, i64 80 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq ptr %i.cj, %i.as
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !1077

._crit_edge127:                                   ; preds = %..loopexit_crit_edge, %._crit_edge, %.lr.ph126, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.ck = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %._crit_edge127
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %._crit_edge127
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #22
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.cn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.i1.i unwind label %bb.l

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #22
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

.lr.ph126.split:                                  ; preds = %.lr.ph126, %..loopexit_crit_edge
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %..loopexit_crit_edge ], [ 0, %.lr.ph126 ] ; 6 uses
  %.061123 = phi ptr [ %i.ky, %..loopexit_crit_edge ], [ %i.ax, %.lr.ph126 ] ; 2 uses
  %.not78 = icmp eq i64 %indvars.iv131, %i.ai
  br i1 %.not78, label %..loopexit_crit_edge, label %bb.m

bb.m:                                             ; preds = %.lr.ph126.split
  %i.cq = load ptr, ptr %.061123, align 8, !tbaa !136
  %i.cr = getelementptr inbounds nuw [80 x i8], ptr %i.cq, i64 %i.be ; 9 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !62
  %.not79 = icmp eq i32 %i.cs, -1
  br i1 %.not79, label %..loopexit_crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  %i.db = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.dc = trunc i64 %indvars.iv131 to i16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph121, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE5emptyEv.exit.thread
  %.3119 = phi ptr [ %i.ay, %.lr.ph121 ], [ %i.kx, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE5emptyEv.exit.thread ] ; 4 uses
  %i.dd = load i32, ptr %.3119, align 8, !tbaa !129 ; 3 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %.not81 = icmp eq i64 %indvars.iv131, %i.de
  br i1 %.not81, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE5emptyEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.dg = load i8, ptr %i.cu, align 4
  %i.dh = and i8 %i.dg, 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = load i32, ptr %i.ct, align 8, !tbaa !48
  store i32 %i.dj, ptr %1, align 8, !tbaa !48
  %i.dk = load i8, ptr %i.n, align 4
  %i.dl = and i8 %i.dk, -2
  store i8 %i.dl, ptr %i.n, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ct)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.dm = load i8, ptr %i.cw, align 4
  %i.dn = and i8 %i.dm, 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.dp = load i32, ptr %i.cv, align 8, !tbaa !48
  store i32 %i.dp, ptr %i.r, align 8, !tbaa !48
  %i.dq = load i8, ptr %i.s, align 4
  %i.dr = and i8 %i.dq, -2
  store i8 %i.dr, ptr %i.s, align 4
  br label %_ZN8rationalaSERKS_.exit.i

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %_ZN8rationalaSERKS_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalaSERKS_.exit.i:                       ; preds = %bb.s, %bb.r
  %i.ds = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.dt = load i8, ptr %i.cy, align 4
  %i.du = and i8 %i.dt, 1
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN8rationalaSERKS_.exit.i
  %i.dw = load i32, ptr %i.cx, align 8, !tbaa !48
  store i32 %i.dw, ptr %i.w, align 8, !tbaa !48
  %i.dx = load i8, ptr %i.x, align 4
  %i.dy = and i8 %i.dx, -2
  store i8 %i.dy, ptr %i.x, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3.i

bb.u:                                             ; preds = %_ZN8rationalaSERKS_.exit.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3.i: ; preds = %bb.u, %bb.t
  %i.dz = load i8, ptr %i.da, align 4
  %i.ea = and i8 %i.dz, 1
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3.i
  %i.ec = load i32, ptr %i.cz, align 8, !tbaa !48
  store i32 %i.ec, ptr %i.ab, align 8, !tbaa !48
  %i.ed = load i8, ptr %i.ac, align 4
  %i.ee = and i8 %i.ed, -2
  store i8 %i.ee, ptr %i.ac, align 4
  br label %_ZN12inf_rationalaSERKS_.exit

bb.w:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %_ZN12inf_rationalaSERKS_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12inf_rationalaSERKS_.exit:                    ; preds = %bb.v, %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %.3119, i64 8
  %i.eg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.eg, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ef, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %_ZN12inf_rationalaSERKS_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %.3119, i64 40
  %i.ei = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN12inf_rationalpLERKS_.exit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12inf_rationalpLERKS_.exit101:                 ; preds = %.noexc99
  %i.ej = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv131
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !136
  %i.em = getelementptr inbounds nuw [80 x i8], ptr %i.el, i64 %i.de ; 13 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !62
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN12inf_rationalpLERKS_.exit101
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = invoke noundef zeroext i1 @_ZltRK12inf_rationalS1_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.eq, label %bb.z, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE5emptyEv.exit.thread

bb.z:                                             ; preds = %bb.y, %_ZN12inf_rationalpLERKS_.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.er = trunc i32 %i.dd to i16
  %i.es = load i32, ptr %i.em, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  invoke void @_ZN3smt23theory_dense_diff_logicINS_6mi_extEE10cell_trailC1EttiRK12inf_rational(ptr noundef nonnull align 8 dereferenceable(72) %2, i16 noundef zeroext %i.dc, i16 noundef zeroext %i.er, i32 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(64) %i.et)
          to label %bb.aa unwind label %bb.ap

bb.aa:                                            ; preds = %bb.z
  %i.eu = load ptr, ptr %i.bf, align 8, !tbaa !225 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !56 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 -8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !56
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE10cell_trailELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc102 unwind label %bb.aq

end_hunk_0
begin_hunk_1_@_ZN3smt23theory_dense_diff_logicINS_6mi_extEE8reset_ehEv:bb.a
  store i8 %i.en, ptr %i.dy, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 0, ptr %i.eo, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ck, i64 44 ; 6 uses
  %i.er = load i8, ptr %i.eq, align 4
  %i.es = and i8 %i.er, -4
  store i8 %i.es, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  store ptr null, ptr %i.et, align 8, !tbaa !49
  %i.eu = load i32, ptr %i.ep, align 8, !tbaa !56
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !56
  store i32 0, ptr %i.ep, align 8, !tbaa !56
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !130
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !130
  store ptr null, ptr %i.ev, align 8, !tbaa !130
  %i.ex = load i8, ptr %i.eq, align 4             ; 2 uses
  %i.ey = and i8 %i.ex, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.fa = load i8, ptr %i.ez, align 4
  %i.fb = and i8 %i.fa, 2
  %i.fc = and i8 %i.ex, -3
  %i.fd = or disjoint i8 %i.fb, %i.fc
  store i8 %i.fd, ptr %i.eq, align 4
  %i.fe = load i8, ptr %i.ez, align 4             ; 2 uses
  %i.ff = and i8 %i.fe, -3
  %i.fg = or disjoint i8 %i.ff, %i.ey
  store i8 %i.fg, ptr %i.ez, align 4
  %i.fh = load i8, ptr %i.eq, align 4             ; 2 uses
  %i.fi = and i8 %i.fh, 1
  %i.fj = and i8 %i.fe, 1
  %i.fk = and i8 %i.fh, -2
  %i.fl = or disjoint i8 %i.fk, %i.fj
  store i8 %i.fl, ptr %i.eq, align 4
  %i.fm = load i8, ptr %i.ez, align 4
  %i.fn = and i8 %i.fm, -2
  %i.fo = or disjoint i8 %i.fn, %i.fi
  store i8 %i.fo, ptr %i.ez, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store i32 0, ptr %i.fp, align 8, !tbaa !48
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ck, i64 60 ; 6 uses
  %i.fs = load i8, ptr %i.fr, align 4
  %i.ft = and i8 %i.fs, -4
  store i8 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ck, i64 64 ; 2 uses
  store ptr null, ptr %i.fu, align 8, !tbaa !49
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !56
  store i32 %i.fv, ptr %i.fp, align 8, !tbaa !56
  store i32 0, ptr %i.fq, align 8, !tbaa !56
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !130
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !130
  store ptr null, ptr %i.fw, align 8, !tbaa !130
  %i.fy = load i8, ptr %i.fr, align 4             ; 2 uses
  %i.fz = and i8 %i.fy, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.gb = load i8, ptr %i.ga, align 4
  %i.gc = and i8 %i.gb, 2
  %i.gd = and i8 %i.fy, -3
  %i.ge = or disjoint i8 %i.gc, %i.gd
  store i8 %i.ge, ptr %i.fr, align 4
  %i.gf = load i8, ptr %i.ga, align 4             ; 2 uses
  %i.gg = and i8 %i.gf, -3
  %i.gh = or disjoint i8 %i.gg, %i.fz
  store i8 %i.gh, ptr %i.ga, align 4
  %i.gi = load i8, ptr %i.fr, align 4             ; 2 uses
  %i.gj = and i8 %i.gi, 1
  %i.gk = and i8 %i.gf, 1
  %i.gl = and i8 %i.gi, -2
  %i.gm = or disjoint i8 %i.gl, %i.gk
  store i8 %i.gm, ptr %i.fr, align 4
  %i.gn = load i8, ptr %i.ga, align 4
  %i.go = and i8 %i.gn, -2
  %i.gp = or disjoint i8 %i.go, %i.gj
  store i8 %i.gp, ptr %i.ga, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !56
  store i32 %i.gs, ptr %i.gq, align 8, !tbaa !56
  %i.gt = load ptr, ptr %i.ar, align 8, !tbaa !212
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !56
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !56
  %i.gx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %.noexc.i.i.i unwind label %bb.m

.noexc.i.i.i:                                     ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.fq)
          to label %_ZN8rationalD2Ev.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i, %bb.l
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #22
  unreachable

_ZN8rationalD2Ev.exit.i.i:                        ; preds = %.noexc.i.i.i
  %i.ha = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
          to label %.noexc.i1.i.i unwind label %bb.n

.noexc.i1.i.i:                                    ; preds = %_ZN8rationalD2Ev.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %_ZN3smt23theory_dense_diff_logicINS_6mi_extEE4edgeD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i1.i.i, %_ZN8rationalD2Ev.exit.i.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #22
  unreachable

_ZN3smt23theory_dense_diff_logicINS_6mi_extEE4edgeD2Ev.exit: ; preds = %.noexc.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  ret void

bb.o:                                             ; preds = %bb.k
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt23theory_dense_diff_logicINS_6mi_extEE4edgeD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.hd
}

declare void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_6mi_extEE7displayERSo(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 31) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge51, label %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge51:                                    ; preds = %._crit_edge, %bb.a, %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge55, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE3endEv.exit

_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE3endEv.exit: ; preds = %._crit_edge51
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %.not3852 = icmp eq i32 %i.u, 0
  br i1 %.not3852, label %._crit_edge55, label %.lr.ph54

bb.b:                                             ; preds = %.lr.ph50, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %.049 = phi ptr [ %i.f, %.lr.ph50 ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %.049, align 8, !tbaa !136 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %._crit_edge, label %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit

_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit: ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %.not3944 = icmp eq i32 %i.ab, 0
  br i1 %.not3944, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.049, i64 8 ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.not = icmp eq ptr %i.af, %i.l
  br i1 %.not, label %._crit_edge51, label %bb.b, !llvm.loop !1098

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %.03545 = phi ptr [ %i.cw, %bb.e ], [ %i.y, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_6mi_extEE4cellELb1EjE3endEv.exit ] ; 4 uses
  %i.ag = load i32, ptr %.03545, align 8, !tbaa !62
  %.off = add i32 %i.ag, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !197
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 5, ptr %i.am, align 8, !tbaa !279
  %i.an = load i64, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !280
  %i.ar = and i32 %i.aq, -177
  %i.as = or disjoint i32 %i.ar, 32
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !281
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv57
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !114
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !124
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !145
  %i.ay = zext i32 %i.ax to i64
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ay)
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !197
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24    ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 10, ptr %i.bf, align 8, !tbaa !279
  %i.bg = load i64, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !280
  %i.bk = and i32 %i.bj, -177
  %i.bl = or disjoint i32 %i.bk, 32
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !281
  %i.bm = getelementptr inbounds nuw i8, ptr %.03545, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK12inf_rational9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.bm)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !284
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !285
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bn, i64 noundef %i.bo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.bq = load ptr, ptr %2, align 8, !tbaa !284   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.o
  br i1 %i.br, label %_ZlsRSoRK12inf_rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !230
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #23
  br label %_ZlsRSoRK12inf_rational.exit

bb.d:                                             ; preds = %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %2, align 8, !tbaa !284   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.o
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.d
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !230
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bu

_ZlsRSoRK12inf_rational.exit:                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !197
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24    ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 5, ptr %i.ce, align 8, !tbaa !279
  %i.cf = load i64, ptr %i.cb, align 8
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !280
  %i.cj = and i32 %i.ci, -177
  %i.ck = or disjoint i32 %i.cj, 32
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !281
  %i.cl = load i32, ptr %.03545, align 8, !tbaa !62
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cl)
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.9, i64 noundef 6) ; 0 uses
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !114
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !124
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !145
  %i.ct = zext i32 %i.cs to i64
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ct)
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZlsRSoRK12inf_rational.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %.03545, i64 80 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not39 = icmp eq ptr %i.cw, %i.ae
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !1099

.lr.ph54:                                         ; preds = %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE3endEv.exit, %.lr.ph54
  %.03353 = phi ptr [ %i.db, %.lr.ph54 ], [ %i.r, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE3endEv.exit ] ; 2 uses
  %i.cx = load ptr, ptr %.03353, align 8, !tbaa !227
  %i.cy = load ptr, ptr %0, align 8, !tbaa !197
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 408
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cx)
  %i.db = getelementptr inbounds nuw i8, ptr %.03353, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.db, %i.x
  br i1 %.not38, label %._crit_edge55, label %.lr.ph54, !llvm.loop !1100

._crit_edge55:                                    ; preds = %.lr.ph54, %._crit_edge51, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_6mi_extEE4atomELb0EjE3endEv.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_6mi_extEE12display_atomERSoPNS2_4atomE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !197
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 5, ptr %i.f, align 8, !tbaa !279
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !280
  %i.k = and i32 %i.j, -177
  %i.l = or disjoint i32 %i.k, 32
  store i32 %i.l, ptr %i.i, align 8, !tbaa !281
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !145
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !197
  %i.z = getelementptr i8, ptr %i.y, i64 -24      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 5, ptr %i.ac, align 8, !tbaa !279
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !280
  %i.ah = and i32 %i.ag, -177
  %i.ai = or disjoint i32 %i.ah, 32
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !281
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !46
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ar)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.13, i64 noundef 4) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !197
  %i.av = getelementptr i8, ptr %i.au, i64 -24    ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 10, ptr %i.ay, align 8, !tbaa !279
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !280
  %i.bd = and i32 %i.bc, -177
  %i.be = or disjoint i32 %i.bd, 32
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !281
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK12inf_rational9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
  %i.bg = load ptr, ptr %3, align 8, !tbaa !284
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !285
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bg, i64 noundef %i.bi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.a
  %i.bk = load ptr, ptr %3, align 8, !tbaa !284   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZlsRSoRK12inf_rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !230
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #23
  br label %_ZlsRSoRK12inf_rational.exit

bb.b:                                             ; preds = %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %3, align 8, !tbaa !284   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.b
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !230
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bp

_ZlsRSoRK12inf_rational.exit:                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 20) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144, !nonnull !72, !align !73
  %i.by = load i32, ptr %2, align 8, !tbaa !45
  %i.bz = shl i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8944
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !229
  %i.cc = zext i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !230
  %i.cf = sext i8 %i.ce to i32
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cf)
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_6mi_extEE18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.15, i32 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !231
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.16, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZNK3smt16arith_eq_adapter18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNK3smt16arith_eq_adapter18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_6mi_extEE15compute_epsilonEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 10 uses
  %2 = alloca %class.rational, align 8            ; 12 uses
  %3 = alloca %class.rational, align 8            ; 14 uses
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 17 uses
  %6 = alloca %class.rational, align 8            ; 15 uses
  %7 = alloca %class.rational, align 8            ; 15 uses
  %8 = alloca %class.rational, align 8            ; 15 uses
  %9 = alloca %class.rational, align 8            ; 15 uses
  %10 = alloca %class.rational, align 8           ; 12 uses
  %11 = alloca %class.rational, align 8           ; 12 uses
  %12 = alloca %class.rational, align 8           ; 14 uses
  %13 = alloca %class.rational, align 8           ; 8 uses
  %14 = alloca %class.rational, align 8           ; 8 uses
  %15 = alloca %class.rational, align 8           ; 8 uses
  %16 = alloca %class.rational, align 8           ; 8 uses
  %17 = alloca %class.rational, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 4 uses
  store i32 1, ptr %3, align 8, !tbaa !48
  store i8 %i.c, ptr %i.a, align 4
  store i32 2, ptr %i.e, align 8, !tbaa !48
end_hunk_1
begin_hunk_2_@_ZN3smt23theory_dense_diff_logicINS_5i_extEE15get_antecedentsEiiR7svectorIN3sat7literalEjE:bb.a
  %i.bt = getelementptr inbounds i8, ptr %.pre46.pre50, i64 -8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !56
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i27 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %.phi.trans.insert.i28 = getelementptr inbounds i8, ptr %.pre.i27, i64 -4
  %.pre2.i29 = load i32, ptr %.phi.trans.insert.i28, align 4, !tbaa !56
  br label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30: ; preds = %bb.m, %bb.n
  %i.bw = phi i32 [ %.pre2.i29, %bb.n ], [ %i.bs, %bb.m ]
  %i.bx = phi ptr [ %.pre.i27, %bb.n ], [ %.pre46.pre50, %bb.m ]
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %.sroa.4.0.insert.shift = shl nuw i64 %i.ad, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bz, align 4
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !56
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30, %bb.k
  %.pre46.pre.pre54 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre.pre55, %bb.k ]
  %.pre46.pre49 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre50, %bb.k ] ; 2 uses
  %i.ce = icmp eq ptr %.pre46.pre49, null
  br i1 %i.ce, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, !llvm.loop !1187

_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, %bb.o, %_ZN6vectorISt4pairIiiELb0EjE5resetEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !908    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !908   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.j ; 8 uses
  %i.l = load i64, ptr %1, align 8
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 6 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !49
  %i.s = load i32, ptr %i.n, align 8, !tbaa !56
  store i32 %i.s, ptr %i.m, align 8, !tbaa !56
  store i32 0, ptr %i.n, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130
  store ptr %i.u, ptr %i.r, align 8, !tbaa !130
  store ptr null, ptr %i.t, align 8, !tbaa !130
  %i.v = load i8, ptr %i.o, align 4               ; 2 uses
  %i.w = and i8 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 2
  %i.aa = and i8 %i.v, -3
  %i.ab = or disjoint i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.o, align 4
  %i.ac = load i8, ptr %i.x, align 4              ; 2 uses
  %i.ad = and i8 %i.ac, -3
  %i.ae = or disjoint i8 %i.ad, %i.w
  store i8 %i.ae, ptr %i.x, align 4
  %i.af = load i8, ptr %i.o, align 4              ; 2 uses
  %i.ag = and i8 %i.af, 1
  %i.ah = and i8 %i.ac, 1
  %i.ai = and i8 %i.af, -2
  %i.aj = or disjoint i8 %i.ai, %i.ah
  store i8 %i.aj, ptr %i.o, align 4
  %i.ak = load i8, ptr %i.x, align 4
  %i.al = and i8 %i.ak, -2
  %i.am = or disjoint i8 %i.al, %i.ag
  store i8 %i.am, ptr %i.x, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 6 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, -4
  store i8 %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !49
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !56
  store i32 %i.at, ptr %i.an, align 8, !tbaa !56
  store i32 0, ptr %i.ao, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !130
  store ptr %i.av, ptr %i.as, align 8, !tbaa !130
  store ptr null, ptr %i.au, align 8, !tbaa !130
  %i.aw = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.ax = and i8 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 2
  %i.bb = and i8 %i.aw, -3
  %i.bc = or disjoint i8 %i.ba, %i.bb
  store i8 %i.bc, ptr %i.ap, align 4
  %i.bd = load i8, ptr %i.ay, align 4             ; 2 uses
  %i.be = and i8 %i.bd, -3
  %i.bf = or disjoint i8 %i.be, %i.ax
  store i8 %i.bf, ptr %i.ay, align 4
  %i.bg = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.bh = and i8 %i.bg, 1
  %i.bi = and i8 %i.bd, 1
  %i.bj = and i8 %i.bg, -2
  %i.bk = or disjoint i8 %i.bj, %i.bi
  store i8 %i.bk, ptr %i.ap, align 4
  %i.bl = load i8, ptr %i.ay, align 4
  %i.bm = and i8 %i.bl, -2
  %i.bn = or disjoint i8 %i.bm, %i.bh
  store i8 %i.bn, ptr %i.ay, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !56
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !56
  %i.br = load ptr, ptr %0, align 8, !tbaa !908
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !56
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !56
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE4edgeD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE12update_cellsEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.rational, align 8            ; 29 uses
  %2 = alloca %"struct.smt::theory_dense_diff_logic<smt::i_ext>::cell_trail", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !908  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE4backEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE4backEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 4294967295, %bb.a ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.0.i.i ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !866  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !867
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -4
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  store i32 1, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 10 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -4
  store i8 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !885  ; 3 uses
  %i.y = zext i32 %i.l to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !888 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE4backEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !892 ; 2 uses
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE4backEv.exit
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !892 ; 4 uses
  %.not122 = icmp eq i32 %i.af, 0
  br i1 %.not122, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ao = zext i32 %i.j to i64                    ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !885 ; 2 uses
  %i.ap = icmp eq ptr %.pre, null
  br i1 %i.ap, label %._crit_edge135, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit, %._crit_edge
  %.063.lcssa155 = phi ptr [ %.2, %._crit_edge ], [ %i.ad, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ak, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.aq = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.x, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit ] ; 3 uses
  %i.ar = phi ptr [ %i.ak, %._crit_edge ], [ %i.ad, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ak, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %.not77130 = icmp eq i32 %i.at, 0
  br i1 %.not77130, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.ax = zext i32 %i.j to i64
  %.not80126 = icmp eq ptr %i.ar, %.063.lcssa155
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %.not80126.fr = freeze i1 %.not80126
  br i1 %.not80126.fr, label %._crit_edge135, label %.lr.ph134.split

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.063124 = phi ptr [ %i.ak, %.lr.ph ], [ %.2, %bb.t ] ; 10 uses
  %.064123 = phi ptr [ %i.aa, %.lr.ph ], [ %i.dw, %bb.t ] ; 3 uses
  %i.bf = load i32, ptr %.064123, align 8, !tbaa !872
  %.not87 = icmp eq i32 %i.bf, -1
  %.not88 = icmp eq i64 %indvars.iv, %i.ao
  %or.cond = select i1 %.not87, i1 true, i1 %.not88
  br i1 %or.cond, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.bh = load i8, ptr %i.al, align 4
  %i.bi = and i8 %i.bh, 1
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !48
  store i32 %i.bk, ptr %1, align 8, !tbaa !48
  %i.bl = load i8, ptr %i.n, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.n, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.f, %bb.e
  %i.bn = load i8, ptr %i.an, align 4
  %i.bo = and i8 %i.bn, 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !48
  store i32 %i.bq, ptr %i.r, align 8, !tbaa !48
  %i.br = load i8, ptr %i.s, align 4
  %i.bs = and i8 %i.br, -2
  store i8 %i.bs, ptr %i.s, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN8rationalaSERKS_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.g, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.064123, i64 8
  %i.bu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8rationalpLERKS_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalpLERKS_.exit:                         ; preds = %_ZN8rationalaSERKS_.exit
  %i.bv = load ptr, ptr %i.w, align 8, !tbaa !885
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ao
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !888
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bx, i64 %indvars.iv ; 5 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !872
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZN8rationalpLERKS_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.cd = load i8, ptr %i.s, align 4
  %i.ce = and i8 %i.cd, 1
  %i.cf = icmp eq i8 %i.ce, 0
  %i.cg = load i32, ptr %i.r, align 8
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %i.ci, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cl = load i8, ptr %i.ck, align 4
  %i.cm = and i8 %i.cl, 1
  %i.cn = icmp eq i8 %i.cm, 0
  %i.co = load i32, ptr %i.cj, align 8
  %i.cp = icmp eq i32 %i.co, 1
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cr = load i8, ptr %i.n, align 4
  %i.cs = and i8 %i.cr, 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, 1
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.cy = load i32, ptr %1, align 8, !tbaa !48
  %i.cz = load i32, ptr %i.cb, align 8, !tbaa !48
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.o, label %bb.t

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.db = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.m
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.o, label %bb.t

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.dd = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_ZltRK8rationalS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZltRK8rationalS1_.exit:                          ; preds = %bb.n
  br i1 %i.dd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.split, %.noexc97, %_ZltRK8rationalS1_.exit, %_ZN8rationalpLERKS_.exit
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %3, ptr %.063124, align 8, !tbaa !894
  %i.de = getelementptr inbounds nuw i8, ptr %.063124, i64 8 ; 2 uses
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.dg = load i8, ptr %i.n, align 4
  %i.dh = and i8 %i.dg, 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = load i32, ptr %1, align 8, !tbaa !48
  store i32 %i.dj, ptr %i.de, align 8, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %.063124, i64 12 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4
  %i.dm = and i8 %i.dl, -2
  store i8 %i.dm, ptr %i.dk, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i99

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i99: ; preds = %bb.q, %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %.063124, i64 24 ; 2 uses
  %i.do = load i8, ptr %i.s, align 4
  %i.dp = and i8 %i.do, 1
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i99
  %i.dr = load i32, ptr %i.r, align 8, !tbaa !48
  store i32 %i.dr, ptr %i.dn, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %.063124, i64 28 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 4
  %i.du = and i8 %i.dt, -2
  store i8 %i.du, ptr %i.ds, align 4
  br label %_ZN8rationalaSERKS_.exit102

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i99
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN8rationalaSERKS_.exit102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalaSERKS_.exit102:                      ; preds = %bb.r, %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %.063124, i64 40
  br label %bb.t

bb.t:                                             ; preds = %.split, %.noexc97, %_ZltRK8rationalS1_.exit, %_ZN8rationalaSERKS_.exit102, %bb.c
  %.2 = phi ptr [ %.063124, %bb.c ], [ %i.dv, %_ZN8rationalaSERKS_.exit102 ], [ %.063124, %_ZltRK8rationalS1_.exit ], [ %.063124, %.noexc97 ], [ %.063124, %.split ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.064123, i64 48 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq ptr %i.dw, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !1188

._crit_edge135:                                   ; preds = %..loopexit_crit_edge, %._crit_edge, %.lr.ph134, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.dx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %._crit_edge135
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i, %._crit_edge135
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

.lr.ph134.split:                                  ; preds = %.lr.ph134, %..loopexit_crit_edge
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %..loopexit_crit_edge ], [ 0, %.lr.ph134 ] ; 6 uses
  %.061131 = phi ptr [ %i.ka, %..loopexit_crit_edge ], [ %i.aq, %.lr.ph134 ] ; 2 uses
  %.not78 = icmp eq i64 %indvars.iv139, %i.y
  br i1 %.not78, label %..loopexit_crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph134.split
  %i.ea = load ptr, ptr %.061131, align 8, !tbaa !888
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ax ; 5 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !872
  %.not79 = icmp eq i32 %i.ec, -1
  br i1 %.not79, label %..loopexit_crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.eh = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.ei = trunc i64 %indvars.iv139 to i16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph129, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread
  %.3127 = phi ptr [ %i.ar, %.lr.ph129 ], [ %i.jz, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread ] ; 3 uses
  %i.ej = load i32, ptr %.3127, align 8, !tbaa !894 ; 3 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %.not81 = icmp eq i64 %indvars.iv139, %i.ek
  br i1 %.not81, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.em = load i8, ptr %i.ee, align 4
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ep = load i32, ptr %i.ed, align 8, !tbaa !48
  store i32 %i.ep, ptr %1, align 8, !tbaa !48
  %i.eq = load i8, ptr %i.n, align 4
  %i.er = and i8 %i.eq, -2
  store i8 %i.er, ptr %i.n, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i103

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i103: ; preds = %bb.z, %bb.y
  %i.es = load i8, ptr %i.eg, align 4
  %i.et = and i8 %i.es, 1
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i103
  %i.ev = load i32, ptr %i.ef, align 8, !tbaa !48
  store i32 %i.ev, ptr %i.r, align 8, !tbaa !48
  %i.ew = load i8, ptr %i.s, align 4
  %i.ex = and i8 %i.ew, -2
  store i8 %i.ex, ptr %i.s, align 4
  br label %_ZN8rationalaSERKS_.exit106

bb.ab:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i103
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ef)
          to label %_ZN8rationalaSERKS_.exit106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalaSERKS_.exit106:                      ; preds = %bb.aa, %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %.3127, i64 8
  %i.ez = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8rationalpLERKS_.exit108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalpLERKS_.exit108:                      ; preds = %_ZN8rationalaSERKS_.exit106
  %i.fa = load ptr, ptr %i.w, align 8, !tbaa !885
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv139
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !888
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %i.fc, i64 %i.ek ; 12 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !872
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %_ZN8rationalpLERKS_.exit108
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.fh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  %i.fi = load i8, ptr %i.s, align 4
  %i.fj = and i8 %i.fi, 1
  %i.fk = icmp eq i8 %i.fj, 0
  %i.fl = load i32, ptr %i.r, align 8
  %i.fm = icmp eq i32 %i.fl, 1
  %i.fn = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %i.fn, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.fq = load i8, ptr %i.fp, align 4
  %i.fr = and i8 %i.fq, 1
  %i.fs = icmp eq i8 %i.fr, 0
  %i.ft = load i32, ptr %i.fo, align 8
  %i.fu = icmp eq i32 %i.ft, 1
  %i.fv = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %i.fv, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fw = load i8, ptr %i.n, align 4
  %i.fx = and i8 %i.fw, 1
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ga = load i8, ptr %i.fz, align 4
  %i.gb = and i8 %i.ga, 1
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %.split119, label %bb.ag

.split119:                                        ; preds = %bb.af
  %i.gd = load i32, ptr %1, align 8, !tbaa !48
  %i.ge = load i32, ptr %i.fg, align 8, !tbaa !48
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.ai, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gg = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.ag
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %bb.ai, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  %i.gi = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
          to label %_ZltRK8rationalS1_.exit112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZltRK8rationalS1_.exit112:                       ; preds = %bb.ah
  br i1 %i.gi, label %bb.ai, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE5emptyEv.exit.thread

bb.ai:                                            ; preds = %.split119, %.noexc110, %_ZltRK8rationalS1_.exit112, %_ZN8rationalpLERKS_.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.gj = trunc i32 %i.ej to i16
  %i.gk = load i32, ptr %i.fd, align 8, !tbaa !872
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  invoke void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE10cell_trailC1EttiRK8rational(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %i.ei, i16 noundef zeroext %i.gj, i32 noundef %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %i.gl)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load ptr, ptr %i.ay, align 8, !tbaa !909 ; 4 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !56 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !56
  %i.gs = icmp eq i32 %i.gp, %i.gr
  br i1 %i.gs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  invoke void @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %.noexc113 unwind label %bb.au

.noexc113:                                        ; preds = %bb.al
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !909 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56
  br label %bb.am

bb.am:                                            ; preds = %.noexc113, %bb.ak
  %i.gt = phi i32 [ %.pre2.i, %.noexc113 ], [ %i.gp, %bb.ak ]
  %i.gu = phi ptr [ %.pre.i, %.noexc113 ], [ %i.gm, %bb.ak ]
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %i.gu, i64 %i.gv ; 7 uses
  %i.gx = load i64, ptr %2, align 8
  store i64 %i.gx, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  store i32 0, ptr %i.gy, align 8, !tbaa !48
end_hunk_2
begin_hunk_3_@_ZN3smt23theory_dense_diff_logicINS_5i_extEE8reset_ehEv:bb.a
  %.047.i.i.i.i.i17 = phi ptr [ %i.ap, %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetEEvPT_.exit.i.i.i.i.i ], [ %i.ah, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i17, i64 8
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %.noexc.i.i.i.i.i.i.i.i.i18 unwind label %bb.g

.noexc.i.i.i.i.i.i.i.i.i18:                       ; preds = %.lr.ph.i.i.i.i.i15
  %i.am = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i17, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetEEvPT_.exit.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i15
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #22
  unreachable

_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetEEvPT_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i18
  %i.ap = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i17, i64 40
  %i.aq = add i32 %.08.i.i.i.i.i16, -1            ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i19, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !17

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetEEvPT_.exit.i.i.i.i.i
  %.pre.i20 = load ptr, ptr %i.ag, align 8, !tbaa !892
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE4sizeEv.exit.i.i
  %i.ar = phi ptr [ %.pre.i20, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ah, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE4sizeEv.exit.i.i ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 0, ptr %i.as, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIbLb0EjE5resetEv.exit, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE16destroy_elementsEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !909 ; 4 uses
  %.not.i21 = icmp eq ptr %i.au, null
  br i1 %.not.i21, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE5resetEv.exit, label %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i

_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE5resetEv.exit
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !56 ; 2 uses
  %.not6.i.i.i.i.i22 = icmp eq i32 %i.aw, 0
  br i1 %.not6.i.i.i.i.i22, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i24 = phi i32 [ %i.bd, %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i ], [ %i.aw, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i25 = phi ptr [ %i.bc, %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i ], [ %i.au, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i25, i64 8
  %i.ay = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %.noexc.i.i.i.i.i.i.i.i.i26 unwind label %bb.h

.noexc.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i23
  %i.az = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i25, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i23
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #22
  unreachable

_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i26
  %i.bc = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i25, i64 40
  %i.bd = add i32 %.08.i.i.i.i.i24, -1            ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i27, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i23, !llvm.loop !18

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailEEvPT_.exit.i.i.i.i.i
  %.pre.i28 = load ptr, ptr %i.at, align 8, !tbaa !909
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i
  %i.be = phi ptr [ %.pre.i28, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.au, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE4sizeEv.exit.i.i ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  store i32 0, ptr %i.bf, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE8f_targetELb1EjE5resetEv.exit, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE16destroy_elementsEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !914 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bh, null
  br i1 %.not.i29, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE5scopeELb0EjE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE5resetEv.exit
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 0, ptr %i.bi, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE5scopeELb0EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE5scopeELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE10cell_trailELb1EjE5resetEv.exit, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE4edgeC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %1)
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4edgeELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(44) %1)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE5scopeELb0EjE5resetEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_ZN3smt23theory_dense_diff_logicINS_5i_extEE4edgeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #22
  unreachable

_ZN3smt23theory_dense_diff_logicINS_5i_extEE4edgeD2Ev.exit: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  ret void

bb.l:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE5scopeELb0EjE5resetEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE4edgeD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_5i_extEE7displayERSo(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 31) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !885  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge51, label %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit

_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge51:                                    ; preds = %._crit_edge, %bb.a, %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !889  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge55, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE3endEv.exit

_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE3endEv.exit: ; preds = %._crit_edge51
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %.not3852 = icmp eq i32 %i.u, 0
  br i1 %.not3852, label %._crit_edge55, label %.lr.ph54

bb.b:                                             ; preds = %.lr.ph50, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %.049 = phi ptr [ %i.f, %.lr.ph50 ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %.049, align 8, !tbaa !888 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %._crit_edge, label %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit

_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit: ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %.not3944 = icmp eq i32 %i.ab, 0
  br i1 %.not3944, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.049, i64 8 ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.not = icmp eq ptr %i.af, %i.l
  br i1 %.not, label %._crit_edge51, label %bb.b, !llvm.loop !1210

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %.03545 = phi ptr [ %i.cx, %bb.e ], [ %i.y, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_5i_extEE4cellELb1EjE3endEv.exit ] ; 4 uses
  %i.ag = load i32, ptr %.03545, align 8, !tbaa !872
  %.off = add i32 %i.ag, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !197
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 5, ptr %i.am, align 8, !tbaa !279
  %i.an = load i64, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !280
  %i.ar = and i32 %i.aq, -177
  %i.as = or disjoint i32 %i.ar, 32
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !281
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv57
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !114
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !124
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !145
  %i.ay = zext i32 %i.ax to i64
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ay)
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !197
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24    ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 10, ptr %i.bf, align 8, !tbaa !279
  %i.bg = load i64, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !280
  %i.bk = and i32 %i.bj, -177
  %i.bl = or disjoint i32 %i.bk, 32
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !281
  %i.bm = getelementptr inbounds nuw i8, ptr %.03545, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(728) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
  %i.bo = load ptr, ptr %2, align 8, !tbaa !284
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !285
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.br = load ptr, ptr %2, align 8, !tbaa !284   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.o
  br i1 %i.bs, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !230
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #23
  br label %_ZlsRSoRK8rational.exit

bb.d:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %2, align 8, !tbaa !284   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.o
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.by = load i64, ptr %i.o, align 8, !tbaa !230
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bv

_ZlsRSoRK8rational.exit:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !197
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24    ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 5, ptr %i.cf, align 8, !tbaa !279
  %i.cg = load i64, ptr %i.cc, align 8
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !280
  %i.ck = and i32 %i.cj, -177
  %i.cl = or disjoint i32 %i.ck, 32
  store i32 %i.cl, ptr %i.ci, align 8, !tbaa !281
  %i.cm = load i32, ptr %.03545, align 8, !tbaa !872
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cm)
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.9, i64 noundef 6) ; 0 uses
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !114
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !124
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !145
  %i.cu = zext i32 %i.ct to i64
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cu)
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZlsRSoRK8rational.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.03545, i64 48 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not39 = icmp eq ptr %i.cx, %i.ae
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !1211

.lr.ph54:                                         ; preds = %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE3endEv.exit, %.lr.ph54
  %.03353 = phi ptr [ %i.dc, %.lr.ph54 ], [ %i.r, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE3endEv.exit ] ; 2 uses
  %i.cy = load ptr, ptr %.03353, align 8, !tbaa !911
  %i.cz = load ptr, ptr %0, align 8, !tbaa !197
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 408
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cy)
  %i.dc = getelementptr inbounds nuw i8, ptr %.03353, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.dc, %i.x
  br i1 %.not38, label %._crit_edge55, label %.lr.ph54, !llvm.loop !1212

._crit_edge55:                                    ; preds = %.lr.ph54, %._crit_edge51, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_5i_extEE4atomELb0EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_5i_extEE12display_atomERSoPNS2_4atomE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !197
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 5, ptr %i.f, align 8, !tbaa !279
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !280
  %i.k = and i32 %i.j, -177
  %i.l = or disjoint i32 %i.k, 32
  store i32 %i.l, ptr %i.i, align 8, !tbaa !281
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !864
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !145
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !197
  %i.z = getelementptr i8, ptr %i.y, i64 -24      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 5, ptr %i.ac, align 8, !tbaa !279
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !280
  %i.ah = and i32 %i.ag, -177
  %i.ai = or disjoint i32 %i.ah, 32
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !281
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !863
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ar)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.13, i64 noundef 4) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !197
  %i.av = getelementptr i8, ptr %i.au, i64 -24    ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 10, ptr %i.ay, align 8, !tbaa !279
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !280
  %i.bd = and i32 %i.bc, -177
  %i.be = or disjoint i32 %i.bd, 32
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !281
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
  %i.bh = load ptr, ptr %3, align 8, !tbaa !284
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !285
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bh, i64 noundef %i.bj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.b ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.a
  %i.bl = load ptr, ptr %3, align 8, !tbaa !284   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !230
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #23
  br label %_ZlsRSoRK8rational.exit

bb.b:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %3, align 8, !tbaa !284   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.b
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !230
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bq

_ZlsRSoRK8rational.exit:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.14, i64 noundef 20) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !144, !nonnull !72, !align !73
  %i.bz = load i32, ptr %2, align 8, !tbaa !862
  %i.ca = shl i32 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8944
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !229
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !230
  %i.cg = sext i8 %i.cf to i32
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 noundef %i.cg)
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_5i_extEE18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !913
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.15, i32 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !912
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.16, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNK3smt16arith_eq_adapter18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_5i_extEE15compute_epsilonEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 10 uses
  %2 = alloca %class.rational, align 8            ; 12 uses
  %3 = alloca %class.rational, align 8            ; 14 uses
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 17 uses
  %6 = alloca %class.rational, align 8            ; 15 uses
  %7 = alloca %class.rational, align 8            ; 15 uses
  %8 = alloca %class.rational, align 8            ; 15 uses
  %9 = alloca %class.rational, align 8            ; 15 uses
  %10 = alloca %class.rational, align 8           ; 12 uses
  %11 = alloca %class.rational, align 8           ; 12 uses
  %12 = alloca %class.rational, align 8           ; 14 uses
  %13 = alloca %class.rational, align 8           ; 8 uses
  %14 = alloca %class.rational, align 8           ; 8 uses
  %15 = alloca %class.rational, align 8           ; 8 uses
  %16 = alloca %class.rational, align 8           ; 8 uses
  %17 = alloca %class.rational, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 4 uses
  store i32 1, ptr %3, align 8, !tbaa !48
  store i8 %i.c, ptr %i.a, align 4
  store i32 2, ptr %i.e, align 8, !tbaa !48
  store i8 %i.h, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
end_hunk_3
begin_hunk_4_@_ZN3smt23theory_dense_diff_logicINS_7smi_extEE15get_antecedentsEiiR7svectorIN3sat7literalEjE:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %.sroa.439.0.insert.ext = zext i32 %2 to i64
  %.sroa.439.0.insert.shift = shl nuw i64 %.sroa.439.0.insert.ext, 32
  %.sroa.038.0.insert.ext = zext i32 %1 to i64
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.439.0.insert.shift, %.sroa.038.0.insert.ext
  store i64 %.sroa.038.0.insert.insert, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !220  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !56
  br label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.lr.ph: ; preds = %_ZN6vectorISt4pairIiiELb0EjE5resetEv.exit.thread, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit
  %.pre46.pre.pre58.ph = phi ptr [ %i.k, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit ], [ %i.b, %_ZN6vectorISt4pairIiiELb0EjE5resetEv.exit.thread ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit

_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit:       ; preds = %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.lr.ph, %bb.o
  %.pre46.pre.pre53 = phi ptr [ %.pre46.pre.pre58.ph, %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.lr.ph ], [ %.pre46.pre.pre54, %bb.o ] ; 2 uses
  %.pre46.pre48 = phi ptr [ %.pre46.pre.pre58.ph, %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.lr.ph ], [ %.pre46.pre49, %bb.o ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.pre46.pre48, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread, label %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit

_ZN6vectorISt4pairIiiELb0EjE4backEv.exit:         ; preds = %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre46.pre48, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !222  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !223  ; 2 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !56
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !957
  %i.aa = zext i32 %i.w to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !960
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !936
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !973
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !224 ; 2 uses
  %.not45 = icmp eq i32 %i.ak, -2
  br i1 %.not45, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit
  %i.al = load ptr, ptr %3, align 8, !tbaa !198   ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !56
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i20 = load ptr, ptr %3, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert.i21 = getelementptr inbounds i8, ptr %.pre.i20, i64 -4
  %.pre2.i22 = load i32, ptr %.phi.trans.insert.i21, align 4, !tbaa !56
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !56
  %.pre46.pre.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !220
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f
  %.pre46.pre.pre = phi ptr [ %.pre46.pre.pre.pre, %bb.f ], [ %.pre46.pre.pre53, %bb.e ] ; 2 uses
  %i.as = phi i32 [ %.pre, %bb.f ], [ %i.ak, %bb.e ]
  %i.at = phi i32 [ %.pre2.i22, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.au = phi ptr [ %.pre.i20, %bb.f ], [ %i.al, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = zext i32 %i.at to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !56
  %i.ay = add i32 %i.at, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit
  %.pre46.pre.pre56 = phi ptr [ %.pre46.pre.pre, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %.pre46.pre.pre53, %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit ]
  %.pre46.pre = phi ptr [ %.pre46.pre.pre, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %.pre46.pre48, %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit ] ; 5 uses
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !930 ; 2 uses
  %.not18 = icmp eq i32 %i.w, %i.az
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq ptr %.pre46.pre, null
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %.pre46.pre, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.pre46.pre, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !56
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i23 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %.phi.trans.insert.i24 = getelementptr inbounds i8, ptr %.pre.i23, i64 -4
  %.pre2.i25 = load i32, ptr %.phi.trans.insert.i24, align 4, !tbaa !56
  br label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26

_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26: ; preds = %bb.i, %bb.j
  %i.bg = phi i32 [ %.pre2.i25, %bb.j ], [ %i.bc, %bb.i ]
  %i.bh = phi ptr [ %.pre.i23, %bb.j ], [ %.pre46.pre, %bb.i ]
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %.sroa.432.0.insert.ext = zext i32 %i.az to i64
  %.sroa.432.0.insert.shift = shl nuw i64 %.sroa.432.0.insert.ext, 32
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.432.0.insert.shift, %i.aa
  store i64 %.sroa.031.0.insert.insert, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !56
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26, %bb.g
  %.pre46.pre.pre55 = phi ptr [ %i.bk, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26 ], [ %.pre46.pre.pre56, %bb.g ]
  %.pre46.pre50 = phi ptr [ %i.bk, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26 ], [ %.pre46.pre, %bb.g ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !931 ; 2 uses
  %.not19 = icmp eq i32 %i.bp, %i.y
  br i1 %.not19, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq ptr %.pre46.pre50, null
  br i1 %i.bq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds i8, ptr %.pre46.pre50, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !56 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.pre46.pre50, i64 -8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !56
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i27 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %.phi.trans.insert.i28 = getelementptr inbounds i8, ptr %.pre.i27, i64 -4
  %.pre2.i29 = load i32, ptr %.phi.trans.insert.i28, align 4, !tbaa !56
  br label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30: ; preds = %bb.m, %bb.n
  %i.bw = phi i32 [ %.pre2.i29, %bb.n ], [ %i.bs, %bb.m ]
  %i.bx = phi ptr [ %.pre.i27, %bb.n ], [ %.pre46.pre50, %bb.m ]
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %.sroa.4.0.insert.shift = shl nuw i64 %i.ad, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bz, align 4
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !56
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30, %bb.k
  %.pre46.pre.pre54 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre.pre55, %bb.k ]
  %.pre46.pre49 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre50, %bb.k ] ; 2 uses
  %i.ce = icmp eq ptr %.pre46.pre49, null
  br i1 %i.ce, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, !llvm.loop !1288

_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, %bb.o, %_ZN6vectorISt4pairIiiELb0EjE5resetEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE12update_cellsEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.smt::theory_dense_diff_logic<smt::smi_ext>::cell_trail", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !973  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE4backEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE4backEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 4294967295, %bb.a ]
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.0.i.i ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !930  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !931
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !957  ; 6 uses
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !960  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit.thread, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit.thread: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE4backEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !954  ; 2 uses
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE4backEv.exit
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !954 ; 4 uses
  %.not88 = icmp eq i32 %i.w, 0
  br i1 %.not88, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit
  %i.ac = zext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ac
  br label %bb.c

._crit_edge:                                      ; preds = %_ZltRK13inf_s_integerS1_.exit.thread86
  %i.ae = icmp eq ptr %i.o, null
  br i1 %i.ae, label %._crit_edge101, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit.thread, %._crit_edge
  %.061.lcssa123 = phi ptr [ %.2, %._crit_edge ], [ %i.u, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ab, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %._crit_edge ], [ %i.u, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ab, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %.not6596 = icmp eq i32 %i.ah, 0
  br i1 %.not6596, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.al = zext i32 %i.j to i64
  %.not6892 = icmp eq ptr %i.af, %.061.lcssa123
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %.not6892.fr = freeze i1 %.not6892
  br i1 %.not6892.fr, label %._crit_edge101, label %.lr.ph100.split

bb.c:                                             ; preds = %.lr.ph, %_ZltRK13inf_s_integerS1_.exit.thread86
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZltRK13inf_s_integerS1_.exit.thread86 ] ; 4 uses
  %.06190 = phi ptr [ %i.ab, %.lr.ph ], [ %.2, %_ZltRK13inf_s_integerS1_.exit.thread86 ] ; 6 uses
  %.06289 = phi ptr [ %i.r, %.lr.ph ], [ %i.bh, %_ZltRK13inf_s_integerS1_.exit.thread86 ] ; 3 uses
  %i.an = load i32, ptr %.06289, align 8, !tbaa !936
  %.not70 = icmp eq i32 %i.an, -1
  %.not71 = icmp eq i64 %indvars.iv, %i.ac
  %or.cond = select i1 %.not70, i1 true, i1 %.not71
  br i1 %or.cond, label %_ZltRK13inf_s_integerS1_.exit.thread86, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.06289, i64 4
  %i.ap = load <2 x i32>, ptr %i.m, align 4, !tbaa !56
  %i.aq = load <2 x i32>, ptr %i.ao, align 4, !tbaa !56
  %i.ar = add nsw <2 x i32> %i.aq, %i.ap          ; 3 uses
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !960
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !936
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %_ZltRK13inf_s_integerS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !937 ; 2 uses
  %i.ay = extractelement <2 x i32> %i.ar, i64 0   ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.ax
  br i1 %i.az, label %_ZltRK13inf_s_integerS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = icmp eq i32 %i.ay, %i.ax
  br i1 %i.ba, label %_ZltRK13inf_s_integerS1_.exit, label %_ZltRK13inf_s_integerS1_.exit.thread86

_ZltRK13inf_s_integerS1_.exit:                    ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !938
  %i.bd = extractelement <2 x i32> %i.ar, i64 1
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZltRK13inf_s_integerS1_.exit.thread, label %_ZltRK13inf_s_integerS1_.exit.thread86

_ZltRK13inf_s_integerS1_.exit.thread:             ; preds = %bb.e, %_ZltRK13inf_s_integerS1_.exit, %bb.d
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %2, ptr %.06190, align 4, !tbaa !1293
  %i.bf = getelementptr inbounds nuw i8, ptr %.06190, i64 4
  store <2 x i32> %i.ar, ptr %i.bf, align 4, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %.06190, i64 12
  br label %_ZltRK13inf_s_integerS1_.exit.thread86

_ZltRK13inf_s_integerS1_.exit.thread86:           ; preds = %bb.f, %_ZltRK13inf_s_integerS1_.exit, %_ZltRK13inf_s_integerS1_.exit.thread, %bb.c
  %.2 = phi ptr [ %.06190, %bb.c ], [ %i.bg, %_ZltRK13inf_s_integerS1_.exit.thread ], [ %.06190, %_ZltRK13inf_s_integerS1_.exit ], [ %.06190, %bb.f ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06289, i64 24 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq ptr %i.bh, %i.z
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !1289

._crit_edge101:                                   ; preds = %..loopexit_crit_edge, %._crit_edge, %.lr.ph100, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit
  ret void

.lr.ph100.split:                                  ; preds = %.lr.ph100, %..loopexit_crit_edge
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %..loopexit_crit_edge ], [ 0, %.lr.ph100 ] ; 6 uses
  %.05997 = phi ptr [ %i.di, %..loopexit_crit_edge ], [ %i.o, %.lr.ph100 ] ; 2 uses
  %.not66 = icmp eq i64 %indvars.iv104, %i.p
  br i1 %.not66, label %..loopexit_crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph100.split
  %i.bi = load ptr, ptr %.05997, align 8, !tbaa !960
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.al ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !936
  %.not67 = icmp eq i32 %i.bk, -1
  br i1 %.not67, label %..loopexit_crit_edge, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = trunc nuw nsw i64 %indvars.iv104 to i32
  %i.bn = trunc i64 %indvars.iv104 to i16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph95, %_ZltRK13inf_s_integerS1_.exit74.thread87
  %.393 = phi ptr [ %i.af, %.lr.ph95 ], [ %i.dh, %_ZltRK13inf_s_integerS1_.exit74.thread87 ] ; 3 uses
  %i.bo = load i32, ptr %.393, align 4, !tbaa !1293 ; 3 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.not69 = icmp eq i64 %indvars.iv104, %i.bp
  br i1 %.not69, label %_ZltRK13inf_s_integerS1_.exit74.thread87, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.393, i64 4
  %i.br = load <2 x i32>, ptr %i.bl, align 4, !tbaa !56
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !56
  %i.bt = add nsw <2 x i32> %i.bs, %i.br          ; 3 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !957
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !960
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bp ; 7 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !936
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %_ZltRK13inf_s_integerS1_.exit74.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !937 ; 2 uses
  %i.cc = extractelement <2 x i32> %i.bt, i64 0   ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %_ZltRK13inf_s_integerS1_.exit74.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = icmp eq i32 %i.cc, %i.cb
  br i1 %i.ce, label %_ZltRK13inf_s_integerS1_.exit74, label %_ZltRK13inf_s_integerS1_.exit74.thread87

_ZltRK13inf_s_integerS1_.exit74:                  ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !938
  %i.ch = extractelement <2 x i32> %i.bt, i64 1
  %i.ci = icmp slt i32 %i.ch, %i.cg
  br i1 %i.ci, label %_ZltRK13inf_s_integerS1_.exit74.thread, label %_ZltRK13inf_s_integerS1_.exit74.thread87

_ZltRK13inf_s_integerS1_.exit74.thread:           ; preds = %bb.j, %_ZltRK13inf_s_integerS1_.exit74, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.cj = trunc i32 %i.bo to i16
  %i.ck = load i32, ptr %i.bx, align 8, !tbaa !936
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  call void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE10cell_trailC1EttiRK13inf_s_integer(ptr noundef nonnull align 4 dereferenceable(16) %1, i16 noundef zeroext %i.bn, i16 noundef zeroext %i.cj, i32 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(8) %i.cl)
  %i.cm = load ptr, ptr %i.am, align 8, !tbaa !976 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZltRK13inf_s_integerS1_.exit74.thread
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !56 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE9push_backEOS4_.exit

bb.m:                                             ; preds = %bb.l, %_ZltRK13inf_s_integerS1_.exit74.thread
  call void @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !976 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE9push_backEOS4_.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE9push_backEOS4_.exit: ; preds = %bb.l, %bb.m
  %i.ct = phi i32 [ %.pre2.i, %bb.m ], [ %i.cp, %bb.l ]
  %i.cu = phi ptr [ %.pre.i, %bb.m ], [ %i.cm, %bb.l ]
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !978
  %i.cx = load ptr, ptr %i.am, align 8, !tbaa !976
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !56
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  store i32 %i.h, ptr %i.bx, align 8, !tbaa !936
  store <2 x i32> %i.bt, ptr %i.cl, align 4, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !939 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZltRK13inf_s_integerS1_.exit74.thread87, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE5emptyEv.exit

_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE5emptyEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE9push_backEOS4_.exit
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !56
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_ZltRK13inf_s_integerS1_.exit74.thread87, label %bb.n

bb.n:                                             ; preds = %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE5emptyEv.exit
  call void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE20propagate_using_cellEii(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %i.bm, i32 noundef %i.bo)
  br label %_ZltRK13inf_s_integerS1_.exit74.thread87

_ZltRK13inf_s_integerS1_.exit74.thread87:         ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE9push_backEOS4_.exit, %bb.k, %_ZltRK13inf_s_integerS1_.exit74, %bb.n, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE5emptyEv.exit, %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %.393, i64 12 ; 2 uses
  %.not68 = icmp eq ptr %i.dh, %.061.lcssa123
  br i1 %.not68, label %..loopexit_crit_edge, label %bb.h, !llvm.loop !1290

..loopexit_crit_edge:                             ; preds = %_ZltRK13inf_s_integerS1_.exit74.thread87, %bb.g, %.lr.ph100.split
  %i.di = getelementptr inbounds nuw i8, ptr %.05997, i64 8 ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %.not65 = icmp eq ptr %i.di, %i.ak
  br i1 %.not65, label %._crit_edge101, label %.lr.ph100.split, !llvm.loop !1291
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE20propagate_using_cellEii(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !957
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !960
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load i64, ptr %i.h, align 4, !tbaa !56   ; 2 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.i to i32
  %.sroa.6.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.j = sub nsw i32 0, %.sroa.023.0.extract.trunc ; 2 uses
  %i.k = sub nsw i32 0, %.sroa.6.0.extract.trunc
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !939  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge, label %_ZN6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit

_ZN6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZleRK13inf_s_integerS1_.exit.thread26
  %.030 = phi ptr [ %i.m, %.lr.ph ], [ %i.bb, %_ZleRK13inf_s_integerS1_.exit.thread26 ] ; 2 uses
  %i.w = load ptr, ptr %.030, align 8, !tbaa !980 ; 5 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !144, !nonnull !72, !align !73
  %i.y = load i32, ptr %i.w, align 4, !tbaa !926
  %i.z = shl i32 %i.y, 1                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8944
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !229
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !230
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZleRK13inf_s_integerS1_.exit.thread26

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !927
  %i.ai = icmp eq i32 %i.ah, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !937 ; 4 uses
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %i.h, align 4, !tbaa !937 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %_ZleRK13inf_s_integerS1_.exit.thread26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp eq i32 %i.ak, %i.al
  br i1 %i.an, label %_ZleRK13inf_s_integerS1_.exit, label %_ZleRK13inf_s_integerS1_.exit.thread

_ZleRK13inf_s_integerS1_.exit:                    ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !938
end_hunk_4
begin_hunk_5_@_ZN3smt23theory_dense_diff_logicINS_7smi_extEE8reset_ehEv:bb.a
bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bd)
          to label %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #22
  unreachable

_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.bh = add i32 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.048.i.i.i.i.i, align 8, !tbaa !960
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i.i.i

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i.i.i, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ay, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bj)
          to label %_ZSt8_DestroyI6vectorIN3smt23theory_dense_diff_logicINS1_7smi_extEE4cellELb1EjEEvPT_.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #22
  unreachable

_ZSt8_DestroyI6vectorIN3smt23theory_dense_diff_logicINS1_7smi_extEE4cellELb1EjEEvPT_.exit.i.i.i.i.i: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.bn = add i32 %.010.i.i.i.i.i, -1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI6vectorIN3smt23theory_dense_diff_logicINS1_7smi_extEE4cellELb1EjEEvPT_.exit.i.i.i.i.i
  %.pre.i6 = load ptr, ptr %i.au, align 8, !tbaa !957
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE4sizeEv.exit.i.i
  %i.bo = phi ptr [ %.pre.i6, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.av, %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE4sizeEv.exit.i.i ]
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  store i32 0, ptr %i.bp, align 4, !tbaa !56
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE5resetEv.exit

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE5resetEv.exit, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE16destroy_elementsEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !81 ; 2 uses
  %.not.i7 = icmp eq ptr %i.br, null
  br i1 %.not.i7, label %_ZN6vectorIbLb0EjE5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE5resetEv.exit
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  store i32 0, ptr %i.bs, align 4, !tbaa !56
  br label %_ZN6vectorIbLb0EjE5resetEv.exit

_ZN6vectorIbLb0EjE5resetEv.exit:                  ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE5resetEv.exit, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !954 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bu, null
  br i1 %.not.i8, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE8f_targetELb1EjE5resetEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIbLb0EjE5resetEv.exit
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store i32 0, ptr %i.bv, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE8f_targetELb1EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE8f_targetELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIbLb0EjE5resetEv.exit, %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !976 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bx, null
  br i1 %.not.i9, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE8f_targetELb1EjE5resetEv.exit
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 0, ptr %i.by, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE8f_targetELb1EjE5resetEv.exit, %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !983 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ca, null
  br i1 %.not.i10, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE5scopeELb0EjE5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE5resetEv.exit
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  store i32 0, ptr %i.cb, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE5scopeELb0EjE5resetEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE5scopeELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE10cell_trailELb1EjE5resetEv.exit, %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.cc, align 8, !tbaa !975
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE4edgeC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %1)
  %i.cd = load ptr, ptr %i.ar, align 8, !tbaa !973 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE5scopeELb0EjE5resetEv.exit
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !56
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.l, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE9push_backEOS4_.exit

bb.l:                                             ; preds = %bb.k, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE5scopeELb0EjE5resetEv.exit
  call void @_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  %.pre.i11 = load ptr, ptr %i.ar, align 8, !tbaa !973 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i11, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE9push_backEOS4_.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE9push_backEOS4_.exit: ; preds = %bb.k, %bb.l
  %i.ck = phi i32 [ %.pre2.i, %bb.l ], [ %i.cg, %bb.k ]
  %i.cl = phi ptr [ %.pre.i11, %bb.l ], [ %i.cd, %bb.k ]
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cn, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !974
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !973
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !56
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_7smi_extEE7displayERSo(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 31) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !957  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge51, label %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit

_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge51:                                    ; preds = %._crit_edge, %bb.a, %_ZNK6vectorIS_IN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !939  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %._crit_edge55, label %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit

_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit: ; preds = %._crit_edge51
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %.not3852 = icmp eq i32 %i.s, 0
  br i1 %.not3852, label %._crit_edge55, label %.lr.ph54

bb.b:                                             ; preds = %.lr.ph50, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %.049 = phi ptr [ %i.f, %.lr.ph50 ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.w = load ptr, ptr %.049, align 8, !tbaa !960 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %._crit_edge, label %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit

_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !56   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %.not3944 = icmp eq i32 %i.z, 0
  br i1 %.not3944, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.b, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.049, i64 8 ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.not = icmp eq ptr %i.ad, %i.l
  br i1 %.not, label %._crit_edge51, label %bb.b, !llvm.loop !1307

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %.03545 = phi ptr [ %i.cz, %bb.h ], [ %i.w, %_ZNK6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4cellELb1EjE3endEv.exit ] ; 5 uses
  %i.ae = load i32, ptr %.03545, align 8, !tbaa !936
  %.off = add i32 %i.ae, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !197
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 5, ptr %i.ak, align 8, !tbaa !279
  %i.al = load i64, ptr %i.ah, align 8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !280
  %i.ap = and i32 %i.ao, -177
  %i.aq = or disjoint i32 %i.ap, 32
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !281
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv57
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !114
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !124
  %i.av = load i32, ptr %i.au, align 4, !tbaa !145
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aw)
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !197
  %i.ba = getelementptr i8, ptr %i.az, i64 -24    ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 10, ptr %i.bd, align 8, !tbaa !279
  %i.be = load i64, ptr %i.ba, align 8
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !280
  %i.bi = and i32 %i.bh, -177
  %i.bj = or disjoint i32 %i.bi, 32
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !281
  %i.bk = getelementptr inbounds nuw i8, ptr %.03545, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03545, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !938 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !937
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bo) ; 0 uses
  br label %_ZlsRSoRK13inf_s_integer.exit

bb.e:                                             ; preds = %bb.c
  %i.bq = icmp slt i32 %i.bm, 0
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !937
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bs) ; 4 uses
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.29, i64 noundef 4) ; 0 uses
  %i.bv = load i32, ptr %i.bl, align 8, !tbaa !938
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i32 noundef %i.bv)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  br label %_ZlsRSoRK13inf_s_integer.exit

bb.g:                                             ; preds = %bb.e
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.30, i64 noundef 4) ; 0 uses
  %i.bz = load i32, ptr %i.bl, align 8, !tbaa !938
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i32 noundef %i.bz)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  br label %_ZlsRSoRK13inf_s_integer.exit

_ZlsRSoRK13inf_s_integer.exit:                    ; preds = %bb.d, %bb.f, %bb.g
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !197
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24    ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 5, ptr %i.ch, align 8, !tbaa !279
  %i.ci = load i64, ptr %i.ce, align 8
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !280
  %i.cm = and i32 %i.cl, -177
  %i.cn = or disjoint i32 %i.cm, 32
  store i32 %i.cn, ptr %i.ck, align 8, !tbaa !281
  %i.co = load i32, ptr %.03545, align 8, !tbaa !936
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.co)
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.9, i64 noundef 6) ; 0 uses
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !114
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !124
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !145
  %i.cw = zext i32 %i.cv to i64
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cw)
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZlsRSoRK13inf_s_integer.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.03545, i64 24 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not39 = icmp eq ptr %i.cz, %i.ac
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !1308

.lr.ph54:                                         ; preds = %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit, %.lr.ph54
  %.03353 = phi ptr [ %i.de, %.lr.ph54 ], [ %i.p, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit ] ; 2 uses
  %i.da = load ptr, ptr %.03353, align 8, !tbaa !980
  %i.db = load ptr, ptr %0, align 8, !tbaa !197
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 408
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.da)
  %i.de = getelementptr inbounds nuw i8, ptr %.03353, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.de, %i.v
  br i1 %.not38, label %._crit_edge55, label %.lr.ph54, !llvm.loop !1309

._crit_edge55:                                    ; preds = %.lr.ph54, %._crit_edge51, %_ZNK6vectorIPN3smt23theory_dense_diff_logicINS0_7smi_extEE4atomELb0EjE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK13inf_s_integer(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !938  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !937
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.d) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, 0
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !937
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.h) ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.29, i64 noundef 4) ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !938
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.k)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.30, i64 noundef 4) ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !938
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_7smi_extEE12display_atomERSoPNS2_4atomE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !197
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 5, ptr %i.f, align 8, !tbaa !279
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !280
  %i.k = and i32 %i.j, -177
  %i.l = or disjoint i32 %i.k, 32
  store i32 %i.l, ptr %i.i, align 8, !tbaa !281
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !928
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !145
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !197
  %i.z = getelementptr i8, ptr %i.y, i64 -24      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 5, ptr %i.ac, align 8, !tbaa !279
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !280
  %i.ah = and i32 %i.ag, -177
  %i.ai = or disjoint i32 %i.ah, 32
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !281
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !927
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ar)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.13, i64 noundef 4) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !197
  %i.av = getelementptr i8, ptr %i.au, i64 -24    ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 10, ptr %i.ay, align 8, !tbaa !279
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !280
  %i.bd = and i32 %i.bc, -177
  %i.be = or disjoint i32 %i.bd, 32
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !281
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK13inf_s_integer(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.bf) ; 2 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.14, i64 noundef 20) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !144, !nonnull !72, !align !73
  %i.bk = load i32, ptr %2, align 4, !tbaa !926
  %i.bl = shl i32 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8944
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !229
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !230
  %i.br = sext i8 %i.bq to i32
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef %i.br)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt23theory_dense_diff_logicINS_7smi_extEE18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !982
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.15, i32 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !981
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.16, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNK3smt16arith_eq_adapter18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE15compute_epsilonEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 10 uses
  %2 = alloca %class.rational, align 8            ; 12 uses
  %3 = alloca %class.rational, align 8            ; 14 uses
  %4 = alloca %class.rational, align 8            ; 15 uses
  %5 = alloca %class.rational, align 8            ; 15 uses
  %6 = alloca %class.rational, align 8            ; 13 uses
  %7 = alloca %class.rational, align 8            ; 13 uses
  %8 = alloca %class.rational, align 8            ; 13 uses
  %9 = alloca %class.rational, align 8            ; 13 uses
  %10 = alloca %class.rational, align 8           ; 12 uses
  %11 = alloca %class.rational, align 8           ; 12 uses
  %12 = alloca %class.rational, align 8           ; 14 uses
  %13 = alloca %class.rational, align 8           ; 8 uses
  %14 = alloca %class.rational, align 8           ; 8 uses
  %15 = alloca %class.rational, align 8           ; 8 uses
  %16 = alloca %class.rational, align 8           ; 8 uses
  %17 = alloca %class.rational, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 4 uses
  store i32 1, ptr %3, align 8, !tbaa !48
  store i8 %i.c, ptr %i.a, align 4
  store i32 2, ptr %i.e, align 8, !tbaa !48
  store i8 %i.h, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !49
  call void @_ZN11mpz_managerILb1EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
end_hunk_5
begin_hunk_6_@_ZN3smt23theory_dense_diff_logicINS_6si_extEE15get_antecedentsEiiR7svectorIN3sat7literalEjE:bb.a
  %.pre46.pre = phi ptr [ %.pre46.pre.pre, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %.pre46.pre48, %_ZN6vectorISt4pairIiiELb0EjE4backEv.exit ] ; 5 uses
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !999 ; 2 uses
  %.not18 = icmp eq i32 %i.w, %i.az
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq ptr %.pre46.pre, null
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %.pre46.pre, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.pre46.pre, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !56
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i23 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %.phi.trans.insert.i24 = getelementptr inbounds i8, ptr %.pre.i23, i64 -4
  %.pre2.i25 = load i32, ptr %.phi.trans.insert.i24, align 4, !tbaa !56
  br label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26

_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26: ; preds = %bb.i, %bb.j
  %i.bg = phi i32 [ %.pre2.i25, %bb.j ], [ %i.bc, %bb.i ]
  %i.bh = phi ptr [ %.pre.i23, %bb.j ], [ %.pre46.pre, %bb.i ]
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %.sroa.432.0.insert.ext = zext i32 %i.az to i64
  %.sroa.432.0.insert.shift = shl nuw i64 %.sroa.432.0.insert.ext, 32
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.432.0.insert.shift, %i.aa
  store i64 %.sroa.031.0.insert.insert, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !56
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26, %bb.g
  %.pre46.pre.pre55 = phi ptr [ %i.bk, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26 ], [ %.pre46.pre.pre56, %bb.g ]
  %.pre46.pre50 = phi ptr [ %i.bk, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit26 ], [ %.pre46.pre, %bb.g ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1000 ; 2 uses
  %.not19 = icmp eq i32 %i.bp, %i.y
  br i1 %.not19, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq ptr %.pre46.pre50, null
  br i1 %i.bq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds i8, ptr %.pre46.pre50, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !56 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.pre46.pre50, i64 -8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !56
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i27 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %.phi.trans.insert.i28 = getelementptr inbounds i8, ptr %.pre.i27, i64 -4
  %.pre2.i29 = load i32, ptr %.phi.trans.insert.i28, align 4, !tbaa !56
  br label %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30

_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30: ; preds = %bb.m, %bb.n
  %i.bw = phi i32 [ %.pre2.i29, %bb.n ], [ %i.bs, %bb.m ]
  %i.bx = phi ptr [ %.pre.i27, %bb.n ], [ %.pre46.pre50, %bb.m ]
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %.sroa.4.0.insert.shift = shl nuw i64 %i.ad, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bz, align 4
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !56
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30, %bb.k
  %.pre46.pre.pre54 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre.pre55, %bb.k ]
  %.pre46.pre49 = phi ptr [ %i.ca, %_ZN6vectorISt4pairIiiELb0EjE9push_backEOS1_.exit30 ], [ %.pre46.pre50, %bb.k ] ; 2 uses
  %i.ce = icmp eq ptr %.pre46.pre49, null
  br i1 %i.ce, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, !llvm.loop !1384

_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorISt4pairIiiELb0EjE5emptyEv.exit, %bb.o, %_ZN6vectorISt4pairIiiELb0EjE5resetEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_6si_extEE12update_cellsEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.348", align 1 ; 4 uses
  %3 = alloca %"struct.smt::theory_dense_diff_logic<smt::si_ext>::cell_trail", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1042 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4edgeELb1EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4edgeELb1EjE4backEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4edgeELb1EjE4backEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 4294967295, %bb.a ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i.i ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !999  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1000
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1026 ; 6 uses
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1029 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit.thread, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit.thread: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4edgeELb1EjE4backEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1023 ; 2 uses
  br label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4edgeELb1EjE4backEv.exit
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1023 ; 4 uses
  %.not83 = icmp eq i32 %i.w, 0
  br i1 %.not83, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit
  %i.ac = zext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ac
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g
  %i.ae = icmp eq ptr %i.o, null
  br i1 %i.ae, label %._crit_edge96, label %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit

_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit: ; preds = %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit.thread, %._crit_edge
  %.061.lcssa124 = phi ptr [ %.2, %._crit_edge ], [ %i.u, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ab, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %._crit_edge ], [ %i.u, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit.thread ], [ %i.ab, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjE3endEv.exit ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %.not6591 = icmp eq i32 %i.ah, 0
  br i1 %.not6591, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit
  %i.al = zext i32 %i.j to i64
  %.not6887 = icmp eq ptr %i.af, %.061.lcssa124
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %.not6887.fr = freeze i1 %.not6887
  br i1 %.not6887.fr, label %._crit_edge96, label %.lr.ph95.split

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.06185 = phi ptr [ %i.ab, %.lr.ph ], [ %.2, %bb.g ] ; 5 uses
  %.06284 = phi ptr [ %i.r, %.lr.ph ], [ %i.be, %bb.g ] ; 3 uses
  %i.ap = load i32, ptr %.06284, align 8, !tbaa !1005
  %.not70 = icmp eq i32 %i.ap, -1
  %.not71 = icmp eq i64 %indvars.iv, %i.ac
  %or.cond = select i1 %.not70, i1 true, i1 %.not71
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %.06284, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1006
  %i.at = add nsw i32 %i.as, %i.aq                ; 2 uses
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !1029
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1005
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1006
  %i.ba = icmp slt i32 %i.at, %i.az
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bb, ptr %.06185, align 4, !tbaa !1389
  %i.bc = getelementptr inbounds nuw i8, ptr %.06185, i64 4
  store i32 %i.at, ptr %i.bc, align 4, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %.06185, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.2 = phi ptr [ %.06185, %bb.c ], [ %i.bd, %bb.f ], [ %.06185, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06284, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq ptr %i.be, %i.z
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !1385

._crit_edge96:                                    ; preds = %..loopexit_crit_edge, %._crit_edge, %.lr.ph95, %_ZN6vectorIS_IN3smt23theory_dense_diff_logicINS0_6si_extEE4cellELb1EjELb1EjE3endEv.exit
  ret void

.lr.ph95.split:                                   ; preds = %.lr.ph95, %..loopexit_crit_edge
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %..loopexit_crit_edge ], [ 0, %.lr.ph95 ] ; 8 uses
  %.05992 = phi ptr [ %i.ft, %..loopexit_crit_edge ], [ %i.o, %.lr.ph95 ] ; 2 uses
  %.not66 = icmp eq i64 %indvars.iv99, %i.p
  br i1 %.not66, label %..loopexit_crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph95.split
  %i.bf = load ptr, ptr %.05992, align 8, !tbaa !1029
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.al ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1005
  %.not67 = icmp eq i32 %i.bh, -1
  br i1 %.not67, label %..loopexit_crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = trunc nuw nsw i64 %indvars.iv99 to i32
  %i.bk = trunc i64 %indvars.iv99 to i16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph90, %_ZN3smt23theory_dense_diff_logicINS_6si_extEE20propagate_using_cellEii.exit
  %.388 = phi ptr [ %i.af, %.lr.ph90 ], [ %i.fs, %_ZN3smt23theory_dense_diff_logicINS_6si_extEE20propagate_using_cellEii.exit ] ; 3 uses
  %i.bl = load i32, ptr %.388, align 4, !tbaa !1389 ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %.not69 = icmp eq i64 %indvars.iv99, %i.bm
  br i1 %.not69, label %_ZN3smt23theory_dense_diff_logicINS_6si_extEE20propagate_using_cellEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %.388, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1006
  %i.bq = add nsw i32 %i.bp, %i.bn                ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !1026
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv99
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1029
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bm ; 6 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !1005
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1006
  %i.bz = icmp slt i32 %i.bq, %i.by
  br i1 %i.bz, label %bb.l, label %_ZN3smt23theory_dense_diff_logicINS_6si_extEE20propagate_using_cellEii.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ca = trunc i32 %i.bl to i16
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !1005
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  call void @_ZN3smt23theory_dense_diff_logicINS_6si_extEE10cell_trailC1EttiRK9s_integer(ptr noundef nonnull align 4 dereferenceable(12) %3, i16 noundef zeroext %i.bk, i16 noundef zeroext %i.ca, i32 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !1045 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56 ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !56
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE9push_backEOS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.ck = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  store i32 2, ptr %i.ck, align 4, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 0, ptr %i.cl, align 4, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.am, align 8, !tbaa !1045
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = mul i32 %i.cg, 3
  %i.co = add i32 %i.cn, 1
  %i.cp = lshr i32 %i.co, 1                       ; 3 uses
  %i.cq = mul i32 %i.cp, 12
  %i.cr = add i32 %i.cq, 8                        ; 2 uses
  %.not.i74 = icmp ugt i32 %i.cp, %i.cg
  br i1 %.not.i74, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = mul i32 %i.cg, 12
  %i.ct = add i32 %i.cs, 8
  %.not27.i = icmp ugt i32 %i.cr, %i.ct
  br i1 %.not27.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cu, align 8, !tbaa !197
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !397
  %i.cx = load ptr, ptr %1, align 8, !tbaa !284   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !285 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !284
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !230
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !230
  %.phi.trans.insert.i75 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i76 = load i64, ptr %.phi.trans.insert.i75, align 8, !tbaa !285
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.s
  %i.df = phi i64 [ %i.db, %bb.s ], [ %.pre.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !285
  store ptr %i.cy, ptr %1, align 8, !tbaa !284
  store i64 0, ptr %i.dg, align 8, !tbaa !285
  store i8 0, ptr %i.cy, align 8, !tbaa !230
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.x unwind label %bb.t

bb.t:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %1, align 8, !tbaa !284   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cy
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.t
  %i.dl = load i64, ptr %i.cy, align 8, !tbaa !230
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.cu) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dn, %bb.u ]
  resume { ptr, i32 } %.pn32.i

bb.w:                                             ; preds = %bb.p
  %i.do = zext i32 %i.cr to i64
  %i.dp = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ch, i64 noundef %i.do) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.am, align 8, !tbaa !1045
  store i32 %i.cp, ptr %i.dp, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit

bb.x:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit: ; preds = %bb.n, %bb.w
  %.pre.i = phi ptr [ %i.cm, %bb.n ], [ %i.dq, %bb.w ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56
  br label %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE9push_backEOS4_.exit

_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE9push_backEOS4_.exit: ; preds = %bb.m, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit
  %i.dr = phi i32 [ %.pre2.i, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit ], [ %i.cg, %bb.m ]
  %i.ds = phi ptr [ %.pre.i, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_6si_extEE10cell_trailELb1EjE13expand_vectorEv.exit ], [ %i.cd, %bb.m ]
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dt
end_hunk_6
