Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/grobner?download=true
inline.NumInlined: 1098
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7grobner9assert_eqEP4exprPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyE:bb.a
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bs = load ptr, ptr %3, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bs, %i.f
  %i.bt = icmp eq ptr %i.bs, null
  %or.cond.i.i.i22 = or i1 %.not.i.i.i21, %i.bt
  br i1 %or.cond.i.i.i22, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %_ZN8rationalD2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.u:                                             ; preds = %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.bd, %bb.j ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216, !nonnull !84, !align !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !96
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !96
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7grobner25assert_monomial_tautologyEP4expr(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.rational, align 8            ; 12 uses
  %3 = alloca %class.rational, align 8            ; 11 uses
  %i.b = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 1, ptr %i.h, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  store i8 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !149
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !101
  store i32 1, ptr %2, align 8, !tbaa !130
  store i8 %i.f, ptr %i.d, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  store i32 1, ptr %i.h, align 8, !tbaa !130
  %i.n = load i8, ptr %i.i, align 4
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.i, align 4
  %i.p = invoke noundef ptr @_ZN7grobner11mk_monomialERK8rationalP4expr(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6vectorIPN7grobner8monomialELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !91 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !87 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %i.r = zext i32 %.pre2.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.r
  store ptr %i.p, ptr %i.s, align 8, !tbaa !99
  %i.t = add i32 %.pre2.i, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !87
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !101 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %.noexc
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.x = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.aa, align 8, !tbaa !130
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -4
  store i8 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.al, align 8, !tbaa !149
  %i.am = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !101
  store i32 -1, ptr %3, align 8, !tbaa !130
  store i8 %i.af, ptr %i.ad, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  %i.an = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ao = load i32, ptr %3, align 8, !tbaa !87
  store i32 %i.ao, ptr %i.x, align 8, !tbaa !87
  store i32 0, ptr %3, align 8, !tbaa !87
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !217
  store ptr %i.ap, ptr %i.z, align 8, !tbaa !217
  store ptr null, ptr %i.ag, align 8, !tbaa !217
  %i.aq = load i8, ptr %i.ad, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, 3
  store i8 %i.ar, ptr %i.y, align 4
  %4 = and i8 %i.aq, -4
  store i8 %4, ptr %i.ad, align 4
  store i32 1, ptr %i.aa, align 8, !tbaa !87
  store i32 1, ptr %i.ah, align 8, !tbaa !87
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !217
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !217
  store ptr null, ptr %i.al, align 8, !tbaa !217
  %i.at = and i8 %i.an, 2
  %i.au = and i8 %i.an, -4
  store i8 %i.at, ptr %i.ab, align 4
  store i8 %i.au, ptr %i.ai, align 4
  %i.av = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !101 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i2 unwind label %bb.d

.noexc.i2:                                        ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN8rationalD2Ev.exit3 unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i2, %_ZN8rationalD2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #21
  unreachable

_ZN8rationalD2Ev.exit3:                           ; preds = %.noexc.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8rationalD2Ev.exit3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !96
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !96
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %_ZN8rationalD2Ev.exit3, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  %.pre.i4 = load ptr, ptr %i.bb, align 8, !tbaa !90 ; 3 uses
  %.phi.trans.insert.i5 = getelementptr inbounds i8, ptr %.pre.i4, i64 -4
  %.pre2.i6 = load i32, ptr %.phi.trans.insert.i5, align 4, !tbaa !87 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.pre.i4, i64 -4
  %i.bd = zext i32 %.pre2.i6 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.pre.i4, i64 %i.bd
  store ptr %1, ptr %i.be, align 8, !tbaa !102
  %i.bf = add i32 %.pre2.i6, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !87
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !91  ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !87 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.f, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  call void @_ZN6vectorIPN7grobner8monomialELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i7 = load ptr, ptr %i.c, align 8, !tbaa !91 ; 2 uses
  %.phi.trans.insert.i8 = getelementptr inbounds i8, ptr %.pre.i7, i64 -4
  %.pre2.i9 = load i32, ptr %.phi.trans.insert.i8, align 4, !tbaa !87
  br label %_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit: ; preds = %bb.f, %bb.g
  %i.bn = phi i32 [ %.pre2.i9, %bb.g ], [ %i.bj, %bb.f ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i7, %bb.g ], [ %i.bg, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.x, ptr %i.br, align 8, !tbaa !99
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !87
  call void @_ZN7grobner15normalize_coeffER10ptr_vectorINS_8monomialEE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !92 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZNK7grobner15get_scope_levelEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !87
  br label %_ZNK7grobner15get_scope_levelEv.exit.i

_ZNK7grobner15get_scope_levelEv.exit.i:           ; preds = %bb.h, %_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit
  %.0.i.i.i = phi i32 [ %i.bx, %bb.h ], [ 0, %_ZN6vectorIPN7grobner8monomialELb0EjE9push_backERKS2_.exit ]
  store i32 %.0.i.i.i, ptr %i.b, align 8, !tbaa !146
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !86 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZNK6vectorIPN7grobner8equationELb0EjE4sizeEv.exit.i.thread, label %bb.i

_ZNK6vectorIPN7grobner8equationELb0EjE4sizeEv.exit.i.thread: ; preds = %_ZNK7grobner15get_scope_levelEv.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !147
  store i32 -2147483648, ptr %i.cb, align 4
  br label %bb.j

bb.i:                                             ; preds = %_ZNK7grobner15get_scope_levelEv.exit.i
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !87
  %i.cf = or i32 %i.ce, -2147483648
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !147
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ci = load i32, ptr %i.cd, align 4, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !87
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.j, label %_ZN7grobner13init_equationEPNS_8equationEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyE.exit

bb.j:                                             ; preds = %_ZNK6vectorIPN7grobner8equationELb0EjE4sizeEv.exit.i.thread, %bb.i
  call void @_ZN6vectorIPN7grobner8equationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  %.pre.i.i = load ptr, ptr %i.by, align 8, !tbaa !86 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !87
  br label %_ZN7grobner13init_equationEPNS_8equationEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyE.exit

_ZN7grobner13init_equationEPNS_8equationEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyE.exit: ; preds = %bb.i, %bb.j
  %i.cm = phi i32 [ %.pre2.i.i, %bb.j ], [ %i.ci, %bb.i ] ; 2 uses
  %i.cn = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  store ptr %i.b, ptr %i.cq, align 8, !tbaa !88
  %i.cr = add i32 %i.cm, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.b, ptr %i.a, align 8, !tbaa !88
  call void @_ZN14core_hashtableI14obj_hash_entryIN7grobner8equationEE12obj_ptr_hashIS2_E6ptr_eqIS2_EE6insertEOPS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.ct
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN7grobner19is_eq_monomial_bodyEPKNS_8monomialES2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 5 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %_ZNK7grobner8monomial10get_degreeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  br label %_ZNK7grobner8monomial10get_degreeEv.exit

_ZNK7grobner8monomial10get_degreeEv.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK7grobner8monomial10get_degreeEv.exit20, label %bb.c

bb.c:                                             ; preds = %_ZNK7grobner8monomial10get_degreeEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87
  br label %_ZNK7grobner8monomial10get_degreeEv.exit20

_ZNK7grobner8monomial10get_degreeEv.exit20:       ; preds = %_ZNK7grobner8monomial10get_degreeEv.exit, %bb.c
  %.0.i.i19 = phi i32 [ %i.j, %bb.c ], [ 0, %_ZNK7grobner8monomial10get_degreeEv.exit ]
  %.not = icmp ne i32 %.0.i.i, %.0.i.i19          ; 2 uses
  %brmerge = or i1 %.not, %i.c
  %not..not = xor i1 %.not, true
  br i1 %brmerge, label %.loopexit, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit

_ZNK6vectorIP4exprLb0EjE3endEv.exit:              ; preds = %_ZNK7grobner8monomial10get_degreeEv.exit20
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %.not1722 = icmp eq i32 %i.l, 0
  br i1 %.not1722, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit, %.lr.ph
  %.01424 = phi ptr [ %i.s, %.lr.ph ], [ %i.g, %_ZNK6vectorIP4exprLb0EjE3endEv.exit ] ; 2 uses
  %.01523 = phi ptr [ %i.r, %.lr.ph ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE3endEv.exit ] ; 2 uses
  %i.p = load ptr, ptr %.01523, align 8, !tbaa !102
  %i.q = load ptr, ptr %.01424, align 8, !tbaa !102
  %.not18 = icmp eq ptr %i.p, %i.q                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01523, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01424, i64 8
  %.not17 = icmp ne ptr %i.r, %i.o
  %or.cond.not = select i1 %.not18, i1 %.not17, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !14

end_hunk_0
