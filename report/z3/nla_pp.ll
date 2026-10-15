Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_pp?download=true
inline.NumInlined: 1470
inline.NumDeleted: 612
begin_hunk_0_@_ZgtRK8rationali:bb.a
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.0.i.i.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.al
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZltRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !270
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  store i32 %1, ptr %2, align 8, !tbaa !269
  store i8 %i.c, ptr %i.a, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !269
  %i.k = load i8, ptr %i.f, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.f, align 4
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  %i.s = load i32, ptr %i.n, align 8
  %i.t = icmp eq i32 %i.s, 1
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.a, align 4
  %i.aa = and i8 %i.z, 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %0, align 8, !tbaa !269
  %i.ad = load i32, ptr %2, align 8, !tbaa !269
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br label %_ZltRK8rationalS1_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.af = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.ag = icmp slt i32 %i.af, 0
  br label %_ZltRK8rationalS1_.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZltRK8rationalS1_.exit unwind label %bb.h

_ZltRK8rationalS1_.exit:                          ; preds = %.noexc, %bb.d, %bb.f
  %.0.i.i = phi i1 [ %i.ag, %.noexc ], [ %i.ae, %bb.d ], [ %i.ah, %bb.f ]
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_ZltRK8rationalS1_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i, %_ZltRK8rationalS1_.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.0.i.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.al
}

declare noundef zeroext i1 @_ZNK2lp10lar_solver15column_has_termEj(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(28) ptr @_ZNK2lp10lar_solver8get_termEj(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_1clEbS5_j"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %class.rational, align 8            ; 16 uses
  %9 = alloca %class.rational, align 8            ; 15 uses
  %10 = alloca %class.rational, align 8           ; 15 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !332    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4600 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK3nla4core12is_monic_varEj.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %.not.i.i.i = icmp ult i32 %3, %i.f
  br i1 %.not.i.i.i, label %_ZNK3nla4core12is_monic_varEj.exit, label %_ZNK3nla4core12is_monic_varEj.exit.thread

_ZNK3nla4core12is_monic_varEj.exit:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %.0.i.sroa.speculate.load..i.i = load i32, ptr %i.h, align 4, !tbaa !26 ; 2 uses
  %.not80 = icmp eq i32 %.0.i.sroa.speculate.load..i.i, -1
  br i1 %.not80, label %_ZNK3nla4core12is_monic_varEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK3nla4core12is_monic_varEj.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = zext i32 %.0.i.sroa.speculate.load..i.i to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit82, label %_ZNK6vectorIjLb0EjE3endEv.exit

_ZNK6vectorIjLb0EjE3endEv.exit:                   ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %.not83 = icmp eq i32 %i.q, 0
  br i1 %.not83, label %.loopexit82, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8rationalD2Ev.exit
  %.02784 = phi ptr [ %i.n, %.lr.ph ], [ %i.br, %_ZN8rationalD2Ev.exit ] ; 2 uses
  %i.ac = load i32, ptr %.02784, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ad = shl i32 %i.ac, 1                        ; 4 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !25  ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26
  %.not.i.i = icmp ult i32 %i.ad, %i.ah
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit

.preheader.i.i:                                   ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i, %.preheader.i.i
  %.07.i.i.i = phi i32 [ %i.ak, %.preheader.i.i ], [ %i.ad, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ] ; 3 uses
  %i.ai = zext i32 %.07.i.i.i to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.ak, %.07.i.i.i
  br i1 %.not.i.i.i30, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %.preheader.i.i

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit:       ; preds = %.preheader.i.i, %bb.c, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i
  %.sroa.03.0.i.i = phi i32 [ %i.ad, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ], [ %i.ad, %bb.c ], [ %.07.i.i.i, %.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.al = trunc i32 %.sroa.03.0.i.i to i1         ; 4 uses
  %spec.select.i = select i1 %i.al, ptr @_ZN8rational11m_minus_oneE, ptr @_ZN8rational5m_oneE ; 2 uses
  store i32 0, ptr %9, align 8, !tbaa !269, !alias.scope !421
  %i.am = load i8, ptr %i.v, align 4, !alias.scope !421
  %i.an = and i8 %i.am, -4                        ; 2 uses
  store i8 %i.an, ptr %i.v, align 4, !alias.scope !421
  store ptr null, ptr %i.w, align 8, !tbaa !270, !alias.scope !421
  store i32 1, ptr %i.x, align 8, !tbaa !269, !alias.scope !421
  %i.ao = load i8, ptr %i.y, align 4, !alias.scope !421
  %i.ap = and i8 %i.ao, -4
  store i8 %i.ap, ptr %i.y, align 4, !alias.scope !421
  store ptr null, ptr %i.z, align 8, !tbaa !270, !alias.scope !421
  %i.aq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252, !noalias !421 ; 2 uses
  %.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 4), align 4, !noalias !421
  %.val1.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4, !noalias !421
  %11 = select i1 %i.al, i8 %.val.i, i8 %.val1.i
  %i.ar = and i8 %11, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit
  %i.at = load i32, ptr %spec.select.i, align 8, !tbaa !269, !noalias !421
  store i32 %i.at, ptr %9, align 8, !tbaa !269, !alias.scope !421
  store i8 %i.an, ptr %i.v, align 4, !alias.scope !421
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %12 = select i1 %i.al, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16) ; 2 uses
  %.val2.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 20), align 4, !noalias !421
  %.val3.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4, !noalias !421
  %13 = select i1 %i.al, i8 %.val2.i, i8 %.val3.i
  %i.au = and i8 %13, 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.aw = load i32, ptr %12, align 8, !tbaa !269, !noalias !421
  store i32 %i.aw, ptr %i.x, align 8, !tbaa !269, !alias.scope !421
  %i.ax = load i8, ptr %i.y, align 4, !alias.scope !421
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.y, align 4, !alias.scope !421
  br label %_ZNK3nla10signed_var5rsignEv.exit

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %12)
  br label %_ZNK3nla10signed_var5rsignEv.exit

