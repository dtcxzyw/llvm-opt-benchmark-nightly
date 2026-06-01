inline.NumInlined: 1388
inline.NumDeleted: 771
begin_hunk_0_@_ZN2v88internal6torque5Lexer10MatchTokenEPPKcS4_:bb.a
  %bcmp.i = call i32 @bcmp(ptr %i.at, ptr %.pre82, i64 %i.ap)
  %i.au = icmp eq i32 %bcmp.i, 0
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.m, %bb.l
  %i.av = phi ptr [ %.pre82, %bb.l ], [ %.pre82, %bb.m ], [ %.pre81, %..critedge_crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.l ], [ %i.au, %bb.m ], [ false, %..critedge_crit_edge ]
  %i.aw = icmp eq ptr %i.av, %i.q
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge
  %i.ax = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ax)
  br label %.critedge47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ay = load i64, ptr %i.q, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %.critedge47

.critedge47:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.ph, label %.loopexit, label %.critedge47..critedge47.thread_crit_edge

.critedge47..critedge47.thread_crit_edge:         ; preds = %.critedge47
  %.pre83 = load ptr, ptr %i.l, align 8, !noalias !90
  br label %.critedge47.thread

.critedge47.thread:                               ; preds = %.critedge47..critedge47.thread_crit_edge, %bb.e
  %i.ba = phi ptr [ %.pre83, %.critedge47..critedge47.thread_crit_edge ], [ %i.ab, %bb.e ] ; 2 uses
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.051.071) #28 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %.loopexit100, label %bb.e, !llvm.loop !95

.loopexit:                                        ; preds = %.critedge47
  %i.bd = load i64, ptr %i.ae, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  store ptr %i.be, ptr %1, align 8
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.051.071) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  br label %bb.n

.loopexit100:                                     ; preds = %.critedge47.thread, %._crit_edge
  %.not97 = icmp eq ptr %i.g, %i.b
  %..03898 = select i1 %.not97, ptr null, ptr %.038.lcssa
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit100
  %i.bh = phi ptr [ %..03898, %.loopexit100 ], [ %i.bg, %.loopexit ]
  ret ptr %i.bh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.k = load i64, ptr %i.e, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

declare void @_ZN2v88internal6torque18StringLiteralQuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !28

.noexc4:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.e, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  store i64 %i.e, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque11LexerResultD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<std::pair<unsigned long, v8::internal::torque::Symbol *>, std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>, std::allocator<std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>>, std::__detail::_Select1st, std::equal_to<std::pair<unsigned long, v8::internal::torque::Symbol *>>, v8::base::hash<std::pair<unsigned long, v8::internal::torque::Symbol *>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Hashtable<std::pair<unsigned long, v8::internal::torque::Symbol *>, std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>, std::allocator<std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>>, std::__detail::_Select1st, std::equal_to<std::pair<unsigned long, v8::internal::torque::Symbol *>>, v8::base::hash<std::pair<unsigned long, v8::internal::torque::Symbol *>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.v8::base::ContextualVariable<v8::internal::torque::CurrentSourcePosition, v8::internal::torque::SourcePosition>::Scope", align 8 ; 7 uses
  %7 = alloca %"class.std::unordered_map", align 8 ; 19 uses
  %8 = alloca %"class.v8::internal::torque::Symbol", align 8 ; 15 uses
  %9 = alloca %"class.v8::internal::torque::Rule", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::torque::Item", align 8 ; 9 uses
  %11 = alloca %"class.v8::internal::torque::Item", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.4", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque17CurrentSourceFileENS3_8SourceIdEE4top_E)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 4
  store i32 %i.c, ptr %6, align 8
  %.sroa.5375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E) ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5375.0..sroa_idx, i8 -1, i64 24, i1 false)
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.d, align 8
  store ptr %6, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store ptr %i.g, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %0, ptr %i.l, align 8
  store ptr null, ptr %9, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr @_ZN2v88internal6torque13DefaultActionEPNS1_19ParseResultIteratorE, ptr %i.q, align 8
  invoke void @_ZN2v88internal6torque6Symbol7AddRuleERKNS1_4RuleE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #25
  br label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.w = load ptr, ptr %8, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.e unwind label %bb.j       ; 4 uses

