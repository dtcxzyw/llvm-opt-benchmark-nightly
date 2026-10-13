Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintGenerator?download=true
inline.NumInlined: 10936
inline.NumDeleted: 4256
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_19AstStatTypeFunctionE:bb.a
bb.bh:                                            ; preds = %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.bi, label %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.jn = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.jh)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jo = invoke noundef ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJRS5_EEEPT_PS3_DpOT0_(ptr noundef %i.jn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.thread unwind label %bb.bl ; 0 uses

bb.bk:                                            ; preds = %bb.be
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit63

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit63

_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.bf, %bb.bg, %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !88 ; 8 uses
  %.not.i.i.i65 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i65, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 4 uses
  %i.ju = load atomic i64, ptr %i.jt acquire, align 8 ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 4294967297
  %i.jw = trunc i64 %i.ju to i32                  ; 2 uses
  br i1 %i.jv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.jt, align 8, !tbaa !94
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  store i32 0, ptr %i.jx, align 4, !tbaa !95
  %i.jy = load ptr, ptr %i.js, align 8, !tbaa !97
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #31, !inline_history !42
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !97
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #31, !inline_history !42
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.ke = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i66 = icmp eq i8 %i.ke, 0
  br i1 %.not.i.i.i.i66, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kf = add nsw i32 %i.jw, -1
  store i32 %i.kf, ptr %i.jt, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.kg = atomicrmw volatile add ptr %i.jt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i = phi i32 [ %i.jw, %bb.bp ], [ %i.kg, %bb.bq ]
  %i.kh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kh, label %bb.br, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !81

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #31
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bn, %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.ki = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !88 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.kj, null
  br i1 %.not.i.i1.i, label %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kl = load atomic i64, ptr %i.kk acquire, align 8 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 4294967297
  %i.kn = trunc i64 %i.kl to i32                  ; 2 uses
  br i1 %i.km, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.kk, align 8, !tbaa !94
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store i32 0, ptr %i.ko, align 4, !tbaa !95
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !97
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #31, !inline_history !42
  %i.ks = load ptr, ptr %i.kj, align 8, !tbaa !97
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #31, !inline_history !42
  br label %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i2.i = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i2.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kw = add nsw i32 %i.kn, -1
  store i32 %i.kw, ptr %i.kk, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.bw:                                            ; preds = %bb.bu
  %i.kx = atomicrmw volatile add ptr %i.kk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i4.i = phi i32 [ %i.kn, %bb.bv ], [ %i.kx, %bb.bw ]
  %i.ky = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ky, label %bb.bx, label %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit, !prof !81

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #31
  br label %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit

_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.kz = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 8 uses
  %.not.i.i67 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i67, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.la, align 8, !tbaa !94
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !95
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !97
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #31, !inline_history !6
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !97
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ca:                                            ; preds = %bb.by
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i68 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i68, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i = phi i32 [ %i.ld, %bb.cb ], [ %i.ln, %bb.cc ]
  %i.lo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lo, label %bb.cd, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #31
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev.exit, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret i32 1

_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit63: ; preds = %bb.ay, %bb.ba, %bb.bk, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bb, %bb.ax
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.ax ], [ %i.jp, %bb.bk ], [ %i.ix, %bb.ba ], [ %i.iy, %bb.bb ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jq, %bb.bl ], [ %i.iq, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.w, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit63, %bb.av
  %.pn24.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.av ], [ %.pn24.pn.pn.pn, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit63 ], [ %i.io, %bb.aw ], [ %i.er, %bb.w ]
  call void @_ZN4Luau19ConstraintGenerator17FunctionSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #31
  br label %bb.ce

bb.ce:                                            ; preds = %.body, %bb.au
  %.pn24.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn.pn, %.body ], [ %i.im, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZN4Luau18ReservedIdentifierD2Ev.exit45
  %.pn24.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %i.ah, %_ZN4Luau18ReservedIdentifierD2Ev.exit45 ]
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_20AstStatDeclareGlobalE(ptr noundef nonnull align 8 dereferenceable(888) initializes((800, 801)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"struct.Luau::Binding", align 8    ; 15 uses
  %5 = alloca %"struct.Luau::Symbol", align 8     ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1440
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 1, ptr %i.e, align 8, !tbaa !247
  %i.f = tail call noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.d, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !792 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1441 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !100
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.k, ptr %i.a, align 8, !tbaa !105
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !103
  %i.n = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.n, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !89
  store i8 %i.p, ptr %i.o, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !104
  %i.s = load ptr, ptr %3, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 800
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN4Luau4TypeEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit unwind label %bb.p

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit: ; preds = %bb.e
  store ptr %i.f, ptr %i.x, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.f, ptr %4, align 8, !tbaa !442
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !272
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.aa, align 8, !tbaa !443
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 10 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !104
  store i8 0, ptr %i.ac, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  store i8 0, ptr %i.af, align 8, !tbaa !349
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr null, ptr %5, align 8, !tbaa !662
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !422
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !422
  %i.al = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt8__detail9_Map_baseIN4Luau6SymbolESt4pairIKS2_NS1_7BindingEESaIS6_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit unwind label %bb.q ; 8 uses

_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 25, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac                ; 2 uses
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit
  br i1 %i.ar, label %bb.f, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit
  br i1 %i.ar, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !104 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %.not21.i.i = icmp eq ptr %4, %i.al
  br i1 %.not21.i.i, label %_ZN4Luau7BindingaSEOS0_.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  switch i64 %i.as, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !89
  store i8 %i.au, ptr %i.an, align 1, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !104
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !89
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !103
  br label %_ZN4Luau7BindingaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !103
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !104
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !104
  %i.bb = load i64, ptr %i.ac, align 8, !tbaa !89
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !89
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !89
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !103
  %i.bd = load i64, ptr %i.ad, align 8, !tbaa !104
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !104
  %i.bf = load i64, ptr %i.ac, align 8, !tbaa !89
  store i64 %i.bf, ptr %i.ao, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !103
  store i64 %i.bc, ptr %i.ac, align 8, !tbaa !89
  br label %_ZN4Luau7BindingaSEOS0_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !103
  br label %_ZN4Luau7BindingaSEOS0_.exit

_ZN4Luau7BindingaSEOS0_.exit:                     ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %i.bg = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.an, %bb.j ], [ %i.ac, %bb.k ], [ %i.aq, %bb.f ]
  store i64 0, ptr %i.ad, align 8, !tbaa !104
  store i8 0, ptr %i.bg, align 1, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bi = load i8, ptr %i.af, align 8, !tbaa !349, !range !258, !noundef !259
  %i.bj = trunc nuw i8 %i.bi to i1
  store i8 0, ptr %i.af, align 8, !tbaa !349
  br i1 %i.bj, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.l:                                             ; preds = %_ZN4Luau7BindingaSEOS0_.exit
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !89
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZN4Luau7BindingaSEOS0_.exit
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ac
end_hunk_0
begin_hunk_1_@_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_22AstStatDeclareFunctionE:bb.a
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i179
  %i.qt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.qt, %i.qn
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !607
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit178
  %i.qu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.qm, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit178 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !609
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = ptrtoint ptr %i.qu to i64
  %i.qz = sub i64 %i.qx, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.qu, i64 noundef %i.qz) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ra = load ptr, ptr %3, align 8, !tbaa !595   ; 3 uses
  %i.rb = load ptr, ptr %i.h, align 8, !tbaa !596 ; 2 uses
  %.not4.i.i.i182 = icmp eq ptr %i.ra, %i.rb
  br i1 %.not4.i.i.i182, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i183

.lr.ph.i.i.i183:                                  ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i
  %.05.i.i.i184 = phi ptr [ %i.rh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i ], [ %i.ra, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit ] ; 3 uses
  %i.rc = load ptr, ptr %.05.i.i.i184, align 8, !tbaa !103 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.05.i.i.i184, i64 16 ; 2 uses
  %i.re = icmp eq ptr %i.rc, %i.rd
  br i1 %i.re, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i185: ; preds = %.lr.ph.i.i.i183
  %i.rf = load i64, ptr %i.rd, align 8, !tbaa !89
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rg) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i185
  %i.rh = getelementptr inbounds nuw i8, ptr %.05.i.i.i184, i64 56 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.rh, %i.rb
  br i1 %.not.i.i.i186, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i183, !llvm.loop !24

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i
  %.pr.i187 = load ptr, ptr %3, align 8, !tbaa !595
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit
  %i.ri = phi ptr [ %.pr.i187, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ra, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i188 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i1.i188, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !597
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rn) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1

bb.dr:                                            ; preds = %.noexc.i, %bb.cj
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.ds:                                            ; preds = %bb.cx
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dt:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @_ZN4Luau7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.dw

bb.du:                                            ; preds = %bb.dg, %_ZN4Luau7BindingD2Ev.exit
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.df
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dt, %bb.ds
  %.pn86.pn = phi { ptr, i32 } [ %i.rp, %bb.ds ], [ %i.rq, %bb.dt ], [ %i.rr, %bb.du ], [ %i.rs, %bb.dv ] ; 2 uses
  %i.rt = load ptr, ptr %14, align 8, !tbaa !103  ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.lm
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.dw
  %i.rv = load i64, ptr %i.lm, align 8, !tbaa !89
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.dr
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.dr ], [ %.pn86.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.pn86.pn, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit144

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit144:  ; preds = %bb.cb, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142, %bb.cd, %bb.cg, %_ZN4Luau16FunctionArgumentD2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.cc, %bb.bt
  %.sroa.20240.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit156 ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cc ], [ %.sroa.20240.0.lcssa, %bb.bt ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142 ], [ null, %bb.cb ]
  %.sroa.0211.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit156 ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cc ], [ %.sroa.0211.0.lcssa, %bb.bt ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142 ], [ null, %bb.cb ]
  %.sroa.20.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit156 ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cc ], [ %.sroa.20.0.lcssa, %bb.bt ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142 ], [ null, %bb.cb ]
  %.sroa.0230.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit156 ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cc ], [ %.sroa.0230.0.lcssa, %bb.bt ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142 ], [ null, %bb.cb ]
  %.pn90.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn90, %_ZN4Luau16FunctionArgumentD2Ev.exit156 ], [ %i.kv, %bb.cd ], [ %.pn84, %bb.cg ], [ %i.ku, %bb.cc ], [ %i.jx, %bb.bt ], [ %.pn.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit142 ], [ %.pn.pn, %bb.cb ]
  %i.rx = load i8, ptr %i.dx, align 8, !tbaa !349, !range !258, !noundef !259
  %i.ry = trunc nuw i8 %i.rx to i1
  store i8 0, ptr %i.dx, align 8, !tbaa !349
  br i1 %i.ry, label %bb.dx, label %_ZN4Luau18FunctionDefinitionD2Ev.exit196

bb.dx:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit144
  %i.rz = load ptr, ptr %7, align 8, !tbaa !103   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.ee
  br i1 %i.sa, label %_ZN4Luau18FunctionDefinitionD2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i194: ; preds = %bb.dx
  %i.sb = load i64, ptr %i.ee, align 8, !tbaa !89
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #33
  br label %_ZN4Luau18FunctionDefinitionD2Ev.exit196

_ZN4Luau18FunctionDefinitionD2Ev.exit196:         ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i194, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.dy

