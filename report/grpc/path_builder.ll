Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/path_builder?download=true
inline.NumInlined: 1874
inline.NumDeleted: 920
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !315
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !315
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9722)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !300, !alias.scope !9722, !noalias !9721
  store ptr null, ptr %i.z, align 8, !tbaa !301, !alias.scope !9722, !noalias !9721
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !300, !alias.scope !9721, !noalias !9722
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !273, !alias.scope !9722, !noalias !9721
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !216

_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9724)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !300, !alias.scope !9724, !noalias !9723
  store ptr null, ptr %i.ae, align 8, !tbaa !301, !alias.scope !9724, !noalias !9723
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !300, !alias.scope !9723, !noalias !9724
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !273, !alias.scope !9724, !noalias !9723
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !216

_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5701
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !5696
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !5697
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !5701
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4bssl12CertPathIterD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5687 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4bssl16CertIssuerSourceESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5688
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIPN4bssl16CertIssuerSourceESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4bssl16CertIssuerSourceESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !276
  invoke void @_ZNSt8_Rb_treeISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
          to label %_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4bssl16CertIssuerSourceESaIS2_EED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN4bssl16CertIssuerSourceESaIS2_EED2Ev.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !5689 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !5690 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.n, %_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i ] ; 2 uses
  tail call fastcc void @_ZNSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull readonly align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #26
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !5689
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %_ZNSt3setISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEES4_S4_EESt4lessIS5_ESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN4bssl12_GLOBAL__N_118CertIssuerIterPathD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i = load ptr, ptr %i.r, align 8, !tbaa !5692
  %i.s = ptrtoint ptr %.val1.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.u) #27
  br label %_ZN4bssl12_GLOBAL__N_118CertIssuerIterPathD2Ev.exit

_ZN4bssl12_GLOBAL__N_118CertIssuerIterPathD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4bssl12_GLOBAL__N_115CertIssuersIterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !301 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i1, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl12_GLOBAL__N_118CertIssuerIterPathD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.w, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !304
  %i.ab = load ptr, ptr %.val, align 8, !tbaa !306
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !call_target !311, !inline_history !9725
  %i.ae = load ptr, ptr %.val, align 8, !tbaa !306
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !call_target !313, !inline_history !9725
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i2 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.j, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev.exit, !prof !316

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev.exit

_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev.exit:     ; preds = %_ZN4bssl12_GLOBAL__N_118CertIssuerIterPathD2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5774 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !5773   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !5776
  store i64 %i.r, ptr %i.q, align 8, !tbaa !5776
  store ptr null, ptr %2, align 8, !tbaa !5776
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %3 = and i64 %i.t, -8
  %4 = add i64 %3, 8                              ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %4
  %6 = getelementptr i8, ptr %i.c, i64 %4
  %bound0 = icmp ult ptr %i.p, %6
  %bound1 = icmp ult ptr %i.c, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9743)
  %i.aa = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !5776, !alias.scope !9744, !noalias !9742
  %wide.load37 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !5776, !alias.scope !9744, !noalias !9742
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !5776, !alias.scope !9745, !noalias !9744
  store <2 x i64> %wide.load37, ptr %i.ab, align 8, !tbaa !5776, !alias.scope !9745, !noalias !9744
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !5776, !alias.scope !9744, !noalias !9742
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !5776, !alias.scope !9744, !noalias !9742
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !9732

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader64

.lr.ph.i.i.i.preheader64:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader64, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9743)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !5776, !alias.scope !9743, !noalias !9742
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !5776, !alias.scope !9742, !noalias !9743
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !5776, !alias.scope !9743, !noalias !9742
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !9733

_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check45, label %.lr.ph.i.i.i17.preheader63, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound047 = icmp ult ptr %i.ah, %i.aq
  %bound148 = icmp ult ptr %1, %i.ao
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %.lr.ph.i.i.i17.preheader63, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck46
  %n.vec51 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec51, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.au = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep55 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9747)
  %i.av = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load56 = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !5776, !alias.scope !9748, !noalias !9746
  %wide.load57 = load <2 x i64>, ptr %i.av, align 8, !tbaa !5776, !alias.scope !9748, !noalias !9746
  %i.aw = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x i64> %wide.load56, ptr %next.gep54, align 8, !tbaa !5776, !alias.scope !9749, !noalias !9748
  store <2 x i64> %wide.load57, ptr %i.aw, align 8, !tbaa !5776, !alias.scope !9749, !noalias !9748
  %i.ax = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !5776, !alias.scope !9748, !noalias !9746
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !5776, !alias.scope !9748, !noalias !9746
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.ay, label %middle.block59, label %vector.body52, !llvm.loop !9740

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.al, %n.vec51
  br i1 %cmp.n60, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader63