bb.e:                                             ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.x, ptr %i.y, align 8
  %.sroa.6341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6341.0..sroa_idx342, i8 0, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %._crit_edge
  %storemerge871 = phi i64 [ 0, %bb.e ], [ %.pre, %._crit_edge ] ; 18 uses
  %.sroa.0389.0870 = phi ptr [ %i.y, %bb.e ], [ %.sroa.0379.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.17.0869 = phi ptr [ %i.z, %bb.e ], [ %.sroa.10383.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.42.0868 = phi ptr [ %i.z, %bb.e ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0379.0867 = phi ptr [ null, %bb.e ], [ %.sroa.0389.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.10383.0866 = phi ptr [ null, %bb.e ], [ %.sroa.17.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.16.0865 = phi ptr [ null, %bb.e ], [ %.sroa.42.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0361.0864 = phi ptr [ null, %bb.e ], [ %.sroa.0361.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.8364.0863 = phi ptr [ null, %bb.e ], [ %.sroa.8364.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.13.0862 = phi ptr [ null, %bb.e ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0389.0870, %.sroa.17.0869
  %.pre = add i64 %storemerge871, 1               ; 4 uses
  br i1 %i.ao, label %._crit_edge, label %.lr.ph852

.lr.ph852:                                        ; preds = %.preheader
  %i.ap = xor i64 %storemerge871, -1
  %i.aq = shl i64 %storemerge871, 21
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 24
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, 265                      ; 2 uses
  %i.av = lshr i64 %i.au, 14
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, 21                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 28
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 8398540807049701781      ; 2 uses
  %i.bb = lshr i64 %i.ba, 47
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 3866779316627607737
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.be = load ptr, ptr %8, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  store ptr %i.bf, ptr %11, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.ag, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = invoke ptr @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit unwind label %bb.bs ; 2 uses

bb.g:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96

bb.h:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i93, label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.p, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #25
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96

_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96: ; preds = %bb.h, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.g ], [ %i.bm, %bb.i ], [ %i.bm, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph852, %.loopexit
  %.sroa.0389.1851 = phi ptr [ %.sroa.0389.0870, %.lr.ph852 ], [ %.sroa.0389.6, %.loopexit ] ; 16 uses
  %.sroa.17.1850 = phi ptr [ %.sroa.17.0869, %.lr.ph852 ], [ %.sroa.17.6, %.loopexit ]
  %.sroa.42.1849 = phi ptr [ %.sroa.42.0868, %.lr.ph852 ], [ %.sroa.42.6, %.loopexit ] ; 16 uses
  %.sroa.0379.1848 = phi ptr [ %.sroa.0379.0867, %.lr.ph852 ], [ %.sroa.0379.4, %.loopexit ] ; 21 uses
  %.sroa.10383.1847 = phi ptr [ %.sroa.10383.0866, %.lr.ph852 ], [ %.sroa.10383.3, %.loopexit ] ; 18 uses
  %.sroa.16.1846 = phi ptr [ %.sroa.16.0865, %.lr.ph852 ], [ %.sroa.16.4, %.loopexit ] ; 15 uses
  %.sroa.0361.1845 = phi ptr [ %.sroa.0361.0864, %.lr.ph852 ], [ %.sroa.0361.2, %.loopexit ] ; 10 uses
  %.sroa.8364.1844 = phi ptr [ %.sroa.8364.0863, %.lr.ph852 ], [ %.sroa.8364.2, %.loopexit ] ; 7 uses
  %.sroa.13.1843 = phi ptr [ %.sroa.13.0862, %.lr.ph852 ], [ %.sroa.13.2, %.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.17.1850, i64 -48 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %2, ptr %5, align 8
  %i.bu = invoke { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SK_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bu, 0 ; 5 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bu, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8 ; 15 uses
  %i.bw = load ptr, ptr %i.ah, align 8
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %storemerge871
  %i.by = load ptr, ptr %i.e, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.by, ptr noundef nonnull align 8 dereferenceable(28) %i.bz, i64 28, i1 false)
  %i.ca = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ca, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK2v88internal6torque4Item14CheckAmbiguityERKS2_RKNS1_11LexerResultE(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit unwind label %bb.o, !llvm.loop !96

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.l
  %.not.i.i98 = icmp eq ptr %.sroa.8364.1844, %.sroa.13.1843
  br i1 %.not.i.i98, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  store ptr %i.bv, ptr %.sroa.8364.1844, align 8
  br label %bb.u

bb.q:                                             ; preds = %.critedge
  %i.cd = ptrtoint ptr %.sroa.8364.1844 to i64
  %i.ce = ptrtoint ptr %.sroa.0361.1845 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.r, label %_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc101 unwind label %.loopexit.split-lp432

.noexc101:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i99 = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i99, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i.i100 = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i100)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #27
          to label %.noexc102 unwind label %.loopexit431 ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store ptr %i.bv, ptr %i.co, align 8
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.s, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc102
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %.sroa.0361.1845, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.s, %.noexc102
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0361.1845, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.1845, i64 noundef %i.cf) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.sroa.13.6 = phi ptr [ %i.cq, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.1843, %bb.p ] ; 18 uses
  %.pn416 = phi ptr [ %i.co, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.8364.1844, %bb.p ]
  %.sroa.0361.6 = phi ptr [ %i.cn, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0361.1845, %bb.p ] ; 18 uses
  %.sroa.8364.3 = getelementptr inbounds nuw i8, ptr %.pn416, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.bv, align 8            ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp eq i64 %i.cs, %i.db
  br i1 %i.dc, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.de = load i64, ptr %i.dd, align 8            ; 4 uses
  %i.df = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.dg = xor i64 %i.de, -1
  %i.dh = shl i64 %i.de, 21
  %i.di = add i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = lshr i64 %i.di, 24
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = mul i64 %i.dk, 265                      ; 2 uses
  %i.dm = lshr i64 %i.dl, 14
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = mul i64 %i.dn, 21                       ; 2 uses
  %i.dp = lshr i64 %i.do, 28
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = mul i64 %i.dq, 8398540807049701781      ; 2 uses
  %i.ds = lshr i64 %i.dr, 47
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = mul i64 %i.dt, 3866779316627607737
  %i.dv = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dw = xor i64 %i.dv, -1
  %i.dx = shl i64 %i.dv, 21
  %i.dy = add i64 %i.dx, %i.dw                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 24
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = mul i64 %i.ea, 265                      ; 2 uses
  %i.ec = lshr i64 %i.eb, 14
  %i.ed = xor i64 %i.ec, %i.eb
  %i.ee = mul i64 %i.ed, 21                       ; 2 uses
  %i.ef = lshr i64 %i.ee, 28
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.eg, 8398540807049701781      ; 2 uses
  %i.ei = lshr i64 %i.eh, 47
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, -4132994306676758123
  %i.el = xor i64 %i.ek, %i.du
  %i.em = mul i64 %i.el, -4132994306676758123     ; 3 uses
  %i.en = load i64, ptr %i.h, align 8             ; 2 uses
  %i.eo = urem i64 %i.em, %i.en                   ; 3 uses
  %i.ep = load ptr, ptr %7, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not.i.i.i231 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i231, label %.loopexit28.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.et = phi i64 [ %.pre.i.i.i, %bb.w ], [ %i.ff, %bb.y ]
  %i.eu = phi ptr [ %i.es, %bb.w ], [ %i.fd, %bb.y ] ; 4 uses
  %i.ev = icmp eq i64 %i.em, %i.et
  br i1 %i.ev, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i: ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = icmp eq i64 %i.de, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = icmp eq ptr %i.df, %i.fa
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %i.fc, label %.loopexit418, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i, %bb.x
  %i.fd = load ptr, ptr %i.eu, align 8            ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not18.i.i.i, label %.loopexit28.i, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load i64, ptr %i.fe, align 8            ; 2 uses
  %i.fg = urem i64 %i.ff, %i.en
  %.not19.i.i.i = icmp eq i64 %i.fg, %i.eo
  br i1 %.not19.i.i.i, label %bb.x, label %.loopexit28.i, !llvm.loop !97

.loopexit28.i:                                    ; preds = %bb.y, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %7, ptr %4, align 8
  %i.fh = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc232 unwind label %bb.aa ; 10 uses

.noexc232:                                        ; preds = %.loopexit28.i
  store ptr null, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.de, ptr %i.fi, align 8
  %.sroa.6324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.df, ptr %.sroa.6324.0..sroa_idx, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  store ptr %i.fk, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store ptr %i.fk, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  store i64 0, ptr %i.fn, align 8
  store ptr %i.fh, ptr %i.an, align 8
  %i.fo = invoke ptr @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.eo, i64 noundef %i.em, ptr noundef nonnull %i.fh, i64 noundef 1)
          to label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.z

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc232
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit418

bb.z:                                             ; preds = %.noexc232
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

.loopexit418:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.fo, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.eu, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %.loopexit, label %.lr.ph839

.loopexit431:                                     ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit433 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp432:                            ; preds = %bb.r
  %lpad.loopexit.split-lp434 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %.loopexit28.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph839:                                        ; preds = %.loopexit418, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119
  %.sroa.0389.2838 = phi ptr [ %.sroa.0389.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0389.1851, %.loopexit418 ] ; 8 uses
  %.sroa.17.3837 = phi ptr [ %.sroa.17.8, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %i.bt, %.loopexit418 ] ; 13 uses
  %.sroa.42.2836 = phi ptr [ %.sroa.42.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.42.1849, %.loopexit418 ] ; 2 uses
  %.sroa.0319.0835 = phi ptr [ %i.gs, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %i.fr, %.loopexit418 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0319.0835, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8            ; 5 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !98 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !98
  %i.ga = add i64 %i.fz, 1                        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !98 ; 2 uses
  %.not.i.i104 = icmp eq ptr %.sroa.17.3837, %.sroa.42.2836
  br i1 %.not.i.i104, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph839
  store ptr %i.fx, ptr %.sroa.17.3837, align 8
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.3837, i64 8
  store i64 %i.ga, ptr %.sroa.6303.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.3837, i64 16
  store i64 %i.gc, ptr %.sroa.7306.0..sroa_idx, align 8
  %.sroa.8309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.3837, i64 24
  store i64 %storemerge871, ptr %.sroa.8309.0..sroa_idx, align 8
  %.sroa.9312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.3837, i64 32
  store ptr %i.fw, ptr %.sroa.9312.0..sroa_idx, align 8
  %.sroa.10315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.3837, i64 40
  store ptr %i.bv, ptr %.sroa.10315.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119

bb.ac:                                            ; preds = %.lr.ph839
  %i.gd = ptrtoint ptr %.sroa.17.3837 to i64
  %i.ge = ptrtoint ptr %.sroa.0389.2838 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775776
  br i1 %i.gg, label %bb.ad, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i105

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc117 unwind label %.loopexit.split-lp

.noexc117:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i105: ; preds = %bb.ac
  %i.gh = sdiv exact i64 %i.gf, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i106, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 192153584101141162)
  %i.gl = select i1 %i.gj, i64 192153584101141162, i64 %i.gk ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.gm = mul nuw nsw i64 %i.gl, 48
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #27
          to label %.noexc118 unwind label %.loopexit417 ; 5 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i105
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf ; 6 uses
  store ptr %i.fx, ptr %i.go, align 8
  %.sroa.6303.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.ga, ptr %.sroa.6303.0..sroa_idx304, align 8
  %.sroa.7306.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i64 %i.gc, ptr %.sroa.7306.0..sroa_idx307, align 8
  %.sroa.8309.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store i64 %storemerge871, ptr %.sroa.8309.0..sroa_idx310, align 8
  %.sroa.9312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store ptr %i.fw, ptr %.sroa.9312.0..sroa_idx313, align 8
  %.sroa.10315.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store ptr %i.bv, ptr %.sroa.10315.0..sroa_idx316, align 8
  %.not10.i.i.i.i.i.i108 = icmp eq ptr %.sroa.0389.2838, %.sroa.17.3837
  br i1 %.not10.i.i.i.i.i.i108, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i109:                            ; preds = %.noexc118, %.lr.ph.i.i.i.i.i.i109
  %.012.i.i.i.i.i.i110 = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i109 ], [ %i.gn, %.noexc118 ] ; 2 uses
  %.0911.i.i.i.i.i.i111 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i109 ], [ %.sroa.0389.2838, %.noexc118 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i110, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i111, i64 48, i1 false), !alias.scope !101
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111, i64 48 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i112 = icmp eq ptr %i.gp, %.sroa.17.3837
  br i1 %.not.i.i.i.i.i.i112, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i109, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i109, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114 = phi ptr [ %i.gn, %.noexc118 ], [ %i.gq, %.lr.ph.i.i.i.i.i.i109 ]
  %.not.i23.i.i.i115 = icmp eq ptr %.sroa.0389.2838, null
  br i1 %.not.i23.i.i.i115, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.2838, i64 noundef %i.gf) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116: ; preds = %bb.ae, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i113
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.gn, i64 %i.gl
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119: ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116, %bb.ab
  %.sroa.42.11 = phi ptr [ %i.gr, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116 ], [ %.sroa.42.2836, %bb.ab ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i114.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i114, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116 ], [ %.sroa.17.3837, %bb.ab ]
  %.sroa.0389.11 = phi ptr [ %i.gn, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i116 ], [ %.sroa.0389.2838, %bb.ab ] ; 2 uses
  %.sroa.17.8 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.pn, i64 48 ; 2 uses
  %i.gs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0319.0835) #28 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fs
  br i1 %i.gt, label %.loopexit, label %.lr.ph839

.loopexit417:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i105
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.u
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cs
  %i.gv = load ptr, ptr %i.gu, align 8            ; 8 uses
  %i.gw = load ptr, ptr %i.aa, align 8
  %i.gx = load ptr, ptr %1, align 8               ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 3
  %i.hc = icmp ult i64 %storemerge871, %i.hb
  br i1 %i.hc, label %bb.ag, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %storemerge871
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.he, %i.gv
  br i1 %i.hf, label %bb.ah, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.ah:                                            ; preds = %bb.ag
  %i.hg = add i64 %i.cs, 1                        ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !106 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.sroa.10383.1847, %.sroa.16.1846
  br i1 %.not.i.i120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ct, ptr %.sroa.10383.1847, align 8
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 8
  store i64 %i.hg, ptr %.sroa.6282.0..sroa_idx, align 8
  %.sroa.7285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 16
  store i64 %i.hi, ptr %.sroa.7285.0..sroa_idx, align 8
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 24
  store i64 %.pre, ptr %.sroa.8288.0..sroa_idx, align 8
  %.sroa.9291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 32
  store ptr %i.bv, ptr %.sroa.9291.0..sroa_idx, align 8
  %.sroa.10294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 40
  store ptr null, ptr %.sroa.10294.0..sroa_idx, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 48
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.aj:                                            ; preds = %bb.ah
  %i.hk = ptrtoint ptr %.sroa.10383.1847 to i64
  %i.hl = ptrtoint ptr %.sroa.0379.1848 to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775776
  br i1 %i.hn, label %bb.ak, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc133 unwind label %.loopexit.split-lp437

.noexc133:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121: ; preds = %bb.aj
  %i.ho = sdiv exact i64 %i.hm, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i122 = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i.i122, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 192153584101141162)
  %i.hs = select i1 %i.hq, i64 192153584101141162, i64 %i.hr ; 3 uses
  %.not.i.i.i.i123 = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i123)
  %i.ht = mul nuw nsw i64 %i.hs, 48
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #27
          to label %.noexc134 unwind label %.loopexit436 ; 5 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm ; 6 uses
  store ptr %i.ct, ptr %i.hv, align 8
  %.sroa.6282.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hg, ptr %.sroa.6282.0..sroa_idx283, align 8
  %.sroa.7285.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 %i.hi, ptr %.sroa.7285.0..sroa_idx286, align 8
  %.sroa.8288.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store i64 %.pre, ptr %.sroa.8288.0..sroa_idx289, align 8
  %.sroa.9291.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  store ptr %i.bv, ptr %.sroa.9291.0..sroa_idx292, align 8
  %.sroa.10294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store ptr null, ptr %.sroa.10294.0..sroa_idx295, align 8
  %.not10.i.i.i.i.i.i124 = icmp eq ptr %.sroa.0379.1848, %.sroa.10383.1847
  br i1 %.not10.i.i.i.i.i.i124, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125

.lr.ph.i.i.i.i.i.i125:                            ; preds = %.noexc134, %.lr.ph.i.i.i.i.i.i125
  %.012.i.i.i.i.i.i126 = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i125 ], [ %i.hu, %.noexc134 ] ; 2 uses
  %.0911.i.i.i.i.i.i127 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i125 ], [ %.sroa.0379.1848, %.noexc134 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i126, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i127, i64 48, i1 false), !alias.scope !109
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i127, i64 48 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i126, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.hw, %.sroa.10383.1847
  br i1 %.not.i.i.i.i.i.i128, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129: ; preds = %.lr.ph.i.i.i.i.i.i125, %.noexc134
  %.0.lcssa.i.i.i.i.i.i130 = phi ptr [ %i.hu, %.noexc134 ], [ %i.hx, %.lr.ph.i.i.i.i.i.i125 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i130, i64 48
  %.not.i23.i.i.i131 = icmp eq ptr %.sroa.0379.1848, null
  br i1 %.not.i23.i.i.i131, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.1848, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132: ; preds = %bb.al, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129
  %i.hz = getelementptr inbounds nuw [48 x i8], ptr %i.hu, i64 %i.hs
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

.loopexit436:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121
  %lpad.loopexit438 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp437:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp439 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132, %bb.ag, %bb.af
  %.sroa.16.2 = phi ptr [ %.sroa.16.1846, %bb.af ], [ %.sroa.16.1846, %bb.ag ], [ %i.hz, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.16.1846, %bb.ai ] ; 10 uses
  %.sroa.10383.2 = phi ptr [ %.sroa.10383.1847, %bb.af ], [ %.sroa.10383.1847, %bb.ag ], [ %i.hy, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %i.hj, %bb.ai ] ; 2 uses
  %.sroa.0379.2 = phi ptr [ %.sroa.0379.1848, %bb.af ], [ %.sroa.0379.1848, %bb.ag ], [ %i.hu, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.0379.1848, %bb.ai ] ; 10 uses
  %i.ia = load ptr, ptr %i.gv, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = icmp eq ptr %i.ia, %i.ic
  br i1 %i.id, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135
  %i.ie = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.if = xor i64 %i.ie, -1
  %i.ig = shl i64 %i.ie, 21
  %i.ih = add i64 %i.ig, %i.if                    ; 2 uses
  %i.ii = lshr i64 %i.ih, 24
  %i.ij = xor i64 %i.ii, %i.ih
  %i.ik = mul i64 %i.ij, 265                      ; 2 uses
  %i.il = lshr i64 %i.ik, 14
  %i.im = xor i64 %i.il, %i.ik
  %i.in = mul i64 %i.im, 21                       ; 2 uses
  %i.io = lshr i64 %i.in, 28
  %i.ip = xor i64 %i.io, %i.in
  %i.iq = mul i64 %i.ip, 8398540807049701781      ; 2 uses
  %i.ir = lshr i64 %i.iq, 47
  %i.is = xor i64 %i.ir, %i.iq
  %i.it = mul i64 %i.is, -4132994306676758123
  %i.iu = xor i64 %i.it, %i.bd
  %i.iv = mul i64 %i.iu, -4132994306676758123     ; 3 uses
  %i.iw = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ix = urem i64 %i.iv, %i.iw                   ; 3 uses
  %i.iy = load ptr, ptr %7, align 8
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not.i.i.i233 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i233, label %.loopexit28.i239, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %.phi.trans.insert.i.i.i234 = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %.pre.i.i.i235 = load i64, ptr %.phi.trans.insert.i.i.i234, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.jc = phi i64 [ %.pre.i.i.i235, %bb.an ], [ %i.jo, %bb.ap ]
  %i.jd = phi ptr [ %i.jb, %bb.an ], [ %i.jm, %bb.ap ] ; 4 uses
  %i.je = icmp eq i64 %i.iv, %i.jc
  br i1 %i.je, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243: ; preds = %bb.ao
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = icmp eq i64 %storemerge871, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = icmp eq ptr %i.gv, %i.jj
  %i.jl = select i1 %i.jh, i1 %i.jk, i1 false
  br i1 %i.jl, label %.loopexit430, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, %bb.ao
  %i.jm = load ptr, ptr %i.jd, align 8            ; 3 uses
  %.not18.i.i.i237 = icmp eq ptr %i.jm, null
  br i1 %.not18.i.i.i237, label %.loopexit28.i239, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.jo = load i64, ptr %i.jn, align 8            ; 2 uses
  %i.jp = urem i64 %i.jo, %i.iw
  %.not19.i.i.i238 = icmp eq i64 %i.jp, %i.ix
  br i1 %.not19.i.i.i238, label %bb.ao, label %.loopexit28.i239, !llvm.loop !97

.loopexit28.i239:                                 ; preds = %bb.ap, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %7, ptr %3, align 8
  %i.jq = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc244 unwind label %bb.au ; 10 uses

.noexc244:                                        ; preds = %.loopexit28.i239
  store ptr null, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i64 %storemerge871, ptr %i.jr, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.gv, ptr %.sroa.6279.0..sroa_idx, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 32 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false)
  store ptr %i.jt, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  store ptr %i.jt, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  store i64 0, ptr %i.jw, align 8
  store ptr %i.jq, ptr %i.ai, align 8
  %i.jx = invoke ptr @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.ix, i64 noundef %i.iv, ptr noundef nonnull %i.jq, i64 noundef 1)
          to label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240 unwind label %bb.aq

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240: ; preds = %.noexc244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit430