bb.dy:                                            ; preds = %bb.br, %_ZN4Luau18FunctionDefinitionD2Ev.exit196, %bb.bs, %bb.aj
  %.sroa.20240.2 = phi ptr [ %.sroa.20240.1, %_ZN4Luau18FunctionDefinitionD2Ev.exit196 ], [ %.sroa.20240.0.lcssa, %bb.bs ], [ %.sroa.20240.0.lcssa, %bb.br ], [ %.sroa.20240.0.lcssa, %bb.aj ]
  %.sroa.0211.2 = phi ptr [ %.sroa.0211.1, %_ZN4Luau18FunctionDefinitionD2Ev.exit196 ], [ %.sroa.0211.0.lcssa, %bb.bs ], [ %.sroa.0211.0.lcssa, %bb.br ], [ %.sroa.0211.0.lcssa, %bb.aj ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %_ZN4Luau18FunctionDefinitionD2Ev.exit196 ], [ %.sroa.20.0.lcssa, %bb.bs ], [ %.sroa.20.0.lcssa, %bb.br ], [ %.sroa.20.0.lcssa, %bb.aj ]
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.1, %_ZN4Luau18FunctionDefinitionD2Ev.exit196 ], [ %.sroa.0230.0.lcssa, %bb.bs ], [ %.sroa.0230.0.lcssa, %bb.br ], [ %.sroa.0230.0.lcssa, %bb.aj ]
  %.pn90.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn90.pn.pn.pn.pn, %_ZN4Luau18FunctionDefinitionD2Ev.exit196 ], [ %i.jw, %bb.bs ], [ %i.jv, %bb.br ], [ %i.dq, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit267, %.loopexit.split-lp268, %bb.dy
  %.sroa.20240.3 = phi ptr [ %.sroa.20240.2, %bb.dy ], [ %.sroa.20240.0.lcssa, %.loopexit.split-lp268 ], [ %.sroa.20240.0.lcssa, %.loopexit267 ] ; 2 uses
  %.sroa.0211.3 = phi ptr [ %.sroa.0211.2, %bb.dy ], [ %.sroa.0211.0304, %.loopexit.split-lp268 ], [ %.sroa.0211.0304, %.loopexit267 ] ; 3 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.2, %bb.dy ], [ %.sroa.20.0306, %.loopexit.split-lp268 ], [ %.sroa.20.0306, %.loopexit267 ]
  %.sroa.0230.3 = phi ptr [ %.sroa.0230.2, %bb.dy ], [ %.sroa.0230.0.lcssa, %.loopexit.split-lp268 ], [ %.sroa.0230.0.lcssa, %.loopexit267 ] ; 2 uses
  %.pn100 = phi { ptr, i32 } [ %.pn90.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dy ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp268 ], [ %lpad.loopexit269, %.loopexit267 ] ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %.sroa.0211.3, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sd = ptrtoint ptr %.sroa.20.3 to i64
  %i.se = ptrtoint ptr %.sroa.0211.3 to i64
  %i.sf = sub i64 %i.sd, %i.se
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0211.3, i64 noundef %i.sf) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198: ; preds = %.loopexit272, %.loopexit.split-lp273, %bb.ea, %bb.dz, %.thread
  %.sroa.20240.4 = phi ptr [ %.sroa.20240.3, %bb.ea ], [ %.sroa.20240.3, %bb.dz ], [ %.sroa.20240.0.lcssa, %.thread ], [ %.sroa.13236.0299, %.loopexit272 ], [ %.sroa.13236.0299, %.loopexit.split-lp273 ]
  %.sroa.0230.4 = phi ptr [ %.sroa.0230.3, %bb.ea ], [ %.sroa.0230.3, %bb.dz ], [ %.sroa.0230.0.lcssa, %.thread ], [ %.sroa.0230.0300, %.loopexit272 ], [ %.sroa.0230.0300, %.loopexit.split-lp273 ] ; 3 uses
  %.pn102 = phi { ptr, i32 } [ %.pn100, %bb.ea ], [ %.pn100, %bb.dz ], [ %i.bn, %.thread ], [ %lpad.loopexit274, %.loopexit272 ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp273 ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0230.4, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198
  %i.sg = ptrtoint ptr %.sroa.20240.4 to i64
  %i.sh = ptrtoint ptr %.sroa.0230.4 to i64
  %i.si = sub i64 %i.sg, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0230.4, i64 noundef %i.si) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200:  ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198.thread, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198, %bb.eb
  %.pn102260 = phi { ptr, i32 } [ %i.ag, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198.thread ], [ %.pn102, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit198 ], [ %.pn102, %bb.eb ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200, %bb.g
  %.pn102.pn = phi { ptr, i32 } [ %.pn102260, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn102.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_24AstStatDeclareExternTypeE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %4 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.Luau::TypePack", align 8   ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %7 = alloca %"struct.Luau::CodeTooComplex", align 1 ; 3 uses
  %.sroa.0630 = alloca %"struct.Luau::Location", align 8 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %9 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::optional.856", align 8 ; 16 uses
  %13 = alloca %"class.Luau::Variant.669", align 8 ; 8 uses
  %14 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 10 uses
  %15 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %16 = alloca %"struct.Luau::GenericError", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %18 = alloca %"struct.Luau::ExternType", align 8 ; 26 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::map", align 8         ; 8 uses
  %21 = alloca %"class.std::vector.398", align 8  ; 3 uses
  %22 = alloca %"class.std::shared_ptr.753", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"struct.Luau::TableType", align 8 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %26 = alloca %"class.std::optional.868", align 8 ; 11 uses
  %27 = alloca %"struct.Luau::FunctionArgument", align 8 ; 10 uses
  %28 = alloca %"struct.Luau::FunctionDefinition", align 8 ; 17 uses
  %29 = alloca %"struct.Luau::Property", align 8  ; 20 uses
  %30 = alloca %"struct.Luau::Property", align 8  ; 13 uses
  %31 = alloca %"struct.Luau::Property", align 8  ; 13 uses
  %32 = alloca %"struct.Luau::Property", align 8  ; 13 uses
  %33 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %34 = alloca %"struct.Luau::IntersectionType", align 8 ; 8 uses
  %35 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %36 = alloca %"struct.Luau::GenericError", align 8 ; 10 uses
  %37 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %38 = alloca %"struct.Luau::IntersectionType", align 8 ; 8 uses
  %39 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %40 = alloca %"struct.Luau::GenericError", align 8 ; 10 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !657  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !100
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i64 %i.n, ptr %i.g, align 8, !tbaa !105
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc197 unwind label %bb.g  ; 2 uses

.noexc197:                                        ; preds = %.noexc.i
  store ptr %i.p, ptr %10, align 8, !tbaa !103
  %i.q = load i64, ptr %i.g, align 8, !tbaa !105
  store i64 %i.q, ptr %i.l, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc197, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc197 ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !89
  store i8 %i.s, ptr %i.r, align 1, !tbaa !89
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !104
  %i.v = load ptr, ptr %10, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.y = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit unwind label %bb.h ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit: ; preds = %bb.f
  %i.z = load ptr, ptr %10, align 8, !tbaa !103   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !89
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.ad = icmp eq ptr %i.y, null
  br i1 %i.ad, label %bb.hj, label %bb.i

bb.g:                                             ; preds = %.noexc.i, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %10, align 8, !tbaa !103  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.h
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !89
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.hk

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !330
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !358
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !844, !range !258, !noundef !259
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.av

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !421 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.at, ptr %11, align 8, !tbaa !100
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc204 unwind label %bb.w

.noexc204:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 %i.av, ptr %i.f, align 8, !tbaa !105
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i203, label %._crit_edge.i.i202

.noexc.i203:                                      ; preds = %bb.l
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc205 unwind label %bb.w  ; 2 uses

.noexc205:                                        ; preds = %.noexc.i203
  store ptr %i.ax, ptr %11, align 8, !tbaa !103
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !105
  store i64 %i.ay, ptr %i.at, align 8, !tbaa !89
  br label %._crit_edge.i.i202

._crit_edge.i.i202:                               ; preds = %.noexc205, %bb.l
  %i.az = phi ptr [ %i.ax, %.noexc205 ], [ %i.at, %bb.l ] ; 2 uses
  switch i64 %i.av, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i202
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !89
end_hunk_1
begin_hunk_2_@_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_24AstStatDeclareExternTypeE:bb.a
  %.not.i.i.i.i.i.i.i.i495 = icmp eq ptr %i.aol, null
  br i1 %.not.i.i.i.i.i.i.i.i495, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i496, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aom = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !605
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = ptrtoint ptr %i.aol to i64
  %i.aoq = sub i64 %i.aoo, %i.aop
  call void @_ZdlPvm(ptr noundef nonnull %i.aol, i64 noundef %i.aoq) #33
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i496

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i496: ; preds = %bb.hh, %bb.hg
  %i.aor = load ptr, ptr %12, align 8, !tbaa !601 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i497 = icmp eq ptr %i.aor, null
  br i1 %.not.i.i.i1.i.i.i.i.i497, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit498, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i496
  %i.aos = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !600
  %i.aou = ptrtoint ptr %i.aot to i64
  %i.aov = ptrtoint ptr %i.aor to i64
  %i.aow = sub i64 %i.aou, %i.aov
  call void @_ZdlPvm(ptr noundef nonnull %i.aor, i64 noundef %i.aow) #33
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit498

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit498: ; preds = %.critedge, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i496, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.aox = load ptr, ptr %11, align 8, !tbaa !103 ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.at
  br i1 %i.aoy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499: ; preds = %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit498
  %i.aoz = load i64, ptr %i.at, align 8, !tbaa !89
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501: ; preds = %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i32 1

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494 ], [ %.pn143.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ]
  resume { ptr, i32 } %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.Luau::overloaded.882", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load i64, ptr %i.c, align 8, !tbaa !742
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !744  ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !744  ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.l = load i64, ptr %i.k, align 8, !tbaa !743
  %i.m = add i64 %i.l, -1                         ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !745
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.q, %bb.c ], [ %i.x, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.m            ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.01929.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !744  ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq ptr %i.t, %i.i
  br i1 %i.v, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.x = add i64 %i.w, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.w, %i.m
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !37

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !692
  store ptr %i.z, ptr %i.a, align 8, !tbaa !692
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !665 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !666 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ad, 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not21 = icmp eq i64 %i.ad, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.h

._crit_edge:                                      ; preds = %"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.h:                                             ; preds = %.lr.ph, %"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit"
  %.01722 = phi ptr [ %i.ab, %.lr.ph ], [ %i.aj, %"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !1466
  store ptr %0, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !668
  store ptr %1, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !465
  store ptr %i.a, ptr %i.af, align 8, !tbaa !1466
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !668
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !465
  %i.ag = load i32, ptr %.01722, align 8, !tbaa !672
  %i.ah = getelementptr inbounds nuw i8, ptr %.01722, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %call.0.i, label %call.1.i

call.0.i:                                         ; preds = %bb.h
  call fastcc void @"_ZN4LuauL8fnVisitVINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEKNS_16AstClassPropertyEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE"(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ah), !inline_history !1465
  br label %"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit"

call.1.i:                                         ; preds = %bb.h
  call fastcc void @"_ZN4LuauL8fnVisitVINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEKNS_14AstClassMethodEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE"(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ah), !inline_history !1465
  br label %"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit"

"_ZN4Luau5visitINS_10overloadedIJZNS_19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatClassEE3$_0ZNS2_5visitES7_S9_E3$_1EEEJNS_16AstClassPropertyENS_14AstClassMethodEEEEDaOT_RKNS_7VariantIJDpT0_EEE.exit": ; preds = %call.0.i, %call.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.01722, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.h

_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %._crit_edge
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatErrorE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not21 = icmp eq i64 %i.d, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !858  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !859  ; 2 uses
  %.idx28 = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx28
  %.not2023 = icmp eq i64 %i.i, 0
  br i1 %.not2023, label %._crit_edge27, label %.lr.ph26

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.022, align 8, !tbaa !432
  %i.l = tail call noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge27:                                    ; preds = %.lr.ph26, %._crit_edge
  ret i32 1

.lr.ph26:                                         ; preds = %._crit_edge, %.lr.ph26
  %.01924 = phi ptr [ %i.p, %.lr.ph26 ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.n = load ptr, ptr %.01924, align 8, !tbaa !777
  %i.o = tail call { ptr, ptr } @_ZN4Luau19ConstraintGenerator5checkERKSt10shared_ptrINS_5ScopeEEPNS_7AstExprESt8optionalIPKNS_4TypeEEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.n, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01924, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.p, %i.j
  br i1 %.not20, label %._crit_edge27, label %.lr.ph26
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator11resolveTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbbNS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(888) initializes((800, 801)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %5, ptr %i.a, align 8, !tbaa !247
  %i.b = tail call noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  ret ptr %i.b
}

declare void @_ZN4Luau7TypeIdsC1ESt16initializer_listIPKNS_4TypeEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau19ConstraintGenerator15InferredBindingD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !250
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator9checkPackERKSt10shared_ptrINS_5ScopeEENS_8AstArrayIPNS_7AstExprEEERKSt6vectorISt8optionalIPKNS_4TypeEESaISF_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::InferencePack") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::TypePack", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.822", align 8   ; 8 uses
  %8 = alloca %"struct.Luau::InferencePack", align 8 ; 7 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.a = add i64 %4, -1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.g = icmp eq ptr %.sroa.082.1, %.sroa.10.1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = trunc nuw i8 %.sroa.581.1 to i1
  br i1 %i.h, label %_ZNSt6vectorIPN4Luau7VariantIJNS0_8VariadicENS0_8NegationENS0_11ConjunctionENS0_11DisjunctionENS0_11EquivalenceENS0_11PropositionEEEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.082.0.lcssa176185 = phi ptr [ null, %.thread ], [ %.sroa.082.1, %bb.b ]
  %.sroa.14.0.lcssa177184 = phi ptr [ null, %.thread ], [ %.sroa.14.1, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !330
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !353
  br label %_ZNSt6vectorIPN4Luau7VariantIJNS0_8VariadicENS0_8NegationENS0_11ConjunctionENS0_11DisjunctionENS0_11EquivalenceENS0_11PropositionEEEESaIS9_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124
  store ptr %.sroa.082.1, ptr %6, align 8, !tbaa !249
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.10.1, ptr %i.o, align 8, !tbaa !391
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %.sroa.14.1, ptr %i.p, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.sroa.080.1, ptr %i.q, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 %.sroa.581.1, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.r = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %i.n, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %6, align 8, !tbaa !249    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau7VariantIJNS0_8VariadicENS0_8NegationENS0_11ConjunctionENS0_11DisjunctionENS0_11EquivalenceENS0_11PropositionEEEESaIS9_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !250
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #33
  br label %_ZNSt6vectorIPN4Luau7VariantIJNS0_8VariadicENS0_8NegationENS0_11ConjunctionENS0_11DisjunctionENS0_11EquivalenceENS0_11PropositionEEEESaIS9_EED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !249    ; 3 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i3.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit56, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !250
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit56

bb.i:                                             ; preds = %.lr.ph, %bb.ab
  %.0139 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.ab ] ; 7 uses
  %.sroa.080.0138 = phi ptr [ undef, %.lr.ph ], [ %.sroa.080.1, %bb.ab ]
  %.sroa.581.0137 = phi i8 [ 0, %.lr.ph ], [ %.sroa.581.1, %bb.ab ]
  %.sroa.14.0136 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %bb.ab ] ; 5 uses
  %.sroa.10.0135 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %bb.ab ] ; 4 uses
  %.sroa.082.0134 = phi ptr [ null, %.lr.ph ], [ %.sroa.082.1, %bb.ab ] ; 9 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0139
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !777 ; 2 uses
  %i.af = icmp ult i64 %.0139, %i.a
  br i1 %i.af, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !773
  %i.ah = load ptr, ptr %5, align 8, !tbaa !786   ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  %i.am = icmp ult i64 %.0139, %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0139 ; 2 uses
  %.sroa.077.0.copyload = load ptr, ptr %i.an, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.578.0.copyload = load i8, ptr %.sroa.578.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.578.0 = phi i8 [ %.sroa.578.0.copyload, %bb.k ], [ 0, %bb.j ]
  %.sroa.077.0 = phi ptr [ %.sroa.077.0.copyload, %bb.k ], [ undef, %bb.j ]
  %i.ao = invoke { ptr, ptr } @_ZN4Luau19ConstraintGenerator5checkERKSt10shared_ptrINS_5ScopeEEPNS_7AstExprESt8optionalIPKNS_4TypeEEbb(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ae, ptr %.sroa.077.0, i8 %.sroa.578.0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit96

bb.m:                                             ; preds = %bb.l
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.10.0135, %.sroa.14.0136
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ap, ptr %.sroa.10.0135, align 8, !tbaa !358
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = ptrtoint ptr %.sroa.14.0136 to i64
  %i.ar = ptrtoint ptr %.sroa.082.0134 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.p, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.loopexit.split-lp97

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #35
          to label %.noexc39 unwind label %.loopexit96 ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %i.ap, ptr %i.bb, align 8, !tbaa !358
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.q, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

end_hunk_2
begin_hunk_3_@_ZN4Luau19ConstraintGenerator18checkAstExprBinaryERKSt10shared_ptrINS_5ScopeEERKNS_8LocationENS_13AstExprBinary2OpEPNS_7AstExprESC_St8optionalIPKNS_4TypeEE:bb.a

_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit291: ; preds = %bb.cj
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !330
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !901
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.cl:                                            ; preds = %bb.ci
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = load i32, ptr %41, align 8, !tbaa !355
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE9tableDtorE, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !78
  invoke void %i.pq(ptr noundef nonnull %i.oy)
          to label %.body unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pr = landingpad { ptr, i32 }
          catch ptr null
  %i.ps = extractvalue { ptr, i32 } %i.pr, 0
  call void @__clang_call_terminate(ptr %i.ps) #32
  unreachable

bb.cn:                                            ; preds = %bb.a, %bb.a
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !330
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 56
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !901
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.co:                                            ; preds = %bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.py, ptr noundef nonnull align 8 dereferenceable(32) %42) #34
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  unreachable

bb.cr:                                            ; preds = %bb.co
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.cs:                                            ; preds = %bb.cp
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = load ptr, ptr %42, align 8, !tbaa !103  ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cs
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !89
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.cr
  %.pn = phi { ptr, i32 } [ %i.pz, %bb.cr ], [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.qa, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %.body

bb.ct:                                            ; preds = %bb.a
  unreachable

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.bp, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit277, %bb.bi, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit262, %bb.bb, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit247, %bb.au, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit232, %bb.an, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit217, %bb.ag, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit202, %bb.z, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit187, %bb.s, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit172, %bb.l, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit157, %bb.e, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.cn, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit291, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit289, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit287, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit
  %.sroa.0329.0 = phi ptr [ %i.pw, %bb.cn ], [ %i.m, %bb.e ], [ %i.av, %bb.l ], [ %i.ce, %bb.s ], [ %i.dn, %bb.z ], [ %i.ew, %bb.ag ], [ %i.gf, %bb.an ], [ %i.ho, %bb.au ], [ %i.ix, %bb.bb ], [ %i.kg, %bb.bi ], [ %i.na, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit ], [ %i.nv, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit287 ], [ %i.oq, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit289 ], [ %i.pl, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit291 ], [ %i.m, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ], [ %i.av, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit157 ], [ %i.ce, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit172 ], [ %i.dn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit187 ], [ %i.ew, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit202 ], [ %i.gf, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit217 ], [ %i.ho, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit232 ], [ %i.ix, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit247 ], [ %i.kg, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit262 ], [ %i.lp, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit277 ], [ %i.lp, %bb.bp ]
  %.sroa.16.0 = load ptr, ptr %7, align 8, !tbaa !491
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0329.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.16.0, 1
  ret { ptr, ptr } %.fca.1.insert

.body:                                            ; preds = %bb.cl, %bb.cg, %bb.cb, %bb.bw, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit282, %bb.bs, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit267, %bb.bl, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit252, %bb.be, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit237, %bb.ax, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit222, %bb.aq, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit207, %bb.aj, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit192, %bb.ac, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit177, %bb.v, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit162, %bb.o, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit147, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn141.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %bb.h ], [ %i.bh, %bb.o ], [ %i.cq, %bb.v ], [ %i.dz, %bb.ac ], [ %i.fi, %bb.aj ], [ %i.gr, %bb.aq ], [ %i.ia, %bb.ax ], [ %i.jj, %bb.be ], [ %i.ks, %bb.bl ], [ %i.mb, %bb.bs ], [ %i.nb, %bb.bw ], [ %i.nw, %bb.cb ], [ %i.or, %bb.cg ], [ %i.ia, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit237 ], [ %i.pm, %bb.cl ], [ %i.y, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit147 ], [ %i.dz, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit192 ], [ %i.mb, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit282 ], [ %i.bh, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit162 ], [ %i.fi, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit207 ], [ %i.gr, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit222 ], [ %i.cq, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit177 ], [ %i.jj, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit252 ], [ %i.ks, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %.pn141.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstStatEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1488 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !905  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !432    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !432  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !1489
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !432  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1487

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !905
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !432    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1489  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !432 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !432 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !907
  %i.al = load i64, ptr %i.a, align 8, !tbaa !1488
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !1488
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !432 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

declare noundef ptr @_ZN4Luau15RefinementArena8negationEPNS_7VariantIJNS_8VariadicENS_8NegationENS_11ConjunctionENS_11DisjunctionENS_11EquivalenceENS_11PropositionEEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator31resolveGenericDefaultParametersERKSt10shared_ptrINS_5ScopeEEPNS_16AstStatTypeAliasERKNS_7TypeFunE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.Luau::TypeFun", align 8    ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1492
  %.not79 = icmp eq i64 %i.f, 0
  br i1 %.not79, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

.preheader:                                       ; preds = %_ZN4Luau7TypeFunD2Ev.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1493
  %.not80 = icmp eq i64 %i.n, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7TypeFunD2Ev.exit
  %.076 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN4Luau7TypeFunD2Ev.exit ] ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !1494
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.076
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !723  ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !601
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.076 ; 3 uses
  %.sroa.061.0.copyload = load ptr, ptr %i.x, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.562.0.copyload = load ptr, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.663.0.copyload = load i8, ptr %.sroa.663.0..sroa_idx, align 8
  %i.y = trunc nuw i8 %.sroa.663.0.copyload to i1
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !728 ; 2 uses
  %.not38 = icmp eq ptr %i.aa, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %.sroa.562.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i8 1, ptr %i.h, align 8, !tbaa !247
  %i.ac = call noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aa, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !792
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !358
  %i.ad = call noundef ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJS5_EEEPT_PS3_DpOT0_(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, i8 0, i64 48, i1 false)
  store ptr %.sroa.061.0.copyload, ptr %i.i, align 8, !tbaa !590
  store i8 0, ptr %i.j, align 8, !tbaa !578
  %i.ae = load ptr, ptr %1, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !725 ; 4 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !100
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %.loopexit.split-lp66

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !105
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %.loopexit65 ; 2 uses

.noexc42:                                         ; preds = %.noexc.i
  store ptr %i.ak, ptr %5, align 8, !tbaa !103
  %i.al = load i64, ptr %i.b, align 8, !tbaa !105
  store i64 %i.al, ptr %i.k, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc42, %bb.g
  %i.am = phi ptr [ %i.ak, %.noexc42 ], [ %i.k, %bb.g ] ; 2 uses
  switch i64 %i.ai, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !89
  store i8 %i.an, ptr %i.am, align 1, !tbaa !89
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %i.ag, i64 %i.ai, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !104
  %i.ap = load ptr, ptr %5, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.as = invoke noundef nonnull align 8 dereferenceable(76) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N4Luau7TypeFunEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixEOS5_.exit unwind label %bb.m ; 6 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixEOS5_.exit: ; preds = %bb.j
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !601 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !600
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixEOS5_.exit
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #33
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.k, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixEOS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !611 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !605
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ba, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i, label %_ZN4Luau7TypeFunaSEOS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #33
  br label %_ZN4Luau7TypeFunaSEOS0_.exit

_ZN4Luau7TypeFunaSEOS0_.exit:                     ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, ptr noundef nonnull align 8 dereferenceable(28) %i.i, i64 28, i1 false)
  %i.bh = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.k
  br i1 %i.bi, label %_ZN4Luau7TypeFunD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit
  %i.bj = load i64, ptr %i.k, align 8, !tbaa !89
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZN4Luau7TypeFunD2Ev.exit

