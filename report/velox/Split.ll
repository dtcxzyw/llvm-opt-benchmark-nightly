inline.NumInlined: 6861
inline.NumDeleted: 2221
begin_hunk_0_@_ZN8facebook5velox4exec24FunctionSignatureBuilder10returnTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.u = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31, !inline_history !77
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.aa = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31, !inline_history !77
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %0

bb.h:                                             ; preds = %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.af
}

declare void @_ZN8facebook5velox4exec24FunctionSignatureBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(233)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !46
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !86
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec24FunctionSignatureBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %.noexc.i
  %.0.i3.i.i = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i3.i.i)
          to label %.noexc.i unwind label %bb.d, !inline_history !88

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !83

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.noexc.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31, !inline_history !89
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #34, !inline_history !89
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !71, !range !73, !noundef !74
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aa) #17
  br label %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  store i8 0, ptr %i.x, align 8, !tbaa !71
  br label %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit: ; preds = %bb.e, %bb.f
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.ab = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ag) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !66     ; 12 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #33 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store ptr null, ptr %i.s, align 8, !tbaa !37
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !41
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = add i64 %i.a, -16
  %i.v = sub i64 %i.u, %i.f                       ; 2 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.y = add i64 %i.a, -16
  %i.z = sub i64 %i.y, %i.f
  %i.aa = and i64 %i.z, -16                       ; 2 uses
  %i.ab = or disjoint i64 %i.aa, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.ab
  %scevgep36 = getelementptr i8, ptr %i.d, i64 8
  %i.ac = add i64 %i.aa, 16                       ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.d, i64 %i.ac
  %scevgep38 = getelementptr i8, ptr %i.q, i64 8
  %scevgep39 = getelementptr i8, ptr %i.q, i64 %i.ac
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ult ptr %scevgep36, %scevgep39
  %bound141 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 2305843009213693948      ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep45 = getelementptr i8, ptr %i.d, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %wide.vec47 = load <8 x ptr>, ptr %next.gep45, align 8, !tbaa !40, !alias.scope !93, !noalias !90
  store <8 x ptr> %wide.vec47, ptr %next.gep44, align 8, !tbaa !40, !alias.scope !90, !noalias !93
  store <8 x ptr> splat (ptr null), ptr %next.gep45, align 8, !tbaa !40, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader91

.lr.ph.i.i.i.preheader91:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader91, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !93, !noalias !90
  store ptr null, ptr %i.ai, align 8, !tbaa !37, !alias.scope !93, !noalias !90
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !90, !noalias !93
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !93, !noalias !90
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !98

_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.an = add i64 %i.e, -16
  %i.ao = sub i64 %i.an, %i.a                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.ao, 368
  br i1 %min.iters.check67, label %.lr.ph.i.i.i17.preheader90, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ar = add i64 %i.e, -16
  %i.as = sub i64 %i.ar, %i.a
  %i.at = and i64 %i.as, -16                      ; 4 uses
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.at
  %scevgep53 = getelementptr i8, ptr %i.au, i64 24
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %scevgep54 = getelementptr i8, ptr %i.av, i64 8
  %scevgep55 = getelementptr i8, ptr %1, i64 8
  %i.aw = getelementptr i8, ptr %1, i64 %i.at
  %scevgep56 = getelementptr i8, ptr %i.aw, i64 16
  %scevgep57 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.at
  %scevgep58 = getelementptr i8, ptr %i.ax, i64 32
  %bound059 = icmp ult ptr %i.am, %scevgep54
  %bound160 = icmp ult ptr %1, %scevgep53
  %found.conflict61 = and i1 %bound059, %bound160
  %bound062 = icmp ult ptr %scevgep55, %scevgep58
  %bound163 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %found.conflict61, %found.conflict64
  br i1 %conflict.rdx65, label %.lr.ph.i.i.i17.preheader90, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck52
  %n.vec70 = and i64 %i.aq, 2305843009213693948   ; 3 uses
  %i.ay = shl i64 %n.vec70, 4                     ; 2 uses
  %i.az = getelementptr i8, ptr %i.am, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %i.ay
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next85, %vector.body71 ] ; 2 uses
  %i.bb = shl i64 %index72, 4                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.am, i64 %i.bb
  %next.gep76 = getelementptr i8, ptr %1, i64 %i.bb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %wide.vec80 = load <8 x ptr>, ptr %next.gep76, align 8, !tbaa !40, !alias.scope !102, !noalias !99
  store <8 x ptr> %wide.vec80, ptr %next.gep75, align 8, !tbaa !40, !alias.scope !99, !noalias !102
  store <8 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !40, !alias.scope !102, !noalias !99
  %index.next85 = add nuw i64 %index72, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next85, %n.vec70
  br i1 %i.bc, label %middle.block86, label %vector.body71, !llvm.loop !104

middle.block86:                                   ; preds = %vector.body71
  %cmp.n87 = icmp eq i64 %i.aq, %n.vec70
  br i1 %cmp.n87, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader90

.lr.ph.i.i.i17.preheader90:                       ; preds = %vector.memcheck52, %.lr.ph.i.i.i17.preheader, %middle.block86
  %.012.i.i.i18.ph = phi ptr [ %i.am, %vector.memcheck52 ], [ %i.am, %.lr.ph.i.i.i17.preheader ], [ %i.az, %middle.block86 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck52 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ba, %middle.block86 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader90, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bg, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader90 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader90 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !102, !noalias !99
  store ptr null, ptr %i.bd, align 8, !tbaa !37, !alias.scope !102, !noalias !99
  store <2 x ptr> %i.be, ptr %.012.i.i.i18, align 8, !tbaa !40, !alias.scope !99, !noalias !102
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !41, !alias.scope !102, !noalias !99
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !105

_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block86, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.am, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.az, %middle.block86 ], [ %i.bg, %.lr.ph.i.i.i17 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !66
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !36
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.facebook::velox::exec::TypeSignature") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !75
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i12, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %.noexc
  %.0.i.i3 = phi ptr [ %i.n, %.noexc ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3)
          to label %.noexc unwind label %bb.c, !inline_history !106

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 104 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i1, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit, label %.lr.ph, !llvm.loop !83

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34, !inline_history !89
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit: ; preds = %.noexc
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !78
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.q = phi ptr [ %.pre, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !32
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !75, !range !73, !noundef !74
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !75
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !32
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #31, !inline_history !77
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !82

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !83
end_hunk_0
