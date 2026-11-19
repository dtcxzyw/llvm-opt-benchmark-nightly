Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-model?download=true
inline.NumInlined: 8714
inline.NumDeleted: 3470
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN18llama_adapter_loraD2Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i ], [ %i.j, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  invoke void @ggml_backend_buffer_free(ptr noundef nonnull %i.m)
          to label %_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #43
  unreachable

_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !283
  br label %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.j, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !286
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #40
  br label %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !847  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !848  ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ad, %_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !290 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i3
  invoke void @ggml_free(ptr noundef nonnull %i.aa)
          to label %_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #43
  unreachable

_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i3
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, %i.z
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !845

_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI12ggml_context20ggml_context_deleterEEvPT_.exit.i.i.i
  %.pr.i7 = load ptr, ptr %i.w, align 8, !tbaa !847
  br label %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit
  %i.ae = phi ptr [ %.pr.i7, %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i8, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !849
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #40
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12ggml_context20ggml_context_deleterES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !851 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_25llama_adapter_lora_weightESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.an, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i ], [ %i.am, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit ] ; 4 uses
  %i.an = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !274 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 64) #40
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_25llama_adapter_lora_weightESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !846

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_25llama_adapter_lora_weightESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EED2Ev.exit
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !852
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !853
  %i.ax = shl i64 %i.aw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 %i.ax, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !852 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_25llama_adapter_lora_weightESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !853
  %i.bc = shl i64 %i.bb, 3
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #40
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25llama_adapter_lora_weightSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_25llama_adapter_lora_weightESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN11llama_modelD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN16llama_model_base10load_statsER18llama_model_loader(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36884) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = load <2 x i64>, ptr %i.a, align 8, !tbaa !140
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16llama_model_base12load_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca float, align 4                    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !867  ; 5 uses
  %i.i = tail call i64 @gguf_get_n_kv(ptr noundef %i.h)
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36560
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 17, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i1 noundef zeroext false) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !337, !range !178, !noundef !179
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.db, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.r = call i32 @gguf_get_kv_type(ptr noundef %i.h, i64 noundef %indvars.iv)
  %i.s = icmp eq i32 %i.r, 9
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.t = call ptr @gguf_get_key(ptr noundef %i.h, i64 noundef %indvars.iv)
  store ptr %i.t, ptr %i.c, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  call void @_Z14gguf_kv_to_strB5cxx11PK12gguf_contexti(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.h, i32 noundef %12)
  %i.u = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRPKcRS7_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRPKcRSB_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.e ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRPKcRSB_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !136    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.l
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRPKcRSB_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit
  %i.x = load i64, ptr %i.l, align 8, !tbaa !137
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRPKcRSB_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = call i64 @gguf_get_n_kv(ptr noundef %i.h)
  %i.aa = icmp sgt i64 %i.z, %indvars.iv.next
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !854

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !136   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.e
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !137
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %bb.de

bb.f:                                             ; preds = %._crit_edge
  %i.ag = call noundef i32 @_ZNK18llama_model_loader8get_archEv(ptr noundef nonnull align 8 dereferenceable(592) %1)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.db, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 26, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, i1 noundef zeroext true) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.al = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 27, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, i1 noundef zeroext true) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16844 ; 2 uses
  %i.an = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 28, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i1 noundef zeroext false) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16828
  %i.ap = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIbEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 94, ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i1 noundef zeroext false) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 31992
  %i.ar = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyI18llama_pooling_typeEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 61, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, i1 noundef zeroext false) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.at = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 31, ptr noundef nonnull align 4 dereferenceable(4) %i.as, i1 noundef zeroext true) ; 0 uses
  %i.au = load i32, ptr %i.as, align 8, !tbaa !338
  %i.av = add i32 %i.au, -1
  %or.cond = icmp ult i32 %i.av, 512
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1226, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.190) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ax = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 57, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, i1 noundef zeroext false) ; 0 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !339
  %i.az = load i32, ptr %i.as, align 8, !tbaa !338
  %.not82 = icmp ugt i32 %i.ay, %i.az
  br i1 %.not82, label %bb.j, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1228, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.191) #39
  unreachable

