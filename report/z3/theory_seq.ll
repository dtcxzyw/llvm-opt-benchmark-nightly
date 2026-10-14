Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_seq?download=true
inline.NumInlined: 5630
inline.NumDeleted: 2057
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3smt10theory_seq10get_lengthEP4exprR7obj_refIS1_11ast_managerER7svectorIN3sat7literalEjE:bb.a
  %i.ub = load ptr, ptr %19, align 8, !tbaa !787
  %i.uc = load ptr, ptr %i.f, align 8, !tbaa !58
  invoke void @_ZN3smt10theory_seq6mk_subEP4exprS2_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %23, ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ub, ptr noundef %i.uc)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.ud = load ptr, ptr %23, align 8, !tbaa !787
  %i.ue = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i32 noundef 1)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN3smt10theory_seq6mk_subEP4exprS2_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %22, ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ud, ptr noundef %i.ue)
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.uf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22) #26 ; 0 uses
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.ug = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %20)
          to label %.critedge159 unwind label %bb.en ; 0 uses

bb.es:                                            ; preds = %bb.eo
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.et:                                            ; preds = %bb.eq, %bb.ep
  %i.ui = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #26
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.pn104 = phi { ptr, i32 } [ %i.ui, %bb.et ], [ %i.uh, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.fb

bb.ev:                                            ; preds = %bb.ej
  %i.uj = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i32 noundef 0)
          to label %bb.ew unwind label %bb.en

bb.ew:                                            ; preds = %bb.ev
  %i.uk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.uj)
          to label %bb.ex unwind label %bb.en     ; 0 uses

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.ul = xor i32 %i.th, 1
  store i32 %i.ul, ptr %24, align 4
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %24)
          to label %bb.ey unwind label %bb.ez     ; 0 uses

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %.critedge159

bb.ez:                                            ; preds = %bb.ex
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.fb:                                            ; preds = %bb.ez, %bb.eu, %bb.en, %.body310
  %.pn106 = phi { ptr, i32 } [ %i.ua, %bb.en ], [ %.pn104, %bb.eu ], [ %i.un, %bb.ez ], [ %.pn, %.body310 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ek
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %bb.fb ], [ %i.tx, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.fr

bb.fd:                                            ; preds = %bb.ed
  %i.uo = load i32, ptr %i.p, align 8, !tbaa !758
  %i.up = load i32, ptr %i.r, align 4
  %i.uq = and i32 %i.up, 65535
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.fe, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.fe:                                            ; preds = %bb.fd
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !813
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.fe
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !820
  %i.ux = icmp eq i32 %i.uw, %i.uo
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.uz = load i32, ptr %i.uy, align 4
  %i.va = icmp eq i32 %i.uz, 0
  %i.vb = select i1 %i.ux, i1 %i.va, i1 false
  br i1 %i.vb, label %bb.ff, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.ff:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.vd = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i32 noundef 1)
          to label %bb.fg unwind label %bb.ah

bb.fg:                                            ; preds = %bb.ff
  %i.ve = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vd)
          to label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread unwind label %bb.ah ; 0 uses

bb.fh:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.3
  %i.vf = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !65
  %i.vh = add i32 %i.vg, -1                       ; 2 uses
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !65
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.fi, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit320

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bn, ptr noundef nonnull %i.bm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit320 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit320:      ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.3, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.vl = load ptr, ptr %5, align 8, !tbaa !787   ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i321, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322, label %bb.fk

bb.fk:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit320
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !65
  %i.vq = add i32 %i.vp, -1                       ; 2 uses
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !65
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %bb.fl, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.vn, ptr noundef nonnull %i.vl)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.vs = landingpad { ptr, i32 }
          catch ptr null
  %i.vt = extractvalue { ptr, i32 } %i.vs, 0
  call void @__clang_call_terminate(ptr %i.vt) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit322:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit320, %bb.fk, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

.critedge157:                                     ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

.critedge159:                                     ; preds = %bb.ey, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.vu = load ptr, ptr %19, align 8, !tbaa !787  ; 3 uses
  %.not.i.i323 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i323, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324, label %bb.fn

bb.fn:                                            ; preds = %.critedge159
  %i.vv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !65
  %i.vz = add i32 %i.vy, -1                       ; 2 uses
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !65
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.fo, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.vw, ptr noundef nonnull %i.vu)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  %i.wc = extractvalue { ptr, i32 } %i.wb, 0
  call void @__clang_call_terminate(ptr %i.wc) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit324:      ; preds = %.critedge159, %bb.fn, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

