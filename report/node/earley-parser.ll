inline.NumInlined: 1388
inline.NumDeleted: 771
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal6torque5Lexer10MatchTokenEPPKcS4_:bb.a
  %i.at = load ptr, ptr %i.ad, align 8
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
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
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
  %i.an = icmp eq ptr %.sroa.0389.0870, %.sroa.17.0869
  %.pre = add i64 %storemerge871, 1               ; 4 uses
  br i1 %i.an, label %._crit_edge, label %.lr.ph852

.lr.ph852:                                        ; preds = %.preheader
  %i.ao = xor i64 %storemerge871, -1
  %i.ap = shl i64 %storemerge871, 21
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 24
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 265                      ; 2 uses
  %i.au = lshr i64 %i.at, 14
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, 21                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 28
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 8398540807049701781      ; 2 uses
  %i.ba = lshr i64 %i.az, 47
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 3866779316627607737
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.bd = load ptr, ptr %8, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %11, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.ag, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = invoke ptr @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit unwind label %bb.bs ; 2 uses

bb.g:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96

bb.h:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i93, label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.p, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96

_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96: ; preds = %bb.h, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.g ], [ %i.bl, %bb.i ], [ %i.bl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
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
  %i.bs = getelementptr inbounds i8, ptr %.sroa.17.1850, i64 -48 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %2, ptr %5, align 8
  %i.bt = invoke { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SK_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bt, 0 ; 5 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bt, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8 ; 15 uses
  %i.bv = load ptr, ptr %i.ah, align 8
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %storemerge871
  %i.bx = load ptr, ptr %i.e, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bx, ptr noundef nonnull align 8 dereferenceable(28) %i.by, i64 28, i1 false)
  %i.bz = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bz, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK2v88internal6torque4Item14CheckAmbiguityERKS2_RKNS1_11LexerResultE(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit unwind label %bb.o, !llvm.loop !96

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.l
  %.not.i.i98 = icmp eq ptr %.sroa.8364.1844, %.sroa.13.1843
  br i1 %.not.i.i98, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  store ptr %i.bu, ptr %.sroa.8364.1844, align 8
  br label %bb.u

bb.q:                                             ; preds = %.critedge
  %i.cc = ptrtoint ptr %.sroa.8364.1844 to i64
  %i.cd = ptrtoint ptr %.sroa.0361.1845 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.r, label %_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc101 unwind label %.loopexit.split-lp432

.noexc101:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i99 = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i99, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i100 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i100)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #27
          to label %.noexc102 unwind label %.loopexit431 ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store ptr %i.bu, ptr %i.cn, align 8
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.s, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc102
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.0361.1845, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.s, %.noexc102
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0361.1845, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.1845, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.sroa.13.6 = phi ptr [ %i.cp, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.1843, %bb.p ] ; 18 uses
  %.pn416 = phi ptr [ %i.cn, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.8364.1844, %bb.p ]
  %.sroa.0361.6 = phi ptr [ %i.cm, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0361.1845, %bb.p ] ; 18 uses
  %.sroa.8364.3 = getelementptr inbounds nuw i8, ptr %.pn416, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = load ptr, ptr %i.bu, align 8            ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = icmp eq i64 %i.cr, %i.da
  br i1 %i.db, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.dd = load i64, ptr %i.dc, align 8            ; 4 uses
  %i.de = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.df = xor i64 %i.dd, -1
  %i.dg = shl i64 %i.dd, 21
  %i.dh = add i64 %i.dg, %i.df                    ; 2 uses
  %i.di = lshr i64 %i.dh, 24
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, 265                      ; 2 uses
  %i.dl = lshr i64 %i.dk, 14
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = mul i64 %i.dm, 21                       ; 2 uses
  %i.do = lshr i64 %i.dn, 28
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, 8398540807049701781      ; 2 uses
  %i.dr = lshr i64 %i.dq, 47
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = mul i64 %i.ds, 3866779316627607737
  %i.du = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dv = xor i64 %i.du, -1
  %i.dw = shl i64 %i.du, 21
  %i.dx = add i64 %i.dw, %i.dv                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 24
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, 265                      ; 2 uses
  %i.eb = lshr i64 %i.ea, 14
  %i.ec = xor i64 %i.eb, %i.ea
  %i.ed = mul i64 %i.ec, 21                       ; 2 uses
  %i.ee = lshr i64 %i.ed, 28
  %i.ef = xor i64 %i.ee, %i.ed
  %i.eg = mul i64 %i.ef, 8398540807049701781      ; 2 uses
  %i.eh = lshr i64 %i.eg, 47
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %i.ha = ashr exact i64 %i.gz, 3
  %i.hb = icmp ult i64 %storemerge871, %i.ha
  br i1 %i.hb, label %bb.ag, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.ag:                                            ; preds = %bb.af
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %storemerge871
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = icmp eq ptr %i.hd, %i.gu
  br i1 %i.he, label %bb.ah, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.ah:                                            ; preds = %bb.ag
  %i.hf = add i64 %i.cr, 1                        ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !106 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.sroa.10383.1847, %.sroa.16.1846
  br i1 %.not.i.i120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.cs, ptr %.sroa.10383.1847, align 8
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 8
  store i64 %i.hf, ptr %.sroa.6282.0..sroa_idx, align 8
  %.sroa.7285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 16
  store i64 %i.hh, ptr %.sroa.7285.0..sroa_idx, align 8
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 24
  store i64 %.pre, ptr %.sroa.8288.0..sroa_idx, align 8
  %.sroa.9291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 32
  store ptr %i.bu, ptr %.sroa.9291.0..sroa_idx, align 8
  %.sroa.10294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 40
  store ptr null, ptr %.sroa.10294.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.10383.1847, i64 48
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135

bb.aj:                                            ; preds = %bb.ah
  %i.hj = ptrtoint ptr %.sroa.10383.1847 to i64
  %i.hk = ptrtoint ptr %.sroa.0379.1848 to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775776
  br i1 %i.hm, label %bb.ak, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc133 unwind label %.loopexit.split-lp437

.noexc133:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121: ; preds = %bb.aj
  %i.hn = sdiv exact i64 %i.hl, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i122 = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i.i122, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = call i64 @llvm.umin.i64(i64 %i.ho, i64 192153584101141162)
  %i.hr = select i1 %i.hp, i64 192153584101141162, i64 %i.hq ; 3 uses
  %.not.i.i.i.i123 = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i123)
  %i.hs = mul nuw nsw i64 %i.hr, 48
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #27
          to label %.noexc134 unwind label %.loopexit436 ; 5 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i121
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl ; 6 uses
  store ptr %i.cs, ptr %i.hu, align 8
  %.sroa.6282.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %i.hf, ptr %.sroa.6282.0..sroa_idx283, align 8
  %.sroa.7285.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 %i.hh, ptr %.sroa.7285.0..sroa_idx286, align 8
  %.sroa.8288.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store i64 %.pre, ptr %.sroa.8288.0..sroa_idx289, align 8
  %.sroa.9291.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store ptr %i.bu, ptr %.sroa.9291.0..sroa_idx292, align 8
  %.sroa.10294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  store ptr null, ptr %.sroa.10294.0..sroa_idx295, align 8
  %.not10.i.i.i.i.i.i124 = icmp eq ptr %.sroa.0379.1848, %.sroa.10383.1847
  br i1 %.not10.i.i.i.i.i.i124, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125