_ZSt4fillIPjiEvT_S1_RKT0_.exit:                   ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.bb = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 44, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, i1 noundef zeroext false) ; 0 uses
  %.ptr285.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8332 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.ptr285.ptr, i8 0, i64 2048, i1 false), !tbaa !180
  %i.bc = load i32, ptr %i.as, align 8, !tbaa !338
  %i.bd = call noundef zeroext i1 @_ZN18llama_model_loader14get_key_or_arrISt5arrayIjLm512EEEEb6llm_kvRT_jb(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 45, ptr noundef nonnull align 4 dereferenceable(2048) %.ptr285.ptr, i32 noundef %i.bc, i1 noundef zeroext false) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10408 ; 3 uses
  %i.bf = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 47, ptr noundef nonnull align 4 dereferenceable(4) %i.be, i1 noundef zeroext false) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10412 ; 2 uses
  %i.bh = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 48, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i1 noundef zeroext false) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !135 ; 2 uses
  %i.bk = and i32 %i.bj, -2
  %switch = icmp eq i32 %i.bk, 112
  br i1 %switch, label %bb.k, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112

bb.k:                                             ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !340
  %i.bm = icmp ult i32 %i.bl, 2
  br i1 %i.bm, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread.loopexit, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread

_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread.loopexit: ; preds = %bb.k
  store i32 0, ptr %i.ba, align 4, !tbaa !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.ptr285.ptr, i8 0, i64 2048, i1 false), !tbaa !180
  br label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread

_ZSt4fillIPjiEvT_S1_RKT0_.exit112:                ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit
  %i.bn = icmp eq i32 %i.bj, 99
  br i1 %i.bn, label %bb.l, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread

bb.l:                                             ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit112
  %i.bo = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 30, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, i1 noundef zeroext true) ; 0 uses
  %i.bp = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 27, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i1 noundef zeroext true) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 212, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, i1 noundef zeroext true) ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bt = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 213, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i1 noundef zeroext true) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bv = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 214, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, i1 noundef zeroext true) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.bx = call noundef zeroext i1 @_ZN18llama_model_loader7get_keyIjEEb6llm_kvRT_b(ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef 215, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, i1 noundef zeroext true) ; 0 uses
  %i.by = load i32, ptr %i.bs, align 4, !tbaa !868
  %i.bz = load i32, ptr %i.as, align 8, !tbaa !338 ; 2 uses
  %.not83 = icmp ugt i32 %i.by, %i.bz
  br i1 %.not83, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1252, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.192) #39
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !869
  %.not84 = icmp ugt i32 %i.ca, %i.bz
  br i1 %.not84, label %bb.o, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1253, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.193) #39
  unreachable

_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread:         ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread.loopexit, %bb.k, %bb.n, %_ZSt4fillIPjiEvT_S1_RKT0_.exit112
  %i.cb = call noundef i32 @_ZNK13llama_hparams17n_expert_used_maxEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.o) ; 2 uses
  %i.cc = load i32, ptr %i.ba, align 4, !tbaa !340 ; 5 uses
  %i.cd = icmp ult i32 %i.cc, 1025
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1259, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.194) #39
  unreachable

bb.q:                                             ; preds = %_ZSt4fillIPjiEvT_S1_RKT0_.exit112.thread
  %.not85 = icmp ugt i32 %i.cb, %i.cc
  br i1 %.not85, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1260, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.195) #39
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not86 = icmp eq i32 %i.cc, 0
  br i1 %.not86, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not87 = icmp eq i32 %i.cb, 0
  br i1 %.not87, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1262, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.196) #39
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.be, align 8, !tbaa !341 ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.cc
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1263, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.197) #39
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp samesign ugt i32 %i.ce, 1
  br i1 %i.cg, label %bb.y, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit116

bb.y:                                             ; preds = %bb.x
  %.lhs.trunc = trunc nuw nsw i32 %i.cc to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.ce to i16
  %i.ch = urem i16 %.lhs.trunc, %.rhs.trunc
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1265, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.198) #39
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cj = load i32, ptr %i.bg, align 4, !tbaa !342 ; 2 uses
  %.not88 = icmp eq i32 %i.cj, 0
  br i1 %.not88, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1266, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.199) #39
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = icmp ult i32 %i.cj, %i.ce
  br i1 %i.ck, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1267, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.200) #39
  unreachable

bb.ae:                                            ; preds = %bb.s
  %i.cl = load i32, ptr %i.be, align 8, !tbaa !341
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSt4fillIPjiEvT_S1_RKT0_.exit116, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.43, i32 noundef 1271, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.202) #39
  unreachable

_ZSt4fillIPjiEvT_S1_RKT0_.exit116:                ; preds = %bb.ae, %bb.x, %bb.ac
end_hunk_0