_ZN4Luau7TypeFunD2Ev.exit:                        ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pre = load i64, ptr %i.e, align 8, !tbaa !1492
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bl = add nuw i64 %.076, 1                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.pre
  br i1 %i.bm, label %bb.b, label %.preheader, !llvm.loop !1490

.loopexit65:                                      ; preds = %.noexc.i
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

.loopexit.split-lp66:                             ; preds = %bb.f
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.m:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.k
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.m
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !89
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.m, %.loopexit65, %.loopexit.split-lp66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.pn39 = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp66 ], [ %lpad.loopexit67, %.loopexit65 ], [ %i.bn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN4Luau7TypeFunD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %.preheader
  ret void

bb.n:                                             ; preds = %.lr.ph78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.03077 = phi i64 [ 0, %.lr.ph78 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 3 uses
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !1495
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.03077
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !730 ; 2 uses
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.03077 ; 3 uses
  %.sroa.059.0.copyload = load ptr, ptr %i.bw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bx = trunc nuw i8 %.sroa.6.0.copyload to i1
  br i1 %i.bx, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !735 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %.sroa.5.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i8 1, ptr %i.q, align 8, !tbaa !247
  %i.cb = call noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bz, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !828
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !356
  %i.cc = call noundef ptr @_ZN4Luau15emplaceTypePackINS_9Unifiable5BoundIPKNS_11TypePackVarEEEJS5_EEEPT_PS3_DpOT0_(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = load ptr, ptr %1, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !732 ; 4 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !100
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !105
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i48, label %._crit_edge.i.i47

.noexc.i48:                                       ; preds = %bb.s
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc50 unwind label %.loopexit ; 2 uses

.noexc50:                                         ; preds = %.noexc.i48
  store ptr %i.cj, ptr %6, align 8, !tbaa !103
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.ck, ptr %i.r, align 8, !tbaa !89
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %.noexc50, %bb.s
  %i.cl = phi ptr [ %i.cj, %.noexc50 ], [ %i.r, %bb.s ] ; 2 uses
  switch i64 %i.ch, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i47
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !89
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !89
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %i.cf, i64 %i.ch, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i47
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  store i64 %i.cn, ptr %i.s, align 8, !tbaa !104
  %i.co = load ptr, ptr %6, align 8, !tbaa !103
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 544
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN4Luau11TypePackVarEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau11TypePackVarESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit unwind label %bb.w

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau11TypePackVarESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit: ; preds = %bb.v
  store ptr %.sroa.059.0.copyload, ptr %i.cr, align 8, !tbaa !356
  %i.cs = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.r
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau11TypePackVarESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit
  %i.cu = load i64, ptr %i.r, align 8, !tbaa !89
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau11TypePackVarESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.cw = add nuw i64 %.03077, 1                  ; 2 uses
  %i.cx = load i64, ptr %i.m, align 8, !tbaa !1493
  %i.cy = icmp ult i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.n, label %._crit_edge, !llvm.loop !1491

.loopexit:                                        ; preds = %.noexc.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.w:                                             ; preds = %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.r
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.w
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !89
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.w, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %.pn = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJS5_EEEPT_PS3_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !379
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void %i.d(ptr noundef nonnull %i.e), !inline_history !1496
  store i32 0, ptr %0, align 8, !tbaa !379
  %i.f = load ptr, ptr %1, align 8, !tbaa !358
  store ptr %i.f, ptr %i.e, align 8, !tbaa !381
  ret ptr %i.e
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau15emplaceTypePackINS_9Unifiable5BoundIPKNS_11TypePackVarEEEJS5_EEEPT_PS3_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE7emplaceIS6_JS5_EEERT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %i.a
}

declare noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbbNS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(888) initializes((800, 801)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %5, ptr %i.a, align 8, !tbaa !247
  %i.b = tail call noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  ret ptr %i.b
}

declare noundef zeroext i1 @_ZN4Luau11occursCheckEPKNS_4TypeES2_(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJRKS5_EEEPT_PS3_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !379
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void %i.d(ptr noundef nonnull %i.e), !inline_history !1497
  store i32 0, ptr %0, align 8, !tbaa !379
  %i.f = load ptr, ptr %1, align 8, !tbaa !358
  store ptr %i.f, ptr %i.e, align 8, !tbaa !381
  ret ptr %i.e
}

declare noundef ptr @_ZNK4Luau11BlockedType8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare ptr @_ZNK4Luau13DataFlowGraph6getDefEPKNS_20AstStatDeclareGlobalE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Luau19ConstraintGenerator23updateRValueRefinementsEPNS_5ScopeENS_7NotNullIKNS_3DefEEEPKNS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0, ptr noundef %1, ptr %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::optional.980", align 8 ; 6 uses
  %5 = alloca %"class.Luau::Variant.988", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %2, ptr %i.a, align 8, !tbaa !449
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_3DefEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %3, ptr %i.c, align 8, !tbaa !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235
  call void @_ZNK4Luau13DataFlowGraph16getSymbolFromDefEPKNS_3DefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.980") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1499, !range !258, !noundef !259
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i32 0, ptr %5, align 8, !tbaa !909
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !910
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4Luau7VariantIJNS1_6SymbolENS1_5FieldEEEESt4pairIKS5_PKNS1_4TypeEESaISB_ENS_10_Select1stESt8equal_toIS5_ENS1_12LValueHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt13unordered_mapIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEEPKNS0_4TypeENS0_12LValueHasherESt8equal_toIS4_ESaISt4pairIKS4_S7_EEEixEOS4_.exit unwind label %bb.d

_ZNSt13unordered_mapIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEEPKNS0_4TypeENS0_12LValueHasherESt8equal_toIS4_ESaISt4pairIKS4_S7_EEEixEOS4_.exit: ; preds = %bb.b
  store ptr %3, ptr %i.k, align 8, !tbaa !358
  %i.l = load i32, ptr %5, align 8, !tbaa !909
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEE9tableDtorE, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  invoke void %i.o(ptr noundef nonnull %i.j)
          to label %_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_mapIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEEPKNS0_4TypeENS0_12LValueHasherESt8equal_toIS4_ESaISt4pairIKS4_S7_EEEixEOS4_.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEEPKNS0_4TypeENS0_12LValueHasherESt8equal_toIS4_ESaISt4pairIKS4_S7_EEEixEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i32, ptr %5, align 8, !tbaa !909
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEE9tableDtorE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  invoke void %i.v(ptr noundef nonnull %i.j)
          to label %_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEED2Ev.exit6 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEED2Ev.exit6: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

declare void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.856") align 8, ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !846, !range !258, !noundef !259
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !846
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !611  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !605
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #33
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !601    ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !600
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, %bb.d
  ret void
}

declare void @_ZN4Luau9TableTypeC1ENS_10TableStateENS_9TypeLevelEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(328), i32 noundef, i64, ptr noundef) unnamed_addr #9