.lr.ph.i.i.i.i.i.i125:                            ; preds = %.noexc134, %.lr.ph.i.i.i.i.i.i125
  %.012.i.i.i.i.i.i126 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i125 ], [ %i.ht, %.noexc134 ] ; 2 uses
  %.0911.i.i.i.i.i.i127 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i125 ], [ %.sroa.0379.1848, %.noexc134 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i126, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i127, i64 48, i1 false), !alias.scope !109
  %i.hv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i127, i64 48 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i126, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.hv, %.sroa.10383.1847
  br i1 %.not.i.i.i.i.i.i128, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129: ; preds = %.lr.ph.i.i.i.i.i.i125, %.noexc134
  %.0.lcssa.i.i.i.i.i.i130 = phi ptr [ %i.ht, %.noexc134 ], [ %i.hw, %.lr.ph.i.i.i.i.i.i125 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i130, i64 48
  %.not.i23.i.i.i131 = icmp eq ptr %.sroa.0379.1848, null
  br i1 %.not.i23.i.i.i131, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.1848, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132: ; preds = %bb.al, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i129
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.ht, i64 %i.hr
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
  %.sroa.16.2 = phi ptr [ %.sroa.16.1846, %bb.af ], [ %.sroa.16.1846, %bb.ag ], [ %i.hy, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.16.1846, %bb.ai ] ; 10 uses
  %.sroa.10383.2 = phi ptr [ %.sroa.10383.1847, %bb.af ], [ %.sroa.10383.1847, %bb.ag ], [ %i.hx, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %i.hi, %bb.ai ] ; 2 uses
  %.sroa.0379.2 = phi ptr [ %.sroa.0379.1848, %bb.af ], [ %.sroa.0379.1848, %bb.ag ], [ %i.ht, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.0379.1848, %bb.ai ] ; 10 uses
  %i.hz = load ptr, ptr %i.gu, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = icmp eq ptr %i.hz, %i.ib
  br i1 %i.ic, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135
  %i.id = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.ie = xor i64 %i.id, -1
  %i.if = shl i64 %i.id, 21
  %i.ig = add i64 %i.if, %i.ie                    ; 2 uses
  %i.ih = lshr i64 %i.ig, 24
  %i.ii = xor i64 %i.ih, %i.ig
  %i.ij = mul i64 %i.ii, 265                      ; 2 uses
  %i.ik = lshr i64 %i.ij, 14
  %i.il = xor i64 %i.ik, %i.ij
  %i.im = mul i64 %i.il, 21                       ; 2 uses
  %i.in = lshr i64 %i.im, 28
  %i.io = xor i64 %i.in, %i.im
  %i.ip = mul i64 %i.io, 8398540807049701781      ; 2 uses
  %i.iq = lshr i64 %i.ip, 47
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = mul i64 %i.ir, -4132994306676758123
  %i.it = xor i64 %i.is, %i.bc
  %i.iu = mul i64 %i.it, -4132994306676758123     ; 3 uses
  %i.iv = load i64, ptr %i.h, align 8             ; 2 uses
  %i.iw = urem i64 %i.iu, %i.iv                   ; 3 uses
  %i.ix = load ptr, ptr %7, align 8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not.i.i.i233 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i233, label %.loopexit28.i239, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.phi.trans.insert.i.i.i234 = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  %.pre.i.i.i235 = load i64, ptr %.phi.trans.insert.i.i.i234, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.jb = phi i64 [ %.pre.i.i.i235, %bb.an ], [ %i.jn, %bb.ap ]
  %i.jc = phi ptr [ %i.ja, %bb.an ], [ %i.jl, %bb.ap ] ; 4 uses
  %i.jd = icmp eq i64 %i.iu, %i.jb
  br i1 %i.jd, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243: ; preds = %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = icmp eq i64 %storemerge871, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = icmp eq ptr %i.gu, %i.ji
  %i.jk = select i1 %i.jg, i1 %i.jj, i1 false
  br i1 %i.jk, label %.loopexit430, label %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236

_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, %bb.ao
  %i.jl = load ptr, ptr %i.jc, align 8            ; 3 uses
  %.not18.i.i.i237 = icmp eq ptr %i.jl, null
  br i1 %.not18.i.i.i237, label %.loopexit28.i239, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 72
  %i.jn = load i64, ptr %i.jm, align 8            ; 2 uses
  %i.jo = urem i64 %i.jn, %i.iv
  %.not19.i.i.i238 = icmp eq i64 %i.jo, %i.iw
  br i1 %.not19.i.i.i238, label %bb.ao, label %.loopexit28.i239, !llvm.loop !97

.loopexit28.i239:                                 ; preds = %bb.ap, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i236, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %7, ptr %3, align 8
  %i.jp = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc244 unwind label %bb.au ; 10 uses

.noexc244:                                        ; preds = %.loopexit28.i239
  store ptr null, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %storemerge871, ptr %i.jq, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store ptr %i.gu, ptr %.sroa.6279.0..sroa_idx, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i8 0, i64 24, i1 false)
  store ptr %i.js, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  store ptr %i.js, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  store i64 0, ptr %i.jv, align 8
  store ptr %i.jp, ptr %18, align 8
  %i.jw = invoke ptr @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.iw, i64 noundef %i.iu, ptr noundef nonnull %i.jp, i64 noundef 1)
          to label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240 unwind label %bb.aq

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240: ; preds = %.noexc244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit430

