Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/monomial_bounds?download=true
inline.NumInlined: 1308
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3nla15monomial_bounds15propagate_boundEjN2lp16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !358
  invoke void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.r, i32 noundef %1, i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %4)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZmiRK8rationali.exit
  %i.bd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i33 unwind label %bb.q

.noexc.i33:                                       ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %_ZN8rationalD2Ev.exit34 unwind label %bb.q

bb.q:                                             ; preds = %.noexc.i33, %bb.p
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #18
  unreachable

_ZN8rationalD2Ev.exit34:                          ; preds = %.noexc.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ae

bb.r:                                             ; preds = %_ZmiRK8rationali.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume

bb.s:                                             ; preds = %bb.d
  tail call void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.r, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4)
  br label %bb.ae

bb.t:                                             ; preds = %bb.c
  %i.bi = add i32 %2, -1
  %or.cond = icmp ult i32 %i.bi, 2
  %i.bj = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !224, !nonnull !47, !align !48 ; 2 uses
  br i1 %or.cond, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  store i32 0, ptr %9, align 8, !tbaa !58, !alias.scope !359
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !alias.scope !359
  %i.bo = and i8 %i.bn, -4
  store i8 %i.bo, ptr %i.bm, align 4, !alias.scope !359
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !59, !alias.scope !359
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 1, ptr %i.bq, align 8, !tbaa !58, !alias.scope !359
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 4, !alias.scope !359
  %i.bt = and i8 %i.bs, -4
  store i8 %i.bt, ptr %i.br, align 4, !alias.scope !359
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.bu, align 8, !tbaa !59, !alias.scope !359
  %i.bv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !359 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i35 unwind label %bb.v

.noexc.i35:                                       ; preds = %bb.u
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_Z4ceilRK8rational.exit unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i35, %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #17
  br label %common.resume

_Z4ceilRK8rational.exit:                          ; preds = %.noexc.i35
  store i32 1, ptr %i.bq, align 8, !tbaa !58, !alias.scope !359
  %i.bx = load i8, ptr %i.br, align 4, !alias.scope !359
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.br, align 4, !alias.scope !359
  invoke void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, i32 noundef %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %4)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_Z4ceilRK8rational.exit
  %i.bz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i36 unwind label %bb.x

.noexc.i36:                                       ; preds = %bb.w
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_ZN8rationalD2Ev.exit37 unwind label %bb.x

bb.x:                                             ; preds = %.noexc.i36, %bb.w
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #18
  unreachable

_ZN8rationalD2Ev.exit37:                          ; preds = %.noexc.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ae

bb.y:                                             ; preds = %_Z4ceilRK8rational.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  store i32 0, ptr %10, align 8, !tbaa !58, !alias.scope !360
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 4, !alias.scope !360
  %i.cf = and i8 %i.ce, -4
  store i8 %i.cf, ptr %i.cd, align 4, !alias.scope !360
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !59, !alias.scope !360
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i32 1, ptr %i.ch, align 8, !tbaa !58, !alias.scope !360
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 4, !alias.scope !360
  %i.ck = and i8 %i.cj, -4
  store i8 %i.ck, ptr %i.ci, align 4, !alias.scope !360
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.cl, align 8, !tbaa !59, !alias.scope !360
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !360 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE5floorERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i38 unwind label %bb.aa

.noexc.i38:                                       ; preds = %bb.z
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_Z5floorRK8rational.exit unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc.i38, %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #17
  br label %common.resume

_Z5floorRK8rational.exit:                         ; preds = %.noexc.i38
  store i32 1, ptr %i.ch, align 8, !tbaa !58, !alias.scope !360
  %i.co = load i8, ptr %i.ci, align 4, !alias.scope !360
  %i.cp = and i8 %i.co, -2
  store i8 %i.cp, ptr %i.ci, align 4, !alias.scope !360
  invoke void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, i32 noundef %1, i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %4)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_Z5floorRK8rational.exit
  %i.cq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i39 unwind label %bb.ac

.noexc.i39:                                       ; preds = %bb.ab
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_ZN8rationalD2Ev.exit40 unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc.i39, %bb.ab
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #18
  unreachable

_ZN8rationalD2Ev.exit40:                          ; preds = %.noexc.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ae

bb.ad:                                            ; preds = %_Z5floorRK8rational.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %common.resume

bb.ae:                                            ; preds = %_ZN8rationalD2Ev.exit34, %bb.s, %_ZN8rationalD2Ev.exit, %_ZN8rationalD2Ev.exit40, %_ZN8rationalD2Ev.exit37, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3nla15monomial_bounds15propagate_valueERN13dep_intervals9im_config8intervalEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 18 uses
  %5 = alloca %"class.lp::explanation", align 8   ; 19 uses
  %6 = alloca %class.rational, align 8            ; 13 uses
  %7 = alloca %"class.nla::lemma_builder", align 8 ; 7 uses
  %8 = alloca %class.rational, align 8            ; 14 uses
  %9 = alloca %"class.nla::lemma_builder", align 8 ; 8 uses
  %10 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %11 = alloca %"class.nla::lemma_builder", align 8 ; 8 uses
  %12 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %13 = alloca %class.rational, align 8           ; 7 uses
  %14 = alloca %class.rational, align 8           ; 14 uses
  %15 = alloca %"class.lp::explanation", align 8  ; 14 uses
  %16 = alloca %"class.nla::lemma_builder", align 8 ; 9 uses
  %17 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %18 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %19 = alloca %class.rational, align 8           ; 16 uses
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3nla15monomial_bounds15propagate_valueERN13dep_intervals9im_config8intervalEj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2)
  br label %bb.du

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 0, ptr %4, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !59
  %i.l = invoke noundef zeroext i1 @_ZN3nla15monomial_bounds22should_propagate_upperERKN13dep_intervals9im_config8intervalEjj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3)
          to label %bb.d unwind label %bb.cu

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.e, label %bb.bt

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !227
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 8, ptr %i.m, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !231
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.o, align 8, !tbaa !232
  %i.p = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 96)
          to label %bb.g unwind label %bb.f       ; 17 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorISt4pairIj8rationalELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %5) #17
  br label %.body

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 4, !tbaa !235
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.t, align 4, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 0, ptr %i.u, align 4, !tbaa !235
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 0, ptr %i.v, align 4, !tbaa !236
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.w, align 4, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 0, ptr %i.x, align 4, !tbaa !236
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i32 0, ptr %i.y, align 4, !tbaa !235
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  store i32 0, ptr %i.z, align 4, !tbaa !236
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  store i32 0, ptr %i.aa, align 4, !tbaa !235
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i32 0, ptr %i.ab, align 4, !tbaa !236
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 0, ptr %i.ac, align 4, !tbaa !235
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i32 0, ptr %i.ad, align 4, !tbaa !236
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  store i32 0, ptr %i.ae, align 4, !tbaa !235
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 0, ptr %i.af, align 4, !tbaa !236
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.ag, align 8, !tbaa !237
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57, !nonnull !47, !align !48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  invoke void @_ZNK13dep_intervals9linearizeIN2lp11explanationEEEvPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyERT_(ptr noundef nonnull align 8 dereferenceable(1424) %i.ai, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN13dep_intervals13get_upper_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit unwind label %bb.bd

_ZN13dep_intervals13get_upper_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit: ; preds = %bb.g
  %i.al = and i32 %3, 1
  %i.am = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %i.am, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %_ZN13dep_intervals13get_upper_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 0, ptr %6, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4                        ; 2 uses
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.as, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -4
  store i8 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !59
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.an, align 8, !tbaa !58
  store i32 %i.bc, ptr %6, align 8, !tbaa !58
  store i8 %i.aq, ptr %i.ao, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %bb.s

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.j, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !58
  store i32 %i.bi, ptr %i.as, align 8, !tbaa !58
  %i.bj = load i8, ptr %i.at, align 4
  %i.bk = and i8 %i.bj, -2
  store i8 %i.bk, ptr %i.at, align 4
  br label %bb.m

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load i32, ptr %6, align 8, !tbaa !58
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %.critedge unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #18
  unreachable

.critedge:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.bm, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %.critedge
  %i.bq = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 200
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.bt = invoke noundef nonnull align 8 dereferenceable(412) ptr @_ZN2lp10lar_solver8settingsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bs)
          to label %bb.p unwind label %bb.bd

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !271
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bx = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  invoke void @_ZN3nla13lemma_builderC1ERNS_4coreEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(4857) %i.bx, ptr noundef nonnull @.str.3)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderaNERKN2lp11explanationE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge107

