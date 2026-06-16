inline.NumInlined: 1634
inline.NumDeleted: 756
begin_hunk_0_@_ZN6Assimp12BaseImporter12HasExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3setIS6_St4lessIS6_ESaIS6_EE:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.019.030 = phi ptr [ %i.b, %.lr.ph ], [ %i.ay, %bb.h ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.019.030, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.h = load ptr, ptr %i.g, align 8, !noalias !16
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.030, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !16 ; 3 uses
  store ptr %i.d, ptr %3, align 8, !alias.scope !19
  store i64 0, ptr %i.e, align 8, !alias.scope !19
  store i8 0, ptr %i.d, align 8, !alias.scope !19
  %i.k = add i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !19
  %i.m = icmp eq i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !19
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #30
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = load ptr, ptr %3, align 8, !alias.scope !19 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.d, align 8, !alias.scope !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #27
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.w = load i64, ptr %i.e, align 8              ; 3 uses
  %i.x = load i64, ptr %i.f, align 8              ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.y, label %bb.g, label %bb.e

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %lpad.phi

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ae = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x
  %i.ag = sub i64 0, %i.w
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi ptr [ %.pre, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ah, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.aj = load i8, ptr %.0.i, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = call i32 @tolower(i32 noundef %i.ak) #31 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.an = load i8, ptr %.06.i, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = call i32 @tolower(i32 noundef %i.ao) #31
  %i.aq = and i32 %i.al, 255
  %i.ar = icmp ne i32 %i.aq, 0
  %.unshifted = xor i32 %i.al, %i.ap
  %.mask = and i32 %.unshifted, 255
  %i.as = icmp eq i32 %.mask, 0                   ; 2 uses
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.f, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !22

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.f
  %. = zext i1 %i.as to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %.011 = phi i32 [ 3, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit ], [ %., %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit ]
  %i.au = icmp eq ptr %.pre, %i.d
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14: ; preds = %bb.g
  %i.av = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.g
  %i.aw = load i64, ptr %i.d, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  switch i32 %.011, label %.critedge [
    i32 0, label %bb.h
    i32 3, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.019.030) #31 ; 2 uses
  %.not32 = icmp eq ptr %i.ay, %i.c
  br i1 %.not32, label %.critedge, label %bb.b

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.h, %bb.a
  %.lcssa27 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  %i.az = load ptr, ptr %2, align 8               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.critedge
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.lcssa27
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116StripVersionHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 35, i64 noundef -1) #26 ; 4 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 46, i64 noundef -1) #26
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.g = add nuw i64 %i.d, 1                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !23 ; 3 uses
  %3 = icmp ugt i64 %i.g, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i64 noundef %i.g, i64 noundef %i.i) #30, !noalias !23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.j, ptr %2, align 8, !alias.scope !23
  %i.k = load ptr, ptr %1, align 8, !noalias !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g ; 2 uses
  %i.m = sub nuw i64 %i.i, %i.g                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !23
  store i64 %i.m, ptr %i.c, align 8, !noalias !23
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %2, align 8, !alias.scope !23
  %i.p = load i64, ptr %i.c, align 8, !noalias !23
  store i64 %i.p, ptr %i.j, align 8, !alias.scope !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = phi ptr [ %i.o, %.noexc10.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.c, align 8, !noalias !23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !23
  %i.u = load ptr, ptr %2, align 8, !alias.scope !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !23
  %.val = load ptr, ptr %2, align 8               ; 6 uses
  %.val16 = load i64, ptr %i.t, align 8           ; 5 uses
  %i.w = icmp eq i64 %.val16, 0
  br i1 %i.w, label %bb.q, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.val16 ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ashr i64 %.val16, 2                      ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ab = and i64 %.val16, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.ab
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i
  %.051.i.i.i.i.i = phi i64 [ %i.as, %bb.k ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.ac = load i8, ptr %.sroa.031.050.i.i.i.i.i, align 1
  %i.ad = sext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -58
  %isdigit.i.i.i.i.i.i.i = icmp ult i32 %i.ae, -10
  br i1 %isdigit.i.i.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -58
  %isdigit.i.i16.i.i.i.i.i = icmp ult i32 %i.ai, -10
  br i1 %isdigit.i.i16.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -58
  %isdigit.i.i17.i.i.i.i.i = icmp ult i32 %i.am, -10
  br i1 %isdigit.i.i17.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit41", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 3
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -58
  %isdigit.i.i18.i.i.i.i.i = icmp ult i32 %i.aq, -10
  br i1 %isdigit.i.i18.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit43", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 4
  %i.as = add nsw i64 %.051.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.051.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !26

._crit_edge.i.i.i.i.i:                            ; preds = %bb.k, %bb.g
  %.sroa.031.0.lcssa.i.i.i.i.i = phi ptr [ %.val, %bb.g ], [ %scevgep.i.i.i.i.i, %bb.k ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.031.0.lcssa.i.i.i.i.i to i64
  %i.au = sub i64 %i.y, %.pre-phi.i.i.i.i.i
  switch i64 %i.au, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i" [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.av = load i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, align 1
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -58
  %isdigit.i.i19.i.i.i.i.i = icmp ult i32 %i.ax, -10
  br i1 %isdigit.i.i19.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.sroa.031.1.i.i.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.az = load i8, ptr %.sroa.031.1.i.i.i.i.i, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -58
  %isdigit.i.i20.i.i.i.i.i = icmp ult i32 %i.bb, -10
  br i1 %isdigit.i.i20.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i.i, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %.sroa.031.2.i.i.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bd = load i8, ptr %.sroa.031.2.i.i.i.i.i, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -58
  %isdigit.i.i21.i.i.i.i.i = icmp ult i32 %i.bf, -10
  %spec.select.i.i.i.i.i = select i1 %isdigit.i.i21.i.i.i.i.i, ptr %.sroa.031.2.i.i.i.i.i, ptr %i.x
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit": ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit41": ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit43": ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit41", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit43", %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.031.1.i.i.i.i.i, %bb.n ], [ %spec.select.i.i.i.i.i, %bb.p ], [ %i.x, %._crit_edge.i.i.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %bb.l ], [ %i.bi, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit43" ], [ %i.bh, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit41" ], [ %i.bg, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i.loopexit.split.loop.exit" ], [ %.sroa.031.050.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bj = icmp eq ptr %i.x, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i"
  %.ph = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.bj, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN12_GLOBAL__N_112IsGcsVersionERKS9_E3$_0EbT_SF_T0_.exit.i" ]
  %i.bk = icmp eq ptr %.val, %i.j
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.q
  %i.bl = icmp ult i64 %.val16, 16
  call void @llvm.assume(i1 %i.bl)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bm = load i64, ptr %i.j, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.val, i64 noundef %i.bn) #27
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.ph, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %.critedge
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.bo = load i64, ptr %i.h, align 8, !noalias !27
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bp, ptr %0, align 8, !alias.scope !27
  %i.bq = load ptr, ptr %1, align 8, !noalias !27 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.bo) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !27
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !noalias !27
  %i.br = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.br, label %.noexc10.i.i19, label %._crit_edge.i.i.i18

.noexc10.i.i19:                                   ; preds = %bb.r
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !alias.scope !27
  %i.bt = load i64, ptr %i.b, align 8, !noalias !27
  store i64 %i.bt, ptr %i.bp, align 8, !alias.scope !27
  br label %._crit_edge.i.i.i18

._crit_edge.i.i.i18:                              ; preds = %.noexc10.i.i19, %bb.r
  %i.bu = phi ptr [ %i.bs, %.noexc10.i.i19 ], [ %i.bp, %bb.r ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i18
  %i.bv = load i8, ptr %i.bq, align 1
  store i8 %i.bv, ptr %i.bu, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20

bb.t:                                             ; preds = %._crit_edge.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bq, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20: ; preds = %._crit_edge.i.i.i18, %bb.s, %bb.t
  %i.bw = load i64, ptr %i.b, align 8, !noalias !27 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !alias.scope !27
  %i.by = load ptr, ptr %0, align 8, !alias.scope !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !27
  br label %bb.w

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ca, ptr %0, align 8
  %i.cb = load ptr, ptr %1, align 8               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.cd, ptr %i.a, align 8
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge.thread
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %0, align 8
  %i.cg = load i64, ptr %i.a, align 8
  store i64 %i.cg, ptr %i.ca, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge.thread
  %i.ch = phi ptr [ %i.cf, %.noexc.i ], [ %i.ca, %.critedge.thread ] ; 2 uses
  switch i64 %i.cd, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ci = load i8, ptr %i.cb, align 1
  store i8 %i.ci, ptr %i.ch, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.u, %bb.v
  %i.cj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12BaseImporter12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call fastcc void @_ZN12_GLOBAL__N_116StripVersionHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 46, i64 noundef -1) #26 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1                      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !30 ; 3 uses
  %4 = icmp ugt i64 %i.f, %i.h
  br i1 %4, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i64 noundef %i.f, i64 noundef %i.h) #30
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !30
  %i.j = load ptr, ptr %2, align 8, !noalias !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %i.l = sub nuw i64 %i.h, %i.f                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !30
  store i64 %i.l, ptr %i.a, align 8, !noalias !30
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.o    ; 2 uses

