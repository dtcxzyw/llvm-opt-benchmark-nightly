Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_dense_diff_logic?download=true
inline.NumInlined: 6090
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3smt23theory_dense_diff_logicINS_7smi_extEE15compute_epsilonEv:bb.a
bb.by:                                            ; preds = %_ZN8rationalD2Ev.exit83, %_ZN8rationalD2Ev.exit64
  %i.lj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i84 unwind label %bb.bz

.noexc.i84:                                       ; preds = %bb.by
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lj, ptr noundef nonnull align 8 dereferenceable(16) %i.cm)
          to label %_ZN8rationalD2Ev.exit85 unwind label %bb.bz

bb.bz:                                            ; preds = %.noexc.i84, %bb.by
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #22
  unreachable

_ZN8rationalD2Ev.exit85:                          ; preds = %.noexc.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.lm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i86 unwind label %bb.ca

.noexc.i86:                                       ; preds = %_ZN8rationalD2Ev.exit85
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_ZN8rationalD2Ev.exit87 unwind label %bb.ca

bb.ca:                                            ; preds = %.noexc.i86, %_ZN8rationalD2Ev.exit85
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #22
  unreachable

_ZN8rationalD2Ev.exit87:                          ; preds = %.noexc.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.lp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i88 unwind label %bb.cb

.noexc.i88:                                       ; preds = %_ZN8rationalD2Ev.exit87
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %_ZN8rationalD2Ev.exit89 unwind label %bb.cb

bb.cb:                                            ; preds = %.noexc.i88, %_ZN8rationalD2Ev.exit87
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #22
  unreachable

_ZN8rationalD2Ev.exit89:                          ; preds = %.noexc.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ls = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i90 unwind label %bb.cc

.noexc.i90:                                       ; preds = %_ZN8rationalD2Ev.exit89
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %_ZN8rationalD2Ev.exit91 unwind label %bb.cc

bb.cc:                                            ; preds = %.noexc.i90, %_ZN8rationalD2Ev.exit89
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #22
  unreachable

_ZN8rationalD2Ev.exit91:                          ; preds = %.noexc.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.lv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i92 unwind label %bb.cd

.noexc.i92:                                       ; preds = %_ZN8rationalD2Ev.exit91
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %_ZN8rationalD2Ev.exit93 unwind label %bb.cd

bb.cd:                                            ; preds = %.noexc.i92, %_ZN8rationalD2Ev.exit91
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #22
  unreachable

_ZN8rationalD2Ev.exit93:                          ; preds = %.noexc.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ly = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ly, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i94 unwind label %bb.ce

.noexc.i94:                                       ; preds = %_ZN8rationalD2Ev.exit93
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_ZN8rationalD2Ev.exit95 unwind label %bb.ce

bb.ce:                                            ; preds = %.noexc.i94, %_ZN8rationalD2Ev.exit93
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #22
  unreachable

_ZN8rationalD2Ev.exit95:                          ; preds = %.noexc.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.034 = getelementptr inbounds nuw i8, ptr %.034108, i64 20 ; 2 uses
  %.not = icmp eq ptr %.034, %i.bj
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !1325

bb.cf:                                            ; preds = %bb.bx, %bb.bk
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.bx ], [ %.pn.pn.pn, %bb.bk ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #21
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bd
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.cf ], [ %i.ku, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #21
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bc
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.cg ], [ %i.kt, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bb
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.ch ], [ %i.ks, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ba
  %.pn44.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn, %bb.ci ], [ %i.kr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.az
  %.pn44.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn, %bb.cj ], [ %i.kq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn.pn.pn

._crit_edge:                                      ; preds = %_ZN8rationalD2Ev.exit95, %_ZN6vectorIN3smt23theory_dense_diff_logicINS0_7smi_extEE4edgeELb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE8fix_zeroEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK3smt6theory12get_num_varsEv.exit

_ZNK3smt6theory12get_num_varsEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph20.split.us.preheader, label %.critedge

.lr.ph20.split.us.preheader:                      ; preds = %_ZNK3smt6theory12get_num_varsEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count27 = zext nneg i32 %i.e to i64  ; 2 uses
  br label %.lr.ph20.split.us

.lr.ph20.split.us:                                ; preds = %.lr.ph20.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv24 = phi i64 [ 0, %.lr.ph20.split.us.preheader ], [ %indvars.iv.next25, %..loopexit_crit_edge.us ] ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !949  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge, label %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit.us

_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit.us: ; preds = %.lr.ph20.split.us
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv24, %i.m
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit.us
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.s = tail call noundef zeroext i1 @_ZNK10arith_util7is_zeroEPK4expr(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.r)
  br i1 %i.s, label %bb.c, label %..loopexit_crit_edge.us

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !949
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !937
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %..loopexit_crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c
  %1 = load i64, ptr %i.u, align 4                ; 2 uses
  %.sroa.4.0.extract.shift.us = lshr i64 %1, 32
  %2 = insertelement <2 x i64> poison, i64 %1, i64 0
  %3 = insertelement <2 x i64> %2, i64 %.sroa.4.0.extract.shift.us, i64 1
  %4 = trunc <2 x i64> %3 to <2 x i32>
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.ac = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.ah = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ag)
  %i.ai = icmp eq ptr %i.ah, %i.ac
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !949
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.al = load <2 x i32>, ptr %i.ak, align 4, !tbaa !56
  %i.am = sub nsw <2 x i32> %i.al, %4
  store <2 x i32> %i.am, ptr %i.ak, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count27
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.d, !llvm.loop !1333