bb.s:                                             ; preds = %bb.l, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN3nla15monomial_bounds15propagate_valueERN13dep_intervals9im_config8intervalEjj:bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gx = load i8, ptr %i.gw, align 4
  %i.gy = and i8 %i.gx, 1
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i119
  %i.ha = load i32, ptr %i.gv, align 8, !tbaa !58
  store i32 %i.ha, ptr %i.gk, align 8, !tbaa !58
  %i.hb = load i8, ptr %i.gl, align 4
  %i.hc = and i8 %i.hb, -2
  store i8 %i.hc, ptr %i.gl, align 4
  br label %_ZN8rationalC2ERK3mpq.exit122

bb.bz:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i119
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gv)
          to label %_ZN8rationalC2ERK3mpq.exit122 unwind label %bb.cr

_ZN8rationalC2ERK3mpq.exit122:                    ; preds = %bb.by, %bb.bz
  %i.hd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239
  %i.he = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE4rootERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK8rational4rootEjRS_.exit124 unwind label %bb.cs

_ZNK8rational4rootEjRS_.exit124:                  ; preds = %_ZN8rationalC2ERK3mpq.exit122
  %i.hf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i125 unwind label %bb.ca

.noexc.i125:                                      ; preds = %_ZNK8rational4rootEjRS_.exit124
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.gk)
          to label %_ZN8rationalD2Ev.exit126 unwind label %bb.ca

bb.ca:                                            ; preds = %.noexc.i125, %_ZNK8rational4rootEjRS_.exit124
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #18
  unreachable

_ZN8rationalD2Ev.exit126:                         ; preds = %.noexc.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %i.he, label %bb.cb, label %bb.dr

bb.cb:                                            ; preds = %_ZN8rationalD2Ev.exit126
  %i.hi = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 200
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.hl = invoke noundef nonnull align 8 dereferenceable(412) ptr @_ZN2lp10lar_solver8settingsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.hk)
          to label %bb.cc unwind label %bb.cu

bb.cc:                                            ; preds = %bb.cb
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 152 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !271
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !271
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hq = load i8, ptr %i.hp, align 8
  %i.hr = trunc i8 %i.hq to i1                    ; 2 uses
  %i.hs = select i1 %i.hr, i32 1, i32 2
  %i.ht = select i1 %i.hr, i32 -1, i32 -2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr null, ptr %15, align 8, !tbaa !227
  %i.hu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 8, ptr %i.hu, align 8, !tbaa !230
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.hv, align 4, !tbaa !231
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 0, ptr %i.hw, align 8, !tbaa !232
  %i.hx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 96)
          to label %bb.ce unwind label %bb.cd     ; 17 uses

bb.cd:                                            ; preds = %bb.cc
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorISt4pairIj8rationalELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %15) #17
  br label %.body127

bb.ce:                                            ; preds = %bb.cc
  store i32 0, ptr %i.hx, align 4, !tbaa !235
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 0, ptr %i.hz, align 4, !tbaa !236
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !235
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i32 0, ptr %i.ib, align 4, !tbaa !236
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store i32 0, ptr %i.ic, align 4, !tbaa !235
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  store i32 0, ptr %i.id, align 4, !tbaa !236
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 36
  store i32 0, ptr %i.ie, align 4, !tbaa !235
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  store i32 0, ptr %i.if, align 4, !tbaa !236
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  store i32 0, ptr %i.ig, align 4, !tbaa !235
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 52
  store i32 0, ptr %i.ih, align 4, !tbaa !236
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 60
  store i32 0, ptr %i.ii, align 4, !tbaa !235
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store i32 0, ptr %i.ij, align 4, !tbaa !236
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  store i32 0, ptr %i.ik, align 4, !tbaa !235
  %i.il = getelementptr inbounds nuw i8, ptr %i.hx, i64 76
  store i32 0, ptr %i.il, align 4, !tbaa !236
  %i.im = getelementptr inbounds nuw i8, ptr %i.hx, i64 84
  store i32 0, ptr %i.im, align 4, !tbaa !235
  %i.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  store i32 0, ptr %i.in, align 4, !tbaa !236
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.hx, ptr %i.io, align 8, !tbaa !237
  %i.ip = load ptr, ptr %i.gf, align 8, !tbaa !57, !nonnull !47, !align !48
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !68
  invoke void @_ZNK13dep_intervals9linearizeIN2lp11explanationEEEvPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyERT_(ptr noundef nonnull align 8 dereferenceable(1424) %i.ip, ptr noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN13dep_intervals13get_lower_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit unwind label %bb.cv

_ZN13dep_intervals13get_lower_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit: ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.is = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  invoke void @_ZN3nla13lemma_builderC1ERNS_4coreEPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(4857) %i.is, ptr noundef nonnull @.str.6)
          to label %bb.cf unwind label %bb.cw

bb.cf:                                            ; preds = %_ZN13dep_intervals13get_lower_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit
  %i.it = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderaNERKN2lp11explanationE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cg unwind label %bb.cx     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %2, i32 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ch unwind label %bb.cy

bb.ch:                                            ; preds = %bb.cg
  %i.iu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.ci unwind label %bb.cz     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.iv = and i32 %3, 1
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.cj, label %bb.df

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  store i32 0, ptr %19, align 8, !tbaa !58, !alias.scope !363
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 3 uses
  %i.iy = load i8, ptr %i.ix, align 4, !alias.scope !363
  %i.iz = and i8 %i.iy, -4                        ; 2 uses
  store i8 %i.iz, ptr %i.ix, align 4, !alias.scope !363
  %i.ja = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.ja, align 8, !tbaa !59, !alias.scope !363
  %i.jb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store i32 1, ptr %i.jb, align 8, !tbaa !58, !alias.scope !363
  %i.jc = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 4 uses
  %i.jd = load i8, ptr %i.jc, align 4, !alias.scope !363
  %i.je = and i8 %i.jd, -4
  store i8 %i.je, ptr %i.jc, align 4, !alias.scope !363
  %i.jf = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr null, ptr %i.jf, align 8, !tbaa !59, !alias.scope !363
  %i.jg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !363 ; 2 uses
  %i.jh = load i8, ptr %i.c, align 4, !noalias !363
  %i.ji = and i8 %i.jh, 1
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jk = load i32, ptr %4, align 8, !tbaa !58, !noalias !363
  store i32 %i.jk, ptr %19, align 8, !tbaa !58, !alias.scope !363
  store i8 %i.iz, ptr %i.ix, align 4, !alias.scope !363
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.db

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.jl = load i8, ptr %i.h, align 4, !noalias !363
  %i.jm = and i8 %i.jl, 1
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.jo = load i32, ptr %i.g, align 8, !tbaa !58, !noalias !363
  store i32 %i.jo, ptr %i.jb, align 8, !tbaa !58, !alias.scope !363
  %i.jp = load i8, ptr %i.jc, align 4, !alias.scope !363
  %i.jq = and i8 %i.jp, -2
  store i8 %i.jq, ptr %i.jc, align 4, !alias.scope !363
  br label %_ZN8rationalC2ERKS_.exit.i

bb.cn:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.db

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.cn, %bb.cm
  %i.jr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !363
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZngRK8rational.exit unwind label %20

20:                                               ; preds = %_ZN8rationalC2ERKS_.exit.i
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %19) #17
  br label %.body133

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %2, i32 noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.co unwind label %bb.dc

bb.co:                                            ; preds = %_ZngRK8rational.exit
  %i.js = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.cp unwind label %bb.dd     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #17
  %i.jt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc.i135 unwind label %bb.cq

.noexc.i135:                                      ; preds = %bb.cp
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(16) %i.jb)
          to label %_ZN8rationalD2Ev.exit136 unwind label %bb.cq

