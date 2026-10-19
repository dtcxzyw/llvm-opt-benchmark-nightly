Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_tangent_lemmas?download=true
inline.NumInlined: 572
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3nla11tangent_imp14generate_planeERKNS_5pointE:bb.a
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #13
  unreachable

_ZN8rationalD2Ev.exit60:                          ; preds = %.noexc.i59
  %i.dk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i61 unwind label %bb.v

.noexc.i61:                                       ; preds = %_ZN8rationalD2Ev.exit60
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.co)
          to label %_ZN8rationalD2Ev.exit62 unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i61, %_ZN8rationalD2Ev.exit60
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #13
  unreachable

_ZN8rationalD2Ev.exit62:                          ; preds = %.noexc.i61
  %i.dn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i63 unwind label %bb.w

.noexc.i63:                                       ; preds = %_ZN8rationalD2Ev.exit62
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %_ZN8rationalD2Ev.exit64 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i63, %_ZN8rationalD2Ev.exit62
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #13
  unreachable

_ZN8rationalD2Ev.exit64:                          ; preds = %.noexc.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !244, !nonnull !43, !align !232
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !233, !range !230, !noalias !303, !noundef !43
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 4, !alias.scope !303
  %i.dw = and i8 %i.dv, -4
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.dx, align 8, !tbaa !210, !alias.scope !303
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store i32 1, ptr %i.dy, align 8, !tbaa !209, !alias.scope !303
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 5 uses
  %i.ea = load i8, ptr %i.dz, align 4, !alias.scope !303
  %i.eb = and i8 %i.ea, -4
  store i8 %i.eb, ptr %i.dz, align 4, !alias.scope !303
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr null, ptr %i.ec, align 8, !tbaa !210, !alias.scope !303
  %i.ed = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208, !noalias !303
  %..i65 = select i1 %i.dt, i32 -1, i32 1
  store i32 %..i65, ptr %15, align 8, !tbaa !209, !alias.scope !303
  store i8 %i.dw, ptr %i.du, align 4, !alias.scope !303
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %bb.x unwind label %bb.bo

bb.x:                                             ; preds = %_ZN8rationalD2Ev.exit64
  store i32 1, ptr %i.dy, align 8, !tbaa !209, !alias.scope !303
  %i.ee = load i8, ptr %i.dz, align 4, !alias.scope !303
  %i.ef = and i8 %i.ee, -2
  store i8 %i.ef, ptr %i.dz, align 4, !alias.scope !303
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  store i32 0, ptr %14, align 8, !tbaa !209, !alias.scope !304
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 4, !alias.scope !304
  %i.ei = and i8 %i.eh, -4                        ; 2 uses
  store i8 %i.ei, ptr %i.eg, align 4, !alias.scope !304
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.ej, align 8, !tbaa !210, !alias.scope !304
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store i32 1, ptr %i.ek, align 8, !tbaa !209, !alias.scope !304
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 4 uses
  %i.em = load i8, ptr %i.el, align 4, !alias.scope !304
  %i.en = and i8 %i.em, -4
  store i8 %i.en, ptr %i.el, align 4, !alias.scope !304
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr null, ptr %i.eo, align 8, !tbaa !210, !alias.scope !304
  %i.ep = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208, !noalias !304 ; 2 uses
  %i.eq = load i8, ptr %i.du, align 4, !noalias !304
  %i.er = and i8 %i.eq, 1
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68.thread, label %bb.y

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68.thread: ; preds = %bb.x
  %i.et = load i32, ptr %15, align 8, !tbaa !209, !noalias !304
  store i32 %i.et, ptr %14, align 8, !tbaa !209, !alias.scope !304
  store i8 %i.ei, ptr %i.eg, align 4, !alias.scope !304
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68 unwind label %bb.bp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68: ; preds = %bb.y
  %.pre95 = load i8, ptr %i.dz, align 4, !noalias !304
  %i.eu = and i8 %.pre95, 1
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68.thread, %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  %i.ew = load i32, ptr %i.dy, align 8, !tbaa !209, !noalias !304
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !209, !alias.scope !304
  %i.ex = load i8, ptr %i.el, align 4, !alias.scope !304
  %i.ey = and i8 %i.ex, -2
  store i8 %i.ey, ptr %i.el, align 4, !alias.scope !304
  br label %_ZN8rationalC2ERKS_.exit.i69