bb.aq:                                            ; preds = %.noexc244
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

.loopexit430:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240
  %.pn.i241 = phi ptr [ %i.jx, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240 ], [ %i.jd, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243 ] ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 32 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.jz, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit430, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.loopexit430 ] ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %i.kd = icmp ult ptr %i.bv, %i.kc               ; 2 uses
  %.in.v.i.i.i = select i1 %i.kd, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i138, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !113

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.kd, label %._crit_edge.thread.i.i.i, label %bb.as

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.loopexit430
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ka, %.loopexit430 ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 48
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = icmp eq ptr %.019.lcssa29.i.i.i, %i.kf
  br i1 %i.kg, label %select.unfold.i.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.kh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i
  %i.ki = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.kc, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ar ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.kj = icmp ult ptr %i.ki, %i.bv
  br i1 %i.kj, label %select.unfold.i.i, label %bb.aw

select.unfold.i.i:                                ; preds = %bb.as, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.as ] ; 3 uses
  %i.kk = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ka
  br i1 %i.kk, label %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %select.unfold.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = icmp ult ptr %i.bv, %i.km
  br label %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.at, %select.unfold.i.i
  %i.ko = phi i1 [ %i.kn, %bb.at ], [ true, %select.unfold.i.i ]
  %i.kp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc139 unwind label %bb.av ; 2 uses