bb.aq:                                            ; preds = %.noexc244
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

.loopexit430:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240
  %.pn.i241 = phi ptr [ %i.jw, %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i240 ], [ %i.jc, %_ZNKSt8__detail15_Hashtable_baseISt4pairImPN2v88internal6torque6SymbolEES1_IKS7_St3setIPKNS4_4ItemESt4lessISC_ESaISC_EEENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i243 ] ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 40
  %i.jz = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 32 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.jy, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit430, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.loopexit430 ] ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8            ; 2 uses
  %i.kc = icmp ult ptr %i.bu, %i.kb               ; 2 uses
  %.in.v.i.i.i = select i1 %i.kc, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i138, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !113

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.kc, label %._crit_edge.thread.i.i.i, label %bb.as

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.loopexit430
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.jz, %.loopexit430 ] ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 48
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = icmp eq ptr %.019.lcssa29.i.i.i, %i.ke
  br i1 %i.kf, label %select.unfold.i.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.kg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i
  %i.kh = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.kb, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ar ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ki = icmp ult ptr %i.kh, %i.bu
  br i1 %i.ki, label %select.unfold.i.i, label %bb.aw

select.unfold.i.i:                                ; preds = %bb.as, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.as ] ; 3 uses
  %i.kj = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.jz
  br i1 %i.kj, label %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %select.unfold.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = icmp ult ptr %i.bu, %i.kl
  br label %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.at, %select.unfold.i.i
  %i.kn = phi i1 [ %i.km, %bb.at ], [ true, %select.unfold.i.i ]
  %i.ko = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc139 unwind label %bb.av ; 2 uses

