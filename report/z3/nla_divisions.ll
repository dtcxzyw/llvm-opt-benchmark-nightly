Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_divisions?download=true
inline.NumInlined: 741
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3nla9divisions14check_mod_multEv:bb.a
  br i1 %i.dl, label %bb.p, label %.thread

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i:   ; preds = %bb.o, %bb.n
  %i.dm = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.p, label %.thread

bb.p:                                             ; preds = %.noexc, %.split.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dq = load i8, ptr %i.dp, align 4
  %i.dr = and i8 %i.dq, 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dt = load i8, ptr %i.q, align 4
  %i.du = and i8 %i.dt, 1
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %.split, label %bb.r

.split:                                           ; preds = %bb.q
  %i.dw = load i32, ptr %i.do, align 8, !tbaa !212
  %i.dx = load i32, ptr %i.p, align 8, !tbaa !212
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.t, label %.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dz = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.t, label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i, %bb.m, %bb.t, %_ZN8rationalC2ERKS_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %.split, %bb.s
  %i.eb = load i32, ptr %.0114, align 4, !tbaa !16
  %i.ec = invoke noundef zeroext i1 @_ZNK3nla4core20var_is_fixed_to_zeroEj(ptr noundef nonnull align 8 dereferenceable(4857) %i.b, i32 noundef %i.eb)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  br i1 %i.ec, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN3nla13lemma_builderC1ERNS_4coreEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(4857) %i.b, ptr noundef nonnull @.str.3)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ed = load i32, ptr %.0114, align 4, !tbaa !16
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindEi(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.ed, i32 noundef 3, i32 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ee = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.y unwind label %bb.ac      ; 0 uses

bb.y:                                             ; preds = %bb.x
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindEi(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.sroa.0.0.copyload, i32 noundef 0, i32 noundef 0)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ef = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %.loopexit110.jt1 unwind label %bb.af ; 0 uses

bb.aa:                                            ; preds = %bb.v
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ab:                                            ; preds = %bb.w
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.ac ], [ %i.eh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn81 = phi { ptr, i32 } [ %i.ek, %bb.af ], [ %i.ej, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.ag ], [ %.pn, %bb.ad ]
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.aa
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %bb.ah ], [ %i.eg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit.split-lp

.thread:                                          ; preds = %.split, %.split.i.i.i, %.noexc, %bb.s, %.lr.ph, %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 2 uses
  %.not78 = icmp eq ptr %i.el, %i.cq
  br i1 %.not78, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %.lr.ph117, %_ZN6vectorISt5tupleIJjjjjEELb1EjE3endEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.060116, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.ci
  br i1 %.not, label %.loopexit110.jt4, label %.lr.ph117

.loopexit110.jt1:                                 ; preds = %bb.z
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.en = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.en, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i.jt1 unwind label %.loopexit.split-lp140.loopexit.split-lp.loopexit.split-lp

.loopexit110.jt4:                                 ; preds = %._crit_edge, %bb.l, %_ZNK6vectorIjLb0EjE3endEv.exit, %bb.k, %bb.j
  %i.eo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i.jt4 unwind label %.loopexit.split-lp140.loopexit.split-lp.loopexit.split-lp

.noexc.i.jt1:                                     ; preds = %.loopexit110.jt1
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.aj unwind label %.loopexit.split-lp140.loopexit.split-lp.loopexit.split-lp

.noexc.i.jt4:                                     ; preds = %.loopexit110.jt4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.ak unwind label %.loopexit.split-lp140.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp140.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.jt4, %.loopexit110.jt4, %.loopexit110.jt1, %.noexc.i.jt1
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %lpad.loopexit.split-lp159, 0
  call void @__clang_call_terminate(ptr %i.ep) #18
  unreachable

bb.aj:                                            ; preds = %.noexc.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %._crit_edge120

bb.ak:                                            ; preds = %.noexc.i.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.thread107

.thread107:                                       ; preds = %bb.ak, %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %_ZNK3nla4core12is_monic_varEj.exit, %bb.c, %_ZNK3nla4core11is_relevantEj.exit.thread, %_ZNK3nla4core11is_relevantEj.exit
  %i.eq = add nuw i32 %.076118, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %i.h
  br i1 %exitcond.not, label %._crit_edge120, label %bb.b, !llvm.loop !255

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn81.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn81.pn.pn.pn.pn.pn.pn

._crit_edge120:                                   ; preds = %.thread107, %bb.a, %bb.aj, %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla9divisions25check_linear_divisibilityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.u_hash, align 1             ; 3 uses
  %2 = alloca %struct.u_eq, align 1               ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.rational, align 8            ; 19 uses
  %4 = alloca %class.rational, align 8            ; 16 uses
  %5 = alloca %class.rational, align 8            ; 13 uses
  %6 = alloca %class.rational, align 8            ; 11 uses
  %7 = alloca %"class.nla::lemma_builder", align 8 ; 9 uses
  %8 = alloca %"class.nla::ineq", align 8         ; 7 uses
  %9 = alloca %"class.lp::lar_term", align 8      ; 12 uses
  %10 = alloca %class.rational, align 8           ; 16 uses
  %11 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %12 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19, !nonnull !20, !align !21 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit

_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit:   ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %.not144 = icmp eq i32 %i.h, 0
  br i1 %.not144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count149 = zext i32 %i.h to i64      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread132
  %indvars.iv146 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next147, %.thread132 ] ; 3 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv146 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !207
  %.not.i.i.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i, label %_ZNK3nla4core11is_relevantEj.exit.thread, label %_ZNK3nla4core11is_relevantEj.exit

