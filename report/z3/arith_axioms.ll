Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/arith_axioms?download=true
inline.NumInlined: 1315
inline.NumDeleted: 477
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5arith6solver12mk_var_boundEN3sat7literalEiN6lp_api10bound_kindERK8rational:bb.a
_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.af

bb.ab:                                            ; preds = %.noexc50, %_ZN5arith6solver21bound2constraint_kindEbN6lp_api10bound_kindEb.exit, %.noexc47, %bb.m, %bb.j, %bb.g, %bb.h, %bb.i, %_ZNK5arith6solver6is_intEi.exit, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ac:                                            ; preds = %bb.u, %bb.q
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #17
  br label %.body

.body:                                            ; preds = %bb.t, %bb.x, %bb.ac, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ad ], [ %i.ck, %bb.t ], [ %i.di, %bb.ac ], [ %i.da, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ak

bb.ae:                                            ; preds = %bb.o
  %i.dk = load ptr, ptr %i.br, align 8, !tbaa !219
  %i.dl = invoke noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(152) %i.dk, i32 noundef %i.bo, i32 noundef %.0.i49, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.af unwind label %bb.ab

bb.af:                                            ; preds = %bb.ae, %_ZN8rationalD2Ev.exit
  %.038 = phi i32 [ %i.dc, %_ZN8rationalD2Ev.exit ], [ %i.dl, %bb.ae ] ; 2 uses
  invoke void @_ZN5arith6solver19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %i.bt, i32 %1)
          to label %bb.ag unwind label %bb.ab

bb.ag:                                            ; preds = %bb.af
  %i.dm = xor i32 %1, 1
  invoke void @_ZN5arith6solver19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %.038, i32 %i.dm)
          to label %bb.ah unwind label %bb.ab

bb.ah:                                            ; preds = %bb.ag
  %i.dn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 104)
          to label %bb.ai unwind label %bb.ab     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6lp_api5boundIN3sat7literalEEC2ES2_ijbRK8rationalNS_10bound_kindEjjS6_(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, i32 %1, i32 noundef %2, i32 noundef %i.bo, i1 noundef zeroext %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3, i32 noundef %i.bt, i32 noundef %.038, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai
  %i.do = load ptr, ptr %7, align 8, !tbaa !359, !nonnull !16, !align !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 168 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !352
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !352
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret ptr %i.dn

bb.ak:                                            ; preds = %.body, %bb.ab
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dh, %bb.ab ]
  %i.ds = load ptr, ptr %7, align 8, !tbaa !359, !nonnull !16, !align !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 168 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !352
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !352
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !220    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorI8rationalLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !220   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j ; 8 uses
  store i32 0, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i32 1, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !21
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 8, !tbaa !20
  store i32 %i.z, ptr %i.k, align 8, !tbaa !20
  store i8 %i.n, ptr %i.l, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !20
  store i32 %i.af, ptr %i.p, align 8, !tbaa !20
  %i.ag = load i8, ptr %i.q, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.g, %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !220
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !81
  ret ptr %0
}

declare void @_ZN5arith6solver14init_left_sideERNS0_24scoped_internalize_stateE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN5arith6solver33register_theory_var_in_lar_solverEi(ptr noundef nonnull align 8 dereferenceable(1000), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2, 3) i32 @_ZN5arith6solver21bound2constraint_kindEbN6lp_api10bound_kindEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1000) %0, i1 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %1, i32 -2, i32 -1
  %i.b = select i1 %3, i32 2, i32 %i.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = select i1 %1, i32 2, i32 1
  %i.d = select i1 %3, i32 -2, i32 %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 545, ptr noundef nonnull @.str.16)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

declare noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN5arith6solver19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1000), i32 noundef, i32) local_unnamed_addr #2

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6lp_api5boundIN3sat7literalEEC2ES2_ijbRK8rationalNS_10bound_kindEjjS6_(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %9) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6lp_api5boundIN3sat7literalEEE, i64 16), ptr %0, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = freeze i32 %1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %2 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  store i64 %14, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.a, ptr %i.d, align 4, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4                          ; 2 uses
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 1, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.n, align 8, !tbaa !21
  %i.o = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %5, align 8, !tbaa !20
  store i32 %i.t, ptr %i.e, align 8, !tbaa !20
  store i8 %i.h, ptr %i.f, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.z = load i32, ptr %i.u, align 8, !tbaa !20
  store i32 %i.z, ptr %i.j, align 8, !tbaa !20
  %i.aa = load i8, ptr %i.k, align 4
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.k, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %i.ac, align 8, !tbaa !213
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -4                        ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 1, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.am, align 8, !tbaa !21
  %i.an = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !23 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.as = load i32, ptr %9, align 8, !tbaa !20
  store i32 %i.as, ptr %i.ad, align 8, !tbaa !20
  store i8 %i.ag, ptr %i.ae, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10 unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10: ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10
  %i.ay = load i32, ptr %i.at, align 8, !tbaa !20
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !20
  %i.az = load i8, ptr %i.aj, align 4
  %i.ba = and i8 %i.az, -2
  store i8 %i.ba, ptr %i.aj, align 4
  br label %_ZN8rationalC2ERKS_.exit12

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_ZN8rationalC2ERKS_.exit12 unwind label %bb.j

_ZN8rationalC2ERKS_.exit12:                       ; preds = %bb.h, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %8, ptr %i.bb, align 4, !tbaa !81
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %7, ptr %i.bc, align 8, !tbaa !81
  ret void

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #17
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver9new_eq_ehERKN3euf5th_eqE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = zext i32 %i.b to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57, !nonnull !16, !align !17
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.m = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef %i.l)
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !224
  %.not1.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(108) %0), !inline_history !0
  %i.s = load i32, ptr %i.n, align 8, !tbaa !224
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.n, align 8, !tbaa !224
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZN3euf13th_euf_solver10force_pushEv.exit:        ; preds = %.lr.ph.i, %bb.b
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.g
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !218  ; 3 uses
  %i.y = zext i32 %i.d to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !218 ; 3 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !64
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ae = icmp ugt i32 %i.ac, %i.ad               ; 2 uses
  %spec.select = select i1 %i.ae, ptr %i.ab, ptr %i.x
  %spec.select23 = select i1 %i.ae, ptr %i.x, ptr %i.ab
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !57, !nonnull !16, !align !17
  %i.ag = tail call noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %spec.select, ptr noundef nonnull %spec.select23)
  br i1 %i.ag, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !361
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !361
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.ak, align 8, !tbaa !362
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !80  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.g
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.y
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.aq = tail call noundef i32 @_ZN5arith6solver33register_theory_var_in_lar_solverEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %i.b) ; 2 uses
  %i.ar = tail call noundef i32 @_ZN5arith6solver33register_theory_var_in_lar_solverEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %i.d) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !219
  %i.au = tail call noundef zeroext i1 @_ZN2lp10lar_solver9are_equalEjj(ptr noundef nonnull align 8 dereferenceable(152) %i.at, i32 noundef %i.aq, i32 noundef %i.ar)
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
