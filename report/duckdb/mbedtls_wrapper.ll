inline.NumInlined: 348
inline.NumDeleted: 181
begin_hunk_0_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLSD0Ev:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @mbedtls_cipher_free(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLSD0Ev:bb.a
  br i1 %.not.i.i, label %_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLSD2Ev.exit, label %_ZNKSt14default_deleteI24mbedtls_cipher_context_tEclEPS0_.exit.i.i

_ZNKSt14default_deleteI24mbedtls_cipher_context_tEclEPS0_.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.pr.i) #21
  br label %_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLSD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLSD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZNKSt14default_deleteI24mbedtls_cipher_context_tEclEPS0_.exit.i.i
  tail call void @_ZN6duckdb15EncryptionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(33) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS26GenerateRandomDataInsecureEPhm:bb.a
  %5 = alloca %"class.duckdb::RandomEngine", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS26GenerateRandomDataInsecureEPhm:bb.a
  %i.n = sub i64 %.01624, %i.l                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS20InitializeEncryptionERN6duckdb15EncryptionNonceEPKhS6_m
define hidden void @_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS20InitializeEncryptionERN6duckdb15EncryptionNonceEPKhS6_m(ptr noundef nonnull align 8 dereferenceable(33) initializes((16, 20)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS20InitializeDecryptionERN6duckdb15EncryptionNonceEPKhS6_m
define hidden void @_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS20InitializeDecryptionERN6duckdb15EncryptionNonceEPKhS6_m(ptr noundef nonnull align 8 dereferenceable(33) initializes((16, 20)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_5
begin_hunk_6_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS7ProcessEPKhmPhm:bb.a
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.016 = phi ptr [ %i.f, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %4, ptr %i.a, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = invoke i32 @mbedtls_cipher_update(ptr noundef %i.i, ptr noundef %1, i64 noundef %2, ptr noundef %.016, ptr noundef nonnull %i.a)
end_hunk_6
begin_hunk_7_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS7ProcessEPKhmPhm:bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_7
begin_hunk_8_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS11FinalizeGCMEPhm:bb.a
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69
  switch i32 %i.c, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.f
end_hunk_8
begin_hunk_9_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS11FinalizeGCMEPhm:bb.a

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.s = load i32, ptr %i.b, align 8, !tbaa !69
  store i32 %i.s, ptr %i.a, align 4, !tbaa !3
  invoke void @_ZN6duckdb17InternalExceptionC2IJiEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.n unwind label %bb.o
end_hunk_9
begin_hunk_10_@_ZN6duckdb17InternalExceptionC2IJiEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !71
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !35, !noalias !71 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38, !noalias !71 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_10
begin_hunk_11_@_ZN6duckdb17InternalExceptionC2IJiEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !35, !noalias !71
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
end_hunk_11
begin_hunk_12_@_ZN6duckdb17InternalExceptionC2IJiEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !71
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !71
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

end_hunk_12
begin_hunk_13_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS8FinalizeEPhmS2_m:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %2, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = call i32 @mbedtls_cipher_finish(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a)
end_hunk_13
begin_hunk_14_@_ZN14duckdb_mbedtls14MbedTlsWrapper15AESStateMBEDTLS8FinalizeEPhmS2_m:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i64, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %i.k
}
end_hunk_14
begin_hunk_15_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !80
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !7, !alias.scope !75, !noalias !78
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !15, !alias.scope !78, !noalias !75 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11, !alias.scope !78, !noalias !75 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !80
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !15, !alias.scope !75, !noalias !78
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !14, !alias.scope !78, !noalias !75
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !14, !alias.scope !75, !noalias !78
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !78, !noalias !75
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !11, !alias.scope !75, !noalias !78
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !15, !alias.scope !78, !noalias !75
  store i64 0, ptr %i.ar, align 8, !tbaa !11, !alias.scope !78, !noalias !75
  store i8 0, ptr %i.aj, align 8, !tbaa !14, !alias.scope !78, !noalias !75
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !87
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !7, !alias.scope !82, !noalias !85
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !15, !alias.scope !85, !noalias !82 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11, !alias.scope !85, !noalias !82 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !87
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !15, !alias.scope !82, !noalias !85
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !14, !alias.scope !85, !noalias !82
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !14, !alias.scope !82, !noalias !85
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !11, !alias.scope !85, !noalias !82
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !11, !alias.scope !82, !noalias !85
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !15, !alias.scope !85, !noalias !82
  store i64 0, ptr %i.bi, align 8, !tbaa !11, !alias.scope !85, !noalias !82
  store i8 0, ptr %i.ba, align 8, !tbaa !14, !alias.scope !85, !noalias !82
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !81

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store ptr %i.p, ptr %0, align 8, !tbaa !35
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !74
  ret void
}

end_hunk_18
begin_hunk_19_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = load i32, ptr %3, align 4, !tbaa !3, !noalias !88
  %i.b = sext i32 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

end_hunk_19
begin_hunk_20_@llvm.experimental.noalias.scope.decl
!63 = !{!"_ZTSSt11_Tuple_implILm0EJP24mbedtls_cipher_context_tSt14default_deleteIS0_EEE", !64, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EP24mbedtls_cipher_context_tLb0EE", !46, i64 0}
!65 = !{!"bool", !5, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = distinct !{!68, !17}
!69 = !{!48, !57, i64 16}
!70 = !{!13, !13, i64 0}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!73 = distinct !{!73, !"_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!74 = !{!36, !37, i64 16}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!80 = !{!76, !79}
!81 = distinct !{!81, !17}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!84 = distinct !{!84, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!85 = !{!86}
!86 = distinct !{!86, !84, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!87 = !{!83, !86}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!90 = distinct !{!90, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
end_hunk_20