bb.cq:                                            ; preds = %.noexc.i135, %bb.cp
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #18
  unreachable

_ZN8rationalD2Ev.exit136:                         ; preds = %.noexc.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.df

bb.cr:                                            ; preds = %bb.bz, %bb.bx
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN8rationalC2ERK3mpq.exit122
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #17
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn92 = phi { ptr, i32 } [ %i.jx, %bb.cs ], [ %i.jw, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.dt

bb.cu:                                            ; preds = %bb.cb, %bb.bt, %bb.c
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cv:                                            ; preds = %bb.ce
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cw:                                            ; preds = %_ZN13dep_intervals13get_lower_depIN2lp11explanationEEEvRKNS_9im_config8intervalERT_.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cx:                                            ; preds = %bb.cf
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cy:                                            ; preds = %bb.cg
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.ch
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %17) #17
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn94 = phi { ptr, i32 } [ %i.kd, %bb.cz ], [ %i.kc, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.dk

bb.db:                                            ; preds = %bb.cn, %bb.cl
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body133

bb.dc:                                            ; preds = %_ZngRK8rational.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.co
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #17
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn96 = phi { ptr, i32 } [ %i.kg, %bb.dd ], [ %i.kf, %bb.dc ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %19) #17
  br label %.body133

.body133:                                         ; preds = %bb.db, %20, %bb.de
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %bb.de ], [ %i.ke, %bb.db ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.dk

bb.df:                                            ; preds = %_ZN8rationalD2Ev.exit136, %bb.ci
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.kh = load ptr, ptr %i.io, align 8, !tbaa !237 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i137, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kh)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i137 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #18
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i137: ; preds = %bb.dg, %bb.df
  %i.kl = load ptr, ptr %15, align 8, !tbaa !227  ; 4 uses
  %.not.i.i.i138 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i138, label %_ZN2lp11explanationD2Ev.exit150, label %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139

_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i137
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !51 ; 2 uses
  %.not6.i.i.i.i.i.i.i140 = icmp eq i32 %i.kn, 0
  br i1 %.not6.i.i.i.i.i.i.i140, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i149, label %.lr.ph.i.i.i.i.i.i.i141

.lr.ph.i.i.i.i.i.i.i141:                          ; preds = %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145
  %.08.i.i.i.i.i.i.i142 = phi i32 [ %i.ku, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145 ], [ %i.kn, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139 ]
  %.047.i.i.i.i.i.i.i143 = phi ptr [ %i.kt, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145 ], [ %i.kl, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139 ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i143, i64 8
  %i.kp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.ko)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i144 unwind label %bb.di

.noexc.i.i.i.i.i.i.i.i.i.i.i144:                  ; preds = %.lr.ph.i.i.i.i.i.i.i141
  %i.kq = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i143, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kp, ptr noundef nonnull align 8 dereferenceable(16) %i.kq)
          to label %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145 unwind label %bb.di

bb.di:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i144, %.lr.ph.i.i.i.i.i.i.i141
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #18
  unreachable

_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i144
  %i.kt = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i143, i64 40
  %i.ku = add i32 %.08.i.i.i.i.i.i.i142, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i146 = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i.i.i.i.i.i146, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i147, label %.lr.ph.i.i.i.i.i.i.i141, !llvm.loop !0

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i147: ; preds = %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i145
  %.pre.i.i.i148 = load ptr, ptr %15, align 8, !tbaa !227
  br label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i149

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i149: ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i147, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139
  %i.kv = phi ptr [ %.pre.i.i.i148, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i147 ], [ %i.kl, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i139 ]
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kw)
          to label %_ZN2lp11explanationD2Ev.exit150 unwind label %bb.dj

bb.dj:                                            ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i149
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #18
  unreachable

_ZN2lp11explanationD2Ev.exit150:                  ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i137, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.dr

bb.dk:                                            ; preds = %.body133, %bb.da, %bb.cx
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %.body133 ], [ %.pn94, %bb.da ], [ %i.kb, %bb.cx ]
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #17
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.cw
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %bb.dk ], [ %i.ka, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.cv
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn, %bb.dl ], [ %i.jz, %bb.cv ]
  call void @_ZN2lp11explanationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #17
  br label %.body127

.body127:                                         ; preds = %bb.cd, %bb.dm
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn, %bb.dm ], [ %i.hy, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.dt

.critedge107:                                     ; preds = %bb.bc, %bb.aj, %bb.r
  %i.kz = load ptr, ptr %i.ag, align 8, !tbaa !237 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i151, label %bb.dn

bb.dn:                                            ; preds = %.critedge107
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kz)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i151 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #18
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i151: ; preds = %bb.dn, %.critedge107
  %i.ld = load ptr, ptr %5, align 8, !tbaa !227   ; 4 uses
  %.not.i.i.i152 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i152, label %_ZN2lp11explanationD2Ev.exit164, label %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153

_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i151
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !51 ; 2 uses
  %.not6.i.i.i.i.i.i.i154 = icmp eq i32 %i.lf, 0
  br i1 %.not6.i.i.i.i.i.i.i154, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159
  %.08.i.i.i.i.i.i.i156 = phi i32 [ %i.lm, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159 ], [ %i.lf, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153 ]
  %.047.i.i.i.i.i.i.i157 = phi ptr [ %i.ll, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159 ], [ %i.ld, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i157, i64 8
  %i.lh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lh, ptr noundef nonnull align 8 dereferenceable(32) %i.lg)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i158 unwind label %bb.dp

.noexc.i.i.i.i.i.i.i.i.i.i.i158:                  ; preds = %.lr.ph.i.i.i.i.i.i.i155
  %i.li = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i157, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lh, ptr noundef nonnull align 8 dereferenceable(16) %i.li)
          to label %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159 unwind label %bb.dp

bb.dp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i158, %.lr.ph.i.i.i.i.i.i.i155
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #18
  unreachable

_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i158
  %i.ll = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i157, i64 40
  %i.lm = add i32 %.08.i.i.i.i.i.i.i156, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i160 = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i161, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !0

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i161: ; preds = %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i159
  %.pre.i.i.i162 = load ptr, ptr %5, align 8, !tbaa !227
  br label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i163

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i163: ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i161, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153
  %i.ln = phi ptr [ %.pre.i.i.i162, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i161 ], [ %i.ld, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i153 ]
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lo)
          to label %_ZN2lp11explanationD2Ev.exit164 unwind label %bb.dq

bb.dq:                                            ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i163
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #18
  unreachable

_ZN2lp11explanationD2Ev.exit164:                  ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i151, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.dr

bb.dr:                                            ; preds = %bb.bu, %_ZN8rationalD2Ev.exit126, %_ZN2lp11explanationD2Ev.exit164, %_ZN2lp11explanationD2Ev.exit150
  %.171 = phi i1 [ true, %_ZN2lp11explanationD2Ev.exit150 ], [ true, %_ZN2lp11explanationD2Ev.exit164 ], [ false, %_ZN8rationalD2Ev.exit126 ], [ false, %bb.bu ]
  %i.lr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i165 unwind label %bb.ds

.noexc.i165:                                      ; preds = %bb.dr
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lr, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN8rationalD2Ev.exit166 unwind label %bb.ds

bb.ds:                                            ; preds = %.noexc.i165, %bb.dr
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #18
  unreachable

_ZN8rationalD2Ev.exit166:                         ; preds = %.noexc.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.du

bb.dt:                                            ; preds = %.body127, %bb.cu, %bb.ct, %.body
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %.body ], [ %i.jy, %bb.cu ], [ %.pn92, %bb.ct ], [ %.pn96.pn.pn.pn.pn.pn, %.body127 ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn96.pn.pn.pn.pn.pn.pn.pn.pn
end_hunk_1
begin_hunk_2_@_ZN3nla15monomial_bounds17fixed_var_productERKNS_5monicEj:bb.a
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !59
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239
  store i32 1, ptr %0, align 8, !tbaa !58
  store i8 %i.c, ptr %i.a, align 4
  tail call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !58
  %i.k = load i8, ptr %i.f, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.f, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %._crit_edge, label %_ZNK3nla5monic3endEv.exit

_ZNK3nla5monic3endEv.exit:                        ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3nla5monic3endEv.exit, %_ZN8rationalmLERKS_.exit
  %.01523 = phi ptr [ %i.ar, %_ZN8rationalmLERKS_.exit ], [ %i.n, %_ZNK3nla5monic3endEv.exit ] ; 2 uses
  %i.u = load i32, ptr %.01523, align 4, !tbaa !51 ; 2 uses
  %.not17 = icmp eq i32 %i.u, %3
  br i1 %.not17, label %_ZN8rationalmLERKS_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %1, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2lp10lar_solver15get_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i32 noundef %i.u)
          to label %bb.c unwind label %bb.g       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 3 uses
  %i.aa = load i8, ptr %i.f, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = load i32, ptr %i.ag, align 8
  %i.am = icmp eq i32 %i.al, 1
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc20 unwind label %bb.g