.noexc139:                                        ; preds = %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store ptr %i.bu, ptr %i.kp, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.kn, ptr noundef nonnull %i.ko, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.jz) #24
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn.i241, i64 64 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %i.kq, align 8
  br label %bb.aw

bb.au:                                            ; preds = %.loopexit28.i239
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.as, %.noexc139, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135
  %i.kv = load ptr, ptr %i.ia, align 8
  %i.kw = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.not872 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not872, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.kx = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157
  %i.ky = phi ptr [ %i.kw, %.lr.ph ], [ %i.mz, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ]
  %.066832 = phi i64 [ 0, %.lr.ph ], [ %i.mx, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0389.3831 = phi ptr [ %.sroa.0389.1851, %.lr.ph ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 17 uses
  %.sroa.17.4830 = phi ptr [ %i.bs, %.lr.ph ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 25 uses
  %.sroa.42.3829 = phi ptr [ %.sroa.42.1849, %.lr.ph ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.066832
  %i.la = load ptr, ptr %i.kz, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = load ptr, ptr %i.lb, align 8
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 3
  store ptr %i.la, ptr %10, align 8
  store i64 %i.li, ptr %i.ai, align 8
  store i64 %storemerge871, ptr %i.aj, align 8
  store i64 %storemerge871, ptr %i.ak, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.lj = invoke ptr @_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141 unwind label %bb.bd ; 2 uses

_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.bu, align 8, !noalias !114 ; 2 uses
  %i.ln = load i64, ptr %i.cq, align 8, !noalias !114
  %i.lo = add i64 %i.ln, 1                        ; 2 uses
  %i.lp = load i64, ptr %i.kx, align 8, !noalias !114 ; 2 uses
  %.not.i.i142 = icmp eq ptr %.sroa.17.4830, %.sroa.42.3829
  br i1 %.not.i.i142, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.lm, ptr %.sroa.17.4830, align 8
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 8
  store i64 %i.lo, ptr %.sroa.6261.0..sroa_idx, align 8
  %.sroa.7264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 16
  store i64 %i.lp, ptr %.sroa.7264.0..sroa_idx, align 8
  %.sroa.8267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 24
  store i64 %storemerge871, ptr %.sroa.8267.0..sroa_idx, align 8
  %.sroa.9270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 32
  store ptr %i.bu, ptr %.sroa.9270.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 40
  store ptr %i.ll, ptr %.sroa.10.0..sroa_idx, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 48
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

bb.ba:                                            ; preds = %bb.ay
  %i.lr = ptrtoint ptr %.sroa.17.4830 to i64
  %i.ls = ptrtoint ptr %.sroa.0389.3831 to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 4 uses
  %i.lu = icmp eq i64 %i.lt, 9223372036854775776
  br i1 %i.lu, label %bb.bb, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc155 unwind label %.loopexit.split-lp421

.noexc155:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143: ; preds = %bb.ba
  %i.lv = sdiv exact i64 %i.lt, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i144 = call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i.i144, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = call i64 @llvm.umin.i64(i64 %i.lw, i64 192153584101141162)
  %i.lz = select i1 %i.lx, i64 192153584101141162, i64 %i.ly ; 3 uses
  %.not.i.i.i.i145 = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i145)
  %i.ma = mul nuw nsw i64 %i.lz, 48
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #27
          to label %.noexc156 unwind label %.loopexit420 ; 5 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i143
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lt ; 6 uses
  store ptr %i.lm, ptr %i.mc, align 8
  %.sroa.6261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i64 %i.lo, ptr %.sroa.6261.0..sroa_idx262, align 8
  %.sroa.7264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i64 %i.lp, ptr %.sroa.7264.0..sroa_idx265, align 8
  %.sroa.8267.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  store i64 %storemerge871, ptr %.sroa.8267.0..sroa_idx268, align 8
  %.sroa.9270.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  store ptr %i.bu, ptr %.sroa.9270.0..sroa_idx271, align 8
  %.sroa.10.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  store ptr %i.ll, ptr %.sroa.10.0..sroa_idx273, align 8
  %.not10.i.i.i.i.i.i146 = icmp eq ptr %.sroa.0389.3831, %.sroa.17.4830
  br i1 %.not10.i.i.i.i.i.i146, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151, label %.lr.ph.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i147:                            ; preds = %.noexc156, %.lr.ph.i.i.i.i.i.i147
  %.012.i.i.i.i.i.i148 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i147 ], [ %i.mb, %.noexc156 ] ; 2 uses
  %.0911.i.i.i.i.i.i149 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i.i147 ], [ %.sroa.0389.3831, %.noexc156 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i148, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i149, i64 48, i1 false), !alias.scope !117
  %i.md = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i149, i64 48 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i148, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i150 = icmp eq ptr %i.md, %.sroa.17.4830
  br i1 %.not.i.i.i.i.i.i150, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151, label %.lr.ph.i.i.i.i.i.i147, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151: ; preds = %.lr.ph.i.i.i.i.i.i147, %.noexc156
  %.0.lcssa.i.i.i.i.i.i152 = phi ptr [ %i.mb, %.noexc156 ], [ %i.me, %.lr.ph.i.i.i.i.i.i147 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i152, i64 48
  %.not.i23.i.i.i153 = icmp eq ptr %.sroa.0389.3831, null
  br i1 %.not.i23.i.i.i153, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.3831, i64 noundef %i.lt) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154: ; preds = %bb.bc, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151
  %i.mg = getelementptr inbounds nuw [48 x i8], ptr %i.mb, i64 %i.lz
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

bb.bd:                                            ; preds = %bb.ax
  %i.mh = landingpad { ptr, i32 }
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
  store ptr %i.la, ptr %.sroa.17.4830, align 8
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
  %i.mi = ptrtoint ptr %.sroa.17.4830 to i64
  %i.mj = ptrtoint ptr %.sroa.0389.3831 to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 4 uses
  %i.ml = icmp eq i64 %i.mk, 9223372036854775776
  br i1 %i.ml, label %bb.bh, label %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc171 unwind label %.loopexit.split-lp426

.noexc171:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159: ; preds = %bb.bg
  %i.mm = sdiv exact i64 %i.mk, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i160 = call i64 @llvm.umax.i64(i64 %i.mm, i64 1)
  %i.mn = add nsw i64 %.sroa.speculated.i.i.i.i160, %i.mm ; 2 uses
  %i.mo = icmp ult i64 %i.mn, %i.mm
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mn, i64 192153584101141162)
  %i.mq = select i1 %i.mo, i64 192153584101141162, i64 %i.mp ; 3 uses
  %.not.i.i.i.i161 = icmp ne i64 %i.mq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i161)
  %i.mr = mul nuw nsw i64 %i.mq, 48
  %i.ms = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #27
          to label %.noexc172 unwind label %.loopexit425 ; 5 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mk ; 5 uses
  store ptr %i.la, ptr %i.mt, align 8
  %.sroa.6.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx252, align 8
  %.sroa.7.0..sroa_idx254.a = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store i64 %storemerge871, ptr %.sroa.7.0..sroa_idx254.a, align 8
  %.sroa.8.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store i64 %storemerge871, ptr %.sroa.8.0..sroa_idx256, align 8
  %.sroa.9.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx258, i8 0, i64 16, i1 false)
  %.not10.i.i.i.i.i.i162 = icmp eq ptr %.sroa.0389.3831, %.sroa.17.4830
  br i1 %.not10.i.i.i.i.i.i162, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163