.lr.ph.i.i.i17.preheader63:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block59
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck46 ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block59 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block59 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader63, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader63 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader63 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9747)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !5776, !alias.scope !9747, !noalias !9746
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !5776, !alias.scope !9746, !noalias !9747
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !5776, !alias.scope !9747, !noalias !9746
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !9741

_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block59, %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block59 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !5772
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !5773
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !5774
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !5772
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!217, !218, !219, !220, !221}
!llvm.ident = !{!222}
!llvm.errno.tbaa = !{!227}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !312, file: !307, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParsedCertificate", scope: !325, file: !324, line: 47, size: 6272, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4bssl17ParsedCertificateE")
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "optional<bssl::CertificateTrust>", scope: !312, file: !364, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8optionalIN4bssl16CertificateTrustEE")
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!5 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !312, file: !792, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !196, file: !367, line: 160, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !312, file: !929, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !977, templateParams: !978, identifier: "_ZTSSt11char_traitsIcE")
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !312, file: !794, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !925, templateParams: !928, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<bssl::(anonymous namespace)::CertIssuersIter>", scope: !312, file: !1079, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !1152, templateParams: !1154)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter>, void>", scope: !24, file: !1079, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !1159)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !312, file: !1097, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !1232, identifier: "_ZTSSt13__conditionalILb1EE")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !17, file: !1306, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !1314, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !312, file: !1306, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !1155, identifier: "_ZTSSt17__uses_alloc_base")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !312, file: !1306, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !1309, identifier: "_ZTSSt13__uses_alloc0")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !312, file: !1306, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !1319, identifier: "_ZTSSt15allocator_arg_t")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, bssl::(anonymous namespace)::CertIssuersIter *, false>", scope: !312, file: !1201, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1305, templateParams: !1323)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter>, true>", scope: !312, file: !1201, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1382, templateParams: !1386)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >", scope: !312, file: !1201, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1354, templateParams: !1390)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, bssl::(anonymous namespace)::CertIssuersIter *, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >", scope: !312, file: !1201, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1277, templateParams: !1394)
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<bssl::(anonymous namespace)::CertIssuersIter *, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >", scope: !312, file: !1201, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1230, templateParams: !1395)
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >", scope: !312, file: !1079, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1200, templateParams: !1397)
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const std::shared_ptr<const bssl::ParsedCertificate> *, std::vector<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEEE")
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<std::shared_ptr<const bssl::ParsedCertificate> *, std::vector<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEEE")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const std::shared_ptr<const bssl::ParsedCertificate> *>", scope: !312, file: !1704, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !1747, identifier: "_ZTSSt15iterator_traitsIPKSt10shared_ptrIKN4bssl17ParsedCertificateEEE")
!28 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const std::shared_ptr<const bssl::ParsedCertificate> *, std::vector<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1745, templateParams: !1749, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS5_SaIS5_EEEE")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<std::shared_ptr<const bssl::ParsedCertificate> *>", scope: !312, file: !1704, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !1800, identifier: "_ZTSSt15iterator_traitsIPSt10shared_ptrIKN4bssl17ParsedCertificateEEE")
!30 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<std::shared_ptr<const bssl::ParsedCertificate> *, std::vector<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1798, templateParams: !1801, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS5_SaIS5_EEEE")
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<std::shared_ptr<const bssl::ParsedCertificate> >", scope: !312, file: !792, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listISt10shared_ptrIKN4bssl17ParsedCertificateEEE")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > >", scope: !312, file: !1097, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !1803, identifier: "_ZTSSt15__type_identityISaISt10shared_ptrIKN4bssl17ParsedCertificateEEEE")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > *>", scope: !312, file: !1704, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2084)
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > *, std::vector<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >, std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2082, templateParams: !2086)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > *>", scope: !312, file: !1704, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2136)
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > *, std::vector<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >, std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2134, templateParams: !2137)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > >", scope: !312, file: !1097, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2139)
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > >", scope: !312, file: !979, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2156, templateParams: !2158)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > >", scope: !41, file: !368, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2158)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > >", scope: !312, file: !369, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !2181, templateParams: !2183)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > >, std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > >", scope: !793, file: !368, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2196, templateParams: !2198)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !44, file: !1454, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2293)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !44, file: !1454, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2272)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >, std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > >", scope: !312, file: !1454, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2252, templateParams: !2294)
!45 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> >, std::allocator<std::unique_ptr<bssl::(anonymous namespace)::CertIssuersIter, std::default_delete<bssl::(anonymous namespace)::CertIssuersIter> > > >", scope: !312, file: !1454, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2034, templateParams: !2296)
!46 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<std::shared_ptr<const bssl::ParsedCertificate> >", scope: !312, file: !996, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2349, templateParams: !2351, identifier: "_ZTSSt15__new_allocatorISt10shared_ptrIKN4bssl17ParsedCertificateEEE")
!47 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::shared_ptr<const bssl::ParsedCertificate> >", scope: !312, file: !979, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2313, templateParams: !2351, identifier: "_ZTSSaISt10shared_ptrIKN4bssl17ParsedCertificateEEE")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::shared_ptr<const bssl::ParsedCertificate> >", scope: !50, file: !368, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2351, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrIKN4bssl17ParsedCertificateEEES5_E6rebindIS5_EE")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > >", scope: !312, file: !369, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !2372, templateParams: !2374, identifier: "_ZTSSt16allocator_traitsISaISt10shared_ptrIKN4bssl17ParsedCertificateEEEE")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<std::shared_ptr<const bssl::ParsedCertificate> >, std::shared_ptr<const bssl::ParsedCertificate> >", scope: !793, file: !368, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2387, templateParams: !2389, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrIKN4bssl17ParsedCertificateEEES5_EE")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !312, file: !1097, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2399, templateParams: !2402, identifier: "_ZTSSt17integral_constantIbLb0EE")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !312, file: !1097, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2411, templateParams: !2413, identifier: "_ZTSSt17integral_constantIbLb1EE")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !55, file: !1454, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2508, identifier: "_ZTSNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE17_Vector_impl_dataE")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !55, file: !1454, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2487, identifier: "_ZTSNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE12_Vector_implE")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > >", scope: !312, file: !1454, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2467, templateParams: !2509, identifier: "_ZTSSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE")
!56 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<std::shared_ptr<const bssl::ParsedCertificate>, std::allocator<std::shared_ptr<const bssl::ParsedCertificate> > >", scope: !312, file: !1454, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1693, templateParams: !2511, identifier: "_ZTSSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IssuerEntry", scope: !1399, file: !1398, line: 75, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2515)
!58 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > *, std::vector<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEE")
!59 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > *, std::vector<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > > > >", scope: !312, file: !791, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEE")
!60 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > *, std::vector<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > > >", scope: !793, file: !791, line: 1047, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEE")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > *>", scope: !312, file: !1704, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2798, identifier: "_ZTSSt15iterator_traitsIPSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EEE")
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > *, std::vector<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > > >", scope: !793, file: !791, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2796, templateParams: !2800, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEE")
!63 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >", scope: !312, file: !792, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EEE")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > >", scope: !312, file: !1097, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2802, identifier: "_ZTSSt15__type_identityISaISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EEEE")
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >", scope: !312, file: !996, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2856, templateParams: !2858, identifier: "_ZTSSt15__new_allocatorISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EEE")
!66 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >", scope: !312, file: !979, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2819, templateParams: !2858, identifier: "_ZTSSaISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EEE")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >", scope: !83, file: !368, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2858, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS4_EEES7_E6rebindIS7_EE")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<bssl::CertIssuerSource::Request>", scope: !312, file: !1079, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !2928, templateParams: !2930, identifier: "_ZTSSt14default_deleteIN4bssl16CertIssuerSource7RequestEE")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request>, void>", scope: !75, file: !1079, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2933, identifier: "_ZTSNSt15__uniq_ptr_implIN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EE4_PtrIS2_S4_vEE")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, bssl::CertIssuerSource::Request *, false>", scope: !312, file: !1201, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3074, templateParams: !3076, identifier: "_ZTSSt10_Head_baseILm0EPN4bssl16CertIssuerSource7RequestELb0EE")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<bssl::CertIssuerSource::Request>, true>", scope: !312, file: !1201, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3135, templateParams: !3137, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteIN4bssl16CertIssuerSource7RequestEELb1EE")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<bssl::CertIssuerSource::Request> >", scope: !312, file: !1201, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3107, templateParams: !3141, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteIN4bssl16CertIssuerSource7RequestEEEE")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, bssl::CertIssuerSource::Request *, std::default_delete<bssl::CertIssuerSource::Request> >", scope: !312, file: !1201, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3046, templateParams: !3145, identifier: "_ZTSSt11_Tuple_implILm0EJPN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EEE")
!74 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<bssl::CertIssuerSource::Request *, std::default_delete<bssl::CertIssuerSource::Request> >", scope: !312, file: !1201, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3001, templateParams: !3146, identifier: "_ZTSSt5tupleIJPN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EEE")
!75 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >", scope: !312, file: !1079, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2974, templateParams: !3148, identifier: "_ZTSSt15__uniq_ptr_implIN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EE")
!76 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CertIssuerSource", scope: !325, file: !3149, line: 34, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4bssl16CertIssuerSourceE")
!77 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Request", scope: !76, file: !3149, line: 36, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4bssl16CertIssuerSource7RequestE")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<bssl::CertIssuerSource::Request, void>", scope: !312, file: !1097, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !3150, identifier: "_ZTSSt29__add_lvalue_reference_helperIN4bssl16CertIssuerSource7RequestEvE")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<bssl::CertIssuerSource::Request>", scope: !312, file: !1097, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !2930, identifier: "_ZTSSt20add_lvalue_referenceIN4bssl16CertIssuerSource7RequestEE")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request>, true, true>", scope: !312, file: !1079, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3161, templateParams: !3162, identifier: "_ZTSSt15__uniq_ptr_dataIN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_ELb1ELb1EE")
!81 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >", scope: !312, file: !1079, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2918, templateParams: !3164, identifier: "_ZTSSt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS2_EE")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > >", scope: !312, file: !369, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !3185, templateParams: !3187, identifier: "_ZTSSt16allocator_traitsISaISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EEEE")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >, std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > >", scope: !793, file: !368, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !3200, templateParams: !3202, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS4_EEES7_EE")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !86, file: !1454, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3297, identifier: "_ZTSNSt12_Vector_baseISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !86, file: !1454, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3276, identifier: "_ZTSNSt12_Vector_baseISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EESaIS6_EE12_Vector_implE")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > >", scope: !312, file: !1454, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3256, templateParams: !3298, identifier: "_ZTSSt12_Vector_baseISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EESaIS6_EE")
!87 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> >, std::allocator<std::unique_ptr<bssl::CertIssuerSource::Request, std::default_delete<bssl::CertIssuerSource::Request> > > >", scope: !312, file: !1454, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2747, templateParams: !3300, identifier: "_ZTSSt6vectorISt10unique_ptrIN4bssl16CertIssuerSource7RequestESt14default_deleteIS3_EESaIS6_EE")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Local_const_iterator<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::__detail::_Identity, std::hash<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true, true>", scope: !3512, file: !3310, line: 1590, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8__detail21_Local_const_iteratorISt17basic_string_viewIcSt11char_traitsIcEES4_NS_9_IdentityESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1ELb1EEE")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Local_iterator<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::__detail::_Identity, std::hash<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true, true>", scope: !3512, file: !3310, line: 1536, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8__detail15_Local_iteratorISt17basic_string_viewIcSt11char_traitsIcEES4_NS_9_IdentityESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1ELb1EEE")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::__detail::_Node_const_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>, std::__detail::_Node_const_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true> >", scope: !312, file: !791, line: 2992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt4pairINSt8__detail20_Node_const_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEES6_E")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::__detail::_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>, std::__detail::_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true> >", scope: !312, file: !791, line: 2992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt4pairINSt8__detail14_Node_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEES6_E")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Node_insert_return<std::__detail::_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>, std::_Node_handle<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::allocator<std::__detail::_Hash_node<std::basic_string_view<char, std::char_traits<char> >, true> > > >", scope: !312, file: !3513, line: 394, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt19_Node_insert_returnINSt8__detail14_Node_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEESt12_Node_handleIS5_S5_SaINS0_10_Hash_nodeIS5_Lb1EEEEEE")
!93 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Node_handle<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::allocator<std::__detail::_Hash_node<std::basic_string_view<char, std::char_traits<char> >, true> > >", scope: !312, file: !3513, line: 342, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Node_handleISt17basic_string_viewIcSt11char_traitsIcEES3_SaINSt8__detail10_Hash_nodeIS3_Lb1EEEEE")
!94 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<std::__detail::_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>, bool>", scope: !312, file: !3514, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !3557, templateParams: !3560, identifier: "_ZTSSt11__pair_baseINSt8__detail14_Node_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEEbE")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::__detail::_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>, bool>", scope: !312, file: !3514, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3542, templateParams: !3563, identifier: "_ZTSSt4pairINSt8__detail14_Node_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEEbE")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Node_const_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>", scope: !3512, file: !3310, line: 465, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8__detail20_Node_const_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEE")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hash_node_code_cache<true>", scope: !3512, file: !3310, line: 362, size: 64, flags: DIFlagTypePassByValue, elements: !3614, templateParams: !3616, identifier: "_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !99, file: !1097, line: 2104, size: 64, align: 64, flags: DIFlagTypePassByValue, elements: !1155, identifier: "_ZTSNSt15aligned_storageILm16ELm8EE4typeUt_E")
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "type", scope: !100, file: !1097, line: 2101, size: 128, flags: DIFlagTypePassByValue, elements: !3668, identifier: "_ZTSNSt15aligned_storageILm16ELm8EE4typeE")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<16UL, 8UL>", scope: !312, file: !1097, line: 2099, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !3671, identifier: "_ZTSSt15aligned_storageILm16ELm8EE")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__aligned_buffer<std::basic_string_view<char, std::char_traits<char> > >", scope: !793, file: !3636, line: 92, size: 128, flags: DIFlagTypePassByValue, elements: !3661, templateParams: !3673, identifier: "_ZTSN9__gnu_cxx16__aligned_bufferISt17basic_string_viewIcSt11char_traitsIcEEEE")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hash_node_value_base<std::basic_string_view<char, std::char_traits<char> > >", scope: !3512, file: !3310, line: 324, size: 128, flags: DIFlagTypePassByValue, elements: !3635, templateParams: !3675, identifier: "_ZTSNSt8__detail21_Hash_node_value_baseISt17basic_string_viewIcSt11char_traitsIcEEEE")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hash_node_value<std::basic_string_view<char, std::char_traits<char> >, true>", scope: !3512, file: !3310, line: 366, size: 192, flags: DIFlagTypePassByValue, elements: !3612, templateParams: !3676, identifier: "_ZTSNSt8__detail16_Hash_node_valueISt17basic_string_viewIcSt11char_traitsIcEELb1EEE")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hash_node_base", scope: !3512, file: !3310, line: 309, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3686, identifier: "_ZTSNSt8__detail15_Hash_node_baseE")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hash_node<std::basic_string_view<char, std::char_traits<char> >, true>", scope: !3512, file: !3310, line: 375, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3609, templateParams: !3676, identifier: "_ZTSNSt8__detail10_Hash_nodeISt17basic_string_viewIcSt11char_traitsIcEELb1EEE")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Node_iterator_base<std::basic_string_view<char, std::char_traits<char> >, true>", scope: !3512, file: !3310, line: 386, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3697, templateParams: !3676, identifier: "_ZTSNSt8__detail19_Node_iterator_baseISt17basic_string_viewIcSt11char_traitsIcEELb1EEE")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Node_iterator<std::basic_string_view<char, std::char_traits<char> >, true, true>", scope: !3512, file: !3310, line: 415, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3600, templateParams: !3700, identifier: "_ZTSNSt8__detail14_Node_iteratorISt17basic_string_viewIcSt11char_traitsIcEELb1ELb1EEE")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Hashtable_traits<true, true, true>", scope: !3512, file: !3310, line: 280, size: 8, flags: DIFlagTypePassByValue, elements: !1155, templateParams: !3736, identifier: "_ZTSNSt8__detail17_Hashtable_traitsILb1ELb1ELb1EEE")
!109 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<bool, unsigned long>", scope: !312, file: !3514, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !3810, templateParams: !3813, identifier: "_ZTSSt11__pair_baseIbmE")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<bool, unsigned long>", scope: !312, file: !3514, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3795, templateParams: !3816, identifier: "_ZTSSt4pairIbmE")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Prime_rehash_policy", scope: !3512, file: !3310, line: 540, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3767, identifier: "_ZTSNSt8__detail20_Prime_rehash_policyE")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Default_ranged_hash", scope: !3512, file: !3310, line: 536, size: 8, flags: DIFlagFwdDecl, identifier: "_ZTSNSt8__detail20_Default_ranged_hashE")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Mod_range_hashing", scope: !3512, file: !3310, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !3825, identifier: "_ZTSNSt8__detail18_Mod_range_hashingE")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Identity", scope: !3512, file: !3310, line: 85, size: 8, flags: DIFlagTypePassByValue, elements: !1155, identifier: "_ZTSNSt8__detail9_IdentityE")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Insert_base<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::allocator<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Identity, std::equal_to<std::basic_string_view<char, std::char_traits<char> > >, std::hash<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true> >", scope: !3512, file: !3310, line: 877, size: 8, flags: DIFlagTypePassByValue, elements: !3723, templateParams: !3733, identifier: "_ZTSNSt8__detail12_Insert_baseISt17basic_string_viewIcSt11char_traitsIcEES4_SaIS4_ENS_9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEEE")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Insert<std::basic_string_view<char, std::char_traits<char> >, std::basic_string_view<char, std::char_traits<char> >, std::allocator<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Identity, std::equal_to<std::basic_string_view<char, std::char_traits<char> > >, std::hash<std::basic_string_view<char, std::char_traits<char> > >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>, true>", scope: !3512, file: !3310, line: 1049, size: 8, flags: DIFlagTypePassByValue, elements: !3837, templateParams: !3839, identifier: "_ZTSNSt8__detail7_InsertISt17basic_string_viewIcSt11char_traitsIcEES4_SaIS4_ENS_9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEELb1EEE")
!117 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<std::basic_string_view<char, std::char_traits<char> > >", scope: !312, file: !792, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE")
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::basic_string_view<char, std::char_traits<char> > >", scope: !312, file: !979, line: 130, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaISt17basic_string_viewIcSt11char_traitsIcEEE")
end_hunk_0
begin_hunk_1_@bcmp
!9529 = !DISubroutineType(types: !9528)
!9530 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E17_S_select_on_copyERKS7_", scope: !6094, file: !368, line: 97, type: !9529, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9531 = !{null, !9460, !9460}
!9532 = !DISubroutineType(types: !9531)
!9533 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E10_S_on_swapERS7_S9_", scope: !6094, file: !368, line: 101, type: !9532, scopeLine: 101, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9534 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E27_S_propagate_on_copy_assignEv", scope: !6094, file: !368, line: 105, type: !1204, scopeLine: 105, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9535 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E27_S_propagate_on_move_assignEv", scope: !6094, file: !368, line: 109, type: !1204, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9536 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E20_S_propagate_on_swapEv", scope: !6094, file: !368, line: 113, type: !1204, scopeLine: 113, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9537 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E15_S_always_equalEv", scope: !6094, file: !368, line: 117, type: !1204, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9538 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS3_EEES6_E15_S_nothrow_moveEv", scope: !6094, file: !368, line: 121, type: !1204, scopeLine: 121, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9539 = !{!9527, !9530, !9533, !9534, !9535, !9536, !9537, !9538}
!9540 = !DITemplateTypeParameter(type: !6057, defaulted: true)
!9541 = !{!9525, !9540}
!9542 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !6097, file: !1454, line: 374, baseType: !6096, size: 192)
!9543 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9124, size: 64)
!9544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6097, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9545 = !{!9543, !9544}
!9546 = !DISubroutineType(types: !9545)
!9547 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE19_M_get_Tp_allocatorEv", scope: !6097, file: !1454, line: 301, type: !9546, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9124)
!9549 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9548, size: 64)
!9550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6097)
!9551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9550, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9552 = !{!9549, !9551}
!9553 = !DISubroutineType(types: !9552)
!9554 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE19_M_get_Tp_allocatorEv", scope: !6097, file: !1454, line: 306, type: !9553, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9555 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !6097, file: !1454, line: 297, baseType: !6091)
!9556 = !{!9555, !9551}
!9557 = !DISubroutineType(types: !9556)
!9558 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE13get_allocatorEv", scope: !6097, file: !1454, line: 311, type: !9557, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9559 = !{null, !9544}
!9560 = !DISubroutineType(types: !9559)
!9561 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4Ev", scope: !6097, file: !1454, line: 315, type: !9560, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9555)
!9563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9562, size: 64)
!9564 = !{null, !9544, !9563}
!9565 = !DISubroutineType(types: !9564)
!9566 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4ERKS6_", scope: !6097, file: !1454, line: 321, type: !9565, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9567 = !{null, !9544, !372}
!9568 = !DISubroutineType(types: !9567)
!9569 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4Em", scope: !6097, file: !1454, line: 327, type: !9568, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9570 = !{null, !9544, !372, !9563}
!9571 = !DISubroutineType(types: !9570)
!9572 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4EmRKS6_", scope: !6097, file: !1454, line: 333, type: !9571, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9573 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !6097, size: 64)
!9574 = !{null, !9544, !9573}
!9575 = !DISubroutineType(types: !9574)
!9576 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4EOS7_", scope: !6097, file: !1454, line: 338, type: !9575, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9577 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !9124, size: 64)
!9578 = !{null, !9544, !9577}
!9579 = !DISubroutineType(types: !9578)
!9580 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4EOS6_", scope: !6097, file: !1454, line: 343, type: !9579, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9581 = !{null, !9544, !9573, !9563}
!9582 = !DISubroutineType(types: !9581)
!9583 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4EOS7_RKS6_", scope: !6097, file: !1454, line: 347, type: !9582, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9584 = !{null, !9544, !9563, !9573}
!9585 = !DISubroutineType(types: !9584)
!9586 = !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EEC4ERKS6_OS7_", scope: !6097, file: !1454, line: 361, type: !9585, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9587 = !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EED4Ev", scope: !6097, file: !1454, line: 367, type: !9560, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9588 = !{!9120, !9544, !372}
!9589 = !DISubroutineType(types: !9588)
!9590 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm", scope: !6097, file: !1454, line: 378, type: !9589, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9591 = !{null, !9544, !9120, !372}
!9592 = !DISubroutineType(types: !9591)
!9593 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m", scope: !6097, file: !1454, line: 386, type: !9592, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9594 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_M_create_storageEm", scope: !6097, file: !1454, line: 396, type: !9568, scopeLine: 396, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9595 = !{!9542, !9547, !9554, !9558, !9561, !9566, !9569, !9572, !9576, !9580, !9583, !9586, !9587, !9590, !9593, !9594}
!9596 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !6096, baseType: !9124, extraData: i32 0)
!9597 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !6096, baseType: !6095, extraData: i32 0)
!9598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9599 = !{null, !9598}
!9600 = !DISubroutineType(types: !9599)
!9601 = !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_Vector_implC4Ev", scope: !6096, file: !1454, line: 137, type: !9600, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9602 = !{null, !9598, !9549}
!9603 = !DISubroutineType(types: !9602)
!9604 = !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_Vector_implC4ERKS6_", scope: !6096, file: !1454, line: 146, type: !9603, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9605 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !6096, size: 64)
!9606 = !{null, !9598, !9605}
!9607 = !DISubroutineType(types: !9606)
!9608 = !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_Vector_implC4EOS8_", scope: !6096, file: !1454, line: 154, type: !9607, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9609 = !{null, !9598, !9577}
!9610 = !DISubroutineType(types: !9609)
!9611 = !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_Vector_implC4EOS6_", scope: !6096, file: !1454, line: 159, type: !9610, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9612 = !{null, !9598, !9577, !9605}
!9613 = !DISubroutineType(types: !9612)
!9614 = !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE12_Vector_implC4EOS6_OS8_", scope: !6096, file: !1454, line: 164, type: !9613, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9615 = !{!9596, !9597, !9601, !9604, !9608, !9611, !9614}
!9616 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !6095, file: !1454, line: 94, baseType: !9120, size: 64)
!9617 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !6095, file: !1454, line: 95, baseType: !9120, size: 64, offset: 64)
!9618 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !6095, file: !1454, line: 96, baseType: !9120, size: 64, offset: 128)
!9619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9620 = !{null, !9619}
!9621 = !DISubroutineType(types: !9620)
!9622 = !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataC4Ev", scope: !6095, file: !1454, line: 99, type: !9621, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9623 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !6095, size: 64)
!9624 = !{null, !9619, !9623}
!9625 = !DISubroutineType(types: !9624)
!9626 = !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataC4EOS8_", scope: !6095, file: !1454, line: 105, type: !9625, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6095)
!9628 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9627, size: 64)
!9629 = !{null, !9619, !9628}
!9630 = !DISubroutineType(types: !9629)
!9631 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_data12_M_copy_dataERKS8_", scope: !6095, file: !1454, line: 113, type: !9630, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9632 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6095, size: 64)
!9633 = !{null, !9619, !9632}
!9634 = !DISubroutineType(types: !9633)
!9635 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_data12_M_swap_dataERS8_", scope: !6095, file: !1454, line: 122, type: !9634, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9636 = !{!9616, !9617, !9618, !9622, !9626, !9631, !9635}
!9637 = !{!9502, !9525}
!9638 = !DITemplateTypeParameter(name: "_Alloc", type: !6091, defaulted: true)
!9639 = !{!9502, !9638}
!9640 = !{!5796, !225, i64 32}
!9641 = !{!5796, !243, i64 24}
!9642 = !{!5796, !225, i64 36}
!9643 = distinct !{!9643, !5691}
!9644 = distinct !{null}
!9645 = distinct !{!9645, !5691}
!9646 = distinct !{!9646, !5691}
!9647 = distinct !{!9647, !5691}
!9648 = distinct !{!9648, !5691}
!9649 = distinct !{!9649, i1 false, !"_ZSt19__relocate_object_aIN4bssl12_GLOBAL__N_111IssuerEntryES2_SaIS2_EEvPT_PT0_RT1_"}
!9650 = distinct !{!9650, !9649, !"_ZSt19__relocate_object_aIN4bssl12_GLOBAL__N_111IssuerEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!9651 = distinct !{!9651, !9649, !"_ZSt19__relocate_object_aIN4bssl12_GLOBAL__N_111IssuerEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!9652 = distinct !{!9652, !5691}
!9653 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17basic_string_viewIcSt11char_traitsIcEELb1EEEEEE", !228, i64 0}
!9654 = !{!9653, !9653, i64 0}
!9655 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl28ParsedAuthorityKeyIdentifierEE", !224, i64 0, !236, i64 72}
!9656 = !{!9655, !236, i64 72}
!9657 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl3der5InputEE", !224, i64 0, !236, i64 16}
!9658 = !{!9657, !236, i64 16}
!9659 = !{!9650}
!9660 = !{!9651}
!9661 = !{!9650, !9651}
!9662 = distinct !{!9662, !5691}
!9663 = distinct !{!9663, !5691}
!9664 = distinct !{!9664, !5691}
!9665 = distinct !{!9665, !5691}
!9666 = !{!5722, !243, i64 8}
!9667 = distinct !{!9667, !5691}
!9668 = !{!5723, !5719, i64 48}
!9669 = distinct !{null, null, null, ptr @_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9670 = distinct !{!9670, !5691}
!9671 = distinct !{!9671, !5691}
!9672 = distinct !{!9672, !5691}
!9673 = distinct !{!9673, !5691}
!9674 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9675 = distinct !{!9675, !5691}
!9676 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9677 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9678 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9679 = distinct !{!9679, !5691}
!9680 = distinct !{null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9681 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9682 = distinct !{!9682, !5691}
!9683 = distinct !{!9683, !5691}
!9684 = distinct !{!9684, !5691}
!9685 = distinct !{!9685, !5691}
!9686 = distinct !{null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9687 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9688 = distinct !{!9688, !5691}
!9689 = distinct !{null, ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES9_EvT_T0_, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9690 = distinct !{!9690, !5691}
!9691 = distinct !{!9691, !5691}
!9692 = distinct !{!9692, !5691}
!9693 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9694 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9695 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9696 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9697 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9698 = distinct !{!9698, !5691}
!9699 = distinct !{!9699, !5691}
!9700 = distinct !{!9700, !5691}
!9701 = distinct !{!9701, !5691}
!9702 = !{!242, !240, i64 0}
!9703 = !{!242, !241, i64 8}
!9704 = distinct !{null, null}
!9705 = distinct !{!9705, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_"}
!9706 = distinct !{!9706, !9705, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9707 = distinct !{!9707, !9705, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9708 = distinct !{!9708, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_"}
!9709 = distinct !{!9709, !9708, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9710 = distinct !{!9710, !9708, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9711 = !{!9706}
!9712 = !{!9707}
!9713 = !{!9709}
!9714 = !{!9710}
!9715 = distinct !{!9715, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_"}
!9716 = distinct !{!9716, !9715, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9717 = distinct !{!9717, !9715, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9718 = distinct !{!9718, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_"}
!9719 = distinct !{!9719, !9718, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9720 = distinct !{!9720, !9718, !"_ZSt19__relocate_object_aISt10shared_ptrIKN4bssl17ParsedCertificateEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9721 = !{!9716}
!9722 = !{!9717}
!9723 = !{!9719}
!9724 = !{!9720}
!9725 = distinct !{ptr @_ZN4bssl12_GLOBAL__N_111IssuerEntryD2Ev, ptr @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9726 = distinct !{!9726, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!9727 = distinct !{!9727, !9726, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!9728 = distinct !{!9728, !9726, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!9729 = distinct !{!9729, i1 false, !"LVerDomain"}
!9730 = distinct !{!9730, !9729}
!9731 = distinct !{!9731, !9729}
!9732 = distinct !{!9732, !5691, !5740, !5741}
!9733 = distinct !{!9733, !5691, !5740}
!9734 = distinct !{!9734, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!9735 = distinct !{!9735, !9734, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!9736 = distinct !{!9736, !9734, !"_ZSt19__relocate_object_aISt10unique_ptrIN4bssl25CertPathBuilderResultPathESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!9737 = distinct !{!9737, i1 false, !"LVerDomain"}
!9738 = distinct !{!9738, !9737}
!9739 = distinct !{!9739, !9737}
!9740 = distinct !{!9740, !5691, !5740, !5741}
!9741 = distinct !{!9741, !5691, !5740}
!9742 = !{!9727}
!9743 = !{!9728}
!9744 = !{!9728, !9730}
!9745 = !{!9727, !9731}
!9746 = !{!9735}
!9747 = !{!9736}
!9748 = !{!9736, !9738}
!9749 = !{!9735, !9739}
end_hunk_1