.noexc20:                                         ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !58
  %i.ao = load i8, ptr %i.f, align 4
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.f, align 4
  br label %_ZN8rationalmLERKS_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN8rationalmLERKS_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc, %bb.e, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #17
  resume { ptr, i32 } %i.aq

_ZN8rationalmLERKS_.exit:                         ; preds = %.noexc20, %bb.f, %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.01523, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8rationalmLERKS_.exit, %bb.a, %_ZNK3nla5monic3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla15monomial_bounds15propagate_fixedERKNS_5monicERK8rational(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lp::explanation", align 8   ; 9 uses
  %i.a = tail call noundef ptr @_ZN3nla15monomial_bounds13explain_fixedERKNS_5monicERK8rational(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.e = load i32, ptr %1, align 8, !tbaa !56
  tail call void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i32 noundef %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.a)
  %i.f = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.g = load i32, ptr %1, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN3nla15monomial_bounds15get_explanationEPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr dead_on_unwind nonnull writable sret(%"class.lp::explanation") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %i.a)
  invoke void @_ZN3nla4core18add_fixed_equalityEjRK8rationalON2lp11explanationE(ptr noundef nonnull align 8 dereferenceable(4857) %i.f, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #18
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !227    ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN2lp11explanationD2Ev.exit, label %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51   ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi i32 [ %i.v, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.o, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ]
  %.047.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 40
  %i.v = add i32 %.08.i.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !227
  br label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i
  %i.w = phi ptr [ %.pre.i.i.i, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.m, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
          to label %_ZN2lp11explanationD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #18
  unreachable

_ZN2lp11explanationD2Ev.exit:                     ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp11explanationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla15monomial_bounds18propagate_nonfixedERKNS_5monicERK8rationalj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.lp::equality", align 8     ; 12 uses
  %5 = alloca %class.vector.101, align 8          ; 10 uses
  %6 = alloca %"struct.std::pair", align 8        ; 13 uses
  %7 = alloca %class.rational, align 8            ; 17 uses
  %8 = alloca %"struct.std::pair", align 8        ; 15 uses
  %9 = alloca %class.rational, align 8            ; 12 uses
  %10 = alloca %"class.lp::explanation", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  store i32 0, ptr %7, align 8, !tbaa !58, !alias.scope !375
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4, !alias.scope !375
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4, !alias.scope !375
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !59, !alias.scope !375
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !58, !alias.scope !375
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 6 uses
  %i.g = load i8, ptr %i.f, align 4, !alias.scope !375
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4, !alias.scope !375
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !59, !alias.scope !375
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !375 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i8, ptr %i.k, align 4, !noalias !375
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %2, align 8, !tbaa !58, !noalias !375
  store i32 %i.o, ptr %7, align 8, !tbaa !58, !alias.scope !375
  store i8 %i.c, ptr %i.a, align 4, !alias.scope !375
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.ae

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load i8, ptr %i.q, align 4, !noalias !375
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !58, !noalias !375
  store i32 %i.u, ptr %i.e, align 8, !tbaa !58, !alias.scope !375
  %i.v = load i8, ptr %i.f, align 4, !alias.scope !375
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4, !alias.scope !375
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.ae

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !375
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZngRK8rational.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #17
  br label %.body

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -4
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i32, ptr %7, align 8, !tbaa !51
  store i32 %i.ad, ptr %6, align 8, !tbaa !51
  store i32 0, ptr %7, align 8, !tbaa !51
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !259
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !259
  store ptr null, ptr %i.d, align 8, !tbaa !259
  %i.af = load i8, ptr %i.a, align 4              ; 2 uses
  %i.ag = and i8 %i.af, 3
  %i.ah = or disjoint i8 %i.ag, %i.ab
  store i8 %i.ah, ptr %i.z, align 4
  %i.ai = and i8 %i.af, -4
  store i8 %i.ai, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -4
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !51
  store i32 %i.ao, ptr %i.aj, align 8, !tbaa !51
  store i32 0, ptr %i.e, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !259
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !259
  store ptr null, ptr %i.i, align 8, !tbaa !259
  %i.aq = load i8, ptr %i.f, align 4              ; 2 uses
  %i.ar = and i8 %i.aq, 3
  %i.as = or disjoint i8 %i.ar, %i.am
  store i8 %i.as, ptr %i.ak, align 4
  %i.at = and i8 %i.aq, -4
  store i8 %i.at, ptr %i.f, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %3, ptr %i.au, align 8, !tbaa !258
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorISt4pairI8rationaljELb1EjE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %bb.g unwind label %bb.af      ; 0 uses

bb.g:                                             ; preds = %_ZngRK8rational.exit
  %i.aw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_ZNSt4pairI8rationaljED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #18
  unreachable

_ZNSt4pairI8rationaljED2Ev.exit:                  ; preds = %.noexc.i.i
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %_ZNSt4pairI8rationaljED2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %_ZNSt4pairI8rationaljED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bc = load i32, ptr %1, align 8, !tbaa !56
  store i32 0, ptr %8, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, -4                        ; 2 uses
  store i8 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store i32 1, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, -4
  store i8 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.bl, align 8, !tbaa !59
  %i.bm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4
  %i.bo = and i8 %i.bn, 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.bq = load i32, ptr @_ZN8rational5m_oneE, align 8, !tbaa !58
  store i32 %i.bq, ptr %8, align 8, !tbaa !58
  store i8 %i.bf, ptr %i.bd, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i26

bb.k:                                             ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i26 unwind label %bb.ag

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i26: ; preds = %bb.k, %bb.j
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4
  %i.bs = and i8 %i.br, 1
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i26
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16), align 8, !tbaa !58
  store i32 %i.bu, ptr %i.bh, align 8, !tbaa !58
  %i.bv = load i8, ptr %i.bi, align 4
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.bi, align 4
  br label %bb.n

bb.m:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i26
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16))
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %i.bc, ptr %i.bx, align 8, !tbaa !258
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorISt4pairI8rationaljELb1EjE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %bb.o unwind label %bb.ah      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %.noexc.i.i30 unwind label %bb.p

.noexc.i.i30:                                     ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNSt4pairI8rationaljED2Ev.exit31 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i.i30, %bb.o
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #18
  unreachable

_ZNSt4pairI8rationaljED2Ev.exit31:                ; preds = %.noexc.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cc = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.cf = invoke noundef i32 @_ZN2lp10lar_solver8add_termERK6vectorISt4pairI8rationaljELb1EjEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef -1)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %_ZNSt4pairI8rationaljED2Ev.exit31
  %i.cg = invoke noundef ptr @_ZN3nla15monomial_bounds13explain_fixedERKNS_5monicERK8rational(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.aj      ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 200
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !224, !nonnull !47, !align !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4
  %i.cm = and i8 %i.cl, -4
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %9, align 8, !tbaa !51
  store ptr null, ptr %i.cn, align 8, !tbaa !259
  store i8 %i.cm, ptr %i.ck, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = and i8 %i.cq, -4
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.co, align 8, !tbaa !51
  store ptr null, ptr %i.cs, align 8, !tbaa !259
  store i8 %i.cr, ptr %i.cp, align 4
  invoke void @_ZN2lp10lar_solver28update_column_type_and_boundEjNS_16lconstraint_kindERK8rationalPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(152) %i.cj, i32 noundef %i.cf, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.cg)
          to label %bb.s unwind label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.ct = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i32 unwind label %bb.t

