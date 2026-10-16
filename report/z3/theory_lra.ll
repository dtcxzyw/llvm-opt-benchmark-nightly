Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_lra?download=true
inline.NumInlined: 6546
inline.NumDeleted: 2286
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3smt10theory_lra3imp8maximizeEiR7obj_refI4expr11ast_managerERb:bb.a
  unreachable

_ZN2lp12numeric_pairI8rationalED2Ev.exit:         ; preds = %.noexc.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.s:                                             ; preds = %bb.m, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN2lp12numeric_pairI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: uwtable
define hidden void @_ZThn56_N3smt10theory_lra8maximizeEiR7obj_refI4expr11ast_managerERb(ptr dead_on_unwind noalias writable sret(%class.inf_eps_rational) align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572, !noalias !1169
  tail call void @_ZN3smt10theory_lra3imp8maximizeEiR7obj_refI4expr11ast_managerERb(ptr dead_on_unwind writable sret(%class.inf_eps_rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(952) %i.b, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3smt10theory_lra13add_objectiveEP3app(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572  ; 3 uses
  %i.c = tail call noundef i32 @_ZN3smt10theory_lra3imp15internalize_defEP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !619
  %i.f = tail call noundef i32 @_ZNK2lp10lar_solver17external_to_localEj(ptr noundef nonnull align 8 dereferenceable(152) %i.e, i32 noundef %i.c)
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN3smt10theory_lra3imp13add_objectiveEP3app.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !619
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !703
  %i.k = zext i32 %i.c to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !748
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !757
  %i.o = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !738  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = load i32, ptr %i.q, align 8, !tbaa !740
  %i.t = icmp eq i32 %i.s, 5
  br i1 %i.t, label %bb.c, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i

bb.c:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !758
  %i.w = icmp eq i32 %i.v, 1
  br label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i

_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i:       ; preds = %bb.c, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i, %bb.b
  %i.x = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i ], [ %i.w, %bb.c ], [ false, %bb.b ]
  %i.y = tail call noundef i32 @_ZN2lp10lar_solver7add_varEjb(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i32 noundef %i.c, i1 noundef zeroext %i.x) ; 0 uses
  br label %_ZN3smt10theory_lra3imp13add_objectiveEP3app.exit

_ZN3smt10theory_lra3imp13add_objectiveEP3app.exit: ; preds = %bb.a, %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i
  ret i32 %i.c
}

; Function Attrs: uwtable
define hidden noundef i32 @_ZThn56_N3smt10theory_lra13add_objectiveEP3app(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572  ; 3 uses
  %i.c = tail call noundef i32 @_ZN3smt10theory_lra3imp15internalize_defEP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !619
  %i.f = tail call noundef i32 @_ZNK2lp10lar_solver17external_to_localEj(ptr noundef nonnull align 8 dereferenceable(152) %i.e, i32 noundef %i.c)
  %.not.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i, label %bb.b, label %_ZN3smt10theory_lra13add_objectiveEP3app.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !619
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !703
  %i.k = zext i32 %i.c to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !748
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !757
  %i.o = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !738  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = load i32, ptr %i.q, align 8, !tbaa !740
  %i.t = icmp eq i32 %i.s, 5
  br i1 %i.t, label %bb.c, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !758
  %i.w = icmp eq i32 %i.v, 1
  br label %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i.i

_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i.i:     ; preds = %bb.c, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i.i, %bb.b
  %i.x = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.c ], [ false, %bb.b ]
  %i.y = tail call noundef i32 @_ZN2lp10lar_solver7add_varEjb(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i32 noundef %i.c, i1 noundef zeroext %i.x) ; 0 uses
  br label %_ZN3smt10theory_lra13add_objectiveEP3app.exit

_ZN3smt10theory_lra13add_objectiveEP3app.exit:    ; preds = %bb.a, %_ZNK3smt10theory_lra3imp6is_intEi.exit.i.i.i
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt10theory_lra5mk_geER23generic_model_converteriRK12inf_rational(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572
  tail call void @_ZN3smt10theory_lra3imp5mk_geER23generic_model_converteriRK12inf_rational(ptr dead_on_unwind writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3smt10theory_lra3imp5mk_geER23generic_model_converteriRK12inf_rational(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct._key_data, align 8          ; 5 uses
  %6 = alloca %struct._key_data, align 8          ; 5 uses
  %7 = alloca %"struct.generic_model_converter::entry", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %class.rational, align 8            ; 17 uses
  %10 = alloca %class.obj_ref.82, align 8         ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %12 = alloca %struct.mk_pp, align 8             ; 7 uses
  %13 = alloca %class.symbol, align 8             ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %class.obj_ref.82, align 8         ; 8 uses
  %16 = alloca %class.obj_ref.82, align 8         ; 8 uses
  %17 = alloca %class.rational, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 8, !tbaa !698
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !697
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !698
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !697
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %4, align 8, !tbaa !698
  store i32 %i.o, ptr %9, align 8, !tbaa !698
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !698
  store i32 %i.u, ptr %i.e, align 8, !tbaa !698
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !698  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0                     ; 3 uses
  %i.aa = icmp slt i32 %i.y, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !771, !nonnull !564, !align !565 ; 3 uses
  store ptr null, ptr %10, align 8, !tbaa !836
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !574
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !703
  %i.ai = zext i32 %3 to i64                      ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !748
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !757
  %i.am = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.al)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !738 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK17arith_recognizers6is_intEPK4expr.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %.noexc
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !740
  %i.ar = icmp eq i32 %i.aq, 5
  br i1 %i.ar, label %bb.g, label %_ZNK17arith_recognizers6is_intEPK4expr.exit

bb.g:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !758
  %i.au = icmp eq i32 %i.at, 1
  br label %_ZNK17arith_recognizers6is_intEPK4expr.exit

_ZNK17arith_recognizers6is_intEPK4expr.exit:      ; preds = %bb.g, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %.noexc
  %i.av = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i ], [ %i.au, %bb.g ], [ false, %.noexc ] ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.x

bb.h:                                             ; preds = %_ZNK17arith_recognizers6is_intEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(728) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc51 unwind label %bb.r

.noexc51:                                         ; preds = %bb.i
  %i.ax = load ptr, ptr %8, align 8, !tbaa !828
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !829
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.ax, i64 noundef %i.az)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc51
  %i.bb = load ptr, ptr %8, align 8, !tbaa !828   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !830
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.j:                                             ; preds = %.noexc51
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %8, align 8, !tbaa !828   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.j
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !830
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.115, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bn = load ptr, ptr %1, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !703
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ai
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !748
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !757
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !771, !nonnull !564, !align !565
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(952) %i.bt, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit unwind label %bb.s

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.116, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !771, !nonnull !564, !align !565 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.by, ptr %14, align 8, !tbaa !827, !alias.scope !1176
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !829, !alias.scope !1176
  store i8 0, ptr %i.by, align 8, !tbaa !830, !alias.scope !1176
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1178, !noalias !1176 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1176 ; 2 uses
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  %.08.i.i.i = select i1 %i.ce, ptr %i.cb, ptr %i.cd ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1179, !noalias !1176 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %14, align 8, !tbaa !828, !alias.scope !1176 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.by
  br i1 %i.cn, label %.body56, label %.body56.sink.split

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.cp = load ptr, ptr %14, align 8, !tbaa !828
  invoke void @_ZN6symbolC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.cp)
          to label %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.v

_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !771, !nonnull !564, !align !565
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 816
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1180
  %i.ct = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, ptr noundef null, ptr noundef %i.cs, ptr noundef null)
          to label %.noexc59 unwind label %bb.v

