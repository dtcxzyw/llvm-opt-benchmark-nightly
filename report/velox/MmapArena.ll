Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MmapArena?download=true
inline.NumInlined: 1185
inline.NumDeleted: 532
begin_hunk_0_@_ZN8facebook5velox6memory9MmapArena12addFreeBlockEmm:bb.a
  %i.x = icmp ult i64 %i.v, %i.w
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.y = phi i1 [ %i.x, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !39
  br label %bb.j

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #23
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #23
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !48, !noalias !119 ; 2 uses
  store i64 %i.ae, ptr %5, align 16, !tbaa !41, !alias.scope !118, !noalias !117
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !48, !noalias !119
  store i64 %i.ag, ptr %i.af, align 16, !tbaa !41, !alias.scope !118, !noalias !117
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ae, ptr %i.ah, align 16, !tbaa !41, !alias.scope !118, !noalias !117
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %2, ptr %i.ai, align 16, !tbaa !41, !alias.scope !118, !noalias !117
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.17, i64 130, i64 17476, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !117
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory9MmapArena12addFreeBlockEmmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.17) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume

bb.j:                                             ; preds = %.thread.i, %bb.f
  %.sroa.018.0.i.ph = phi ptr [ %i.r, %bb.f ], [ %i.n, %.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i5 = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i.i5, label %.critedge.i14, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %bb.j, %.lr.ph.i.i.i.i6
  %.012.i.i.i.i7 = phi ptr [ %.1.i.i.i.i12, %.lr.ph.i.i.i.i6 ], [ %i.ar, %bb.j ] ; 3 uses
  %.0811.i.i.i.i8 = phi ptr [ %.19.i.i.i.i9, %.lr.ph.i.i.i.i6 ], [ %i.as, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = icmp ult i64 %i.au, %2                  ; 2 uses
  %.19.i.i.i.i9 = select i1 %i.av, ptr %.0811.i.i.i.i8, ptr %.012.i.i.i.i7 ; 6 uses
  %.1.in.v.i.i.i.i10 = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 %.1.in.v.i.i.i.i10
  %.1.i.i.i.i12 = load ptr, ptr %.1.in.i.i.i.i11, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.1.i.i.i.i12, null
  br i1 %.not.i.i.i.i13, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i6, !llvm.loop !1

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i6
  %i.aw = icmp eq ptr %.19.i.i.i.i9, %i.as
  br i1 %i.aw, label %.critedge.i14, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i9, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = icmp ult i64 %2, %i.ay
  br i1 %i.az, label %.critedge.i14, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit

.critedge.i14:                                    ; preds = %bb.k, %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, %bb.j
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i9, %bb.k ], [ %.19.i.i.i.i9, %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i ], [ %i.as, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.b, ptr %3, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ba = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit: ; preds = %bb.k, %.critedge.i14
  %.sroa.06.0.i = phi ptr [ %i.ba, %.critedge.i14 ], [ %.19.i.i.i.i9, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRmEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  ret ptr %.sroa.018.0.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox6memory9MmapArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = load i64, ptr %0, align 8, !tbaa !34
  %i.d = tail call i32 @munmap(ptr noundef %i.b, i64 noundef %i.c) #21 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEED2Ev.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN8facebook5velox6memory9MmapArena8allocateEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit58, label %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit

_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit: ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 2 uses
  %i.e = xor i64 %i.d, 63
  %i.f = lshr exact i64 -9223372036854775808, %i.d
  %i.g = icmp eq i64 %i.f, %1
  %i.h = shl i64 2, %i.e
  %.0.i.i = select i1 %i.g, i64 %1, i64 %i.h      ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %.preheader57, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp ult i64 %i.m, %.0.i.i               ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.o, label %.preheader57, label %bb.j

.preheader57:                                     ; preds = %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit, %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #21
  %i.q = sdiv i64 %i.p, 1000000                   ; 2 uses
  %invariant.op = add nsw i64 %i.q, -1000
  %7 = load atomic i64, ptr @_ZZN8facebook5velox6memory9MmapArena8allocateEmE11FB_LEM_hist acquire, align 8 ; 2 uses
  %8 = icmp sgt i64 %7, %invariant.op
  br i1 %8, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %.preheader57
  %i.r = cmpxchg ptr @_ZZN8facebook5velox6memory9MmapArena8allocateEmE11FB_LEM_hist, i64 %7, i64 %i.q seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.c, label %.loopexit58

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 1)
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.7, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %.0.i.i)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.8, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZNSolsEm.exit
  %i.y = load atomic i64, ptr %4 seq_cst, align 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.y)
          to label %_ZNSolsEm.exit37 unwind label %bb.f ; 2 uses

_ZNSolsEm.exit37:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.9, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZNSolsEm.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN8facebook5velox6memory9MmapArena13freeLookupStrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ab = load ptr, ptr %3, align 8, !tbaa !44
  %i.ac = load i64, ptr %5, align 8, !tbaa !46
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %6
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = load i64, ptr %6, align 8, !tbaa !41
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.loopexit58

bb.f:                                             ; preds = %_ZNSolsEm.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.h:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.am = icmp eq ptr %i.al, %6
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.h
  %i.an = load i64, ptr %6, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ai, %bb.f ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = atomicrmw sub ptr %i.ap, i64 %.0.i.i seq_cst, align 8 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48 ; 4 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = icmp eq i64 %i.as, %.0.i.i
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = call noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !48
  call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.bb, i64 noundef %.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit58

bb.l:                                             ; preds = %bb.j
  %i.bc = add i64 %i.aw, %.0.i.i
  %i.bd = sub i64 %i.as, %.0.i.i
  %i.be = tail call ptr @_ZN8facebook5velox6memory9MmapArena12addFreeBlockEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.bc, i64 noundef %i.bd) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = call noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !48
  call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.bh, i64 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit58

.loopexit58:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader57, %bb.l, %bb.k, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ null, %.preheader57 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #4

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6memory9MmapArena13freeLookupStrB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !128, !alias.scope !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !46, !alias.scope !129
  store i8 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !129
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133, !noalias !129 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !129 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134, !noalias !129 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !44, !alias.scope !129 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.f, align 8, !tbaa !41, !alias.scope !129
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #23
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %.sroa.013.018 = phi ptr [ %i.b, %.lr.ph ], [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 ] ; 3 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !65
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.aa)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.36, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZNSolsEm.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %.sroa.010.0.in = phi ptr [ %i.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 ], [ %.sroa.010.0, %_ZNSolsEm.exit8 ]
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !tbaa !67 ; 3 uses
  %i.ae = icmp eq ptr %.sroa.010.0, null
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.38, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.ai)
          to label %_ZNSolsEm.exit8 unwind label %bb.i

_ZNSolsEm.exit8:                                  ; preds = %bb.h
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.i, !llvm.loop !124 ; 0 uses

bb.i:                                             ; preds = %_ZNSolsEm.exit8, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.f
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.018) #27 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %._crit_edge, label %bb.e, !llvm.loop !125

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !69
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !69
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #21
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !69
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.al, %bb.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory9MmapArena15removeFreeBlockEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = call noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !48
  call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.d, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory9MmapArena4freeEPvm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.53", align 16 ; 9 uses
end_hunk_0