_ZNK3nla4core11is_relevantEj.exit:                ; preds = %bb.b
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !16
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !208
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ar, label %_ZNK3nla4core11is_relevantEj.exit.thread, label %.thread132

_ZNK3nla4core11is_relevantEj.exit.thread:         ; preds = %bb.b, %_ZNK3nla4core11is_relevantEj.exit
  %i.as = load i32, ptr %i.al, align 4, !tbaa !16
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !206, !nonnull !20, !align !21
  %i.au = call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !211
  %i.ax = zext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !212
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread132, label %bb.c

bb.c:                                             ; preds = %_ZNK3nla4core11is_relevantEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !16
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !206, !nonnull !20, !align !21
  %i.bd = call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %i.bg ; 5 uses
  store i32 0, ptr %3, align 8, !tbaa !212
  %i.bi = load i8, ptr %i.m, align 4
  %i.bj = and i8 %i.bi, -4                        ; 2 uses
  store i8 %i.bj, ptr %i.m, align 4
  store ptr null, ptr %i.n, align 8, !tbaa !213
  store i32 1, ptr %i.o, align 8, !tbaa !212
  %i.bk = load i8, ptr %i.p, align 4
  %i.bl = and i8 %i.bk, -4
  store i8 %i.bl, ptr %i.p, align 4
  store ptr null, ptr %i.q, align 8, !tbaa !213
  %i.bm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, 1
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = load i32, ptr %i.bh, align 8, !tbaa !212
  store i32 %i.br, ptr %3, align 8, !tbaa !212
  store i8 %i.bj, ptr %i.m, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.e, %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.bx = load i32, ptr %i.bs, align 8, !tbaa !212
  store i32 %i.bx, ptr %i.o, align 8, !tbaa !212
  %i.by = load i8, ptr %i.p, align 4
  %i.bz = and i8 %i.by, -2
  store i8 %i.bz, ptr %i.p, align 4
  br label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ca = load i32, ptr %3, align 8, !tbaa !212
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit.jt4, label %.preheader