.noexc59:                                         ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cu = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bx, ptr noundef %i.ct, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager8mk_constERK6symbolP4sort.exit unwind label %bb.v ; 4 uses

_ZN11ast_manager8mk_constERK6symbolP4sort.exit:   ; preds = %.noexc59
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %bb.o, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !808
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !808
  br label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.cu, ptr %10, align 8, !tbaa !836
  %i.cy = load ptr, ptr %14, align 8, !tbaa !828  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.by
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.da = load i64, ptr %i.by, align 8, !tbaa !830
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.dc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3smt10theory_lra3imp5mk_geER23generic_model_converteriRK12inf_rational:bb.a

_ZNK10arith_util6pluginEv.exit.i76:               ; preds = %.noexc78, %bb.aj
  %i.ez = phi ptr [ %.pre.i.i77, %.noexc78 ], [ %i.ey, %bb.aj ]
  %i.fa = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext %i.av)
          to label %_ZNK10arith_util10mk_numeralERK8rationalb.exit80 unwind label %bb.aq

_ZNK10arith_util10mk_numeralERK8rationalb.exit80: ; preds = %_ZNK10arith_util6pluginEv.exit.i76
  %i.fb = load ptr, ptr %i.ae, align 8, !tbaa !877, !nonnull !564, !align !565
  %i.fc = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fb, i32 noundef 5, i32 noundef 3, ptr noundef %i.ew, ptr noundef %i.fa)
          to label %_ZNK10arith_util5mk_geEP4exprS1_.exit unwind label %bb.aq ; 4 uses