_ZNK8seq_util3str7is_unitEPK4expr.exit.thread:    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i234.1, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i273.1, %bb.fe, %bb.fd, %bb.co, %bb.cn, %bb.bm, %bb.bl, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit200, %bb.ea, %bb.fa, %bb.fg, %_ZN7obj_refI4expr11ast_managerED2Ev.exit324, %.critedge157, %_ZN7obj_refI4expr11ast_managerED2Ev.exit322
  %.5 = phi i1 [ true, %bb.fg ], [ true, %_ZN7obj_refI4expr11ast_managerED2Ev.exit322 ], [ false, %bb.fe ], [ true, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i273.1 ], [ true, %.critedge157 ], [ true, %_ZN7obj_refI4expr11ast_managerED2Ev.exit324 ], [ false, %bb.fa ], [ false, %bb.ea ], [ false, %bb.bm ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit ], [ false, %_ZN7obj_refI4expr11ast_managerED2Ev.exit200 ], [ false, %bb.bl ], [ false, %bb.cn ], [ false, %bb.co ], [ false, %bb.fd ], [ true, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i234.1 ]
  %i.wd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !848 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wd, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.fq

.noexc.i:                                         ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wd, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.fq

bb.fq:                                            ; preds = %.noexc.i, %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread
  %i.we = landingpad { ptr, i32 }
          catch ptr null
  %i.wf = extractvalue { ptr, i32 } %i.we, 0
  call void @__clang_call_terminate(ptr %i.wf) #29
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  ret i1 %.5

bb.fr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit332, %.loopexit.split-lp333, %bb.dr, %bb.eb, %bb.dv, %bb.cx, %bb.dc, %bb.cy, %bb.bw, %bb.cb, %bb.bx, %bb.fc, %bb.ba, %bb.ah
  %.pn137.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn137.pn.pn.pn.pn.pn.pn, %bb.ba ], [ %i.gp, %bb.ah ], [ %.pn125.pn, %bb.cb ], [ %.pn118.pn, %bb.dc ], [ %.pn106.pn, %bb.fc ], [ %i.lr, %bb.bw ], [ %i.ls, %bb.bx ], [ %.pn109.pn, %bb.dv ], [ %i.pp, %bb.cx ], [ %i.pq, %bb.cy ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp333 ], [ %i.se, %bb.dr ], [ %.pn114, %bb.eb ], [ %lpad.loopexit334, %.loopexit332 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  resume { ptr, i32 } %.pn137.pn.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK3seq9eq_solver6is_varEP4expr(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.301, align 8         ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.ptr_vector, align 8          ; 13 uses
  %6 = alloca %class.obj_ref.69, align 8          ; 9 uses
  %i.b = icmp ne ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5561
  store i8 1, ptr %i.c, align 1, !tbaa !772
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN3smt10theory_seq12solution_map6updateEP4exprS3_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.e = tail call noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) ; 2 uses
  %i.f = tail call noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !56
  %i.g = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !816  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.l = load i32, ptr %i.k, align 8, !tbaa !755
  %i.m = load i32, ptr %i.i, align 8, !tbaa !820
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %_ZNK8seq_util6is_seqEP4expr.exit, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53"

_ZNK8seq_util6is_seqEP4expr.exit:                 ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !840
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53"

bb.c:                                             ; preds = %_ZNK8seq_util6is_seqEP4expr.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !791  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %_ZNK3smt5enode7parents3endEv.exit.i

_ZNK3smt5enode7parents3endEv.exit.i:              ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3smt5enode7parents3endEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3080
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, %.lr.ph.i
  %.03.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.be, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i ] ; 2 uses
  %i.aa = load ptr, ptr %.03.i, align 8, !tbaa !823
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !839 ; 3 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !758
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 65535
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !813
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i

_ZNK8seq_util3str9is_lengthEPK4expr.exit.i:       ; preds = %bb.e
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !820
  %i.am = icmp eq i32 %i.al, %i.ac
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 12
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.f, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

bb.f:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !56    ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i:    ; preds = %.noexc39, %bb.g
  %i.ay = phi i32 [ %.pre2.i.i, %.noexc39 ], [ %i.au, %bb.g ] ; 2 uses
  %i.az = phi ptr [ %.pre.i.i, %.noexc39 ], [ %i.ar, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bb = zext i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %i.ab, ptr %i.bc, align 8, !tbaa !58
  %i.bd = add i32 %i.ay, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !52
  br label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i: ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i, %bb.e, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.y
  br i1 %.not.i, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %bb.d

"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit": ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, %_ZNK3smt5enode7parents3endEv.exit.i, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !791 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %_ZNK3smt5enode7parents3endEv.exit.i40

_ZNK3smt5enode7parents3endEv.exit.i40:            ; preds = %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit"
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !52 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %.not2.i41 = icmp eq i32 %i.bj, 0
  br i1 %.not2.i41, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZNK3smt5enode7parents3endEv.exit.i40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3080
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44, %.lr.ph.i42
  %.03.i43 = phi ptr [ %i.bg, %.lr.ph.i42 ], [ %i.cs, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44 ] ; 2 uses
  %i.bo = load ptr, ptr %.03.i43, align 8, !tbaa !823
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !839 ; 3 uses
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !758
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 65535
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !813
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i46, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i47

_ZNK8seq_util3str9is_lengthEPK4expr.exit.i47:     ; preds = %bb.j
end_hunk_0