.preheader:                                       ; preds = %bb.h, %.thread125
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread125 ], [ 0, %bb.h ] ; 3 uses
  %i.cc = icmp eq i64 %indvars.iv146, %indvars.iv
  br i1 %i.cc, label %.thread125, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16 ; 2 uses
  %i.cj = load i32, ptr %i.an, align 4, !tbaa !16
  %.not = icmp eq i32 %i.ci, %i.cj
  br i1 %.not, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !206, !nonnull !20, !align !21
  %i.cl = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ck)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !211
  %i.co = zext i32 %i.ci to i64
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %i.co ; 5 uses
  %i.cq = load i32, ptr %i.an, align 4, !tbaa !16
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !206, !nonnull !20, !align !21
  %i.cs = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cr)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !211
  %i.cv = zext i32 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %i.cv ; 5 uses
  %i.cx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cz = load i8, ptr %i.cy, align 4
  %i.da = and i8 %i.cz, 1
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.m, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, 1
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %.split.i.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.m
  %i.dg = load i32, ptr %i.cp, align 8, !tbaa !212
  %i.dh = load i32, ptr %i.cw, align 8, !tbaa !212
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.n, label %.thread125

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i:   ; preds = %bb.m, %bb.l
  %i.dj = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i
  %i.dk = icmp eq i32 %i.dj, 0
end_hunk_0
begin_hunk_1_@_ZN3nla9divisions25check_linear_divisibilityEv:bb.a
  %i.fi = and i8 %i.fh, 1
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i102
  %i.fk = load i32, ptr %i.ff, align 8, !tbaa !212
  store i32 %i.fk, ptr %i.t, align 8, !tbaa !212
  %i.fl = load i8, ptr %i.u, align 4
  %i.fm = and i8 %i.fl, -2
  store i8 %i.fm, ptr %i.u, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i102
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fn = load i32, ptr %4, align 8, !tbaa !212
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ca, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.x, %bb.u
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fq = load i8, ptr %i.x, align 4
  %i.fr = trunc i8 %i.fq to i1
  %i.fs = load i32, ptr %i.w, align 8
  %i.ft = icmp ne i32 %i.fs, 1
  %.not138 = select i1 %i.fr, i1 true, i1 %i.ft
  %i.fu = load i32, ptr %5, align 8
  %i.fv = icmp eq i32 %i.fu, 0
  %or.cond = select i1 %.not138, i1 true, i1 %i.fv
  br i1 %or.cond, label %bb.bx, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  %i.fy = load i8, ptr %i.m, align 4
  %i.fz = and i8 %i.fy, 1
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.ah, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i106

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load i8, ptr %i.y, align 4
  %i.gc = and i8 %i.gb, 1
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %.split.i.i.i107, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i106

.split.i.i.i107:                                  ; preds = %bb.ah
  %i.ge = load i32, ptr %3, align 8, !tbaa !212
  %i.gf = load i32, ptr %6, align 8, !tbaa !212
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.ai, label %bb.am

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i106: ; preds = %bb.ah, %bb.ag
  %i.gh = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc108 unwind label %bb.ap

.noexc108:                                        ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i106
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.noexc108, %.split.i.i.i107
  %i.gj = load i8, ptr %i.p, align 4
  %i.gk = and i8 %i.gj, 1
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load i8, ptr %i.aa, align 4
  %i.gn = and i8 %i.gm, 1
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gp = load i32, ptr %i.o, align 8, !tbaa !212
  %i.gq = load i32, ptr %i.z, align 8, !tbaa !212
  %i.gr = icmp eq i32 %i.gp, %i.gq
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.gs = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc109 unwind label %bb.ap

.noexc109:                                        ; preds = %bb.al
  %i.gt = icmp eq i32 %i.gs, 0
  br label %bb.am

bb.am:                                            ; preds = %.noexc109, %bb.ak, %.noexc108, %.split.i.i.i107
  %i.gu = phi i1 [ false, %.noexc108 ], [ false, %.split.i.i.i107 ], [ %i.gr, %bb.ak ], [ %i.gt, %.noexc109 ]
  %i.gv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.an

.noexc.i:                                         ; preds = %bb.am
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i, %bb.am
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.gu, label %bb.ar, label %bb.bx