bb.aa:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %_ZN8rationalC2ERKS_.exit.i69 unwind label %bb.bp

_ZN8rationalC2ERKS_.exit.i69:                     ; preds = %bb.aa, %bb.z
  %i.ez = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208, !noalias !304
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZngRK8rational.exit74 unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i69
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #12
  br label %.body72

_ZngRK8rational.exit74:                           ; preds = %_ZN8rationalC2ERKS_.exit.i69
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.ac unwind label %bb.bq

bb.ac:                                            ; preds = %_ZngRK8rational.exit74
  %i.fb = load i32, ptr %i.g, align 8, !tbaa !219
  invoke void @_ZN2lp8lar_term12add_monomialERK8rationalj(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.fb)
          to label %bb.ad unwind label %bb.br

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i75 unwind label %bb.ae

.noexc.i75:                                       ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %_ZN8rationalD2Ev.exit76 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i75, %bb.ad
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #13
  unreachable

_ZN8rationalD2Ev.exit76:                          ; preds = %.noexc.i75
  %i.fg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i77 unwind label %bb.af

.noexc.i77:                                       ; preds = %_ZN8rationalD2Ev.exit76
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %_ZN8rationalD2Ev.exit78 unwind label %bb.af

bb.af:                                            ; preds = %.noexc.i77, %_ZN8rationalD2Ev.exit76
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #13
  unreachable

_ZN8rationalD2Ev.exit78:                          ; preds = %.noexc.i77
  %i.fj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc.i79 unwind label %bb.ag

.noexc.i79:                                       ; preds = %_ZN8rationalD2Ev.exit78
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %_ZN8rationalD2Ev.exit80 unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc.i79, %_ZN8rationalD2Ev.exit78
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #13
  unreachable

_ZN8rationalD2Ev.exit80:                          ; preds = %.noexc.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !216
  invoke void @_ZN2lp8lar_term7add_varEj(ptr noundef nonnull align 8 dereferenceable(28) %9, i32 noundef %i.fm)
          to label %bb.ah unwind label %19

bb.ah:                                            ; preds = %_ZN8rationalD2Ev.exit80
  %i.fn = load i8, ptr %i.k, align 8, !tbaa !214, !range !230, !noundef !43
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !215, !range !230, !noundef !43
  %i.fr = trunc nuw i8 %i.fq to i1                ; 2 uses
  %i.fs = select i1 %i.fr, i32 1, i32 2
  %i.ft = select i1 %i.fr, i32 -1, i32 -2
  %i.fu = select i1 %i.fo, i32 %i.fs, i32 %i.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  store i32 0, ptr %18, align 8, !tbaa !209, !alias.scope !305
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  %i.fw = load i8, ptr %i.fv, align 4, !alias.scope !305
  %i.fx = and i8 %i.fw, -4                        ; 2 uses
  store i8 %i.fx, ptr %i.fv, align 4, !alias.scope !305
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.fy, align 8, !tbaa !210, !alias.scope !305
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store i32 1, ptr %i.fz, align 8, !tbaa !209, !alias.scope !305
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 4 uses
  %i.gb = load i8, ptr %i.ga, align 4, !alias.scope !305
  %i.gc = and i8 %i.gb, -4
  store i8 %i.gc, ptr %i.ga, align 4, !alias.scope !305
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr null, ptr %i.gd, align 8, !tbaa !210, !alias.scope !305
  %i.ge = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208, !noalias !305 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gg = load i8, ptr %i.gf, align 4, !noalias !305
  %i.gh = and i8 %i.gg, 1
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gj = load i32, ptr %1, align 8, !tbaa !209, !noalias !305
  store i32 %i.gj, ptr %18, align 8, !tbaa !209, !alias.scope !305
  store i8 %i.fx, ptr %i.fv, align 4, !alias.scope !305
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i81