.noexc8:                                          ; preds = %.noexc10.i.i
  store ptr %i.n, ptr %0, align 8, !alias.scope !30
  %i.o = load i64, ptr %i.a, align 8, !noalias !30
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = phi ptr [ %i.n, %.noexc8 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !noalias !30 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !30
  %i.t = load ptr, ptr %0, align 8, !alias.scope !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8                ; 6 uses
  %i.w = icmp eq ptr %i.v, %i.i
  %i.x = load ptr, ptr %3, align 8                ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.z, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.z, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ab, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.x, align 1
  store i8 %i.ad, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ae = load i64, ptr %i.aa, align 8            ; 2 uses
  store i64 %i.ae, ptr %i.s, align 8
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 0, ptr %i.ag, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.x, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load <2 x i64>, ptr %i.ah, align 8
  store <2 x i64> %i.ai, ptr %i.s, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.i, align 8
  store ptr %i.x, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.al, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %3, align 8
  store i64 %i.aj, ptr %i.y, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.v, %bb.m ], [ %i.y, %bb.n ], [ %i.x, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.am, align 1
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.q

bb.o:                                             ; preds = %.noexc10.i.i, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.p:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.av = load ptr, ptr %0, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.p
  %i.ax = load i64, ptr %i.i, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.az = load ptr, ptr %2, align 8               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.q
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.o
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.au, %bb.p ]
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.bh = load i64, ptr %i.bf, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}
end_hunk_0