declare void @_ZN4Luau8PropertyC1Ev(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #9

declare void @_ZN4Luau8Property9writeonlyEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"struct.Luau::Property") align 8, ptr noundef) local_unnamed_addr #9

declare void @_ZN4Luau8Property2rwEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"struct.Luau::Property") align 8, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_16IntersectionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 14 uses
  %3 = alloca %"class.Luau::Variant.563", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 14, ptr %3, align 8, !tbaa !379
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 14, ptr %2, align 8, !tbaa !379
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !265
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.c, ptr %i.f, align 8, !tbaa !250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.g, align 8, !tbaa !412
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !349
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.i, align 8, !tbaa !413
  %i.j = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.h, align 8, !tbaa !349, !range !258, !noundef !259
  %i.l = trunc nuw i8 %i.k to i1
  store i8 0, ptr %i.h, align 8, !tbaa !349
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !89
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.s = load i32, ptr %2, align 8, !tbaa !379
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  invoke void %i.v(ptr noundef nonnull %i.d)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.y = load i32, ptr %3, align 8, !tbaa !379
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  invoke void %i.ab(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.j

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #31
  %i.af = load i32, ptr %3, align 8, !tbaa !379
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78
  invoke void %i.ai(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListEbbNS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(888) initializes((800, 801)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %5, ptr %i.a, align 8, !tbaa !247
  %i.b = tail call noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  ret ptr %i.b
}

declare void @_ZN4Luau12FunctionTypeC1ENS_9TypeLevelESt6vectorIPKNS_4TypeESaIS5_EES2_IPKNS_11TypePackVarESaISA_EESA_SA_St8optionalINS_18FunctionDefinitionEEb(ptr noundef nonnull align 8 dereferenceable(264), i64, ptr noundef align 8, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef align 8, i1 noundef zeroext) unnamed_addr #9

declare noundef zeroext i1 @_ZNK4Luau22AstStatDeclareFunction17isCheckedFunctionEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #9

declare noundef ptr @_ZNK4Luau22AstStatDeclareFunction12getAttributeENS_7AstAttr4TypeE(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #9

declare void @_ZNK4Luau7AstAttr14deprecatedInfoEv(ptr dead_on_unwind writable sret(%"struct.Luau::AstAttr::DeprecatedInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7AstAttr14DeprecatedInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !349, !range !258, !noundef !259
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !349
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !89
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !349, !range !258, !noundef !259
  %i.l = trunc nuw i8 %i.k to i1
  store i8 0, ptr %i.j, align 8, !tbaa !349
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !89
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !396
  %i.d = load ptr, ptr %0, align 8, !tbaa !394
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 56
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !394    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !395  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !415, !alias.scope !1503, !noalias !1504
  %i.t = load i8, ptr %i.r, align 8, !tbaa !415, !range !258, !alias.scope !1504, !noalias !1503, !noundef !259
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !1503, !noalias !1504
  %i.w = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1504, !noalias !1503 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !104, !alias.scope !1504, !noalias !1503 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false), !alias.scope !1505
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !1503, !noalias !1504
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !89, !alias.scope !1504, !noalias !1503
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !89, !alias.scope !1503, !noalias !1504
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !104, !alias.scope !1504, !noalias !1503
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !104, !alias.scope !1503, !noalias !1504
  store ptr %i.x, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1504, !noalias !1503
  store i64 0, ptr %i.af, align 8, !tbaa !104, !alias.scope !1504, !noalias !1503
  store i8 0, ptr %i.x, align 8, !tbaa !89, !alias.scope !1504, !noalias !1503
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !272, !alias.scope !1505
  store i8 1, ptr %i.s, align 8, !tbaa !415, !alias.scope !1503, !noalias !1504
  br label %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.r, align 8, !tbaa !415, !alias.scope !1504, !noalias !1503
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.aj, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !48

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aISt8optionalIN4Luau16FunctionArgumentEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !394
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split, %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit
  %i.al = phi ptr [ %.pr, %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !396
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #33
  br label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !394
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !395
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %1
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !396
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

declare ptr @_ZNK4Luau13DataFlowGraph6getDefEPKNS_22AstStatDeclareFunctionE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator9checkPackERKSt10shared_ptrINS_5ScopeEEPNS_11AstExprCallE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::InferencePack") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN4Luau12_GLOBAL__N_110checkpointEPKNS_19ConstraintGeneratorE.exit:
  %i.a = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !257, !range !258, !noundef !259
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink4.in.i = select i1 %i.b, ptr %i.g, ptr %i.d
  %.sink3.in.i = select i1 %i.b, ptr %i.f, ptr %i.c
  %.sink3.i = load ptr, ptr %.sink3.in.i, align 8, !tbaa !351
  %.sink4.i = load ptr, ptr %.sink4.in.i, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !767
end_hunk_3
begin_hunk_4_@_ZN4Luau9TypeArena7addTypeINS_13MetatableTypeEEEPKNS_4TypeET_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.bj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !882  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #31
  br label %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !872
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !878
  %i.f = shl i64 %i.e, 4
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #33
  ret void
}

declare noundef ptr @_ZN4Luau12UnionBuilder5buildEv(ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12UnionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !250
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

declare void @_ZN4Luau7TypeIds5eraseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator21recordInferredBindingEPNS_8AstLocalEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::Symbol", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %1, ptr %3, align 8, !tbaa !662
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !421
  %i.c = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_19ConstraintGenerator15InferredBindingEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN4Luau15RefinementArena8variadicERKSt6vectorIPNS_7VariantIJNS_8VariadicENS_8NegationENS_11ConjunctionENS_11DisjunctionENS_11EquivalenceENS_11PropositionEEEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4Luau31shouldTypestateForFirstArgumentERKNS_11AstExprCallE(ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4Luau8isLValueEPKNS_7AstExprE(ptr noundef) local_unnamed_addr #9

declare { ptr, i8 } @_ZNK4Luau13DataFlowGraph14getDefOptionalEPKNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena11addTypePackINS_15BlockedTypePackEEEPKNS_11TypePackVarET_(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, ptr %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::TypePackVar", align 8 ; 6 uses
  %4 = alloca %"class.Luau::Variant.574", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 6, ptr %4, align 8, !tbaa !389
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !105
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !434
  invoke void @_ZN4Luau11TypePackVarC1EONS_7VariantIJNS_9Unifiable5BoundIPKS0_EENS2_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %3, align 8, !tbaa !389
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void %i.f(ptr noundef nonnull %i.g)
          to label %_ZN4Luau11TypePackVarD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit:                   ; preds = %bb.c
  %i.j = load i32, ptr %4, align 8, !tbaa !389
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  invoke void %i.m(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret ptr %i.b

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau11TypePackVarD2Ev.exit4

bb.g:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr %3, align 8, !tbaa !389
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void %i.u(ptr noundef nonnull %i.v)
          to label %_ZN4Luau11TypePackVarD2Ev.exit4 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit4:                  ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.y = load i32, ptr %4, align 8, !tbaa !389
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  invoke void %i.ab(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5 unwind label %bb.i

bb.i:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

declare void @_ZN4Luau15BlockedTypePackC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator20resolveTypeArgumentsERKSt10shared_ptrINS_5ScopeEERKNS_8AstArrayINS_13AstTypeOrPackEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.908") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !943    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !944  ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not94 = icmp eq i64 %i.c, 0
  br i1 %.not94, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  br label %bb.b

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.042.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.1046.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.1046.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.1448.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.1448.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.sroa.042.0.lcssa, ptr %0, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1046.0.lcssa, ptr %i.f, align 8, !tbaa !391
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1448.0.lcssa, ptr %i.g, align 8, !tbaa !250
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %i.h, align 8, !tbaa !366
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.lcssa, ptr %i.i, align 8, !tbaa !390
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.14.0.lcssa, ptr %i.j, align 8, !tbaa !367
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.015101 = phi ptr [ %i.a, %.lr.ph ], [ %i.av, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.sroa.14.0100 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %.sroa.10.099 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %.sroa.0.098 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %.sroa.1448.097 = phi ptr [ null, %.lr.ph ], [ %.sroa.1448.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %.sroa.1046.096 = phi ptr [ null, %.lr.ph ], [ %.sroa.1046.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %.sroa.042.095 = phi ptr [ null, %.lr.ph ], [ %.sroa.042.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %i.k = load ptr, ptr %.015101, align 8, !tbaa !946 ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !tbaa !247
  %i.l = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.k, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN4Luau19ConstraintGenerator11resolveTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbbNS_8PolarityE.exit unwind label %.loopexit, !inline_history !792 ; 2 uses

_ZN4Luau19ConstraintGenerator11resolveTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbbNS_8PolarityE.exit: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.1046.096, %.sroa.1448.097
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau19ConstraintGenerator11resolveTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbbNS_8PolarityE.exit
  store ptr %i.l, ptr %.sroa.1046.096, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.1046.096, i64 8
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %_ZN4Luau19ConstraintGenerator11resolveTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbbNS_8PolarityE.exit
  %i.n = ptrtoint ptr %.sroa.1448.097 to i64
  %i.o = ptrtoint ptr %.sroa.042.095 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35
          to label %.noexc19 unwind label %.loopexit ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.l, ptr %i.y, align 8, !tbaa !358
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.g, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.042.095, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.g, %.noexc19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.042.095, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.095, i64 noundef %i.p) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.015101, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !947
  store i8 1, ptr %i.e, align 8, !tbaa !247
  %i.ae = invoke noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ad, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbbNS_8PolarityE.exit unwind label %.loopexit53, !inline_history !828 ; 2 uses

_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbbNS_8PolarityE.exit: ; preds = %bb.i
  %.not.i.i21 = icmp eq ptr %.sroa.10.099, %.sroa.14.0100
  br i1 %.not.i.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbbNS_8PolarityE.exit
  store ptr %i.ae, ptr %.sroa.10.099, align 8, !tbaa !356
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.099, i64 8
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %_ZN4Luau19ConstraintGenerator15resolveTypePackERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbbNS_8PolarityE.exit
  %i.ag = ptrtoint ptr %.sroa.14.0100 to i64
  %i.ah = ptrtoint ptr %.sroa.0.098 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.l, label %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc25 unwind label %.loopexit.split-lp54

.noexc25:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i22 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i22, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i23)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #35
          to label %.noexc26 unwind label %.loopexit53 ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !356
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.m, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.098, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.m, %.noexc26
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not.i17.i.i.i24 = icmp eq ptr %.sroa.0.098, null
  br i1 %.not.i17.i.i.i24, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.098, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

.loopexit53:                                      ; preds = %bb.i, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp54:                             ; preds = %bb.l
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.j, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.d, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.042.1 = phi ptr [ %.sroa.042.095, %bb.d ], [ %i.x, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.042.095, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.042.095, %bb.j ] ; 2 uses
  %.sroa.1046.1 = phi ptr [ %i.m, %bb.d ], [ %i.aa, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.1046.096, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.1046.096, %bb.j ] ; 2 uses
  %.sroa.1448.1 = phi ptr [ %.sroa.1448.097, %bb.d ], [ %i.ab, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.1448.097, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.1448.097, %bb.j ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.098, %bb.d ], [ %.sroa.0.098, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.aq, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.098, %bb.j ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4Luau9TypeArena11addTypePackINS_16VariadicTypePackEEEPKNS_11TypePackVarET_:bb.a
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit4:                  ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.y = load i32, ptr %4, align 8, !tbaa !389
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  invoke void %i.ab(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5 unwind label %bb.i

bb.i:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN4Luau15emplaceTypePackINS_9Unifiable5BoundIPKNS_11TypePackVarEEEJRS5_EEEPT_PS3_DpOT0_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau15emplaceTypePackINS_9Unifiable5BoundIPKNS_11TypePackVarEEEJRKS5_EEEPT_PS3_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE7emplaceIS6_JRKS5_EEERT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_5ScopeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1615 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !981  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !271    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !271  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !267
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !271  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1614

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !981
  br label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit

_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !271    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !267   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !271 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !271 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS9_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERS9_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !983
  %i.al = load i64, ptr %i.a, align 8, !tbaa !1615
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !1615
  br label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS9_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS9_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !271 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_5ScopeESt4pairIS3_PKNS_4TypeEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS9_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !394    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !415, !range !258, !noundef !259
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !415
  br i1 %i.f, label %bb.b, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !103 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !89
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !394
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !396
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #33
  br label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator20resolveReferenceTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_16AstTypeReferenceEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.77", align 1 ; 3 uses
  %10 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %11 = alloca %"struct.Luau::GenericError", align 8 ; 12 uses
  %12 = alloca %"struct.Luau::BlockedType", align 8 ; 3 uses
  %13 = alloca %"class.std::optional.856", align 16 ; 20 uses
  %14 = alloca %"class.std::optional.856", align 16 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::optional.856", align 16 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"struct.Luau::PendingExpansionType", align 8 ; 7 uses
  %20 = alloca %"class.std::vector.33", align 8   ; 6 uses
  %21 = alloca %"class.std::vector.368", align 8  ; 6 uses
  %22 = alloca %"class.Luau::Variant", align 8    ; 5 uses
  %23 = alloca %"class.Luau::Variant.669", align 8 ; 6 uses
  %24 = alloca %"class.Luau::Variant", align 8    ; 5 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !984
  %i.f = load i8, ptr @_ZN5FFlag19DebugLuauMagicTypesE, align 8, !tbaa !257, !range !258, !noundef !259
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK4Luau7AstNameeqEPKc.exit106.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !421  ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNK4Luau7AstNameeqEPKc.exit106.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.b
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(10) @.str.105) #36
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNK4Luau7AstNameeqEPKc.exit92

bb.c:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.n) #34
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !103    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !89
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn88 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.dt

_ZNK4Luau7AstNameeqEPKc.exit92:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(12) @.str.107) #36
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZNK4Luau7AstNameeqEPKc.exit106

bb.h:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit92
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1617
  %.not84 = icmp eq i64 %i.y, 1
  br i1 %.not84, label %bb.i, label %.noexc.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1618
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !946 ; 2 uses
  %.not85 = icmp eq ptr %i.ab, null
  br i1 %.not85, label %.noexc.i, label %bb.q

.noexc.i:                                         ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = load <2 x i64>, ptr %i.ac, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.ae, ptr %11, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 42, ptr %i.d, align 8, !tbaa !105
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %11, align 8, !tbaa !103
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !105 ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.af, ptr noundef nonnull align 1 dereferenceable(42) @.str.108, i64 42, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  store i32 18, ptr %10, align 8, !tbaa !544
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !100
  %i.al = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !104 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.ap, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !103
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !89
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !89
  %.pre = load i64, ptr %i.ah, align 8, !tbaa !104
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = phi i64 [ %i.an, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !104
  store ptr %i.ae, ptr %11, align 8, !tbaa !103
  store i64 0, ptr %i.ah, align 8, !tbaa !104
  store i8 0, ptr %i.ae, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x i64> %i.ad, ptr %7, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(136) %10)
          to label %.noexc94 unwind label %bb.o   ; 0 uses

.noexc94:                                         ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !243 ; 2 uses
  %.not.i93 = icmp eq ptr %i.az, null
  br i1 %.not.i93, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc94
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !270
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -184
  invoke void @_ZN4Luau9DcrLogger22captureGenerationErrorERKNS_9TypeErrorE(ptr noundef nonnull align 8 dereferenceable(944) %i.az, ptr noundef nonnull align 8 dereferenceable(184) %i.bc)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.noexc94, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bd = load i32, ptr %10, align 8, !tbaa !544
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  invoke void %i.bg(ptr noundef nonnull %i.aj)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern97 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern97: ; preds = %bb.l
  %i.bj = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ae
  br i1 %i.bk, label %_ZN4Luau12GenericErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern97
  %i.bl = load i64, ptr %i.ae, align 8, !tbaa !89
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #33
  br label %_ZN4Luau12GenericErrorD2Ev.exit

end_hunk_5
begin_hunk_6_@_ZN4Luau19ConstraintGenerator20resolveReferenceTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_16AstTypeReferenceEbb:bb.a
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #32
  unreachable

_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit183: ; preds = %bb.da, %bb.df, %_ZN4Luau2isIJNS_24TypeFunctionInstanceTypeEEPKNS_4TypeEEEbOT0_.exit
  %i.qh = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.053)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit183
  %i.qi = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.qh)
          to label %.noexc188 unwind label %bb.do ; 3 uses

.noexc188:                                        ; preds = %bb.dm
  %.not.i.i187 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i187, label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %.noexc188
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !379
  %i.qk = icmp eq i32 %i.qj, 3
  br i1 %i.qk, label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit, label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread

_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.dn
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 65 ; 2 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !1622
  %i.qn = and i8 %i.qm, 3
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !247
  %i.qq = or i8 %i.qp, %i.qn
  store i8 %i.qq, ptr %i.ql, align 1, !tbaa !1622
  br label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread

bb.do:                                            ; preds = %bb.dm, %_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEED2Ev.exit183
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit174

_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread: ; preds = %.noexc188, %bb.dn, %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit
  %i.qs = load i8, ptr %i.cs, align 16, !tbaa !846, !range !258, !noundef !259
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.dp, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192

bb.dp:                                            ; preds = %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread
  %i.qu = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !611 ; 3 uses
  %.not.i.i.i.i.i.i.i.i189 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i.i.i189, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i190, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qw = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !605
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.ra) #33
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i190

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i190: ; preds = %bb.dq, %bb.dp
  %i.rb = load ptr, ptr %13, align 16, !tbaa !601 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i191 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i1.i.i.i.i.i191, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i190
  %i.rc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.rd = load ptr, ptr %i.rc, align 16, !tbaa !600
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rg) #33
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192: ; preds = %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit.thread, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i190, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ds

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit174:  ; preds = %bb.cs, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit163, %bb.ct, %bb.dk, %bb.di, %bb.cw, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit172, %bb.do, %bb.dh, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.qr, %bb.do ], [ %i.ps, %bb.di ], [ %.pn80.pn, %bb.cw ], [ %i.pr, %bb.dh ], [ %i.ok, %bb.cz ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.qa, %bb.dk ], [ %.pn80.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit172 ], [ %i.ns, %bb.ct ], [ %.pn73, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit163 ], [ %.pn73, %bb.cs ]
  call void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.dt

bb.ds:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192, %bb.r, %bb.q, %_ZN4Luau12GenericErrorD2Ev.exit
  %.0 = phi ptr [ %i.bw, %_ZN4Luau12GenericErrorD2Ev.exit ], [ %i.cj, %bb.q ], [ %i.cr, %bb.r ], [ %.053, %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit192 ]
  ret ptr %.0

bb.dt:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit174, %_ZN4Luau12GenericErrorD2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn86, %_ZN4Luau12GenericErrorD2Ev.exit104 ], [ %.pn80.pn.pn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit174 ]
  resume { ptr, i32 } %.pn88.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1624 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !989  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !984    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !984  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !1625
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !984  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1623

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !989
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !984    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1625  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !984 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !984 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !991
  %i.al = load i64, ptr %i.a, align 8, !tbaa !1624
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !1624
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !984 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_7AstTypeESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"struct.Luau::UnionType", align 8  ; 6 uses
  %6 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %7 = alloca %"struct.Luau::SingletonType", align 8 ; 7 uses
  %8 = alloca %"class.Luau::Variant.912", align 8 ; 9 uses
  %9 = alloca %"struct.Luau::StringSingleton", align 8 ; 12 uses
  %10 = alloca %"class.std::allocator.77", align 1 ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !984
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !568  ; 11 uses
  %i.d = load i32, ptr @_ZN4Luau7AstRttiINS_16AstTypeReferenceEE5valueE, align 4, !tbaa !70
  %.not = icmp eq i32 %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau19ConstraintGenerator20resolveReferenceTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_16AstTypeReferenceEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeTableEE5valueE, align 4, !tbaa !70
  %.not172 = icmp eq i32 %i.c, %i.f
  br i1 %.not172, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTableTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_12AstTypeTableEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull poison, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 zeroext poison)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @_ZN4Luau7AstRttiINS_15AstTypeFunctionEE5valueE, align 4, !tbaa !70
  %.not173 = icmp eq i32 %i.c, %i.h
  br i1 %.not173, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_ZN4Luau19ConstraintGenerator19resolveFunctionTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_15AstTypeFunctionEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull poison, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.j = load i32, ptr @_ZN4Luau7AstRttiINS_13AstTypeTypeofEE5valueE, align 4, !tbaa !70
  %.not174 = icmp eq i32 %i.c, %i.j
  br i1 %.not174, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1627
  %i.m = tail call { ptr, ptr } @_ZN4Luau19ConstraintGenerator5checkERKSt10shared_ptrINS_5ScopeEEPNS_7AstExprESt8optionalIPKNS_4TypeEEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.l, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.o = load i32, ptr @_ZN4Luau7AstRttiINS_15AstTypeOptionalEE5valueE, align 4, !tbaa !70
  %i.p = icmp eq i32 %i.c, %i.o
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !330
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !864
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.u = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeUnionEE5valueE, align 4, !tbaa !70
  %.not175 = icmp eq i32 %i.c, %i.u
  br i1 %.not175, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1629 ; 3 uses
  %i.y = icmp eq i64 %i.x, 1
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !992  ; 3 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !984
  %i.ab = tail call noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.aa, i1 noundef zeroext %3, i1 noundef zeroext false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %.idx219 = shl nuw nsw i64 %i.x, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx219
  %.not98208 = icmp eq i64 %i.x, 0
  br i1 %.not98208, label %._crit_edge215, label %.lr.ph214

._crit_edge215:                                   ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, %bb.n
  %.sroa.0150.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.0150.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.10154.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.10154.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.14156.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.14156.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124
  store ptr %.sroa.0150.0.lcssa, ptr %5, align 8, !tbaa !249
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.10154.0.lcssa, ptr %i.af, align 8, !tbaa !391
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sroa.14156.0.lcssa, ptr %i.ag, align 8, !tbaa !250
  %i.ah = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_9UnionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.ae, ptr noundef nonnull align 8 %5)
          to label %bb.u unwind label %bb.w       ; 2 uses

.lr.ph214:                                        ; preds = %bb.n, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.070212 = phi ptr [ %i.ay, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %i.z, %bb.n ] ; 2 uses
  %.sroa.14156.0211 = phi ptr [ %.sroa.14156.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.n ] ; 4 uses
  %.sroa.10154.0210 = phi ptr [ %.sroa.10154.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.n ] ; 3 uses
  %.sroa.0150.0209 = phi ptr [ %.sroa.0150.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.n ] ; 8 uses
  %i.ai = load ptr, ptr %.070212, align 8, !tbaa !984
  %i.aj = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ai, i1 noundef zeroext %3, i1 noundef zeroext false)
          to label %bb.o unwind label %_ZN4Luau9UnionTypeD2Ev.exit109.loopexit ; 2 uses

bb.o:                                             ; preds = %.lr.ph214
  %.not.i.i = icmp eq ptr %.sroa.10154.0210, %.sroa.14156.0211
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.aj, ptr %.sroa.10154.0210, align 8, !tbaa !358
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.ak = ptrtoint ptr %.sroa.14156.0211 to i64
  %i.al = ptrtoint ptr %.sroa.0150.0209 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.r, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %_ZN4Luau9UnionTypeD2Ev.exit109.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #35
          to label %.noexc106 unwind label %_ZN4Luau9UnionTypeD2Ev.exit109.loopexit ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store ptr %i.aj, ptr %i.av, align 8, !tbaa !358
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.s, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0150.0209, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.s, %.noexc106
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0150.0209, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0209, i64 noundef %i.am) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.p
  %.sroa.0150.2 = phi ptr [ %i.au, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0150.0209, %bb.p ] ; 2 uses
  %.pn176 = phi ptr [ %i.av, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.10154.0210, %bb.p ]
  %.sroa.14156.2 = phi ptr [ %i.ax, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.14156.0211, %bb.p ] ; 2 uses
  %.sroa.10154.1 = getelementptr inbounds nuw i8, ptr %.pn176, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.070212, i64 8 ; 2 uses
  %.not98 = icmp eq ptr %i.ay, %i.ac
  br i1 %.not98, label %._crit_edge215, label %.lr.ph214