bb.aj:                                            ; preds = %bb.ah
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i81 unwind label %bb.bu

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i81: ; preds = %bb.aj, %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gm = load i8, ptr %i.gl, align 4, !noalias !305
  %i.gn = and i8 %i.gm, 1
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i81
  %i.gp = load i32, ptr %i.gk, align 8, !tbaa !209, !noalias !305
  store i32 %i.gp, ptr %i.fz, align 8, !tbaa !209, !alias.scope !305
  %i.gq = load i8, ptr %i.ga, align 4, !alias.scope !305
  %i.gr = and i8 %i.gq, -2
  store i8 %i.gr, ptr %i.ga, align 4, !alias.scope !305
  br label %_ZN8rationalC2ERKS_.exit.i82

bb.al:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i81
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.gk)
          to label %_ZN8rationalC2ERKS_.exit.i82 unwind label %bb.bu

_ZN8rationalC2ERKS_.exit.i82:                     ; preds = %bb.al, %bb.ak
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208, !noalias !305
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZngRK8rational.exit87 unwind label %bb.am

bb.am:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i82
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %18) #12
  br label %.body85

_ZngRK8rational.exit87:                           ; preds = %_ZN8rationalC2ERKS_.exit.i82
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.an unwind label %bb.bv

bb.an:                                            ; preds = %_ZngRK8rational.exit87
  invoke void @_ZN3nla4ineqC2ERKN2lp8lar_termENS1_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(28) %9, i32 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ao unwind label %bb.bw

bb.ao:                                            ; preds = %bb.an
  %i.gu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %bb.ap unwind label %bb.bx     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #12
  %i.gv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc.i88 unwind label %bb.aq

.noexc.i88:                                       ; preds = %bb.ap
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gw)
          to label %_ZN8rationalD2Ev.exit89 unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc.i88, %bb.ap
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #13
  unreachable

_ZN8rationalD2Ev.exit89:                          ; preds = %.noexc.i88
  %i.gz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc.i90 unwind label %bb.ar

.noexc.i90:                                       ; preds = %_ZN8rationalD2Ev.exit89
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN8rationalD2Ev.exit91 unwind label %bb.ar

bb.ar:                                            ; preds = %.noexc.i90, %_ZN8rationalD2Ev.exit89
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #13
  unreachable

_ZN8rationalD2Ev.exit91:                          ; preds = %.noexc.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !221, !range !230, !noundef !43
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %_ZN3nla11tangent_imp7explainERNS_13lemma_builderE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN8rationalD2Ev.exit91
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !243, !nonnull !43, !align !44
  %i.hh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderaNERKNS_5monicE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(34) %i.hg)
          to label %.noexc92 unwind label %bb.ca  ; 0 uses

.noexc92:                                         ; preds = %bb.as
  %i.hi = load ptr, ptr %i.t, align 8, !tbaa !244, !nonnull !43, !align !232
  %i.hj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderaNERKNS_6factorE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(9) %i.hi)
          to label %.noexc93 unwind label %bb.ca  ; 0 uses

.noexc93:                                         ; preds = %.noexc92
  %i.hk = load ptr, ptr %i.au, align 8, !tbaa !231, !nonnull !43, !align !232
  %i.hl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderaNERKNS_6factorE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(9) %i.hk)
          to label %_ZN3nla11tangent_imp7explainERNS_13lemma_builderE.exit unwind label %bb.ca ; 0 uses

_ZN3nla11tangent_imp7explainERNS_13lemma_builderE.exit: ; preds = %_ZN8rationalD2Ev.exit91, %.noexc93
  %i.hm = load ptr, ptr %9, align 8, !tbaa !241   ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZN2lp8lar_termD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN3nla11tangent_imp7explainERNS_13lemma_builderE.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !242 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.at, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi i32 [ %i.hw, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.hp, %bb.at ]
  %.047.i.i.i.i.i.i.i.i = phi ptr [ %i.hv, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.hm, %bb.at ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 16
  %i.hr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %i.hq)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.au

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 32
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
          to label %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #13
  unreachable