_ZNK10arith_util5mk_geEP4exprS1_.exit:            ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit80
  %.not.i82 = icmp eq ptr %i.fc, null
  br i1 %.not.i82, label %bb.al, label %_ZN11ast_manager7inc_refEP3ast.exit.i83

_ZN11ast_manager7inc_refEP3ast.exit.i83:          ; preds = %_ZNK10arith_util5mk_geEP4exprS1_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !808
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !808
  br label %bb.al

bb.al:                                            ; preds = %_ZNK10arith_util5mk_geEP4exprS1_.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i83
  store ptr %i.fc, ptr %10, align 8, !tbaa !836
  %i.fg = load ptr, ptr %16, align 8, !tbaa !836  ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i87, label %_ZN7obj_refI3app11ast_managerED2Ev.exit88, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !878, !nonnull !564, !align !565
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !808
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !808
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.an, label %_ZN7obj_refI3app11ast_managerED2Ev.exit88

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fi, ptr noundef nonnull %i.fg)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit88 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #27
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit88:        ; preds = %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.as

bb.ap:                                            ; preds = %bb.ai
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit80, %_ZNK10arith_util6pluginEv.exit.i76, %bb.ak
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.aq ], [ %i.fp, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body90

bb.as:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN7obj_refI3app11ast_managerED2Ev.exit88, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.fr = phi ptr [ %i.cu, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.fc, %_ZN7obj_refI3app11ast_managerED2Ev.exit88 ], [ %i.eh, %_ZN7obj_refI3app11ast_managerED2Ev.exit ] ; 8 uses
  %i.fs = load ptr, ptr %1, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !705, !nonnull !564, !align !565 ; 2 uses
  %i.fv = load i32, ptr %i.fr, align 4, !tbaa !762 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8928
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !702 ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.au, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.as
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !693
  %.not.i.i.i = icmp ult i32 %i.fv, %i.ga
  br i1 %.not.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.gb = zext i32 %i.fv to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gb
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.as
  %.0.i.i.i = phi ptr [ %i.gc, %bb.at ], [ @_ZN3smtL13null_bool_varE, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i ], [ @_ZN3smtL13null_bool_varE, %bb.as ]
  %i.gd = load i32, ptr %.0.i.i.i, align 4, !tbaa !693
  %.not = icmp eq i32 %i.gd, 2147483647
  br i1 %.not, label %bb.av, label %bb.bz

bb.av:                                            ; preds = %bb.au
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !735 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !1185, !nonnull !564, !align !565 ; 4 uses
  store ptr %i.gf, ptr %7, align 8, !tbaa !882
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !574
  %.not.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i, label %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i:      ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !808
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !808
  br label %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i

_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i, %bb.av
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.gn, align 8, !tbaa !806
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.gi, ptr %i.go, align 8, !tbaa !574
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.gp, align 8, !tbaa !885
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !886 ; 4 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !693 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 -8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !693
  %i.gw = icmp eq i32 %i.gt, %i.gv
  br i1 %i.gw, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw, %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i
  invoke void @_ZN6vectorIN23generic_model_converter5entryELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %.noexc.i unwind label %bb.ay

.noexc.i:                                         ; preds = %bb.ax
  %.pre.i.i89 = load ptr, ptr %i.gg, align 8, !tbaa !886 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i89, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !693
  %.pre = load ptr, ptr %1, align 8, !tbaa !704
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre131 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !705
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23generic_model_converter5entryD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body90

bb.az:                                            ; preds = %bb.aw, %.noexc.i
  %i.gy = phi ptr [ %.pre131, %.noexc.i ], [ %i.fu, %bb.aw ]
  %i.gz = phi i32 [ %.pre2.i.i, %.noexc.i ], [ %i.gt, %bb.aw ] ; 2 uses
  %i.ha = phi ptr [ %.pre.i.i89, %.noexc.i ], [ %i.gq, %bb.aw ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hc = zext i32 %i.gz to i64
  %i.hd = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %i.hc ; 5 uses
  store ptr %i.gf, ptr %i.hd, align 8, !tbaa !882
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.gi, ptr %i.he, align 8, !tbaa !574
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr null, ptr %i.hf, align 8, !tbaa !806
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store ptr %i.gi, ptr %i.hg, align 8, !tbaa !574
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  store i32 0, ptr %i.hh, align 8, !tbaa !885
  %i.hi = add i32 %i.gz, 1
  store i32 %i.hi, ptr %i.hb, align 4, !tbaa !693
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.hj = invoke noundef i32 @_ZN3smt7context11mk_bool_varEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %i.gy, ptr noundef nonnull %i.fr)
          to label %bb.ba unwind label %bb.bd     ; 4 uses

bb.ba:                                            ; preds = %bb.az
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 %i.hj, ptr %6, align 8, !tbaa !728
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.hl, align 8, !tbaa !729
  invoke void @_ZN14core_hashtableI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEEN9table2mapIS7_6u_hash4u_eqE15entry_hash_procENSB_13entry_eq_procEE6removeERK9_key_dataIjS6_E(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.hm = load ptr, ptr %1, align 8, !tbaa !704, !nonnull !564, !align !565 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !705, !nonnull !564, !align !565
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !730
  invoke void @_ZN3smt7context14set_var_theoryEji(ptr noundef nonnull align 8 dereferenceable(10728) %i.ho, i32 noundef %i.hj, i32 noundef %i.hq)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %spec.store.select = zext i1 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %spec.select = select i1 %i.aa, ptr @_ZN8rational11m_minus_oneE, ptr @_ZN8rational6m_zeroE ; 5 uses
  store i32 0, ptr %17, align 8, !tbaa !698
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 4
  %i.ht = and i8 %i.hs, -4                        ; 2 uses
  store i8 %i.ht, ptr %i.hr, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.hu, align 8, !tbaa !697
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store i32 1, ptr %i.hv, align 8, !tbaa !698
  %i.hw = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 4 uses
  %i.hx = load i8, ptr %i.hw, align 4
  %i.hy = and i8 %i.hx, -4
  store i8 %i.hy, ptr %i.hw, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr null, ptr %i.hz, align 8, !tbaa !697
  %i.ia = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %.val123 = load i8, ptr %18, align 4
  %i.ib = and i8 %.val123, 1
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body90

bb.be:                                            ; preds = %bb.bc
  %i.ie = load i32, ptr %spec.select, align 8, !tbaa !698
  store i32 %i.ie, ptr %17, align 8, !tbaa !698
  store i8 %i.ht, ptr %i.hr, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i93

bb.bf:                                            ; preds = %bb.bc
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %spec.select)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i93 unwind label %bb.bu

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i93: ; preds = %bb.bf, %bb.be
  %19 = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %.val125 = load i8, ptr %20, align 4
  %i.if = and i8 %.val125, 1
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i93
  %i.ih = load i32, ptr %19, align 8, !tbaa !698
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !698
  %i.ii = load i8, ptr %i.hw, align 4
  %i.ij = and i8 %i.ii, -2
  store i8 %i.ij, ptr %i.hw, align 4
  br label %_ZN8rationalC2ERKS_.exit96

bb.bh:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i93
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZN8rationalC2ERKS_.exit96 unwind label %bb.bu

_ZN8rationalC2ERKS_.exit96:                       ; preds = %bb.bg, %bb.bh
  %i.ik = invoke noundef ptr @_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rationalS6_(ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %i.hj, i32 noundef %3, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bi unwind label %bb.bv     ; 3 uses

bb.bi:                                            ; preds = %_ZN8rationalC2ERKS_.exit96
  invoke void @_ZN3smt10theory_lra3imp15mk_bound_axiomsERN6lp_api5boundIN3sat7literalEEE(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.ik)
          to label %bb.bj unwind label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  %i.il = load ptr, ptr %1, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !705, !nonnull !564, !align !565 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !702
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ai
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !693
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 9552 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 9568
  %i.iu = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.it, i64 noundef 24)
          to label %.noexc98 unwind label %bb.bv  ; 5 uses

.noexc98:                                         ; preds = %bb.bj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18vector_value_trailIjLb0EE, i64 16), ptr %i.iu, align 8, !tbaa !567
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.io, ptr %i.iv, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store i32 %3, ptr %.sroa.6.8..sroa_idx.i, align 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  store i32 %i.ir, ptr %.sroa.7.8..sroa_idx.i, align 4
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !745 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.noexc5.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc98
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !693 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !693
  %i.jc = icmp eq i32 %i.iz, %i.jb
  br i1 %i.jc, label %.noexc5.i, label %bb.bl