..loopexit_crit_edge.us:                          ; preds = %bb.f, %bb.c, %bb.b
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %.critedge, label %.lr.ph20.split.us, !llvm.loop !1334

.critedge:                                        ; preds = %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit.us, %..loopexit_crit_edge.us, %.lr.ph20.split.us, %bb.a, %_ZNK3smt6theory12get_num_varsEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE10init_modelERNS_15model_generatorE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 104) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219, !nonnull !72, !align !73
  tail call void @_ZN13arith_factoryC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(952) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.a, ptr %i.d, align 8, !tbaa !992
  tail call void @_ZN3smt15model_generator16register_factoryEP13value_factory(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !949  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit.thread, label %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit

_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit:   ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit
  tail call void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE8fix_zeroEv(ptr noundef nonnull align 8 dereferenceable(376) %0)
  tail call void @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE15compute_epsilonEv(ptr noundef nonnull align 8 dereferenceable(376) %0)
  br label %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit.thread

_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6vectorI13inf_s_integerLb1EjE5emptyEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN3smt23theory_dense_diff_logicINS_7smi_extEE8mk_valueEPNS_5enodeERNS_15model_generatorE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 8 uses
  %4 = alloca %class.rational, align 8            ; 12 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %6 = alloca %class.rational, align 8            ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !949  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  br label %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit

_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit:    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.not = icmp slt i32 %i.c, %.0.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit
  %i.i = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !992
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = zext i32 %i.c to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !83, !range !84, !noundef !72
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = tail call noundef ptr @_ZN13arith_factory12mk_num_valueERK8rationalb(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE, i1 noundef zeroext %i.q)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3smt17expr_wrapper_procE, i64 16), ptr %i.i, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !289
  br label %bb.u

bb.d:                                             ; preds = %_ZNK6vectorI13inf_s_integerLb1EjE4sizeEv.exit
  %i.t = zext i32 %i.c to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = load i32, ptr %i.u, align 4, !tbaa !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !alias.scope !1339
  %i.y = and i8 %i.x, -4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !49, !alias.scope !1339
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !48, !alias.scope !1339
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 4, !alias.scope !1339
  %i.ad = and i8 %i.ac, -4
  store i8 %i.ad, ptr %i.ab, align 4, !alias.scope !1339
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !49, !alias.scope !1339
  %i.af = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !1339
  store i32 %i.v, ptr %4, align 8, !tbaa !48, !alias.scope !1339
  store i8 %i.y, ptr %i.w, align 4, !alias.scope !1339
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  store i32 1, ptr %i.aa, align 8, !tbaa !48, !alias.scope !1339
  %i.ag = load i8, ptr %i.ab, align 4, !alias.scope !1339
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.ab, align 4, !alias.scope !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !938
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4, !alias.scope !1340
  %i.am = and i8 %i.al, -4
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !49, !alias.scope !1340
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.ao, align 8, !tbaa !48, !alias.scope !1340
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !1340
  %i.ar = and i8 %i.aq, -4
  store i8 %i.ar, ptr %i.ap, align 4, !alias.scope !1340
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !49, !alias.scope !1340
  %i.at = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !1340
  store i32 %i.aj, ptr %6, align 8, !tbaa !48, !alias.scope !1340
  store i8 %i.am, ptr %i.ak, align 4, !alias.scope !1340
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 1, ptr %i.ao, align 8, !tbaa !48, !alias.scope !1340
  %i.av = load i8, ptr %i.ap, align 4, !alias.scope !1340
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.ap, align 4, !alias.scope !1340
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  invoke void @_ZplRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.bb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i20 unwind label %bb.i

.noexc.i20:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN8rationalD2Ev.exit21 unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i20, %_ZN8rationalD2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #22
  unreachable

_ZN8rationalD2Ev.exit21:                          ; preds = %.noexc.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.be = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i22 unwind label %bb.j

.noexc.i22:                                       ; preds = %_ZN8rationalD2Ev.exit21
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN8rationalD2Ev.exit23 unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i22, %_ZN8rationalD2Ev.exit21
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
