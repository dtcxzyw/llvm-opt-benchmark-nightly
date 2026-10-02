Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-a7f17b7b4e7a41f9.dsl_auto_type.a0dd34975a68d28a-cgu.1?download=true
inline.NumInlined: 173
inline.NumDeleted: 22
begin_hunk_0_@_RNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_mapNtB4_17LocalVariablesMap27infer_block_expression_type:bb.a
bb.s:                                             ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13panic_displayNtNtCshMFl0SviwmK_3syn5error5ErrorECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.b, ptr nonnull align 8 @29) #28
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.b) #25
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_2ty4TypeECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_2ty4TypeECsdOh5Xhm0ZW8_13dsl_auto_type.exit, %bb.ac
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1v_(ptr nonnull align 8 %i.am)
  ret void

bb.x:                                             ; preds = %.body, %bb.ad, %bb.aa, %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.y:                                             ; preds = %bb.l
  store ptr %1, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer21infer_expression_type(ptr nonnull sret([224 x i8]) align 8 %i.i, ptr nonnull align 8 %i.j, ptr align 8 %2, ptr align 8 %3)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  invoke void @_RNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer11into_errors(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.i) #25
          to label %.body unwind label %bb.x

bb.ab:                                            ; preds = %bb.z
  invoke void @_RINvXsi_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBG_E6extendBw_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %5, ptr nonnull align 8 %i.h)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false)
  br label %bb.w

bb.ad:                                            ; preds = %bb.y
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference12TypeInferrerEBH_(ptr nonnull align 8 %i.j) #25
          to label %.body unwind label %bb.x