.lr.ph.i.i.i.i.i.i163:                            ; preds = %.noexc172, %.lr.ph.i.i.i.i.i.i163
  %.012.i.i.i.i.i.i164 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i163 ], [ %i.ms, %.noexc172 ] ; 2 uses
  %.0911.i.i.i.i.i.i165 = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i163 ], [ %.sroa.0389.3831, %.noexc172 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i165, i64 48, i1 false), !alias.scope !121
  %i.mu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i165, i64 48 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i164, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.mu, %.sroa.17.4830
  br i1 %.not.i.i.i.i.i.i166, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163, !llvm.loop !105

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167: ; preds = %.lr.ph.i.i.i.i.i.i163, %.noexc172
  %.0.lcssa.i.i.i.i.i.i168 = phi ptr [ %i.ms, %.noexc172 ], [ %i.mv, %.lr.ph.i.i.i.i.i.i163 ]
  %.not.i23.i.i.i169 = icmp eq ptr %.sroa.0389.3831, null
  br i1 %.not.i23.i.i.i169, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.3831, i64 noundef %i.mk) #25
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170: ; preds = %bb.bi, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i167
  %i.mw = getelementptr inbounds nuw [48 x i8], ptr %i.ms, i64 %i.mq
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173: ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170, %bb.bf
  %.sroa.42.13 = phi ptr [ %i.mw, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.42.3829, %bb.bf ]
  %.0.lcssa.i.i.i.i.i.i168.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i168, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.17.4830, %bb.bf ]
  %.sroa.0389.13 = phi ptr [ %i.ms, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.0389.3831, %bb.bf ]
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
  %.sroa.42.4 = phi ptr [ %.sroa.42.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mg, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.42.3829, %bb.az ] ; 2 uses
  %.sroa.17.5 = phi ptr [ %.sroa.17.10, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mf, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %i.lq, %bb.az ] ; 2 uses
  %.sroa.0389.4 = phi ptr [ %.sroa.0389.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mb, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.0389.3831, %bb.az ] ; 2 uses
  %i.mx = add nuw i64 %.066832, 1                 ; 2 uses
  %i.my = load ptr, ptr %i.ia, align 8
  %i.mz = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 3
  %i.ne = icmp ult i64 %i.mx, %i.nd
  br i1 %i.ne, label %bb.ax, label %.loopexit, !llvm.loop !125

