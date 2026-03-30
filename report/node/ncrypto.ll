begin_hunk_0
%"struct.std::_Optional_payload_base.base.297" = type <{ %"union.std::_Optional_payload_base<ncrypto::Rsa::PssParams>::_Storage", i8 }>
%"union.std::_Optional_payload_base<ncrypto::Rsa::PssParams>::_Storage" = type { %"struct.ncrypto::Rsa::PssParams" }
%"struct.ncrypto::Rsa::PssParams" = type { %"class.std::basic_string_view", %"class.std::optional.59", i64 }
%"struct.ncrypto::(anonymous namespace)::CipherCallbackContext" = type { %"class.std::function.101" }
%"class.std::function.101" = type { %"class.std::_Function_base", ptr }
%"class.ncrypto::EVPMDCtxPointer" = type { %"class.std::unique_ptr.284" }
%"class.std::unique_ptr.284" = type { %"struct.std::__uniq_ptr_data.285" }
%"struct.std::__uniq_ptr_data.285" = type { %"class.std::__uniq_ptr_impl.286" }
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto6Cipher7ForEachESt8functionIFvPKcEE(ptr noundef captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.ncrypto::(anonymous namespace)::CipherCallbackContext", align 16 ; 7 uses
  tail call void @ERR_clear_error() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvPKcEEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPKcEEaSEOS3_.exit

_ZNSt8functionIFvPKcEEaSEOS3_.exit:               ; preds = %bb.a, %bb.b
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload, %bb.b ]
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %1, align 16
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store <2 x ptr> %i.b, ptr %2, align 16
  call void @EVP_CIPHER_do_all_sorted(ptr noundef nonnull @_ZN7ncrypto12_GLOBAL__N_115array_push_backI13evp_cipher_stTnPFPT_P15ossl_lib_ctx_stPKcS8_EXadL_Z16EVP_CIPHER_fetchEETnPFvS4_EXadL_Z15EVP_CIPHER_freeEETnPFPKS3_S8_EXadL_Z20EVP_get_cipherbynameEETnPFS8_SE_EXadL_Z20EVP_CIPHER_get0_nameEEEEvSE_S8_S8_Pv, ptr noundef nonnull %1) #22
  %i.d = load ptr, ptr %2, align 16               ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvPKcEEaSEOS3_.exit
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #22 ; 0 uses
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.c, %_ZNSt8functionIFvPKcEEaSEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @ERR_clear_error() #22
  ret void
}
end_hunk_2