.noexc139:                                        ; preds = %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  store ptr %i.bv, ptr %i.kq, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ko, ptr noundef nonnull %i.kp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ka) #24
  %i.kr = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 64 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = add i64 %i.ks, 1
  store i64 %i.kt, ptr %i.kr, align 8
  br label %bb.aw

bb.au:                                            ; preds = %.loopexit28.i239
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.as, %.noexc139, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135
  %i.kw = load ptr, ptr %i.ib, align 8
  %i.kx = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not872 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not872, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.ky = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157
  %i.kz = phi ptr [ %i.kx, %.lr.ph ], [ %i.na, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ]
  %.066832 = phi i64 [ 0, %.lr.ph ], [ %i.my, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0389.3831 = phi ptr [ %.sroa.0389.1851, %.lr.ph ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 17 uses
  %.sroa.17.4830 = phi ptr [ %i.bt, %.lr.ph ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 25 uses
  %.sroa.42.3829 = phi ptr [ %.sroa.42.1849, %.lr.ph ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.066832
  %i.lb = load ptr, ptr %i.la, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = load ptr, ptr %i.lc, align 8
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 3
  store ptr %i.lb, ptr %10, align 8
  store i64 %i.lj, ptr %i.aj, align 8
  store i64 %storemerge871, ptr %i.ak, align 8
  store i64 %storemerge871, ptr %i.al, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.lk = invoke ptr @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141 unwind label %bb.bd ; 2 uses

_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.ln = load ptr, ptr %i.bv, align 8, !noalias !114 ; 2 uses
  %i.lo = load i64, ptr %i.cr, align 8, !noalias !114
  %i.lp = add i64 %i.lo, 1                        ; 2 uses
  %i.lq = load i64, ptr %i.ky, align 8, !noalias !114 ; 2 uses
  %.not.i.i142 = icmp eq ptr %.sroa.17.4830, %.sroa.42.3829
  br i1 %.not.i.i142, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.ln, ptr %.sroa.17.4830, align 8
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 8
  store i64 %i.lp, ptr %.sroa.6261.0..sroa_idx, align 8
  %.sroa.7264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 16
  store i64 %i.lq, ptr %.sroa.7264.0..sroa_idx, align 8
  %.sroa.8267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 24
  store i64 %storemerge871, ptr %.sroa.8267.0..sroa_idx, align 8
  %.sroa.9270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 32
  store ptr %i.bv, ptr %.sroa.9270.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 40
  store ptr %i.lm, ptr %.sroa.10.0..sroa_idx, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 48
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

bb.ba:                                            ; preds = %bb.ay
  %i.ls = ptrtoint ptr %.sroa.17.4830 to i64
  %i.lt = ptrtoint ptr %.sroa.0389.3831 to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 4 uses
  %i.lv = icmp eq i64 %i.lu, 9223372036854775776
  br i1 %i.lv, label %bb.bb, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc155 unwind label %.loopexit.split-lp421

.noexc155:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143: ; preds = %bb.ba
  %i.lw = sdiv exact i64 %i.lu, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i144 = call i64 @llvm.umax.i64(i64 %i.lw, i64 1)
  %i.lx = add nsw i64 %.sroa.speculated.i.i.i.i144, %i.lw ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %i.lw
  %i.lz = call i64 @llvm.umin.i64(i64 %i.lx, i64 192153584101141162)
  %i.ma = select i1 %i.ly, i64 192153584101141162, i64 %i.lz ; 3 uses
  %.not.i.i.i.i145 = icmp ne i64 %i.ma, 0
  call void @llvm.assume(i1 %.not.i.i.i.i145)
  %i.mb = mul nuw nsw i64 %i.ma, 48
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #27
          to label %.noexc156 unwind label %.loopexit420 ; 5 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lu ; 6 uses
  store ptr %i.ln, ptr %i.md, align 8
  %.sroa.6261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %i.lp, ptr %.sroa.6261.0..sroa_idx262, align 8
  %.sroa.7264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 %i.lq, ptr %.sroa.7264.0..sroa_idx265, align 8
  %.sroa.8267.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  store i64 %storemerge871, ptr %.sroa.8267.0..sroa_idx268, align 8
  %.sroa.9270.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  store ptr %i.bv, ptr %.sroa.9270.0..sroa_idx271, align 8
  %.sroa.10.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  store ptr %i.lm, ptr %.sroa.10.0..sroa_idx273, align 8
  %.not10.i.i.i.i.i.i146 = icmp eq ptr %.sroa.0389.3831, %.sroa.17.4830
  br i1 %.not10.i.i.i.i.i.i146, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151, label %.lr.ph.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i147:                            ; preds = %.noexc156, %.lr.ph.i.i.i.i.i.i147
  %.012.i.i.i.i.i.i148 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i147 ], [ %i.mc, %.noexc156 ] ; 2 uses
  %.0911.i.i.i.i.i.i149 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i147 ], [ %.sroa.0389.3831, %.noexc156 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i148, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i149, i64 48, i1 false), !alias.scope !117
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i149, i64 48 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i148, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i150 = icmp eq ptr %i.me, %.sroa.17.4830
  br i1 %.not.i.i.i.i.i.i150, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151, label %.lr.ph.i.i.i.i.i.i147, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151: ; preds = %.lr.ph.i.i.i.i.i.i147, %.noexc156
  %.0.lcssa.i.i.i.i.i.i152 = phi ptr [ %i.mc, %.noexc156 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i147 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i152, i64 48
  %.not.i23.i.i.i153 = icmp eq ptr %.sroa.0389.3831, null
  br i1 %.not.i23.i.i.i153, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.3831, i64 noundef %i.lu) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154: ; preds = %bb.bc, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151
  %i.mh = getelementptr inbounds nuw [48 x i8], ptr %i.mc, i64 %i.ma
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

bb.bd:                                            ; preds = %bb.ax
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.body

.loopexit420:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143
  %lpad.loopexit422 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp421:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp423 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141
  %.not.i.i158 = icmp eq ptr %.sroa.17.4830, %.sroa.42.3829
  br i1 %.not.i.i158, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.lb, ptr %.sroa.17.4830, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 16
  store i64 %storemerge871, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 24
  store i64 %storemerge871, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 32
  store <2 x ptr> splat (ptr null), ptr %.sroa.9.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173

bb.bg:                                            ; preds = %bb.be
  %i.mj = ptrtoint ptr %.sroa.17.4830 to i64
  %i.mk = ptrtoint ptr %.sroa.0389.3831 to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 4 uses
  %i.mm = icmp eq i64 %i.ml, 9223372036854775776
  br i1 %i.mm, label %bb.bh, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc171 unwind label %.loopexit.split-lp426

.noexc171:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159: ; preds = %bb.bg
  %i.mn = sdiv exact i64 %i.ml, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i160 = call i64 @llvm.umax.i64(i64 %i.mn, i64 1)
  %i.mo = add nsw i64 %.sroa.speculated.i.i.i.i160, %i.mn ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mn
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mo, i64 192153584101141162)
  %i.mr = select i1 %i.mp, i64 192153584101141162, i64 %i.mq ; 3 uses
  %.not.i.i.i.i161 = icmp ne i64 %i.mr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i161)
  %i.ms = mul nuw nsw i64 %i.mr, 48
  %i.mt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #27
          to label %.noexc172 unwind label %.loopexit425 ; 5 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.ml ; 5 uses
  store ptr %i.lb, ptr %i.mu, align 8
  %.sroa.6.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx252, align 8
  %.sroa.7.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i64 %storemerge871, ptr %.sroa.7.0..sroa_idx254, align 8
  %.sroa.8.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store i64 %storemerge871, ptr %.sroa.8.0..sroa_idx256, align 8
  %.sroa.9.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx258, i8 0, i64 16, i1 false)
  %.not10.i.i.i.i.i.i162 = icmp eq ptr %.sroa.0389.3831, %.sroa.17.4830
  br i1 %.not10.i.i.i.i.i.i162, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163