bb.ao:                                            ; preds = %bb.af
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i106
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.gz, %bb.ap ], [ %i.gy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.by

bb.ar:                                            ; preds = %_ZN8rationalD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN3nla13lemma_builderC1ERNS_4coreEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(4857) %i.c, ptr noundef nonnull @.str.4)
          to label %bb.as unwind label %bb.bj

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ha = load i32, ptr %i.am, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  store i32 0, ptr %10, align 8, !tbaa !212, !alias.scope !262
  %i.hb = load i8, ptr %i.ab, align 4, !alias.scope !262
  %i.hc = and i8 %i.hb, -4                        ; 2 uses
  store i8 %i.hc, ptr %i.ab, align 4, !alias.scope !262
  store ptr null, ptr %i.ac, align 8, !tbaa !213, !alias.scope !262
  store i32 1, ptr %i.ad, align 8, !tbaa !212, !alias.scope !262
  %i.hd = load i8, ptr %i.ae, align 4, !alias.scope !262
  %i.he = and i8 %i.hd, -4
  store i8 %i.he, ptr %i.ae, align 4, !alias.scope !262
  store ptr null, ptr %i.af, align 8, !tbaa !213, !alias.scope !262
  %i.hf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215, !noalias !262 ; 2 uses
  %i.hg = load i8, ptr %i.ag, align 4, !noalias !262
  %i.hh = and i8 %i.hg, 1
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hj = load i32, ptr %5, align 8, !tbaa !212, !noalias !262
  store i32 %i.hj, ptr %10, align 8, !tbaa !212, !alias.scope !262
  store i8 %i.hc, ptr %i.ab, align 4, !alias.scope !262
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.bk

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.au, %bb.at
  %i.hk = load i8, ptr %i.x, align 4, !noalias !262
  %i.hl = and i8 %i.hk, 1
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.hn = load i32, ptr %i.w, align 8, !tbaa !212, !noalias !262
  store i32 %i.hn, ptr %i.ad, align 8, !tbaa !212, !alias.scope !262
  %i.ho = load i8, ptr %i.ae, align 4, !alias.scope !262
  %i.hp = and i8 %i.ho, -2
  store i8 %i.hp, ptr %i.ae, align 4, !alias.scope !262
  br label %_ZN8rationalC2ERKS_.exit.i

bb.aw:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.bk

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.aw, %bb.av
  %i.hq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215, !noalias !262
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZngRK8rational.exit unwind label %13

13:                                               ; preds = %_ZN8rationalC2ERKS_.exit.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #17
  br label %.body

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.hr = load i32, ptr %i.cg, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqEC2ERKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc113 unwind label %bb.bl

.noexc113:                                        ; preds = %_ZngRK8rational.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  store i32 -1, ptr %i.ah, align 8, !tbaa !223
  invoke void @_ZN2lp8lar_term12add_monomialERK8rationalj(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE, i32 noundef %i.ha)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc113
  invoke void @_ZN2lp8lar_term12add_monomialERK8rationalj(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.hr)
          to label %_ZN2lp8lar_termC2EjRK8rationalj.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc113
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %9) #17
  br label %.body114

_ZN2lp8lar_termC2EjRK8rationalj.exit:             ; preds = %bb.ax
  invoke void @_ZN3nla4ineqC2ERKN2lp8lar_termENS1_16lconstraint_kindEi(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(28) %9, i32 noundef 3, i32 noundef 0)
          to label %bb.az unwind label %bb.bm

bb.az:                                            ; preds = %_ZN2lp8lar_termC2EjRK8rationalj.exit
  %i.ht = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.ba unwind label %bb.bn     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #17
  %i.hu = load ptr, ptr %9, align 8, !tbaa !224   ; 3 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN2lp8lar_termD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = load i32, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bb, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi i32 [ %i.id, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.hw, %bb.bb ]
  %.047.i.i.i.i.i.i.i.i = phi ptr [ %i.ic, %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.hu, %bb.bb ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 16
  %i.hy = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %i.hx)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 32
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.hz)
          to label %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #18
  unreachable