.noexc.i32:                                       ; preds = %bb.s
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.co)
          to label %_ZN8rationalD2Ev.exit33 unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i32, %bb.s
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #18
  unreachable

_ZN8rationalD2Ev.exit33:                          ; preds = %.noexc.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cw = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZN8rationalD2Ev.exit33
  br i1 %i.cw, label %bb.v, label %bb.an

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.cy = load i32, ptr %1, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN3nla15monomial_bounds15get_explanationEPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr dead_on_unwind nonnull writable sret(%"class.lp::explanation") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %i.cg)
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 280 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 %i.cy, ptr %4, align 8, !tbaa !377
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.da, align 4, !tbaa !378
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = load ptr, ptr %10, align 8, !tbaa !227  ; 2 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !227
  store ptr null, ptr %10, align 8, !tbaa !227
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !237 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !237
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !230 ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !230
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !231 ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !231
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !232 ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !232
  store ptr null, ptr %i.de, align 8, !tbaa !237
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !286 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !51 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  invoke void @_ZN6vectorIN2lp8equalityELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.noexc.i34 unwind label %.body35

.noexc.i34:                                       ; preds = %bb.y
  %.pre.i.i = load ptr, ptr %i.cz, align 8, !tbaa !286 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !51
  br label %bb.z

.body35:                                          ; preds = %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8equalityD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2lp11explanationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #17
  br label %bb.am

bb.z:                                             ; preds = %.noexc.i34, %bb.x
  %i.dx = phi i32 [ %.pre2.i.i, %.noexc.i34 ], [ %i.ds, %bb.x ]
  %i.dy = phi ptr [ %.pre.i.i, %.noexc.i34 ], [ %i.dp, %bb.x ]
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dy, i64 %i.dz ; 6 uses
  %i.eb = load i64, ptr %4, align 8
  store i64 %i.eb, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dc, ptr %i.ec, align 8, !tbaa !227
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.df, ptr %i.ed, align 8, !tbaa !237
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i32 %i.di, ptr %i.ee, align 8, !tbaa !230
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store i32 %i.dl, ptr %i.ef, align 4, !tbaa !231
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i32 %i.do, ptr %i.eg, align 8, !tbaa !232
  %i.eh = load ptr, ptr %i.cz, align 8, !tbaa !286
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !51
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.el = load ptr, ptr %i.de, align 8, !tbaa !237 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.el)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #18
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i: ; preds = %bb.aa, %bb.z
  %i.ep = load ptr, ptr %10, align 8, !tbaa !227  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZN2lp11explanationD2Ev.exit, label %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !51 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi i32 [ %i.ey, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.er, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ]
  %.047.i.i.i.i.i.i.i = phi ptr [ %i.ex, %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ep, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 8
  %i.et = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ac

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
          to label %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #18
  unreachable

_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 40
  %i.ey = add i32 %.08.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIj8rationalEEvPT_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %10, align 8, !tbaa !227
  br label %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i
  %i.ez = phi ptr [ %.pre.i.i.i, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.ep, %_ZNK6vectorISt4pairIj8rationalELb1EjE4sizeEv.exit.i.i.i.i ]
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fa)
          to label %_ZN2lp11explanationD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #18
  unreachable

_ZN2lp11explanationD2Ev.exit:                     ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit.i, %_ZN6vectorISt4pairIj8rationalELb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.an

bb.ae:                                            ; preds = %bb.e, %bb.c
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %_ZngRK8rational.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairI8rationaljED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %6) #17
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #17
  br label %.body

.body:                                            ; preds = %bb.ae, %bb.f, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.af ], [ %i.fd, %bb.ae ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.aq

bb.ag:                                            ; preds = %bb.m, %bb.k
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.n
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairI8rationaljED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %8) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn18 = phi { ptr, i32 } [ %i.fg, %bb.ah ], [ %i.ff, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNSt4pairI8rationaljED2Ev.exit31, %_ZN8rationalD2Ev.exit33, %bb.q
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ak:                                            ; preds = %bb.r
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.aq

bb.al:                                            ; preds = %bb.v
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.body35, %bb.al
  %.pn20 = phi { ptr, i32 } [ %i.dw, %.body35 ], [ %i.fj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aq

bb.an:                                            ; preds = %_ZN2lp11explanationD2Ev.exit, %bb.u
  %i.fk = load ptr, ptr %5, align 8, !tbaa !249   ; 4 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZN6vectorISt4pairI8rationaljELb1EjED2Ev.exit, label %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i: ; preds = %bb.an
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i, %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi i32 [ %i.fs, %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i ], [ %i.fm, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i ]
  %.047.i.i.i.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i ], [ %i.fk, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.fn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %.047.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ao

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #18
  unreachable

_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 40
  %i.fs = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i.i
  %.pre.i.i37 = load ptr, ptr %5, align 8, !tbaa !249
  br label %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i
  %i.ft = phi ptr [ %.pre.i.i37, %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.fk, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i.i ]
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fu)
          to label %_ZN6vectorISt4pairI8rationaljELb1EjED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i.i
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #18
  unreachable

_ZN6vectorISt4pairI8rationaljELb1EjED2Ev.exit:    ; preds = %bb.an, %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.aq:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ai, %.body
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn18, %bb.ai ], [ %i.fi, %bb.ak ], [ %.pn20, %bb.am ], [ %i.fh, %bb.aj ]
  call void @_ZN6vectorISt4pairI8rationaljELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla15monomial_bounds15get_explanationEPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyE(ptr dead_on_unwind noalias writable sret(%"class.lp::explanation") align 8 initializes((0, 8), (16, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.svector, align 8             ; 8 uses
  %4 = alloca %class.rational, align 8            ; 12 uses
  store ptr null, ptr %0, align 8, !tbaa !227
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.a, align 8, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !232
  %i.d = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 96)
          to label %_ZN2lp11explanationC2Ev.exit unwind label %bb.b ; 17 uses

common.resume:                                    ; preds = %bb.n, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorISt4pairIj8rationalELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #17
  br label %common.resume

_ZN2lp11explanationC2Ev.exit:                     ; preds = %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !235
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !236
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !235
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.h, align 4, !tbaa !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.i, align 4, !tbaa !235
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !236
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 0, ptr %i.l, align 4, !tbaa !236
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 0, ptr %i.m, align 4, !tbaa !235
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !236
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 0, ptr %i.o, align 4, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %i.p, align 4, !tbaa !236
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 0, ptr %i.q, align 4, !tbaa !235
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 0, ptr %i.r, align 4, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %i.s, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.t, align 4, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !45
  %i.v = load ptr, ptr %1, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.y = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN2lp10lar_solver11dep_managerEv(ptr noundef nonnull align 8 dereferenceable(152) %i.x)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN2lp11explanationC2Ev.exit
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZNK25scoped_dependency_managerIjE9linearizeEPN18dependency_managerINS0_6configEE10dependencyER6vectorIjLb0EjE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %2, align 4
  %i.aa = or i32 %i.z, 1073741824
  store i32 %i.aa, ptr %2, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !287 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6vectorIPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyELb0EjE9push_backERKS6_.exit.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !287 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZeqRK8rationali:bb.a
bb.c:                                             ; preds = %.noexc, %.split.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.f, align 4
  %i.af = and i8 %i.ae, 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !58
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !58
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_ZeqRK8rationalS1_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ak = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.f
  %i.al = icmp eq i32 %i.ak, 0
  br label %_ZeqRK8rationalS1_.exit

_ZeqRK8rationalS1_.exit:                          ; preds = %.noexc3, %bb.e, %.noexc, %.split.i.i
  %i.am = phi i1 [ false, %.noexc ], [ false, %.split.i.i ], [ %i.aj, %bb.e ], [ %i.al, %.noexc3 ]
  %i.an = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_ZeqRK8rationalS1_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i, %_ZeqRK8rationalS1_.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 %i.am

bb.h:                                             ; preds = %bb.f, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.aq
}

declare noundef zeroext i1 @_ZNK3nla4core20var_is_fixed_to_zeroEj(ptr noundef nonnull align 8 dereferenceable(4857), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZN3nla15monomial_bounds13explain_fixedERKNS_5monicERK8rationalENK3$_0clEj"(ptr nofree captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i32 noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %.8.val, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.d = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2lp10lar_solver11dep_managerEv(ptr noundef nonnull align 8 dereferenceable(152) %i.c)
  %i.e = load ptr, ptr %.0.val, align 8, !tbaa !62 ; 6 uses
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.i = tail call noundef ptr @_ZNK2lp10lar_solver30get_column_lower_bound_witnessEj(ptr noundef nonnull align 8 dereferenceable(152) %i.h, i32 noundef %0) ; 6 uses
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %i.i, null
  %i.l = icmp eq ptr %i.e, %i.i
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit, label %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i

_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256, !nonnull !47, !align !48
  %i.o = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 24) ; 4 uses
  %i.p = load i32, ptr %i.e, align 4              ; 2 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, 1073741823
  %i.s = and i32 %i.p, -1073741824
  %i.t = or disjoint i32 %i.r, %i.s
  store i32 %i.t, ptr %i.e, align 4
  %i.u = load i32, ptr %i.i, align 4              ; 2 uses
  %i.v = add i32 %i.u, 1
  %i.w = and i32 %i.v, 1073741823
  %i.x = and i32 %i.u, -1073741824
  %i.y = or disjoint i32 %i.w, %i.x
  store i32 %i.y, ptr %i.i, align 4
  store i32 0, ptr %i.o, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.e, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.i, ptr %i.aa, align 8, !tbaa !62
  br label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit

_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit: ; preds = %bb.a, %bb.b, %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i
  %.0.i.i = phi ptr [ %i.o, %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i ], [ %i.i, %bb.a ], [ %i.e, %bb.b ]
  store ptr %.0.i.i, ptr %.0.val, align 8, !tbaa !62
  %i.ab = load ptr, ptr %.8.val, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.ae = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2lp10lar_solver11dep_managerEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ad)
  %i.af = load ptr, ptr %.0.val, align 8, !tbaa !62 ; 6 uses
  %i.ag = load ptr, ptr %.8.val, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !224, !nonnull !47, !align !48
  %i.aj = tail call noundef ptr @_ZNK2lp10lar_solver30get_column_upper_bound_witnessEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ai, i32 noundef %0) ; 6 uses
  %i.ak = icmp eq ptr %i.af, null
  br i1 %i.ak, label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit5, label %bb.c