bb.ae:                                            ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.at = invoke align 8 ptr @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCshMFl0SviwmK_3syn4stmt9LocalInitE6as_refCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.as)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.au = invoke align 8 ptr @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCshMFl0SviwmK_3syn4stmt9LocalInitE3mapRNtNtBN_4expr4ExprNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_mapNtB1O_17LocalVariablesMap27infer_block_expression_type0EB1S_(ptr align 8 %i.at)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_mapNtB4_17LocalVariablesMap11process_pat(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %1, ptr nonnull align 8 %i.ar, ptr align 8 null, ptr align 8 %i.au)
          to label %bb.ah unwind label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.av = load i64, ptr %i.k, align 8
  %.not5 = icmp eq i64 %i.av, -1
  br i1 %.not5, label %.backedge.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.aw = invoke ptr @_RNvMs7_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorE3newCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.e)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE4pushCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %5, ptr %i.aw)
          to label %.backedge.backedge unwind label %.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map17LocalVariablesMapEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninitCsdOh5Xhm0ZW8_13dsl_auto_type(i64 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsdOh5Xhm0ZW8_13dsl_auto_type.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.c = tail call ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 %1, i64 %0) #27
  br label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsdOh5Xhm0ZW8_13dsl_auto_type.exit

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = icmp eq ptr %.sroa.0.0.i, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsdOh5Xhm0ZW8_13dsl_auto_type.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #28
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsdOh5Xhm0ZW8_13dsl_auto_type.exit
  ret ptr %.sroa.0.0.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCscI6d9CVNmLh_4core10intrinsics9cold_pathCsdOh5Xhm0ZW8_13dsl_auto_type() unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytesCsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 2 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdfcQ11shQaG_6strsim(ptr %0, ptr %1, i64 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i64 %2, -8                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.f = icmp samesign ult i64 %i.b, 4
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj4_ECsdfcQ11shQaG_6strsim(ptr %i.d, ptr %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 4, %bb.e ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj2_ECsdfcQ11shQaG_6strsim(ptr %i.i, ptr %i.j)
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj1_ECsdfcQ11shQaG_6strsim(ptr %i.n, ptr %i.o)
  br label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsdOh5Xhm0ZW8_13dsl_auto_type.exit

_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.i, %bb.h, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse213__mm_set1_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i8 %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMs9_NtNtCscI6d9CVNmLh_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCsdfcQ11shQaG_6strsim(ptr nonnull sret([16 x i8]) align 16 %i.a, i8 %1)
  %i.b = load <16 x i8>, ptr %i.a, align 16
  store <16 x i8> %i.b, ptr %0, align 16, !alias.scope !9
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_cmpeq_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #11 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 16
  %i.b = load <16 x i8>, ptr %2, align 16
  %i.c = icmp eq <16 x i8> %i.a, %i.b
  %i.d = sext <16 x i1> %i.c to <16 x i8>
  store <16 x i8> %i.d, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_load_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_store_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 65536) i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load <16 x i8>, ptr %0, align 16
  %i.b = icmp slt <16 x i8> %i.a, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = zext i16 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXCsdOh5Xhm0ZW8_13dsl_auto_typeNtB2_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCshMFl0SviwmK_3syn5error5ErrorE4from(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXNtCshMFl0SviwmK_3syn7spannedNtNtB4_3pat8PatIdentNtB2_7Spanned4spanCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call i32 @_RNvNtCsa66IwKi6YE3_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXNtCshMFl0SviwmK_3syn7spannedRNtNtB4_4attr4MetaNtB2_7Spanned4spanCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call i32 @_RNvNtCsa66IwKi6YE3_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1t_3pat3PatEENtB2_12IntoIterator9into_iterCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCscI6d9CVNmLh_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCshMFl0SviwmK_3syn4path11PathSegmentENtB2_11PartialDrop12partial_dropCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, %2
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCshMFl0SviwmK_3syn4path11PathSegmentECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCshMFl0SviwmK_3syn4path11PathSegmentECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %3, %2                       ; 3 uses
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %2 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCshMFl0SviwmK_3syn4path11PathSegmentECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.0.0.i3
  %i.f = add i64 %.sroa.0.0.i3, 1                 ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path11PathSegmentEBF_(ptr align 8 %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i4, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.0.1.i4
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path11PathSegmentEBF_(ptr align 8 %i.k) #25
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

end_hunk_0
begin_hunk_1_@_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16DeriveParametersNtNtCsjWx9XcG30NR_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn4item6ItemFnNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([352 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn4path13PathArgumentsNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type4case4CaseNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultQNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultRNtNtCshMFl0SviwmK_3syn4stmt4StmtNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringENtNtBR_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2u_EE13from_residualCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 80)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtCsdOh5Xhm0ZW8_13dsl_auto_type5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCshMFl0SviwmK_3syn5error5ErrorEE13from_residualB1s_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtCsdOh5Xhm0ZW8_13dsl_auto_type5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEE13from_residualB1s_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 80)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16DeriveParametersNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1J_EE13from_residualBO_(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsf5uYjtxkodL_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsf5uYjtxkodL_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 4 %i.h), !noalias !15 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !15
  invoke void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsf5uYjtxkodL_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.d, !noalias !15

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsf5uYjtxkodL_11proc_macro2(ptr nonnull align 4 %i.b) #25
          to label %bb.f unwind label %bb.e, !noalias !15

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !15
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1v_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceB1B_(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0B1y_(ptr nonnull %i.a, ptr %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call ptr @_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdfcQ11shQaG_6strsim(ptr nonnull %i.a, ptr align 8 %0)
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB9_12TypeInferrer25try_infer_expression_types3_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBd_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB6_12TypeInferrer25try_infer_expression_types3_0Ba_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvYNcNtINtNtCscI6d9CVNmLh_4core6option6OptionRNtNtCshMFl0SviwmK_3syn4expr4ExprE4Some0INtNtNtBb_3ops8function5FnMutTBI_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNcNtINtNtCscI6d9CVNmLh_4core6option6OptionRNtNtCshMFl0SviwmK_3syn4expr4ExprE4Some0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RNvYNvYINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneINtNtNtB1d_3ops8function5FnMutTRB5_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_RNvXsx_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYINtNtCscI6d9CVNmLh_4core6option8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextINtNtNtBa_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([312 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([312 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBY_4expr4ExprENcNtINtNtBe_6option6OptionRB1x_E4Some0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB11_4expr4ExprENcNtINtNtBb_6option6OptionRB1A_E4Some0ENtNtNtB9_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB14_4path11PathSegmentEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([88 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB16_4path11PathSegmentEENtNtNtB8_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([88 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYNtNtCshMFl0SviwmK_3syn4item6ItemFnNtNtB9_5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtBF_11ParseBufferEE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([352 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs7_NtNtCshMFl0SviwmK_3syn4item7parsingNtB7_6ItemFnNtNtB9_5parse5Parse5parse(ptr sret([352 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvYNvYTRNtCsf5uYjtxkodL_11proc_macro25IdentbENtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtBM_3ops8function5FnMutTRB5_B1S_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtCsf5uYjtxkodL_11proc_macro25IdentbENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr align 8 %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvYNvYTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr align 8 %2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c
end_hunk_1
begin_hunk_2_@_RNvMs9_NtNtCscI6d9CVNmLh_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCsdfcQ11shQaG_6strsim

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj4_ECsdfcQ11shQaG_6strsim(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj2_ECsdfcQ11shQaG_6strsim(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj1_ECsdfcQ11shQaG_6strsim(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvNtCsa66IwKi6YE3_5quote7spanned10join_spans(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdfcQ11shQaG_6strsim(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsf5uYjtxkodL_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsf5uYjtxkodL_11proc_macro2(ptr align 4) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsfDR8abjSQSr_4heck11upper_cameleNtB2_16ToUpperCamelCase19to_upper_camel_case(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXst_NtCshMFl0SviwmK_3syn10punctuatedINtB5_4IterNtNtB7_3pat3PatENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCshMFl0SviwmK_3syn6bufferNtB2_11TokenBuffer4new2(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCshMFl0SviwmK_3syn5parse22tokens_to_parse_buffer(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCshMFl0SviwmK_3syn5parse33span_of_unexpected_ignoring_nones(ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCshMFl0SviwmK_3syn5parse20err_unexpected_token(ptr sret([24 x i8]) align 8, i32, i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn2ty10ReturnTypeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1l_EE13from_residualBO_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr sret([224 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1e_EE13from_residualBO_(ptr sret([224 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn8generics12GenericParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr sret([464 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn8generics12GenericParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1t_EE13from_residualBO_(ptr sret([464 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvXs1_NtCsf5uYjtxkodL_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB7_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_(ptr align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0B1y_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1s_E0NCINvB3u_11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE4findNCINvNtBa_3map14equivalent_keyBT_BS_B1s_E0E0B1y_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdfcQ11shQaG_6strsim(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB6_12TypeInferrer25try_infer_expression_types3_0Ba_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEE4Some0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCscI6d9CVNmLh_4core6option6OptionNtCsf5uYjtxkodL_11proc_macro25IdentE4Some0CshMFl0SviwmK_3syn(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNcNtINtNtCscI6d9CVNmLh_4core6option6OptionRNtNtCshMFl0SviwmK_3syn4expr4ExprE4Some0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXsx_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([312 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB11_4expr4ExprENcNtINtNtBb_6option6OptionRB1A_E4Some0ENtNtNtB9_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB16_4path11PathSegmentEENtNtNtB8_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([88 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCshMFl0SviwmK_3syn11parse_quoteNtNtB4_2ty10ReturnTypeNtB2_10ParseQuote5parseCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCshMFl0SviwmK_3syn11parse_quoteNtNtB4_2ty4TypeNtB2_10ParseQuote5parseCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([224 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtCshMFl0SviwmK_3syn4item7parsingNtB7_6ItemFnNtNtB9_5parse5Parse5parse(ptr sret([352 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXsf9_NtCshMFl0SviwmK_3syn5tokenNtB6_2GtNtNtCscI6d9CVNmLh_4core7default7Default7default() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXsfw_NtCshMFl0SviwmK_3syn5tokenNtB6_2LtNtNtCscI6d9CVNmLh_4core7default7Default7default() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCshMFl0SviwmK_3syn11parse_quoteNtNtB4_8generics12GenericParamNtB2_10ParseQuote5parseCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([464 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtCsf5uYjtxkodL_11proc_macro25IdentbENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{}
!7 = distinct !{!7, i1 false, !"_RNvMs1P_NtNtCscI6d9CVNmLh_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsdOh5Xhm0ZW8_13dsl_auto_type"}
!8 = distinct !{!8, !7, !"_RNvMs1P_NtNtCscI6d9CVNmLh_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsdOh5Xhm0ZW8_13dsl_auto_type: argument 0"}
!9 = !{!8}
!13 = distinct !{!13, i1 false, !"_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type"}
!14 = distinct !{!14, !13, !"_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type: argument 0"}
!15 = !{!14}
end_hunk_2