_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i, i64 48
  %i.id = add i32 %.08.i.i.i.i.i.i.i.i, -1        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyI17default_map_entryIj8rationalEEvPT_.exit.i.i.i.i.i.i.i.i, %bb.bb
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hu)
          to label %_ZN2lp8lar_termD2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #18
  unreachable

_ZN2lp8lar_termD2Ev.exit:                         ; preds = %bb.ba, %_ZSt9destroy_nIP17default_map_entryIj8rationalEjET_S4_T0_.exit.i.i.i.i.i
  %i.ig = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i116 unwind label %bb.be

.noexc.i116:                                      ; preds = %_ZN2lp8lar_termD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_ZN8rationalD2Ev.exit117 unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i116, %_ZN2lp8lar_termD2Ev.exit
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #18
  unreachable

_ZN8rationalD2Ev.exit117:                         ; preds = %.noexc.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ij = load i32, ptr %i.cf, align 4, !tbaa !16
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindEi(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ij, i32 noundef 3, i32 noundef 0)
          to label %bb.bf unwind label %bb.bp

bb.bf:                                            ; preds = %_ZN8rationalD2Ev.exit117
  %i.ik = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %bb.bg unwind label %bb.bq     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.il = load i32, ptr %i.al, align 4, !tbaa !16
  invoke void @_ZN3nla4ineqC2EjN2lp16lconstraint_kindEi(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.il, i32 noundef 0, i32 noundef 0)
          to label %bb.bh unwind label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.im = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3nla13lemma_builderoRERKNS_4ineqE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %bb.bi unwind label %bb.bt     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bx

bb.bj:                                            ; preds = %bb.ar
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bk:                                            ; preds = %bb.aw, %bb.au
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %_ZngRK8rational.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body114

bb.bm:                                            ; preds = %_ZN2lp8lar_termC2EjRK8rationalj.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.az
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn76 = phi { ptr, i32 } [ %i.ir, %bb.bn ], [ %i.iq, %bb.bm ]
  call void @_ZN2lp8lar_termD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %9) #17
  br label %.body114