_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 48
  %i.hw = add i32 %.08.i.i.i.i.i.i.i.i, -1        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i, %bb.at
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hm)
          to label %_ZN2lp8lar_termD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #13
  unreachable

_ZN2lp8lar_termD2Ev.exit:                         ; preds = %_ZN3nla11tangent_imp7explainERNS_13lemma_builderE.exit, %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %_ZN2lp8lar_termD2Ev.exit
  ret void

bb.ax:                                            ; preds = %bb.b
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ay:                                            ; preds = %bb.c
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.d
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.ib, %bb.az ], [ %i.ia, %bb.ay ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ba ], [ %i.hz, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.cd

bb.bc:                                            ; preds = %_ZN8rationalD2Ev.exit49
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %bb.h
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn28 = phi { ptr, i32 } [ %i.ie, %bb.be ], [ %i.id, %bb.bd ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #12
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.bf ], [ %i.ic, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.cd

bb.bh:                                            ; preds = %_ZN8rationalD2Ev.exit55
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bi:                                            ; preds = %bb.m
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bj:                                            ; preds = %bb.q, %bb.o
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %_ZngRK8rational.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.s
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn31 = phi { ptr, i32 } [ %i.ij, %bb.bl ], [ %i.ii, %bb.bk ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #12
  br label %.body

.body:                                            ; preds = %bb.bj, %bb.r, %bb.bm
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.bm ], [ %i.ih, %bb.bj ], [ %i.de, %bb.r ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #12
  br label %bb.bn

bb.bn:                                            ; preds = %.body, %bb.bi
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %.body ], [ %i.ig, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.cb

bb.bo:                                            ; preds = %_ZN8rationalD2Ev.exit64
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bp:                                            ; preds = %bb.aa, %bb.y
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body72

bb.bq:                                            ; preds = %_ZngRK8rational.exit74
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.ac
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #12
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn35 = phi { ptr, i32 } [ %i.in, %bb.br ], [ %i.im, %bb.bq ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #12
  br label %.body72

.body72:                                          ; preds = %bb.bp, %bb.ab, %bb.bs
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.bs ], [ %i.il, %bb.bp ], [ %i.fa, %bb.ab ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #12
  br label %bb.bt

bb.bt:                                            ; preds = %.body72, %bb.bo
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %.body72 ], [ %i.ik, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.cb

19:                                               ; preds = %_ZN8rationalD2Ev.exit80
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bu:                                            ; preds = %bb.al, %bb.aj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.bv:                                            ; preds = %_ZngRK8rational.exit87
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.an
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.ao
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #12
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn39 = phi { ptr, i32 } [ %i.ir, %bb.bx ], [ %i.iq, %bb.bw ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.by ], [ %i.ip, %bb.bv ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %18) #12
  br label %.body85

.body85:                                          ; preds = %bb.bu, %bb.am, %bb.bz
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.bz ], [ %i.io, %bb.bu ], [ %i.gt, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc93, %.noexc92, %bb.as
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.body85, %bb.ca, %19, %bb.bt, %bb.bn
  %.pn43.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.bn ], [ %20, %19 ], [ %.pn35.pn.pn, %bb.bt ], [ %i.is, %bb.ca ], [ %.pn39.pn.pn, %.body85 ]
  call void @_ZN2lp8lar_termD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %9) #12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bh
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.cb ], [ %i.if, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bg, %bb.bb
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %bb.cc ], [ %.pn28.pn, %bb.bg ], [ %.pn.pn, %bb.bb ]
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3nla11tangent_imp15set_box_cornersEv(ptr noundef nonnull align 8 dereferenceable(313) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.nla::point", align 8       ; 5 uses
  %2 = alloca %"struct.nla::point", align 8       ; 5 uses
  %3 = alloca %"struct.nla::point", align 8       ; 5 uses
  %4 = alloca %"struct.nla::point", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !219
  %i.f = tail call noundef zeroext i1 @_ZNK3nla4core15has_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.c, i32 noundef %i.e)
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.i = load i32, ptr %i.d, align 8, !tbaa !219
  %i.j = tail call noundef zeroext i1 @_ZNK3nla4core15has_upper_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.h, i32 noundef %i.i)
  br i1 %i.j, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !220
  %i.o = tail call noundef zeroext i1 @_ZNK3nla4core15has_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.l, i32 noundef %i.n)
  br i1 %i.o, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.r = load i32, ptr %i.m, align 4, !tbaa !220
  %i.s = tail call noundef zeroext i1 @_ZNK3nla4core15has_upper_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.q, i32 noundef %i.r)
  br i1 %i.s, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.v = load i32, ptr %i.d, align 8, !tbaa !219
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3nla4core15get_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.u, i32 noundef %i.v) ; 8 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.z = load i32, ptr %i.d, align 8, !tbaa !219
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3nla4core15get_upper_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.y, i32 noundef %i.z) ; 8 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.ad = load i32, ptr %i.m, align 4, !tbaa !220
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3nla4core15get_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.ac, i32 noundef %i.ad) ; 8 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !220
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3nla4core15get_upper_boundEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.ag, i32 noundef %i.ah) ; 8 uses
  %i.aj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.f, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.split.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