.lr.ph.i.i.i.i.i.i163:                            ; preds = %.noexc172, %.lr.ph.i.i.i.i.i.i163
  %.012.i.i.i.i.i.i164 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i163 ], [ %i.mt, %.noexc172 ] ; 2 uses
  %.0911.i.i.i.i.i.i165 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i163 ], [ %.sroa.0389.3831, %.noexc172 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i165, i64 48, i1 false), !alias.scope !121
  %i.mv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i165, i64 48 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i164, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.mv, %.sroa.17.4830
  br i1 %.not.i.i.i.i.i.i166, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167: ; preds = %.lr.ph.i.i.i.i.i.i163, %.noexc172
  %.0.lcssa.i.i.i.i.i.i168 = phi ptr [ %i.mt, %.noexc172 ], [ %i.mw, %.lr.ph.i.i.i.i.i.i163 ]
  %.not.i23.i.i.i169 = icmp eq ptr %.sroa.0389.3831, null
  br i1 %.not.i23.i.i.i169, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.3831, i64 noundef %i.ml) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170: ; preds = %bb.bi, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167
  %i.mx = getelementptr inbounds nuw [48 x i8], ptr %i.mt, i64 %i.mr
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173: ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170, %bb.bf
  %.sroa.42.13 = phi ptr [ %i.mx, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.42.3829, %bb.bf ]
  %.0.lcssa.i.i.i.i.i.i168.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i168, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.17.4830, %bb.bf ]
  %.sroa.0389.13 = phi ptr [ %i.mt, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.0389.3831, %bb.bf ]
  %.sroa.17.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i168.pn, i64 48
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

.loopexit425:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp426:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157: ; preds = %bb.az, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173
  %.sroa.42.4 = phi ptr [ %.sroa.42.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mh, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.42.3829, %bb.az ] ; 2 uses
  %.sroa.17.5 = phi ptr [ %.sroa.17.10, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mg, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %i.lr, %bb.az ] ; 2 uses
  %.sroa.0389.4 = phi ptr [ %.sroa.0389.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mc, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.0389.3831, %bb.az ] ; 2 uses
  %i.my = add nuw i64 %.066832, 1                 ; 2 uses
  %i.mz = load ptr, ptr %i.ib, align 8
  %i.na = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = ashr exact i64 %i.nd, 3
  %i.nf = icmp ult i64 %i.my, %i.ne
  br i1 %i.nf, label %bb.ax, label %.loopexit, !llvm.loop !125