.body114:                                         ; preds = %bb.bl, %bb.ay, %bb.bo
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.bo ], [ %i.ip, %bb.bl ], [ %i.hs, %bb.ay ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #17
  br label %.body

.body:                                            ; preds = %bb.bk, %13, %.body114
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %.body114 ], [ %i.io, %bb.bk ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bv

bb.bp:                                            ; preds = %_ZN8rationalD2Ev.exit117
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bf
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #17
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn80 = phi { ptr, i32 } [ %i.it, %bb.bq ], [ %i.is, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bg
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bh
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3nla4ineqD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn82 = phi { ptr, i32 } [ %i.iv, %bb.bt ], [ %i.iu, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br, %.body
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.bu ], [ %.pn80, %bb.br ], [ %.pn76.pn.pn, %.body ]
  call void @_ZN3nla13lemma_builderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bj
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.bv ], [ %i.in, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.by

bb.bx:                                            ; preds = %_ZN8rationalD2Ev.exit, %bb.ad, %bb.bi
  %i.iw = phi i1 [ false, %bb.bi ], [ true, %bb.ad ], [ true, %_ZN8rationalD2Ev.exit ]
  %i.ix = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i118.jt1 unwind label %.loopexit157

.noexc.i118.jt1:                                  ; preds = %bb.bx
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZN8rationalD2Ev.exit119.jt1 unwind label %.loopexit157

.loopexit157:                                     ; preds = %bb.bx, %.noexc.i118.jt1
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %lpad.loopexit, 0
  call void @__clang_call_terminate(ptr %i.iy) #18
  unreachable

_ZN8rationalD2Ev.exit119.jt1:                     ; preds = %.noexc.i118.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw, %bb.aq
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.bw ], [ %.pn, %bb.aq ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #17
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.ae
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %bb.by ], [ %i.fw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #17
  br label %bb.cb

bb.ca:                                            ; preds = %bb.aa, %_ZN8rationalD2Ev.exit119.jt1
  %.166.jt1 = phi i1 [ %i.iw, %_ZN8rationalD2Ev.exit119.jt1 ], [ true, %bb.aa ]
  %i.iz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i120.jt1 unwind label %.loopexit158

.noexc.i120.jt1:                                  ; preds = %bb.ca
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.cc unwind label %.loopexit158

.loopexit158:                                     ; preds = %bb.ca, %.noexc.i120.jt1
  %lpad.loopexit160 = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %lpad.loopexit160, 0
  call void @__clang_call_terminate(ptr %i.ja) #18
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.ab
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn, %bb.bz ], [ %i.fp, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cf

bb.cc:                                            ; preds = %.noexc.i120.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.166.jt1, label %.thread125, label %.loopexit.jt1

.thread125:                                       ; preds = %.split, %bb.cc, %.split.i.i.i, %.noexc, %bb.t, %_ZNK3nla4core11is_relevantEj.exit97, %bb.q, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count149
  br i1 %exitcond.not, label %.loopexit.jt4, label %.preheader, !llvm.loop !260

.loopexit.jt1:                                    ; preds = %bb.cc
  %i.jb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i122.jt1 unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp

.loopexit.jt4:                                    ; preds = %.thread125, %bb.h
  %i.jc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i122.jt4 unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp

.noexc.i122.jt1:                                  ; preds = %.loopexit.jt1
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.cd unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp

.noexc.i122.jt4:                                  ; preds = %.loopexit.jt4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.ce unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i122.jt4, %.loopexit.jt4, %.loopexit.jt1, %.noexc.i122.jt1
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %lpad.loopexit.split-lp170, 0
  call void @__clang_call_terminate(ptr %i.jd) #18
  unreachable

bb.cd:                                            ; preds = %.noexc.i122.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %._crit_edge

bb.ce:                                            ; preds = %.noexc.i122.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread132

.thread132:                                       ; preds = %bb.ce, %_ZNK3nla4core11is_relevantEj.exit.thread, %_ZNK3nla4core11is_relevantEj.exit
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge, label %bb.b, !llvm.loop !261

bb.cf:                                            ; preds = %bb.r, %bb.cb
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.r ], [ %.pn82.pn.pn.pn.pn.pn.pn, %bb.cb ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn.pn.pn.pn

._crit_edge:                                      ; preds = %.thread132, %bb.a, %bb.cd, %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla9divisions20check_mod_congruenceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.u_hash, align 1             ; 3 uses
  %2 = alloca %struct.u_eq, align 1               ; 3 uses
  %3 = alloca %struct.u_hash, align 1             ; 3 uses
  %4 = alloca %struct.u_eq, align 1               ; 3 uses
  %5 = alloca %struct.u_hash, align 1             ; 3 uses
  %6 = alloca %struct.u_eq, align 1               ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.rational, align 8            ; 19 uses
  %8 = alloca %class.rational, align 8            ; 10 uses
  %9 = alloca %class.rational, align 8            ; 11 uses
  %10 = alloca %class.rational, align 8           ; 11 uses
  %11 = alloca %class.rational, align 8           ; 8 uses
  %12 = alloca %class.rational, align 8           ; 8 uses
  %13 = alloca %"class.nla::lemma_builder", align 8 ; 10 uses
  %14 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %15 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %16 = alloca %"class.lp::lar_term", align 8     ; 12 uses
  %17 = alloca %class.rational, align 8           ; 12 uses
  %18 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %19 = alloca %"class.lp::lar_term", align 8     ; 12 uses
  %20 = alloca %class.rational, align 8           ; 12 uses
  %21 = alloca %"class.lp::lar_term", align 8     ; 14 uses
  %22 = alloca %class.rational, align 8           ; 12 uses
  %23 = alloca %class.rational, align 8           ; 12 uses
  %24 = alloca %"class.nla::ineq", align 8        ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19, !nonnull !20, !align !21 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit

_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit:   ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 3 uses
  %.not199 = icmp eq i32 %i.h, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt5tupleIJjjjjEELb1EjE4sizeEv.exit
end_hunk_1