bb.u:                                             ; preds = %._crit_edge215
  %i.az = load ptr, ptr %5, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !250
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.w:                                             ; preds = %._crit_edge215
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i108, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit111, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !250
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #33
end_hunk_6
begin_hunk_7_@_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb:bb.a
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %8, align 8, !tbaa !957
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 8 uses
  %i.ed = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !104 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ec, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.ej, i1 false)
  br label %call.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !103
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !89
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !89
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !104
  br label %call.1.i.i

call.1.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ax
  %i.el = phi ptr [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ec, %bb.ax ] ; 2 uses
  %i.em = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eh, %bb.ax ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ee, ptr %9, align 8, !tbaa !103
  store i64 0, ptr %i.en, align 8, !tbaa !104
  store i8 0, ptr %i.ee, align 8, !tbaa !89
  store i32 1, ptr %7, align 8, !tbaa !957
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !100
  %i.er = icmp eq ptr %i.el, %i.ec
  br i1 %i.er, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ay:                                            ; preds = %call.1.i.i
  %i.es = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.es)
  %i.et = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.ec, i64 %i.et, i1 false)
  br label %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %call.1.i.i
  store ptr %i.el, ptr %i.ep, align 8, !tbaa !103
  %i.eu = load i64, ptr %i.ec, align 8, !tbaa !89
  store i64 %i.eu, ptr %i.eq, align 8, !tbaa !89
  br label %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit

_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.em, ptr %i.ev, align 8, !tbaa !104
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !103
  store i64 0, ptr %i.eo, align 8, !tbaa !104
  store i8 0, ptr %i.ec, align 8, !tbaa !89
  %i.ew = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_13SingletonTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.dw, ptr noundef nonnull align 8 %7)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit
  %i.ex = load i32, ptr %7, align 8, !tbaa !957
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !78
  invoke void %i.fa(ptr noundef nonnull %i.ep)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #32
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.az
  %i.fd = load i32, ptr %8, align 8, !tbaa !957
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !78
  invoke void %i.fg(ptr noundef nonnull %i.eb)
          to label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #32
  unreachable

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit: ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit
  %i.fj = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ee
  br i1 %i.fk, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit
  %i.fl = load i64, ptr %i.ee, align 8, !tbaa !89
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #33
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.bc:                                            ; preds = %bb.av
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau15StringSingletonD2Ev.exit138

bb.bd:                                            ; preds = %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load i32, ptr %7, align 8, !tbaa !957
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !78
  invoke void %i.fs(ptr noundef nonnull %i.ep)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit134 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #32
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit134:              ; preds = %bb.bd
  %i.fv = load i32, ptr %8, align 8, !tbaa !957
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !78
  invoke void %i.fy(ptr noundef nonnull %i.eb)
          to label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit135 unwind label %bb.bf

bb.bf:                                            ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit134
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #32
  unreachable

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit135: ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit134
  %i.gb = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ee
  br i1 %i.gc, label %_ZN4Luau15StringSingletonD2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit135
  %i.gd = load i64, ptr %i.ee, align 8, !tbaa !89
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #33
  br label %_ZN4Luau15StringSingletonD2Ev.exit138

_ZN4Luau15StringSingletonD2Ev.exit138:            ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.bc ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %i.fo, %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit111

bb.bg:                                            ; preds = %bb.au
  %i.gf = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeErrorEE5valueE, align 4, !tbaa !70
  %i.gg = icmp eq i32 %i.c, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !330
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 168
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !546
  %brmerge.not = and i1 %i.gg, %4
  br i1 %brmerge.not, label %bb.bh, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.bh:                                            ; preds = %bb.bg
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !247
  %i.gn = tail call noundef ptr @_ZN4Luau19ConstraintGenerator9freshTypeERKSt10shared_ptrINS_5ScopeEENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %i.gm)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit111:  ; preds = %bb.am, %bb.al, %bb.x, %bb.w, %bb.an, %_ZN4Luau16IntersectionTypeD2Ev.exit127, %bb.y, %_ZN4Luau9UnionTypeD2Ev.exit109, %_ZN4Luau15StringSingletonD2Ev.exit138
  %.pn99.pn = phi { ptr, i32 } [ %.pn, %_ZN4Luau15StringSingletonD2Ev.exit138 ], [ %lpad.phi, %bb.y ], [ %lpad.phi184, %bb.an ], [ %lpad.phi, %_ZN4Luau9UnionTypeD2Ev.exit109 ], [ %i.be, %bb.x ], [ %lpad.phi184, %_ZN4Luau16IntersectionTypeD2Ev.exit127 ], [ %i.be, %bb.w ], [ %i.cx, %bb.al ], [ %i.cx, %bb.am ]
  resume { ptr, i32 } %.pn99.pn

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.bg, %bb.aj, %bb.ak, %bb.u, %bb.v, %bb.d, %bb.h, %bb.j, %bb.ab, %bb.at, %bb.as, %bb.bh, %_ZN4Luau15StringSingletonD2Ev.exit, %bb.ap, %bb.m, %bb.f, %bb.b
  %.8 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.n, %bb.h ], [ %i.t, %bb.j ], [ %i.ab, %bb.m ], [ %i.ca, %bb.aj ], [ %i.bu, %bb.ab ], [ %i.ah, %bb.u ], [ %i.dj, %bb.ap ], [ %i.dr, %bb.as ], [ %i.dt, %bb.at ], [ %i.ew, %_ZN4Luau15StringSingletonD2Ev.exit ], [ %i.gn, %bb.bh ], [ %i.gk, %bb.bg ], [ %i.ah, %bb.v ], [ %i.ca, %bb.ak ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !87
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 576
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %.8, ptr %i.gr, align 8, !tbaa !358
  ret ptr %.8
}

declare void @_ZNK4Luau5Scope18lookupImportedTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.std::optional.856") align 8, ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"struct.Luau::TypePackVar", align 8 ; 6 uses
  %7 = alloca %"class.Luau::Variant.574", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.Luau::Variant.669", align 8 ; 8 uses
  %10 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 14 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !993
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !568  ; 3 uses
  %i.f = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !70
  %.not = icmp eq i32 %i.e, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !70
  %.not74 = icmp eq i32 %i.e, %i.i
  br i1 %.not74, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1643
  %i.l = tail call noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.k, i1 noundef zeroext %3, i1 noundef zeroext %4)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i32 5, ptr %7, align 8, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !358
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !357
  invoke void @_ZN4Luau11TypePackVarC1EONS_7VariantIJNS_9Unifiable5BoundIPKS0_EENS2_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(184) %i.n, ptr noundef nonnull align 8 %6)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %6, align 8, !tbaa !389
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.t(ptr noundef nonnull %i.u)
          to label %_ZN4Luau11TypePackVarD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit:                   ; preds = %bb.f
  %i.x = load i32, ptr %7, align 8, !tbaa !389
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  invoke void %i.aa(ptr noundef nonnull %i.o)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.al

bb.i:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau11TypePackVarD2Ev.exit47

bb.j:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load i32, ptr %6, align 8, !tbaa !389
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.ai(ptr noundef nonnull %i.aj)
          to label %_ZN4Luau11TypePackVarD2Ev.exit47 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit47:                 ; preds = %bb.j, %bb.i
  %.pn42 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  %i.am = load i32, ptr %7, align 8, !tbaa !389
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  invoke void %i.ap(ptr noundef nonnull %i.o)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit48 unwind label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit47
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit48: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ak

bb.m:                                             ; preds = %bb.c
  %i.as = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !70
  %.not75 = icmp eq i32 %i.e, %i.as
  br i1 %.not75, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %1, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1645 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.aw, ptr %8, align 8, !tbaa !100
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !105
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %bb.u   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i
  store ptr %i.ba, ptr %8, align 8, !tbaa !103
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !105
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc50, %bb.p
  %i.bc = phi ptr [ %i.ba, %.noexc50 ], [ %i.aw, %bb.p ] ; 2 uses
  switch i64 %i.ay, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !89
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !89
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %i.av, i64 %i.ay, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.be = load i64, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !104
  %i.bg = load ptr, ptr %8, align 8, !tbaa !103
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bi = invoke { ptr, i8 } @_ZNK4Luau5Scope10lookupPackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1040) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bj = extractvalue { ptr, i8 } %i.bi, 0
  %i.bk = extractvalue { ptr, i8 } %i.bi, 1
  %i.bl = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !89
  %i.bo = add i64 %i.bn, 1
end_hunk_7
begin_hunk_8_@_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb:bb.a
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = load i32, ptr %i.el, align 8, !tbaa !389
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit, label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit: ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 65 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !1647
  %i.eq = and i8 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.es = load i8, ptr %i.er, align 8, !tbaa !247
  %i.et = or i8 %i.es, %i.eq
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !1647
  br label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread: ; preds = %bb.al, %bb.am, %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 616
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11AstTypePackEPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store ptr %.3, ptr %i.ex, align 8, !tbaa !356
  ret ptr %.3
}

declare noundef i64 @_ZN4Luau4sizeEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4Luau6finiteEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #9