.loopexit:                                        ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119, %bb.aw, %.loopexit418, %bb.m
  %.sroa.13.2 = phi ptr [ %.sroa.13.1843, %bb.m ], [ %.sroa.13.6, %.loopexit418 ], [ %.sroa.13.6, %bb.aw ], [ %.sroa.13.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.13.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.8364.2 = phi ptr [ %.sroa.8364.1844, %bb.m ], [ %.sroa.8364.3, %.loopexit418 ], [ %.sroa.8364.3, %bb.aw ], [ %.sroa.8364.3, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.8364.3, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0361.2 = phi ptr [ %.sroa.0361.1845, %bb.m ], [ %.sroa.0361.6, %.loopexit418 ], [ %.sroa.0361.6, %bb.aw ], [ %.sroa.0361.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0361.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.1846, %bb.m ], [ %.sroa.16.1846, %.loopexit418 ], [ %.sroa.16.2, %bb.aw ], [ %.sroa.16.1846, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.16.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.10383.3 = phi ptr [ %.sroa.10383.1847, %bb.m ], [ %.sroa.10383.1847, %.loopexit418 ], [ %.sroa.10383.2, %bb.aw ], [ %.sroa.10383.1847, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.10383.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0379.4 = phi ptr [ %.sroa.0379.1848, %bb.m ], [ %.sroa.0379.1848, %.loopexit418 ], [ %.sroa.0379.2, %bb.aw ], [ %.sroa.0379.1848, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0379.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.42.6 = phi ptr [ %.sroa.42.1849, %bb.m ], [ %.sroa.42.1849, %.loopexit418 ], [ %.sroa.42.1849, %bb.aw ], [ %.sroa.42.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.17.6 = phi ptr [ %i.bt, %bb.m ], [ %i.bt, %.loopexit418 ], [ %i.bt, %bb.aw ], [ %.sroa.17.8, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %.sroa.0389.6 = phi ptr [ %.sroa.0389.1851, %bb.m ], [ %.sroa.0389.1851, %.loopexit418 ], [ %.sroa.0389.1851, %bb.aw ], [ %.sroa.0389.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %i.ng = icmp eq ptr %.sroa.0389.6, %.sroa.17.6
  br i1 %i.ng, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0862, %.preheader ], [ %.sroa.13.2, %.loopexit ] ; 5 uses
  %.sroa.8364.1.lcssa = phi ptr [ %.sroa.8364.0863, %.preheader ], [ %.sroa.8364.2, %.loopexit ] ; 2 uses
  %.sroa.0361.1.lcssa = phi ptr [ %.sroa.0361.0864, %.preheader ], [ %.sroa.0361.2, %.loopexit ] ; 7 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0865, %.preheader ], [ %.sroa.16.4, %.loopexit ] ; 5 uses
  %.sroa.10383.1.lcssa = phi ptr [ %.sroa.10383.0866, %.preheader ], [ %.sroa.10383.3, %.loopexit ]
  %.sroa.0379.1.lcssa = phi ptr [ %.sroa.0379.0867, %.preheader ], [ %.sroa.0379.4, %.loopexit ] ; 7 uses
  %.sroa.42.1.lcssa = phi ptr [ %.sroa.42.0868, %.preheader ], [ %.sroa.42.6, %.loopexit ] ; 5 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0869, %.preheader ], [ %.sroa.17.6, %.loopexit ]
  %.sroa.0389.1.lcssa = phi ptr [ %.sroa.0389.0870, %.preheader ], [ %.sroa.0389.6, %.loopexit ] ; 7 uses
  %.not = icmp ugt i64 %.pre, %i.ag
  br i1 %.not, label %bb.f, label %.preheader, !llvm.loop !126

_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.nh = icmp eq ptr %i.bk, null
  br i1 %i.nh, label %bb.bu, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  invoke void @_ZNK2v88internal6torque4Item8ChildrenEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.4") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %i.ni)
          to label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit unwind label %bb.bt

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit: ; preds = %bb.bj
  %i.nj = load ptr, ptr %12, align 8              ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nj to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.np) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.nq = load ptr, ptr %8, align 8               ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.nq, %i.ns
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ob, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.nq, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit ] ; 2 uses
  %i.nt = load ptr, ptr %.05.i.i.i.i, align 8     ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.oa) #25
  br label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef 40) #25
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.ob, %i.ns
  br i1 %.not.i.i.i.i175, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit
  %i.oc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.nq, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal6torque6SymbolD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %i.oc to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.oh) #25
  br label %_ZN2v88internal6torque6SymbolD2Ev.exit

_ZN2v88internal6torque6SymbolD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i.i176 = icmp eq ptr %.sroa.0361.1.lcssa, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177, label %bb.bn

bb.bn:                                            ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit
  %i.oi = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.oj = ptrtoint ptr %.sroa.0361.1.lcssa to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.1.lcssa, i64 noundef %i.ok) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177: ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit, %bb.bn
  %i.ol = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i178

.lr.ph.i.i.i.i178:                                ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.om, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i ], [ %i.ol, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177 ] ; 4 uses
  %i.om = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.oo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.op = load ptr, ptr %i.oo, align 8
  invoke void @_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.on, ptr noundef %i.op)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i178
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 80) #25
  %.not.i.i.i.i179 = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i.i179, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i178, !llvm.loop !127

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177
  %i.os = load ptr, ptr %7, align 8
  %i.ot = load i64, ptr %i.h, align 8
  %i.ou = shl i64 %i.ot, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.os, i8 0, i64 %i.ou, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ov = load ptr, ptr %7, align 8               ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.g
  br i1 %i.ow, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit181, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ox = load i64, ptr %i.h, align 8
  %i.oy = shl i64 %i.ox, 3
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit181

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit181: ; preds = %bb.bp, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.oz = load ptr, ptr %i.d, align 8
  store ptr %i.oz, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i182 = icmp eq ptr %.sroa.0389.1.lcssa, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit181
  %i.pa = ptrtoint ptr %.sroa.42.1.lcssa to i64
  %i.pb = ptrtoint ptr %.sroa.0389.1.lcssa to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.1.lcssa, i64 noundef %i.pc) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit181, %bb.bq
  %.not.i.i.i183 = icmp eq ptr %.sroa.0379.1.lcssa, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit184, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit
  %i.pd = ptrtoint ptr %.sroa.16.1.lcssa to i64
  %i.pe = ptrtoint ptr %.sroa.0379.1.lcssa to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.1.lcssa, i64 noundef %i.pf) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit184

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit184: ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit, %bb.br
  ret ptr %i.nk

bb.bs:                                            ; preds = %bb.f
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.body

bb.bt:                                            ; preds = %bb.bj
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

bb.bu:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.pi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.pi, ptr %13, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.pj, align 8
  store i8 0, ptr %i.pi, align 8
  %i.pk = getelementptr inbounds i8, ptr %.sroa.8364.1.lcssa, i64 -8
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load i64, ptr %i.pm, align 8            ; 2 uses
  %i.po = load ptr, ptr %i.aa, align 8
  %i.pp = load ptr, ptr %1, align 8
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = ashr exact i64 %i.ps, 3
  %i.pu = icmp ult i64 %i.pn, %i.pt
  br i1 %i.pu, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.pv = load ptr, ptr %i.ah, align 8
  %i.pw = getelementptr inbounds nuw [48 x i8], ptr %i.pv, i64 %i.pn
  invoke void @_ZNK2v88internal6torque12MatchedInput8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(44) %i.pw)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.10)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.px = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15) #24 ; 0 uses
  %i.py = load ptr, ptr %15, align 8              ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.by
  %i.qb = load i64, ptr %i.pz, align 8
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.qd = load ptr, ptr %16, align 8              ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.qg = load i64, ptr %i.qe, align 8
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.qi = load ptr, ptr %14, align 8              ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.ql = load i64, ptr %i.qj, align 8
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.ce