bb.c:                                             ; preds = %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit
  %i.al = icmp eq ptr %i.aj, null
  %i.am = icmp eq ptr %i.af, %i.aj
  %or.cond.i.i2 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i2, label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit5, label %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i3

_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i3: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !256, !nonnull !47, !align !48
  %i.ap = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 noundef 24) ; 4 uses
  %i.aq = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ar = add i32 %i.aq, 1
  %i.as = and i32 %i.ar, 1073741823
  %i.at = and i32 %i.aq, -1073741824
  %i.au = or disjoint i32 %i.as, %i.at
  store i32 %i.au, ptr %i.af, align 4
  %i.av = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.aw = add i32 %i.av, 1
  %i.ax = and i32 %i.aw, 1073741823
  %i.ay = and i32 %i.av, -1073741824
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.aj, align 4
  store i32 0, ptr %i.ap, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.af, ptr %i.ba, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !62
  br label %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit5

_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit5: ; preds = %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit, %bb.c, %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i3
  %.0.i.i4 = phi ptr [ %i.ap, %_ZN18dependency_managerIN25scoped_dependency_managerIjE6configEE7inc_refEPNS3_10dependencyE.exit17.i.i3 ], [ %i.aj, %_ZN25scoped_dependency_managerIjE7mk_joinEPN18dependency_managerINS0_6configEE10dependencyES5_.exit ], [ %i.af, %bb.c ] ; 2 uses
  store ptr %.0.i.i4, ptr %.0.val, align 8, !tbaa !62
  ret ptr %.0.i.i4
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3nla15monomial_bounds13non_fixed_varERKNS_5monicE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK3nla5monic3endEv.exit

_ZNK3nla5monic3endEv.exit:                        ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01218, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3nla5monic3endEv.exit, %bb.b
  %.01218 = phi ptr [ %i.i, %bb.b ], [ %i.b, %_ZNK3nla5monic3endEv.exit ] ; 2 uses
  %i.j = load i32, ptr %.01218, align 4, !tbaa !51 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.l = tail call noundef zeroext i1 @_ZNK3nla4core12var_is_fixedEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.k, i32 noundef %i.j)
  br i1 %i.l, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a, %_ZNK3nla5monic3endEv.exit
  %i.m = phi i32 [ -1, %_ZNK3nla5monic3endEv.exit ], [ -1, %bb.a ], [ %i.j, %.lr.ph ], [ -1, %bb.b ]
  ret i32 %i.m
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN3nla15monomial_bounds23propagate_shared_factorERKNS_5monicEENK3$_0clEjj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.interval_deps_combine_rule, align 2 ; 5 uses
  %4 = alloca %struct.interval_deps_combine_rule, align 2 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class._scoped_interval, align 8    ; 14 uses
  %6 = alloca %class._scoped_interval, align 8    ; 14 uses
  %7 = alloca %class._scoped_interval, align 8    ; 14 uses
  %8 = alloca %class._scoped_interval, align 8    ; 13 uses
  %9 = alloca %class.rational, align 8            ; 16 uses
  %10 = alloca %class._scoped_interval, align 8   ; 14 uses
  %11 = alloca %class._scoped_interval, align 8   ; 14 uses
  %12 = alloca %class.rational, align 8           ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !388, !nonnull !47, !align !292
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4464 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK3nla7emonics4headEj(ptr noundef nonnull align 8 dereferenceable(216) %i.j, i32 noundef %1), !noalias !389 ; 2 uses
  %i.l = icmp ne ptr %i.k, null
  %i.m = tail call noundef ptr @_ZNK3nla7emonics4headEj(ptr noundef nonnull align 8 dereferenceable(216) %i.j, i32 noundef %1), !noalias !390 ; 2 uses
  %i.n = icmp ne ptr %i.m, null
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !388, !nonnull !47, !align !292
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.086168 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.d ]
  %.sroa.4.0167 = phi ptr [ %i.k, %.lr.ph ], [ %i.s, %bb.d ]
  %i.r = add i32 %.086168, 1                      ; 2 uses
  %.not90 = icmp ugt i32 %i.r, %i.q
  br i1 %.not90, label %.loopexit165, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.4.0167, align 8, !tbaa !246 ; 2 uses
  %.not.i.not = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48
  store ptr %i.u, ptr %5, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.y, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.z, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = or i8 %i.ab, 15
  store i8 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  invoke void @_ZN3nla15monomial_bounds12var2intervalEjR16_scoped_intervalI13dep_intervalsE(ptr noundef nonnull align 8 dereferenceable(208) %i.f, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.thread
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48 ; 2 uses
  %i.af = invoke noundef zeroext i1 @_ZNK13dep_intervals28separated_from_zero_on_upperERKNS_9im_config8intervalE(ptr noundef nonnull align 8 dereferenceable(1424) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.v)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  br i1 %i.af, label %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit.thread, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ag = invoke noundef zeroext i1 @_ZNK13dep_intervals28separated_from_zero_on_lowerERKNS_9im_config8intervalE(ptr noundef nonnull align 8 dereferenceable(1424) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.v)
          to label %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit: ; preds = %bb.f
  br i1 %i.ag, label %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit.thread, label %.thread155

_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit.thread: ; preds = %.noexc, %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !224, !nonnull !47, !align !48 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZN2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.aj)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !391, !nonnull !47, !align !48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !394
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !396 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !396 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %.thread155, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.thread151, %.lr.ph172
  %i.cq = phi i32 [ 1, %.lr.ph172 ], [ %i.hk, %.thread151 ] ; 2 uses
  %.sroa.0140.0169185 = phi ptr [ %i.as, %.lr.ph172 ], [ %i.hi, %.thread151 ] ; 2 uses
  %i.cr = load i32, ptr %.sroa.0140.0169185, align 4, !tbaa !399
  %i.cs = invoke noundef i32 @_ZNK2lp10lar_solver22get_base_column_in_rowEj(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, i32 noundef %i.cr)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !391, !nonnull !47, !align !48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !56
  %i.cv = icmp eq i32 %i.cs, %i.cu
  %i.cw = icmp eq i32 %i.cs, %2
  %or.cond = or i1 %i.cw, %i.cv
  %i.cx = icmp eq i32 %i.cs, %1
  %or.cond112 = or i1 %i.cx, %or.cond
  br i1 %or.cond112, label %.thread151, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = invoke noundef zeroext i1 @_ZNK2lp10lar_solver15column_has_termEj(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, i32 noundef %i.cs)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br i1 %i.cy, label %bb.l, label %.thread151