declare { ptr, i8 } @_ZN4Luau5firstEPKNS_11TypePackVarEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_20PendingExpansionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 16 uses
  %3 = alloca %"class.Luau::Variant.563", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 7, ptr %3, align 8, !tbaa !379
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load <2 x ptr>, ptr %i.c, align 8, !tbaa !265
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !250
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !366
  %i.p = load <2 x ptr>, ptr %i.g, align 8, !tbaa !368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !995  ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !995
  store i32 7, ptr %2, align 8, !tbaa !379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.r = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.o, i64 1
  %i.t = shufflevector <2 x ptr> %i.p, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x ptr> %i.s, <4 x ptr> %i.t, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.u, ptr %i.m, align 8, !tbaa !741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.q, ptr %i.v, align 8, !tbaa !995
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.w, align 8, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.x, align 8, !tbaa !349
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.y, align 8, !tbaa !413
  %i.z = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aa = load i8, ptr %i.x, align 8, !tbaa !349, !range !258, !noundef !259
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.x, align 8, !tbaa !349
  br i1 %i.ab, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !89
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.ai = load i32, ptr %2, align 8, !tbaa !379
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  invoke void %i.al(ptr noundef nonnull %i.j)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #32
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ao = load i32, ptr %3, align 8, !tbaa !379
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78
  invoke void %i.ar(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.z

bb.f:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #31
  %i.av = load i32, ptr %3, align 8, !tbaa !379
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78
  invoke void %i.ay(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.au
}

declare void @_ZN4Luau20PendingExpansionTypeC1ESt8optionalINS_7AstNameEES2_St6vectorIPKNS_4TypeESaIS7_EES4_IPKNS_11TypePackVarESaISC_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i8, ptr, ptr noundef align 8, ptr noundef align 8) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau20PendingExpansionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTableTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_12AstTypeTableEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 zeroext %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::map", align 8          ; 12 uses
  %8 = alloca %"class.std::optional.653", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %13 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.Luau::TableType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !529
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !528
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !501
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !502
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !531
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !504
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !247   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1650 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1651 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not158 = icmp eq i64 %i.n, 0
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1653 ; 8 uses
  %.not65 = icmp eq ptr %i.s, null
  br i1 %.not65, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.z

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.0159 = phi ptr [ %i.l, %.lr.ph ], [ %i.bq, %bb.y ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.t = load ptr, ptr %.0159, align 8, !tbaa !1655 ; 4 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !100
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.v, ptr %i.b, align 8, !tbaa !105
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %.loopexit ; 2 uses

.noexc81:                                         ; preds = %.noexc.i
  store ptr %i.x, ptr %9, align 8, !tbaa !103
  %i.y = load i64, ptr %i.b, align 8, !tbaa !105
  store i64 %i.y, ptr %i.p, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc81, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc81 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !89
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !89
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !104
  %i.ac = load ptr, ptr %9, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ae = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.h unwind label %bb.p       ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !89
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.0159, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1656
  switch i32 %i.ak, label %bb.m [
    i32 1, label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
    i32 2, label %bb.i
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  switch i8 %i.j, label %bb.k [
    i8 1, label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
    i8 2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.k:                                             ; preds = %bb.i
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i = phi i8 [ 4, %bb.m ], [ 3, %bb.l ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %bb.k ], [ 1, %bb.j ], [ 2, %bb.i ]
  store i8 %.0.i, ptr %i.i, align 8, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.0159, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1657
  %i.an = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.am, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.q       ; 2 uses

bb.n:                                             ; preds = %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.0159, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !578, !range !258, !noundef !259
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  br i1 %i.as, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.aq, align 4, !tbaa !578
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.n, %bb.o
  %i.at = load i32, ptr %i.aj, align 8, !tbaa !1656 ; 2 uses
  switch i32 %i.at, label %bb.t [
    i32 3, label %bb.r
    i32 1, label %bb.y
    i32 2, label %bb.s
  ]

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.p:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.p
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.p
  %i.ax = load i64, ptr %i.p, align 8, !tbaa !89
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.p, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
end_hunk_8
begin_hunk_9_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !106, !alias.scope !1661
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !103
  %i.k = load i64, ptr %i.e, align 8, !tbaa !89
  store i64 %i.k, ptr %i.c, align 8, !tbaa !89
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !104
  store ptr %i.e, ptr %i.b, align 8, !tbaa !103
  store i64 0, ptr %i.m, align 8, !tbaa !104
  store i8 0, ptr %i.e, align 8, !tbaa !89
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.030.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i = phi i32 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i32 %.030.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = icmp ult i32 %.02329.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.030.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %.02329.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.030.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i32 %.02329.i, 10000
  %i.j = add i32 %.030.i, 4                       ; 2 uses
  %i.k = icmp ult i32 %.02329.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i, !llvm.loop !1662

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ] ; 2 uses
  %.lobit = lshr i32 %1, 31                       ; 2 uses
  %i.l = add i32 %.022.i, %.lobit
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8, !tbaa !100
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.o = zext nneg i32 %.lobit to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 4 uses
  %i.r = icmp ugt i32 %i.a, 99
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.s = add i32 %.022.i, -1
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.v, %.lr.ph.i11 ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ag, %.lr.ph.i11 ], [ %i.s, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = urem i32 %.020.i, 100
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = udiv i32 %.020.i, 100                    ; 2 uses
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !89
  %i.aa = zext i32 %.01819.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !89
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !89
  %i.ad = add i32 %.01819.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !89
  %i.ag = add i32 %.01819.i, -2
  %i.ah = icmp ugt i32 %.020.i, 9999
  br i1 %i.ah, label %.lr.ph.i11, label %._crit_edge.i, !llvm.loop !1663

._crit_edge.i:                                    ; preds = %.lr.ph.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %.0.lcssa.i = phi i32 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ], [ %i.v, %.lr.ph.i11 ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.aj = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !89
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !89
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.aq = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ar, %bb.i ], [ %i.ap, %bb.h ]
  store i8 %storemerge.i, ptr %i.q, align 1, !tbaa !89
  ret void

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator19resolveFunctionTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_15AstTypeFunctionEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::shared_ptr.8", align 16 ; 16 uses
  %7 = alloca %"class.std::shared_ptr.8", align 16 ; 7 uses
  %8 = alloca %"class.std::vector.683", align 8   ; 10 uses
  %9 = alloca %"class.std::vector.691", align 8   ; 10 uses
  %10 = alloca %"class.Luau::AstTypePackExplicit", align 8 ; 5 uses
  %11 = alloca %"struct.Luau::Location", align 4  ; 5 uses
  %12 = alloca %"struct.Luau::FunctionType", align 8 ; 38 uses
  %13 = alloca %"class.std::vector.33", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.368", align 8  ; 6 uses
  %15 = alloca %"class.std::optional.403", align 8 ; 8 uses
  %16 = alloca %"struct.Luau::AstAttr::DeprecatedInfo", align 8 ; 20 uses
  %17 = alloca %"struct.Luau::FunctionArgument", align 8 ; 15 uses
  %18 = alloca %"struct.Luau::FunctionType", align 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1669
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1670
  %.not191 = icmp eq i64 %i.f, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %.not191, label %bb.w, label %bb.c

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN4Luau19ConstraintGenerator10childScopeEPNS_7AstNodeERKSt10shared_ptrINS_5ScopeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %19 unwind label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread

19:                                               ; preds = %bb.c
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load <2 x ptr>, ptr %7, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %23 = load ptr, ptr %21, align 8, !tbaa !88     ; 8 uses
  store <2 x ptr> %22, ptr %6, align 16, !tbaa !78
  %.not.i.i.i.i = icmp eq ptr %23, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %26 = load atomic i64, ptr %25 acquire, align 8 ; 2 uses
  %27 = icmp eq i64 %26, 4294967297
  %28 = trunc i64 %26 to i32                      ; 2 uses
  br i1 %27, label %29, label %37

29:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !94
  %30 = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 0, ptr %30, align 4, !tbaa !95
  %31 = load ptr, ptr %23, align 8, !tbaa !97
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(16) %23) #31, !inline_history !43
  %34 = load ptr, ptr %23, align 8, !tbaa !97
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(16) %23) #31, !inline_history !43
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit

37:                                               ; preds = %24
  %38 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i.i = icmp eq i8 %38, 0
  br i1 %.not.i.i.i.i.i, label %41, label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %28, -1
  store i32 %40, ptr %25, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

41:                                               ; preds = %37
  %42 = atomicrmw volatile add ptr %25, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %41, %39
  %.0.i.i.i.i.i.i = phi i32 [ %28, %39 ], [ %42, %41 ]
  %43 = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %43, label %44, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit, !prof !81

44:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #31
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit

_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit:     ; preds = %19, %29, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %44
  %45 = load ptr, ptr %20, align 8, !tbaa !88     ; 8 uses
  %.not.i.i = icmp eq ptr %45, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %46

46:                                               ; preds = %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 4 uses
  %48 = load atomic i64, ptr %47 acquire, align 8 ; 2 uses
  %49 = icmp eq i64 %48, 4294967297
  %50 = trunc i64 %48 to i32                      ; 2 uses
  br i1 %49, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, label %57

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a: ; preds = %46
  store i32 0, ptr %47, align 8, !tbaa !94
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 12
  store i32 0, ptr %51, align 4, !tbaa !95
  %52 = load ptr, ptr %45, align 8, !tbaa !97
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %.sroa.029.0.copyload.pre = load ptr, ptr %53, align 8
  call void %.sroa.029.0.copyload.pre(ptr noundef nonnull align 8 dereferenceable(16) %45) #31, !inline_history !6
  %54 = load ptr, ptr %45, align 8, !tbaa !97
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr noundef nonnull align 8 dereferenceable(16) %45) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

57:                                               ; preds = %46
  %58 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i = icmp eq i8 %58, 0
  br i1 %.not.i.i.i, label %61, label %59

59:                                               ; preds = %57
  %60 = add nsw i32 %50, -1
  store i32 %60, ptr %47, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

61:                                               ; preds = %57
  %62 = atomicrmw volatile add ptr %47, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %61, %59
  %.0.i.i.i.i = phi i32 [ %50, %59 ], [ %62, %61 ]
  %63 = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %63, label %64, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

64:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #31
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN4Luau5ScopeEEaSEOS2_.exit, %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %.sroa.029.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !591
  %.sroa.230.0.copyload = load i64, ptr %i.c, align 8, !tbaa !105
  invoke void @_ZN4Luau19ConstraintGenerator14createGenericsB5cxx11ERKSt10shared_ptrINS_5ScopeEENS_8AstArrayIPNS_14AstGenericTypeEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.683") align 8 %8, ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.029.0.copyload, i64 %.sroa.230.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.027.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !598
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.228.0.copyload = load i64, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !105
  invoke void @_ZN4Luau19ConstraintGenerator18createGenericPacksB5cxx11ERKSt10shared_ptrINS_5ScopeEENS_8AstArrayIPNS_18AstGenericTypePackEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.691") align 8 %9, ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.027.0.copyload, i64 %.sroa.228.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %8, align 8, !tbaa !593    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !593  ; 2 uses
  %.not192227 = icmp eq ptr %i.h, %i.j
  br i1 %.not192227, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit, %bb.e
  %.sroa.12170.1.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.12170.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ]
  %.sroa.16172.1.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.16172.10, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.sroa.0166.1.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.0166.10, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.k = load ptr, ptr %9, align 8, !tbaa !603    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603  ; 2 uses
  %.not193234 = icmp eq ptr %i.k, %i.m
  br i1 %.not193234, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph240

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  %.sroa.0166.1231 = phi ptr [ %.sroa.0166.10, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.e ] ; 7 uses
  %.sroa.0154.0230 = phi ptr [ %i.ah, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.16172.1229 = phi ptr [ %.sroa.16172.10, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.e ] ; 5 uses
  %.sroa.12170.1228 = phi ptr [ %.sroa.12170.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0154.0230, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12170.1228, %.sroa.16172.1229
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !358
  store ptr %i.r, ptr %.sroa.12170.1228, align 8, !tbaa !358
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.s = ptrtoint ptr %.sroa.16172.1229 to i64
  %i.t = ptrtoint ptr %.sroa.0166.1231 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.j, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.loopexit.split-lp202

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i83 = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i83)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #35
          to label %.noexc84 unwind label %.loopexit201 ; 4 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !358
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !358
  %i.af = icmp sgt i64 %i.u, 0
  br i1 %i.af, label %bb.k, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.k:                                             ; preds = %.noexc84
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %.sroa.0166.1231, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.k, %.noexc84
  %.not.i17.i.i = icmp eq ptr %.sroa.0166.1231, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.1231, i64 noundef %i.u) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h
  %.pn195 = phi ptr [ %i.ad, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.12170.1228, %bb.h ]
  %.sroa.16172.10 = phi ptr [ %i.ag, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.16172.1229, %bb.h ] ; 2 uses
  %.sroa.0166.10 = phi ptr [ %i.ac, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0166.1231, %bb.h ] ; 2 uses
  %.sroa.12170.3 = getelementptr inbounds nuw i8, ptr %.pn195, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0154.0230, i64 56 ; 2 uses
  %.not192 = icmp eq ptr %i.ah, %i.j
  br i1 %.not192, label %._crit_edge, label %.lr.ph