_ZNK3nla10signed_var5rsignEv.exit:                ; preds = %bb.f, %bb.g
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 3 uses
  %i.ba = load i8, ptr %i.ab, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  %i.bd = load i32, ptr %i.aa, align 8
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK3nla10signed_var5rsignEv.exit
  %i.bg = load i8, ptr %i.y, align 4
  %i.bh = and i8 %i.bg, 1
  %i.bi = icmp eq i8 %i.bh, 0
  %i.bj = load i32, ptr %i.x, align 8
  %i.bk = icmp eq i32 %i.bj, 1
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc31 unwind label %bb.l

.noexc31:                                         ; preds = %.noexc
  store i32 1, ptr %i.aa, align 8, !tbaa !269
  %i.bm = load i8, ptr %i.ab, align 4
  %i.bn = and i8 %i.bm, -2
  store i8 %i.bn, ptr %i.ab, align 4
  br label %_ZN8rationalmLERKS_.exit

bb.j:                                             ; preds = %bb.h, %_ZNK3nla10signed_var5rsignEv.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN8rationalmLERKS_.exit unwind label %bb.l

_ZN8rationalmLERKS_.exit:                         ; preds = %.noexc31, %bb.j
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %_ZN8rationalmLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %_ZN8rationalmLERKS_.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.br = getelementptr inbounds nuw i8, ptr %.02784, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.t
  br i1 %.not, label %.loopexit82, label %bb.c

bb.l:                                             ; preds = %bb.j, %.noexc, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZNK3nla4core12is_monic_varEj.exit.thread:        ; preds = %bb.a, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %_ZNK3nla4core12is_monic_varEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bt = shl i32 %3, 1                           ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33: ; preds = %_ZNK3nla4core12is_monic_varEj.exit.thread
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !26
  %.not.i.i34 = icmp ult i32 %i.bt, %i.by
  br i1 %.not.i.i34, label %.preheader.i.i36, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39

.preheader.i.i36:                                 ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33, %.preheader.i.i36
  %.07.i.i.i37 = phi i32 [ %i.cb, %.preheader.i.i36 ], [ %i.bt, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33 ] ; 3 uses
  %i.bz = zext i32 %.07.i.i.i37 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i38 = icmp eq i32 %i.cb, %.07.i.i.i37
  br i1 %.not.i.i.i38, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39, label %.preheader.i.i36

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39:     ; preds = %.preheader.i.i36, %_ZNK3nla4core12is_monic_varEj.exit.thread, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33
  %.sroa.03.0.i.i35 = phi i32 [ %i.bt, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i33 ], [ %i.bt, %_ZNK3nla4core12is_monic_varEj.exit.thread ], [ %.07.i.i.i37, %.preheader.i.i36 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.cc = trunc i32 %.sroa.03.0.i.i35 to i1       ; 4 uses
  %spec.select.i40 = select i1 %i.cc, ptr @_ZN8rational11m_minus_oneE, ptr @_ZN8rational5m_oneE ; 2 uses
  store i32 0, ptr %10, align 8, !tbaa !269, !alias.scope !422
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 4, !alias.scope !422
  %i.cf = and i8 %i.ce, -4                        ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 4, !alias.scope !422
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !270, !alias.scope !422
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store i32 1, ptr %i.ch, align 8, !tbaa !269, !alias.scope !422
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 5 uses
  %i.cj = load i8, ptr %i.ci, align 4, !alias.scope !422
  %i.ck = and i8 %i.cj, -4
  store i8 %i.ck, ptr %i.ci, align 4, !alias.scope !422
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.cl, align 8, !tbaa !270, !alias.scope !422
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252, !noalias !422 ; 2 uses
  %.val.i41 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 4), align 4, !noalias !422
  %.val1.i42 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4, !noalias !422
  %14 = select i1 %i.cc, i8 %.val.i41, i8 %.val1.i42
  %i.cn = and i8 %14, 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39
  %i.cp = load i32, ptr %spec.select.i40, align 8, !tbaa !269, !noalias !422
  store i32 %i.cp, ptr %10, align 8, !tbaa !269, !alias.scope !422
  store i8 %i.cf, ptr %i.cd, align 4, !alias.scope !422
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i43