bb.l:                                             ; preds = %bb.k
  %i.cz = invoke noundef nonnull align 8 dereferenceable(28) ptr @_ZNK2lp10lar_solver8get_termEj(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, i32 noundef %i.cs)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !293
  %.not91 = icmp eq i32 %i.db, 2
  br i1 %.not91, label %bb.n, label %.thread151

bb.n:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !391, !nonnull !47, !align !48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.dd, ptr %i.d, align 4, !tbaa !51
  %i.de = invoke noundef ptr @_ZNK9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqE9find_coreERKj(ptr noundef nonnull align 8 dereferenceable(28) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %.not163 = icmp eq ptr %i.de, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not163, label %.thread151, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %2, ptr %i.c, align 4, !tbaa !51
  %i.df = invoke noundef ptr @_ZNK9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqE9find_coreERKj(ptr noundef nonnull align 8 dereferenceable(28) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %.not164 = icmp eq ptr %i.df, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not164, label %.thread151, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !391, !nonnull !47, !align !48
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !51
  %i.di = invoke noundef ptr @_ZNK9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqE9find_coreERKj(ptr noundef nonnull align 8 dereferenceable(28) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !51
  %i.dk = invoke noundef ptr @_ZNK9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqE9find_coreERKj(ptr noundef nonnull align 8 dereferenceable(28) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = load i32, ptr %i.dj, align 8, !tbaa !58
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.thread151, label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %.thread, %bb.e, %bb.f, %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit.thread
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.do = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48
  store ptr %i.do, ptr %6, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ax, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.az, align 8, !tbaa !58
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  %i.dp = load i8, ptr %i.bb, align 8
  %i.dq = or i8 %i.dp, 15
  store i8 %i.dq, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  invoke void @_ZN3nla15monomial_bounds12var2intervalEjR16_scoped_intervalI13dep_intervalsE(ptr noundef nonnull align 8 dereferenceable(208) %i.f, i32 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48 ; 3 uses
  store ptr %i.dr, ptr %7, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.be, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bg, align 8, !tbaa !58
  store ptr null, ptr %i.bh, align 8, !tbaa !59
  %i.ds = load i8, ptr %i.bi, align 8
  %i.dt = or i8 %i.ds, 15
  store i8 %i.dt, ptr %i.bi, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3divERKNS1_8intervalES5_RS3_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %i.du, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 2 dereferenceable(4) %4)
          to label %.noexc121 unwind label %bb.av

.noexc121:                                        ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 736 ; 2 uses
  %i.dw = load i8, ptr %i.bi, align 8             ; 2 uses
  %i.dx = and i8 %i.dw, 4
  %.not.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc121
  %i.dy = load i16, ptr %4, align 2, !tbaa !65
  %i.dz = invoke noundef ptr @_ZNK13dep_intervals9im_config13mk_dependencyERKNS0_8intervalES3_s(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i16 noundef signext %i.dy)
          to label %.noexc122 unwind label %bb.av

.noexc122:                                        ; preds = %bb.w
  %.pre.i.i.i = load i8, ptr %i.bi, align 8
  br label %bb.x

bb.x:                                             ; preds = %.noexc122, %.noexc121
  %i.ea = phi i8 [ %.pre.i.i.i, %.noexc122 ], [ %i.dw, %.noexc121 ]
  %i.eb = phi ptr [ %i.dz, %.noexc122 ], [ null, %.noexc121 ]
  %i.ec = and i8 %i.ea, 8
  %.not13.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not13.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = load i16, ptr %i.bk, align 2, !tbaa !66
  %i.ee = invoke noundef ptr @_ZNK13dep_intervals9im_config13mk_dependencyERKNS0_8intervalES3_s(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i16 noundef signext %i.ed)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ef = phi ptr [ null, %bb.x ], [ %i.ee, %bb.y ]
  store ptr %i.eb, ptr %i.bj, align 8, !tbaa !68
  store ptr %i.ef, ptr %i.bl, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48 ; 2 uses
  store ptr %i.eg, ptr %8, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bn, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bp, align 8, !tbaa !58
  store ptr null, ptr %i.bq, align 8, !tbaa !59
  %i.eh = load i8, ptr %i.br, align 8
  %i.ei = or i8 %i.eh, 15
  store i8 %i.ei, ptr %i.br, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  store i32 0, ptr %9, align 8, !tbaa !58, !alias.scope !400
  %i.ej = load i8, ptr %i.bt, align 4, !alias.scope !400
  %i.ek = and i8 %i.ej, -4                        ; 2 uses
  store i8 %i.ek, ptr %i.bt, align 4, !alias.scope !400
  store ptr null, ptr %i.bu, align 8, !tbaa !59, !alias.scope !400
  store i32 1, ptr %i.bv, align 8, !tbaa !58, !alias.scope !400
  %i.el = load i8, ptr %i.bw, align 4, !alias.scope !400
  %i.em = and i8 %i.el, -4
  store i8 %i.em, ptr %i.bw, align 4, !alias.scope !400
  store ptr null, ptr %i.bx, align 8, !tbaa !59, !alias.scope !400
  %i.en = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !400 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.ep = load i8, ptr %i.eo, align 4, !noalias !400
  %i.eq = and i8 %i.ep, 1
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.es = load i32, ptr %i.dl, align 8, !tbaa !58, !noalias !400
  store i32 %i.es, ptr %9, align 8, !tbaa !58, !alias.scope !400
  store i8 %i.ek, ptr %i.bt, align 4, !alias.scope !400
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.aw

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.ev = load i8, ptr %i.eu, align 4, !noalias !400
  %i.ew = and i8 %i.ev, 1
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.ey = load i32, ptr %i.et, align 8, !tbaa !58, !noalias !400
  store i32 %i.ey, ptr %i.bv, align 8, !tbaa !58, !alias.scope !400
  %i.ez = load i8, ptr %i.bw, align 4, !alias.scope !400
  %i.fa = and i8 %i.ez, -2
  store i8 %i.fa, ptr %i.bw, align 4, !alias.scope !400
  br label %_ZN8rationalC2ERKS_.exit.i

bb.ad:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.aw

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.ad, %bb.ac
  %i.fb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239, !noalias !400
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZngRK8rational.exit unwind label %13

13:                                               ; preds = %_ZN8rationalC2ERKS_.exit.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #17
  br label %.body

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  invoke void @_ZNK13dep_intervals9set_valueERNS_9im_config8intervalERK8rational(ptr noundef nonnull align 8 dereferenceable(1424) %i.eg, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %bb.ax

bb.ae:                                            ; preds = %_ZngRK8rational.exit
  %i.fc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i unwind label %bb.af

.noexc.i:                                         ; preds = %bb.ae
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %.noexc.i, %bb.ae
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #18
  unreachable

bb.ag:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48 ; 3 uses
  store ptr %i.ff, ptr %10, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.by, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bz, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.cb, align 8, !tbaa !58
  store ptr null, ptr %i.cc, align 8, !tbaa !59
  %i.fg = load i8, ptr %i.cd, align 8
  %i.fh = or i8 %i.fg, 15
  store i8 %i.fh, ptr %i.cd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3addERKNS1_8intervalES5_RS3_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %i.fi, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %i.by, ptr noundef nonnull align 2 dereferenceable(4) %3)
          to label %.noexc129 unwind label %bb.ay

.noexc129:                                        ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 736 ; 2 uses
  %i.fk = load i8, ptr %i.cd, align 8             ; 2 uses
  %i.fl = and i8 %i.fk, 4
  %.not.i.i.i126 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i126, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc129
  %i.fm = load i16, ptr %3, align 2, !tbaa !65
  %i.fn = invoke noundef ptr @_ZNK13dep_intervals9im_config13mk_dependencyERKNS0_8intervalES3_s(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i16 noundef signext %i.fm)
          to label %.noexc130 unwind label %bb.ay

.noexc130:                                        ; preds = %bb.ah
  %.pre.i.i.i128 = load i8, ptr %i.cd, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc130, %.noexc129
  %i.fo = phi i8 [ %.pre.i.i.i128, %.noexc130 ], [ %i.fk, %.noexc129 ]
  %i.fp = phi ptr [ %i.fn, %.noexc130 ], [ null, %.noexc129 ]
  %i.fq = and i8 %i.fo, 8
  %.not13.i.i.i127 = icmp eq i8 %i.fq, 0
  br i1 %.not13.i.i.i127, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fr = load i16, ptr %i.cf, align 2, !tbaa !66
  %i.fs = invoke noundef ptr @_ZNK13dep_intervals9im_config13mk_dependencyERKNS0_8intervalES3_s(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i16 noundef signext %i.fr)
          to label %bb.ak unwind label %bb.ay

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ft = phi ptr [ null, %bb.ai ], [ %i.fs, %bb.aj ]
  store ptr %i.fp, ptr %i.ce, align 8, !tbaa !68
  store ptr %i.ft, ptr %i.cg, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.fu = load ptr, ptr %i.t, align 8, !tbaa !57, !nonnull !47, !align !48 ; 2 uses
  store ptr %i.fu, ptr %11, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ch, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ci, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.ck, align 8, !tbaa !58
  store ptr null, ptr %i.cl, align 8, !tbaa !59
  %i.fv = load i8, ptr %i.cm, align 8
  %i.fw = or i8 %i.fv, 15
  store i8 %i.fw, ptr %i.cm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE, ptr noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %bb.al unwind label %bb.az

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE7div_mulERK3mpqRKNS1_8intervalERS6_b(ptr noundef nonnull align 8 dereferenceable(672) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(88) %i.by, ptr noundef nonnull align 8 dereferenceable(88) %i.ch, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ba

bb.am:                                            ; preds = %bb.al
  %i.fy = load ptr, ptr %i.ce, align 8, !tbaa !68 ; 2 uses
  %i.fz = load ptr, ptr %i.cg, align 8, !tbaa !69 ; 2 uses
  %i.ga = load i32, ptr %12, align 8, !tbaa !58
  %i.gb = icmp sgt i32 %i.ga, 0                   ; 2 uses
  %spec.select.i = select i1 %i.gb, ptr %i.fy, ptr %i.fz
  %spec.select13.i = select i1 %i.gb, ptr %i.fz, ptr %i.fy
  store ptr %spec.select.i, ptr %i.cn, align 8, !tbaa !68
  store ptr %spec.select13.i, ptr %i.co, align 8, !tbaa !69
  %i.gc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i133 unwind label %bb.an

.noexc.i133:                                      ; preds = %bb.am
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %_ZN8rationalD2Ev.exit134 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i133, %bb.am
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #18
  unreachable

_ZN8rationalD2Ev.exit134:                         ; preds = %.noexc.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.gf = invoke noundef zeroext i1 @_ZN3nla15monomial_bounds15propagate_valueERN13dep_intervals9im_config8intervalEj(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.ch, i32 noundef %1)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %_ZN8rationalD2Ev.exit134
  %i.gg = load ptr, ptr %11, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.gh, ptr noundef nonnull align 8 dereferenceable(88) %i.ch)
          to label %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #18
  unreachable

_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit:  ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.gk = load ptr, ptr %10, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.gl, ptr noundef nonnull align 8 dereferenceable(88) %i.by)
          to label %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit135 unwind label %bb.aq

bb.aq:                                            ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #18
  unreachable

_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit135: ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.go = load ptr, ptr %8, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.gp, ptr noundef nonnull align 8 dereferenceable(88) %i.bm)
          to label %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit136 unwind label %bb.ar

bb.ar:                                            ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit135
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #18
  unreachable

_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit136: ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.gs = load ptr, ptr %7, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.gt, ptr noundef nonnull align 8 dereferenceable(88) %i.bd)
          to label %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit137 unwind label %bb.as

bb.as:                                            ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit136
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #18
  unreachable

_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit137: ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit136
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.gw = load ptr, ptr %6, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.gx, ptr noundef nonnull align 8 dereferenceable(88) %i.aw)
          to label %bb.bd unwind label %bb.at