.loopexit201:                                     ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp202:                            ; preds = %bb.j
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge241:                                   ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit
  %.pre = load ptr, ptr %9, align 8, !tbaa !607   ; 3 uses
  %.pre260.a = load ptr, ptr %i.l, align 8, !tbaa !608 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre260.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge241, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge241 ] ; 3 uses
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !103 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !89
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.an, %.pre260.a
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !607
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %._crit_edge241
  %.sroa.16.1.lcssa330 = phi ptr [ %.sroa.16.11, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.sroa.16.11, %._crit_edge241 ], [ null, %._crit_edge ]
  %.sroa.12.1.lcssa329 = phi ptr [ %.sroa.12.3, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.sroa.12.3, %._crit_edge241 ], [ null, %._crit_edge ]
  %.sroa.0157.1.lcssa328 = phi ptr [ %.sroa.0157.11, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.sroa.0157.11, %._crit_edge241 ], [ null, %._crit_edge ]
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge241 ], [ %i.k, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !609
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.au = load ptr, ptr %8, align 8, !tbaa !595   ; 3 uses
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !596 ; 2 uses
  %.not4.i.i.i86 = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i86, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i
  %.05.i.i.i88 = phi ptr [ %i.bb, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i ], [ %i.au, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i88, align 8, !tbaa !103 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i88, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89: ; preds = %.lr.ph.i.i.i87
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !89
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i88, i64 56 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i90, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i87, !llvm.loop !24

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEEvPT_.exit.i.i.i
  %.pr.i91 = load ptr, ptr %8, align 8, !tbaa !595
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit
  %i.bc = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau25GenericTypePackDefinitionEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i92 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i92, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !597
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEES9_EvT_SB_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ae

.lr.ph240:                                        ; preds = %._crit_edge, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit
  %.sroa.0150.0238 = phi ptr [ %i.bz, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit ], [ %i.k, %._crit_edge ] ; 2 uses
  %.sroa.16.1237 = phi ptr [ %.sroa.16.11, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit ], [ null, %._crit_edge ] ; 5 uses
  %.sroa.12.1236 = phi ptr [ %.sroa.12.3, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit ], [ null, %._crit_edge ] ; 3 uses
  %.sroa.0157.1235 = phi ptr [ %.sroa.0157.11, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit ], [ null, %._crit_edge ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0150.0238, i64 32 ; 2 uses
  %.not.i94 = icmp eq ptr %.sroa.12.1236, %.sroa.16.1237
  br i1 %.not.i94, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !356
  store ptr %i.bj, ptr %.sroa.12.1236, align 8, !tbaa !356
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %.lr.ph240
  %i.bk = ptrtoint ptr %.sroa.16.1237 to i64
end_hunk_9
begin_hunk_10_@_ZN4Luau19ConstraintGenerator19resolveFunctionTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_15AstTypeFunctionEbb:bb.a
  %i.my = icmp eq ptr %.pre262, %i.jh
  br i1 %i.my, label %_ZN4Luau16FunctionArgumentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJS2_EEERS3_DpOT_.exit
  %i.mz = load i64, ptr %i.jh, align 8, !tbaa !89
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %.pre262, i64 noundef %i.na) #33
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit

_ZN4Luau16FunctionArgumentD2Ev.exit:              ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJS2_EEERS3_DpOT_.exit, %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJS2_EEERS3_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit130

.loopexit.split-lp:                               ; preds = %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit130

bb.cj:                                            ; preds = %bb.ci
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nc = load ptr, ptr %17, align 8, !tbaa !103  ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.jh
  br i1 %i.nd, label %_ZN4Luau16FunctionArgumentD2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128: ; preds = %bb.cj
  %i.ne = load i64, ptr %i.jh, align 8, !tbaa !89
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #33
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit130

_ZN4Luau16FunctionArgumentD2Ev.exit130:           ; preds = %bb.cj, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128
  %.pn69 = phi { ptr, i32 } [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.nb, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.cv

bb.ck:                                            ; preds = %bb.bz
  %i.ng = load ptr, ptr %i.jf, align 8, !tbaa !395 ; 4 uses
  %i.nh = load ptr, ptr %i.jg, align 8, !tbaa !396
  %.not.i131 = icmp eq ptr %i.ng, %i.nh
  br i1 %.not.i131, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  store i8 0, ptr %i.ni, align 8, !tbaa !415
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  store ptr %i.nj, ptr %i.jf, align 8, !tbaa !395
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit

bb.cm:                                            ; preds = %bb.ck
  invoke void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE17_M_realloc_insertIJRKSt9nullopt_tEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr %i.ng, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nullopt)
          to label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit: ; preds = %bb.cm, %bb.cl, %_ZN4Luau16FunctionArgumentD2Ev.exit
  %i.nl = getelementptr inbounds nuw i8, ptr %.0246, i64 32 ; 2 uses
  %.not68 = icmp eq ptr %i.nl, %i.je
  br i1 %.not68, label %._crit_edge249, label %bb.bz

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137:  ; preds = %_ZN4Luau12FunctionTypeC2EOS0_.exit
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %18) #31
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.nm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !88 ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 4 uses
  %i.np = load atomic i64, ptr %i.no acquire, align 8 ; 2 uses
  %i.nq = icmp eq i64 %i.np, 4294967297
  %i.nr = trunc i64 %i.np to i32                  ; 2 uses
  br i1 %i.nq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.no, align 8, !tbaa !94
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  store i32 0, ptr %i.ns, align 4, !tbaa !95
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !97
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #31, !inline_history !6
  %i.nw = load ptr, ptr %i.nn, align 8, !tbaa !97
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.cq:                                            ; preds = %bb.co
  %i.nz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i139 = icmp eq i8 %i.nz, 0
  br i1 %.not.i.i.i139, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oa = add nsw i32 %i.nr, -1
  store i32 %i.oa, ptr %i.no, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.cs:                                            ; preds = %bb.cq
  %i.ob = atomicrmw volatile add ptr %i.no, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i141 = phi i32 [ %i.nr, %bb.cr ], [ %i.ob, %bb.cs ]
  %i.oc = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.oc, label %bb.ct, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !81

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #31
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret ptr %i.lt

bb.cu:                                            ; preds = %_ZN4Luau12FunctionTypeC2EOS0_.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %18) #31
  br label %bb.cv

bb.cv:                                            ; preds = %bb.bo, %bb.br, %bb.cu, %bb.cn, %_ZN4Luau16FunctionArgumentD2Ev.exit130, %bb.bn
  %.sroa.16172.6 = phi ptr [ null, %bb.cu ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ null, %bb.cn ], [ %.sroa.16172.5, %bb.bo ], [ %.sroa.16172.4, %bb.br ], [ %.sroa.16172.4, %bb.bn ]
  %.sroa.0157.7 = phi ptr [ null, %bb.cu ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ null, %bb.cn ], [ %.sroa.0157.6, %bb.bo ], [ %.sroa.0157.5, %bb.br ], [ %.sroa.0157.5, %bb.bn ]
  %.sroa.16.7 = phi ptr [ null, %bb.cu ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ null, %bb.cn ], [ %.sroa.16.6, %bb.bo ], [ %.sroa.16.5, %bb.br ], [ %.sroa.16.5, %bb.bn ]
  %.sroa.0166.6 = phi ptr [ null, %bb.cu ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ null, %bb.cn ], [ %.sroa.0166.5, %bb.bo ], [ %.sroa.0166.4, %bb.br ], [ %.sroa.0166.4, %bb.bn ]
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %i.od, %bb.cu ], [ %.pn69, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %i.nk, %bb.cn ], [ %i.if, %bb.bo ], [ %.pn, %bb.br ], [ %i.ie, %bb.bn ]
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %12) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121:  ; preds = %bb.bm, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119, %bb.cv
  %.sroa.16172.7 = phi ptr [ %.sroa.16172.6, %bb.cv ], [ %.sroa.16172.4, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.16172.4, %bb.bm ]
  %.sroa.0157.8 = phi ptr [ %.sroa.0157.7, %bb.cv ], [ %.sroa.0157.5, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.0157.5, %bb.bm ]
  %.sroa.16.8 = phi ptr [ %.sroa.16.7, %bb.cv ], [ %.sroa.16.5, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.16.5, %bb.bm ]
  %.sroa.0166.7 = phi ptr [ %.sroa.0166.6, %bb.cv ], [ %.sroa.0166.4, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.0166.4, %bb.bm ]
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn, %bb.cv ], [ %i.hh, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %i.hh, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.cw

bb.cw:                                            ; preds = %bb.bg, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121, %bb.bh, %bb.bf
  %.sroa.16172.8 = phi ptr [ %.sroa.16172.7, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.16172.4, %bb.bh ], [ %.sroa.16172.4, %bb.bg ], [ %.sroa.16172.4, %bb.bf ]
  %.sroa.0157.9 = phi ptr [ %.sroa.0157.8, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.0157.5, %bb.bh ], [ %.sroa.0157.5, %bb.bg ], [ %.sroa.0157.5, %bb.bf ]
  %.sroa.16.9 = phi ptr [ %.sroa.16.8, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.16.5, %bb.bh ], [ %.sroa.16.5, %bb.bg ], [ %.sroa.16.5, %bb.bf ]
  %.sroa.0166.8 = phi ptr [ %.sroa.0166.7, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.0166.4, %bb.bh ], [ %.sroa.0166.4, %bb.bg ], [ %.sroa.0166.4, %bb.bf ]
  %.pn69.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn.pn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %i.hg, %bb.bh ], [ %i.hf, %bb.bg ], [ %i.he, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.v
  %.sroa.16172.9 = phi ptr [ %.sroa.16172.3, %bb.v ], [ %.sroa.16172.8, %bb.cw ]
  %.sroa.0157.10 = phi ptr [ %.sroa.0157.4, %bb.v ], [ %.sroa.0157.9, %bb.cw ] ; 3 uses
  %.sroa.16.10 = phi ptr [ %.sroa.16.4, %bb.v ], [ %.sroa.16.9, %bb.cw ]
  %.sroa.0166.9 = phi ptr [ %.sroa.0166.3, %bb.v ], [ %.sroa.0166.8, %bb.cw ] ; 3 uses
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %bb.v ], [ %.pn69.pn.pn.pn.pn.pn.pn.pn, %bb.cw ] ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %.sroa.0157.10, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oe = ptrtoint ptr %.sroa.16.10 to i64
  %i.of = ptrtoint ptr %.sroa.0157.10 to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.10, i64 noundef %i.og) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144: ; preds = %bb.cx, %bb.cy
  %.not.i.i.i145 = icmp eq ptr %.sroa.0166.9, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144
  %i.oh = ptrtoint ptr %.sroa.16172.9 to i64
  %i.oi = ptrtoint ptr %.sroa.0166.9 to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.9, i64 noundef %i.oj) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146:  ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144, %bb.cz
  %.pn78.pn.pn.pn185190 = phi { ptr, i32 } [ %i.n, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread ], [ %.pn78.pn.pn.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144 ], [ %.pn78.pn.pn.pn, %bb.cz ]
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn78.pn.pn.pn185190
}

declare void @_ZN4Luau19AstTypePackExplicitC1ERKNS_8LocationENS_11AstTypeListE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef byval(%"struct.Luau::AstTypeList") align 8) unnamed_addr #9

declare noundef zeroext i1 @_ZNK4Luau15AstTypeFunction17isCheckedFunctionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #9

declare noundef ptr @_ZNK4Luau15AstTypeFunction12getAttributeENS_7AstAttr4TypeE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::TypePack", align 8   ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !992    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1678 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not65 = icmp eq i64 %i.c, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.042.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1679 ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %bb.j, label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.069 = phi ptr [ %i.w, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.14.068 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.067 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.042.066 = phi ptr [ %.sroa.042.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 7 uses
  %i.g = load ptr, ptr %.069, align 8, !tbaa !984
  %i.h = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.g, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %bb.b unwind label %.loopexit  ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.sroa.10.067, %.sroa.14.068
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %.sroa.10.067, align 8, !tbaa !358
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.sroa.14.068 to i64
  %i.j = ptrtoint ptr %.sroa.042.066 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.h, ptr %i.t, align 8, !tbaa !358
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.sroa.042.066, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %.noexc25
  %.not.i17.i.i.i = icmp eq ptr %.sroa.042.066, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.066, i64 noundef %i.k) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %.sroa.042.3 = phi ptr [ %i.s, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.042.066, %bb.c ] ; 2 uses
  %.pn56 = phi ptr [ %i.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.10.067, %bb.c ]
  %.sroa.14.3 = phi ptr [ %i.v, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.14.068, %bb.c ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn56, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29

bb.h:                                             ; preds = %._crit_edge
  %i.x = invoke noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.f, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29

bb.j:                                             ; preds = %bb.h, %._crit_edge
  %.sroa.539.0 = phi i8 [ 0, %._crit_edge ], [ 1, %bb.h ] ; 2 uses
  %.sroa.038.0 = phi ptr [ undef, %._crit_edge ], [ %i.x, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.z = icmp eq ptr %.sroa.042.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc nuw i8 %.sroa.539.0 to i1
  br i1 %i.aa, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !330
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !353
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124
  store ptr %.sroa.042.0.lcssa, ptr %5, align 8, !tbaa !249
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.10.0.lcssa, ptr %i.ah, align 8, !tbaa !391
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sroa.14.0.lcssa, ptr %i.ai, align 8, !tbaa !250
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.038.0, ptr %i.aj, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %.sroa.539.0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ak = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %i.ag, ptr noundef nonnull align 8 %5)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %5, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !250
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #33
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !249   ; 2 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i3.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !250
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27

bb.r:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi ptr [ %.sroa.038.0, %bb.k ], [ %i.ae, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i.i = icmp eq ptr %.sroa.042.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.au = ptrtoint ptr %.sroa.042.0.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.0.lcssa, i64 noundef %i.av) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27:   ; preds = %bb.s, %bb.r, %.thread
  %.0.i55 = phi ptr [ %i.ak, %.thread ], [ %.0.i, %bb.r ], [ %.0.i, %bb.s ]
  ret ptr %.0.i55

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29:   ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.sroa.042.2 = phi ptr [ %.sroa.042.066, %.loopexit ], [ %.sroa.042.0.lcssa, %bb.i ], [ %.sroa.042.066, %.loopexit.split-lp ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.068, %.loopexit ], [ %.sroa.14.0.lcssa, %bb.i ], [ %.sroa.14.068, %.loopexit.split-lp ]
  %.pn23 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %i.y, %bb.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %.sroa.042.2, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29, %bb.q
  %.sink93 = phi ptr [ %i.as, %bb.q ], [ %.sroa.14.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29 ]
end_hunk_10