.split.i.i:                                       ; preds = %bb.f
  %i.as = load i32, ptr %i.w, align 8, !tbaa !209
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !209
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZeqRK8rationalS1_.exit.thread

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i:     ; preds = %bb.f, %bb.e
  %i.av = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.g, label %_ZeqRK8rationalS1_.exit.thread

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i, %.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %_ZeqRK8rationalS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.split, label %_ZeqRK8rationalS1_.exit

.split:                                           ; preds = %bb.h
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !209
  %i.bi = load i32, ptr %i.ay, align 8, !tbaa !209
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.s, label %_ZeqRK8rationalS1_.exit.thread

_ZeqRK8rationalS1_.exit:                          ; preds = %bb.g, %bb.h
  %i.bk = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %_ZeqRK8rationalS1_.exit.thread

_ZeqRK8rationalS1_.exit.thread:                   ; preds = %.split.i.i, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i, %.split, %_ZeqRK8rationalS1_.exit
  %i.bm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !208 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, 1
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i22

bb.i:                                             ; preds = %_ZeqRK8rationalS1_.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.split.i.i23, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i22

.split.i.i23:                                     ; preds = %bb.i
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !209
  %i.bw = load i32, ptr %i.ai, align 8, !tbaa !209
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.j, label %_ZeqRK8rationalS1_.exit24.thread

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i22:   ; preds = %bb.i, %_ZeqRK8rationalS1_.exit.thread
  %i.by = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.j, label %_ZeqRK8rationalS1_.exit24.thread

bb.j:                                             ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i22, %.split.i.i23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = and i8 %i.cd, 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %_ZeqRK8rationalS1_.exit24

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, 1
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %.split25, label %_ZeqRK8rationalS1_.exit24

.split25:                                         ; preds = %bb.k
  %i.ck = load i32, ptr %i.ca, align 8, !tbaa !209
  %i.cl = load i32, ptr %i.cb, align 8, !tbaa !209
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZeqRK8rationalS1_.exit24.thread

_ZeqRK8rationalS1_.exit24:                        ; preds = %bb.j, %bb.k
  %i.cn = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %_ZeqRK8rationalS1_.exit24.thread

_ZeqRK8rationalS1_.exit24.thread:                 ; preds = %.split.i.i23, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i22, %.split25, %_ZeqRK8rationalS1_.exit24
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.cr = load i32, ptr %i.d, align 8, !tbaa !219
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 200
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !203, !nonnull !43, !align !44
  %i.cu = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !206
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !43, !align !44
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.db = load i32, ptr %i.m, align 4, !tbaa !220
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !203, !nonnull !43, !align !44
  %i.de = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !206
  %i.dh = zext i32 %i.db to i64
  %i.di = getelementptr inbounds nuw [64 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  %i.dj = tail call noundef zeroext i1 @_ZeqRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br i1 %i.dj, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_ZeqRK8rationalS1_.exit24.thread
  %i.dk = tail call noundef zeroext i1 @_ZeqRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
end_hunk_0