bb.n:                                             ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit39
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i40)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i43

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i43: ; preds = %bb.n, %bb.m
  %15 = select i1 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16) ; 2 uses
  %.val2.i44 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational11m_minus_oneE, i64 20), align 4, !noalias !422
  %.val3.i45 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4, !noalias !422
  %16 = select i1 %i.cc, i8 %.val2.i44, i8 %.val3.i45
  %i.cq = and i8 %16, 1
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i43
  %i.cs = load i32, ptr %15, align 8, !tbaa !269, !noalias !422
  store i32 %i.cs, ptr %i.ch, align 8, !tbaa !269, !alias.scope !422
  %i.ct = load i8, ptr %i.ci, align 4, !alias.scope !422
  %i.cu = and i8 %i.ct, -2
  store i8 %i.cu, ptr %i.ci, align 4, !alias.scope !422
  br label %_ZNK3nla10signed_var5rsignEv.exit46

bb.p:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i43
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %_ZNK3nla10signed_var5rsignEv.exit46

_ZNK3nla10signed_var5rsignEv.exit46:              ; preds = %bb.o, %bb.p
  %i.cv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %i.da = icmp eq i8 %i.cz, 0
  %i.db = load i32, ptr %i.cw, align 8
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %i.dd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK3nla10signed_var5rsignEv.exit46
  %i.de = load i8, ptr %i.ci, align 4
  %i.df = and i8 %i.de, 1
  %i.dg = icmp eq i8 %i.df, 0
  %i.dh = load i32, ptr %i.ch, align 8
  %i.di = icmp eq i32 %i.dh, 1
  %i.dj = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc47 unwind label %bb.u

.noexc47:                                         ; preds = %bb.r
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %.noexc48 unwind label %bb.u

.noexc48:                                         ; preds = %.noexc47
  store i32 1, ptr %i.cw, align 8, !tbaa !269
  %i.dk = load i8, ptr %i.cx, align 4
  %i.dl = and i8 %i.dk, -2
  store i8 %i.dl, ptr %i.cx, align 4
  br label %_ZN8rationalmLERKS_.exit50

bb.s:                                             ; preds = %bb.q, %_ZNK3nla10signed_var5rsignEv.exit46
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN8rationalmLERKS_.exit50 unwind label %bb.u

_ZN8rationalmLERKS_.exit50:                       ; preds = %.noexc48, %bb.s
  %i.dm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i51 unwind label %bb.t

.noexc.i51:                                       ; preds = %_ZN8rationalmLERKS_.exit50
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_ZN8rationalD2Ev.exit52 unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i51, %_ZN8rationalmLERKS_.exit50
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #24
  unreachable

_ZN8rationalD2Ev.exit52:                          ; preds = %.noexc.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit82

bb.u:                                             ; preds = %bb.s, %.noexc47, %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume

.loopexit82:                                      ; preds = %_ZN8rationalD2Ev.exit, %bb.b, %_ZNK6vectorIjLb0EjE3endEv.exit, %_ZN8rationalD2Ev.exit52
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !423, !nonnull !19, !align !231 ; 4 uses
  br i1 %1, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %.loopexit82
  %i.ds = call noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
  br i1 %i.ds, label %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = call noundef zeroext i1 @_ZgtRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
  br i1 %i.dt, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !425, !nonnull !19, !align !231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(728) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.dw = load ptr, ptr %7, align 8, !tbaa !236
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !237
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dw, i64 noundef %i.dy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.y ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %bb.x
  %i.ea = load ptr, ptr %7, align 8, !tbaa !236   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZlsRSoRK8rational.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !238
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #23
  br label %_ZlsRSoRK8rational.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %7, align 8, !tbaa !236   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.y
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !238
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

common.resume:                                    ; preds = %bb.l, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i22.i, %bb.an, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i15.i ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i22.i ], [ %i.hb, %bb.an ], [ %i.bs, %bb.l ], [ %i.dp, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZlsRSoRK8rational.exit.i:                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit"

.critedge.i:                                      ; preds = %bb.w, %.loopexit82
  %i.el = call noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
  br i1 %i.el, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.i
  %i.em = load ptr, ptr %i.dr, align 8, !tbaa !425, !nonnull !19, !align !231
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.39, i64 noundef 3) ; 0 uses
  br label %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit"

bb.aa:                                            ; preds = %.critedge.i
  %i.eo = call noundef zeroext i1 @_ZgtRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
  br i1 %i.eo, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.dr, align 8, !tbaa !425, !nonnull !19, !align !231 ; 2 uses
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.39, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.er = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(728) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.es = load ptr, ptr %6, align 8, !tbaa !236
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !237
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.es, i64 noundef %i.eu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i17.i unwind label %bb.ac

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i17.i: ; preds = %bb.ab
  %i.ew = load ptr, ptr %6, align 8, !tbaa !236   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZlsRSoRK8rational.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i17.i
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !238
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #23
  br label %_ZlsRSoRK8rational.exit20.i

bb.ac:                                            ; preds = %bb.ab
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %6, align 8, !tbaa !236   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i: ; preds = %bb.ac
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !238
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i15.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

_ZlsRSoRK8rational.exit20.i:                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i
end_hunk_0