bb.bz:                                            ; preds = %bb.cd
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bv
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.cb:                                            ; preds = %bb.bw
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.cc:                                            ; preds = %bb.bx
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qr = load ptr, ptr %16, align 8              ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.cc
  %i.qu = load i64, ptr %i.qs, align 8
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.cb
  %.pn69 = phi { ptr, i32 } [ %i.qp, %bb.cb ], [ %i.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %i.qq, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.qw = load ptr, ptr %14, align 8              ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.qy = icmp eq ptr %i.qw, %i.qx
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.qz = load i64, ptr %i.qx, align 8
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.ra) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.ca
  %.pn69.pn = phi { ptr, i32 } [ %i.qo, %bb.ca ], [ %.pn69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.cj

bb.cd:                                            ; preds = %bb.bu
  %i.rb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11)
          to label %bb.ce unwind label %bb.bz     ; 0 uses

bb.ce:                                            ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %17) #26
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.ci:                                            ; preds = %bb.cf
  %i.rd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.re = load ptr, ptr %17, align 8              ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.ci
  %i.rh = load i64, ptr %i.rf, align 8
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.ch
  %.pn72 = phi { ptr, i32 } [ %i.rc, %bb.ch ], [ %i.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %i.rd, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.bz
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.qn, %bb.bz ]
  %i.rj = load ptr, ptr %13, align 8              ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.pi
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cj
  %i.rl = load i64, ptr %i.pi, align 8
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

.body:                                            ; preds = %.loopexit425, %.loopexit.split-lp426, %bb.o, %bb.z, %bb.aa, %bb.bd, %bb.av, %bb.aq, %bb.au, %.loopexit.split-lp432, %.loopexit431, %.loopexit.split-lp, %.loopexit417, %.loopexit.split-lp437, %.loopexit436, %.loopexit.split-lp421, %.loopexit420, %bb.bs, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.n, %bb.j, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96
  %.sroa.13.5 = phi ptr [ null, %bb.j ], [ %.sroa.13.1843, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.13.1.lcssa, %bb.bs ], [ %.sroa.13.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.13.1.lcssa, %bb.bt ], [ %.sroa.13.6, %bb.au ], [ %.sroa.8364.1844, %.loopexit.split-lp432 ], [ %.sroa.13.6, %.loopexit.split-lp ], [ %.sroa.13.6, %bb.aa ], [ %.sroa.13.1843, %bb.o ], [ %.sroa.13.6, %bb.z ], [ %.sroa.13.6, %bb.bd ], [ %.sroa.13.6, %.loopexit.split-lp437 ], [ %.sroa.13.6, %.loopexit.split-lp421 ], [ %.sroa.13.6, %bb.av ], [ %.sroa.13.6, %bb.aq ], [ %.sroa.8364.1844, %.loopexit431 ], [ %.sroa.13.6, %.loopexit417 ], [ %.sroa.13.6, %.loopexit436 ], [ %.sroa.13.6, %.loopexit420 ], [ %.sroa.13.6, %.loopexit.split-lp426 ], [ %.sroa.13.6, %.loopexit425 ]
  %.sroa.0361.5 = phi ptr [ null, %bb.j ], [ %.sroa.0361.1845, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0361.1.lcssa, %bb.bs ], [ %.sroa.0361.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0361.1.lcssa, %bb.bt ], [ %.sroa.0361.6, %bb.au ], [ %.sroa.0361.1845, %.loopexit.split-lp432 ], [ %.sroa.0361.6, %.loopexit.split-lp ], [ %.sroa.0361.6, %bb.aa ], [ %.sroa.0361.1845, %bb.o ], [ %.sroa.0361.6, %bb.z ], [ %.sroa.0361.6, %bb.bd ], [ %.sroa.0361.6, %.loopexit.split-lp437 ], [ %.sroa.0361.6, %.loopexit.split-lp421 ], [ %.sroa.0361.6, %bb.av ], [ %.sroa.0361.6, %bb.aq ], [ %.sroa.0361.1845, %.loopexit431 ], [ %.sroa.0361.6, %.loopexit417 ], [ %.sroa.0361.6, %.loopexit436 ], [ %.sroa.0361.6, %.loopexit420 ], [ %.sroa.0361.6, %.loopexit.split-lp426 ], [ %.sroa.0361.6, %.loopexit425 ] ; 3 uses
  %.sroa.16.7 = phi ptr [ null, %bb.j ], [ %.sroa.16.1846, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.42.1.lcssa, %bb.bs ], [ %.sroa.42.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.42.1.lcssa, %bb.bt ], [ %.sroa.16.2, %bb.au ], [ %.sroa.16.1846, %.loopexit.split-lp432 ], [ %.sroa.16.1846, %.loopexit.split-lp ], [ %.sroa.16.1846, %bb.aa ], [ %.sroa.16.1846, %bb.o ], [ %.sroa.16.1846, %bb.z ], [ %.sroa.16.2, %bb.bd ], [ %.sroa.10383.1847, %.loopexit.split-lp437 ], [ %.sroa.16.2, %.loopexit.split-lp421 ], [ %.sroa.16.2, %bb.av ], [ %.sroa.16.2, %bb.aq ], [ %.sroa.16.1846, %.loopexit431 ], [ %.sroa.16.1846, %.loopexit417 ], [ %.sroa.10383.1847, %.loopexit436 ], [ %.sroa.16.2, %.loopexit420 ], [ %.sroa.16.2, %.loopexit.split-lp426 ], [ %.sroa.16.2, %.loopexit425 ]
  %.sroa.0379.7 = phi ptr [ null, %bb.j ], [ %.sroa.0379.1848, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0389.1.lcssa, %bb.bs ], [ %.sroa.0389.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0389.1.lcssa, %bb.bt ], [ %.sroa.0379.2, %bb.au ], [ %.sroa.0379.1848, %.loopexit.split-lp432 ], [ %.sroa.0379.1848, %.loopexit.split-lp ], [ %.sroa.0379.1848, %bb.aa ], [ %.sroa.0379.1848, %bb.o ], [ %.sroa.0379.1848, %bb.z ], [ %.sroa.0379.2, %bb.bd ], [ %.sroa.0379.1848, %.loopexit.split-lp437 ], [ %.sroa.0379.2, %.loopexit.split-lp421 ], [ %.sroa.0379.2, %bb.av ], [ %.sroa.0379.2, %bb.aq ], [ %.sroa.0379.1848, %.loopexit431 ], [ %.sroa.0379.1848, %.loopexit417 ], [ %.sroa.0379.1848, %.loopexit436 ], [ %.sroa.0379.2, %.loopexit420 ], [ %.sroa.0379.2, %.loopexit.split-lp426 ], [ %.sroa.0379.2, %.loopexit425 ] ; 3 uses
  %.sroa.42.9 = phi ptr [ null, %bb.j ], [ %.sroa.42.1849, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.16.1.lcssa, %bb.bs ], [ %.sroa.16.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.16.1.lcssa, %bb.bt ], [ %.sroa.42.1849, %bb.au ], [ %.sroa.42.1849, %.loopexit.split-lp432 ], [ %.sroa.17.3837, %.loopexit.split-lp ], [ %.sroa.42.1849, %bb.aa ], [ %.sroa.42.1849, %bb.o ], [ %.sroa.42.1849, %bb.z ], [ %.sroa.42.3829, %bb.bd ], [ %.sroa.42.1849, %.loopexit.split-lp437 ], [ %.sroa.17.4830, %.loopexit.split-lp421 ], [ %.sroa.42.1849, %bb.av ], [ %.sroa.42.1849, %bb.aq ], [ %.sroa.42.1849, %.loopexit431 ], [ %.sroa.17.3837, %.loopexit417 ], [ %.sroa.42.1849, %.loopexit436 ], [ %.sroa.17.4830, %.loopexit420 ], [ %.sroa.17.4830, %.loopexit.split-lp426 ], [ %.sroa.17.4830, %.loopexit425 ]
  %.sroa.0389.9 = phi ptr [ null, %bb.j ], [ %.sroa.0389.1851, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0379.1.lcssa, %bb.bs ], [ %.sroa.0379.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0379.1.lcssa, %bb.bt ], [ %.sroa.0389.1851, %bb.au ], [ %.sroa.0389.1851, %.loopexit.split-lp432 ], [ %.sroa.0389.2838, %.loopexit.split-lp ], [ %.sroa.0389.1851, %bb.aa ], [ %.sroa.0389.1851, %bb.o ], [ %.sroa.0389.1851, %bb.z ], [ %.sroa.0389.3831, %bb.bd ], [ %.sroa.0389.1851, %.loopexit.split-lp437 ], [ %.sroa.0389.3831, %.loopexit.split-lp421 ], [ %.sroa.0389.1851, %bb.av ], [ %.sroa.0389.1851, %bb.aq ], [ %.sroa.0389.1851, %.loopexit431 ], [ %.sroa.0389.2838, %.loopexit417 ], [ %.sroa.0389.1851, %.loopexit436 ], [ %.sroa.0389.3831, %.loopexit420 ], [ %.sroa.0389.3831, %.loopexit.split-lp426 ], [ %.sroa.0389.3831, %.loopexit425 ] ; 3 uses
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %i.cb, %bb.n ], [ %.pn, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %i.pg, %bb.bs ], [ %.pn72.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.ph, %bb.bt ], [ %i.ku, %bb.au ], [ %lpad.loopexit.split-lp434, %.loopexit.split-lp432 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.fu, %bb.aa ], [ %i.cc, %bb.o ], [ %i.fp, %bb.z ], [ %i.mi, %bb.bd ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp437 ], [ %lpad.loopexit.split-lp423, %.loopexit.split-lp421 ], [ %i.kv, %bb.av ], [ %i.jy, %bb.aq ], [ %lpad.loopexit433, %.loopexit431 ], [ %lpad.loopexit, %.loopexit417 ], [ %lpad.loopexit438, %.loopexit436 ], [ %lpad.loopexit422, %.loopexit420 ], [ %lpad.loopexit427, %.loopexit425 ], [ %lpad.loopexit.split-lp428, %.loopexit.split-lp426 ]
  %i.rn = load ptr, ptr %8, align 8               ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
  %.not4.i.i.i.i203 = icmp eq ptr %i.rn, %i.rp
  br i1 %.not4.i.i.i.i203, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i213, label %.lr.ph.i.i.i.i204