.loopexit:                                        ; preds = %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119, %bb.aw, %.loopexit418, %bb.m
  %.sroa.13.2 = phi ptr [ %.sroa.13.1843, %bb.m ], [ %.sroa.13.6, %.loopexit418 ], [ %.sroa.13.6, %bb.aw ], [ %.sroa.13.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.13.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.8364.2 = phi ptr [ %.sroa.8364.1844, %bb.m ], [ %.sroa.8364.3, %.loopexit418 ], [ %.sroa.8364.3, %bb.aw ], [ %.sroa.8364.3, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.8364.3, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0361.2 = phi ptr [ %.sroa.0361.1845, %bb.m ], [ %.sroa.0361.6, %.loopexit418 ], [ %.sroa.0361.6, %bb.aw ], [ %.sroa.0361.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0361.6, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.1846, %bb.m ], [ %.sroa.16.1846, %.loopexit418 ], [ %.sroa.16.2, %bb.aw ], [ %.sroa.16.1846, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.16.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.10383.3 = phi ptr [ %.sroa.10383.1847, %bb.m ], [ %.sroa.10383.1847, %.loopexit418 ], [ %.sroa.10383.2, %bb.aw ], [ %.sroa.10383.1847, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.10383.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0379.4 = phi ptr [ %.sroa.0379.1848, %bb.m ], [ %.sroa.0379.1848, %.loopexit418 ], [ %.sroa.0379.2, %bb.aw ], [ %.sroa.0379.1848, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0379.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.42.6 = phi ptr [ %.sroa.42.1849, %bb.m ], [ %.sroa.42.1849, %.loopexit418 ], [ %.sroa.42.1849, %bb.aw ], [ %.sroa.42.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.17.6 = phi ptr [ %i.bs, %bb.m ], [ %i.bs, %.loopexit418 ], [ %i.bs, %bb.aw ], [ %.sroa.17.8, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %.sroa.0389.6 = phi ptr [ %.sroa.0389.1851, %bb.m ], [ %.sroa.0389.1851, %.loopexit418 ], [ %.sroa.0389.1851, %bb.aw ], [ %.sroa.0389.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %i.nf = icmp eq ptr %.sroa.0389.6, %.sroa.17.6
  br i1 %i.nf, label %._crit_edge, label %bb.k

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
  %i.ng = icmp eq ptr %i.bj, null
  br i1 %i.ng, label %bb.bu, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  invoke void @_ZNK2v88internal6torque4Item8ChildrenEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.4") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %i.nh)
          to label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit unwind label %bb.bt

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit: ; preds = %bb.bj
  %i.ni = load ptr, ptr %12, align 8              ; 3 uses
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.ni to i64
  %i.no = sub i64 %i.nm, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.no) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.np = load ptr, ptr %8, align 8               ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.np, %i.nr
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.oa, %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.np, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit ] ; 2 uses
  %i.ns = load ptr, ptr %.05.i.i.i.i, align 8     ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.nu to i64
  %i.nz = sub i64 %i.nx, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.nz) #25
  br label %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 40) #25
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque4RuleEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.oa, %i.nr
  br i1 %.not.i.i.i.i175, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit
  %i.ob = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.np, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal6torque6SymbolD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.ob to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.og) #25
  br label %_ZN2v88internal6torque6SymbolD2Ev.exit

_ZN2v88internal6torque6SymbolD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i.i176 = icmp eq ptr %.sroa.0361.1.lcssa, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177, label %bb.bn

bb.bn:                                            ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit
  %i.oh = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.oi = ptrtoint ptr %.sroa.0361.1.lcssa to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.1.lcssa, i64 noundef %i.oj) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177: ; preds = %_ZN2v88internal6torque6SymbolD2Ev.exit, %bb.bn
  %i.ok = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i178

.lr.ph.i.i.i.i178:                                ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ol, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i ], [ %i.ok, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177 ] ; 4 uses
  %i.ol = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.oo = load ptr, ptr %i.on, align 8
  invoke void @_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.om, ptr noundef %i.oo)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i178
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 80) #25
  %.not.i.i.i.i179 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i179, label %_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i178, !llvm.loop !127

_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImPN2v88internal6torque6SymbolEESt3setIPKNS5_4ItemESt4lessISD_ESaISD_EEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i.i, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit177
  %i.or = load ptr, ptr %7, align 8
  %i.os = load i64, ptr %i.h, align 8
end_hunk_1