bb.at:                                            ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit137
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #18
  unreachable

bb.au:                                            ; preds = %bb.u
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.av:                                            ; preds = %bb.y, %bb.w, %bb.v
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %bb.ad, %bb.ab
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZngRK8rational.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #17
  br label %.body

.body:                                            ; preds = %bb.aw, %13, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.ax ], [ %i.hc, %bb.aw ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bg

bb.ay:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.ak
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.al
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn93 = phi { ptr, i32 } [ %i.hg, %bb.ba ], [ %i.hf, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.be

bb.bc:                                            ; preds = %_ZN8rationalD2Ev.exit134
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.gf, label %.thread155, label %.thread151

.thread151:                                       ; preds = %bb.bd, %bb.t, %bb.o, %bb.q, %bb.m, %bb.k, %bb.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0140.0169185, i64 12 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.au
  %i.hk = add nuw nsw i32 %i.cq, 1
  %exitcond = icmp eq i32 %i.cq, 16
  %or.cond186 = select i1 %i.hj, i1 true, i1 %exitcond
  br i1 %or.cond186, label %.thread155, label %bb.h

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.pn95 = phi { ptr, i32 } [ %i.hh, %bb.bc ], [ %.pn93, %bb.bb ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ay
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95, %bb.be ], [ %i.he, %bb.ay ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.body
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn, %bb.bf ], [ %.pn, %.body ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.av
  %.pn95.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn.pn, %bb.bg ], [ %i.hb, %bb.av ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.au
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn.pn.pn.pn, %bb.bh ], [ %i.ha, %bb.au ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.loopexit.split-lp

.thread155:                                       ; preds = %.thread151, %bb.bd, %bb.g, %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit
  %.1284 = phi i1 [ false, %_ZNK13dep_intervals19separated_from_zeroERKNS_9im_config8intervalE.exit ], [ false, %bb.g ], [ false, %.thread151 ], [ true, %bb.bd ]
  %i.hl = load ptr, ptr %5, align 8, !tbaa !81, !nonnull !47, !align !48
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 752
  invoke void @_ZN16interval_managerIN13dep_intervals9im_configEE3delERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %i.hm, ptr noundef nonnull align 8 dereferenceable(88) %i.v)
          to label %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit139 unwind label %bb.bj

bb.bj:                                            ; preds = %.thread155
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #18
  unreachable

_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit139: ; preds = %.thread155
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit165

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bi
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bi ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN16_scoped_intervalI13dep_intervalsED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

.loopexit165:                                     ; preds = %bb.c, %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit139
  %.1385 = phi i1 [ %.1284, %_ZN16_scoped_intervalI13dep_intervalsED2Ev.exit139 ], [ false, %bb.c ]
  ret i1 %.1385
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZmlRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store i32 1, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 8 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !59
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !58
  store i32 %i.o, ptr %3, align 8, !tbaa !58
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !58
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %.pre = load i8, ptr %i.f, align 4
  %.pre9 = load i32, ptr %i.e, align 8
  %i.x = and i8 %.pre, 1
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %i.u, %bb.d ], [ %.pre9, %bb.e ]
  %i.aa = phi i1 [ true, %bb.d ], [ %i.y, %bb.e ]
  %i.ab = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !239 ; 3 uses
  %i.ac = icmp eq i32 %i.z, 1
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = load i32, ptr %i.ae, align 8
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !58
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.f, align 4
  br label %_ZN8rationalmLERKS_.exit

bb.h:                                             ; preds = %bb.f, %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationalmLERKS_.exit unwind label %bb.n

_ZN8rationalmLERKS_.exit:                         ; preds = %.noexc3, %bb.h
end_hunk_3