.lr.ph.i.i.i.i204:                                ; preds = %.body, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209
  %.05.i.i.i.i205 = phi ptr [ %i.ry, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209 ], [ %i.rn, %.body ] ; 2 uses
  %i.rq = load ptr, ptr %.05.i.i.i.i205, align 8  ; 4 uses
  %.not.i.i.i.i.i.i.i206 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i.i206, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i204
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i207 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i207, label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i208, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.rv, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.rx) #25
  br label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i208

_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i208: ; preds = %bb.cl, %bb.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef 40) #25
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209

_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i208, %.lr.ph.i.i.i.i204
  %i.ry = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i205, i64 8 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.ry, %i.rp
  br i1 %.not.i.i.i.i210, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i211, label %.lr.ph.i.i.i.i204, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i211: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i209
  %.pr.i.i212 = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i213

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i213: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i211, %.body
  %i.rz = phi ptr [ %.pr.i.i212, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i211 ], [ %i.rn, %.body ] ; 3 uses
  %.not.i.i1.i.i214 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i1.i.i214, label %_ZN2v88internal6torque6SymbolD2Ev.exit215, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i213
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = ptrtoint ptr %i.sb to i64
  %i.sd = ptrtoint ptr %i.rz to i64
  %i.se = sub i64 %i.sc, %i.sd
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef %i.se) #25
  br label %_ZN2v88internal6torque6SymbolD2Ev.exit215

_ZN2v88internal6torque6SymbolD2Ev.exit215:        ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i213, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i.i216 = icmp eq ptr %.sroa.0361.5, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217, label %bb.cn

bb.cn:                                            ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit215
  %i.sf = ptrtoint ptr %.sroa.13.5 to i64
  %i.sg = ptrtoint ptr %.sroa.0361.5 to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.5, i64 noundef %i.sh) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217: ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit215, %bb.cn
  %i.si = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not5.i.i.i.i218 = icmp eq ptr %i.si, null
  br i1 %.not5.i.i.i.i218, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i223, label %.lr.ph.i.i.i.i219

.lr.ph.i.i.i.i219:                                ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i221
  %.06.i.i.i.i220 = phi ptr [ %i.sj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i221 ], [ %i.si, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217 ] ; 4 uses
  %i.sj = load ptr, ptr %.06.i.i.i.i220, align 8  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i220, i64 24
  %i.sl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i220, i64 40
  %i.sm = load ptr, ptr %i.sl, align 8
  invoke void @_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.sk, ptr noundef %i.sm)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i221 unwind label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i219
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i221: ; preds = %.lr.ph.i.i.i.i219
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i220, i64 noundef 80) #25
  %.not.i.i.i.i222 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i.i222, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i223, label %.lr.ph.i.i.i.i219, !llvm.loop !127

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i223: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i221, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit217
  %i.sp = load ptr, ptr %7, align 8
  %i.sq = load i64, ptr %i.h, align 8
  %i.sr = shl i64 %i.sq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sp, i8 0, i64 %i.sr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ss = load ptr, ptr %7, align 8               ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.g
  br i1 %i.st, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit226, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i223
  %i.su = load i64, ptr %i.h, align 8
  %i.sv = shl i64 %i.su, 3
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit226

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit226: ; preds = %bb.cp, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.sw = load ptr, ptr %i.d, align 8
  store ptr %i.sw, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i227 = icmp eq ptr %.sroa.0379.7, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit228, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit226
  %i.sx = ptrtoint ptr %.sroa.16.7 to i64
  %i.sy = ptrtoint ptr %.sroa.0379.7 to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.7, i64 noundef %i.sz) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit228

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit228: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit226, %bb.cq
  %.not.i.i.i229 = icmp eq ptr %.sroa.0389.9, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit230, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit228
  %i.ta = ptrtoint ptr %.sroa.42.9 to i64
  %i.tb = ptrtoint ptr %.sroa.0389.9 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.9, i64 noundef %i.tc) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit230

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit230: ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EED2Ev.exit228, %bb.cr
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque13DefaultActionEPNS1_19ParseResultIteratorE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal6torque11ParseResultD2Ev.exit, label %bb.b

_ZN2v88internal6torque11ParseResultD2Ev.exit:     ; preds = %bb.a
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !noalias !128
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !128
  store ptr null, ptr %i.l, align 8, !noalias !128
  store i64 %i.m, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal6torque11ParseResultD2Ev.exit
  %.sink = phi i8 [ 1, %_ZN2v88internal6torque11ParseResultD2Ev.exit ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = sub i64 9223372036854775807, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.f = add i64 %i.c, %i.a                       ; 3 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i, label %bb.h, label %bb.d
end_hunk_0