.noexc5.i:                                        ; preds = %bb.bk, %.noexc98
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.is)
          to label %.noexc99 unwind label %bb.bv

.noexc99:                                         ; preds = %.noexc5.i
  %.pre.i.i.i.i = load ptr, ptr %i.is, align 8, !tbaa !745 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !693
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc99, %bb.bk
  %i.jd = phi i32 [ %.pre2.i.i.i.i, %.noexc99 ], [ %i.iz, %bb.bk ] ; 2 uses
  %i.je = phi ptr [ %.pre.i.i.i.i, %.noexc99 ], [ %i.iw, %bb.bk ] ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -4
  %i.jg = zext i32 %i.jd to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jg
  store ptr %i.iu, ptr %i.jh, align 8, !tbaa !747
  %i.ji = add i32 %i.jd, 1
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !693
  %i.jj = load ptr, ptr %i.io, align 8, !tbaa !702
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ai ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !693
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !693
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !759
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.ai ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !622 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !693 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !693
  %i.jw = icmp eq i32 %i.jt, %i.jv
  br i1 %i.jw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  invoke void @_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
          to label %.noexc100 unwind label %bb.bv

.noexc100:                                        ; preds = %bb.bn
  %.pre.i = load ptr, ptr %i.jp, align 8, !tbaa !622 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !693
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc100, %bb.bm
  %i.jx = phi i32 [ %.pre2.i, %.noexc100 ], [ %i.jt, %bb.bm ] ; 2 uses
  %i.jy = phi ptr [ %.pre.i, %.noexc100 ], [ %i.jq, %bb.bm ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.ka = zext i32 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ka
  store ptr %i.ik, ptr %i.kb, align 8, !tbaa !760
  %i.kc = add i32 %i.jx, 1
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !693
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !702 ; 4 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 -4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !693 ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 -8
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !693
  %i.kk = icmp eq i32 %i.kh, %i.kj
  br i1 %i.kk, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %.noexc104 unwind label %bb.bw

.noexc104:                                        ; preds = %bb.bq
  %.pre.i101 = load ptr, ptr %i.kd, align 8, !tbaa !702 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !693
  br label %bb.br

bb.br:                                            ; preds = %.noexc104, %bb.bp
  %i.kl = phi i32 [ %.pre2.i103, %.noexc104 ], [ %i.kh, %bb.bp ] ; 2 uses
  %i.km = phi ptr [ %.pre.i101, %.noexc104 ], [ %i.ke, %bb.bp ] ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -4
  %i.ko = zext i32 %i.kl to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.ko
  store i32 %3, ptr %i.kp, align 4, !tbaa !693
  %i.kq = add i32 %i.kl, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !693
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %i.hj, ptr %5, align 8, !tbaa !728
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ik, ptr %i.kr, align 8, !tbaa !729
  invoke void @_ZN14core_hashtableI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEEN9table2mapIS7_6u_hash4u_eqE15entry_hash_procENSB_13entry_eq_procEE6insertEO9_key_dataIjS6_E(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ks = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc.i106 unwind label %bb.bt

.noexc.i106:                                      ; preds = %bb.bs
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.hv)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc.i106, %bb.bs
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #27
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bh, %bb.bf
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bv:                                            ; preds = %bb.br, %bb.bn, %.noexc5.i, %bb.bj, %bb.bi, %_ZN8rationalC2ERKS_.exit96
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bq
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn43 = phi { ptr, i32 } [ %i.kw, %bb.bv ], [ %i.kx, %bb.bw ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.bx ], [ %i.kv, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body90

bb.bz:                                            ; preds = %_ZN8rationalD2Ev.exit, %bb.au
end_hunk_1
begin_hunk_2_@_ZN12inf_rationalC2ERK8rationalS2_:bb.a
  store ptr null, ptr %i.ag, align 8, !tbaa !697
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.am = load i32, ptr %2, align 8, !tbaa !698
  store i32 %i.am, ptr %i.x, align 8, !tbaa !698
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4 unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4:  ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4
  %i.as = load i32, ptr %i.an, align 8, !tbaa !698
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !698
  %i.at = load i8, ptr %i.ad, align 4
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit6

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_ZN8rationalC2ERKS_.exit6 unwind label %bb.j

_ZN8rationalC2ERKS_.exit6:                        ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12inf_rationalC2ERK8rational(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !698
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !697
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !698
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !697
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !698
  store i32 %i.o, ptr %0, align 8, !tbaa !698
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !698
  store i32 %i.u, ptr %i.e, align 8, !tbaa !698
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !698
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ab, align 8, !tbaa !697
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !698
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.ag, align 8, !tbaa !697
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 1, ptr %i.ac, align 8, !tbaa !698
  %i.ai = load i8, ptr %i.ad, align 4
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ad, align 4
  ret void

bb.g:                                             ; preds = %.noexc, %_ZN8rationalC2ERKS_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.x) #26
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12inf_rationalC2ERK8rationalb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !698
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !697
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !698
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !697
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !698
  store i32 %i.o, ptr %0, align 8, !tbaa !698
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !698
  store i32 %i.u, ptr %i.e, align 8, !tbaa !698
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %spec.select = select i1 %2, ptr @_ZN8rational5m_oneE, ptr @_ZN8rational11m_minus_oneE ; 5 uses
  store i32 0, ptr %i.x, align 8, !tbaa !698
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ab, align 8, !tbaa !697
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !698
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.ag, align 8, !tbaa !697
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %.val7 = load i8, ptr %3, align 4
  %i.ai = and i8 %.val7, 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ak = load i32, ptr %spec.select, align 8, !tbaa !698
  store i32 %i.ak, ptr %i.x, align 8, !tbaa !698
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %spec.select)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4 unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4:  ; preds = %bb.g, %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %.val9 = load i8, ptr %5, align 4
  %i.al = and i8 %.val9, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4
  %i.an = load i32, ptr %4, align 8, !tbaa !698
  store i32 %i.an, ptr %i.ac, align 8, !tbaa !698
  %i.ao = load i8, ptr %i.ad, align 4
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit6

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i4
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8rationalC2ERKS_.exit6 unwind label %bb.j

_ZN8rationalC2ERKS_.exit6:                        ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3smt10theory_lra3imp12fixed_var_ehEijPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN3smt10theory_lra3imp19propagate_offset_eqEjPN18dependency_managerIN25scoped_dependency_managerIjE6configEE10dependencyERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.a, label %_ZNK8rational6is_oneEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !703
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !748  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.i = tail call noundef ptr @_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE9find_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit, label %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit.thread

_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit.thread: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1050
  br label %bb.f

_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit: ; preds = %bb.b
  %i.l = load i32, ptr %4, align 8, !tbaa !698    ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !619
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !757
  %i.q = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !738  ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 8, !tbaa !740
  %i.v = icmp eq i32 %i.u, 5
  br i1 %i.v, label %_ZNK17arith_recognizers6is_intEPK4expr.exit, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit:      ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !758
  %i.y = icmp eq i32 %i.x, 1                      ; 2 uses
  %spec.select20 = select i1 %i.y, i64 132, i64 140
  br label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit.thread: ; preds = %_ZNK17arith_recognizers6is_intEPK4expr.exit, %bb.c, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.z = phi i1 [ false, %bb.c ], [ %i.y, %_ZNK17arith_recognizers6is_intEPK4expr.exit ], [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ 140, %bb.c ], [ %spec.select20, %_ZNK17arith_recognizers6is_intEPK4expr.exit ], [ 140, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = tail call noundef i32 @_ZN3smt10theory_lra3imp9add_constEiRjb(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, i1 noundef zeroext %i.z)
  %i.ad = tail call noundef i32 @_ZNK2lp10lar_solver17local_to_externalEj(ptr noundef nonnull align 8 dereferenceable(152) %i.o, i32 noundef %i.ac)
  br label %bb.f

bb.d:                                             ; preds = %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = icmp eq i32 %i.l, 1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %_ZNK8rational6is_oneEv.exit, label %_ZNK8rational6is_oneEv.exit.thread

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = load i32, ptr %i.ak, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.e, label %_ZNK8rational6is_oneEv.exit.thread

bb.e:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !619
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !757
  %i.av = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !738 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15: ; preds = %bb.e
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !740
  %i.ba = icmp eq i32 %i.az, 5
  br i1 %i.ba, label %_ZNK17arith_recognizers6is_intEPK4expr.exit16, label %_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit16:    ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !758
  %i.bd = icmp eq i32 %i.bc, 1                    ; 2 uses
  %spec.select22 = select i1 %i.bd, i64 128, i64 136
  br label %_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread: ; preds = %_ZNK17arith_recognizers6is_intEPK4expr.exit16, %bb.e, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15
  %i.be = phi i1 [ false, %bb.e ], [ %i.bd, %_ZNK17arith_recognizers6is_intEPK4expr.exit16 ], [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15 ]
  %i.bf = phi i64 [ 136, %bb.e ], [ %spec.select22, %_ZNK17arith_recognizers6is_intEPK4expr.exit16 ], [ 136, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i15 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = tail call noundef i32 @_ZN3smt10theory_lra3imp9add_constEiRjb(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i1 noundef zeroext %i.be)
  %i.bi = tail call noundef i32 @_ZNK2lp10lar_solver17local_to_externalEj(ptr noundef nonnull align 8 dereferenceable(152) %i.at, i32 noundef %i.bh)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit.thread, %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread, %_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread
  %.0 = phi i32 [ %i.k, %_ZNK9table2mapI17default_map_entryI8rationaliENS1_9hash_procENS1_7eq_procEE4findERKS1_Ri.exit.thread ], [ %i.ad, %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread ], [ %i.bi, %_ZNK17arith_recognizers6is_intEPK4expr.exit16.thread ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !703
  %i.bm = zext i32 %.0 to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !748 ; 2 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !757
  %i.bq = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bp)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !757
  %i.bs = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.br)
  %.not = icmp eq ptr %i.bq, %i.bs
  br i1 %.not, label %bb.g, label %_ZNK8rational6is_oneEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !798
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !798
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %_ZNK8rational6is_oneEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !796 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  store i32 0, ptr %i.ca, align 4, !tbaa !693
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i:   ; preds = %bb.i, %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !944 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i1.i, label %_ZN6vectorISt4pairIPN3smt5enodeES3_ELb0EjE5resetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 0, ptr %i.cd, align 4, !tbaa !693
  br label %_ZN6vectorISt4pairIPN3smt5enodeES3_ELb0EjE5resetEv.exit.i

_ZN6vectorISt4pairIPN3smt5enodeES3_ELb0EjE5resetEv.exit.i: ; preds = %bb.j, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !945 ; 4 uses
  %.not.i2.i = icmp eq ptr %i.cf, null
  br i1 %.not.i2.i, label %_ZN3smt10theory_lra3imp14reset_evidenceEv.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %_ZN6vectorISt4pairIPN3smt5enodeES3_ELb0EjE5resetEv.exit.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !693 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %i.ch, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %i.cf, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #26
  %i.ci = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.cj = add i32 %.07.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
end_hunk_2
